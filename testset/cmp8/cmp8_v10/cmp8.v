`timescale 1ns/1ps
// 8-bit comparator, variant 10: XNOR equality + nibble magnitude
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    assign eq = &(a ~^ b);
    assign gt = (a[7:4] > b[7:4]) | ((a[7:4] == b[7:4]) & (a[3:0] > b[3:0]));
    assign lt = (a[7:4] < b[7:4]) | ((a[7:4] == b[7:4]) & (a[3:0] < b[3:0]));
endmodule
