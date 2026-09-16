`timescale 1ns/1ps
// 16-bit accumulator, variant 8: carry-lookahead adder (2-bit groups)
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    wire [15:0] next;
    wire [8:0] gcarry;
    assign gcarry[0] = 1'b0;
    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : GRP
            wire gg = acc_r[j*2] & din[j*2];
            wire pp = acc_r[j*2] ^ din[j*2];
            wire g1 = acc_r[j*2+1] & din[j*2+1];
            wire p1 = acc_r[j*2+1] ^ din[j*2+1];
            assign gcarry[j+1] = g1 | (p1 & gg) | (p1 & pp & gcarry[j]);
            assign next[j*2]   = pp ^ gcarry[j];
            assign next[j*2+1] = p1 ^ (gg | (pp & gcarry[j]));
        end
    endgenerate
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else if (en) acc_r <= next;
    end
    assign acc = acc_r;
endmodule
