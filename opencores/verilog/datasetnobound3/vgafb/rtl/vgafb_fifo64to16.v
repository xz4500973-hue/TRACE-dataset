/*
 * Milkymist VJ SoC - vgafb_fifo64to16 (dataset3: pipelined output)
 */

(* keep_hierarchy = "yes" *) module vgafb_fifo64to16(
	input sys_clk, input vga_rst,
	input stb, input [63:0] di,
	output doo_valid, output reg [15:0] doo, input next
);

reg [63:0] storage[0:3]; reg [1:0] produce; reg [3:0] consume; reg [4:0] level;
wire [63:0] doo64; assign doo64=storage[consume[3:2]];

// Pipeline stage on read output
reg [15:0] doo_pipe;
always @(posedge sys_clk) begin
	if(vga_rst) doo_pipe<=16'd0;
	else doo_pipe<=doo;
end

always @(*) case(consume[1:0])
	2'd0: doo=doo64[63:48];
	2'd1: doo=doo64[47:32];
	2'd2: doo=doo64[31:16];
	2'd3: doo=doo64[15:0];
endcase

always @(posedge sys_clk) begin
	if(vga_rst) begin produce=2'd0;consume=4'd0;level=5'd0; end
	else begin
		if(stb) begin storage[produce]=di; produce=produce+2'd1; level=level+5'd4; end
		if(next) begin consume=consume+4'd1; level=level-5'd1; end
	end
end

assign doo_valid=~(level==5'd0);

endmodule