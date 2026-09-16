`timescale 1ns/1ps

module fixed_point_adder #(
    parameter Q = 15,
    parameter N = 32
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    output [N-1:0] c
);

    // Pure behavioral: two's complement addition directly works for fixed-point
    assign c = a + b;

endmodule