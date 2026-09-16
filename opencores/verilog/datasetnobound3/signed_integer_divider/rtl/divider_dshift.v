(* keep_hierarchy = "yes" *) module	divider_dshift(
input	i_clk,
input	i_rst,
input	[31:0]i_dividend,
input	[31:0]i_divisor,
input	i_start,
output	o_ready,
output	reg	[31:0]o_quotient,
output	reg	[31:0]o_remainder
);

parameter	
		state_1=1,
		state_2=2,
		state_3=4,
		state_4=8,
		state_5=16,
		state_6=32;

reg	[31:0]PR, nxt_PR;
reg	signed[31:0]PR_1, nxt_PR_1;
reg	[31:0]DR, nxt_DR;
reg	[5:0]ct, ct_1, nxt_ct, nxt_ct_1;
reg	ct_1_en, ct_1_en_1, nxt_ct_1_en, nxt_ct_1_en_1;
reg	DD_sign, nxt_DD_sign;
reg	[5:0]state, nxt_state;
reg	ready, nxt_ready;
assign	o_ready=ready?i_start:0;
reg	[30:0]nq, nxt_nq;
reg	[30:0]q, nxt_q;
wire	[30:0]nqp1 = nq+1;
wire	[30:0]qp1  = q+1;

wire	[31:0]nDR;
assign	nDR=~DR;
wire	nsub;
assign	nsub=PR[31]^DR[31];

wire	over_sub;
assign	over_sub=(DD_sign^PR[31])&(PR[31:0]!=0);
wire	addback_nDR = over_sub&(~nsub);
wire	addback_DR  = over_sub&nsub;
wire	[30:0]final_nq = addback_DR?nqp1:nq;
wire	[30:0]final_q  = addback_nDR?qp1:q;
wire	[31:0]remainder_addback = addback_DR?i_divisor : (addback_nDR?~i_divisor:0);

wire	[31:0]a, b;
wire	[31:0]sum;
wire	carry_in;
wire	carry_out;

reg	[31:0]reg_a, reg_b;
reg	reg_carry;
reg	[1:0]state_reg, nxt_state_reg;

reg	[4:0]shifted, nxt_shifted, shifted_1, nxt_shifted_1;
reg	[31:0]sdata, nxt_sdata;
wire	[31:0]sdata_o;
wire	[4:0]shifted_o;
shifter	shifter_0(sdata, sdata_o, shifted_o);

assign a = ct_1_en ? {27'd0,shifted_1} :
           state==state_4 ? {1'b1,~final_nq} :
           state==state_5 ? remainder_addback : (nsub?DR:nDR);
assign b = ct_1_en ? {26'd0,ct_1} :
           state==state_4 ? {1'b0,final_q} :
           state==state_5 ? PR_1 : PR;
assign carry_in = ct_1_en ? 0 : (state==state_4 ? 1 : (state==state_5 ? (addback_nDR?1:0) : (nsub?0:1)));

adder_32bit adder_0(reg_a, reg_b, reg_carry, sum, carry_out);

wire	[5:0]sum_ct;
wire	[25:0]sum_ct_h;
wire	carry_ct;
adder_32bit adder_1({26'd0,ct}, state[5]?{27'd0,shifted}:~{27'd0,shifted}, state[5]?1'b0:1'b1, {sum_ct_h,sum_ct}, carry_ct);

// Dataset3: combinational next-state logic
always @(state or state_reg or ready or i_start or ct or shifted or nsub or sum or sum_ct or sdata_o or shifted_o or sdata or ct_1 or ct_1_en or ct_1_en_1 or PR or PR_1 or DR or q or nq or DD_sign) begin
	nxt_state = state; nxt_ready = ready; nxt_ct = ct; nxt_ct_1 = ct_1;
	nxt_ct_1_en = ct_1_en; nxt_ct_1_en_1 = ct_1_en_1;
	nxt_PR = PR; nxt_PR_1 = PR_1; nxt_DR = DR;
	nxt_q = q; nxt_nq = nq; nxt_DD_sign = DD_sign;
	nxt_sdata = sdata; nxt_shifted = shifted; nxt_shifted_1 = shifted_1;
	nxt_state_reg = state_reg;

	if (state_reg == 0) begin
		if (state == state_1) begin
			if ((!ready)&&i_start) begin nxt_sdata=i_divisor; nxt_state=state_6; nxt_q=0; nxt_nq=0; nxt_shifted=0; end
		end else if (state == state_2) begin
			nxt_sdata=i_dividend; nxt_PR_1=i_dividend; nxt_DD_sign=i_dividend[31]; nxt_state=state_3; nxt_state_reg=1;
		end else if (state == state_3) begin
			if (ct[5]) begin nxt_state=state_4; nxt_ct=0; nxt_state_reg=2; end
			else begin nxt_ct_1_en=1; nxt_shifted_1=shifted; nxt_nq[ct]=nsub; nxt_q[ct]=~nsub; nxt_sdata=sum; nxt_state_reg=1; end
		end else if (state == state_4) begin
			nxt_state=state_5; /* o_quotient handled in seq */ nxt_PR_1=PR_1>>>ct_1; nxt_state_reg=2;
		end else if (state == state_5) begin
			nxt_ct_1=0; nxt_state=state_1; nxt_ready=1;
		end else if (state == state_6) begin
			nxt_sdata=sdata_o; nxt_shifted=shifted_o; nxt_ct=sum_ct;
			if (sdata[31]!=sdata[30]) begin nxt_state=state_2; nxt_DR=sdata; end
		end
	end else if (state_reg == 1) begin
		nxt_PR=sdata_o; nxt_PR_1=sdata; nxt_shifted=shifted_o; nxt_state_reg=2;
		nxt_ct_1_en=0; nxt_ct_1_en_1=ct_1_en;
	end else if (state_reg == 2) begin
		if (state==state_3) nxt_ct=sum_ct;
		nxt_state_reg=0;
		if (ct_1_en_1) nxt_ct_1=sum[5:0];
		nxt_ct_1_en_1=0;
	end
end

always @(posedge i_clk or negedge i_rst)
	if (!i_rst) begin
		sdata<=0; shifted<=0; shifted_1<=0; PR<=0; PR_1<=0; DR<=0;
		ready<=0; ct<=0; ct_1<=0; ct_1_en<=0; ct_1_en_1<=0;
		state<=state_1; DD_sign<=0; o_quotient<=0; o_remainder<=0;
		nq<=0; q<=0; reg_a<=0; reg_b<=0; reg_carry<=0; state_reg<=0;
	end else begin
		state <= nxt_state; ready <= nxt_ready; ct <= nxt_ct; ct_1 <= nxt_ct_1;
		ct_1_en <= nxt_ct_1_en; ct_1_en_1 <= nxt_ct_1_en_1;
		PR <= nxt_PR; PR_1 <= nxt_PR_1; DR <= nxt_DR;
		q <= nxt_q; nq <= nxt_nq; DD_sign <= nxt_DD_sign;
		sdata <= nxt_sdata; shifted <= nxt_shifted; shifted_1 <= nxt_shifted_1;
		state_reg <= nxt_state_reg;
		if (state==state_4 && state_reg==0) o_quotient <= sum;
		if (state==state_5 && state_reg==0) o_remainder <= sum;
		if (ready && (!i_start)) ready<=0;
		reg_a <= a; reg_b <= b; reg_carry <= carry_in;
	end

endmodule