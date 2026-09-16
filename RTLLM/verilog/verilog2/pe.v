`timescale 1ns/1ps

module pe(
    input clk, rst,
    input [31:0] a, b,
    output [31:0] c
);

    reg [31:0] acc;
    wire [31:0] product;

    assign product = a * b;
    assign c = acc;

    always @(posedge clk or posedge rst) begin
        if (rst)
            acc <= 0;
        else
            acc <= acc + product;
    end

endmodule