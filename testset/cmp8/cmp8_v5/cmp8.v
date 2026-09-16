`timescale 1ns/1ps
// 8-bit comparator, variant 5: prefix-equality + term OR
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    wire [7:0] x = a ~^ b;
    wire [7:0] g = a & ~b;
    wire [7:0] l = ~a & b;
    assign eq = &x;

    wire [7:0] p;
    assign p[7] = 1'b1;
    genvar i;
    generate
        for (i = 6; i >= 0; i = i - 1) begin : PRE
            assign p[i] = p[i+1] & x[i+1];
        end
    endgenerate

    wire [7:0] gt_term, lt_term;
    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : T
            assign gt_term[j] = g[j] & p[j];
            assign lt_term[j] = l[j] & p[j];
        end
    endgenerate
    assign gt = gt_term[0]|gt_term[1]|gt_term[2]|gt_term[3]|gt_term[4]|gt_term[5]|gt_term[6]|gt_term[7];
    assign lt = lt_term[0]|lt_term[1]|lt_term[2]|lt_term[3]|lt_term[4]|lt_term[5]|lt_term[6]|lt_term[7];
endmodule
