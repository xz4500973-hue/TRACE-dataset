`timescale 1ns/1ps
// 8-bit comparator, variant 7: nibble-wise if-else
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output reg  eq,
    output reg  gt,
    output reg  lt
);
    always @(*) begin
        if (a[7:4] > b[7:4]) begin gt = 1'b1; lt = 1'b0; eq = 1'b0; end
        else if (a[7:4] < b[7:4]) begin gt = 1'b0; lt = 1'b1; eq = 1'b0; end
        else begin
            if (a[3:0] > b[3:0]) begin gt = 1'b1; lt = 1'b0; eq = 1'b0; end
            else if (a[3:0] < b[3:0]) begin gt = 1'b0; lt = 1'b1; eq = 1'b0; end
            else begin gt = 1'b0; lt = 1'b0; eq = 1'b1; end
        end
    end
endmodule
