`timescale 1ns/1ps

module adder_16bit (
    input  wire [15:0] a,
    input  wire [15:0] b,
    input  wire        Cin,
    output wire [15:0] y,
    output wire        Co
);

    // Conditional Sum (Carry-Select): 4 blocks of 4 bits each
    // Each block computes two results: cin=0 and cin=1, then MUX selects

    wire [3:0] sum0_0, sum0_1, sum1_0, sum1_1, sum2_0, sum2_1, sum3_0, sum3_1;
    wire cout0_0, cout0_1, cout1_0, cout1_1, cout2_0, cout2_1, cout3_0, cout3_1;
    wire sel1, sel2, sel3;

    // Block 0: bits 3:0 with cin = Cin
    assign {cout0_0, sum0_0} = a[3:0] + b[3:0] + 1'b0;
    assign {cout0_1, sum0_1} = a[3:0] + b[3:0] + 1'b1;
    assign y[3:0] = Cin ? sum0_1 : sum0_0;
    assign sel1   = Cin ? cout0_1 : cout0_0;

    // Block 1: bits 7:4
    assign {cout1_0, sum1_0} = a[7:4] + b[7:4] + 1'b0;
    assign {cout1_1, sum1_1} = a[7:4] + b[7:4] + 1'b1;
    assign y[7:4] = sel1 ? sum1_1 : sum1_0;
    assign sel2   = sel1 ? cout1_1 : cout1_0;

    // Block 2: bits 11:8
    assign {cout2_0, sum2_0} = a[11:8] + b[11:8] + 1'b0;
    assign {cout2_1, sum2_1} = a[11:8] + b[11:8] + 1'b1;
    assign y[11:8] = sel2 ? sum2_1 : sum2_0;
    assign sel3    = sel2 ? cout2_1 : cout2_0;

    // Block 3: bits 15:12
    assign {cout3_0, sum3_0} = a[15:12] + b[15:12] + 1'b0;
    assign {cout3_1, sum3_1} = a[15:12] + b[15:12] + 1'b1;
    assign y[15:12] = sel3 ? sum3_1 : sum3_0;
    assign Co       = sel3 ? cout3_1 : cout3_0;

endmodule