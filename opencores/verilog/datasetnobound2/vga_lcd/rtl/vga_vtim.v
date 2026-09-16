/////////////////////////////////////////////////////////////////////
////  vga_vtim.v (dataset2: two-process FSM with next-state wires)////
/////////////////////////////////////////////////////////////////////

module vga_vtim(clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, Sync, Gate, doone);
	input clk, ena, rst;
	input [7:0] Tsync, Tgdel;
	input [15:0] Tgate, Tlen;
	output Sync, Gate, doone;
	reg Sync, Gate, doone;

	reg [15:0] cnt, cnt_len;
	wire [16:0] cnt_nxt = {1'b0,cnt}-17'h1;
	wire cnt_doone = cnt_nxt[16];
	wire [16:0] cnt_len_nxt = {1'b0,cnt_len}-17'h1;
	wire cnt_len_doone = cnt_len_nxt[16];

	// One-hot FSM with next-state wires
	parameter IDLE=5'b00001, SYNC_S=5'b00010, GDEL=5'b00100, GATE_S=5'b01000, LEN=5'b10000;
	reg [4:0] state;

	wire [4:0] nxt_state =
		(state==IDLE)   ? SYNC_S :
		(state==SYNC_S) ? (cnt_doone?GDEL:SYNC_S) :
		(state==GDEL)   ? (cnt_doone?GATE_S:GDEL) :
		(state==GATE_S) ? (cnt_doone?LEN:GATE_S) :
		(state==LEN)    ? (cnt_len_doone?SYNC_S:LEN) : IDLE;

	wire [15:0] nxt_cnt =
		(state==IDLE)   ? Tsync :
		(state==SYNC_S) ? cnt_nxt[15:0] :
		(state==GDEL)   ? (cnt_doone?Tgate:cnt_nxt[15:0]) :
		(state==GATE_S) ? cnt_nxt[15:0] : Tlen;

	wire nxt_Sync  = (state==IDLE) || ((state==LEN)&&cnt_len_doone);
	wire nxt_Gate  = (state==GDEL && cnt_doone) ? 1'b1 : (state==GATE_S&&cnt_doone?1'b0:Gate);
	wire nxt_doone  = (state==LEN && cnt_len_doone);

	always @(posedge clk)
		if(rst) begin
			state<=IDLE; cnt<=0; cnt_len<=0; Sync<=0; Gate<=0; doone<=0;
		end else if(ena) begin
			state<=nxt_state; cnt<=nxt_cnt; cnt_len<=(state==LEN)?cnt_len_nxt[15:0]:cnt_len;
			Sync<=nxt_Sync; Gate<=nxt_Gate; doone<=nxt_doone;
		end
endmodule