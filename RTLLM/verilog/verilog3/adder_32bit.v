`timescale 1ns/1ps

module adder_32bit(A, B, S, C32);
    input  [32:1] A;
    input  [32:1] B;
    output [32:1] S;
    output        C32;

    wire [32:0] c;
    genvar i;

    assign c[0] = 1'b0;

    generate
        for (i = 1; i <= 32; i = i + 1) begin : gen_fa
            assign S[i]   = A[i] ^ B[i] ^ c[i-1];
            assign c[i]   = (A[i] & B[i]) | (A[i] & c[i-1]) | (B[i] & c[i-1]);
        end
    endgenerate

    assign C32 = c[32];

endmodule