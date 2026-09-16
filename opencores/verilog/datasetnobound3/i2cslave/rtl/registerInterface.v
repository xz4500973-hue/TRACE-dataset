//////////////////////////////////////////////////////////////////////
//// registerInterface.v  refactored - generate-for               ////
//////////////////////////////////////////////////////////////////////
`include "i2cSlave_define.v"

(* keep_hierarchy = "yes" *) module registerInterface (
  clk, addr, dataIn, writeEn, dataOut,
  myReg0, myReg1, myReg2, myReg3,
  myReg4, myReg5, myReg6, myReg7
);
input clk; input [7:0] addr; input [7:0] dataIn; input writeEn;
output reg [7:0] dataOut;
output reg [7:0] myReg0, myReg1, myReg2, myReg3;
input [7:0] myReg4, myReg5, myReg6, myReg7;

// Write logic using generate
genvar i;
generate
  for (i = 0; i < 4; i = i + 1) begin : wr_regs
    always @(posedge clk) begin
      if (writeEn && addr == i)
        case (i)
          0: myReg0 <= dataIn;
          1: myReg1 <= dataIn;
          2: myReg2 <= dataIn;
          3: myReg3 <= dataIn;
        endcase
    end
  end
endgenerate

// Read logic using case (original style preserved)
always @(posedge clk) begin
  case (addr)
    8'h00: dataOut <= myReg0;
    8'h01: dataOut <= myReg1;
    8'h02: dataOut <= myReg2;
    8'h03: dataOut <= myReg3;
    8'h04: dataOut <= myReg4;
    8'h05: dataOut <= myReg5;
    8'h06: dataOut <= myReg6;
    8'h07: dataOut <= myReg7;
    default: dataOut <= 8'h00;
  endcase
end

endmodule