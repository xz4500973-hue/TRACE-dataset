`timescale 1ns/1ps

module float_multi(clk, rst, a, b, z);
    input clk, rst;
    input [31:0] a, b;
    output [31:0] z;

    // IEEE-754 single-precision: sign-exp explicitly separated multiply
    wire a_sign = a[31], b_sign = b[31];
    wire [7:0] a_exp = a[30:23], b_exp = b[30:23];
    wire [23:0] a_man = {1'b1, a[22:0]}; // implicit 1
    wire [23:0] b_man = {1'b1, b[22:0]};
    wire [47:0] product = a_man * b_man;
    wire [7:0] res_exp_raw = a_exp + b_exp - 127;
    wire res_sign = a_sign ^ b_sign;

    reg [31:0] z_reg;
    reg [7:0] exp_reg;
    reg [47:0] prod_reg;
    reg s_reg;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            z_reg<=0; exp_reg<=0; prod_reg<=0; s_reg<=0;
        end else begin
            prod_reg <= product;
            exp_reg <= res_exp_raw;
            s_reg <= res_sign;
            if(product[47])
                z_reg <= {s_reg, exp_reg+1, prod_reg[46:24]}; // normalize +1
            else
                z_reg <= {s_reg, exp_reg, prod_reg[45:23]};
        end
    end

    assign z = z_reg;

endmodule