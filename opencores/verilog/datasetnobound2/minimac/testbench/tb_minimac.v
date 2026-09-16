/*
 * Continuous RX random packets
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

// RX back-end: always ack quickly to allow high throughput
always @(posedge sys_clk) begin
	if(wbrx_cyc_o & wbrx_stb_o & ~wbrx_ack_i) begin
		wbrx_ack_i <= 1'b1;
		$display("WB RX write at %x data=%x", wbrx_adr_o, wbrx_dat_o);
	end else
		wbrx_ack_i <= 1'b0;
	wbtx_ack_i <= 1'b0;
end

// PHY RX: generate continuous random packets
reg [7:0] pkt_len;
reg [3:0] pkt_cnt;

initial begin
	phy_dv = 1'b0;
	phy_rx_er = 1'b0;
	phy_rx_data = 4'h0;
	pkt_len = 8'd64;
	pkt_cnt = 0;
end

always @(posedge phy_rx_clk) begin
	if(phy_dv) begin
		phy_rx_data <= $random;
		if(pkt_cnt == pkt_len) begin
			phy_dv <= 1'b0;
			$display("RX packet ended, length %d", pkt_len);
		end else begin
			pkt_cnt <= pkt_cnt + 1;
		end
	end else begin
		if($random % 50 == 0) begin
			phy_dv <= 1'b1;
			pkt_len <= 64 + ({$random} % 100);
			pkt_cnt <= 0;
			$display("RX packet start, length %d", pkt_len);
		end
	end
end

initial begin
	$dumpfile("minimac_rx_only.vcd");
	$dumpvars(0, tb_minimac);
	sys_rst = 1'b1;
	waitclock;
	sys_rst = 1'b0;

	// Enable RX (assuming bit0 enables RX)
	csrwrite(32'h00, 32'd1);
	// Set RX buffer base address
	csrwrite(32'h04, 32'h00001000);
	// Set RX buffer size (e.g., 2048 bytes)
	csrwrite(32'h08, 32'd2048);

	#1000000;
	$finish;
end

endmodule