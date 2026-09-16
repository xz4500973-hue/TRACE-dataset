//////////////////////////////////////////////////////////////////////
////  tb_top.v - Dataset3 variant2: aggressive random test       ////
//////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module tb_top;

   parameter CLK_PERIOD = 10;
   reg tb_clk, tb_rst;
   initial begin
        tb_clk = 0;
        forever #(CLK_PERIOD/2) tb_clk = ~tb_clk;
   end
   initial begin tb_rst=1;#(CLK_PERIOD*10);tb_rst=0; end

   tb_dut dut(tb_clk, tb_rst);

   integer i;
   initial begin
        $dumpfile("tb_top.vcd");
	    $dumpvars(0, tb_top);
       wait(~tb_rst); repeat(5) @(posedge tb_clk);
       
       // Random write then readback
       $display("\n^^^- Random test\n");
       for(i=0;i<20;i=i+1) begin
           dut.wbm.wb_write(0,0,32'h6000_0000+i*4, $random);
           dut.wbm.wb_cmp(0,0,32'h6000_0000+i*4, 32'hXXXXXXXX);
       end

       // Random byte select
       for(i=0;i<20;i=i+1) begin
           dut.wbm.wb_write_sel(0,0, {$random}%16, 32'h7000_0000+i*4, $random);
       end

       $display("\n^^^- Testbench done at %0t",$time);
       #10000; $finish;
   end

endmodule