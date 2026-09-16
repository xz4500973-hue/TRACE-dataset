//////////////////////////////////////////////////////////////////////
////                                                              ////
//// initSD.v                                                 ////
////                                                              ////
//// This file is part of the spiMaster opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
//// When SDInitReq asserted, initialise SD card
//// 
//// To Do:                                                       ////
//// 
//// Author(s):                                                   ////
//// - Steve Fielding, sfielding@base2designs.com                 ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2004 Steve Fielding and OPENCORES.ORG          ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE. See the GNU Lesser General Public License for more  ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from <http://www.opencores.org/lgpl.shtml>                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
`include "timescale.v"
`include "spiMaster_defines.v"

(* keep_hierarchy = "yes" *) module initSD (checkSumByte, clk, cmdByte, dataByte1, dataByte2, dataByte3, dataByte4, initError, respByte, respTout, rst, rxDataRdy, rxDataRdyClr, SDInitRdy, SDInitReq, sendCmdRdy, sendCmdReq, spiClkDelayIn, spiClkDelayOut, spiCS_n, txDataEmpty, txDataFull, txDataOut, txDataWen);
input   clk;
input   [7:0]respByte;
input   respTout;
input   rst;
input   rxDataRdy;
input   SDInitReq;
input   sendCmdRdy;
input   [7:0]spiClkDelayIn;
input   txDataEmpty;
input   txDataFull;
output  [7:0]checkSumByte;
output  [7:0]cmdByte;
output  [7:0]dataByte1;
output  [7:0]dataByte2;
output  [7:0]dataByte3;
output  [7:0]dataByte4;
output  [1:0]initError;
output  rxDataRdyClr;
output  SDInitRdy;
output  sendCmdReq;
output  [7:0]spiClkDelayOut;
output  spiCS_n;
output  [7:0]txDataOut;
output  txDataWen;

reg     [7:0]checkSumByte;
wire    clk;
reg     [7:0]cmdByte;
reg     [7:0]dataByte1;
reg     [7:0]dataByte2;
reg     [7:0]dataByte3;
reg     [7:0]dataByte4;
reg     [1:0]initError;
wire    [7:0]respByte;
wire    respTout;
wire    rst;
wire    rxDataRdy;
reg     rxDataRdyClr;
reg     SDInitRdy;
wire    SDInitReq;
wire    sendCmdRdy;
reg     sendCmdReq;
wire    [7:0]spiClkDelayIn;
reg     [7:0]spiClkDelayOut;
reg     spiCS_n;
wire    txDataEmpty;
wire    txDataFull;
reg     [7:0]txDataOut;
reg     txDataWen;

// diagram signals declarations
reg  [9:0]delCnt1;
reg  [7:0]delCnt2;
reg  [7:0]loopCnt;

// BINARY ENCODED state machine: initSDSt (merged single-process with output pipeline)
`define START 4'b0000
`define WT_INIT_REQ 4'b0001
`define CLK_SEQ_SEND_FF 4'b0010
`define CLK_SEQ_CHK_FIN 4'b0011
`define RESET_SEND_CMD 4'b0100
`define RESET_DEL 4'b0101
`define RESET_WT_FIN 4'b0110
`define RESET_CHK_FIN 4'b0111
`define INIT_WT_FIN 4'b1000
`define INIT_CHK_FIN 4'b1001
`define INIT_SEND_CMD 4'b1010
`define INIT_DEL1 4'b1011
`define INIT_DEL2 4'b1100
`define CLK_SEQ_WT_DATA_EMPTY 4'b1101

reg [3:0]CurrState_initSDSt, NextState_initSDSt;

// Next-state wire computation (combinational)
reg [3:0]nxt_state;
reg [7:0]nxt_spiClkDelayOut;
reg nxt_SDInitRdy;
reg nxt_spiCS_n;
reg [1:0]nxt_initError;
reg [7:0]nxt_txDataOut;
reg nxt_txDataWen;
reg [7:0]nxt_cmdByte;
reg [7:0]nxt_dataByte1;
reg [7:0]nxt_dataByte2;
reg [7:0]nxt_dataByte3;
reg [7:0]nxt_dataByte4;
reg [7:0]nxt_checkSumByte;
reg nxt_sendCmdReq;
reg [7:0]nxt_loopCnt;
reg [9:0]nxt_delCnt1;
reg [7:0]nxt_delCnt2;
reg nxt_rxDataRdyClr;

always @(CurrState_initSDSt or spiClkDelayIn or SDInitReq or txDataFull or loopCnt or sendCmdRdy or respTout or respByte or delCnt1 or delCnt2 or txDataEmpty or rxDataRdy) begin
  nxt_state = CurrState_initSDSt;
  nxt_spiClkDelayOut = spiClkDelayOut;
  nxt_SDInitRdy = SDInitRdy;
  nxt_spiCS_n = spiCS_n;
  nxt_initError = initError;
  nxt_txDataOut = txDataOut;
  nxt_txDataWen = txDataWen;
  nxt_cmdByte = cmdByte;
  nxt_dataByte1 = dataByte1;
  nxt_dataByte2 = dataByte2;
  nxt_dataByte3 = dataByte3;
  nxt_dataByte4 = dataByte4;
  nxt_checkSumByte = checkSumByte;
  nxt_sendCmdReq = sendCmdReq;
  nxt_loopCnt = loopCnt;
  nxt_delCnt1 = delCnt1;
  nxt_delCnt2 = delCnt2;
  nxt_rxDataRdyClr = rxDataRdyClr;

  case (CurrState_initSDSt)
    `START: begin
      nxt_spiClkDelayOut = spiClkDelayIn;
      nxt_SDInitRdy = 1'b0;
      nxt_spiCS_n = 1'b1;
      nxt_initError = `INIT_NO_ERROR;
      nxt_txDataOut = 8'h00;
      nxt_txDataWen = 1'b0;
      nxt_cmdByte = 8'h00;
      nxt_dataByte1 = 8'h00;
      nxt_dataByte2 = 8'h00;
      nxt_dataByte3 = 8'h00;
      nxt_dataByte4 = 8'h00;
      nxt_checkSumByte = 8'h00;
      nxt_sendCmdReq = 1'b0;
      nxt_loopCnt = 8'h00;
      nxt_delCnt1 = 10'h000;
      nxt_delCnt2 = 8'h00;
      nxt_rxDataRdyClr = 1'b0;
      nxt_state = `WT_INIT_REQ;
    end
    `WT_INIT_REQ: begin
      nxt_SDInitRdy = 1'b1;
      nxt_spiClkDelayOut = spiClkDelayIn;
      nxt_cmdByte = 8'h00;
      nxt_dataByte1 = 8'h00;
      nxt_dataByte2 = 8'h00;
      nxt_dataByte3 = 8'h00;
      nxt_dataByte4 = 8'h00;
      nxt_checkSumByte = 8'h00;
      if (SDInitReq == 1'b1) begin
        nxt_state = `CLK_SEQ_SEND_FF;
        nxt_SDInitRdy = 1'b0;
        nxt_loopCnt = 8'h00;
        nxt_spiClkDelayOut = `SLOW_SPI_CLK;
        nxt_initError = `INIT_NO_ERROR;
      end
    end
    `CLK_SEQ_SEND_FF: begin
      if (txDataFull == 1'b0) begin
        nxt_state = `CLK_SEQ_CHK_FIN;
        nxt_txDataOut = 8'hff;
        nxt_txDataWen = 1'b1;
        nxt_loopCnt = loopCnt + 1'b1;
      end
    end
    `CLK_SEQ_CHK_FIN: begin
      nxt_txDataWen = 1'b0;
      nxt_state = (loopCnt == `SD_INIT_START_SEQ_LEN) ? `CLK_SEQ_WT_DATA_EMPTY : `CLK_SEQ_SEND_FF;
    end
    `CLK_SEQ_WT_DATA_EMPTY: begin
      if (txDataEmpty == 1'b1) begin
        nxt_state = `RESET_SEND_CMD;
        nxt_loopCnt = 8'h00;
      end
    end
    `RESET_SEND_CMD: begin
      nxt_cmdByte = 8'h40;
      nxt_dataByte1 = 8'h00;
      nxt_dataByte2 = 8'h00;
      nxt_dataByte3 = 8'h00;
      nxt_dataByte4 = 8'h00;
      nxt_checkSumByte = 8'h95;
      nxt_sendCmdReq = 1'b1;
      nxt_loopCnt = loopCnt + 1'b1;
      nxt_spiCS_n = 1'b0;
      nxt_state = `RESET_DEL;
    end
    `RESET_DEL: begin
      nxt_sendCmdReq = 1'b0;
      nxt_state = `RESET_WT_FIN;
    end
    `RESET_WT_FIN: begin
      if (sendCmdRdy == 1'b1) begin
        nxt_state = `RESET_CHK_FIN;
        nxt_spiCS_n = 1'b1;
      end
    end
    `RESET_CHK_FIN: begin
      if ((respTout == 1'b1 || respByte != 8'h01) && loopCnt != 8'hff)
        nxt_state = `RESET_SEND_CMD;
      else if (respTout == 1'b1 || respByte != 8'h01) begin
        nxt_state = `WT_INIT_REQ;
        nxt_initError = `INIT_CMD0_ERROR;
      end
      else
        nxt_state = `INIT_SEND_CMD;
    end
    `INIT_WT_FIN: begin
      if (sendCmdRdy == 1'b1) begin
        nxt_state = `INIT_CHK_FIN;
        nxt_spiCS_n = 1'b1;
      end
    end
    `INIT_CHK_FIN: begin
      if ((respTout == 1'b1 || respByte != 8'h00) && loopCnt != 8'hff)
        nxt_state = `INIT_SEND_CMD;
      else if (respTout == 1'b1 || respByte != 8'h00) begin
        nxt_state = `WT_INIT_REQ;
        nxt_initError = `INIT_CMD1_ERROR;
      end
      else
        nxt_state = `WT_INIT_REQ;
    end
    `INIT_SEND_CMD: begin
      nxt_cmdByte = 8'h41;
      nxt_dataByte1 = 8'h00;
      nxt_dataByte2 = 8'h00;
      nxt_dataByte3 = 8'h00;
      nxt_dataByte4 = 8'h00;
      nxt_checkSumByte = 8'hff;
      nxt_sendCmdReq = 1'b1;
      nxt_loopCnt = loopCnt + 1'b1;
      nxt_spiCS_n = 1'b0;
      nxt_delCnt1 = 10'h000;
      nxt_state = `INIT_DEL1;
    end
    `INIT_DEL1: begin
      nxt_delCnt1 = delCnt1 + 1'b1;
      nxt_delCnt2 = 8'h00;
      nxt_sendCmdReq = 1'b0;
      nxt_state = (delCnt1 == `TWO_MS) ? `INIT_WT_FIN : `INIT_DEL2;
    end
    `INIT_DEL2: begin
      nxt_delCnt2 = delCnt2 + 1'b1;
      if (delCnt2 == 8'hff)
        nxt_state = `INIT_DEL1;
    end
  endcase
end

// Pipeline stage for outputs (extra flop)
reg [7:0]pipe_spiClkDelayOut;
reg pipe_SDInitRdy;
reg pipe_spiCS_n;
reg [1:0]pipe_initError;
reg [7:0]pipe_txDataOut;
reg pipe_txDataWen;
reg [7:0]pipe_cmdByte;
reg [7:0]pipe_dataByte1;
reg [7:0]pipe_dataByte2;
reg [7:0]pipe_dataByte3;
reg [7:0]pipe_dataByte4;
reg [7:0]pipe_checkSumByte;
reg pipe_sendCmdReq;
reg pipe_rxDataRdyClr;

// Sequential block (single process with pipelining)
always @(posedge clk) begin
  if (rst == 1'b1) begin
    CurrState_initSDSt <= `START;
    spiClkDelayOut <= spiClkDelayIn; SDInitRdy <= 1'b0; spiCS_n <= 1'b1;
    initError <= `INIT_NO_ERROR; txDataOut <= 8'h00; txDataWen <= 1'b0;
    cmdByte <= 8'h00; dataByte1 <= 8'h00; dataByte2 <= 8'h00;
    dataByte3 <= 8'h00; dataByte4 <= 8'h00; checkSumByte <= 8'h00;
    sendCmdReq <= 1'b0; rxDataRdyClr <= 1'b0;
    loopCnt <= 8'h00; delCnt1 <= 10'h000; delCnt2 <= 8'h00;
    // pipe regs
    pipe_spiClkDelayOut <= spiClkDelayIn; pipe_SDInitRdy <= 1'b0;
    pipe_spiCS_n <= 1'b1; pipe_initError <= `INIT_NO_ERROR;
    pipe_txDataOut <= 8'h00; pipe_txDataWen <= 1'b0;
    pipe_cmdByte <= 8'h00; pipe_dataByte1 <= 8'h00; pipe_dataByte2 <= 8'h00;
    pipe_dataByte3 <= 8'h00; pipe_dataByte4 <= 8'h00; pipe_checkSumByte <= 8'h00;
    pipe_sendCmdReq <= 1'b0; pipe_rxDataRdyClr <= 1'b0;
  end
  else begin
    CurrState_initSDSt <= nxt_state;
    // pipeline commit
    spiClkDelayOut <= pipe_spiClkDelayOut;
    SDInitRdy <= pipe_SDInitRdy; spiCS_n <= pipe_spiCS_n;
    initError <= pipe_initError; txDataOut <= pipe_txDataOut;
    txDataWen <= pipe_txDataWen; cmdByte <= pipe_cmdByte;
    dataByte1 <= pipe_dataByte1; dataByte2 <= pipe_dataByte2;
    dataByte3 <= pipe_dataByte3; dataByte4 <= pipe_dataByte4;
    checkSumByte <= pipe_checkSumByte; sendCmdReq <= pipe_sendCmdReq;
    rxDataRdyClr <= pipe_rxDataRdyClr;
    loopCnt <= nxt_loopCnt; delCnt1 <= nxt_delCnt1; delCnt2 <= nxt_delCnt2;
    // pipeline stage
    pipe_spiClkDelayOut <= nxt_spiClkDelayOut;
    pipe_SDInitRdy <= nxt_SDInitRdy; pipe_spiCS_n <= nxt_spiCS_n;
    pipe_initError <= nxt_initError; pipe_txDataOut <= nxt_txDataOut;
    pipe_txDataWen <= nxt_txDataWen; pipe_cmdByte <= nxt_cmdByte;
    pipe_dataByte1 <= nxt_dataByte1; pipe_dataByte2 <= nxt_dataByte2;
    pipe_dataByte3 <= nxt_dataByte3; pipe_dataByte4 <= nxt_dataByte4;
    pipe_checkSumByte <= nxt_checkSumByte; pipe_sendCmdReq <= nxt_sendCmdReq;
    pipe_rxDataRdyClr <= nxt_rxDataRdyClr;
  end
end

endmodule