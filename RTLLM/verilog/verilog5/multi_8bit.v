`timescale 1ns/1ps

module multi_8bit #(
    parameter WA = 8,
    parameter WB = 8
)(
    input  [WA-1:0] A,
    input  [WB-1:0] B,
    output [WA+WB-1:0] product
);

    // Array multiplier: AND plane + adder tree
    wire [WA-1:0] pp [0:WB-1];
    genvar i, j;

    generate
        for (i = 0; i < WB; i = i + 1) begin : row
            for (j = 0; j < WA; j = j + 1) begin : col
                assign pp[i][j] = A[j] & B[i];
            end
        end
    endgenerate

    // Sum all partial products via adder tree
    wire [WA+WB-1:0] sum_stage [0:WB-1];
    assign sum_stage[0] = pp[0];

    generate
        for (i = 1; i < WB; i = i + 1) begin : add_tree
            assign sum_stage[i] = sum_stage[i-1] + (pp[i] << i);
        end
    endgenerate

    assign product = sum_stage[WB-1];

endmodule