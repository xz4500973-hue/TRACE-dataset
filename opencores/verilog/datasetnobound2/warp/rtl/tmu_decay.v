/*
 * Milkymist VJ SoC - tmu_decay (dataset2: merged pipeline blocks)
 */

(* keep_hierarchy = "yes" *) module tmu_decay #( parameter fml_depth = 26 ) (
	input sys_clk, sys_rst, output busy,
	input [5:0] brightness, input pipe_stb_i, output pipe_ack_o,
	input [15:0] src_pixel, input [fml_depth-1-1:0] dst_addr,
	output pipe_stb_o, input pipe_ack_i,
	output [15:0] src_pixel_d, output reg [fml_depth-1-1:0] dst_addr1
);

wire en;
wire s0_valid;
reg s1_valid, s2_valid, s3_valid;

always @(posedge sys_clk)
	if(sys_rst) begin s1_valid<=0; s2_valid<=0; s3_valid<=0; end
	else if(en) begin s1_valid<=s0_valid; s2_valid<=s1_valid; s3_valid<=s2_valid; end

reg [fml_depth-1-1:0] s1_dst, s2_dst;
reg [15:0] s1_px, s2_px, s3_px;
reg [5:0] s1_b;
reg [4:0] s1_r; reg [5:0] s1_g; reg [4:0] s1_bb;
reg [10:0] s2_r,s2_b, s3_r,s3_b;
reg [11:0] s3_g;
reg [11:0] s2_g;
reg s1_fb, s2_fb, s3_fb;
// Merged all computations into single always block
always @(posedge sys_clk) if(en) begin
	s1_dst<=dst_addr; s2_dst<=s1_dst; dst_addr1<=s2_dst;
	s1_fb<=(brightness==6'b111111); s2_fb<=s1_fb; s3_fb<=s2_fb;
	s1_px<=src_pixel; s2_px<=s1_px; s3_px<=s2_px;
	s1_r<=src_pixel[15:11]; s1_g<=src_pixel[10:5]; s1_bb<=src_pixel[4:0]; s1_b<=brightness+6'd1;
	s2_r<=s1_b*s1_r; s2_g<=s1_b*s1_g; s2_b<=s1_b*s1_bb;
	s3_r<=s2_r; s3_g<=s2_g; s3_b<=s2_b;
end

assign src_pixel_d = s3_fb ? s3_px : {s3_r[10:6], s3_g[11:6], s3_b[10:6]};
assign busy = s1_valid|s2_valid|s3_valid;
assign s0_valid = pipe_stb_i;
assign pipe_ack_o = pipe_ack_i;
assign en = pipe_ack_i;
assign pipe_stb_o = s3_valid;

endmodule