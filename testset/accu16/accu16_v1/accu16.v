`timescale 1ns/1ps
// 16-bit accumulator, variant 1: behavioral
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output reg  [15:0] acc
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            acc <= 16'd0;
        else if (en)
            acc <= acc + din;
    end
endmodule
