`timescale 1ns/1ps
// 8-bit comparator, variant 9: lt derived from gt/eq
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    assign gt = (a > b);
    assign eq = (a == b);
    assign lt = ~(gt | eq);
endmodule
