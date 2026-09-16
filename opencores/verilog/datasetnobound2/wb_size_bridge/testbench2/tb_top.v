//////////////////////////////////////////////////////////////////////
////  tb_top.v - Dataset2 variant2: word interface stress test   ////
//////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module tb_top;

   parameter CLK_PERIOD = 10;
   reg tb_clk, tb_rst;
    initial begin
        tb_clk = 0;
        forever #(CLK_PERIOD/2) tb_clk = ~tb_clk;
   end
   initial begin tb_rst=1;#(CLK_PERIOD*8);tb_rst=0; end

   tb_dut dut(tb_clk, tb_rst);

   integer i;
   initial begin
        $dumpfile("tb_top.vcd");
        $dumpvars(0, tb_top);
       wait(~tb_rst); repeat(3) @(posedge tb_clk);
       
       // Bulk 16-bit writes
       $display("\n^^^- Bulk 16-bit write\n");
       for(i=0;i<16;i=i+1) begin
           dut.wbm.wb_write(0,0,32'h3000_0000+i*4, i*32'h01010101);
       end
       for(i=0;i<16;i=i+1) begin
           dut.wbm.wb_cmp(0,0,32'h3000_0000+i*4, i*32'h01010101);
       end

       // Bulk 8-bit byte writes
       $display("\n^^^- Bulk 8-bit byte write\n");
       for(i=0;i<32;i=i+1) begin
           dut.wbm.wb_write_sel(0,0,4'b0001, 32'h4000_0000+i*4, 32'hxxxx_xx00+i);
       end
       
       $display("\n^^^- Testbench done at %0t",$time);
       #10000; $finish;
   end

endmodule