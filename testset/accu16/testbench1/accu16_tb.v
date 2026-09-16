`timescale 1ns/1ps

module accu16_tb;

    reg         clk, rst_n, en;
    reg  [15:0] din;
    wire [15:0] acc;

    accu16 dut (.clk(clk), .rst_n(rst_n), .en(en), .din(din), .acc(acc));

    always #5 clk = ~clk;

    reg [15:0] lfsr;
    wire fb;
    integer i;
    assign fb = lfsr[15] ^ lfsr[13] ^ lfsr[12] ^ lfsr[10];
    always @(posedge clk) lfsr <= {lfsr[14:0], fb};

    initial begin
        $dumpfile("accu16_tb.vcd");
        $dumpvars(0, accu16_tb);
        clk = 1'b0; rst_n = 1'b0; en = 1'b0; din = 16'd0;
        lfsr = 16'hACE1;
        #12 rst_n = 1'b1;
        #10 en = 1'b1;

        for (i = 0; i < 400; i = i + 1) begin
            @(posedge clk);
            din = lfsr;
        end

        en = 1'b0;
        repeat(10) @(posedge clk);
        $finish;
    end

endmodule
