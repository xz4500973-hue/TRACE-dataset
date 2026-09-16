//////////////////////////////////////////////////////////////////////
////  tb_top.v - Dataset3 variant: mixed 8/16-bit test            ////
//////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module tb_top;

   parameter CLK_PERIOD = 10;
   reg tb_clk, tb_rst;
   initial begin
        tb_clk = 0;
        forever #(CLK_PERIOD/2) tb_clk = ~tb_clk;
   end
   initial begin tb_rst=1;#(CLK_PERIOD*5);tb_rst=0; end

   tb_dut dut(tb_clk, tb_rst);

   initial begin
        $dumpfile("tb_top.vcd");
	    $dumpvars(0, tb_top);
       wait(~tb_rst); repeat(2) @(posedge tb_clk);
       
       // 16-bit full word then byte
       $display("\n^^^- 16-bit word test\n");
       dut.wbm.wb_write(0,0,32'h5000_0000,32'h0102_0304);
       dut.wbm.wb_write(0,0,32'h5000_0004,32'h0506_0708);
       dut.wbm.wb_cmp(0,0,32'h5000_0000,32'h0102_0304);
       dut.wbm.wb_cmp(0,0,32'h5000_0004,32'h0506_0708);

       // Byte select alternate
       $display("\n^^^- Byte select test\n");
       dut.wbm.wb_write_sel(0,0,4'b1100,32'h5000_0008,32'h12AB_xxxx);
       dut.wbm.wb_write_sel(0,0,4'b0011,32'h5000_000c,32'hxxxx_CD34);
       dut.wbm.wb_cmp_sel(0,0,4'b1100,32'h5000_0008,32'h12AB_xxxx);
       dut.wbm.wb_cmp_sel(0,0,4'b0011,32'h5000_000c,32'hxxxx_CD34);

       repeat(2) @(posedge tb_clk);
       $display("\n^^^- Testbench done at %0t",$time);
       #10000; $finish;
   end

endmodule