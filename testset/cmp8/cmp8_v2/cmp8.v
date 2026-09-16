`timescale 1ns/1ps
// 8-bit comparator, variant 2: ripple (MSB-first)
module cmp8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire eq,
    output wire gt,
    output wire lt
);
    wire [7:0] eq_i, gt_i, lt_i;
    genvar i;
    generate
        for (i = 7; i >= 0; i = i - 1) begin : CMP
            if (i == 7) begin
                assign eq_i[7] = a[7] ~^ b[7];
                assign gt_i[7] = a[7] & ~b[7];
                assign lt_i[7] = ~a[7] & b[7];
            end else begin
                assign eq_i[i] = eq_i[i+1] & (a[i] ~^ b[i]);
                assign gt_i[i] = gt_i[i+1] | (eq_i[i+1] & a[i] & ~b[i]);
                assign lt_i[i] = lt_i[i+1] | (eq_i[i+1] & ~a[i] & b[i]);
            end
        end
    endgenerate
    assign eq = eq_i[0];
    assign gt = gt_i[0];
    assign lt = lt_i[0];
endmodule
