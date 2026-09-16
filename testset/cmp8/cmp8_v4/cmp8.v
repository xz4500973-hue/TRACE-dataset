`timescale 1ns/1ps
// 8-bit comparator, variant 4: tree (4+4 split)
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    wire eq_hi = (a[7:4] == b[7:4]);
    wire gt_hi = (a[7:4] > b[7:4]);
    wire lt_hi = (a[7:4] < b[7:4]);
    wire eq_lo = (a[3:0] == b[3:0]);
    wire gt_lo = (a[3:0] > b[3:0]);
    wire lt_lo = (a[3:0] < b[3:0]);
    assign eq = eq_hi & eq_lo;
    assign gt = gt_hi | (eq_hi & gt_lo);
    assign lt = lt_hi | (eq_hi & lt_lo);
endmodule
