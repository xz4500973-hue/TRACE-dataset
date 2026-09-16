`timescale 1ns/1ps

module fixed_point_adder #(
    parameter Q = 15,
    parameter N = 32
)(
    input  [N-1:0] a,
    input  [N-1:0] b,
    output [N-1:0] c
);

    // Signed fixed-point using two's complement with overflow flag
    wire signed [N-1:0] a_s = a;
    wire signed [N-1:0] b_s = b;
    wire signed [N-1:0] sum_s;

    assign sum_s = a_s + b_s;

    // Saturate on overflow: same sign operands, different sign result
    wire overflow = (a_s[N-1] == b_s[N-1]) && (sum_s[N-1] != a_s[N-1]);
    wire [N-1:0] sat_max = {a_s[N-1], {(N-1){~a_s[N-1]}}}; // positive max or negative max

    assign c = overflow ? sat_max : sum_s;

endmodule