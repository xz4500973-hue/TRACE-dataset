`timescale 1ns / 1ps

module tb_wbfmtxhack;

    // 时钟与复位
    reg clk;
    reg rst_n;

    // Wishbone 接口
    reg         wb_cyc;
    reg         wb_stb;
    reg         wb_we;
    reg         wb_addr;           // 0: 采样/数据, 1: NCO 步进
    reg  [31:0] wb_data;
    wire        wb_ack;
    wire        wb_stall;
    wire [31:0] wb_rdata;
    wire        o_int;

    // RF 输出
    wire        o_tx;

    // 例化 DUT
    wbfmtxhack dut (
        .i_clk       (clk),
        .i_wb_cyc    (wb_cyc),
        .i_wb_stb    (wb_stb),
        .i_wb_we     (wb_we),
        .i_wb_addr   (wb_addr),
        .i_wb_data   (wb_data),
        .o_wb_ack    (wb_ack),
        .o_wb_stall  (wb_stall),
        .o_wb_data   (wb_rdata),
        .o_tx        (o_tx),
        .o_int       (o_int)
    );

    // 100MHz 时钟
    initial clk = 0;
    always #5 clk = ~clk;

    // Wishbone 写任务
    task wb_write;
        input addr;
        input [31:0] data;
        begin
            @(posedge clk);
            wb_cyc  <= 1;
            wb_stb  <= 1;
            wb_we   <= 1;
            wb_addr <= addr;
            wb_data <= data;
            @(posedge clk);         // 等待 ack（组合逻辑，下一周期有效）
            wb_cyc  <= 0;
            wb_stb  <= 0;
            wb_we   <= 0;
        end
    endtask

    // Wishbone 读任务
    task wb_read;
        input  addr;
        output [31:0] data;
        begin
            @(posedge clk);
            wb_cyc  <= 1;
            wb_stb  <= 1;
            wb_we   <= 0;
            wb_addr <= addr;
            @(posedge clk);         // 数据有效
            data = wb_rdata;
            wb_cyc  <= 0;
            wb_stb  <= 0;
        end
    endtask

    integer i;
    reg [31:0] rdata;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("wbfmtxhack.vcd");
        $dumpvars(0, tb_wbfmtxhack);

        // 初始化
        wb_cyc  = 0;
        wb_stb  = 0;
        wb_we   = 0;
        wb_addr = 0;
        wb_data = 0;

        // ② 上电复位（模块内部没有复位引脚，但寄存器有 initial 值，直接开始）
        #100;

        // ③ 设置采样率（写地址 0，高 16 位不为 0）
        // 使用原设计的默认值 1814，对应 80MHz 时钟下约 44.1kHz 采样率
        wb_write(1'b0, {16'd1814, 16'h8000});   // 同时写入一个初始音频采样值

        // ④ 设置多个不同的 NCO 频率步进，产生不同的载波频率
        // 载波频率计算: f_carrier = step * f_clk / 2^32
        // 例如 step = 32'h4000_0000 对应 100MHz * 0.25 = 25 MHz
        wb_write(1'b1, 32'h20000000);   // ~12.5 MHz
        #100000;                         // 运行 100us
        wb_write(1'b1, 32'h40000000);   // ~25 MHz
        #100000;
        wb_write(1'b1, 32'h10000000);   // ~6.25 MHz
        #100000;
        wb_write(1'b1, 32'h08000000);   // ~3.125 MHz
        #100000;

        // ⑤ 再写一些随机音频采样值（地址 0，低 16 位），观察 FM 调制效果
        for (i = 0; i < 50; i = i + 1) begin
            @(posedge clk);
            wb_write(1'b0, {16'd0, $random % 65536});  // 只写采样值，不改变采样率
            #5000;   // 等待一段时间
        end

        // ⑥ 仿真结束
        #50000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule