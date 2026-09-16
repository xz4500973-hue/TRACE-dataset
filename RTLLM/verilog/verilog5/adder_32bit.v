`timescale 1ns/1ps

module adder_32bit(A, B, S, C32);
    input  [32:1] A;
    input  [32:1] B;
    output [32:1] S;
    output        C32;

    wire c8, c16, c24;

    adder_8bit_core u0 (.a(A[8:1]),   .b(B[8:1]),   .cin(1'b0), .sum(S[8:1]),   .cout(c8));
    adder_8bit_core u1 (.a(A[16:9]),  .b(B[16:9]),  .cin(c8),    .sum(S[16:9]),  .cout(c16));
    adder_8bit_core u2 (.a(A[24:17]), .b(B[24:17]), .cin(c16),   .sum(S[24:17]), .cout(c24));
    adder_8bit_core u3 (.a(A[32:25]), .b(B[32:25]), .cin(c24),   .sum(S[32:25]), .cout(C32));

endmodule


module adder_8bit_core(a, b, cin, sum, cout);
    input  [7:0] a, b;
    input        cin;
    output [7:0] sum;
    output       cout;

    assign {cout, sum} = a + b + cin;

endmodule