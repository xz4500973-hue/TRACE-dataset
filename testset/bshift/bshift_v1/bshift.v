`timescale 1ns/1ps
// 8-bit barrel shifter (logical left), variant 1: behavioral
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    assign out = data << shamt;
endmodule
