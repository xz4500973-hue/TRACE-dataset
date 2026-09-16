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
// Description: refactored to registered output
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
    input              rst_n,
    input      [1:0]   sel_op,
    input      [31:0]  a,
    input      [31:0]  b,
    input              start_div,
    output reg [31:0]  c,
    output             div_done
);

    wire [31:0] add_res;
    wire [31:0] mul_res;
    wire [31:0] div_res;

    // registered versions
    qadd #(15,32) u_add ( .a(a), .b(b), .clk(clk), .c(add_res) );
    qmult #(15,32) u_mul ( .a(a), .b(b), .clk(clk), .c(mul_res) );

    qdiv #(15,32) u_div (
        .dividend      (a),
        .divisor       (b),
        .start         (start_div),
        .clk           (clk),
        .quotient_out  (div_res),
        .complete      (div_done)
    );

    always @(posedge clk) begin
        case (sel_op)
            2'b00:   c <= add_res;
            2'b01:   c <= mul_res;
            2'b10:   c <= div_res;
            default: c <= 32'b0;
        endcase
    end

endmodule