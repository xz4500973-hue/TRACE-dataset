`timescale 1ns/1ps
// 8x8 multiplier, variant 2: shift-add, flat sum
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
    assign p = pp[0] + pp[1] + pp[2] + pp[3] + pp[4] + pp[5] + pp[6] + pp[7];
endmodule
