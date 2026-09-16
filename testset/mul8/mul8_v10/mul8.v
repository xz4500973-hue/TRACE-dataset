`timescale 1ns/1ps
// 8x8 multiplier, variant 10: shift-add, even/odd grouping
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [15:0] pp [0:7];
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : PP
            assign pp[i] = b[i] ? (a << i) : 16'd0;
        end
    endgenerate
    wire [15:0] even_sum = pp[0] + pp[2] + pp[4] + pp[6];
    wire [15:0] odd_sum  = pp[1] + pp[3] + pp[5] + pp[7];
    assign p = even_sum + odd_sum;
endmodule
