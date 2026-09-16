`timescale 1ns/1ps
// 8x8 multiplier, variant 7: 8x4 split (two sub-products)
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [7:0]  lo = a * b[3:0];
    wire [7:0]  hi = a * b[7:4];
    assign p = (hi << 4) + lo;
endmodule
