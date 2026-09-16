`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:18 08/24/2011 
// Design Name: 
// Module Name:    q15_add 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: refactored to all-assign ternary combinational
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module qadd #(
    parameter Q = 15,
    parameter N = 32
)(
    input [N-1:0] a,
    input [N-1:0] b,
    output [N-1:0] c
);

wire a_sign = a[N-1];
wire b_sign = b[N-1];
wire neg_neg = a_sign & b_sign;
wire pos_pos = (~a_sign) & (~b_sign);
wire neg_pos = (~a_sign) & b_sign;
wire pos_neg = a_sign & (~b_sign);

wire [N-2:0] add_val = a[N-2:0] + b[N-2:0];
wire [N-2:0] sub_ab = a[N-2:0] - b[N-2:0];
wire [N-2:0] sub_ba = b[N-2:0] - a[N-2:0];

wire sub_neg_ab = (a[N-2:0] > b[N-2:0]);
wire sub_neg_ba = (a[N-2:0] < b[N-2:0]);

assign c[N-1] = (neg_neg | pos_pos) ? (neg_neg ? 1'b1 : 1'b0) :
                (neg_pos ? (sub_neg_ab ? 1'b1 : 1'b0) :
                          (sub_neg_ba ? 1'b1 : 1'b0));

assign c[N-2:0] = (neg_neg | pos_pos) ? add_val :
                  (neg_pos ? sub_ab : sub_ba);

endmodule