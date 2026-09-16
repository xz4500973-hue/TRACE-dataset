/*
 * Milkymist VJ SoC - vgafb_fifo64to16 (dataset2: ternary chain mux)
 */

(* keep_hierarchy = "yes" *) module vgafb_fifo64to16(
	input sys_clk, input vga_rst,
	input stb, input [63:0] di,
	output doo_valid, output reg [15:0] doo, input next
);

reg [63:0] storage[0:3]; reg [1:0] produce; reg [3:0] consume; reg [4:0] level;
wire [63:0] doo64; assign doo64=storage[consume[3:2]];

// Ternary chain instead of case
wire [15:0] doo_sel;
assign doo_sel = (consume[1:0]==2'd0)?doo64[63:48]:
                (consume[1:0]==2'd1)?doo64[47:32]:
                (consume[1:0]==2'd2)?doo64[31:16]:doo64[15:0];

always @(*) doo=doo_sel;

always @(posedge sys_clk) begin
	if(vga_rst) begin produce=2'd0;consume=4'd0;level=5'd0; end
	else begin
		if(stb) begin storage[produce]=di; produce=produce+2'd1; level=level+5'd4; end
		if(next) begin consume=consume+4'd1; level=level-5'd1; end
	end
end

assign doo_valid=~(level==5'd0);

endmodule