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
// Description: refactored to 3-segment explicit FSM
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
	reg [N-1:0] quotient, next_quotient;
	reg [N-1:0] dividend_copy, next_dividend_copy;
	reg [2*(N-1)-1:0] divider_copy, next_divider_copy;
	reg [5:0] bitt, next_bitt; 

	// Segment 1: state register
	always @(posedge clk) begin
		state <= next_state;
		quotient <= next_quotient;
		dividend_copy <= next_dividend_copy;
		divider_copy <= next_divider_copy;
		bitt <= next_bitt;
	end
	
	// Segment 2: next state logic
	always @(*) begin
		next_state = state;
		case (state)
			S_IDLE: if (start) next_state = S_COMPUTE;
			S_COMPUTE: if (bitt == 0) next_state = S_DONE;
			S_DONE: next_state = S_IDLE;
		endcase
	end

	// Segment 3: output logic
	assign quotient_out = quotient;
	assign complete = (state == S_DONE);
	
	always @(*) begin
		next_quotient = quotient;
		next_dividend_copy = dividend_copy;
		next_divider_copy = divider_copy;
		next_bitt = bitt;
		
		if (state == S_IDLE && start) begin
			next_bitt = N+Q-2;
			next_quotient = 0;
			next_dividend_copy = {1'b0, dividend[N-2:0]};
			next_divider_copy[2*(N-1)-1] = 0;
			next_divider_copy[2*(N-1)-2:N-2] = divisor[N-2:0];
			next_divider_copy[N-3:0] = 0;
			if((dividend[N-1] == 1 && divisor[N-1] == 0) || (dividend[N-1] == 0 && divisor[N-1] == 1))
				next_quotient[N-1] = 1;
			else
				next_quotient[N-1] = 0;
		end else if (state == S_COMPUTE) begin
			if(dividend_copy >= divider_copy) begin
				next_dividend_copy = dividend_copy - divider_copy;
				next_quotient[bitt] = 1'b1;
			end
			next_divider_copy = divider_copy >> 1;
			next_bitt = bitt - 1;	
		end
	end
endmodule