`timescale 1ns / 1ps
`include "serirq_defines.v"

module tb_serirq_top;

    reg clk, rst_n, mode;
    reg [31:0] irq_in;
    wire [31:0] irq_out;

    serirq_top dut(.clk_i(clk),.nrst_i(rst_n),.serirq_mode_i(mode),.irq_i(irq_in),.irq_o(irq_out));

    initial clk=0; always #15 clk=~clk;

    integer i;
    initial begin
        $dumpfile("serirq_top.vcd"); $dumpvars(0,tb_serirq_top);
        rst_n=0; mode=`SERIRQ_MODE_QUIET; irq_in=32'hFFFFFFFF;
        #100; rst_n=1; #500;

        // Random burst test
        for(i=0;i<20;i=i+1) begin
            irq_in = $random;
            #8000;
        end

        mode = `SERIRQ_MODE_CONTINUOUS;
        #10000;

        for(i=0;i<20;i=i+1) begin
            irq_in = $random;
            #4000;
        end

        #10000;
        $display("Done at %0t",$time); $finish;
    end

endmodule