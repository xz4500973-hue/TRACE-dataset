`timescale 1ns/1ps
// 8-bit comparator, variant 6: case-based combinational
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output reg  eq,
    output reg  gt,
    output reg  lt
);
    always @(*) begin
        eq = 1'b0; gt = 1'b0; lt = 1'b0;
        if (a == b)       eq = 1'b1;
        else if (a > b)   gt = 1'b1;
        else              lt = 1'b1;
    end
endmodule
