////////////////////////////////////////////////////////////////////////////////
// A429 Transmitting Interface - VARIANT: One-hot FSM encoding (3 states)
////////////////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module a429_tx_iface
(
	input         clk2M,
	input         reset,
	input         enable,
	input   [1:0] speed,
	input         par_gen,
	input   [6:0] gap_bits,
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
		if (reset) clk429 <= 1'b0;
		else clk429 <= (clk429_counter < clk429_half_count) ? 1'b1 : 1'b0;

	always @(posedge clk2M or posedge reset)
		if (reset) clk429_counter <= 8'b0;
		else if (clk429_counter >= clk429_max_count) clk429_counter <= 8'b0;
		else clk429_counter <= clk429_counter + 8'b1;

	/////////////////////////////////////////////////////////////////////////
	// Format the output word by reversing the bits from the 'label' field //
	/////////////////////////////////////////////////////////////////////////
	wire [32:1] a429_formatted_data = {data[32:9], data[1], data[2], data[3],
		data[4], data[5], data[6], data[7], data[8]};

	// One-hot state encoding
	localparam IDLE_BIT         = 0;
	localparam TRANSMITTING_BIT = 1;
	localparam WAITING_BIT      = 2;

	localparam IDLE         = 3'b001;
	localparam TRANSMITTING = 3'b010;
	localparam WAITING      = 3'b100;

	reg  [2:0] state;
	reg [32:1] shift_reg;
	reg  [4:0] shift_counter;
	reg  [6:0] gap_counter;
	wire a429_out_a_bit = shift_reg[1];
	wire a429_out_b_bit = ~shift_reg[1];

	// Output assignments
	assign a429_out_a = (clk429 & state[TRANSMITTING_BIT]) ? a429_out_a_bit : 1'b0;
	assign a429_out_b = (clk429 & state[TRANSMITTING_BIT]) ? a429_out_b_bit : 1'b0;
	assign ready = state[IDLE_BIT];

	/////////////////////////////////////
	// TX state machine (1-stage, one-hot)
	/////////////////////////////////////
	always @(posedge clk429 or posedge reset)
		if (reset) begin
			state <= IDLE;
			shift_reg <= 32'b0;
			shift_counter <= 5'b0;
			gap_counter <= 6'b0;
		end else if (enable) begin
			case (1'b1) // one-hot detection
				state[IDLE_BIT]:
					if (tx_req == 1'b1) begin
						shift_reg <= a429_formatted_data;
						shift_counter <= 5'b11111;
						state <= TRANSMITTING;
					end
				state[TRANSMITTING_BIT]:
					begin
						shift_reg <= {shift_reg[1], shift_reg[32:2]};
						if (~|shift_counter) begin
							if (gap_bits < 7'd4)
								gap_counter <= 7'd2;
							else if (gap_bits > 7'd64)
								gap_counter <= 7'd62;
							else
								gap_counter <= gap_bits - 7'd2;
							state <= WAITING;
						end else begin
							shift_counter <= shift_counter - 5'b1;
						end
					end
				state[WAITING_BIT]:
					if (~|gap_counter)
						state <= IDLE;
					else
						gap_counter <= gap_counter - 7'b1;
				default:
					state <= IDLE;
			endcase
		end else begin
			state <= IDLE;
			shift_reg <= 32'b0;
			shift_counter <= 5'b0;
			gap_counter <= 6'b0;
		end
	
endmodule