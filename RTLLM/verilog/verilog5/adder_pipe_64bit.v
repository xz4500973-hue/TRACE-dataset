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

    // 2-stage pipeline with 32-bit half blocks
    reg [32:0] s_lo, s_hi;
    reg        en1;
    wire [32:0] lo_raw, hi_raw;
    wire [32:0] lo_fin, hi_fin;

    assign lo_raw = {1'b0, adda[31:0]} + {1'b0, addb[31:0]};
    assign hi_raw = {1'b0, adda[63:32]} + {1'b0, addb[63:32]};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            s_lo <= 33'd0;
            s_hi <= 33'd0;
            en1  <= 1'b0;
            o_en <= 1'b0;
        end else begin
            en1  <= i_en;
            o_en <= en1;

            if (i_en) begin
                s_lo <= lo_raw;
                s_hi <= hi_raw + lo_raw[32];
            end
        end
    end

    assign result = {s_hi[32], s_hi[31:0], s_lo[31:0]};

endmodule