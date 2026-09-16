/////////////////////////////////////////////////////////////////// ////
//// 																////
//// AES Decryption Core for FPGA									////
////                                                           ////
//// VARIANT: Binary-encoded FSM (4-bit instead of one-hot 15)  ////
////                                                           ////
//////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "yes" *) module decrypt(
	input	[0:127]	ct,
	input	ct_vld,
	output	ct_rdy,
	
	input	[0:127]	rkey,
	input	rkey_vld,
	output	next_rkey,
	
	output	[0:127]	pt,
	output	pt_vld,
	
	input	[0:1]	klen_sel,
	
	input	clk,
	input	rst
	);
	
	logic	[0:127]	State;
	logic	[3:0]	decrypt_state;   // Binary encoding, 4 bits for 15 states
		
	wire	[0:127]	inv_shiftrows_out;
	wire	[0:127]	inv_subbytes_out;
	wire	[0:127]	inv_addrkey_out;
	wire	[0:127]	inv_mixcol_out;
	wire	bypass_inv_mixcol;
	wire	load_new_ct;
	wire	last_round;
	
	logic	pt_vld_reg;
	
	InvShiftRows InvShiftRows_u(.din(State), .dout(inv_shiftrows_out));
	(* KEEP_HIERARCHY = "yes" *) InvSubBytes InvSubBytes_u(.din(inv_shiftrows_out), .dout(inv_subbytes_out));
	(* KEEP_HIERARCHY = "yes" *) InvAddRoundKey InvAddRoundKey_u(.din0(inv_subbytes_out), .din1(ct), .rkey(rkey), .S(load_new_ct), .dout(inv_addrkey_out));
	(* KEEP_HIERARCHY = "yes" *) InvMixColumns InvMixColumns_u(.din(inv_addrkey_out), .dout(inv_mixcol_out), .bypass(bypass_inv_mixcol));
	
	// Decryption state machine, binary encoded (4-bit for 11 active + idle)
	always_ff @(posedge clk)
	begin
		if (rst) decrypt_state <= 0;
		else
			if (decrypt_state == 0)
			begin
				if (rkey_vld & ct_vld) decrypt_state <= 1;
			end
			else
				decrypt_state <= (last_round)? 0 : decrypt_state + 1;
	end

	assign last_round = ((klen_sel==2'b00) & (decrypt_state == 10)) | ((klen_sel==2'b01) & (decrypt_state == 12)) | ((klen_sel==2'b10) & (decrypt_state == 14));
	
	always_ff @(posedge clk)
	begin
		if (rst) pt_vld_reg <= 0;
		else
			case (pt_vld_reg)
				1'b0 :	if (last_round) pt_vld_reg <= 1;
				1'b1 :	if (ct_vld & rkey_vld) pt_vld_reg <= 0;
			endcase
	end
	
	assign pt_vld = pt_vld_reg;
	
	always_ff @(posedge clk)
		if (~((decrypt_state == 0) & ~(ct_vld & rkey_vld))) State <= inv_mixcol_out;
		
	assign pt = State;
	
	assign load_new_ct = (decrypt_state == 0) & rkey_vld & ct_vld;
	
	assign bypass_inv_mixcol = load_new_ct | last_round;
	
	assign ct_rdy = (decrypt_state == 0) & rkey_vld;
	
	assign next_rkey = ~(decrypt_state == 0) | (ct_vld & rkey_vld);
	
endmodule