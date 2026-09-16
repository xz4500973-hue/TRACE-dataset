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
// Description: refactored to single always block
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
		output reg [2*N-1:0] b
	);

	always @(a) begin
		b <= (~{1'b0, a}) + 1'b1;
	end

endmodule