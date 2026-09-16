`timescale 1ns/1ps

module adder_8bit(
    input  [7:0] a,
    input  [7:0] b,
    input        cin,
    output [7:0] sum,
    output       cout
);

    wire [7:0] carry;
    genvar i;

    // bit 0: cin drives first full adder
    wire a0_sum, a0_cout;
    assign a0_sum  = a[0] ^ b[0] ^ cin;
    assign a0_cout = (a[0] & b[0]) | (a[0] & cin) | (b[0] & cin);
    assign sum[0]  = a0_sum;
    assign carry[0] = a0_cout;

    // generate loop for bits 1..7: each full adder inlined
    generate
        for (i = 1; i < 8; i = i + 1) begin : gen_add
            wire s, co;
            assign s   = a[i] ^ b[i] ^ carry[i-1];
            assign co  = (a[i] & b[i]) | (a[i] & carry[i-1]) | (b[i] & carry[i-1]);
            assign sum[i]   = s;
            assign carry[i] = co;
        end
    endgenerate

    assign cout = carry[7];

endmodule