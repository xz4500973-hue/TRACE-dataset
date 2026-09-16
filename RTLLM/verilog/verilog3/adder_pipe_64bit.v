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

    // 4-stage pipeline with generate-for per stage
    reg [15:0] a_s1, b_s1, a_s2, b_s2, a_s3, b_s3;
    reg [16:0] sum0, sum1, sum2, sum3;
    reg        c0, c1, c2;
    reg        en0, en1, en2;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : stg_route
            wire [15:0] ai, bi;
            if (i == 0) begin : s0
                assign ai = adda[15:0];
                assign bi = addb[15:0];
            end else if (i == 1) begin : s1
                assign ai = adda[31:16];
                assign bi = addb[31:16];
            end else if (i == 2) begin : s2
                assign ai = adda[47:32];
                assign bi = addb[47:32];
            end else begin : s3
                assign ai = adda[63:48];
                assign bi = addb[63:48];
            end
        end
    endgenerate

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum0 <= 17'd0; sum1 <= 17'd0; sum2 <= 17'd0; sum3 <= 17'd0;
            c0   <= 1'b0;  c1   <= 1'b0;  c2   <= 1'b0;
            en0  <= 1'b0;  en1  <= 1'b0;  en2  <= 1'b0;
            o_en <= 1'b0;
        end else begin
            en0  <= i_en;
            en1  <= en0;
            en2  <= en1;
            o_en <= en2;

            if (i_en) begin
                {c0, sum0[15:0]} <= {1'b0, adda[15:0]} + {1'b0, addb[15:0]};
            end
            if (en0) begin
                {c1, sum1[15:0]} <= {1'b0, adda[31:16]} + {1'b0, addb[31:16]} + c0;
            end
            if (en1) begin
                {c2, sum2[15:0]} <= {1'b0, adda[47:32]} + {1'b0, addb[47:32]} + c1;
            end
            if (en2) begin
                sum3 <= {1'b0, adda[63:48]} + {1'b0, addb[63:48]} + c2;
            end
        end
    end

    assign result = {sum3, sum2[15:0], sum1[15:0], sum0[15:0]};

endmodule