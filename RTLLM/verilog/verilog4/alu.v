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
    reg  [31:0] result;
    reg         flag_reg, zero_reg, neg_reg, overflow_reg;

    // ALU decomposed: arithmetic vs logic vs shift modules
    wire [31:0] arith_out;
    wire [31:0] logic_out;
    wire [31:0] shift_out;
    wire [31:0] cmp_out;

    assign arith_out = (aluc == ADD)  ? (a_s + b_s) :
                       (aluc == ADDU) ? (a + b) :
                       (aluc == SUB)  ? (a_s - b_s) :
                       (aluc == SUBU) ? (a - b) : 32'd0;

    assign logic_out = (aluc == AND) ? (a & b) :
                       (aluc == OR)  ? (a | b) :
                       (aluc == XOR) ? (a ^ b) :
                       (aluc == NOR) ? (~(a | b)) : 32'd0;

    assign shift_out = (aluc == SLL)  ? (b << a) :
                       (aluc == SRL)  ? (b >> a) :
                       (aluc == SRA)  ? (b_s >>> a_s) :
                       (aluc == SLLV) ? (b << a[4:0]) :
                       (aluc == SRLV) ? (b >> a[4:0]) :
                       (aluc == SRAV) ? (b_s >>> a_s[4:0]) : 32'd0;

    assign cmp_out = (aluc == SLT)  ? ((a_s < b_s) ? 32'd1 : 32'd0) :
                     (aluc == SLTU) ? ((a < b)     ? 32'd1 : 32'd0) : 32'd0;

    wire [31:0] lui_out = {a[15:0], 16'h0000};

    // Top-level MUX: select between functional blocks
    always @(*) begin
        case (aluc)
            ADD, ADDU, SUB, SUBU: result = arith_out;
            AND, OR, XOR, NOR:    result = logic_out;
            SLT, SLTU:            result = cmp_out;
            SLL, SRL, SRA, SLLV, SRLV, SRAV: result = shift_out;
            LUI:                  result = lui_out;
            default:              result = cmp_out;
        endcase
    end

    assign r        = result;
    assign zero     = (result == 32'd0);
    assign negative = result[31];
    assign carry    = 1'b0;
    assign overflow = 1'b0;
    assign flag     = (aluc == SLT)  ? (a_s < b_s) :
                      (aluc == SLTU) ? (a < b) : 1'b0;

endmodule