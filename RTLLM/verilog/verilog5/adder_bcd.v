`timescale 1ns/1ps

module adder_bcd (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

    // Two-parallel path: compute sum and sum+6, then select
    wire [4:0] raw_sum;
    wire [4:0] corrected;
    wire       need_correct;

    assign raw_sum      = A + B + Cin;
    assign corrected    = raw_sum + 5'd6;
    assign need_correct = raw_sum[4] | (raw_sum[3] & (raw_sum[2] | raw_sum[1]));

    assign {Cout, Sum} = need_correct ? corrected : raw_sum;

endmodule