`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:21:14 08/24/2011 
// Design Name: 
// Module Name:    q15_mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: refactored to all-assign combinational
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module qmult #(
    parameter Q = 15,
    parameter N = 32
	)(
		input [N-1:0] a,
		input [N-1:0] b,
		output [N-1:0] c
	);
	 
	wire [2*N-1:0] a_mult = a[N-1] ? (~{1'b0, a[N-2:0]} + 1'b1) : a;
	wire [2*N-1:0] b_mult = b[N-1] ? (~{1'b0, b[N-2:0]} + 1'b1) : b;
	wire [2*N-1:0] result = a_mult * b_mult;
	
	wire [N-2:0] r_mag = result[N-2+Q:Q];
	wire [N-2:0] r_ext = result[2*N-1] ? (~r_mag + 1'b1) : r_mag;
	
	wire sign_diff = (a[N-1] ^ b[N-1]);

	assign c[N-1]   = sign_diff ? 1'b1 : 1'b0;
	assign c[N-2:0] = sign_diff ? r_ext[N-2:0] : result[N-2+Q:Q];

endmodule