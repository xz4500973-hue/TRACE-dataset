`timescale 1ns/1ps
// 8x8 multiplier, variant 9: shift-add, ripple accumulation chain
module mul8 (
    input  wire [7:0]  a,
    input  wire [7:0]  b,
    output wire [15:0] p
);
    wire [15:0] pp [0:7];
    wire [15:0] acc [0:8];
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : PP
            assign pp[i] = b[i] ? (a << i) : 16'd0;
        end
    endgenerate
    assign acc[0] = 16'd0;
    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : ACC
            assign acc[j+1] = acc[j] + pp[j];
        end
    endgenerate
    assign p = acc[8];
endmodule
