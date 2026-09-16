`timescale 1ns / 1ps

module tb_rtfSimpleUart;

    // 时钟与复位
    reg rst, clk;
    // Wishbone 总线
    reg cyc, stb, we;
    reg [31:0] adr;
    reg [7:0] dat_i;
    wire [7:0] dat_o;
    wire ack;
    // 串行接口
    reg cts_ni, dsr_ni, dcd_ni;
    reg rxd;
    wire txd;
    wire rts_no, dtr_no;
    wire irq;
    wire data_present;
    wire baud16_clk;

    // 例化待测模块（使用默认参数：20MHz, 19200 baud）
    rtfSimpleUart uut (
        .rst_i(rst),
        .clk_i(clk),
        .cyc_i(cyc),
        .stb_i(stb),
        .we_i(we),
        .adr_i(adr),
        .dat_i(dat_i),
        .dat_o(dat_o),
        .ack_o(ack),
        .vol_o(),
        .irq_o(irq),
        .cts_ni(cts_ni),
        .rts_no(rts_no),
        .dsr_ni(dsr_ni),
        .dcd_ni(dcd_ni),
        .dtr_no(dtr_no),
        .rxd_i(rxd),
        .txd_o(txd),
        .data_present_o(data_present)
    );

    // 时钟：20MHz（与模块 pClkFreq 默认值一致）
    initial clk = 0;
    always #25 clk = ~clk;  // 周期 50ns

    // Wishbone 写任务
    task wb_write;
        input [31:0] addr;
        input [7:0]  data;
        begin
            @(posedge clk);
            cyc <= 1; stb <= 1; we <= 1;
            adr  <= addr;
            dat_i <= data;
            @(posedge clk);   // 等待 ack
            cyc <= 0; stb <= 0; we <= 0;
        end
    endtask

    // Wishbone 读任务
    task wb_read;
        input [31:0] addr;
        output [7:0] data;
        begin
            @(posedge clk);
            cyc <= 1; stb <= 1; we <= 0;
            adr  <= addr;
            @(posedge clk);
            data = dat_o;
            cyc <= 0; stb <= 0;
        end
    endtask

    // 在 rxd 上发送一个完整的串行字节（1 start + 8 data + 1 stop）
    // 波特率 19200, 16x 时钟周期 = 1/(19200*16) ≈ 3.255us ≈ 65 个 clk_i 周期
    // 实际使用 16 倍波特率周期，因为 UART 内部用 baud16 采样
    localparam BIT_CLKS = 65;   // 一个位周期的 clk_i 周期数（20MHz / (19200*16) ≈ 65）
    task uart_send_byte;
        input [7:0] byteee;
        integer i;
        begin
            // 起始位
            rxd = 1'b0;
            repeat(BIT_CLKS) @(posedge clk);
            // 数据位 LSB first
            for (i = 0; i < 8; i = i + 1) begin
                rxd = byteee[i];
                repeat(BIT_CLKS) @(posedge clk);
            end
            // 停止位
            rxd = 1'b1;
            repeat(BIT_CLKS) @(posedge clk);
        end
    endtask

    // 主测试流程
    reg [7:0] read_val;
    initial begin
        // ① 生成 VCD
        $dumpfile("rtfSimpleUart.vcd");
        $dumpvars(0, tb_rtfSimpleUart);

        // 初始化
        rst    = 1;
        cyc    = 0;
        stb    = 0;
        we     = 0;
        adr    = 0;
        dat_i  = 0;
        cts_ni = 1;
        dsr_ni = 1;
        dcd_ni = 1;
        rxd    = 1;    // 空闲高电平

        // 复位释放
        #100;
        rst = 0;
        #100;

        // ② 使能接收中断、关闭流控、使能 DTR/RTS
        wb_write(32'hFFDC_0A04, 8'h01);   // IER: rx_present_ie=1
        wb_write(32'hFFDC_0A07, 8'h00);   // CTRL: hwfc=0
        wb_write(32'hFFDC_0A06, 8'h03);   // MC: dtr=1, rts=1

        // ③ 发送一个测试字节 0xA5
        uart_send_byte(8'hA5);

        // ④ 等待接收完成（轮询 data_present 或 irq）
        while (!data_present) @(posedge clk);

        // ⑤ 读取接收到的字节
        wb_read(32'hFFDC_0A00, read_val);
        $display("Received: 0x%h (expected 0xA5)", read_val);
        if (read_val == 8'hA5)
            $display("Test PASSED");
        else
            $display("Test FAILED");

        // ⑥ 再发送几个字节，增加翻转
        uart_send_byte(8'h5A);
        while (!data_present) @(posedge clk);
        uart_send_byte(8'h33);
        while (!data_present) @(posedge clk);

        // ⑦ 仿真结束
        #20000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule