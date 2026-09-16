`timescale 1ns/1ps

module pe #(
    parameter DW = 32
)(
    input clk, rst,
    input [DW-1:0] a, b,
    output [DW-1:0] c
);

    reg [DW-1:0] acc;

    assign c = acc;

    always @(posedge clk or posedge rst) begin
        if (rst)
            acc <= 0;
        else
            acc <= acc + a * b;
    end

endmodule