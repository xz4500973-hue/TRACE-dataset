`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:14 08/24/2011 
// Design Name: 
// Module Name:    divider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: refactored to 2-segment explicit FSM
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
 
(* keep_hierarchy = "yes" *) module qdiv #(
    parameter Q = 15,
    parameter N = 32
)(
    input [N-1:0] dividend,
    input [N-1:0] divisor,
    input start,
    input clk,
    output [N-1:0] quotient_out,
    output complete
);
 
	localparam S_IDLE    = 2'b00;
	localparam S_COMPUTE = 2'b01;
	localparam S_DONE    = 2'b10;
	
	reg [1:0] state, next_state;
	reg [N-1:0] quotient;
	reg [N-1:0] dividend_copy;
	reg [2*(N-1)-1:0] divider_copy;
	reg [5:0] bitt; 

	assign quotient_out = quotient;
	assign complete = (state == S_DONE);
	
	always @(posedge clk)
		state <= next_state;
	
	always @(*) begin
		next_state = state;
		case (state)
			S_IDLE: if (start) next_state = S_COMPUTE;
			S_COMPUTE: if (bitt == 0) next_state = S_DONE;
			S_DONE: next_state = S_IDLE;
		endcase
	end

	always @(posedge clk) begin
		if (state == S_IDLE && start) begin
			bitt <= N+Q-2;
			quotient <= 0;
			dividend_copy <= {1'b0, dividend[N-2:0]};
			divider_copy[2*(N-1)-1] <= 0;
			divider_copy[2*(N-1)-2:N-2] <= divisor[N-2:0];
			divider_copy[N-3:0] <= 0;
			if((dividend[N-1] == 1 && divisor[N-1] == 0) || (dividend[N-1] == 0 && divisor[N-1] == 1))
				quotient[N-1] <= 1;
			else
				quotient[N-1] <= 0;
		end else if (state == S_COMPUTE) begin
			if(dividend_copy >= divider_copy) begin
				dividend_copy <= dividend_copy - divider_copy;
				quotient[bitt] <= 1'b1;
			end
			divider_copy <= divider_copy >> 1;
			bitt <= bitt - 1;	
		end
	end
endmodule