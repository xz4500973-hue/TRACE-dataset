`timescale 1ns/1ps
// 8-bit comparator, variant 1: behavioral
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    assign eq = (a == b);
    assign gt = (a > b);
    assign lt = (a < b);
endmodule
