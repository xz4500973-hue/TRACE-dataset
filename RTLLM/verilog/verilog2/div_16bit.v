`timescale 1ns/1ps

module div_16bit(
    input  wire [15:0] A,
    input  wire [7:0]  B,
    output wire [15:0] result,
    output wire [15:0] odd
);

    assign result = (B == 8'd0) ? 16'd0 : A / B;
    assign odd    = (B == 8'd0) ? 16'd0 : A % B;

endmodule