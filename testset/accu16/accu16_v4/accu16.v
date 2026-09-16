`timescale 1ns/1ps
// 16-bit accumulator, variant 4: carry-save registers
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] s, c;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            s <= 16'd0;
            c <= 16'd0;
        end else if (en) begin
            s <= s ^ c ^ din;
            c <= ((s & c) | (s & din) | (c & din)) << 1;
        end
    end
    assign acc = s + c;
endmodule
