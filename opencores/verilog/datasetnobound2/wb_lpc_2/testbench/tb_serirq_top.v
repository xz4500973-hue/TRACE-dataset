`timescale 1ns / 1ps
`include "serirq_defines.v"

module tb_serirq_top;

    reg         clk;
    reg         rst_n;
    reg         mode;
    reg  [31:0] irq_in;
    wire [31:0] irq_out;

    serirq_top dut (
        .clk_i(clk), .nrst_i(rst_n), .serirq_mode_i(mode),
        .irq_i(irq_in), .irq_o(irq_out)
    );

    initial clk=0; always #15 clk=~clk;

    integer i;
    initial begin
        $dumpfile("serirq_top.vcd");
        $dumpvars(0, tb_serirq_top);

        rst_n=1'b0; mode=`SERIRQ_MODE_CONTINUOUS; irq_in=32'hFFFFFFFF;
        #100; rst_n=1'b1; #500;

        // Extended quiet mode test
        mode = `SERIRQ_MODE_QUIET;
        #30000;

        // Back to continuous
        mode = `SERIRQ_MODE_CONTINUOUS;
        #8000;

        // Sequential IRQ pattern
        for(i=0;i<32;i=i+1) begin
            irq_in = ~(32'h1 << i);
            #5000;
        end

        irq_in = 32'hFFFFFFFF;
        #20000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule