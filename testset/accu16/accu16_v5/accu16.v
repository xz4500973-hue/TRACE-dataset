`timescale 1ns/1ps
// 16-bit accumulator, variant 5: cascaded 8-bit accumulators
module accu16 (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    input  wire [15:0] din,
    output wire [15:0] acc
);
    reg [7:0] lo, hi;
    wire [8:0] lo_sum = lo + din[7:0];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            lo <= 8'd0;
            hi <= 8'd0;
        end else if (en) begin
            lo <= lo_sum[7:0];
            hi <= hi + din[15:8] + lo_sum[8];
        end
    end
    assign acc = {hi, lo};
endmodule
