`timescale 1ns/1ps
// 8-bit barrel shifter, variant 2: logarithmic (4,2,1 stages)
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] s4 = shamt[2] ? (data << 4) : data;
    wire [7:0] s2 = shamt[1] ? (s4 << 2) : s4;
    wire [7:0] s1 = shamt[0] ? (s2 << 1) : s2;
    assign out = s1;
endmodule
