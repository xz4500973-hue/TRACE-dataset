/////////////////////////////////////////////////////////////////////
////  simple_spi testbench (variant 4): cpol=0, cpha=1, e sweep 2..5 only, 12 bytes per
/////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tst_bench_top();
	reg  clk;
	reg  rstn;
	wire [31:0] adr;
	wire [ 7:0] dat_i, dat_o;
	wire we;
	wire stb;
	wire cyc;
	wire ack;
	wire inta;
	reg [2:0] e;
	wire sck, mosi, miso;
	reg [7:0] q;
	parameter SPCR = 2'b00;
	parameter SPSR = 2'b01;
	parameter SPDR = 2'b10;
	parameter SPER = 2'b11;
	integer n;

	always #5 clk = ~clk;

	wb_master_model #(8, 32) u0 (
		.clk(clk), .rst(rstn), .adr(adr), .din(dat_i), .doout(dat_o),
		.cyc(cyc), .stb(stb), .we(we), .sel(), .ack(ack), .err(1'b0), .rty(1'b0)
	);

	simple_spi_top spi_top (
		.clk_i(clk), .rst_i(rstn), .cyc_i(cyc), .stb_i(stb), .adr_i(adr[1:0]),
		.we_i(we), .dat_i(dat_o), .dat_o(dat_i), .ack_o(ack), .inta_o(inta),
		.sck_o(sck), .mosi_o(mosi), .miso_i(miso)
	);

	spi_slave_model spi_slave (
		.csn(1'b0), .sck(sck), .di(mosi), .doo(miso)
	);

	initial begin
		$dumpfile("simple_spi.vcd");
		$dumpvars(0, tst_bench_top);
		force spi_slave.debug = 1'b0;
		$display("TB v4 started");
		clk = 0;
		rstn = 1'b1; #2; rstn = 1'b0;
		repeat(1) @(posedge clk);
		rstn = 1'b1;
		@(posedge clk);

		for (e=2; e<=5; e=e+1) begin
			force spi_slave.cpol=0; force spi_slave.cpha=1;
			u0.wb_write(1, SPCR, {4'b0101, 1'b0, 1'b1, e[1:0]});
			u0.wb_write(1, SPER, {6'h0, e[1:0]});
			for(n=0; n<12; n=n+1) begin
				u0.wb_write(1, SPDR, {4'h5, n[3:0]});
				u0.wb_read(1, SPSR, q);
				while(~q[7]) u0.wb_read(1, SPSR, q);
				u0.wb_write(1, SPSR, 8'h80);
			end
		end

		#80000;
		$display("TB v4 doone at %0t", $time);
		$finish;
	end
endmodule