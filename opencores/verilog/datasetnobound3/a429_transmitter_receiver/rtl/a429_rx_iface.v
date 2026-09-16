////////////////////////////////////////////////////////////////////////////////
// A429 Receiving Interface - VARIANT: One-hot FSM encoding (3 states)
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
	// RX state machine - One-hot encoding //
	///////////////////////////////////////////////
	localparam IDLE_BIT       = 0;
	localparam RECEIVING_BIT  = 1;
	localparam WAITFORGAP_BIT = 2;

	localparam IDLE       = 3'b001;
	localparam RECEIVING  = 3'b010;
	localparam WAITFORGAP = 3'b100;

	reg   [2:0] state;
	reg         parity;
	reg  [32:1] shift_reg;
	reg   [4:0] shift_counter;
	reg   [8:0] sampling_counter;

	/////////////////////////////////////
	// RX state machine (1-stage, one-hot)
	/////////////////////////////////////
	always @(posedge clk2M or posedge reset)
		if (reset) begin
			state <= WAITFORGAP;
			sampling_counter <= gap_sc_value;
			shift_counter <= 5'b0;
			data <= 32'b0;
			shift_reg <= 32'b0;
			wr_en <= 1'b0;
		end else begin
			case (1'b1) // one-hot detection
				state[IDLE_BIT]:
					begin
						parity <= 1'b0;
						sampling_counter <= first_sc_value;
						shift_counter <= 5'd31;
						if (aorb & !aorb_prev)
							state <= RECEIVING;
					end
				state[RECEIVING_BIT]:
					if (~|sampling_counter)
						if ((aandb == 1'b1) || (aorb == 1'b0)) begin
							sampling_counter <= gap_sc_value;
							state <= WAITFORGAP;
						end else if (~|shift_counter) begin
							data <= {a429_in_a, shift_reg[32:10],
								shift_reg[2], shift_reg[3], shift_reg[4], shift_reg[5],
								shift_reg[6], shift_reg[7], shift_reg[8], shift_reg[9]};
							if ((parity == a429_in_b) || !parcheck)
								wr_en <= 1'b1;
							sampling_counter <= gap_sc_value;
							state <= WAITFORGAP;
						end else begin
							shift_reg <= {a429_in_a, shift_reg[32:2]};
							parity <= parity ^ a429_in_a;
							shift_counter <= shift_counter - 5'b1;
							sampling_counter <= other_sc_value;
						end
					else
						sampling_counter <= sampling_counter - 9'b1;
				state[WAITFORGAP_BIT]:
					begin
						wr_en <= 1'b0;
						if (~|sampling_counter)
							state <= IDLE;
						else if (aorb == 1'b1)
							sampling_counter <= gap_sc_value;
						else
							sampling_counter <= sampling_counter - 9'b1;
					end
				default:
					begin
						wr_en <= 1'b0;
						sampling_counter <= gap_sc_value;
						state <= WAITFORGAP;
					end
			endcase
		end
		
endmodule