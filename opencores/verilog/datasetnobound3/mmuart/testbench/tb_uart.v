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

    task waitclock;
        begin
            @(posedge sys_clk);
            #1;
        end
    endtask

    task csrread;
        input [31:0] address;
        begin
            csr_a = address[16:2];
            waitclock;
            $display("Read %x = %x", address, csr_do);
        end
    endtask

    initial begin
        $dumpfile("uart_idle.vcd");
        $dumpvars(0, tb_uart);

        sys_rst   = 1;
        csr_a     = 14'd0;
        csr_we    = 1'b0;
        csr_di    = 32'd0;
        uart_rx   = 1'b1;

        #200;
        sys_rst = 1'b0;
        repeat(20) @(posedge sys_clk);

        // Just a few register reads
        csrread(32'h00);
        csrread(32'h04);
        csrread(32'h08);

        #500000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule