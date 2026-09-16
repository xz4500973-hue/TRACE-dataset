`timescale 1ns/1ps

module adder_32bit(A, B, S, C32);
    input  [32:1] A;
    input  [32:1] B;
    output [32:1] S;
    output        C32;

    // Carry Select: 4 blocks of 8 bits
    wire [7:0] sum0_0, sum0_1, sum1_0, sum1_1, sum2_0, sum2_1, sum3_0, sum3_1;
    wire cout0_0, cout0_1, cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1;
    wire sel1, sel2, sel3;

    assign {cout0_0, sum0_0} = A[8:1]  + B[8:1];
    assign {cout0_1, sum0_1} = A[8:1]  + B[8:1]  + 1'b1;
    assign S[8:1]  = 1'b0 ? sum0_1 : sum0_0;
    assign sel1    = 1'b0 ? cout0_1 : cout0_0;

    assign {cout1_0, sum1_0} = A[16:9] + B[16:9];
    assign {cout1_1, sum1_1} = A[16:9] + B[16:9] + 1'b1;
    assign S[16:9] = sel1 ? sum1_1 : sum1_0;
    assign sel2    = sel1 ? cout1_1 : cout1_0;

    assign {cout2_0, sum2_0} = A[24:17] + B[24:17];
    assign {cout2_1, sum2_1} = A[24:17] + B[24:17] + 1'b1;
    assign S[24:17] = sel2 ? sum2_1 : sum2_0;
    assign sel3     = sel2 ? cout2_1 : cout2_0;

    assign {cout3_0, sum3_0} = A[32:25] + B[32:25];
    assign {cout3_1, sum3_1} = A[32:25] + B[32:25] + 1'b1;
    assign S[32:25] = sel3 ? sum3_1 : sum3_0;
    assign C32      = sel3 ? cout3_1 : cout3_0;

endmodule