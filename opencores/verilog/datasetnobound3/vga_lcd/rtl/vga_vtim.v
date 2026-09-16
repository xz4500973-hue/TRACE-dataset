/////////////////////////////////////////////////////////////////////
////  vga_vtim.v (dataset3: merged seq block, ternary counters)  ////
/////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module vga_vtim(clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, Sync, Gate, doone);
	input clk, ena, rst;
	input [7:0] Tsync, Tgdel;
	input [15:0] Tgate, Tlen;
	output Sync, Gate, doone;
	reg Sync, Gate, doone;

	reg [15:0] cnt, cnt_len;
	wire cnt_doone = (cnt==1);
	wire cnt_len_doone = (cnt_len==1);

	parameter IDLE=0, SYNC_S=1, GDEL=2, GATE_S=3, LEN=4;
	reg [2:0] state;
	reg extra_pipe; // functionally neutral

	always @(posedge clk)
		if(rst) begin
			state<=IDLE; cnt<=0; cnt_len<=0; Sync<=0; Gate<=0; doone<=0; extra_pipe<=0;
		end else if(ena) begin
			extra_pipe<=Sync;
			case(state)
				IDLE: begin state<=SYNC_S; cnt<=Tsync; cnt_len<=Tlen; Sync<=1; end
				SYNC_S: if(cnt_doone) begin state<=GDEL; cnt<=Tgdel; Sync<=0; end else cnt<=cnt-1;
				GDEL: if(cnt_doone) begin state<=GATE_S; cnt<=Tgate; Gate<=1; end else cnt<=cnt-1;
				GATE_S: if(cnt_doone) begin state<=LEN; Gate<=0; end else cnt<=cnt-1;
				LEN: begin
					if(cnt_len_doone) begin state<=SYNC_S; cnt<=Tsync; cnt_len<=Tlen; Sync<=1; doone<=1; end
					else begin cnt_len<=cnt_len-1; doone<=0; end
				end
			endcase
		end
endmodule