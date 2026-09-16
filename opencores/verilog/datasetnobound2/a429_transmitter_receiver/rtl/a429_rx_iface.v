////////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2019 Himar Alonso
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this hardware, software, and associated documentation files
// (the "Product"), to deal in the Product without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Product, and to permit
// persons to whom the Product is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Product.
//
// THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE PRODUCT OR THE USE OR OTHER DEALINGS IN THE
// PRODUCT. 
//
////////////////////////////////////////////////////////////////////////////////
// A429 Receiving Interface - VARIANT: 2-stage FSM
// Designed by Himar Alonso (himar@opencores.org)
// Date: 15/08/2019
////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module a429_rx_iface
(
	input             clk2M,
	input             reset,
	input             enable,
	input       [1:0] speed,
	input             a429_in_a,
	input             a429_in_b,
	input             parcheck,
	output reg [32:1] data,
	output reg        wr_en
);

	////////////////////////////////////////
	// Constants for the sampling counter //
	////////////////////////////////////////
	wire [8:0] first_sc_value = (speed[0]) ? 9'd4  : 9'd39;
	wire [8:0] other_sc_value = (speed[0]) ? 9'd19 : 9'd159;
	wire [8:0] gap_sc_value = (speed[0]) ? 9'd59 : 9'd479;
	
	///////////////////////////////////////////////////////
	// Register 'aorb' previous value for edge detection //
	///////////////////////////////////////////////////////
	wire aandb = a429_in_a & a429_in_b;
	wire aorb = a429_in_a | a429_in_b;
	reg  aorb_prev;

	always @(posedge clk2M or posedge reset)
		if (reset)
			aorb_prev <= 1'b0;
		else
			aorb_prev <= aorb;
					
	///////////////////////////////////////////////
	// RX state machine parameters and registers //
	///////////////////////////////////////////////
	localparam IDLE       = 2'b00;
	localparam RECEIVING  = 2'b01;
	localparam WAITFORGAP =	2'b10;

	reg   [1:0] state, next_state;
	reg         parity;
	reg  [32:1] shift_reg;
	reg   [4:0] shift_counter;
	reg   [8:0] sampling_counter;

	/////////////////////////////////////
	// RX 2-stage FSM: Stage 1 - State Register
	/////////////////////////////////////
	always @(posedge clk2M or posedge reset)
		if (reset) begin
			state <= WAITFORGAP;
		end else begin
			state <= next_state;
		end

	/////////////////////////////////////
	// RX 2-stage FSM: Stage 2 - Next-state & datapath logic
	/////////////////////////////////////
	always @* begin
		next_state = state;
		case (state)
			IDLE: begin
				if (aorb & !aorb_prev)
					next_state = RECEIVING;
			end
			RECEIVING: begin
				if (~|sampling_counter) begin
					if ((aandb == 1'b1) || (aorb == 1'b0))
						next_state = WAITFORGAP;
					else if (~|shift_counter)
						next_state = WAITFORGAP;
				end
			end
			WAITFORGAP: begin
				if (~|sampling_counter)
					next_state = IDLE;
			end
			default: next_state = WAITFORGAP;
		endcase
	end

	/////////////////////////////////////
	// Datapath: shift_reg, parity, data, counters
	/////////////////////////////////////
	always @(posedge clk2M or posedge reset)
		if (reset) begin
			sampling_counter <= gap_sc_value;
			shift_counter <= 5'b0;
			data <= 32'b0;
			shift_reg <= 32'b0;
			wr_en <= 1'b0;
			parity <= 1'b0;
		end else begin
			case (state)
				IDLE: begin
					parity <= 1'b0;
					sampling_counter <= first_sc_value;
					shift_counter <= 5'd31;
				end
				RECEIVING: begin
					if (~|sampling_counter) begin
						if ((aandb == 1'b1) || (aorb == 1'b0)) begin
							sampling_counter <= gap_sc_value;
						end else if (~|shift_counter) begin
							data <= {a429_in_a, shift_reg[32:10],
								shift_reg[2], shift_reg[3], shift_reg[4], shift_reg[5],
								shift_reg[6], shift_reg[7], shift_reg[8], shift_reg[9]};
							if ((parity == a429_in_b) || !parcheck)
								wr_en <= 1'b1;
							sampling_counter <= gap_sc_value;
						end else begin
							shift_reg <= {a429_in_a, shift_reg[32:2]};
							parity <= parity ^ a429_in_a;
							shift_counter <= shift_counter - 5'b1;
							sampling_counter <= other_sc_value;
						end
					end else begin
						sampling_counter <= sampling_counter - 9'b1;
					end
				end
				WAITFORGAP: begin
					wr_en <= 1'b0;
					if (~|sampling_counter) begin
						// wait for gap
					end else if (aorb == 1'b1)
						sampling_counter <= gap_sc_value;
					else
						sampling_counter <= sampling_counter - 9'b1;
				end
				default: begin
					wr_en <= 1'b0;
					sampling_counter <= gap_sc_value;
				end
			endcase
		end
		
endmodule