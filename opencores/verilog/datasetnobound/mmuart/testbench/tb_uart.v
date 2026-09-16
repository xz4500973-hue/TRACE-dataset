`timescale 1ns / 1ps

module tb_uart;

    // 时钟与复位
    reg sys_clk;
    reg sys_rst;

    // CSR 接口
    reg  [13:0] csr_a;
    reg         csr_we;
    reg  [31:0] csr_di;
    wire [31:0] csr_do;
    wire        rx_irq;
    wire        tx_irq;

    // UART 串行线
    reg  uart_rx;
    wire uart_tx;

    // 实例化待测模块（默认 100MHz / 115200）
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

    // 100MHz 时钟
    initial sys_clk = 0;
    always #5 sys_clk = ~sys_clk;   // 周期 10ns

    // 发送一个字节到 UART 接收线（uart_rx）
    // 位宽 = 16 * 54 个时钟周期（54 为默认分频系数）
    localparam BIT_CLKS = 16 * 54;   // 864 个 sys_clk 周期

    task send_uart_byte;
        input [7:0] data;
        integer i;
        begin
            // 起始位（拉低）
            uart_rx = 1'b0;
            repeat(BIT_CLKS) @(posedge sys_clk);
            // 数据位 LSB first
            for (i = 0; i < 8; i = i + 1) begin
                uart_rx = data[i];
                repeat(BIT_CLKS) @(posedge sys_clk);
            end
            // 停止位（拉高）
            uart_rx = 1'b1;
            repeat(BIT_CLKS) @(posedge sys_clk);
        end
    endtask

    // 主测试流程
    integer i;
    reg [7:0] expected;
    reg [7:0] received;

    initial begin
        // ① 生成 VCD
        $dumpfile("uart.vcd");
        $dumpvars(0, tb_uart);

        // 初始化
        sys_rst   = 1;
        csr_a     = 14'd0;
        csr_we    = 1'b0;
        csr_di    = 32'd0;
        uart_rx   = 1'b1;          // 空闲高电平

        // 复位释放
        #200;
        sys_rst = 1'b0;
        repeat(20) @(posedge sys_clk);   // 等待稳定

        // ---------- 发送 100 个字节 ----------
        // 写第一个字节，启动发送
        csr_a  = 14'd0;
        csr_di = 32'd0;            // 第 0 字节
        csr_we = 1'b1;
        @(posedge sys_clk);
        csr_we = 1'b0;

        // 循环发送剩余 99 个字节
        for (i = 1; i < 100; i = i + 1) begin
            // 等待上一次发送完成
            @(posedge sys_clk);
            while (tx_irq == 1'b0) @(posedge sys_clk);
            // 写入新数据
            csr_di = i[7:0];
            csr_we = 1'b1;
            @(posedge sys_clk);
            csr_we = 1'b0;
        end

        // 等待最后字节发送完成
        @(posedge sys_clk);
        while (tx_irq == 1'b0) @(posedge sys_clk);

        // ---------- 接收 100 个字节 ----------
        for (i = 0; i < 100; i = i + 1) begin
            expected = 255 - i;        // 用互补数据便于观察
            send_uart_byte(expected);

            // 等待接收完成中断
            @(posedge sys_clk);
            while (rx_irq == 1'b0) @(posedge sys_clk);

            // 读取接收数据（CSR 读地址 0）
            csr_a  = 14'd0;
            csr_we = 1'b0;
            @(posedge sys_clk);
            received = csr_do[7:0];
            if (received != expected)
                $display("RX Error: expected %h, got %h", expected, received);
        end

        // 额外运行一段时间，收集稳定波形
        #10000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule