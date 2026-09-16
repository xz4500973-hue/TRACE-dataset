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
// A429 Transmitting Interface - VARIANT: 2-stage FSM
// Designed by Himar Alonso (himar@opencores.org)
// Date: 15/08/2019
////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module a429_tx_iface
(
	input         clk2M,
	input         reset,
	input         enable,
	input   [1:0] speed,
	input         par_gen, // NOT implemented yet (data must include valid parity bit)
	input   [6:0] gap_bits,	// Values between 4 and 64
	input  [32:1] data,
	input         tx_req,
	output        a429_out_a,
	output        a429_out_b,
	output        ready
);

	//////////////////////////////////////////////////////
	// Generate clk429 according to the 'speed' setting //
	//////////////////////////////////////////////////////
	reg        clk429 = 1'b0;
	reg  [7:0] clk429_counter = 1'b0;
	wire [7:0] clk429_max_count  = (speed[0]) ? 8'd19 : 8'd159;
	wire [7:0] clk429_half_count = (speed[0]) ? 8'd10 : 8'd80;

	always @(posedge clk2M or posedge reset)
		if (reset)
			clk429 <= 1'b0;
		else
			clk429 <= (clk429_counter < clk429_half_count) ? 1'b1 : 1'b0;

	always @(posedge clk2M or posedge reset)
		if (reset)
			clk429_counter <= 8'b0;
		else if (clk429_counter >= clk429_max_count)
			clk429_counter <= 8'b0;
		else
			clk429_counter <= clk429_counter + 8'b1;

	
	/////////////////////////////////////////////////////////////////////////
	// Format the output word by reversing the bits from the 'label' field //
	/////////////////////////////////////////////////////////////////////////
	wire [32:1]  a429_formatted_data = {data[32:9], data[1], data[2], data[3],
		data[4], data[5], data[6], data[7], data[8]};
	localparam	IDLE         = 2'b00;
	localparam	TRANSMITTING = 2'b01;
	localparam	WAITING      = 2'b10;

	reg  [1:0] state, next_state;
	reg [32:1] shift_reg;
	reg  [4:0] shift_counter;
	reg  [6:0] gap_counter;
	wire a429_out_a_bit = shift_reg[1];
	wire a429_out_b_bit = ~shift_reg[1];
	////////////////////////
	// Output assignments //
	////////////////////////
	assign a429_out_a = (clk429 & (state == TRANSMITTING)) ? a429_out_a_bit : 1'b0;
	assign a429_out_b = (clk429 & (state == TRANSMITTING)) ? a429_out_b_bit : 1'b0;

	assign ready = (state == IDLE);

	/////////////////////////////////////
	// TX 2-stage FSM: Stage 1 - State Register
	/////////////////////////////////////
	always @(posedge clk429 or posedge reset)
		if (reset) begin
			state <= IDLE;
		end else if (enable) begin
			state <= next_state;
		end else begin
			state <= IDLE;
		end

	/////////////////////////////////////
	// TX 2-stage FSM: Stage 2 - Next-state & datapath logic
	/////////////////////////////////////
	always @* begin
		next_state = state;
		case (state)
			IDLE: begin
				if (tx_req == 1'b1)
					next_state = TRANSMITTING;
			end
			TRANSMITTING: begin
				if (~|shift_counter)
					next_state = WAITING;
			end
			WAITING: begin
				if (~|gap_counter)
					next_state = IDLE;
			end
			default: next_state = IDLE;
		endcase
	end

	/////////////////////////////////////
	// Datapath: shift_reg, shift_counter, gap_counter
	/////////////////////////////////////
	always @(posedge clk429 or posedge reset)
		if (reset) begin
			shift_reg <= 32'b0;
			shift_counter <= 5'b0;
			gap_counter <= 6'b0;
		end else if (enable) begin
			case (state)
				IDLE: begin
					if (tx_req == 1'b1) begin
						shift_reg <= a429_formatted_data;
						shift_counter <= 5'b11111;
					end
				end
				TRANSMITTING: begin
					shift_reg <= {shift_reg[1], shift_reg[32:2]};
					if (~|shift_counter) begin
						if (gap_bits < 7'd4)
							gap_counter <= 7'd2;
						else if (gap_bits > 7'd64)
							gap_counter <= 7'd62;
						else
							gap_counter <= gap_bits - 7'd2;
					end else begin
						shift_counter <= shift_counter - 5'b1;
					end
				end
				WAITING: begin
					if (~|gap_counter) begin
						// idle, nothing
					end else begin
						gap_counter <= gap_counter - 7'b1;
					end
				end
				default: begin
					shift_counter <= 5'b0;
					gap_counter <= 6'b0;
				end
			endcase
		end else begin
			shift_reg <= 32'b0;
			shift_counter <= 5'b0;
			gap_counter <= 6'b0;
		end
	
endmodule