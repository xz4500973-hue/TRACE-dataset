// VARIANT: 1-stage FSM (merged state register + next-state logic)
(* keep_hierarchy = "yes" *) module dmx_rx #(parameter csr_addr = 4'h0, parameter clk_freq = 100000000) (
	input sys_clk, sys_rst,
	input [13:0] csr_a, input csr_we, input [31:0] csr_di,
	output [31:0] csr_doo, input rx
);
	wire csr_selected = csr_a[13:10] == csr_addr;
	wire [7:0] csr_channel;
	reg [8:0] channel_a; reg channel_we; reg [7:0] channel_d;
	dmx_dpram channels(.clk(sys_clk),.a(csr_a[8:0]),.we(1'b0),.di(8'hxx),.doo(csr_channel),.a2(channel_a),.we2(channel_we),.di2(channel_d),.doo2());
	always @(posedge sys_clk) if(channel_we) $display("Received value %x for channel %x", channel_d, channel_a);
	reg csr_selected_r; always @(posedge sys_clk) csr_selected_r <= csr_selected;
	assign csr_doo = {24'h000000, csr_selected_r ? csr_channel : 8'h00};

	reg rx_r0, rx_r; always @(posedge sys_clk) begin rx_r0 <= rx; rx_r <= rx_r0; end
	parameter divisor = clk_freq/250000, halfbit = clk_freq/500000;
	reg ce_load, ce; reg [8:0] ce_counter;
	always @(posedge sys_clk) begin
		if(ce_load) begin ce<=1'b0; ce_counter<=halfbit-1; end
		else begin if(ce_counter==9'd0) begin ce<=1'b1; ce_counter<=divisor-1; end
		else begin ce<=1'b0; ce_counter<=ce_counter-9'd1; end end
	end

	reg channel_a_reset, channel_a_ce;
	always @(posedge sys_clk) begin if(channel_a_reset) channel_a<=9'd0; else if(channel_a_ce) channel_a<=channel_a+9'd1; end
	reg channel_d_load_en; reg [2:0] channel_d_load;
	always @(posedge sys_clk) begin if(channel_d_load_en) channel_d[channel_d_load]<=rx_r; end

	parameter break_threshold = clk_freq/11364; reg [12:0] break_counter; wire breakk = break_counter==13'd0;
	always @(posedge sys_clk) begin if(sys_rst|rx_r) break_counter<=break_threshold; else if(~breakk) break_counter<=break_counter-13'd1; end

	// 1-stage FSM: merged state register and next-state
	parameter WAIT_BREAK=4'd0, WAIT_MAB=4'd1, WAIT_START=4'd2, SAMPLE_START=4'd3, SAMPLE0=4'd4, SAMPLE1=4'd5, SAMPLE2=4'd6, SAMPLE3=4'd7;
	parameter SAMPLE4=4'd8, SAMPLE5=4'd9, SAMPLE6=4'd10, SAMPLE7=4'd11, SAMPLE_STOP1=4'd12, SAMPLE_STOP2=4'd13;

	reg [3:0] state; reg skip;
	always @(posedge sys_clk) begin
		if(sys_rst) begin state<=WAIT_BREAK; skip<=1'b0; end
		else begin
			ce_load=1'b0; channel_a_reset=1'b0; channel_a_ce=1'b0; channel_we=1'b0; channel_d_load_en=1'b0; channel_d_load=3'bxxx;
			case(state)
				WAIT_BREAK: begin ce_load=1'b1; channel_a_reset=1'b1; skip<=1'b1; if(breakk) state<=WAIT_MAB; end
				WAIT_MAB: begin ce_load=1'b1; channel_a_reset=1'b1; if(rx_r) state<=WAIT_START; end
				WAIT_START: begin ce_load=1'b1; if(~rx_r) state<=SAMPLE_START; end
				SAMPLE_START: if(ce) begin if(rx_r) state<=WAIT_BREAK; else state<=SAMPLE0; end
				SAMPLE0: begin channel_d_load_en=1'b1; channel_d_load=3'd0; if(ce) state<=SAMPLE1; end
				SAMPLE1: begin channel_d_load_en=1'b1; channel_d_load=3'd1; if(ce) state<=SAMPLE2; end
				SAMPLE2: begin channel_d_load_en=1'b1; channel_d_load=3'd2; if(ce) state<=SAMPLE3; end
				SAMPLE3: begin channel_d_load_en=1'b1; channel_d_load=3'd3; if(ce) state<=SAMPLE4; end
				SAMPLE4: begin channel_d_load_en=1'b1; channel_d_load=3'd4; if(ce) state<=SAMPLE5; end
				SAMPLE5: begin channel_d_load_en=1'b1; channel_d_load=3'd5; if(ce) state<=SAMPLE6; end
				SAMPLE6: begin channel_d_load_en=1'b1; channel_d_load=3'd6; if(ce) state<=SAMPLE7; end
				SAMPLE7: begin channel_d_load_en=1'b1; channel_d_load=3'd7; if(ce) state<=SAMPLE_STOP1; end
				SAMPLE_STOP1: if(ce) begin if(rx_r) state<=SAMPLE_STOP2; else state<=WAIT_BREAK; end
				SAMPLE_STOP2: if(ce) begin if(rx_r) begin skip<=1'b0; if(~skip) begin channel_we=1'b1; channel_a_ce=1'b1; end state<=WAIT_START; end else state<=WAIT_BREAK; end
			endcase
		end
	end
endmodule