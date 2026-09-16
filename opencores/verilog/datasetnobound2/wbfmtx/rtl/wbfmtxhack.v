////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	wbfmtxhack.v
// Project:	A Wishbone Controlled FM Transmitter Hack
// Refactored: dataset2 variant - combinational next-state wires, merged timer
//
////////////////////////////////////////////////////////////////////////////////
//
(* keep_hierarchy = "yes" *) module	wbfmtxhack(i_clk, 
		i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data,
			o_wb_ack, o_wb_stall, o_wb_data,
		o_tx, o_int);
	parameter	DEFAULT_RELOAD = 16'd1814;
	input	i_clk;
	input	i_wb_cyc, i_wb_stb, i_wb_we;
	input		i_wb_addr;
	input	[31:0]	i_wb_data;
	output	reg		o_wb_ack;
	output	wire		o_wb_stall;
	output	reg	[31:0]	o_wb_data;
	output	wire		o_tx;
	output	reg		o_int;

	// --- Registers ---
	reg	[31:0]	nco_step;
	reg	[15:0]	reload_value;
	reg		ztimer;
	reg	[15:0]	timer;
	reg	[15:0]	next_sample, sample_out;
	reg		next_valid;
	reg	[31:0]	nco_phase;

	// --- Combinational next-state wires ---
	wire	nxt_ztimer  = (timer == 16'h1);
	wire [15:0] nxt_timer = nxt_ztimer ? reload_value : (timer - 16'h1);
	wire [31:0] nxt_nco   = nco_phase + nco_step + { {(32-16-7){sample_out[15]}}, sample_out, 7'h00 };

	// --- Sequential logic (single unified block) ---
	always @(posedge i_clk) begin
		// Sample rate: write to addr=0 with upper bits non-zero
		if ((i_wb_cyc)&&(i_wb_stb)&&(~i_wb_addr)&&(i_wb_we)&&(|i_wb_data[31:16]))
			reload_value <= i_wb_data[31:16];
		// NCO step: write to addr=1
		if ((i_wb_cyc)&&(i_wb_stb)&&(i_wb_addr)&&(i_wb_we))
			nco_step <= i_wb_data[31:0];
		// Timer
		ztimer <= nxt_ztimer;
		timer  <= nxt_timer;
		// Sample buffer
		if (nxt_ztimer)
			sample_out <= next_sample;
		// Data write
		if ((i_wb_cyc)&&(i_wb_stb)&&(i_wb_we)&&(~i_wb_addr)) begin
			next_sample <= i_wb_data[15:0];
			next_valid  <= 1'b1;
		end else if (nxt_ztimer)
			next_valid  <= 1'b0;
		// NCO phase
		nco_phase <= nxt_nco;
		// Interrupt
		o_int <= (~next_valid);
	end

	// --- WB response ---
	always @(posedge i_clk) begin
		o_wb_data <= i_wb_addr ? nco_step : { reload_value, sample_out[15:1], o_int };
		o_wb_ack  <= (i_wb_cyc)&&(i_wb_stb);
	end

	assign	o_tx       = nco_phase[31];
	assign	o_wb_stall = 1'b0;

endmodule