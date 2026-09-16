`timescale 1ns/1ps

module adder_8bit(
    input  [7:0] a,
    input  [7:0] b,
    input        cin,
    output [7:0] sum,
    output       cout
);

    // Carry Look-Ahead (CLA): 2-level, 4-bit blocks
    wire [7:0] g, p;       // generate and propagate per bit
    wire [7:1] c;           // internal carry
    wire block_cout;        // carry out of block0
    wire c4, c8;            // block-level carries

    // bitwise generate & propagate
    assign g[0] = a[0] & b[0];
    assign p[0] = a[0] ^ b[0];
    assign g[1] = a[1] & b[1];
    assign p[1] = a[1] ^ b[1];
    assign g[2] = a[2] & b[2];
    assign p[2] = a[2] ^ b[2];
    assign g[3] = a[3] & b[3];
    assign p[3] = a[3] ^ b[3];
    assign g[4] = a[4] & b[4];
    assign p[4] = a[4] ^ b[4];
    assign g[5] = a[5] & b[5];
    assign p[5] = a[5] ^ b[5];
    assign g[6] = a[6] & b[6];
    assign p[6] = a[6] ^ b[6];
    assign g[7] = a[7] & b[7];
    assign p[7] = a[7] ^ b[7];

    // CLA block 0: bits 0..3
    assign c[1] = g[0] | (p[0] & cin);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
    assign c4   = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

    // CLA block 1: bits 4..7, cin = c4
    assign c[5] = g[4] | (p[4] & c4);
    assign c[6] = g[5] | (p[5] & g[4]) | (p[5] & p[4] & c4);
    assign c[7] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & c4);
    assign c8   = g[7] | (p[7] & g[6]) | (p[7] & p[6] & g[5]) | (p[7] & p[6] & p[5] & g[4]) | (p[7] & p[6] & p[5] & p[4] & c4);

    // sum bits
    assign sum[0] = p[0] ^ cin;
    assign sum[1] = p[1] ^ c[1];
    assign sum[2] = p[2] ^ c[2];
    assign sum[3] = p[3] ^ c[3];
    assign sum[4] = p[4] ^ c4;
    assign sum[5] = p[5] ^ c[5];
    assign sum[6] = p[6] ^ c[6];
    assign sum[7] = p[7] ^ c[7];

    assign cout = c8;

endmodule