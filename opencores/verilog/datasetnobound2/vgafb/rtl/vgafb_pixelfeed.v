/*
 * Milkymist VJ SoC - vgafb_pixelfeed (dataset2: if-else controller FSM)
 */

(* keep_hierarchy = "yes" *) module vgafb_pixelfeed #(
	parameter fml_depth = 26
) (
	input sys_clk, sys_rst, vga_rst,
	input [17:0] nbursts,
	input [fml_depth-1:0] baseaddress,
	output baseaddress_ack,
	output reg [fml_depth-1:0] fml_adr,
	output reg fml_stb, input fml_ack, input [63:0] fml_di,
	output reg dcb_stb,
	output [fml_depth-1:0] dcb_adr, input [63:0] dcb_dat, input dcb_hit,
	output pixel_valid, output [15:0] pixel, input pixel_ack
);

reg fifo_source_cache; reg fifo_stb; wire fifo_valid;

vgafb_fifo64to16 fifo64to16(
	.sys_clk(sys_clk),.vga_rst(vga_rst),
	.stb(fifo_stb),.di(fifo_source_cache?dcb_dat:fml_di),
	.doo_valid(fifo_valid),.doo(pixel),.next(pixel_ack)
);

assign pixel_valid = fifo_valid;

/* BURST COUNTER */
reg sof;
wire counter_en;
reg [17:0] bcounter;

always @(posedge sys_clk) begin
	if(vga_rst) begin bcounter<=18'd1; sof<=1'b1; end
	else if(counter_en) begin
		if(bcounter==nbursts) begin bcounter<=18'd1; sof<=1'b1; end
		else begin bcounter<=bcounter+18'd1; sof<=1'b0; end
	end
end

/* FML ADDRESS GENERATOR */
wire next_address;
assign baseaddress_ack = sof & next_address;

always @(posedge sys_clk) begin
	if(sys_rst) fml_adr<={fml_depth{1'b0}};
	else if(next_address) begin
		if(sof) fml_adr<=baseaddress;
		else fml_adr<=fml_adr+{{fml_depth-6{1'b0}},6'd32};
	end
end

/* DCB ADDRESS GENERATOR */
reg [1:0] dcb_index;
always @(posedge sys_clk) begin
	if(dcb_stb) dcb_index<=dcb_index+2'd1; else dcb_index<=2'd0;
end
assign dcb_adr={fml_adr[fml_depth-1:5],dcb_index,3'b000};

/* CONTROLLER (if-else chain FSM) */
reg [3:0] state;
parameter IDLE=4'd0,TRY=4'd1,C1=4'd2,C2=4'd3,C3=4'd4,C4=4'd5,F1=4'd6,F2=4'd7,F3=4'd8,F4=4'd9;
reg ignore,ignore_clear; reg next_burst;
assign counter_en=next_burst; assign next_address=next_burst;

always @(posedge sys_clk) begin
	if(sys_rst) state<=IDLE;
	else begin
		if(state==IDLE) begin if(~fifo_valid&~vga_rst) state<=TRY; end
		else if(state==TRY) state<=C1;
		else if(state==C1) begin if(dcb_hit) state<=C2; else state<=F1; end
		else if(state==C2) state<=C3;
		else if(state==C3) state<=C4;
		else if(state==C4) state<=IDLE;
		else if(state==F1) begin if(fml_ack) state<=F2; end
		else if(state==F2) state<=F3;
		else if(state==F3) state<=F4;
		else if(state==F4) state<=IDLE;
	end
end

always @(posedge sys_clk) begin
	if(vga_rst) ignore<=1'b1; else if(ignore_clear) ignore<=1'b0;
end

always @(*) begin
	fifo_stb=1'b0; next_burst=1'b0; fml_stb=1'b0; ignore_clear=1'b0; dcb_stb=1'b0; fifo_source_cache=1'b0;
	if(state==IDLE&&~fifo_valid&~vga_rst) begin next_burst=1'b1; ignore_clear=1'b1; end
	if(state==TRY) dcb_stb=1'b1;
	if(state==C1) begin fifo_source_cache=1'b1; if(dcb_hit) begin dcb_stb=1'b1; if(~ignore) fifo_stb=1'b1; end end
	if(state==C2) begin dcb_stb=1'b1; fifo_source_cache=1'b1; if(~ignore) fifo_stb=1'b1; end
	if(state==C3) begin dcb_stb=1'b1; fifo_source_cache=1'b1; if(~ignore) fifo_stb=1'b1; end
	if(state==C4) begin fifo_source_cache=1'b1; if(~ignore) fifo_stb=1'b1; end
	if(state==F1) begin fml_stb=1'b1; end
	if(state==F2||state==F3||state==F4) begin if(~ignore) fifo_stb=1'b1; end
end

endmodule