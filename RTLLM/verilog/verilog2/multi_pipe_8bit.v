`timescale 1ns/1ps

module multi_pipe_8bit #(
    parameter size = 8
)(
    input                    clk, rst_n, mul_en_in,
    input  [size-1:0]        mul_a, mul_b,
    output reg               mul_en_out,
    output reg [size*2-1:0]  mul_out
);

    reg [size-1:0] a_r, b_r;
    reg [size*2-1:0] sum [0:3];
    reg [2:0] en_sr;
    reg [size*2-1:0] out_r;
    genvar i;

    // Unrolled partial products via generate
    wire [size*2-1:0] pp [0:size-1];
    generate
        for (i = 0; i < size; i = i + 1) begin : gen_pp
            assign pp[i] = b_r[i] ? (a_r << i) : 0;
        end
    endgenerate

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a_r <= 0; b_r <= 0;
            sum[0] <= 0; sum[1] <= 0; sum[2] <= 0; sum[3] <= 0;
            out_r <= 0; mul_out <= 0; mul_en_out <= 0;
            en_sr <= 0;
        end else begin
            a_r <= mul_en_in ? mul_a : 0;
            b_r <= mul_en_in ? mul_b : 0;

            sum[0] <= pp[0] + pp[1];
            sum[1] <= pp[2] + pp[3];
            sum[2] <= pp[4] + pp[5];
            sum[3] <= pp[6] + pp[7];

            out_r <= sum[0] + sum[1] + sum[2] + sum[3];

            en_sr <= {en_sr[1:0], mul_en_in};
            mul_en_out <= en_sr[2];
            mul_out <= en_sr[2] ? out_r : 0;
        end
    end

endmodule