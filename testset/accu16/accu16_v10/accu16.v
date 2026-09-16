`timescale 1ns/1ps
// 16-bit accumulator, variant 10: next-state variable
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output reg  [15:0] acc
);
    reg [15:0] next;
    always @(*) begin
        next = acc + din;
    end
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            acc <= 16'd0;
        else if (en)
            acc <= next;
    end
endmodule
