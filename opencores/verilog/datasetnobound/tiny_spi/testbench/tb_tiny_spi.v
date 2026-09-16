`timescale 1ns / 100ps

module tb_tiny_spi;

    reg rst_i;
    reg clk_i;
    reg stb_i;
    reg we_i;
    reg [2:0] adr_i;
    reg [31:0] dat_i;
    reg cyc_i;
    wire [31:0] dat_o;
    wire ack_o;
    wire int_o;
    wire MOSI;
    wire SCLK;
    reg  MISO;

    // 参数与模块默认一致
    tiny_spi #(
        .BAUD_WIDTH(8),
        .BAUD_DIV(0),       // 使用可编程分频
        .SPI_MODE(0),       // 模式 0
        .BC_WIDTH(3)
    ) uut (
        .rst_i(rst_i),
        .clk_i(clk_i),
        .stb_i(stb_i),
        .we_i(we_i),
        .dat_o(dat_o),
        .dat_i(dat_i),
        .int_o(int_o),
        .adr_i(adr_i),
        .cyc_i(cyc_i),
        .ack_o(ack_o),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .MISO(MISO)
    );

    // 时钟：50 MHz (周期 20 ns)
    initial clk_i = 0;
    always #10 clk_i = ~clk_i;

    // 写寄存器任务
    task write_reg;
        input [2:0] addr;
        input [31:0] data;
        begin
            @(posedge clk_i);
            adr_i <= addr;
            dat_i <= data;
            we_i  <= 1'b1;
            stb_i <= 1'b1;
            cyc_i <= 1'b1;
            @(posedge clk_i);   // 等待 ack
            stb_i <= 1'b0;
            cyc_i <= 1'b0;
            we_i  <= 1'b0;
        end
    endtask

    // 读寄存器任务（可选，用于调试）
    task read_reg;
        input [2:0] addr;
        output [31:0] data;
        begin
            @(posedge clk_i);
            adr_i <= addr;
            we_i  <= 1'b0;
            stb_i <= 1'b1;
            cyc_i <= 1'b1;
            @(posedge clk_i);
            data = dat_o;
            stb_i <= 1'b0;
            cyc_i <= 1'b0;
        end
    endtask

    integer i;
    reg [31:0] rdata;

    initial begin
        // ① 生成 VCD
        $dumpfile("tiny_spi.vcd");
        $dumpvars(0, tb_tiny_spi);

        // ② 初始化
        rst_i = 1;
        stb_i = 0;
        we_i  = 0;
        cyc_i = 0;
        adr_i = 0;
        dat_i = 0;
        MISO  = 0;   // 初始低电平

        #100;
        rst_i = 0;
        #100;

        // ③ 配置波特率分频器：设置为 1（快速时钟，SCK = clk/4）
        //    地址 4 是波特率寄存器
        write_reg(3'd4, 32'd1);

        // ④ 使能中断（可选，不影响传输，但让中断逻辑活动）
        //    地址 2：bit1 = txe_en, bit0 = txr_en
        write_reg(3'd2, 32'h3);

        // ⑤ 反复发送数据，每次写完一字节后立即触发传输（wstb）
        //    为了增加翻转，每次发送的数据随机变化
        for (i = 0; i < 256; i = i + 1) begin
            // 在写下一个字节之前，可选地改变 MISO 值（模拟外部输入）
            MISO <= $random % 2;    // 随机 bit，让接收移位寄存器产生变化

            // 写发送缓冲（地址 1），自动启动传输
            write_reg(3'd1, $random % 256);

            // 等待传输完成（可通过轮询状态寄存器或简单延时）
            // 这里延时足够多个 SCK 周期：SCK 周期 ≈ 4*20ns = 80ns，8位需 640ns，给 1us
            #1000;
        end

        // ⑥ 再单独测试接收：把 MISO 接成与 MOSI 相同（环回），产生已知数据
        //    但之前已经用随机 MISO 测试了，这里再发几个固定字节
        MISO <= 1'b0;
        write_reg(3'd1, 8'hA5);
        #2000;
        write_reg(3'd1, 8'h5A);
        #2000;

        // ⑦ 仿真结束
        #5000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule