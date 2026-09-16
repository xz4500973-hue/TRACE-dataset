`timescale 1ns/1ps
// 16-bit accumulator, variant 9: carry-select adder
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    wire [15:0] next;
    wire [4:0] c;
    assign c[0] = 1'b0;
    genvar j;
    generate
        for (j = 0; j < 4; j = j + 1) begin : CS
            wire [3:0] s0, s1;
            wire c0, c1;
            assign {c0, s0} = acc_r[j*4 +: 4] + din[j*4 +: 4] + 1'b0;
            assign {c1, s1} = acc_r[j*4 +: 4] + din[j*4 +: 4] + 1'b1;
            assign next[j*4 +: 4] = c[j] ? s1 : s0;
            assign c[j+1] = c[j] ? c1 : c0;
        end
    endgenerate
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else if (en) acc_r <= next;
    end
    assign acc = acc_r;
endmodule
