`timescale 1ns/1ps

module seqdet_tb;

    reg  clk, rst_n, din;
    wire detected;

    seqdet dut (.clk(clk), .rst_n(rst_n), .din(din), .detected(detected));

    always #5 clk = ~clk;

    reg [7:0] lfsr;
    wire fb;
    integer i;
    assign fb = lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3];
    always @(posedge clk) lfsr <= {lfsr[6:0], fb};

    initial begin
        $dumpfile("seqdet_tb.vcd");
        $dumpvars(0, seqdet_tb);
        clk = 1'b0; rst_n = 1'b0; din = 1'b0;
        lfsr = 8'hA5;
        #12 rst_n = 1'b1;

        for (i = 0; i < 512; i = i + 1) begin
            @(negedge clk);
            din = lfsr[0];
        end

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule
