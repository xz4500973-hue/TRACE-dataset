`timescale 1ns/1ps
// 8-bit barrel shifter, variant 5: two-level split
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] lo = data << shamt[1:0];
    wire [7:0] hi = shamt[2] ? (lo << 4) : lo;
    assign out = hi;
endmodule
