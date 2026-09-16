///////////////////////////////////////////////////////////////////////
////                                                              ////
//// 128-bit key expander                                         ////
//// VARIANT: if-else chain instead of unique case               ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module KeyExpand128(
	input	[0:127] kt,
	input	kt_vld,
	output	kt_rdy,
	
	output	[0:127] rkey,
	output	rkey_vld,
	output	rkey_last,
	
	input	clk,
	input	rst
	);
	
	logic	[0:31]	w0;
	logic	[0:31]	w1;
	logic	[0:31]	w2;
	logic	[0:31]	w3;
	
	logic	[0:3]	keyexp_state;
	logic	[0:7]	Rcon;
	
	wire	[0:31]	subword_out;
	wire	[0:31]	rotword_out;
	wire	[0:31]	w0_feed;
	wire	[0:31]	w1_feed;
	wire	[0:31]	w2_feed;
	wire	[0:31]	w3_feed;

	wire	keyexp_state_0;
	wire	keyexp_state_10;
	
	(* keep = "true", max_fanout = 1 *) wire	[0:31]	next_w0;
	(* keep = "true", max_fanout = 1 *) wire	[0:31]	next_w1;
	(* keep = "true", max_fanout = 1 *) wire	[0:31]	next_w2;
	(* keep = "true", max_fanout = 1 *) wire	[0:31]	next_w3;

	assign w0_feed = (keyexp_state_0)? kt[0+:32] : w0;
	assign w1_feed = (keyexp_state_0)? kt[32+:32] : w1;
	assign w2_feed = (keyexp_state_0)? kt[64+:32] : w2;
	assign w3_feed = (keyexp_state_0)? kt[96+:32] : w3;
	
	RotWord RotWord_u(.din(w3_feed), .dout(rotword_out));
	SubWord SubWord_u(.din(rotword_out), .dout(subword_out));
	
	assign next_w0 = subword_out ^ {Rcon,24'h000000} ^ w0_feed;
	assign next_w1 = subword_out ^ {Rcon,24'h000000} ^ w0_feed ^ w1_feed;
	assign next_w2 = subword_out ^ {Rcon,24'h000000} ^ w0_feed ^ w1_feed ^ w2_feed;
	assign next_w3 = subword_out ^ {Rcon,24'h000000} ^ w0_feed ^ w1_feed ^ w2_feed ^ w3_feed;

	assign rkey = (keyexp_state_0)? kt : {w0,w1,w2,w3};
	assign kt_rdy = keyexp_state_0;
	assign rkey_vld = ~keyexp_state_0 | kt_vld;
	assign rkey_last = keyexp_state_10;
	assign keyexp_state_0 = (keyexp_state == 0);
	assign keyexp_state_10 = (keyexp_state == 10);

	// Key Expansion state machine - if-else chain variant	
	always_ff @(posedge clk)
	begin
		if (rst)
		begin
			keyexp_state <= 0;
			Rcon <= 8'h01;
		end
		else begin
			if (keyexp_state == 0) begin
				if (kt_vld) begin
					keyexp_state <= keyexp_state + 1;
					{w0,w1,w2,w3} <= {next_w0, next_w1, next_w2, next_w3};
					Rcon <= (Rcon[0])? (Rcon << 1) ^ 8'h1b : (Rcon << 1);
				end
			end else if (keyexp_state == 10) begin
				keyexp_state <= 0;
				{w0,w1,w2,w3} <= {next_w0, next_w1, next_w2, next_w3};
				Rcon <= 8'h01;
			end else begin
				keyexp_state <= keyexp_state + 1;
				{w0,w1,w2,w3} <= {next_w0, next_w1, next_w2, next_w3};
				Rcon <= (Rcon[0])? (Rcon << 1) ^ 8'h1b : (Rcon << 1);
			end
		end
	end

endmodule