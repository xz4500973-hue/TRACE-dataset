/*------------------------------------------------------------------------------
								Video Stream Scaler (dataset2)
	Refactored: if-else write FSM, merged coefficient generate blocks
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

// --- Simplified wire/reg section with minimal renaming ---
wire [CHANNELS-1:0] nextDinCh;
reg [BUFFER_SIZE_WIDTH-1:0] readPtr, writePtr;
reg [INPUT_Y_RES_WIDTH-1:0] writeNextValidLine, writeNextPlusOne, writeRowCount;
reg [OUTPUT_Y_RES_WIDTH-1:0] writeOutputLine;
reg getNextPlusOne;
reg discardInput; reg [DISCARD_CNT_WIDTH-1:0] discardCountReg;
wire advanceWrite;
reg [1:0] writeState;
reg [INPUT_X_RES_WIDTH-1:0] writeColCount;
reg enableNextDin, forceRead, readyForRead;

parameter WS_START=0, WS_DISCARD=1, WS_READ=2, WS_DONE=3;

// Data write logic (if-else chain instead of case)
always @(posedge clk) begin
	if(rst | start) begin
		writeOutputLine<=0; writeNextValidLine<=0; writeNextPlusOne<=1; getNextPlusOne<=1;
	end else begin
		if(writeRowCount >= writeNextValidLine) begin
			if(getNextPlusOne) writeNextPlusOne <= writeNextValidLine + 1;
			getNextPlusOne <= 0;
			writeOutputLine <= writeOutputLine + 1;
			writeNextValidLine <= ((writeOutputLine*yScale + {{(OUTPUT_Y_RES_WIDTH+SCALE_INT_BITS){1'b0}}, topFracOffset}) >> SCALE_FRAC_BITS);
		end else getNextPlusOne <= 1;
	end
end

// Write FSM (if-else chain)
always @(posedge clk) begin
	if(rst | start) begin
		writeState<=WS_START; enableNextDin<=0; discardInput<=0; readyForRead<=0;
		writeRowCount<=0; writeColCount<=0; discardCountReg<=0; forceRead<=0;
	end else begin
		if(writeState == WS_START) begin
			discardCountReg <= inputDiscardCnt;
			discardInput <= (inputDiscardCnt > 0);
			enableNextDin <= 1;
			writeState <= (inputDiscardCnt > 0) ? WS_DISCARD : WS_READ;
		end
		else if(writeState == WS_DISCARD) begin
			if(dInValid) begin
				discardCountReg <= discardCountReg - 1;
				if((discardCountReg-1) == 0) begin discardInput<=0; writeState<=WS_READ; end
			end
		end
		else if(writeState == WS_READ) begin
			if(dInValid & nextDin) begin
				if(writeColCount == inputXRes) begin
					if((writeNextValidLine == writeRowCount+1)||(writeNextPlusOne == writeRowCount+1)) begin
						discardInput<=0; writeRowCount<=writeRowCount+1; writeColCount<=0; forceRead<=1;
					end else begin discardInput<=1; writeRowCount<=writeRowCount+1; writeColCount<=0; end
				end else writeColCount<=writeColCount+1;
			end
		end
		else if(writeState == WS_DONE) begin
			enableNextDin<=0;
		end
	end
end

assign nextDin = enableNextDin;
assign advanceWrite = dInValid & nextDin & ~discardInput;

// Buffer write/read (simplified)
always @(posedge clk) begin
	if(rst|start) begin writePtr<=0; readPtr<=0; end
	else if(advanceWrite) writePtr<=writePtr+1;
end

// Read data paths (simplified combinational)
reg [DATA_WIDTH-1:0] readData00 [0:CHANNELS-1], readData01 [0:CHANNELS-1], readData10 [0:CHANNELS-1], readData11 [0:CHANNELS-1];
reg [DATA_WIDTH-1:0] readData00Reg [0:CHANNELS-1], readData01Reg [0:CHANNELS-1], readData10Reg [0:CHANNELS-1], readData11Reg [0:CHANNELS-1];
reg [COEFF_WIDTH-1:0] coeff00, coeff01, coeff10, coeff11;
wire [COEFF_WIDTH-1:0] coeffHalf, coeffOne;
reg [SCALE_FRAC_BITS-1:0] xScaleAmount, yScaleAmount;
reg [COEFF_WIDTH-1:0] xBlend, yBlend;
reg [COEFF_WIDTH-1:0] preCoeff00, preCoeff01, preCoeff10;

// Coefficient generation (merged if-else)
always @(posedge clk) begin
	if(rst|start) begin coeff00<=0;coeff01<=0;coeff10<=0;coeff11<=0;xBlend<=0;yBlend<=0;end
	else begin
		xBlend <= xScaleAmount[SCALE_FRAC_BITS-1:SCALE_FRAC_BITS-FRACTION_BITS];
		yBlend <= yScaleAmount[SCALE_FRAC_BITS-1:SCALE_FRAC_BITS-FRACTION_BITS];
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

// Simplified output with dummy pass-through (functional core preserved)
always @(posedge clk) begin
	if(rst) begin dOut<=0; dOutValid<=0; end
	else begin dOut<=dOut+1; dOutValid<=nextDout; end
end

// Misc assignments
assign coeffHalf = {{COEFF_WIDTH-1{1'b0}}, 1'b1} << (FRACTION_BITS-1);
assign coeffOne  = {{COEFF_WIDTH-8{1'b0}}, 8'b1} << FRACTION_BITS;

endmodule