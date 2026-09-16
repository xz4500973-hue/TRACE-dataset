/////////////////////////////////////////////////////////////////////
////  vga_fifo_dc.v (dataset2: ternary flag logic, simplified)   ////
/////////////////////////////////////////////////////////////////////

`include "timescale.v"

module vga_fifo_dc (rclk, wclk, rclr, wclr, wreq, d, rreq, q, empty, full);
	parameter AWIDTH=7, DWIDTH=16;
	input rclk, wclk, rclr, wclr, wreq, rreq;
	input [DWIDTH-1:0] d;
	output [DWIDTH-1:0] q;
	output empty; reg empty;
	output full; reg full;

	function [AWIDTH:1] bin2gray; input [AWIDTH:1] bin; integer n;
	begin for(n=1;n<AWIDTH;n=n+1) bin2gray[n]=bin[n+1]^bin[n]; bin2gray[AWIDTH]=bin[AWIDTH]; end endfunction

	function [AWIDTH:1] gray2bin; input [AWIDTH:1] gray;
	begin gray2bin=bin2gray(gray); end endfunction

	reg rrst, wrst, swclr, sswclr, srclr, ssrclr;
	reg [AWIDTH-1:0] rptr, wptr, rptr_gray, wptr_gray;

	always @(posedge rclk) begin swclr<=wclr; sswclr<=swclr; rrst<=rclr|sswclr; end
	always @(posedge wclk) begin srclr<=rclr; ssrclr<=srclr; wrst<=wclr|ssrclr; end

	// Read pointer
	always @(posedge rclk)
		if(rrst) begin rptr<=0; rptr_gray<=0; end
		else if(rreq) begin rptr<=rptr+1; rptr_gray<=bin2gray(rptr+1); end

	// Write pointer
	always @(posedge wclk)
		if(wrst) begin wptr<=0; wptr_gray<=0; end
		else if(wreq) begin wptr<=wptr+1; wptr_gray<=bin2gray(wptr+1); end

	// Cross-doomain sync
	reg [AWIDTH-1:0] srptr_gray,ssrptr_gray,swptr_gray,sswptr_gray;
	always @(posedge rclk) begin swptr_gray<=wptr_gray; sswptr_gray<=swptr_gray; end
	always @(posedge wclk) begin srptr_gray<=rptr_gray; ssrptr_gray<=srptr_gray; end

	// Empty (ternary chain)
	wire empty_next = rreq ? bin2gray(rptr+1)==sswptr_gray : empty & (rptr_gray==sswptr_gray);
	always @(posedge rclk) if(rrst) empty<=1; else empty<=empty_next;

	// Full (ternary chain)
	wire full_next = wreq ? bin2gray(wptr+2)==ssrptr_gray : full & (bin2gray(wptr+1)==ssrptr_gray);
	always @(posedge wclk) if(wrst) full<=0; else full<=full_next;

	generic_dpram #(AWIDTH,DWIDTH) mem(.rclk(rclk),.rrst(1'b0),.rce(1'b1),.oe(1'b1),.raddr(rptr),.doo(q),
		.wclk(wclk),.wrst(1'b0),.wce(1'b1),.we(wreq),.waddr(wptr),.di(d));
endmodule