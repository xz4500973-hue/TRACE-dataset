`timescale 1ns/1ps

module adder_16bit (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        Cin,
    output wire [15:0] y,
    output wire        Co
);

    // 3-level CLA: 4 blocks of 4 bits each
    // Block-level generate/propagate
    wire [15:0] g, p;        // per-bit G and P
    wire [3:0]  block_g, block_p;  // per-block G and P
    wire [3:0]  block_cin;          // carry into each 4-bit block
    wire [15:0] c_int;              // internal carries

    // bitwise G and P
    assign g[0] = a[0] & b[0];  assign p[0] = a[0] ^ b[0];
    assign g[1] = a[1] & b[1];  assign p[1] = a[1] ^ b[1];
    assign g[2] = a[2] & b[2];  assign p[2] = a[2] ^ b[2];
    assign g[3] = a[3] & b[3];  assign p[3] = a[3] ^ b[3];
    assign g[4] = a[4] & b[4];  assign p[4] = a[4] ^ b[4];
    assign g[5] = a[5] & b[5];  assign p[5] = a[5] ^ b[5];
    assign g[6] = a[6] & b[6];  assign p[6] = a[6] ^ b[6];
    assign g[7] = a[7] & b[7];  assign p[7] = a[7] ^ b[7];
    assign g[8] = a[8] & b[8];  assign p[8] = a[8] ^ b[8];
    assign g[9] = a[9] & b[9];  assign p[9] = a[9] ^ b[9];
    assign g[10] = a[10] & b[10]; assign p[10] = a[10] ^ b[10];
    assign g[11] = a[11] & b[11]; assign p[11] = a[11] ^ b[11];
    assign g[12] = a[12] & b[12]; assign p[12] = a[12] ^ b[12];
    assign g[13] = a[13] & b[13]; assign p[13] = a[13] ^ b[13];
    assign g[14] = a[14] & b[14]; assign p[14] = a[14] ^ b[14];
    assign g[15] = a[15] & b[15]; assign p[15] = a[15] ^ b[15];

    // block-level G and P (4-bit groups)
    assign block_g[0] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    assign block_p[0] = p[3] & p[2] & p[1] & p[0];

    assign block_g[1] = g[7] | (p[7] & g[6]) | (p[7] & p[6] & g[5]) | (p[7] & p[6] & p[5] & g[4]);
    assign block_p[1] = p[7] & p[6] & p[5] & p[4];

    assign block_g[2] = g[11] | (p[11] & g[10]) | (p[11] & p[10] & g[9]) | (p[11] & p[10] & p[9] & g[8]);
    assign block_p[2] = p[11] & p[10] & p[9] & p[8];

    assign block_g[3] = g[15] | (p[15] & g[14]) | (p[15] & p[14] & g[13]) | (p[15] & p[14] & p[13] & g[12]);
    assign block_p[3] = p[15] & p[14] & p[13] & p[12];

    // second-level CLA: block carries
    assign block_cin[0] = Cin;
    assign block_cin[1] = block_g[0] | (block_p[0] & Cin);
    assign block_cin[2] = block_g[1] | (block_p[1] & block_g[0]) | (block_p[1] & block_p[0] & Cin);
    assign block_cin[3] = block_g[2] | (block_p[2] & block_g[1]) | (block_p[2] & block_p[1] & block_g[0]) | (block_p[2] & block_p[1] & block_p[0] & Cin);

    assign Co = block_g[3] | (block_p[3] & block_g[2]) | (block_p[3] & block_p[2] & block_g[1]) | (block_p[3] & block_p[2] & block_p[1] & block_g[0]) | (block_p[3] & block_p[2] & block_p[1] & block_p[0] & Cin);

    // per-bit carries within each 4-bit block
    assign c_int[0] = Cin;
    assign c_int[1] = g[0] | (p[0] & block_cin[0]);
    assign c_int[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & block_cin[0]);
    assign c_int[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & block_cin[0]);

    assign c_int[4] = block_cin[1];
    assign c_int[5] = g[4] | (p[4] & block_cin[1]);
    assign c_int[6] = g[5] | (p[5] & g[4]) | (p[5] & p[4] & block_cin[1]);
    assign c_int[7] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & block_cin[1]);

    assign c_int[8]  = block_cin[2];
    assign c_int[9]  = g[8]  | (p[8]  & block_cin[2]);
    assign c_int[10] = g[9]  | (p[9]  & g[8])  | (p[9]  & p[8]  & block_cin[2]);
    assign c_int[11] = g[10] | (p[10] & g[9])  | (p[10] & p[9]  & g[8])  | (p[10] & p[9]  & p[8]  & block_cin[2]);

    assign c_int[12] = block_cin[3];
    assign c_int[13] = g[12] | (p[12] & block_cin[3]);
    assign c_int[14] = g[13] | (p[13] & g[12]) | (p[13] & p[12] & block_cin[3]);
    assign c_int[15] = g[14] | (p[14] & g[13]) | (p[14] & p[13] & g[12]) | (p[14] & p[13] & p[12] & block_cin[3]);

    // sum bits
    assign y[0]  = p[0]  ^ c_int[0];
    assign y[1]  = p[1]  ^ c_int[1];
    assign y[2]  = p[2]  ^ c_int[2];
    assign y[3]  = p[3]  ^ c_int[3];
    assign y[4]  = p[4]  ^ c_int[4];
    assign y[5]  = p[5]  ^ c_int[5];
    assign y[6]  = p[6]  ^ c_int[6];
    assign y[7]  = p[7]  ^ c_int[7];
    assign y[8]  = p[8]  ^ c_int[8];
    assign y[9]  = p[9]  ^ c_int[9];
    assign y[10] = p[10] ^ c_int[10];
    assign y[11] = p[11] ^ c_int[11];
    assign y[12] = p[12] ^ c_int[12];
    assign y[13] = p[13] ^ c_int[13];
    assign y[14] = p[14] ^ c_int[14];
    assign y[15] = p[15] ^ c_int[15];

endmodule