`timescale 1ns/1ps
// 16-bit accumulator, variant 2: ripple adder
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    wire [15:0] next;
    wire [16:0] c;
    assign c[0] = 1'b0;
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : FA
            assign next[i] = acc_r[i] ^ din[i] ^ c[i];
            assign c[i+1]   = (acc_r[i] & din[i]) | (c[i] & (acc_r[i] ^ din[i]));
        end
    endgenerate
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else if (en) acc_r <= next;
    end
    assign acc = acc_r;
endmodule
