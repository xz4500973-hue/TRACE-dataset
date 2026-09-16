`timescale 1ns / 1ps
`include "lcd_defines.v"

module tb_wb_lcd;

    // 时钟与复位
    reg wb_clk_i;
    reg wb_rst_i;

    // Wishbone 接口
    reg  [`WB_DAT_RNG]  wb_dat_i;
    wire [`WB_DAT_RNG]  wb_dat_o;
    reg  [`WB_ADDR_RNG] wb_adr_i;
    reg  [`WB_BSEL_RNG] wb_sel_i;
    reg                 wb_we_i;
    reg                 wb_cyc_i;
    reg                 wb_stb_i;
    wire                wb_ack_o;
    wire                wb_err_o;

    // LCD 接口
    wire [3:0] SF_D;
    wire       LCD_E;
    wire       LCD_RS;
    wire       LCD_RW;

    // 例化 DUT
    wb_lcd uut (
        .wb_clk_i   (wb_clk_i),
        .wb_rst_i   (wb_rst_i),
        .wb_dat_i   (wb_dat_i),
        .wb_dat_o   (wb_dat_o),
        .wb_adr_i   (wb_adr_i),
        .wb_sel_i   (wb_sel_i),
        .wb_we_i    (wb_we_i),
        .wb_cyc_i   (wb_cyc_i),
        .wb_stb_i   (wb_stb_i),
        .wb_ack_o   (wb_ack_o),
        .wb_err_o   (wb_err_o),
        .SF_D       (SF_D),
        .LCD_E      (LCD_E),
        .LCD_RS     (LCD_RS),
        .LCD_RW     (LCD_RW)
    );

    // 50MHz 时钟
    initial wb_clk_i = 0;
    always #10 wb_clk_i = ~wb_clk_i;  // 20ns 周期

    // Wishbone 写任务（单周期访问，等待 ack）
    task wb_write;
        input [`WB_ADDR_RNG] addr;
        input [`WB_DAT_RNG]  data;
        begin
            @(posedge wb_clk_i);
            wb_adr_i <= addr;
            wb_dat_i <= data;
            wb_sel_i <= 4'b0001;      // 低字节有效（实际数据只用低8位）
            wb_we_i  <= 1'b1;
            wb_cyc_i <= 1'b1;
            wb_stb_i <= 1'b1;
            // 等待 ack 有效（ack 在第一个周期后拉高，再过一个周期拉低）
            @(posedge wb_clk_i);      // ack 会在此时变成高？
            while (!wb_ack_o) @(posedge wb_clk_i);
            @(posedge wb_clk_i);      // 等待 ack 下降沿，结束周期
            wb_cyc_i <= 1'b0;
            wb_stb_i <= 1'b0;
            wb_we_i  <= 1'b0;
        end
    endtask

    // Wishbone 读任务（用于读取状态）
    task wb_read;
        input  [`WB_ADDR_RNG] addr;
        output [`WB_DAT_RNG]  data;
        begin
            @(posedge wb_clk_i);
            wb_adr_i <= addr;
            wb_sel_i <= 4'b0001;
            wb_we_i  <= 1'b0;
            wb_cyc_i <= 1'b1;
            wb_stb_i <= 1'b1;
            @(posedge wb_clk_i);
            while (!wb_ack_o) @(posedge wb_clk_i);
            data = wb_dat_o;          // 此时数据稳定
            @(posedge wb_clk_i);
            wb_cyc_i <= 1'b0;
            wb_stb_i <= 1'b0;
        end
    endtask

    integer i;
    reg [31:0] rdata;
    reg [7:0]  chr;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("wb_lcd.vcd");
        $dumpvars(0, tb_wb_lcd);

        // 初始化总线信号
        wb_rst_i = 1'b1;
        wb_adr_i = 0;
        wb_dat_i = 0;
        wb_sel_i = 4'b0;
        wb_we_i  = 1'b0;
        wb_cyc_i = 1'b0;
        wb_stb_i = 1'b0;

        // 复位释放
        #100;
        wb_rst_i = 1'b0;
        #100;

        // ② 等待初始化完成（状态寄存器返回 0）
        $display("Waiting for LCD initialization...");
        wb_read(32'h80, rdata);       // 读任意地址，返回 status
        while (rdata[0] == 1'b1) begin // busy 位为 1 则继续等待
            #1000;                    // 减少轮询频率
            wb_read(32'h80, rdata);
        end
        $display("Initialization done at %0t ns", $time);

        // ③ 写入第一行字符（地址 0-15）
        for (i = 0; i < 16; i = i + 1) begin
            chr = 8'h41 + i;          // 字母 'A' 开始
            wb_write(i, {24'h0, chr});
        end

        // ④ 写入第二行字符（地址 64-79）
        for (i = 0; i < 16; i = i + 1) begin
            chr = 8'h61 + i;          // 字母 'a' 开始
            wb_write(8'h40 + i, {24'h0, chr});
        end

        // ⑤ 触发 repaint 命令
        $display("Triggering repaint...");
        wb_write(`COMMAND_REG_ADDR, `COMMAND_REPAINT_CODE);

        // ⑥ 等待 repaint 完成
        wb_read(32'h80, rdata);
        while (rdata[0] == 1'b1) begin
            #10000;
            wb_read(32'h80, rdata);
        end
        $display("Repaint complete at %0t ns", $time);

        // ⑦ 再执行几次：修改字符 + 重新刷新，增加翻转
        for (i = 0; i < 5; i = i + 1) begin
            // 修改部分字符
            wb_write(0, {24'h0, 8'h30 + i});   // 数字 '0'..
            wb_write(8'h40, {24'h0, 8'h50 + i}); // 'P'..
            // 触发 repaint
            wb_write(`COMMAND_REG_ADDR, `COMMAND_REPAINT_CODE);
            // 等待完成
            wb_read(32'h80, rdata);
            while (rdata[0] == 1'b1) begin
                #10000;
                wb_read(32'h80, rdata);
            end
        end

        // ⑧ 仿真结束
        #1000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule