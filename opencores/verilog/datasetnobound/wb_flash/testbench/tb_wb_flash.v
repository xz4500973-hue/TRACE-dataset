`timescale 1ns / 1ps

module tb_wb_flash;

    // 参数与原模块默认一致
    parameter aw = 19;
    parameter dw = 32;
    parameter ws = 4'hf;  // 15 个等待状态

    reg clk_i;
    reg nrst_i;
    reg [aw-1:0] wb_adr_i;
    wire [dw-1:0] wb_dat_o;
    reg [dw-1:0] wb_dat_i;
    reg [3:0] wb_sel_i;
    reg wb_we_i;
    reg wb_stb_i;
    reg wb_cyc_i;
    wire wb_ack_o;

    wire [18:0] flash_adr_o;
    wire [7:0] flash_dat_o;
    reg [7:0] flash_dat_i;      // 模拟 Flash 数据输出
    wire flash_oe;
    wire flash_ce;
    wire flash_we;

    // 例化被测模块
    wb_flash #(.aw(aw), .dw(dw), .ws(ws)) uut (
        .clk_i(clk_i),
        .nrst_i(nrst_i),
        .wb_adr_i(wb_adr_i),
        .wb_dat_o(wb_dat_o),
        .wb_dat_i(wb_dat_i),
        .wb_sel_i(wb_sel_i),
        .wb_we_i(wb_we_i),
        .wb_stb_i(wb_stb_i),
        .wb_cyc_i(wb_cyc_i),
        .wb_ack_o(wb_ack_o),
        .flash_adr_o(flash_adr_o),
        .flash_dat_o(flash_dat_o),
        .flash_dat_i(flash_dat_i),
        .flash_oe(flash_oe),
        .flash_ce(flash_ce),
        .flash_we(flash_we)
    );

    // 100MHz 时钟
    initial clk_i = 0;
    always #5 clk_i = ~clk_i;

    // Wishbone 写任务
    task wb_write;
        input [aw-1:0] addr;
        input [31:0] data;
        input [3:0] sel;      // 字节使能
        begin
            @(posedge clk_i);
            wb_adr_i <= addr;
            wb_dat_i <= data;
            wb_sel_i <= sel;
            wb_we_i  <= 1'b1;
            wb_cyc_i <= 1'b1;
            wb_stb_i <= 1'b1;
            @(posedge clk_i);
            // 等待 ack
            while (!wb_ack_o) @(posedge clk_i);
            wb_cyc_i <= 1'b0;
            wb_stb_i <= 1'b0;
            wb_we_i  <= 1'b0;
        end
    endtask

    // Wishbone 读任务
    task wb_read;
        input [aw-1:0] addr;
        input [3:0] sel;
        output [31:0] data;
        begin
            @(posedge clk_i);
            wb_adr_i <= addr;
            wb_sel_i <= sel;
            wb_we_i  <= 1'b0;
            wb_cyc_i <= 1'b1;
            wb_stb_i <= 1'b1;
            @(posedge clk_i);
            while (!wb_ack_o) @(posedge clk_i);
            data = wb_dat_o;
            wb_cyc_i <= 1'b0;
            wb_stb_i <= 1'b0;
        end
    endtask

    integer i;
    reg [31:0] rdata;
    reg [7:0]  flash_mem [0:2**aw-1];   // 简易 Flash 存储模型

    initial begin
        // ① 生成 VCD
        $dumpfile("wb_flash.vcd");
        $dumpvars(0, tb_wb_flash);

        // 初始化信号
        nrst_i = 1'b0;
        wb_adr_i = 0;
        wb_dat_i = 0;
        wb_sel_i = 4'b0;
        wb_we_i  = 1'b0;
        wb_cyc_i = 1'b0;
        wb_stb_i = 1'b0;
        flash_dat_i = 8'hFF;      // Flash 默认读出 0xFF

        // 异步复位释放
        #100;
        nrst_i = 1'b1;
        #100;

        // ② 初始化 Flash 模型内容（可选）
        for (i = 0; i < 1024; i = i + 1) begin
            flash_mem[i] = i % 256;   // 填充一些递增数据
        end

        // ③ 执行一系列混合读写操作
        // 写单个字节 (sel=0001)
        wb_write(19'h0, 32'hA5, 4'b0001);
        wb_write(19'h1, 32'h5A, 4'b0001);
        wb_write(19'h2, 32'h12, 4'b0001);
        wb_write(19'h3, 32'h34, 4'b0001);

        // 写 16 位 (sel=0011)
        wb_write(19'h4, 32'h5678, 4'b0011);

        // 写 32 位 (sel=1111)
        wb_write(19'h8, 32'hDEADBEEF, 4'b1111);

        // 读回并检查
        wb_read(19'h0, 4'b1111, rdata);
        $display("Read addr 0x0: 0x%h", rdata);

        // ⑤ 模拟大量随机读写，增强翻转
        for (i = 0; i < 200; i = i + 1) begin
            // 随机地址（19位）
            reg [18:0] rand_addr = $random % (2**aw);
            // 随机字节选择
            reg [3:0] rand_sel = $random % 16;
            if (rand_sel == 0) rand_sel = 4'b0001; // 至少一个字节有效
            // 随机读写
            if ($random % 2) begin
                wb_write(rand_addr, $random % 4294967296, rand_sel);
            end else begin
                wb_read(rand_addr, rand_sel, rdata);
            end
        end

        // ⑥ 仿真结束
        #1000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

    // Flash 读操作模型：当 flash_oe 有效且 flash_ce 有效时返回数据
    always @(posedge clk_i) begin
        if (!flash_ce && !flash_oe) begin
            flash_dat_i <= flash_mem[flash_adr_o];
        end else begin
            flash_dat_i <= 8'hFF;   // 空闲
        end
    end

endmodule