`timescale 1ns/1ps
// 8x8 multiplier, variant 6: 4-bit split (four sub-products)
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [3:0] al = a[3:0];
    wire [3:0] ah = a[7:4];
    wire [3:0] bl = b[3:0];
    wire [3:0] bh = b[7:4];

    wire [7:0] z0 = al * bl;
    wire [7:0] z1 = ah * bl;
    wire [7:0] z2 = al * bh;
    wire [7:0] z3 = ah * bh;

    assign p = (z3 << 8) + ((z1 + z2) << 4) + z0;
endmodule
