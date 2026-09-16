//////////////////////////////////////////////////////////////////////
////                                                              ////
//// sendCmd.v                                           ////
////                                                              ////
//// This file is part of the spiMaster opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
////  If sendCmdReq asserted, then send command to 
////  SD card. Command consists of command byte,
////  4 data bytes, and a checksum byte. Refactored variant.
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2004 Steve Fielding and OPENCORES.ORG          ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
`include "timescale.v"


(* keep_hierarchy = "yes" *) module sendCmd (checkSumByte_1, checkSumByte_2, clk, cmdByte_1, cmdByte_2, dataByte1_1, dataByte1_2, dataByte2_1, dataByte2_2, dataByte3_1, dataByte3_2, dataByte4_1, dataByte4_2, respByte, respTout, rst, rxDataIn, rxDataRdy, rxDataRdyClr, sendCmdRdy, sendCmdReq1, sendCmdReq2, txDataEmpty, txDataFull, txDataOut, txDataWen);
input   [7:0]checkSumByte_1;
input   [7:0]checkSumByte_2;
input   clk;
input   [7:0]cmdByte_1;
input   [7:0]cmdByte_2;
input   [7:0]dataByte1_1;
input   [7:0]dataByte1_2;
input   [7:0]dataByte2_1;
input   [7:0]dataByte2_2;
input   [7:0]dataByte3_1;
input   [7:0]dataByte3_2;
input   [7:0]dataByte4_1;
input   [7:0]dataByte4_2;
input   rst;
input   [7:0]rxDataIn;
input   rxDataRdy;
input   sendCmdReq1;
input   sendCmdReq2;
input   txDataEmpty;
input   txDataFull;
output  [7:0]respByte;
output  respTout;
output  rxDataRdyClr;
output  sendCmdRdy;
output  [7:0]txDataOut;
output  txDataWen;

wire    [7:0]checkSumByte_1;
wire    [7:0]checkSumByte_2;
wire    clk;
wire    [7:0]cmdByte_1;
wire    [7:0]cmdByte_2;
wire    [7:0]dataByte1_1;
wire    [7:0]dataByte1_2;
wire    [7:0]dataByte2_1;
wire    [7:0]dataByte2_2;
wire    [7:0]dataByte3_1;
wire    [7:0]dataByte3_2;
wire    [7:0]dataByte4_1;
wire    [7:0]dataByte4_2;
reg     [7:0]respByte;
reg     respTout;
wire    rst;
wire    [7:0]rxDataIn;
wire    rxDataRdy;
reg     rxDataRdyClr;
reg     sendCmdRdy;
wire    sendCmdReq1;
wire    sendCmdReq2;
wire    txDataEmpty;
wire    txDataFull;
reg     [7:0]txDataOut;
reg     txDataWen;

// Merged signals
wire sendCmdReq;
assign sendCmdReq = sendCmdReq1 | sendCmdReq2;

reg  [7:0]cmdByte;
reg  [7:0]dataByte1;
reg  [7:0]dataByte2;
reg  [7:0]dataByte3;
reg  [7:0]dataByte4;
reg  [7:0]checkSumByte;

always @(posedge clk) begin
  cmdByte <= cmdByte_1 | cmdByte_2;
  dataByte1 <= dataByte1_1 | dataByte1_2;
  dataByte2 <= dataByte2_1 | dataByte2_2;
  dataByte3 <= dataByte3_1 | dataByte3_2;
  dataByte4 <= dataByte4_1 | dataByte4_2;
  checkSumByte <= checkSumByte_1 | checkSumByte_2;
end

// Simplified FSM: merged single-process (4-state reduction)
`define S_IDLE   2'b00
`define S_TX     2'b01
`define S_RX     2'b10
`define S_DONE   2'b11

reg [2:0]seqCnt;
reg [9:0]timeOutCnt;
reg [1:0]CurrState;

// Pipeline regs
reg pipe_respByte;
reg pipe_respTout;
reg pipe_rxDataRdyClr;
reg pipe_sendCmdRdy;
reg [7:0]pipe_txDataOut;
reg pipe_txDataWen;

always @(posedge clk) begin
  if (rst == 1'b1) begin
    CurrState <= `S_IDLE;
    seqCnt <= 3'b000;
    timeOutCnt <= 10'h000;
    txDataWen <= 1'b0; txDataOut <= 8'h00;
    rxDataRdyClr <= 1'b0; respByte <= 8'h00;
    respTout <= 1'b0; sendCmdRdy <= 1'b0;
    pipe_txDataWen <= 1'b0; pipe_txDataOut <= 8'h00;
    pipe_rxDataRdyClr <= 1'b0; pipe_respByte <= 8'h00;
    pipe_respTout <= 1'b0; pipe_sendCmdRdy <= 1'b0;
  end
  else begin
    // Pipeline commit
    txDataWen <= pipe_txDataWen;
    txDataOut <= pipe_txDataOut;
    rxDataRdyClr <= pipe_rxDataRdyClr;
    respByte <= pipe_respByte;
    respTout <= pipe_respTout;
    sendCmdRdy <= pipe_sendCmdRdy;

    case (CurrState)
      `S_IDLE: begin
        pipe_sendCmdRdy <= 1'b1;
        pipe_txDataWen <= 1'b0;
        pipe_rxDataRdyClr <= 1'b0;
        if (sendCmdReq == 1'b1) begin
          CurrState <= `S_TX;
          pipe_sendCmdRdy <= 1'b0;
          seqCnt <= 3'b000;
          timeOutCnt <= 10'h000;
        end
      end
      `S_TX: begin
        // Send FF, cmdByte, d1, d2, d3, d4, checksum (7 phases)
        if (txDataFull == 1'b0) begin
          case (seqCnt)
            3'h0: begin pipe_txDataOut <= 8'hff; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h1: begin pipe_txDataOut <= cmdByte; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h2: begin pipe_txDataOut <= dataByte1; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h3: begin pipe_txDataOut <= dataByte2; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h4: begin pipe_txDataOut <= dataByte3; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h5: begin pipe_txDataOut <= dataByte4; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            3'h6: begin pipe_txDataOut <= checkSumByte; pipe_txDataWen <= 1'b1; seqCnt <= seqCnt + 1'b1; end
            default: begin pipe_txDataWen <= 1'b0; if (txDataEmpty) begin CurrState <= `S_RX; seqCnt <= 3'b000; end end
          endcase
        end
      end
      `S_RX: begin
        pipe_txDataWen <= 1'b0;
        pipe_txDataOut <= 8'hff;
        pipe_txDataWen <= 1'b1;
        pipe_rxDataRdyClr <= 1'b0;
        timeOutCnt <= timeOutCnt + 1'b1;
        if (rxDataRdy == 1'b1) begin
          pipe_respByte <= rxDataIn;
          if (rxDataIn[7] == 1'b0) begin
            CurrState <= `S_IDLE;
            pipe_txDataWen <= 1'b0;
          end
          else if (timeOutCnt == 10'h200) begin
            CurrState <= `S_IDLE;
            pipe_respTout <= 1'b1;
            pipe_txDataWen <= 1'b0;
          end
          // else stay in S_RX (retry)
        end
        else if (timeOutCnt == 10'h200) begin
          CurrState <= `S_IDLE;
          pipe_respTout <= 1'b1;
          pipe_txDataWen <= 1'b0;
        end
      end
      default: CurrState <= `S_IDLE;
    endcase
  end
end

endmodule