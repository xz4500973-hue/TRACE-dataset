////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	wbfmtxhack.v
// Project:	A Wishbone Controlled FM Transmitter Hack
// Refactored: dataset3 variant - pipelined sample path, case-based WB mux
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

	// --- Registers (renamed with _r suffix) ---
	reg	[31:0]	nco_step_r;
	reg	[15:0]	reload_r;
	reg	[15:0]	timer_r;
	reg	[15:0]	sample_hold_r;
	reg	[15:0]	next_samp_r;
	reg		valid_r;
	reg	[31:0]	phase_r;
	reg		pipe_stg_r;  // extra pipeline stage for variation

	// --- Decode wires ---
	wire sample_wr = (i_wb_cyc)&&(i_wb_stb)&&(~i_wb_addr)&&(i_wb_we);
	wire nco_wr    = (i_wb_cyc)&&(i_wb_stb)&&(i_wb_addr)&&(i_wb_we);
	wire timer_zero = (timer_r == 16'd0);
	wire [31:0] phase_inc = nco_step_r + { {(32-16-7){sample_hold_r[15]}}, sample_hold_r, 7'h00 };

	// --- Unified sequential block ---
	always @(posedge i_clk) begin
		// Sample rate config
		if (sample_wr && (|i_wb_data[31:16]))
			reload_r <= i_wb_data[31:16];
		// NCO config
		if (nco_wr)
			nco_step_r <= i_wb_data[31:0];
		// Timer
		if (timer_zero) begin
			timer_r <= reload_r;
			sample_hold_r <= next_samp_r;
		end else begin
			timer_r <= timer_r - 16'd1;
		end
		// Data write
		if (sample_wr) begin
			next_samp_r <= i_wb_data[15:0];
			valid_r     <= 1'b1;
		end else if (timer_zero)
			valid_r     <= 1'b0;
		// NCO phase accumulator
		phase_r    <= phase_r + phase_inc;
		// Interrupt
		o_int      <= (~valid_r);
		// Extra pipeline
		pipe_stg_r <= timer_zero;
	end

	// --- WB response (case-based) ---
	always @(posedge i_clk) begin
		case (i_wb_addr)
		  1'b0: o_wb_data <= { reload_r, sample_hold_r[15:1], o_int };
		  1'b1: o_wb_data <= nco_step_r;
		endcase
		o_wb_ack <= (i_wb_cyc)&&(i_wb_stb);
	end

	assign	o_tx       = phase_r[31];
	assign	o_wb_stall = 1'b0;

endmodule