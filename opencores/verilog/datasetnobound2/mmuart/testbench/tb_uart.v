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

    localparam BIT_CLKS = 16 * 54;  // 16x oversampling, 115200 baud

    task send_uart_byte;
        input [7:0] data;
        integer i;
        begin
            uart_rx = 1'b0;
            repeat(BIT_CLKS) @(posedge sys_clk);
            for (i = 0; i < 8; i = i + 1) begin
                uart_rx = data[i];
                repeat(BIT_CLKS) @(posedge sys_clk);
            end
            uart_rx = 1'b1;
            repeat(BIT_CLKS) @(posedge sys_clk);
        end
    endtask

    integer i;
    reg [7:0] expected;
    reg [7:0] received;

    initial begin
        $dumpfile("uart_rx_only.vcd");
        $dumpvars(0, tb_uart);

        sys_rst   = 1;
        csr_a     = 14'd0;
        csr_we    = 1'b0;
        csr_di    = 32'd0;
        uart_rx   = 1'b1;

        #200;
        sys_rst = 1'b0;
        repeat(20) @(posedge sys_clk);

        // Enable RX (if needed)
        csr_a = 14'd1;   // control reg at 0x04
        csr_di = 32'd2;  // enable RX
        csr_we = 1'b1;
        @(posedge sys_clk);
        csr_we = 1'b0;

        // Receive 500 bytes of incrementing data
        for (i = 0; i < 500; i = i + 1) begin
            expected = i[7:0];
            send_uart_byte(expected);

            @(posedge sys_clk);
            while (rx_irq == 1'b0) @(posedge sys_clk);

            csr_a  = 14'd0;
            csr_we = 1'b0;
            @(posedge sys_clk);
            received = csr_do[7:0];
            if (received !== expected)
                $display("RX Error: expected %h, got %h", expected, received);
        end

        #100000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule