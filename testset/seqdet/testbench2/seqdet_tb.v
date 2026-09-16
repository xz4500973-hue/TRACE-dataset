`timescale 1ns/1ps

module seqdet_tb;

    reg  clk, rst_n, din;
    wire detected;

    seqdet dut (.clk(clk), .rst_n(rst_n), .din(din), .detected(detected));

    always #5 clk = ~clk;
    integer i;

    initial begin
        $dumpfile("seqdet_tb.vcd");
        $dumpvars(0, seqdet_tb);
        clk = 1'b0; rst_n = 1'b0; din = 1'b0;
        #12 rst_n = 1'b1;

        // repeated "1011" patterns
        for (i = 0; i < 64; i = i + 1) begin
            din = 1'b1; @(posedge clk);
            din = 1'b0; @(posedge clk);
            din = 1'b1; @(posedge clk);
            din = 1'b1; @(posedge clk);
        end

        // all-ones and all-zeros
        din = 1'b1; repeat(32) @(posedge clk);
        din = 1'b0; repeat(32) @(posedge clk);

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
