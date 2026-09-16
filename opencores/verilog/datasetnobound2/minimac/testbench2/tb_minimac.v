/*
 * Full duplex high load
 */
module tb_minimac();

/* 100MHz system clock */
reg sys_clk;
initial sys_clk = 1'b0;
always #5 sys_clk = ~sys_clk;

/* 25MHz RX clock */
reg phy_rx_clk;
initial phy_rx_clk = 1'b0;
always #20 phy_rx_clk = ~phy_rx_clk;

/* 25MHz TX clock */
reg phy_tx_clk;
initial phy_tx_clk = 1'b0;
always #20 phy_tx_clk = ~phy_tx_clk;

reg sys_rst;

reg [13:0] csr_a;
reg csr_we;
reg [31:0] csr_di;
wire [31:0] csr_do;

wire [31:0] wbrx_adr_o;
wire [2:0] wbrx_cti_o;
wire wbrx_cyc_o;
wire wbrx_stb_o;
reg wbrx_ack_i;
wire [31:0] wbrx_dat_o;

wire [31:0] wbtx_adr_o;
wire [2:0] wbtx_cti_o;
wire wbtx_cyc_o;
wire wbtx_stb_o;
reg wbtx_ack_i;
reg [31:0] wbtx_dat_i;

reg [3:0] phy_rx_data;
reg phy_dv;
reg phy_rx_er;

wire phy_tx_en;
wire [3:0] phy_tx_data;

wire irq_rx;
wire irq_tx;

minimac #(
	.csr_addr(4'h0)
) ethernet (
	.sys_clk(sys_clk),
	.sys_rst(sys_rst),
	.csr_a(csr_a),
	.csr_we(csr_we),
	.csr_di(csr_di),
	.csr_do(csr_do),
	.wbrx_adr_o(wbrx_adr_o),
	.wbrx_cti_o(wbrx_cti_o),
	.wbrx_cyc_o(wbrx_cyc_o),
	.wbrx_stb_o(wbrx_stb_o),
	.wbrx_ack_i(wbrx_ack_i),
	.wbrx_dat_o(wbrx_dat_o),
	.wbtx_adr_o(wbtx_adr_o),
	.wbtx_cti_o(wbtx_cti_o),
	.wbtx_cyc_o(wbtx_cyc_o),
	.wbtx_stb_o(wbtx_stb_o),
	.wbtx_ack_i(wbtx_ack_i),
	.wbtx_dat_i(wbtx_dat_i),
	.irq_rx(irq_rx),
	.irq_tx(irq_tx),
	.phy_tx_clk(phy_tx_clk),
	.phy_tx_data(phy_tx_data),
	.phy_tx_en(phy_tx_en),
	.phy_tx_er(),
	.phy_rx_clk(phy_rx_clk),
	.phy_rx_data(phy_rx_data),
	.phy_dv(phy_dv),
	.phy_rx_er(phy_rx_er),
	.phy_col(),
	.phy_crs(),
	.phy_mii_clk(),
	.phy_mii_data()
);

task waitclock;
begin
	@(posedge sys_clk);
	#1;
end
endtask

task csrwrite;
input [31:0] address;
input [31:0] data;
begin
	csr_a = address[16:2];
	csr_di = data;
	csr_we = 1'b1;
	waitclock;
	$display("Configuration Write: %x=%x", address, data);
	csr_we = 1'b0;
end
endtask

task csrread;
input [31:0] address;
begin
	csr_a = address[16:2];
	waitclock;
	$display("Configuration Read : %x=%x", address, csr_do);
end
endtask

// RX back-end: ack quickly
always @(posedge sys_clk) begin
	if(wbrx_cyc_o & wbrx_stb_o & ~wbrx_ack_i) begin
		wbrx_ack_i <= 1'b1;
	end else
		wbrx_ack_i <= 1'b0;
end

// TX back-end: ack quickly, provide random data
always @(posedge sys_clk) begin
	if(wbtx_cyc_o & wbtx_stb_o & ~wbtx_ack_i) begin
		wbtx_dat_i = $random;
		wbtx_ack_i <= 1'b1;
	end else
		wbtx_ack_i <= 1'b0;
end

// PHY RX: continuous random packets (same as RX-only)
reg [7:0] pkt_len;
reg [3:0] pkt_cnt;
initial begin
	phy_dv = 1'b0;
	phy_rx_er = 1'b0;
	pkt_len = 8'd64;
	pkt_cnt = 0;
end
always @(posedge phy_rx_clk) begin
	if(phy_dv) begin
		phy_rx_data <= $random;
		if(pkt_cnt == pkt_len) begin
			phy_dv <= 1'b0;
		end else begin
			pkt_cnt <= pkt_cnt + 1;
		end
	end else begin
		if($random % 30 == 0) begin
			phy_dv <= 1'b1;
			pkt_len <= 64 + ({$random} % 100);
			pkt_cnt <= 0;
		end
	end
end

// TX software: continuously send packets (same as TX-only)
reg tx_trigger;
integer tx_count;
initial begin
	tx_trigger = 0;
	tx_count = 0;
end
always @(posedge sys_clk) begin
	if(sys_rst) begin
		tx_trigger <= 0;
		tx_count <= 0;
	end else begin
		if(tx_count < 300) begin
			if(~tx_trigger) begin
				csrwrite(32'h10, 32'h00002000);
				csrwrite(32'h14, 64 + ({$random} % 100));
				csrwrite(32'h18, 1);
				tx_trigger <= 1;
				tx_count <= tx_count + 1;
			end
			if(irq_tx) begin
				tx_trigger <= 0;
			end
		end
	end
end

initial begin
	$dumpfile("minimac_full_duplex.vcd");
	$dumpvars(0, tb_minimac);
	sys_rst = 1'b1;
	waitclock;
	sys_rst = 1'b0;

	// Enable both RX and TX
	csrwrite(32'h00, 32'd3);
	csrwrite(32'h04, 32'h00001000); // RX buffer
	csrwrite(32'h08, 32'd2048);
	csrwrite(32'h0C, 32'h00002000); // TX buffer

	#1500000;
	$finish;
end

endmodule