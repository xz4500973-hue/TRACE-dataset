/*
 * Milkymist VJ SoC - tmu_addresses (dataset3: merged always + ternary)
 */

(* keep_hierarchy = "yes" *) module tmu_addresses #( parameter fml_depth = 26 ) (
	input sys_clk, sys_rst, output busy,
	input [fml_depth-1-1:0] src_base, input [10:0] src_hres,
	input [fml_depth-1-1:0] dst_base, input [10:0] dst_hres,
	input pipe_stb_i, output pipe_ack_o,
	input [10:0] P_X, P_Y, P_U, P_V,
	output pipe_stb_o, input pipe_ack_i,
	output reg [fml_depth-1-1:0] src_addr, dst_addr
);

wire en;
wire s0_valid;
reg s1_valid, s2_valid;

always @(posedge sys_clk)
	if(sys_rst) begin s1_valid<=0; s2_valid<=0; end
	else if(en) begin s1_valid<=s0_valid; s2_valid<=s1_valid; end

reg [fml_depth-1-1:0] s1_src, s1_dst;
wire [21:0] e_pv = src_hres*P_V;
wire [21:0] e_py = dst_hres*P_Y;

// Unified sequential block
always @(posedge sys_clk) if(en) begin
	s1_src <= src_base + {{fml_depth-22-1{1'b0}}, e_pv} + {{fml_depth-11-1{1'b0}}, P_U};
	s1_dst <= dst_base + {{fml_depth-22-1{1'b0}}, e_py} + {{fml_depth-11-1{1'b0}}, P_X};
	src_addr <= s1_src;
	dst_addr <= s1_dst;
end

assign busy = s1_valid|s2_valid;
assign s0_valid = pipe_stb_i;
assign pipe_ack_o = pipe_ack_i;
assign en = pipe_ack_i;
assign pipe_stb_o = s2_valid;

endmodule