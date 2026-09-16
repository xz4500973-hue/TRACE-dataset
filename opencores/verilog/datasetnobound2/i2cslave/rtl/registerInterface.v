//////////////////////////////////////////////////////////////////////
//// registerInterface.v  refactored - if-else chain              ////
//////////////////////////////////////////////////////////////////////
`include "i2cSlave_define.v"

module registerInterface (
  clk, addr, dataIn, writeEn, dataOut,
  myReg0, myReg1, myReg2, myReg3,
  myReg4, myReg5, myReg6, myReg7
);
input clk; input [7:0] addr; input [7:0] dataIn; input writeEn;
output reg [7:0] dataOut;
output reg [7:0] myReg0, myReg1, myReg2, myReg3;
input [7:0] myReg4, myReg5, myReg6, myReg7;

// Merged read + write in single always with if-else chain
always @(posedge clk) begin
  if (writeEn) begin
    if (addr == 8'h00)      myReg0 <= dataIn;
    else if (addr == 8'h01) myReg1 <= dataIn;
    else if (addr == 8'h02) myReg2 <= dataIn;
    else if (addr == 8'h03) myReg3 <= dataIn;
  end

  // read path (always)
  if (addr == 8'h00)           dataOut <= myReg0;
  else if (addr == 8'h01)      dataOut <= myReg1;
  else if (addr == 8'h02)      dataOut <= myReg2;
  else if (addr == 8'h03)      dataOut <= myReg3;
  else if (addr == 8'h04)      dataOut <= myReg4;
  else if (addr == 8'h05)      dataOut <= myReg5;
  else if (addr == 8'h06)      dataOut <= myReg6;
  else if (addr == 8'h07)      dataOut <= myReg7;
  else                         dataOut <= 8'h00;
end

endmodule