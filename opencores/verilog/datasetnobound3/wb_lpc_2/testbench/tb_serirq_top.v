`timescale 1ns / 1ps
`include "serirq_defines.v"

module tb_serirq_top;

    reg clk, rst_n, mode;
    reg [31:0] irq_in;
    wire [31:0] irq_out;

    serirq_top dut(.clk_i(clk),.nrst_i(rst_n),.serirq_mode_i(mode),.irq_i(irq_in),.irq_o(irq_out));

    initial clk=0; always #15 clk=~clk;

    initial begin
        $dumpfile("serirq_top.vcd"); $dumpvars(0,tb_serirq_top);
        rst_n=0; mode=`SERIRQ_MODE_CONTINUOUS; irq_in=32'hFFFFFFFF;
        #100; rst_n=1; #500;

        // Toggle mode every 10us
        #10000;
        mode = `SERIRQ_MODE_QUIET;
        #10000;
        mode = `SERIRQ_MODE_CONTINUOUS;
        #10000;
        mode = `SERIRQ_MODE_QUIET;
        #10000;

        // IRQ pattern: alternating groups
        irq_in = 32'h55555555;
        #20000;
        irq_in = 32'hAAAAAAAA;
        #20000;
        irq_in = 32'hFFFFFFFF;

        #10000;
        $display("Done at %0t",$time); $finish;
    end

endmodule