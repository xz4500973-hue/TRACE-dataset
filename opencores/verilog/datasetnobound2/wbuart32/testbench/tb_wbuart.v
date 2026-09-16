`timescale 1ns / 1ps
`default_nettype wire

module tb_wbuart;

    reg clk;
    reg rst;
    reg         wb_cyc;
    reg         wb_stb;
    reg         wb_we;
    reg  [1:0]  wb_addr;
    reg  [31:0] wb_wdata;
    wire [31:0] wb_rdata;
    wire        wb_ack;
    wire        wb_stall;
    wire        uart_tx;
    reg         uart_rx;
    wire        cts_n;
    wire        rts_n;
    wire        rx_int, tx_int, rxfifo_int, txfifo_int;

    wbuart #(
        .INITIAL_SETUP(31'd25),
        .LGFLEN(4),
        .HARDWARE_FLOW_CONTROL_PRESENT(1'b1)
    ) dut (
        .i_clk(clk), .i_rst(rst),
        .i_wb_cyc(wb_cyc), .i_wb_stb(wb_stb), .i_wb_we(wb_we),
        .i_wb_addr(wb_addr), .i_wb_data(wb_wdata),
        .o_wb_ack(wb_ack), .o_wb_stall(wb_stall), .o_wb_data(wb_rdata),
        .i_uart_rx(uart_rx), .o_uart_tx(uart_tx),
        .i_cts_n(cts_n), .o_rts_n(rts_n),
        .o_uart_rx_int(rx_int), .o_uart_tx_int(tx_int),
        .o_uart_rxfifo_int(rxfifo_int), .o_uart_txfifo_int(txfifo_int)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    // Wishbone write task
    task wb_write;
        input [1:0] addr; input [31:0] data;
        begin
            @(posedge clk);
            wb_cyc <= 1; wb_stb <= 1; wb_we <= 1; wb_addr <= addr; wb_wdata <= data;
            @(posedge clk); @(posedge clk);
            wb_cyc <= 0; wb_stb <= 0; wb_we <= 0;
        end
    endtask

    task wb_read;
        input [1:0] addr; output [31:0] data;
        begin
            @(posedge clk);
            wb_cyc <= 1; wb_stb <= 1; wb_we <= 0; wb_addr <= addr;
            @(posedge clk); @(posedge clk);
            data = wb_rdata;
            wb_cyc <= 0; wb_stb <= 0;
        end
    endtask

    task uart_send_byte;
        input [7:0] bytee; integer i;
        begin
            uart_rx = 1'b0; repeat(26) @(posedge clk);
            for (i = 0; i < 8; i = i + 1) begin
                uart_rx = bytee[i]; repeat(26) @(posedge clk);
            end
            uart_rx = 1'b1; repeat(26) @(posedge clk);
        end
    endtask

    integer i; reg [31:0] rdata; reg [7:0] send_byte;

    initial begin
        $dumpfile("wbuart.vcd");
        $dumpvars(0, tb_wbuart);

        rst = 1; wb_cyc = 0; wb_stb = 0; wb_we = 0;
        wb_addr = 0; wb_wdata = 0; uart_rx = 1'b1;
        #100; rst = 0; #100;

        // Configure: disable hw flow ctrl
        wb_write(2'b00, 32'd25 | (1<<30));

        // Send 80 bytes with random delay gaps
        for (i = 0; i < 80; i = i + 1) begin
            send_byte = $random % 256;
            wb_write(2'b11, {24'h0, send_byte});
            #(300 + ($random % 500));
        end

        // Wait for TX FIFO to drain
        #5000;

        // Receive 80 bytes via UART line
        for (i = 0; i < 80; i = i + 1) begin
            send_byte = $random % 256;
            uart_send_byte(send_byte);
            @(posedge clk);
            while (!rx_int) @(posedge clk);
            wb_read(2'b10, rdata);
            if (rdata[7:0] != send_byte)
                $display("Mismatch: sent %h, got %h", send_byte, rdata[7:0]);
        end

        #10000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule