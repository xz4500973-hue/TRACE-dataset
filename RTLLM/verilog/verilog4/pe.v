`timescale 1ns/1ps

module pe(
    input clk, rst,
    input [31:0] a, b,
    output [31:0] c
);

    // 2-stage pipeline: stage1=multiply, stage2=accumulate
    reg [31:0] prod_r, acc;
    reg [31:0] a_r, b_r;

    assign c = acc;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a_r    <= 0;
            b_r    <= 0;
            prod_r <= 0;
            acc    <= 0;
        end else begin
            a_r    <= a;
            b_r    <= b;
            prod_r <= a_r * b_r;
            acc    <= acc + prod_r;
        end
    end

endmodule