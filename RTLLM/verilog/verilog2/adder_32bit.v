`timescale 1ns/1ps

module adder_32bit(A, B, S, C32);
    input  [32:1] A;
    input  [32:1] B;
    output [32:1] S;
    output        C32;

    // behavioral addition
    assign {C32, S} = A + B;

endmodule