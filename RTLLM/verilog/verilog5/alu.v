`timescale 1ns/1ps

module alu #(
    parameter DW = 32
)(
    input  [DW-1:0] a,
    input  [DW-1:0] b,
    input  [5:0]    aluc,
    output [DW-1:0] r,
    output          zero,
    output          carry,
    output          negative,
    output          overflow,
    output          flag
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

    wire signed [DW-1:0] a_s = a;
    wire signed [DW-1:0] b_s = b;

    wire [DW-1:0] arith_add  = a_s + b_s;
    wire [DW-1:0] arith_addu = a + b;
    wire [DW-1:0] arith_sub  = a_s - b_s;
    wire [DW-1:0] arith_subu = a - b;

    wire [DW-1:0] arith = (aluc == ADD)  ? arith_add  :
                           (aluc == ADDU) ? arith_addu :
                           (aluc == SUB)  ? arith_sub  : arith_subu;

    wire [DW-1:0] logic_and = a & b;
    wire [DW-1:0] logic_or  = a | b;
    wire [DW-1:0] logic_xor = a ^ b;
    wire [DW-1:0] logic_nor = ~(a | b);

    wire [DW-1:0] logic_out = (aluc == AND) ? logic_and :
                               (aluc == OR)  ? logic_or  :
                               (aluc == XOR) ? logic_xor : logic_nor;

    wire [DW-1:0] shift_sll   = b << a;
    wire [DW-1:0] shift_srl   = b >> a;
    wire [DW-1:0] shift_sra   = b_s >>> a_s;
    wire [DW-1:0] shift_sllv  = b << a[4:0];
    wire [DW-1:0] shift_srlv  = b >> a[4:0];
    wire [DW-1:0] shift_srav  = b_s >>> a_s[4:0];

    wire [1:0] shift_sel = aluc[3:2];
    wire       shift_v   = aluc[2];

    wire [DW-1:0] shift_raw = (aluc == SLL) ? shift_sll :
                               (aluc == SRL) ? shift_srl :
                               (aluc == SRA) ? shift_sra :
                               (aluc == SLLV)? shift_sllv :
                               (aluc == SRLV)? shift_srlv : shift_srav;

    wire [DW-1:0] cmp_slt  = (a_s < b_s) ? 32'd1 : 32'd0;
    wire [DW-1:0] cmp_sltu = (a < b)     ? 32'd1 : 32'd0;
    wire [DW-1:0] cmp_out  = (aluc == SLT) ? cmp_slt : cmp_sltu;

    wire [DW-1:0] lui_out = {a[15:0], 16'h0000};

    wire is_arith = (aluc == ADD) | (aluc == ADDU) | (aluc == SUB) | (aluc == SUBU);
    wire is_logic = (aluc == AND) | (aluc == OR) | (aluc == XOR) | (aluc == NOR);
    wire is_shift = (aluc == SLL) | (aluc == SRL) | (aluc == SRA) | (aluc == SLLV) | (aluc == SRLV) | (aluc == SRAV);
    wire is_cmp   = (aluc == SLT) | (aluc == SLTU);
    wire is_lui   = (aluc == LUI);

    wire [DW-1:0] result = ({DW{is_arith}} & arith)    |
                            ({DW{is_logic}} & logic_out) |
                            ({DW{is_shift}} & shift_raw) |
                            ({DW{is_cmp}}   & cmp_out)   |
                            ({DW{is_lui}}   & lui_out);

    assign r        = result;
    assign zero     = (result == 0);
    assign negative = result[DW-1];
    assign carry    = 1'b0;
    assign overflow = 1'b0;
    assign flag     = is_cmp ? cmp_out[0] : 1'b0;

endmodule