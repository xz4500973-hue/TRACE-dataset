`timescale 1ns/1ps

module adder_pipe_64bit
#(
    parameter DATA_WIDTH = 64,
    parameter STG_WIDTH = 16
)
(
    input                clk,
    input                rst_n,
    input                i_en,
    input  [63:0]        adda,
    input  [63:0]        addb,
    output [64:0]        result,
    output reg           o_en
);

    // 3-stage pipeline: just pipeline the behavioral addition
    reg [64:0] stg1, stg2;
    reg        en1, en2;

    wire [64:0] sum_raw = adda + addb;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stg1 <= 65'd0; stg2 <= 65'd0;
            en1  <= 1'b0;  en2  <= 1'b0;
            o_en <= 1'b0;
        end else begin
            stg1 <= (i_en) ? sum_raw : stg1;
            en1  <= i_en;
            stg2 <= stg1;
            en2  <= en1;
            o_en <= en2;
        end
    end

    assign result = stg2;

endmodule