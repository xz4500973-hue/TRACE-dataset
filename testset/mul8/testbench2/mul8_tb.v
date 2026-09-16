`timescale 1ns/1ps

module mul8_tb;

    reg  [7:0]  a, b;
    wire [15:0] p;

    mul8 dut (.a(a), .b(b), .p(p));

    reg clk;
    always #5 clk = ~clk;
    integer i;

    initial begin
        $dumpfile("mul8_tb.vcd");
        $dumpvars(0, mul8_tb);
        clk = 1'b0;
        a = 8'd0; b = 8'd0;
        #15;

        // boundary values
        a = 8'h00; b = 8'h00; @(posedge clk);
        a = 8'hFF; b = 8'hFF; @(posedge clk);
        a = 8'h80; b = 8'h80; @(posedge clk);
        a = 8'h55; b = 8'hAA; @(posedge clk);
        a = 8'hAA; b = 8'h55; @(posedge clk);
        a = 8'h01; b = 8'hFF; @(posedge clk);

        // complement sweep
        for (i = 0; i < 64; i = i + 1) begin
            @(posedge clk);
            a = i * 4;
            b = ~(i * 4);
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
