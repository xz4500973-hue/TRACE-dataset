`timescale 1ns / 1ps

module tb_uart;

    reg sys_clk;
    reg sys_rst;
    reg  [13:0] csr_a;
    reg         csr_we;
    reg  [31:0] csr_di;
    wire [31:0] csr_do;
    wire        rx_irq;
    wire        tx_irq;
    reg  uart_rx;
    wire uart_tx;

    uart #(
        .csr_addr (4'h0),
        .clk_freq (100000000),
        .baud     (115200)
    ) dut (
        .sys_clk (sys_clk),
        .sys_rst (sys_rst),
        .csr_a   (csr_a),
        .csr_we  (csr_we),
        .csr_di  (csr_di),
        .csr_do  (csr_do),
        .rx_irq  (rx_irq),
        .tx_irq  (tx_irq),
        .uart_rx (uart_rx),
        .uart_tx (uart_tx)
    );

    initial sys_clk = 0;
    always #3 sys_clk = ~sys_clk;

    task send_uart_byte;
        input [7:0] data;
        integer i;
        begin
            // This task is not used in this testbench, but keep for compatibility
            uart_rx = 1'b0;
            #1; // dummy
        end
    endtask

    integer i;

    initial begin
        $dumpfile("uart_tx_only.vcd");
        $dumpvars(0, tb_uart);

        sys_rst   = 1;
        csr_a     = 14'd0;
        csr_we    = 1'b0;
        csr_di    = 32'd0;
        uart_rx   = 1'b1;   // No incoming data

        #200;
        sys_rst = 1'b0;
        repeat(20) @(posedge sys_clk);

        // Enable TX (if needed) – assume write to control register at 0x04 enables TX
        csr_a = 14'd1;   // address 0x04
        csr_di = 32'd1;  // enable TX
        csr_we = 1'b1;
        @(posedge sys_clk);
        csr_we = 1'b0;

        // Send 500 bytes of random data
        for (i = 0; i < 500; i = i + 1) begin
            @(posedge sys_clk);
            while (tx_irq == 1'b0) @(posedge sys_clk);
            csr_di = {$random};   // random data
            csr_we = 1'b1;
            @(posedge sys_clk);
            csr_we = 1'b0;
        end

        @(posedge sys_clk);
        while (tx_irq == 1'b0) @(posedge sys_clk);

        #100000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule