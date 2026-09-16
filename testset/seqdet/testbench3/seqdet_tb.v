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

        // slow-changing din (low activity)
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            din = (i / 8) % 2;   // change every 8 cycles
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
