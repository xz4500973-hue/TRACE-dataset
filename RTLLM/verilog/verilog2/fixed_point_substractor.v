`timescale 1ns/1ps

module fixed_point_substractor #(
    parameter Q = 15,
    parameter N = 32
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    output [N-1:0] c
);

    assign c = a - b;

endmodule