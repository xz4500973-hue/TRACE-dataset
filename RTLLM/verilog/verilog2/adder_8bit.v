`timescale 1ns/1ps

module adder_8bit(
    input  [7:0] a,
    input  [7:0] b,
    input        cin,
    output [7:0] sum,
    output       cout
);

    // pure behavioral addition: let synthesizer choose optimal structure
    assign {cout, sum} = a + b + cin;

endmodule