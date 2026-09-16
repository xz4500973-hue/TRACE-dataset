`timescale 1ns/1ps

module adder_16bit (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        Cin,
    output wire [15:0] y,
    output wire        Co
);

    // pure behavioral addition
    assign {Co, y} = a + b + Cin;

endmodule