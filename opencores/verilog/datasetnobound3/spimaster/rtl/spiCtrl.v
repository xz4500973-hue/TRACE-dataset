//////////////////////////////////////////////////////////////////////
////                                                              ////
//// spiCtrl.v                                                 ////
////                                                              ////
//// This file is part of the spiMaster opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description:                                          ////
////  Controls access to the 3 types of SPI access
//// Direct SPI access, SD initialisation, and SD block read/write
//// 
////                                                              ////
//// To Do:                                                       ////
//// 
////                                                              ////
//// Author(s):                                                   ////
//// - Steve Fielding, sfielding@base2designs.com                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2008 Steve Fielding and OPENCORES.ORG          ////
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

(* keep_hierarchy = "yes" *) module spiCtrl (clk, readWriteSDBlockRdy, readWriteSDBlockReq, rst, rxDataRdy, rxDataRdyClr, SDInitRdy, SDInitReq, spiCS_n, spiTransCtrl, spiTransSts, spiTransType, txDataWen);
input   clk;
input   readWriteSDBlockRdy;
input   rst;
input   rxDataRdy;
input   SDInitRdy;
input   spiTransCtrl;
input   [1:0]spiTransType;
output  [1:0]readWriteSDBlockReq;
output  rxDataRdyClr;
output  SDInitReq;
output  spiCS_n;
output  spiTransSts;
output  txDataWen;

wire    clk;
wire    readWriteSDBlockRdy;
reg     [1:0]readWriteSDBlockReq;
wire    rst;
wire    rxDataRdy;
reg     rxDataRdyClr;
wire    SDInitRdy;
reg     SDInitReq;
reg     spiCS_n;
wire    spiTransCtrl;
reg     spiTransSts;
wire    [1:0]spiTransType;
reg     txDataWen;

// BINARY ENCODED state machine: spiCtrlSt (merged single-process with pipeline)
// State codes definitions:
`define ST_S_CTRL     3'b000
`define WT_S_CTRL_REQ 3'b001
`define WT_FIN1       3'b010
`define DIR_ACC       3'b011
`define INIT          3'b100
`define WT_FIN2       3'b101
`define RW            3'b110
`define WT_FIN3       3'b111

reg [2:0]CurrState_spiCtrlSt;

// Pipeline reg for readWriteSDBlockReq (add extra flop stage)
reg [1:0]pipe_readWriteSDBlockReq;
reg pipe_rxDataRdyClr;
reg pipe_SDInitReq;
reg pipe_spiCS_n;
reg pipe_spiTransSts;
reg pipe_txDataWen;

// Machine: spiCtrlSt (single always block, ternary-dominated, with output pipeline)
always @ (posedge clk)
begin
  if (rst == 1'b1) begin
    CurrState_spiCtrlSt <= `ST_S_CTRL;
    readWriteSDBlockReq <= `NO_BLOCK_REQ;
    txDataWen <= 1'b0;
    SDInitReq <= 1'b0;
    rxDataRdyClr <= 1'b0;
    spiTransSts <= `TRANS_NOT_BUSY;
    spiCS_n <= 1'b1;
    pipe_readWriteSDBlockReq <= `NO_BLOCK_REQ;
    pipe_rxDataRdyClr <= 1'b0;
    pipe_SDInitReq <= 1'b0;
    pipe_spiCS_n <= 1'b1;
    pipe_spiTransSts <= `TRANS_NOT_BUSY;
    pipe_txDataWen <= 1'b0;
  end
  else begin
    // Pipeline: commit previous cycle outputs
    readWriteSDBlockReq <= pipe_readWriteSDBlockReq;
    rxDataRdyClr <= pipe_rxDataRdyClr;
    SDInitReq <= pipe_SDInitReq;
    spiCS_n <= pipe_spiCS_n;
    spiTransSts <= pipe_spiTransSts;
    txDataWen <= pipe_txDataWen;

    case (CurrState_spiCtrlSt)
      `ST_S_CTRL: begin
        pipe_readWriteSDBlockReq <= `NO_BLOCK_REQ;
        pipe_txDataWen <= 1'b0;
        pipe_SDInitReq <= 1'b0;
        pipe_rxDataRdyClr <= 1'b0;
        pipe_spiTransSts <= `TRANS_NOT_BUSY;
        pipe_spiCS_n <= 1'b1;
        CurrState_spiCtrlSt <= `WT_S_CTRL_REQ;
      end
      `WT_S_CTRL_REQ: begin
        pipe_rxDataRdyClr <= 1'b0;
        pipe_spiTransSts <= (spiTransCtrl == `TRANS_START) ? `TRANS_BUSY : `TRANS_NOT_BUSY;
        if (spiTransCtrl == `TRANS_START && spiTransType == `INIT_SD) begin
          CurrState_spiCtrlSt <= `INIT;
          pipe_SDInitReq <= 1'b1;
        end
        else if (spiTransCtrl == `TRANS_START && spiTransType == `RW_WRITE_SD_BLOCK) begin
          CurrState_spiCtrlSt <= `RW;
          pipe_readWriteSDBlockReq <= `WRITE_SD_BLOCK;
        end
        else if (spiTransCtrl == `TRANS_START && spiTransType == `RW_READ_SD_BLOCK) begin
          CurrState_spiCtrlSt <= `RW;
          pipe_readWriteSDBlockReq <= `READ_SD_BLOCK;
        end
        else if (spiTransCtrl == `TRANS_START && spiTransType == `DIRECT_ACCESS) begin
          CurrState_spiCtrlSt <= `DIR_ACC;
          pipe_txDataWen <= 1'b1;
          pipe_spiCS_n <= 1'b0;
        end
      end
      `WT_FIN1: begin
        if (rxDataRdy == 1'b1) begin
          CurrState_spiCtrlSt <= `WT_S_CTRL_REQ;
          pipe_rxDataRdyClr <= 1'b1;
          pipe_spiCS_n <= 1'b1;
        end
      end
      `DIR_ACC: begin
        pipe_txDataWen <= 1'b0;
        CurrState_spiCtrlSt <= `WT_FIN1;
      end
      `INIT: begin
        pipe_SDInitReq <= 1'b0;
        CurrState_spiCtrlSt <= `WT_FIN2;
      end
      `WT_FIN2: begin
        if (SDInitRdy == 1'b1)
          CurrState_spiCtrlSt <= `WT_S_CTRL_REQ;
      end
      `RW: begin
        pipe_readWriteSDBlockReq <= `NO_BLOCK_REQ;
        CurrState_spiCtrlSt <= `WT_FIN3;
      end
      `WT_FIN3: begin
        if (readWriteSDBlockRdy == 1'b1)
          CurrState_spiCtrlSt <= `WT_S_CTRL_REQ;
      end
    endcase
  end
end

endmodule