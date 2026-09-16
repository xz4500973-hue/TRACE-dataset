`timescale 1ns / 1ps
`default_nettype wire

module tb_sdspi;

    // 时钟与复位
    reg clk;
    // Wishbone 总线
    reg  wb_cyc, wb_stb, wb_we;
    reg [1:0] wb_addr;
    reg [31:0] wb_wdata;
    wire [31:0] wb_rdata;
    wire wb_ack, wb_stall;
    // SPI 接口
    wire cs_n, sck, mosi;
    reg  miso_reg;
    wire miso = (cs_n) ? 1'bz : miso_reg;
    wire intr;
    wire i_bus_grant = 1'b1;      // 始终拥有总线
    wire [31:0] debug;

    // 例化待测模块
    sdspi #(
        .LGFIFOLN(7)
    ) uut (
        .i_clk(clk),
        .i_wb_cyc(wb_cyc),
        .i_wb_stb(wb_stb),
        .i_wb_we(wb_we),
        .i_wb_addr(wb_addr),
        .i_wb_data(wb_wdata),
        .o_wb_ack(wb_ack),
        .o_wb_stall(wb_stall),
        .o_wb_data(wb_rdata),
        .o_cs_n(cs_n),
        .o_sck(sck),
        .o_mosi(mosi),
        .i_miso(miso),
        .o_int(intr),
        .i_bus_grant(i_bus_grant),
        .o_debug(debug)
    );

    // 100MHz 时钟
    initial clk = 0;
    always #5 clk = ~clk;

    // -------------------------------------------------------
    // Wishbone 总线任务
    // -------------------------------------------------------
    task wb_write;
        input [1:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            wb_cyc <= 1; wb_stb <= 1; wb_we <= 1;
            wb_addr <= addr; wb_wdata <= data;
            @(posedge clk);           // 等待 ack
            wb_cyc <= 0; wb_stb <= 0; wb_we <= 0;
        end
    endtask

    task wb_read;
        input [1:0] addr;
        output [31:0] data;
        begin
            @(posedge clk);
            wb_cyc <= 1; wb_stb <= 1; wb_we <= 0;
            wb_addr <= addr;
            @(posedge clk);           // 数据有效
            data = wb_rdata;
            wb_cyc <= 0; wb_stb <= 0;
        end
    endtask

    // -------------------------------------------------------
    // 简化的 SD 卡 SPI 从设备模型
    // -------------------------------------------------------
    // 协议简化：CPOL=0, CPHA=0，数据在下降沿改变，上升沿采样。
    // 命令帧：1字节命令 + 4字节参数 + 1字节CRC，之后卡返回R1。
    // 对于 CMD17（单块读），卡返回 0x00 R1，然后 0xFE 数据令牌，随后 512 字节数据，最后 2字节CRC。

    reg [5:0]  byte_cnt;        // 已收发的字节数（从命令字开始）
    reg [7:0]  cmd_index;       // 接收到的命令索引
    reg        sending_data;    // 是否正在输出数据块
    reg [9:0]  data_word_cnt;   // 数据块内已发送的字（每字8位）
    reg [7:0]  data_buf [0:511]; // 伪数据块

    always @(negedge cs_n) begin
        // cs_n 下降沿：复位从设备状态
        byte_cnt <= 0;
        sending_data <= 0;
        // 预填充伪数据
        data_buf[0] = 8'hAA; data_buf[1] = 8'h55; // 简例
    end

    always @(negedge sck) begin
        if (!cs_n) begin
            // 主机在上升沿采样，我们在下降沿更新miso
            // 根据当前 byte_cnt 决定发送什么
            if (byte_cnt == 6) begin
                // 第7个字节：发送 R1 响应
                miso_reg <= 8'h00;          // 无错误
                // 判断命令，决定后续是否发送数据
                if (cmd_index == 8'h51) begin // CMD17 读块
                    sending_data <= 1;
                    data_word_cnt <= 0;
                end
            end else if (sending_data && byte_cnt >= 7) begin
                // 数据阶段：先发送 0xFE 令牌，再发数据，最后CRC
                if (data_word_cnt == 0) begin
                    // 发送起始令牌 0xFE
                    miso_reg <= 8'hFE;
                end else if (data_word_cnt <= 512) begin
                    // 发送数据字节
                    miso_reg <= data_buf[data_word_cnt-1];
                end else begin
                    // 发送 CRC（任意值，这里送0）
                    miso_reg <= 8'h00;
                end
                data_word_cnt <= data_word_cnt + 1;
            end else begin
                // 其他阶段发送 0xFF（总线空闲）
                miso_reg <= 8'hFF;
            end
            // 在接收 bit 方面，我们还需要记录主机发送的命令
            // 为简单起见，我们在 sck 上升沿采样 mosi 来组装命令
        end
    end

    // 在 sck 上升沿采样 mosi，组成接收字节
    reg [7:0] rx_byte;
    reg [2:0] bit_pos;
    always @(posedge sck) begin
        if (!cs_n) begin
            rx_byte <= {rx_byte[6:0], mosi};
            if (bit_pos == 3'd7) begin
                // 接收完一个字节
                if (byte_cnt == 0) begin
                    cmd_index <= rx_byte;   // 第一个字节是命令
                end
                byte_cnt <= byte_cnt + 1;
                bit_pos <= 0;
            end else begin
                bit_pos <= bit_pos + 1;
            end
        end else begin
            bit_pos <= 0;
        end
    end

    // -------------------------------------------------------
    // 主测试流程
    // -------------------------------------------------------
    reg [31:0] status;
    integer i;

    initial begin
        $dumpfile("sdspi.vcd");
        $dumpvars(0, tb_sdspi);

        // 初始化总线
        wb_cyc = 0; wb_stb = 0; wb_we = 0;
        wb_addr = 0; wb_wdata = 0;
        miso_reg = 8'hFF;

        #100;

        // 配置 SPI 时钟分频 (r_sdspi_clk) 为 2（最快），并设置块长度
        // 先写数据寄存器 (ADDR 1) 低7位为 2，其余为0
        wb_write(2'h1, 32'h0000_0002);
        // 再写命令寄存器 (ADDR 0)，高2位为 2'b11 触发配置更新
        wb_write(2'h0, 32'h0000_00C0);    // bits[7:6]=11, 非命令写

        // 发送 CMD0 (复位) 几次，让状态机活动
        for (i = 0; i < 3; i = i + 1) begin
            // 写命令参数（数据寄存器）
            wb_write(2'h1, 32'h0000_0000);  // 参数为0
            // 写命令寄存器，触发命令：命令字节 0x40 (CMD0), 期望R1, 不使用FIFO
            // bits[7:6]=01 (命令), [9:8]=00 (R1), [10]=0, [11]=0
            wb_write(2'h0, {16'h0, 2'b00, 2'b01, 1'b0, 1'b0, 2'b00, 8'h40});
            // 等待中断
            @(posedge intr);
            // 读取状态寄存器（可选）
            wb_read(2'h0, status);
        end

        // 发送 CMD17 (读单块) 命令，测试 FIFO 读
        // 参数（地址）为 0
        wb_write(2'h1, 32'h0000_0000);
        // 命令字节 0x51, 期望R1, 使用FIFO读 (r_use_fifo=1, r_fifo_wr=0) 表示从卡读取到FIFO
        wb_write(2'h0, {16'h0, 2'b00, 2'b00, 1'b1, 1'b0, 2'b00, 8'h51});
        @(posedge intr);
        wb_read(2'h0, status);

        // 重复几次命令序列以增加翻转
        for (i = 0; i < 5; i = i + 1) begin
            wb_write(2'h1, 32'h0);
            wb_write(2'h0, {16'h0, 2'b00, 2'b01, 1'b1, 1'b0, 2'b00, 8'h51});
            @(posedge intr);
        end

        // 再做一些 CMD0 和配置修改
        wb_write(2'h1, 32'h1); // 改变分频为1
        wb_write(2'h0, 32'hC0);
        wb_write(2'h1, 0); wb_write(2'h0, {16'h0, 2'b00, 2'b01, 1'b0, 1'b0, 2'b00, 8'h40});
        @(posedge intr);

        // 等待一段时间后结束
        #50000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule