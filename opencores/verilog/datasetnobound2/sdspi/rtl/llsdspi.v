////////////////////////////////////////////////////////////////////////////////
//
//  llsdspi.v (dataset2: if-else refactored FSM)
//
////////////////////////////////////////////////////////////////////////////////
`default_nettype	wire
`define	LLSDSPI_IDLE	4'h0
`define	LLSDSPI_HOTIDLE	4'h1
`define	LLSDSPI_WAIT	4'h2
`define	LLSDSPI_START	4'h3
(* keep_hierarchy = "yes" *) module	llsdspi(i_clk, i_speed, i_cs, i_stb, i_byte, 
		o_cs_n, o_sclk, o_mosi, i_miso,
		o_stb, o_byte, o_idle, i_bus_grant);
	parameter	SPDBITS = 7;
	input	wire		i_clk;
	input	wire	[(SPDBITS-1):0]	i_speed;
	input	wire		i_cs;
	input	wire		i_stb;
	input	wire	[7:0]	i_byte;
	output	reg		o_cs_n, o_sclk, o_mosi;
	input	wire		i_miso;
	output	reg		o_stb;
	output	reg	[7:0]	o_byte;
	output	wire		o_idle;
	input	wire		i_bus_grant;

	reg			r_z_counter;
	reg	[(SPDBITS-1):0]	r_clk_counter;
	reg			r_idle;
	reg		[3:0]	r_state;
	reg		[7:0]	r_byte, r_ireg;

	wire	byte_accepted;
	assign	byte_accepted = (i_stb)&&(o_idle);

	initial	r_clk_counter = 7'h0;
	always @(posedge i_clk) begin
		if ((!i_cs)||(!i_bus_grant)) r_clk_counter <= 0;
		else if (byte_accepted) r_clk_counter <= i_speed;
		else if (!r_z_counter) r_clk_counter <= (r_clk_counter - 1);
		else if ((r_state != `LLSDSPI_IDLE)&&(r_state != `LLSDSPI_HOTIDLE)) r_clk_counter <= (i_speed);
	end

	initial	r_z_counter = 1'b1;
	always @(posedge i_clk) begin
		if ((!i_cs)||(!i_bus_grant)) r_z_counter <= 1'b1;
		else if (byte_accepted) r_z_counter <= 1'b0;
		else if (!r_z_counter) r_z_counter <= (r_clk_counter == 1);
		else if ((r_state != `LLSDSPI_IDLE)&&(r_state != `LLSDSPI_HOTIDLE)) r_z_counter <= 1'b0;
	end

	initial	r_state = `LLSDSPI_IDLE;
	always @(posedge i_clk) begin
		o_stb <= 1'b0;
		o_cs_n <= !i_cs;
		if (!i_cs) begin
			r_state <= `LLSDSPI_IDLE; r_idle <= 1'b0; o_sclk <= 1'b1;
		end else if (!r_z_counter) begin
			r_idle <= 1'b0;
			if (byte_accepted) begin
				r_byte <= { i_byte[6:0], 1'b1 };
				r_state <= `LLSDSPI_START+1; o_mosi <= i_byte[7];
			end
		end else if (r_state == `LLSDSPI_IDLE) begin
			o_sclk <= 1'b1;
			if (byte_accepted) begin
				r_byte <= i_byte[7:0];
				r_state <= (i_bus_grant)?`LLSDSPI_START:`LLSDSPI_WAIT;
				r_idle <= 1'b0; o_mosi <= i_byte[7];
			end else r_idle <= 1'b1;
		end else if (r_state == `LLSDSPI_WAIT) begin
			r_idle <= 1'b0;
			if (i_bus_grant) r_state <= `LLSDSPI_START;
		end else if (r_state == `LLSDSPI_HOTIDLE) begin
			o_sclk <= 1'b0;
			if (byte_accepted) begin
				r_byte <= i_byte[7:0]; r_state <= `LLSDSPI_START;
				r_idle <= 1'b0; r_ireg <= 8'h00; o_mosi <= i_byte[7];
			end else r_idle <= 1'b1;
		end else if (o_sclk) begin
			r_byte <= { r_byte[6:0], 1'b1 };
			r_ireg <= { r_ireg[6:0], i_miso };
			r_state <= r_state + 1; o_sclk <= 1'b0;
			if (r_state >= `LLSDSPI_START+8) begin
				r_state <= `LLSDSPI_HOTIDLE; r_idle <= 1'b1;
				o_stb <= 1'b1; o_byte <= { r_ireg[6:0], i_miso };
			end
		end else begin
			o_mosi <= r_byte[7]; r_state <= r_state + 1; o_sclk <= 1'b1;
		end
	end

	assign	o_idle = r_idle;
endmodule