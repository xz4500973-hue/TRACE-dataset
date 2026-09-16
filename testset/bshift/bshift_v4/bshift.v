`timescale 1ns/1ps
// 8-bit barrel shifter, variant 4: rotate then mask
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] rot  = (data << shamt) | (data >> (8 - shamt));
    wire [7:0] mask = 8'hFF << shamt;
    assign out = rot & mask;
endmodule
