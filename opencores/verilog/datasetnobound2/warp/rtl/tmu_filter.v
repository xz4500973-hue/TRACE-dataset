/*
 * Milkymist VJ SoC - tmu_filter (dataset2: if-else priority chain)
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

always @(posedge sys_clk) begin
	if(sys_rst)
		s1_valid_r <= 1'b0;
	else if(en) begin
		if(P_X >= hoffset) begin
			if(P_Y >= voffset) begin
				if(P_U < src_hres) begin
					if(P_V < src_vres) begin
						s1_valid_r <= s0_valid;
					end else s1_valid_r <= 1'b0;
				end else s1_valid_r <= 1'b0;
			end else s1_valid_r <= 1'b0;
		end else s1_valid_r <= 1'b0;
		P_Xf <= P_X - hoffset;
		P_Yf <= P_Y - voffset;
		P_Uf <= P_U;
		P_Vf <= P_V;
	end
end

assign s1_valid = s1_valid_r & (P_Xf < dst_hres) & (P_Yf < dst_vres);

assign busy = s1_valid;
assign s0_valid = pipe_stb_i;
assign pipe_ack_o = pipe_ack_i;
assign en = pipe_ack_i;
assign pipe_stb_o = s1_valid;

endmodule