`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:23 08/25/2011 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module top(
    input              clk,
    input              rst_n,         // 异步复位，低有效
    input      [1:0]   sel_op,        // 00:加  01:乘  10:除
    input      [31:0]  a,
    input      [31:0]  b,
    input              start_div,     // 除法启动脉冲
    output reg [31:0]  c,
    output             div_done       // 除法完成标志
);

    wire [31:0] add_res;
    wire [31:0] mul_res;
    wire [31:0] div_res;

    // 加法
    qadd #(15,32) u_add ( .a(a), .b(b), .c(add_res) );

    // 乘法
    qmult #(15,32) u_mul ( .a(a), .b(b), .c(mul_res) );

    // 除法
    qdiv #(15,32) u_div (
        .dividend      (a),
        .divisor       (b),
        .start         (start_div),
        .clk           (clk),
        .quotient_out  (div_res),
        .complete      (div_done)
    );

    always @(*) begin
        case (sel_op)
            2'b00:   c = add_res;
            2'b01:   c = mul_res;
            2'b10:   c = div_res;
            default: c = 32'b0;
        endcase
    end

endmodule