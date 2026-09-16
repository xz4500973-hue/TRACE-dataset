`timescale 1ns / 1ps
`default_nettype	wire

module tb_wbuart;

    // 时钟和复位
    reg clk;
    reg rst;

    // Wishbone 接口
    reg         wb_cyc;
    reg         wb_stb;
    reg         wb_we;
    reg  [1:0]  wb_addr;
    reg  [31:0] wb_wdata;
    wire [31:0] wb_rdata;
    wire        wb_ack;
    wire        wb_stall;

    // UART 串行信号
    wire        uart_tx;
    reg         uart_rx;
    wire        cts_n;
    wire        rts_n;

    // 中断输出（未使用）
    wire        rx_int, tx_int, rxfifo_int, txfifo_int;

    // 例化待测模块
    wbuart #(
        .INITIAL_SETUP(31'd25),   // 对应 100MHz 下 4Mbps 8N1
        .LGFLEN(4),
        .HARDWARE_FLOW_CONTROL_PRESENT(1'b1)
    ) dut (
        .i_clk             (clk),
        .i_rst             (rst),
        .i_wb_cyc          (wb_cyc),
        .i_wb_stb          (wb_stb),
        .i_wb_we           (wb_we),
        .i_wb_addr         (wb_addr),
        .i_wb_data         (wb_wdata),
        .o_wb_ack          (wb_ack),
        .o_wb_stall        (wb_stall),
        .o_wb_data         (wb_rdata),
        .i_uart_rx         (uart_rx),
        .o_uart_tx         (uart_tx),
        .i_cts_n           (cts_n),
        .o_rts_n           (rts_n),
        .o_uart_rx_int     (rx_int),
        .o_uart_tx_int     (tx_int),
        .o_uart_rxfifo_int (rxfifo_int),
        .o_uart_txfifo_int (txfifo_int)
    );

    // 时钟：100MHz
    initial clk = 0;
    always #5 clk = ~clk;

    // 回环：将 UART 发送线连接到接收线，同时模拟外部设备
    // 注意：回环可能引起冲突，我们在激励中会控制。
    // 这里简单将 tx 连到 rx，但为了不让自发自收干扰，我们将在发送时不使用回环，
    // 而是分别模拟发送和接收路径。
    // 实际上我们可以分开激励：发送时 rx 保持高，接收时由 TB 驱动 rx 线。
    // 下面的任务会自行处理。

    // Wishbone 总线任务 (考虑两周期 ACK)
    // 注意：该设计在两周期后给出 ack：stb 置位后下一个周期 r_wb_ack=1，再下一个周期 o_wb_ack=1。
    // 因此，我们需要在 stb 有效的上升沿之后的第 2 个上升沿采样 ack。
    task wb_write;
        input [1:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            wb_cyc   <= 1;
            wb_stb   <= 1;
            wb_we    <= 1;
            wb_addr  <= addr;
            wb_wdata <= data;
            // 等待 ack (需要 2 个时钟周期)
            @(posedge clk);   // r_wb_ack 有效
            @(posedge clk);   // o_wb_ack 有效
            wb_cyc   <= 0;
            wb_stb   <= 0;
            wb_we    <= 0;
        end
    endtask

    task wb_read;
        input [1:0] addr;
        output [31:0] data;
        begin
            @(posedge clk);
            wb_cyc   <= 1;
            wb_stb   <= 1;
            wb_we    <= 0;
            wb_addr  <= addr;
            @(posedge clk);   // 地址周期结束
            @(posedge clk);   // ack 有效，数据有效
            data = wb_rdata;
            wb_cyc   <= 0;
            wb_stb   <= 0;
        end
    endtask

    // UART 发送一个字节到接收线 (i_uart_rx)
    // 波特率由 uart_setup 的低 24 位决定，默认是 25 => 4Mbps
    // 位时间 = 1/baud_rate = (setup+1) / clk_freq
    // 例如 setup=25，位时间 = 26 / 100MHz = 260ns = 26 个时钟周期
    task uart_send_byte;
        input [7:0] bytee;
        integer i;
        begin
            // 起始位 (低)
            uart_rx = 1'b0;
            repeat(26) @(posedge clk);   // 位时间 26 cycles
            // 数据位 LSB first
            for (i = 0; i < 8; i = i + 1) begin
                uart_rx = bytee[i];
                repeat(26) @(posedge clk);
            end
            // 停止位 (高)
            uart_rx = 1'b1;
            repeat(26) @(posedge clk);
        end
    endtask

    integer i, j;
    reg [31:0] rdata;
    reg [7:0]  send_byte;
    reg [7:0]  received;

    initial begin
        // 生成 VCD 文件
        $dumpfile("wbuart.vcd");
        $dumpvars(0, tb_wbuart);

        // 初始化信号
        rst      = 1;
        wb_cyc   = 0;
        wb_stb   = 0;
        wb_we    = 0;
        wb_addr  = 2'b00;
        wb_wdata = 0;
        uart_rx  = 1'b1;     // 空闲高
        #100;
        rst = 0;
        #100;

        // --------------------------------------------------
        // 测试流程
        // --------------------------------------------------

        // 1. 可选：重新配置 UART (写入 SETUP 寄存器)
        // 默认使用 INITIAL_SETUP = 25 (4Mbps 8N1)，可以不变。
        // 如果想更改，可以写 `UART_SETUP` 地址。
        // 这里我们保持默认，仅做一次写操作以观察效果。
        wb_write(2'b00, 32'd25 | (1<<30));  // bit30=1 禁用硬件流控

        // 2. 发送多个字节到 TX FIFO，并等待发送完成（通过 tx_int 或 tx_busy）
        // 发送 50 个随机字节
        for (i = 0; i < 50; i = i + 1) begin
            send_byte = $random % 256;
            wb_write(2'b11, {24'h0, send_byte});  // 地址 UART_TXREG = 2'b11
            // 简单延时，不检查忙
            #500;  // 足够发送完一个字节
        end

        // 3. 等待发送 FIFO 空（可选）
        // 通过读 FIFO 状态寄存器 (地址 `UART_FIFO`)
        wb_read(2'b01, rdata);  // 读取 FIFO 状态
        // 可以等待 tx 空闲，这里略过

        // 4. 模拟接收通路：由 TB 向 i_uart_rx 发送字节，并读取 RX FIFO
        // 发送 50 个随机字节到接收线
        for (i = 0; i < 50; i = i + 1) begin
            send_byte = $random % 256;
            uart_send_byte(send_byte);
            // 检查是否有接收数据可用（rx_int）
            if (rx_int) begin
                // 读取接收数据 (地址 `UART_RXREG`)
                wb_read(2'b10, rdata);
                received = rdata[7:0];
                if (received != send_byte)
                    $display("Mismatch: sent %h, received %h", send_byte, received);
            end else begin
                // 强制读取一次（即使没有中断），通过等待直到数据就绪
                @(posedge clk);
                while (!rx_int) @(posedge clk);
                wb_read(2'b10, rdata);
                received = rdata[7:0];
                if (received != send_byte)
                    $display("Mismatch2: sent %h, received %h", send_byte, received);
            end
        end

        // 5. 同时进行收发：写入 TX FIFO 的同时让外部发送数据到 RX
        fork
            begin
                // 发送 100 个字节
                for (i = 0; i < 100; i = i + 1) begin
                    send_byte = $random % 256;
                    wb_write(2'b11, {24'h0, send_byte});
                    #500;
                end
            end
            begin
                // 接收 100 个字节
                for (i = 0; i < 100; i = i + 1) begin
                    send_byte = $random % 256;
                    uart_send_byte(send_byte);
                    @(posedge clk);
                    while (!rx_int) @(posedge clk);
                    wb_read(2'b10, rdata);
                end
            end
        join

        // 6. 再运行一段时间
        #10000;

        // 结束仿真
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule