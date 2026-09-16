`timescale 1ns/1ps

module adder_8bit(
    input  [7:0] a,
    input  [7:0] b,
    input        cin,
    output [7:0] sum,
    output       cout
);

    wire [3:0] sum_lo, sum_hi0, sum_hi1;
    wire cout_lo, cout_hi0, cout_hi1;

    // lower 4-bit adder (a[3:0] + b[3:0] + cin)
    adder_4bit lo_adder (
        .a   (a[3:0]),
        .b   (b[3:0]),
        .cin (cin),
        .sum (sum_lo),
        .cout(cout_lo)
    );

    // upper 4-bit adder with cin=0 (a[7:4] + b[7:4] + 0)
    adder_4bit hi_adder0 (
        .a   (a[7:4]),
        .b   (b[7:4]),
        .cin (1'b0),
        .sum (sum_hi0),
        .cout(cout_hi0)
    );

    // upper 4-bit adder with cin=1 (a[7:4] + b[7:4] + 1)
    adder_4bit hi_adder1 (
        .a   (a[7:4]),
        .b   (b[7:4]),
        .cin (1'b1),
        .sum (sum_hi1),
        .cout(cout_hi1)
    );

    // MUX: select upper sum based on carry from lower adder
    assign sum[3:0] = sum_lo;
    assign sum[7:4] = cout_lo ? sum_hi1 : sum_hi0;
    assign cout     = cout_lo ? cout_hi1 : cout_hi0;

endmodule


// 4-bit ripple carry adder sub-module
module adder_4bit(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire [2:0] c;

    assign {c[0], sum[0]} = a[0] + b[0] + cin;
    assign {c[1], sum[1]} = a[1] + b[1] + c[0];
    assign {c[2], sum[2]} = a[2] + b[2] + c[1];
    assign {cout , sum[3]} = a[3] + b[3] + c[2];

endmodule