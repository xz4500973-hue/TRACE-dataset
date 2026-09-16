`timescale 1ns/1ps

module mul8_tb;

    reg  [7:0]  a, b;
    wire [15:0] p;

    mul8 dut (.a(a), .b(b), .p(p));

    reg clk;
    always #5 clk = ~clk;
    reg [7:0] cnt;
    integer i;

    initial begin
        $dumpfile("mul8_tb.vcd");
        $dumpvars(0, mul8_tb);
        clk = 1'b0;
        a = 8'd0; b = 8'd0; cnt = 8'd0;
        #15;

        // correlated inputs (low activity): a = cnt, b = cnt
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            a = cnt;
            b = cnt;
            cnt = cnt + 8'd1;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
