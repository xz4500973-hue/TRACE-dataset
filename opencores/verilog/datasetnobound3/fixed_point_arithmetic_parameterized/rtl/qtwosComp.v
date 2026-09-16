`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:20 08/24/2011 
// Design Name: 
// Module Name:    twosComp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: refactored to pure assign combinational
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module qtwosComp #(
    parameter Q = 15,
    parameter N = 32
	)(
		input [N-2:0] a,
		output [2*N-1:0] b
	);

	assign b = (~{1'b0, a}) + 1'b1;

endmodule