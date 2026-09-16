// VARIANT: 3-stage FSM (state reg + next-state comb + output comb separated)
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

	// TX_SEL parameters for output logic
	localparam TX_SEL_B0=4'd0, TX_SEL_B1=4'd1, TX_SEL_B2=4'd2, TX_SEL_B3=4'd3, TX_SEL_B4=4'd4, TX_SEL_B5=4'd5, TX_SEL_B6=4'd6, TX_SEL_B7=4'd7, TX_SEL_HI=4'd8, TX_SEL_LO=4'd9;

	reg acounter_reset, acounter_ce, frame_doone; reg [8:0] acounter;
	always @(posedge sys_clk) begin if(ce) begin if(acounter_reset) begin acounter<=9'd0; frame_doone<=1'b0; end else if(acounter_ce) begin acounter<=acounter+9'd1; frame_doone<=acounter==9'd511; end end end
	assign channel_a = acounter;

	reg break_counter_reset; reg [4:0] break_counter; reg break_doone;
	always @(posedge sys_clk) begin if(ce) begin if(break_counter_reset) begin break_counter<=5'd0; break_doone<=1'b0; end else begin if(break_counter==5'd25) break_doone<=1'b1; else break_counter<=break_counter+5'd1; end end end

	// FSM states
	localparam MTBP=5'd0, BREAK=5'd1, MAB1=5'd2, MAB2=5'd3, SC_START=5'd4, SC_D0=5'd5, SC_D1=5'd6, SC_D2=5'd7, SC_D3=5'd8;
	localparam SC_D4=5'd9, SC_D5=5'd10, SC_D6=5'd11, SC_D7=5'd12, SC_STOP1=5'd13, SC_STOP2=5'd14, START=5'd15;
	localparam D0=5'd16, D1=5'd17, D2=5'd18, D3=5'd19, D4=5'd20, D5=5'd21, D6=5'd22, D7=5'd23, STOP1=5'd24, STOP2=5'd25;

	// Stage 1: State Register
	reg [4:0] state;
	reg [4:0] next_state;
	always @(posedge sys_clk) begin if(sys_rst) state<=MTBP; else if(ce) state<=next_state; end

	// Stage 2: Next-State Logic
	always @* begin
		next_state = state;
		case(state)
			MTBP: next_state=BREAK;
			BREAK: if(break_doone) next_state=MAB1;
			MAB1: next_state=MAB2;
			MAB2: next_state=SC_START;
			SC_START,SC_D0,SC_D1,SC_D2,SC_D3,SC_D4,SC_D5,SC_D6: next_state=state+1;
			SC_D7: next_state=SC_STOP1;
			SC_STOP1: next_state=SC_STOP2;
			SC_STOP2: next_state=START;
			START,D0,D1,D2,D3,D4,D5,D6: next_state=state+1;
			D7: next_state=STOP1;
			STOP1: next_state=STOP2;
			STOP2: next_state=frame_doone?MTBP:START;
		endcase
	end

	// Stage 3: Output Logic
	reg [3:0] tx_sel;
	always @* begin
		tx_sel=TX_SEL_HI; acounter_reset=1'b1; acounter_ce=1'b0; break_counter_reset=1'b1; channel_d_ce=1'b0;
		case(state)
			BREAK: begin tx_sel=TX_SEL_LO; break_counter_reset=1'b0; end
			SC_START,SC_D0,SC_D1,SC_D2,SC_D3,SC_D4,SC_D5,SC_D6,SC_D7: tx_sel=TX_SEL_LO;
			START: begin tx_sel=TX_SEL_LO; acounter_reset=1'b0; channel_d_ce=1'b1; end
			D0: begin tx_sel=TX_SEL_B0; acounter_reset=1'b0; end
			D1: begin tx_sel=TX_SEL_B1; acounter_reset=1'b0; end
			D2: begin tx_sel=TX_SEL_B2; acounter_reset=1'b0; end
			D3: begin tx_sel=TX_SEL_B3; acounter_reset=1'b0; end
			D4: begin tx_sel=TX_SEL_B4; acounter_reset=1'b0; end
			D5: begin tx_sel=TX_SEL_B5; acounter_reset=1'b0; end
			D6: begin tx_sel=TX_SEL_B6; acounter_reset=1'b0; end
			D7: begin tx_sel=TX_SEL_B7; acounter_reset=1'b0; end
			STOP1: begin acounter_reset=1'b0; acounter_ce=1'b1; end
			STOP2: acounter_reset=1'b0;
		endcase
	end

	// tx_gen combinational mux
	always @(posedge sys_clk) begin
		case(tx_sel)
			TX_SEL_B0: tx_gen<=channel_d_r[0]; TX_SEL_B1: tx_gen<=channel_d_r[1]; TX_SEL_B2: tx_gen<=channel_d_r[2]; TX_SEL_B3: tx_gen<=channel_d_r[3];
			TX_SEL_B4: tx_gen<=channel_d_r[4]; TX_SEL_B5: tx_gen<=channel_d_r[5]; TX_SEL_B6: tx_gen<=channel_d_r[6]; TX_SEL_B7: tx_gen<=channel_d_r[7];
			TX_SEL_HI: tx_gen<=1'b1; TX_SEL_LO: tx_gen<=1'b0; default: tx_gen<=1'bx;
		endcase
	end
endmodule