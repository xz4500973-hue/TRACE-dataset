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
    localparam JR   = 6'b001000;
    localparam LUI  = 6'b001111;

    wire signed [31:0] a_s = a;
    wire signed [31:0] b_s = b;
    reg  [31:0] result;

    always @(*) begin
        case (aluc)
            ADD:  result = a_s + b_s;
            ADDU: result = a + b;
            SUB:  result = a_s - b_s;
            SUBU: result = a - b;
            AND:  result = a & b;
            OR:   result = a | b;
            XOR:  result = a ^ b;
            NOR:  result = ~(a | b);
            SLT:  result = (a_s < b_s) ? 32'd1 : 32'd0;
            SLTU: result = (a < b)   ? 32'd1 : 32'd0;
            SLL:  result = b << a;
            SRL:  result = b >> a;
            SRA:  result = b_s >>> a_s;
            SLLV: result = b << a[4:0];
            SRLV: result = b >> a[4:0];
            SRAV: result = b_s >>> a_s[4:0];
            LUI:  result = {a[15:0], 16'h0000};
            default: result = (a_s < b_s) ? 32'd1 : 32'd0; // JR: same as SLT
        endcase
    end

    assign r        = result;
    assign zero     = (result == 32'd0);
    assign negative = result[31];
    assign carry    = 1'b0;
    assign overflow = 1'b0;
    assign flag     = ((aluc == SLT) ? (a_s < b_s) : (aluc == SLTU) ? (a < b) : 1'b0);

endmodule