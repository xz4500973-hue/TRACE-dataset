`timescale 1ns/1ps

module cmp8_tb;

    reg  [7:0] a, b;
    wire eq, gt, lt;

    cmp8 dut (.a(a), .b(b), .eq(eq), .gt(gt), .lt(lt));

    reg clk;
    always #5 clk = ~clk;
    integer i;

    initial begin
        $dumpfile("cmp8_tb.vcd");
        $dumpvars(0, cmp8_tb);
        clk = 1'b0;
        a = 8'd0; b = 8'd0;
        #15;

        // boundary values
        a = 8'h00; b = 8'h00; @(posedge clk);
        a = 8'hFF; b = 8'h00; @(posedge clk);
        a = 8'h00; b = 8'hFF; @(posedge clk);
        a = 8'h80; b = 8'h7F; @(posedge clk);
        a = 8'h7F; b = 8'h80; @(posedge clk);
        a = 8'h55; b = 8'hAA; @(posedge clk);

        for (i = 0; i < 64; i = i + 1) begin
            @(posedge clk);
            a = i * 4;
            b = 8'h80 - i;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
