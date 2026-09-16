/*------------------------------------------------------------------------------
								Video Stream Scaler (dataset3)
	Refactored: two-process write FSM, combinational next-state wires
-------------------------------------------------------------------------------*/

`default_nettype wire

(* keep_hierarchy = "yes" *) module streamScaler #(
parameter DATA_WIDTH=8, CHANNELS=1, DISCARD_CNT_WIDTH=8,
parameter INPUT_X_RES_WIDTH=11, INPUT_Y_RES_WIDTH=11, OUTPUT_X_RES_WIDTH=11, OUTPUT_Y_RES_WIDTH=11,
parameter FRACTION_BITS=8, SCALE_INT_BITS=4, SCALE_FRAC_BITS=14, BUFFER_SIZE=4,
parameter COEFF_WIDTH=FRACTION_BITS+1, SCALE_BITS=SCALE_INT_BITS+SCALE_FRAC_BITS,
parameter BUFFER_SIZE_WIDTH=((BUFFER_SIZE+1)<=2)?1:((BUFFER_SIZE+1)<=4)?2:((BUFFER_SIZE+1)<=8)?3:((BUFFER_SIZE+1)<=16)?4:((BUFFER_SIZE+1)<=32)?5:((BUFFER_SIZE+1)<=64)?6:7
)(
input wire clk, rst,
input wire [DATA_WIDTH*CHANNELS-1:0] dIn,
input wire dInValid, output wire nextDin, input wire start,
output reg [DATA_WIDTH*CHANNELS-1:0] dOut,
output reg dOutValid, input wire nextDout,
input wire [DISCARD_CNT_WIDTH-1:0] inputDiscardCnt,
input wire [INPUT_X_RES_WIDTH-1:0] inputXRes, inputYRes,
input wire [OUTPUT_X_RES_WIDTH-1:0] outputXRes, outputYRes,
input wire [SCALE_BITS-1:0] xScale, yScale,
input wire [SCALE_BITS-1:0] leftOffset, topFracOffset,
input wire nearestNeighbor
);

// Write data logic
reg [INPUT_Y_RES_WIDTH-1:0] writeNextValidLine, writeNextPlusOne, writeRowCount;
reg [OUTPUT_Y_RES_WIDTH-1:0] writeOutputLine;
reg getNextPlusOne;
reg discardInput; reg [DISCARD_CNT_WIDTH-1:0] discardCountReg;
wire advanceWrite;
reg [1:0] writeState;
reg [INPUT_X_RES_WIDTH-1:0] writeColCount;
reg enableNextDin, forceRead, readyForRead;

parameter WS_START=0, WS_DISCARD=1, WS_READ=2, WS_DONE=3;

// Next-state wires for write FSM
wire [1:0] nxt_wstate;
wire nxt_enableNextDin;
wire nxt_discardInput;
wire nxt_readyForRead;
wire [DISCARD_CNT_WIDTH-1:0] nxt_discardCnt;
wire [INPUT_Y_RES_WIDTH-1:0] nxt_writeRowCount;
wire [INPUT_X_RES_WIDTH-1:0] nxt_writeColCount;

assign nxt_wstate =
    (writeState==WS_START)  ? (inputDiscardCnt>0 ? WS_DISCARD : WS_READ) :
    (writeState==WS_DISCARD)? (dInValid&&((discardCountReg-1)==0) ? WS_READ : WS_DISCARD) :
    (writeState==WS_READ)   ? ((dInValid&nextDin&&writeColCount==inputXRes&&(writeRowCount+1>=inputYRes)) ? WS_DONE : WS_READ) :
    writeState;

assign nxt_enableNextDin = (writeState==WS_START) ? 1'b1 : (writeState==WS_DONE) ? 1'b0 : enableNextDin;
assign nxt_discardInput  = (writeState==WS_START) ? (inputDiscardCnt>0) :
                            (writeState==WS_DISCARD&&dInValid&&((discardCountReg-1)==0)) ? 1'b0 : discardInput;
assign nxt_discardCnt = (writeState==WS_START) ? inputDiscardCnt :
                          (writeState==WS_DISCARD&&dInValid) ? discardCountReg-1 : discardCountReg;
assign nxt_writeRowCount = (writeState==WS_READ&&dInValid&nextDin&&writeColCount==inputXRes) ? writeRowCount+1 : writeRowCount;
assign nxt_writeColCount = (writeState==WS_START) ? 0 :
                            (writeState==WS_READ&&dInValid&nextDin) ? (writeColCount==inputXRes?0:writeColCount+1) : writeColCount;

// Sequential
always @(posedge clk) begin
	if(rst|start) begin
		writeState<=WS_START; enableNextDin<=0; discardInput<=0; readyForRead<=0;
		writeRowCount<=0; writeColCount<=0; discardCountReg<=0; forceRead<=0;
	end else begin
		writeState<=nxt_wstate; enableNextDin<=nxt_enableNextDin;
		discardInput<=nxt_discardInput; discardCountReg<=nxt_discardCnt;
		writeRowCount<=nxt_writeRowCount; writeColCount<=nxt_writeColCount;
	end
end

assign nextDin = enableNextDin;

// Coefficient generation (ternary chain + pipelined output)
reg [COEFF_WIDTH-1:0] coeff00, coeff01, coeff10, coeff11;
wire [COEFF_WIDTH-1:0] coeffHalf, coeffOne;
reg [SCALE_FRAC_BITS-1:0] xScaleAmount, yScaleAmount;
reg [COEFF_WIDTH-1:0] xBlend, yBlend;
reg [COEFF_WIDTH-1:0] preCoeff00, preCoeff01, preCoeff10;
reg [COEFF_WIDTH-1:0] coeffPipe; // extra pipeline

always @(posedge clk) begin
	if(rst|start) begin coeff00<=0;coeff01<=0;coeff10<=0;coeff11<=0;xBlend<=0;yBlend<=0;coeffPipe<=0;end
	else begin
		xBlend <= xScaleAmount[SCALE_FRAC_BITS-1:SCALE_FRAC_BITS-FRACTION_BITS];
		yBlend <= yScaleAmount[SCALE_FRAC_BITS-1:SCALE_FRAC_BITS-FRACTION_BITS];
		coeffPipe <= coeff00;
		if(nearestNeighbor) begin
			coeff00 <= (xBlend<coeffHalf && yBlend<coeffHalf) ? coeffOne : 0;
			coeff01 <= (xBlend>=coeffHalf && yBlend<coeffHalf) ? coeffOne : 0;
			coeff10 <= (xBlend<coeffHalf && yBlend>=coeffHalf) ? coeffOne : 0;
			coeff11 <= (xBlend>=coeffHalf && yBlend>=coeffHalf) ? coeffOne : 0;
		end else begin
			coeff00<=preCoeff00;coeff01<=preCoeff01;coeff10<=preCoeff10;
			coeff11<=((xBlend*yBlend+(coeffHalf-1))>>FRACTION_BITS);
		end
	end
end

// Simplified output
always @(posedge clk) begin
	if(rst) begin dOut<=0; dOutValid<=0; end
	else begin dOut<=dOut+1; dOutValid<=nextDout; end
end

assign coeffHalf = {{COEFF_WIDTH-1{1'b0}}, 1'b1} << (FRACTION_BITS-1);
assign coeffOne  = {{COEFF_WIDTH-8{1'b0}}, 8'b1} << FRACTION_BITS;

endmodule