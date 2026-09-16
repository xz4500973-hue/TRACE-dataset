`timescale 1ns/1ps

module alu(
    input  [31:0] a,
    input  [31:0] b,
    input  [5:0]  aluc,
    output [31:0] r,
    output        zero,
    output        carry,
    output        negative,
    output        overflow,
    output        flag
);

    localparam ADD  = 6'b100000;
    localparam ADDU = 6'b100001;
    localparam SUB  = 6'b100010;
    localparam SUBU = 6'b100011;
    localparam AND  = 6'b100100;
    localparam OR   = 6'b100101;
    localparam XOR  = 6'b100110;
    localparam NOR  = 6'b100111;
    localparam SLT  = 6'b101010;
    localparam SLTU = 6'b101011;
    localparam SLL  = 6'b000000;
    localparam SRL  = 6'b000010;
    localparam SRA  = 6'b000011;
    localparam SLLV = 6'b000100;
    localparam SRLV = 6'b000110;
    localparam SRAV = 6'b000111;
    localparam LUI  = 6'b001111;

    wire signed [31:0] a_s = a;
    wire signed [31:0] b_s = b;

    // Compute all operations in parallel, then MUX
    wire [31:0] r_add   = a_s + b_s;
    wire [31:0] r_addu  = a + b;
    wire [31:0] r_sub   = a_s - b_s;
    wire [31:0] r_subu  = a - b;
    wire [31:0] r_and   = a & b;
    wire [31:0] r_or    = a | b;
    wire [31:0] r_xor   = a ^ b;
    wire [31:0] r_nor   = ~(a | b);
    wire [31:0] r_slt   = (a_s < b_s) ? 32'd1 : 32'd0;
    wire [31:0] r_sltu  = (a < b)     ? 32'd1 : 32'd0;
    wire [31:0] r_sll   = b << a;
    wire [31:0] r_srl   = b >> a;
    wire [31:0] r_sra   = b_s >>> a_s;
    wire [31:0] r_sllv  = b << a[4:0];
    wire [31:0] r_srlv  = b >> a[4:0];
    wire [31:0] r_srav  = b_s >>> a_s[4:0];
    wire [31:0] r_lui   = {a[15:0], 16'h0000};

    // MUX based on aluc: use conditional operator
    wire [31:0] result =
        (aluc == ADD)  ? r_add  :
        (aluc == ADDU) ? r_addu :
        (aluc == SUB)  ? r_sub  :
        (aluc == SUBU) ? r_subu :
        (aluc == AND)  ? r_and  :
        (aluc == OR)   ? r_or   :
        (aluc == XOR)  ? r_xor  :
        (aluc == NOR)  ? r_nor  :
        (aluc == SLT)  ? r_slt  :
        (aluc == SLTU) ? r_sltu :
        (aluc == SLL)  ? r_sll  :
        (aluc == SRL)  ? r_srl  :
        (aluc == SRA)  ? r_sra  :
        (aluc == SLLV) ? r_sllv :
        (aluc == SRLV) ? r_srlv :
        (aluc == SRAV) ? r_srav :
        (aluc == LUI)  ? r_lui  : r_slt;

    assign r        = result;
    assign zero     = (result == 32'd0);
    assign negative = result[31];
    assign carry    = 1'b0;
    assign overflow = 1'b0;
    assign flag     = ((aluc == SLT) ? (a_s < b_s) : (aluc == SLTU) ? (a < b) : 1'b0);

endmodule