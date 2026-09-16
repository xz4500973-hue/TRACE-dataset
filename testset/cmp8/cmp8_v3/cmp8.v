`timescale 1ns/1ps
// 8-bit comparator, variant 3: subtraction-based
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    wire [8:0] diff = {1'b0, a} + {1'b0, ~b} + 9'd1;
    assign gt = diff[8] & (diff[7:0] != 8'd0);
    assign eq = (diff[7:0] == 8'd0);
    assign lt = ~diff[8];
endmodule
