// VARIANT: One-hot encoded FSM (26 states → 26 bits)
(* keep_hierarchy = "yes" *) module dmx_tx #(parameter csr_addr = 4'h0, parameter clk_freq = 100000000) (
	input sys_clk, sys_rst,
	input [13:0] csr_a, input csr_we, input [31:0] csr_di, output [31:0] csr_doo,
	input thru, output tx
);
	wire csr_selected = csr_a[13:10] == csr_addr;
	wire csr_channels_we; wire [31:0] csr_doo_channels; wire [8:0] channel_a; wire [7:0] channel_d;
	dmx_dpram channels(.clk(sys_clk),.a(csr_a[8:0]),.we(csr_channels_we),.di(csr_di[7:0]),.doo(csr_doo_channels[7:0]),.a2(channel_a),.we2(1'b0),.di2(8'hxx),.doo2(channel_d));
	assign csr_channels_we = csr_selected & ~csr_a[9] & csr_we;
	assign csr_doo_channels[31:8] = 24'h000000;

	reg thru_en; reg [31:0] csr_doo_reg; reg csr_doo_sel;
	always @(posedge sys_clk) begin
		if(sys_rst) begin csr_doo_reg<=32'd0; csr_doo_sel<=1'b0; thru_en<=1'b0; end
		else begin csr_doo_reg<=32'd0; csr_doo_sel<=1'b0;
			if(csr_selected) begin csr_doo_sel<=~csr_a[9]; csr_doo_reg<=thru_en;
				if(csr_we) begin if(csr_a[9]) thru_en<=csr_di[0]; end end end
	end
	assign csr_doo = csr_doo_sel ? csr_doo_channels : csr_doo_reg;

	reg tx_gen; assign tx = thru_en ? thru : tx_gen;

	parameter divisor = clk_freq/250000; reg ce; reg [8:0] ce_counter;
	always @(posedge sys_clk) begin if(sys_rst) begin ce<=1'b0; ce_counter<=divisor-1; end
		else begin if(ce_counter==9'd0) begin ce<=1'b1; ce_counter<=divisor-1; end else begin ce<=1'b0; ce_counter<=ce_counter-9'd1; end end
	end

	reg [7:0] channel_d_r; reg channel_d_ce;
	always @(posedge sys_clk) begin if(channel_d_ce) channel_d_r<=channel_d; end

	localparam TX_SEL_B0=4'd0, TX_SEL_B1=4'd1, TX_SEL_B2=4'd2, TX_SEL_B3=4'd3, TX_SEL_B4=4'd4, TX_SEL_B5=4'd5, TX_SEL_B6=4'd6, TX_SEL_B7=4'd7, TX_SEL_HI=4'd8, TX_SEL_LO=4'd9;

	reg acounter_reset, acounter_ce, frame_doone; reg [8:0] acounter;
	always @(posedge sys_clk) begin if(ce) begin if(acounter_reset) begin acounter<=9'd0; frame_doone<=1'b0; end else if(acounter_ce) begin acounter<=acounter+9'd1; frame_doone<=acounter==9'd511; end end end
	assign channel_a = acounter;

	reg break_counter_reset; reg [4:0] break_counter; reg break_doone;
	always @(posedge sys_clk) begin if(ce) begin if(break_counter_reset) begin break_counter<=5'd0; break_doone<=1'b0; end else begin if(break_counter==5'd25) break_doone<=1'b1; else break_counter<=break_counter+5'd1; end end end

	// One-hot: 26 states
	localparam MTBP_BIT=0, BREAK_BIT=1, MAB1_BIT=2, MAB2_BIT=3, SC_START_BIT=4, SC_D0_BIT=5, SC_D1_BIT=6, SC_D2_BIT=7, SC_D3_BIT=8;
	localparam SC_D4_BIT=9, SC_D5_BIT=10, SC_D6_BIT=11, SC_D7_BIT=12, SC_STOP1_BIT=13, SC_STOP2_BIT=14, START_BIT=15;
	localparam D0_BIT=16, D1_BIT=17, D2_BIT=18, D3_BIT=19, D4_BIT=20, D5_BIT=21, D6_BIT=22, D7_BIT=23, STOP1_BIT=24, STOP2_BIT=25;

	reg [25:0] state, next_state;
	always @(posedge sys_clk) begin if(sys_rst) state<={{25{1'b0}},1'b1}; else if(ce) state<=next_state; end

	reg [3:0] tx_sel;
	always @* begin
		tx_sel=TX_SEL_HI; acounter_reset=1'b1; acounter_ce=1'b0; break_counter_reset=1'b1; channel_d_ce=1'b0; next_state=state;
		if(state[MTBP_BIT]) next_state=state<<1; // MTBP→BREAK
		else if(state[BREAK_BIT]) begin tx_sel=TX_SEL_LO; break_counter_reset=1'b0; if(break_doone) next_state=state<<1; end
		else if(state[MAB1_BIT]) next_state=state<<1;
		else if(state[MAB2_BIT]) next_state=state<<1;
		else if(state[SC_START_BIT]) begin tx_sel=TX_SEL_LO; next_state=state<<1; end
		else if(state[SC_D0_BIT]|state[SC_D1_BIT]|state[SC_D2_BIT]|state[SC_D3_BIT]|state[SC_D4_BIT]|state[SC_D5_BIT]|state[SC_D6_BIT]) begin tx_sel=TX_SEL_LO; next_state=state<<1; end
		else if(state[SC_D7_BIT]) begin tx_sel=TX_SEL_LO; next_state=state<<1; end
		else if(state[SC_STOP1_BIT]) next_state=state<<1;
		else if(state[SC_STOP2_BIT]) next_state={{25{1'b0}},1'b1}; //→mtbp bit0
		else if(state[START_BIT]) begin tx_sel=TX_SEL_LO; acounter_reset=1'b0; channel_d_ce=1'b1; next_state=state<<1; end
		else if(state[D0_BIT]) begin tx_sel=TX_SEL_B0; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D1_BIT]) begin tx_sel=TX_SEL_B1; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D2_BIT]) begin tx_sel=TX_SEL_B2; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D3_BIT]) begin tx_sel=TX_SEL_B3; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D4_BIT]) begin tx_sel=TX_SEL_B4; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D5_BIT]) begin tx_sel=TX_SEL_B5; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D6_BIT]) begin tx_sel=TX_SEL_B6; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[D7_BIT]) begin tx_sel=TX_SEL_B7; acounter_reset=1'b0; next_state=state<<1; end
		else if(state[STOP1_BIT]) begin acounter_reset=1'b0; acounter_ce=1'b1; next_state=state<<1; end
		else if(state[STOP2_BIT]) begin acounter_reset=1'b0; next_state=frame_doone?{{25{1'b0}},1'b1}:{{25{1'b0}},1'b1}; end
	end

	always @(posedge sys_clk) begin
		case(tx_sel)
			TX_SEL_B0: tx_gen<=channel_d_r[0]; TX_SEL_B1: tx_gen<=channel_d_r[1]; TX_SEL_B2: tx_gen<=channel_d_r[2]; TX_SEL_B3: tx_gen<=channel_d_r[3];
			TX_SEL_B4: tx_gen<=channel_d_r[4]; TX_SEL_B5: tx_gen<=channel_d_r[5]; TX_SEL_B6: tx_gen<=channel_d_r[6]; TX_SEL_B7: tx_gen<=channel_d_r[7];
			TX_SEL_HI: tx_gen<=1'b1; TX_SEL_LO: tx_gen<=1'b0; default: tx_gen<=1'bx;
		endcase
	end
endmodule