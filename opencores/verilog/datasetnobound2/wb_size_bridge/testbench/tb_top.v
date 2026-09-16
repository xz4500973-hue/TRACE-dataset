//////////////////////////////////////////////////////////////////////
////  tb_top.v - Dataset2 variant: byte interface focused         ////
//////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module tb_top;

   parameter CLK_PERIOD = 10;
   
   reg tb_clk, tb_rst;
   initial begin
        tb_clk = 0;
        forever #(CLK_PERIOD/2) tb_clk = ~tb_clk;
   end
   
   initial begin
       tb_rst = 1'b1; #(CLK_PERIOD*5); tb_rst = 1'b0;
   end

   tb_dut dut( tb_clk, tb_rst );

   initial begin
        $dumpfile("tb_top.vcd");
        $dumpvars(0, tb_top);
       wait(~tb_rst); repeat(2) @(posedge tb_clk);
       
       // 8 bit interface - different data patterns
       $display("\n^^^- 8 bit interface test\n");
       dut.wbm.wb_cmp(0,0,32'h1000_0000, 32'hAABB_CCDD);
       dut.wbm.wb_cmp(0,0,32'h1000_0004, 32'h1122_3344);
       
       dut.wbm.wb_write(0,0,32'h1000_0010, 32'hDEAD_BEEF);
       dut.wbm.wb_write(0,0,32'h1000_0014, 32'hCAFE_1234);
       dut.wbm.wb_cmp(0,0,32'h1000_0010, 32'hDEAD_BEEF);
       dut.wbm.wb_cmp(0,0,32'h1000_0014, 32'hCAFE_1234);

       // Byte select writes
       dut.wbm.wb_write_sel(0,0,4'b0001,32'h1000_0020,32'hxxxx_xxAA);
       dut.wbm.wb_write_sel(0,0,4'b0010,32'h1000_0024,32'hxxxx_BBxx);
       dut.wbm.wb_write_sel(0,0,4'b0100,32'h1000_0028,32'hxxCC_xxxx);
       dut.wbm.wb_write_sel(0,0,4'b1000,32'h1000_002c,32'hDDxx_xxxx);
       
       dut.wbm.wb_cmp_sel(0,0,4'b0001,32'h1000_0020,32'hxxxx_xxAA);
       dut.wbm.wb_cmp_sel(0,0,4'b0010,32'h1000_0024,32'hxxxx_BBxx);
       dut.wbm.wb_cmp_sel(0,0,4'b0100,32'h1000_0028,32'hxxCC_xxxx);
       dut.wbm.wb_cmp_sel(0,0,4'b1000,32'h1000_002c,32'hDDxx_xxxx);
       
       // Half-word select
       dut.wbm.wb_write_sel(0,0,4'b0011,32'h1000_0030,32'hxxxx_1234);
       dut.wbm.wb_write_sel(0,0,4'b1100,32'h1000_0034,32'h5678_xxxx);
       dut.wbm.wb_cmp_sel(0,0,4'b0011,32'h1000_0030,32'hxxxx_1234);
       dut.wbm.wb_cmp_sel(0,0,4'b1100,32'h1000_0034,32'h5678_xxxx);

       // 16 bit interface
       $display("\n^^^- 16 bit interface test\n");
       dut.wbm.wb_write(0,0,32'h2000_0000, 32'hF00D_CAFE);
       dut.wbm.wb_write(0,0,32'h2000_0004, 32'h8BAD_FACE);
       dut.wbm.wb_cmp(0,0,32'h2000_0000, 32'hF00D_CAFE);
       dut.wbm.wb_cmp(0,0,32'h2000_0004, 32'h8BAD_FACE);

       repeat(2) @(posedge tb_clk);
       $display("\n^^^ Testbench done at %0t",$time);
       #10000; $finish;
   end

endmodule