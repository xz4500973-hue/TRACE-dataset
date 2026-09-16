`timescale 1ns/1ps

module multi_8bit (
    input  [7:0] A,
    input  [7:0] B,
    output [15:0] product
);

    // Booth radix-2: 8 stages
    reg [15:0] prod;
    reg [8:0] booth;
    integer j;

    always @(*) begin
        prod = 16'd0;
        booth = {B, 1'b0};  // B with appended 0
        for (j = 0; j < 8; j = j + 1) begin
            case (booth[1:0])
                2'b01: prod = prod + (A << j);
                2'b10: prod = prod - (A << j);
                default: ;
            endcase
            booth = booth >> 1;
        end
    end

    assign product = prod;

endmodule