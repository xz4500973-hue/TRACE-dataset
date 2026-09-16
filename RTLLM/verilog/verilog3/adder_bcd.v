`timescale 1ns/1ps

module adder_bcd (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

    // Gate-level BCD adder with explicit carry detect and correction
    wire [4:0] bin_sum;
    wire       gt9;          // >9 detect
    wire [3:0] six_or_zero;  // 6 or 0
    wire [4:0] corrected;

    assign bin_sum = A + B + Cin;

    // Detect >9: bin_sum[4] | (bin_sum[3] & bin_sum[2]) | (bin_sum[3] & bin_sum[1])
    assign gt9 = bin_sum[4] | (bin_sum[3] & bin_sum[2]) | (bin_sum[3] & bin_sum[1]);

    // If gt9, add 6, else add 0
    assign six_or_zero = gt9 ? 4'b0110 : 4'b0000;
    assign corrected   = bin_sum + six_or_zero;

    assign Sum  = corrected[3:0];
    assign Cout = gt9;

endmodule