`timescale 1ns/1ps

module adder_bcd (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

    wire [4:0] bin_sum;
    assign bin_sum = A + B + Cin;
    assign {Cout, Sum} = (bin_sum > 5'd9) ? (bin_sum + 5'd6) : bin_sum;

endmodule