`timescale 1ns/1ps

module multi_8bit (
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] product
);

    // Shift-and-add using generate-for unrolled
    wire [15:0] partial [0:8];
    genvar i;

    assign partial[0] = 16'd0;

    generate
        for (i = 0; i < 8; i = i + 1) begin : stage
            assign partial[i+1] = partial[i] + (B[i] ? (A << i) : 16'd0);
        end
    endgenerate

    assign product = partial[8];

endmodule