`timescale 1ns/1ps

module accu16_tb;

    reg         clk, rst_n, en;
    reg  [15:0] din;
    wire [15:0] acc;

    accu16 dut (.clk(clk), .rst_n(rst_n), .en(en), .din(din), .acc(acc));

    always #5 clk = ~clk;
    integer i;

    initial begin
        $dumpfile("accu16_tb.vcd");
        $dumpvars(0, accu16_tb);
        clk = 1'b0; rst_n = 1'b0; en = 1'b0; din = 16'd0;
        #12 rst_n = 1'b1;

        // boundary values
        @(posedge clk); din = 16'hFFFF; en = 1'b1;
        @(posedge clk); din = 16'h0001;
        @(posedge clk); din = 16'h8000;
        @(posedge clk); din = 16'h5555;
        @(posedge clk); din = 16'hAAAA;
        en = 1'b0;

        // bursty accumulation
        for (i = 0; i < 20; i = i + 1) begin
            @(negedge clk); en = 1'b1;
            repeat(4) @(posedge clk); din = i * 16'h1234;
            @(negedge clk); en = 1'b0;
            repeat(8) @(posedge clk);
        end

        $finish;
    end

endmodule
