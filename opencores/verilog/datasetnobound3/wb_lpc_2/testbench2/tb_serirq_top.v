`timescale 1ns / 1ps
`include "serirq_defines.v"

module tb_serirq_top;

    reg clk,rst_n,mode;
    reg [31:0] irq_in;
    wire [31:0] irq_out;

    serirq_top dut(.clk_i(clk),.nrst_i(rst_n),.serirq_mode_i(mode),.irq_i(irq_in),.irq_o(irq_out));

    initial clk=0; always #15 clk=~clk;

    integer i;
    initial begin
        $dumpfile("serirq_top.vcd"); $dumpvars(0,tb_serirq_top);
        rst_n=0;mode=`SERIRQ_MODE_CONTINUOUS;irq_in=32'hFFFFFFFF;
        #100;rst_n=1;#500;

        // Mode sweep
        mode=`SERIRQ_MODE_QUIET;#40000;mode=`SERIRQ_MODE_CONTINUOUS;#40000;

        // Rapid IRQ changes
        for(i=0;i<50;i=i+1) begin irq_in=$urandom%65536;#2000; end

        #20000;
        $display("Done at %0t",$time);$finish;
    end

endmodule