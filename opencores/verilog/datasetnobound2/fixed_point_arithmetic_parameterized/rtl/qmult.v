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
// Description: refactored to single pipelined always block
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
		input clk,
		output reg [N-1:0] c
	);
	 
	wire [N-2:0] a_mag = a[N-2:0];
	wire [N-2:0] b_mag = b[N-2:0];

	reg [2*N-1:0] a_mult, b_mult, result;
	reg [2*N-1:0] r_ext;
	reg [N-1:0] retVal;
	always @(posedge clk) begin
		
		// twos complement
		a_mult = a[N-1] ? (~a_mag + 1'b1) : a;
		b_mult = b[N-1] ? (~b_mag + 1'b1) : b;
		
		// multiply
		result = a_mult * b_mult;
		
		// twos complement result magnitude
		r_ext = result[2*N-1] ? (~result[N-2+Q:Q] + 1'b1) : result[N-2+Q:Q];
		
		// sign
		if((a[N-1] == 1 && b[N-1] == 0) || (a[N-1] == 0 && b[N-1] == 1)) begin
			retVal[N-1] = 1'b1;
			retVal[N-2:0] = r_ext[N-2:0];
		end else begin
			retVal[N-1] = 1'b0;
			retVal[N-2:0] = result[N-2+Q:Q];
		end
		
		c <= retVal;
	end

endmodule