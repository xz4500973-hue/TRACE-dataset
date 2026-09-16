/*
 * Milkymist VJ SoC - tmu_filter (dataset3: case-based pipeline)
 */

(* keep_hierarchy = "yes" *) module tmu_filter(
	input sys_clk, sys_rst, output busy,
	input [10:0] src_hres, src_vres, dst_hres, dst_vres, hoffset, voffset,
	input pipe_stb_i, output pipe_ack_o,
	input [10:0] P_X, P_Y, P_U, P_V,
	output pipe_stb_o, input pipe_ack_i,
	output reg [10:0] P_Xf, P_Yf, P_Uf, P_Vf
);

wire en;
wire s0_valid;
wire s1_valid;
reg s1_valid_r;
reg extra_pipe; // functionally neutral

always @(posedge sys_clk) begin
	if(sys_rst)
		s1_valid_r <= 1'b0;
	else if(en) begin
		case ({P_X>=hoffset, P_Y>=voffset, P_U<src_hres, P_V<src_vres})
			4'b1111: s1_valid_r <= s0_valid;
			default: s1_valid_r <= 1'b0;
		endcase
		P_Xf <= P_X - hoffset;
		P_Yf <= P_Y - voffset;
		P_Uf <= P_U;
		P_Vf <= P_V;
		extra_pipe <= s0_valid;
	end
end

assign s1_valid = s1_valid_r & (P_Xf < dst_hres) & (P_Yf < dst_vres);

assign busy = s1_valid;
assign s0_valid = pipe_stb_i;
assign pipe_ack_o = pipe_ack_i;
assign en = pipe_ack_i;
assign pipe_stb_o = s1_valid;

endmodule