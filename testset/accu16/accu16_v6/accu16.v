`timescale 1ns/1ps
// 16-bit accumulator, variant 6: clock-gated
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [15:0] acc_r;
    reg gclk_en;
    always @(clk or en) begin
        if (!clk) gclk_en <= en;
    end
    wire gclk = clk & gclk_en;
    always @(posedge gclk or negedge rst_n) begin
        if (!rst_n) acc_r <= 16'd0;
        else acc_r <= acc_r + din;
    end
    assign acc = acc_r;
endmodule
