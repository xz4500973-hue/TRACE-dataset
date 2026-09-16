`timescale 1ns/1ps
// 8-bit barrel shifter, variant 9: logarithmic (1,2,4 stage order)
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] s1 = shamt[0] ? (data << 1) : data;
    wire [7:0] s2 = shamt[1] ? (s1 << 2) : s1;
    wire [7:0] s4 = shamt[2] ? (s2 << 4) : s2;
    assign out = s4;
endmodule
