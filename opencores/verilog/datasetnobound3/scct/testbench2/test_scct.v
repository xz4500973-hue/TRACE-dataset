// $Id: test_scct.v 2 2015-06-15 13:52:02Z fkluge $
// Test bed for scct (variant 4: prescaler=8, only IC_RISING, no OC)

`include "scct_constants.v"

module test_scct;
   reg clk = 1;
   always #1 clk = !clk;
   reg rst = 0;
   reg [4:0] address = 0;
   reg       read = 0;
   wire [31:0] readdata = 0;
   reg [31:0]  writedata = 0;
   reg 	       write = 0;
   wire        irq = 0;
   wire [`SCCT_N_CHANNELS-1:0] pins_i;
   wire [`SCCT_N_CHANNELS-1:0] pins_o;
   reg inp = 0;
   wire iSig;
   assign iSig = inp ? 1 : 0;
   assign pins_i[0] = iSig;

   scct scct(clk, rst, address, read, readdata, writedata, write, irq, pins_i, pins_o);

   initial begin
      $dumpfile("scct.vcd");
      $dumpvars(0, test_scct);
   end

   initial begin
      #0 rst = 1;
      #1 rst = 0;
      // Variant 4: prescaler=8, IC_RISING only, no OC action
      #1 address = `SCCT_PSC; writedata=32'd8; write=1; #3 write=0;
      #1 address = `SCCT_CH_MS; writedata={24'b0,6'b0,`SCCT_CH_MS_IC,`SCCT_CH_MS_IC}; write=1; #2 write=0;
      #2 address = `SCCT_CH_ACT; writedata={24'b0,4'b0,2'b00,2'b11}; write=1; #2 write=0;
      #2 address = `SCCT_CH_CCR1; writedata=32'h10; write=1; #2 write=0;
      #2 address = `SCCT_CH_IE; writedata=32'b01; write=1; #2 write=0;
      // Rising edges only
      #2 inp=0; #5 inp=1; #5 inp=0; #5 inp=1;
      #10 address=`SCCT_CH_IS; writedata=32'b1; write=1; #2 write=0;
      #30 $finish;
   end
endmodule