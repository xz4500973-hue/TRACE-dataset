`timescale 1ns/1ps
// 8x8 multiplier, variant 3: shift-add, pairwise tree
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
    wire [15:0] s01 = pp[0] + pp[1];
    wire [15:0] s23 = pp[2] + pp[3];
    wire [15:0] s45 = pp[4] + pp[5];
    wire [15:0] s67 = pp[6] + pp[7];
    wire [15:0] s0123 = s01 + s23;
    wire [15:0] s4567 = s45 + s67;
    assign p = s0123 + s4567;
endmodule
