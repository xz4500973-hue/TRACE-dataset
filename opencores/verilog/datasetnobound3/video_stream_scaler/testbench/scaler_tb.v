/*------------------------------------------------------------------------------
	Video Stream Scaler testbench (dataset3: larger upscale test)
-------------------------------------------------------------------------------*/

`timescale 1ns/1ps
`default_nettype wire

module scaler_tb;

parameter DATA_WIDTH=8; parameter CHANNELS=3;
parameter DISCARD_CNT_WIDTH=8;
parameter INPUT_X_RES_WIDTH=11; parameter INPUT_Y_RES_WIDTH=11;
parameter OUTPUT_X_RES_WIDTH=11; parameter OUTPUT_Y_RES_WIDTH=11;
parameter FRACTION_BITS=8; parameter SCALE_INT_BITS=4; parameter SCALE_FRAC_BITS=14;
parameter BUFFER_SIZE=4;
parameter COEFF_WIDTH=FRACTION_BITS+1; parameter SCALE_BITS=SCALE_INT_BITS+SCALE_FRAC_BITS;

parameter INPUT_X_RES=319; parameter INPUT_Y_RES=239;
parameter OUTPUT_X_RES=639; parameter OUTPUT_Y_RES=479;
parameter X_SCALE={SCALE_BITS{1'b0}}+(1<<(SCALE_FRAC_BITS-1));
parameter Y_SCALE={SCALE_BITS{1'b0}}+(1<<(SCALE_FRAC_BITS-1));

reg clk,rst;
reg [DATA_WIDTH*CHANNELS-1:0] dIn; reg dInValid; wire nextDin; reg start;
wire [DATA_WIDTH*CHANNELS-1:0] dOut; wire dOutValid; reg nextDout;
reg [SCALE_BITS-1:0] leftOffset=0,topFracOffset=0;
reg nearestNeighbor=0;
reg done;

integer rfile,r; reg [DATA_WIDTH*CHANNELS-1:0] readMem[0:0];

initial begin clk=0;#5 forever #5 clk=~clk; end
initial begin rst=1;#100 rst=0; end

initial begin
	$dumpfile("scaler.vcd");$dumpvars(0,scaler_tb);
	done=0; rfile=$fopen("input640x512RGB.raw","rb");
	dIn=0;dInValid=0;start=0;
	#60 start=1;#10 start=0;
	#20 r=$fread(readMem,rfile);dIn=readMem[0];
	while(!$feof(rfile))begin dInValid=1;#10;if(nextDin)begin r=$fread(readMem,rfile);dIn=readMem[0];end end
	$fclose(rfile);
end

initial begin nextDout=0;#30000;forever begin nextDout=1;#((OUTPUT_X_RES+1)*10);nextDout=0;#((OUTPUT_X_RES+1)*50);end end

integer dOutCount;
initial begin
	dOutCount=0;
	while(dOutCount<(OUTPUT_X_RES+1)*(OUTPUT_Y_RES+1))begin #10;if(dOutValid==1)dOutCount=dOutCount+1;end
	done=1;$display("Done at %0t",$time);$finish;
end

streamScaler #(.DATA_WIDTH(DATA_WIDTH),.CHANNELS(CHANNELS),.DISCARD_CNT_WIDTH(DISCARD_CNT_WIDTH),
.INPUT_X_RES_WIDTH(INPUT_X_RES_WIDTH),.INPUT_Y_RES_WIDTH(INPUT_Y_RES_WIDTH),
.OUTPUT_X_RES_WIDTH(OUTPUT_X_RES_WIDTH),.OUTPUT_Y_RES_WIDTH(OUTPUT_Y_RES_WIDTH),
.BUFFER_SIZE(BUFFER_SIZE)) scaler_inst(
.clk(clk),.rst(rst),.dIn(dIn),.dInValid(dInValid),.nextDin(nextDin),.start(start),
.dOut(dOut),.dOutValid(dOutValid),.nextDout(nextDout),
.inputDiscardCnt(8'd10),.inputXRes(INPUT_X_RES),.inputYRes(INPUT_Y_RES),
.outputXRes(OUTPUT_X_RES),.outputYRes(OUTPUT_Y_RES),
.xScale(X_SCALE),.yScale(Y_SCALE),
.leftOffset(leftOffset),.topFracOffset(topFracOffset),.nearestNeighbor(nearestNeighbor));

endmodule