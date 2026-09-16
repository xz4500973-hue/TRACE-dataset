`timescale 1ns/1ps

module multi_pipe_4bit #(
    parameter size = 4
)(
    input                    clk, rst_n,
    input  [size-1:0]        mul_a, mul_b,
    output reg [size*2-1:0]  mul_out
);

    parameter N = 2 * size;
    reg [N-1:0] stg1 [0:1];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stg1[0] <= 0; stg1[1] <= 0; mul_out <= 0;
        end else begin
            // Stage 1: compute all partial products in 2 groups
            stg1[0] <= (mul_b[0] ? mul_a : 0) + ((mul_b[1] ? mul_a : 0) << 1);
            stg1[1] <= ((mul_b[2] ? mul_a : 0) << 2) + ((mul_b[3] ? mul_a : 0) << 3);
            // Stage 2: final sum
            mul_out <= stg1[0] + stg1[1];
        end
    end

endmodule