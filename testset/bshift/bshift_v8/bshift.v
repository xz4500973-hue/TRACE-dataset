`timescale 1ns/1ps
// 8-bit barrel shifter, variant 8: chain of shift-by-1 stages
module bshift (
    input  wire [7:0] data,
    input  wire [2:0] shamt,
    output wire [7:0] out
);
    wire [7:0] c [0:7];
    assign c[0] = data;
    genvar j;
    generate
        for (j = 0; j < 7; j = j + 1) begin : STAGE
            assign c[j+1] = (shamt > j) ? (c[j] << 1) : c[j];
        end
    endgenerate
    assign out = c[7];
endmodule
