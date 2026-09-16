`timescale 1ns/1ps
// 8x8 multiplier, variant 1: behavioral
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    assign p = a * b;
endmodule
