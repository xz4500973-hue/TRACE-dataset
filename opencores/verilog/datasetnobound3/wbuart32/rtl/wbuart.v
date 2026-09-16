////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	wbuart.v
//
// Project:	wbuart32, a full featured UART with simulator
// Refactored: dataset3 variant - pipelined WB ack, generate-based mux
//
// License:	GPL, v3
//
////////////////////////////////////////////////////////////////////////////////
//
`default_nettype	wire
//
`define	UART_SETUP	2'b00
`define	UART_FIFO	2'b01
`define	UART_RXREG	2'b10
`define	UART_TXREG	2'b11
//
(* keep_hierarchy = "yes" *) module	wbuart(i_clk, i_rst,
		i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data,
			o_wb_ack, o_wb_stall, o_wb_data,
		i_uart_rx, o_uart_tx, i_cts_n, o_rts_n,
		o_uart_rx_int, o_uart_tx_int,
		o_uart_rxfifo_int, o_uart_txfifo_int);
	parameter [30:0] INITIAL_SETUP = 31'd25;
	parameter [3:0]	LGFLEN = 4;
	parameter [0:0]	HARDWARE_FLOW_CONTROL_PRESENT = 1'b1;
	localparam [3:0]	LCLLGFLEN = (LGFLEN > 4'ha)? 4'ha
					: ((LGFLEN < 4'h2) ? 4'h2 : LGFLEN);
	//
	input	wire		i_clk, i_rst;
	input	wire		i_wb_cyc;
	input	wire		i_wb_stb, i_wb_we;
	input	wire	[1:0]	i_wb_addr;
	input	wire	[31:0]	i_wb_data;
	output	reg		o_wb_ack;
	output	wire		o_wb_stall;
	output	reg	[31:0]	o_wb_data;
	//
	input	wire		i_uart_rx;
	output	wire		o_uart_tx;
	input	wire		i_cts_n;
	output	reg		o_rts_n;
	output	wire		o_uart_rx_int, o_uart_tx_int,
				o_uart_rxfifo_int, o_uart_txfifo_int;

	wire	tx_busy;

	// ------------------------------------------------------------------
	// UART Setup register
	// ------------------------------------------------------------------
	reg	[30:0]	uart_setup;
	initial	uart_setup = INITIAL_SETUP
		| ((HARDWARE_FLOW_CONTROL_PRESENT==1'b0)? 31'h40000000 : 0);
	always @(posedge i_clk)
		if ((i_wb_stb)&&(i_wb_addr == `UART_SETUP)&&(i_wb_we))
			uart_setup <= { (i_wb_data[30])||(!HARDWARE_FLOW_CONTROL_PRESENT), i_wb_data[29:0] };

	// ------------------------------------------------------------------
	// UART Receiver
	// ------------------------------------------------------------------
	wire		rx_stb, rx_break, rx_perr, rx_ferr, ck_uart;
	wire	[7:0]	rx_uart_data;
	wire		rx_uart_reset;
	
	// RX reset - combinational decode
	assign rx_uart_reset = (i_rst) || ((i_wb_stb)&&(i_wb_addr[1:0]==`UART_SETUP)&&(i_wb_we))
	                      || (((i_wb_stb)&&(i_wb_addr[1:0]==`UART_RXREG)&&(i_wb_we)&&(i_wb_data[12])));

	rxuart	#(INITIAL_SETUP) rx(i_clk, rx_uart_reset,
			uart_setup, i_uart_rx,
			rx_stb, rx_uart_data, rx_break,
			rx_perr, rx_ferr, ck_uart);

	// RX FIFO
	wire		rx_empty_n, rx_fifo_err;
	wire	[7:0]	rxf_wb_data;
	wire	[15:0]	rxf_status;
	reg		rxf_wb_read;

	ufifo	#(.LGFLEN(LCLLGFLEN), .RXFIFO(1))
		rxfifo(i_clk, (i_rst)||(rx_break)||(rx_uart_reset),
			rx_stb, rx_uart_data,
			rx_empty_n,
			rxf_wb_read, rxf_wb_data,
			rxf_status, rx_fifo_err);
	assign	o_uart_rxfifo_int = rxf_status[1];
	assign	o_uart_rx_int = rxf_status[0];

	// RTS
	wire	[(LCLLGFLEN-1):0]	check_cutoff;
	assign	check_cutoff = -3;
	always @(posedge i_clk)
		o_rts_n <= ((HARDWARE_FLOW_CONTROL_PRESENT)&&(!uart_setup[30])
			&&(rxf_status[(LCLLGFLEN+1):2] > check_cutoff));

	initial	rxf_wb_read = 1'b0;
	always @(posedge i_clk)
		rxf_wb_read <= (i_wb_stb)&&(i_wb_addr[1:0]==`UART_RXREG)&&(!i_wb_we);

	// RX errors
	reg	r_rx_perr, r_rx_ferr;
	initial	r_rx_perr = 1'b0;
	initial	r_rx_ferr = 1'b0;
	always @(posedge i_clk)
		if ((rx_uart_reset)||(rx_break)) begin
			r_rx_perr <= 1'b0;
			r_rx_ferr <= 1'b0;
		end else if ((i_wb_stb)&&(i_wb_addr[1:0]==`UART_RXREG)&&(i_wb_we)) begin
			r_rx_perr <= (r_rx_perr)&&(~i_wb_data[9]);
			r_rx_ferr <= (r_rx_ferr)&&(~i_wb_data[10]);
		end else if (rx_stb) begin
			r_rx_perr <= (r_rx_perr)||(rx_perr);
			r_rx_ferr <= (r_rx_ferr)||(rx_ferr);
		end

	wire	[31:0]	wb_rx_data;
	assign	wb_rx_data = { 16'h00, 3'h0, rx_fifo_err,
				rx_break, rx_ferr, r_rx_perr, !rx_empty_n, rxf_wb_data};

	// ------------------------------------------------------------------
	// UART Transmitter
	// ------------------------------------------------------------------
	wire		tx_empty_n, txf_err, tx_break;
	wire	[7:0]	tx_data;
	wire	[15:0]	txf_status;
	reg		txf_wb_write;
	reg	[7:0]	txf_wb_data;

	// TX reset - combinational decode
	wire	tx_uart_reset;
	assign	tx_uart_reset = (i_rst) || ((i_wb_stb)&&(i_wb_addr == `UART_SETUP)&&(i_wb_we))
	                      || (((i_wb_stb)&&(i_wb_addr[1:0]==`UART_TXREG)&&(i_wb_we)&&(i_wb_data[12])));

	initial	txf_wb_write = 1'b0;
	always @(posedge i_clk) begin
		txf_wb_write <= (i_wb_stb)&&(i_wb_addr == `UART_TXREG)&&(i_wb_we);
		txf_wb_data  <= i_wb_data[7:0];
	end

	ufifo	#(.LGFLEN(LGFLEN), .RXFIFO(0))
		txfifo(i_clk, (tx_break)||(tx_uart_reset),
			txf_wb_write, txf_wb_data,
			tx_empty_n,
			(!tx_busy)&&(tx_empty_n), tx_data,
			txf_status, txf_err);
	assign	o_uart_tx_int = txf_status[0];
	assign	o_uart_txfifo_int = txf_status[1];

	reg	r_tx_break;
	initial	r_tx_break = 1'b0;
	always @(posedge i_clk)
		if (i_rst)
			r_tx_break <= 1'b0;
		else if ((i_wb_stb)&&(i_wb_addr[1:0]==`UART_TXREG)&&(i_wb_we))
			r_tx_break <= i_wb_data[9];
	assign	tx_break = r_tx_break;

	wire	cts_n;
	assign	cts_n = (HARDWARE_FLOW_CONTROL_PRESENT)&&(i_cts_n);
	txuart	#(INITIAL_SETUP) tx(i_clk, 1'b0, uart_setup,
			r_tx_break, (tx_empty_n), tx_data,
			cts_n, o_uart_tx, tx_busy);

	wire	[31:0]	wb_tx_data;
	assign	wb_tx_data = { 16'h00, 
				i_cts_n, txf_status[1:0], txf_err,
				ck_uart, o_uart_tx, tx_break, (tx_busy|txf_status[0]),
				(tx_busy|txf_status[0])?txf_wb_data:8'b00};

	wire	[31:0]	wb_fifo_data;
	assign	wb_fifo_data = { txf_status, rxf_status };

	// ------------------------------------------------------------------
	// Wishbone response (pipelined ACK with generate-based mux)
	// ------------------------------------------------------------------
	reg	[1:0]	r_wb_addr_pipe [0:1];  // two-stage pipeline
	always @(posedge i_clk) begin
		r_wb_addr_pipe[0] <= i_wb_addr;
		r_wb_addr_pipe[1] <= r_wb_addr_pipe[0];
	end

	reg	r_wb_ack_pipe [0:1];
	always @(posedge i_clk) begin
		r_wb_ack_pipe[0] <= i_wb_stb;
		r_wb_ack_pipe[1] <= r_wb_ack_pipe[0];
	end
	always @(posedge i_clk)
		o_wb_ack <= r_wb_ack_pipe[1];

	// Generate-based read data mux
	wire [31:0] wb_data_setup = { 1'b0, uart_setup };
	always @(posedge i_clk) begin
		case (r_wb_addr_pipe[1])
		`UART_SETUP: o_wb_data <= wb_data_setup;
		`UART_FIFO:  o_wb_data <= wb_fifo_data;
		`UART_RXREG: o_wb_data <= wb_rx_data;
		`UART_TXREG: o_wb_data <= wb_tx_data;
		default:     o_wb_data <= 32'h0;
		endcase
	end

	assign	o_wb_stall = 1'b0;

	wire	[33:0] unused;
	assign	unused = { i_rst, i_wb_cyc, i_wb_data };

endmodule