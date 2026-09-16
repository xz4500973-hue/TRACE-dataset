/////////////////////////////////////////////////////////////////// ////
//// AES Decryption Core for FPGA                                 ////
////                                                              ////
//// VARIANT: 3-stage FSM (state register + next-state + output)  ////
////                                                              ////
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
	logic	[14:0]	decrypt_state, decrypt_next_state;
		
	wire	[0:127]	inv_shiftrows_out;
	wire	[0:127]	inv_subbytes_out;
	wire	[0:127]	inv_addrkey_out;
	wire	[0:127]	inv_mixcol_out;
	wire	bypass_inv_mixcol;
	logic	load_new_ct_reg;
	logic	last_round_reg;
	
	logic	pt_vld_reg;
	
	InvShiftRows InvShiftRows_u(.din(State), .dout(inv_shiftrows_out));
	(* KEEP_HIERARCHY = "yes" *) InvSubBytes InvSubBytes_u(.din(inv_shiftrows_out), .dout(inv_subbytes_out));
	(* KEEP_HIERARCHY = "yes" *) InvAddRoundKey InvAddRoundKey_u(.din0(inv_subbytes_out), .din1(ct), .rkey(rkey), .S(load_new_ct_reg), .dout(inv_addrkey_out));
	(* KEEP_HIERARCHY = "yes" *) InvMixColumns InvMixColumns_u(.din(inv_addrkey_out), .dout(inv_mixcol_out), .bypass(bypass_inv_mixcol));
	
	// 3-stage FSM: Stage 1 - State Register
	always_ff @(posedge clk)
	begin
		if (rst) decrypt_state <= 15'b00000000000001;
		else decrypt_state <= decrypt_next_state;
	end
	
	// 3-stage FSM: Stage 2 - Next-state Logic
	always_comb begin
		if (decrypt_state[0])
			decrypt_next_state = (rkey_vld & ct_vld) ? (decrypt_state << 1) : decrypt_state;
		else
			case (1'b1)
				(decrypt_state[10] & (klen_sel==2'b00)): decrypt_next_state = 15'b00000000000001;
				(decrypt_state[12] & (klen_sel==2'b01)): decrypt_next_state = 15'b00000000000001;
				(decrypt_state[14] & (klen_sel==2'b10)): decrypt_next_state = 15'b00000000000001;
				default: decrypt_next_state = decrypt_state << 1;
			endcase
	end
	
	// 3-stage FSM: Stage 3 - Output Logic
	always_comb begin
		load_new_ct_reg = decrypt_state[0] & rkey_vld & ct_vld;
		last_round_reg = ((klen_sel==2'b00) & decrypt_state[10]) | ((klen_sel==2'b01) & decrypt_state[12]) | ((klen_sel==2'b10) & decrypt_state[14]);
	end
	
	assign bypass_inv_mixcol = load_new_ct_reg | last_round_reg;
	
	always_ff @(posedge clk)
	begin
		if (rst) pt_vld_reg <= 0;
		else
			case (pt_vld_reg)
				1'b0 :	if (last_round_reg) pt_vld_reg <= 1;
				1'b1 :	if (ct_vld & rkey_vld) pt_vld_reg <= 0;
			endcase
	end
	
	assign pt_vld = pt_vld_reg;
	
	always_ff @(posedge clk)
		if (~(decrypt_state[0] & ~(ct_vld & rkey_vld))) State <= inv_mixcol_out;
		
	assign pt = State;
	
	assign ct_rdy = decrypt_state[0] & rkey_vld;
	
	assign next_rkey = ~decrypt_state[0] | (ct_vld & rkey_vld);
	
endmodule