`timescale 1ns/1ps

module cmp8_tb;

    reg  [7:0] a, b;
    wire eq, gt, lt;

    cmp8 dut (.a(a), .b(b), .eq(eq), .gt(gt), .lt(lt));

    reg clk;
    always #5 clk = ~clk;
    reg [7:0] cnt;
    integer i;

    initial begin
        $dumpfile("cmp8_tb.vcd");
        $dumpvars(0, cmp8_tb);
        clk = 1'b0;
        a = 8'd0; b = 8'd0; cnt = 8'd0;
        #15;

        // correlated: a = cnt, b = threshold (low activity)
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            a = cnt;
            b = 8'h80;
            cnt = cnt + 8'd1;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
