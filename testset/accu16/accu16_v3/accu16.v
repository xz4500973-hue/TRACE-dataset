`timescale 1ns/1ps
// 16-bit accumulator, variant 3: carry-lookahead adder (4-bit groups)
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    wire [15:0] next;
    wire [3:0] g, p;
    wire [4:0] c;
    assign c[0] = 1'b0;
    genvar j;
    generate
        for (j = 0; j < 4; j = j + 1) begin : BLK
            wire [3:0] gg = acc_r[j*4 +: 4] & din[j*4 +: 4];
            wire [3:0] pp = acc_r[j*4 +: 4] ^ din[j*4 +: 4];
            assign g[j] = gg[3] | (pp[3] & gg[2]) | (pp[3] & pp[2] & gg[1]) | (pp[3] & pp[2] & pp[1] & gg[0]);
            assign p[j] = pp[3] & pp[2] & pp[1] & pp[0];
            wire [2:0] cc;
            assign cc[0] = c[j];
            assign cc[1] = gg[0] | (pp[0] & c[j]);
            assign cc[2] = gg[1] | (pp[1] & gg[0]) | (pp[1] & pp[0] & c[j]);
            assign next[j*4 + 0] = pp[0] ^ c[j];
            assign next[j*4 + 1] = pp[1] ^ cc[1];
            assign next[j*4 + 2] = pp[2] ^ cc[2];
            assign next[j*4 + 3] = pp[3] ^ (gg[2] | (pp[2] & gg[1]) | (pp[2] & pp[1] & gg[0]) | (pp[2] & pp[1] & pp[0] & c[j]));
        end
    endgenerate
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
    assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else if (en) acc_r <= next;
    end
    assign acc = acc_r;
endmodule
