`timescale 1ns/1ps

module sub_64bit(
    input  [63:0] A,
    input  [63:0] B,
    output [63:0] result,
    output        overflow
);

    // Two's complement subtraction: A + (~B + 1)
    wire [64:0] sum = {1'b0, A} + {1'b0, ~B} + 1'b1;

    assign result   = sum[63:0];
    assign overflow = (A[63] != B[63]) && (result[63] != A[63]);

endmodule