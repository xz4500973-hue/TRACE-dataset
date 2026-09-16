//////////////////////////////////////////////////////////////////////
////                                                              ////
//// i2cSlave.v                                                   ////
////                                                              ////
//// This file is part of the i2cSlave opencores effort.
//// <http://www.opencores.org/cores//>                           ////
////                                                              ////
//// Module Description: refactored - merged always blocks        ////
////                                                              ////
//// Author(s):                                                   ////
//// - Steve Fielding, sfielding@base2designs.com                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
`include "i2cSlave_define.v"


module i2cSlave (
  clk,
  rst,
  sda,
  scl,
  myReg0,
  myReg1,
  myReg2,
  myReg3,
  myReg4,
  myReg5,
  myReg6,
  myReg7
);

input clk;
input rst;
inout sda;
input scl;
output [7:0] myReg0;
output [7:0] myReg1;
output [7:0] myReg2;
output [7:0] myReg3;
input [7:0] myReg4;
input [7:0] myReg5;
input [7:0] myReg6;
input [7:0] myReg7;


// local wires and regs
reg sdaDeb;
reg sclDeb;
reg [`DEB_I2C_LEN-1:0] sdaPipe;
reg [`DEB_I2C_LEN-1:0] sclPipe;

reg [`SCL_DEL_LEN-1:0] sclDelayed;
reg [`SDA_DEL_LEN-1:0] sdaDelayed;
reg [1:0] startStopDetState;
wire clearStartStopDet;
wire sdaOut;
wire sdaIn;
wire [7:0] regAddr;
wire [7:0] dataToRegIF;
wire writeEn;
wire [7:0] dataFromRegIF;
reg [1:0] rstPipe;
wire rstSyncToClk;
reg startEdgeDet;

assign sda = (sdaOut == 1'b0) ? 1'b0 : 1'bz;
assign sdaIn = sda;

// Merged always block 1: rst sync + debounce
always @(posedge clk) begin
  if (rst == 1'b1) begin
    rstPipe <= 2'b11;
    sdaPipe <= {`DEB_I2C_LEN{1'b1}};
    sdaDeb <= 1'b1;
    sclPipe <= {`DEB_I2C_LEN{1'b1}};
    sclDeb <= 1'b1;
  end
  else begin
    rstPipe <= {rstPipe[0], 1'b0};
    sdaPipe <= {sdaPipe[`DEB_I2C_LEN-2:0], sdaIn};
    sclPipe <= {sclPipe[`DEB_I2C_LEN-2:0], scl};
    if (&sclPipe[`DEB_I2C_LEN-1:1] == 1'b1)
      sclDeb <= 1'b1;
    else if (|sclPipe[`DEB_I2C_LEN-1:1] == 1'b0)
      sclDeb <= 1'b0;
    if (&sdaPipe[`DEB_I2C_LEN-1:1] == 1'b1)
      sdaDeb <= 1'b1;
    else if (|sdaPipe[`DEB_I2C_LEN-1:1] == 1'b0)
      sdaDeb <= 1'b0;
  end
end

assign rstSyncToClk = rstPipe[1];

// Merged always block 2: delay + start/stop detect
always @(posedge clk) begin
  if (rstSyncToClk == 1'b1) begin
    sclDelayed <= {`SCL_DEL_LEN{1'b1}};
    sdaDelayed <= {`SDA_DEL_LEN{1'b1}};
    startStopDetState <= `NULL_DET;
    startEdgeDet <= 1'b0;
  end
  else begin
    sclDelayed <= {sclDelayed[`SCL_DEL_LEN-2:0], sclDeb};
    sdaDelayed <= {sdaDelayed[`SDA_DEL_LEN-2:0], sdaDeb};
    if (sclDeb == 1'b1 && sdaDelayed[`SDA_DEL_LEN-2] == 1'b0 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b1)
      startEdgeDet <= 1'b1;
    else
      startEdgeDet <= 1'b0;
    if (clearStartStopDet == 1'b1)
      startStopDetState <= `NULL_DET;
    else if (sclDeb == 1'b1) begin
      if (sdaDelayed[`SDA_DEL_LEN-2] == 1'b1 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b0) 
        startStopDetState <= `STOP_DET;
      else if (sdaDelayed[`SDA_DEL_LEN-2] == 1'b0 && sdaDelayed[`SDA_DEL_LEN-1] == 1'b1)
        startStopDetState <= `START_DET;
    end
  end
end


registerInterface u_registerInterface(
  .clk(clk),
  .addr(regAddr),
  .dataIn(dataToRegIF),
  .writeEn(writeEn),
  .dataOut(dataFromRegIF),
  .myReg0(myReg0),
  .myReg1(myReg1),
  .myReg2(myReg2),
  .myReg3(myReg3),
  .myReg4(myReg4),
  .myReg5(myReg5),
  .myReg6(myReg6),
  .myReg7(myReg7)
);

serialInterface u_serialInterface (
  .clk(clk), 
  .rst(rstSyncToClk | startEdgeDet), 
  .dataIn(dataFromRegIF), 
  .dataOut(dataToRegIF), 
  .writeEn(writeEn),
  .regAddr(regAddr), 
  .scl(sclDelayed[`SCL_DEL_LEN-1]), 
  .sdaIn(sdaDeb), 
  .sdaOut(sdaOut), 
  .startStopDetState(startStopDetState),
  .clearStartStopDet(clearStartStopDet) 
);


endmodule