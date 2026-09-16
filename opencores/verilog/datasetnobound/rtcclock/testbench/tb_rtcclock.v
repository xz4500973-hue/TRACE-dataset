`timescale 1ns / 1ps

module tb_rtcclock;

    reg clk;
    reg i_wb_cyc, i_wb_stb, i_wb_we;
    reg [2:0] i_wb_addr;
    reg [31:0] i_wb_data;
    wire [31:0] o_data;
    wire [31:0] o_sseg;
    wire [15:0] o_led;
    wire o_interrupt, o_ppd;
    reg i_hack;

    // 例化 rtcclock
    rtcclock dut (
        .i_clk(clk),
        .i_wb_cyc(i_wb_cyc),
        .i_wb_stb(i_wb_stb),
        .i_wb_we(i_wb_we),
        .i_wb_addr(i_wb_addr),
        .i_wb_data(i_wb_data),
        .o_data(o_data),
        .o_sseg(o_sseg),
        .o_led(o_led),
        .o_interrupt(o_interrupt),
        .o_ppd(o_ppd),
        .i_hack(i_hack)
    );

    // 时钟：100MHz
    initial clk = 0;
    always #5 clk = ~clk;

    // Wishbone 写任务
    task wb_write;
        input [2:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            i_wb_cyc  <= 1;
            i_wb_stb  <= 1;
            i_wb_we   <= 1;
            i_wb_addr <= addr;
            i_wb_data <= data;
            @(posedge clk);
            i_wb_cyc  <= 0;
            i_wb_stb  <= 0;
            i_wb_we   <= 0;
        end
    endtask

    initial begin
        // ① 生成 VCD
        $dumpfile("rtcclock.vcd");
        $dumpvars(0, tb_rtcclock);

        // 初始化
        i_wb_cyc  = 0;
        i_wb_stb  = 0;
        i_wb_we   = 0;
        i_wb_addr = 0;
        i_wb_data = 0;
        i_hack    = 0;

        #100;

        // ② 加速时钟：写入最大 ckspeed，使内部快速翻转
        wb_write(3'b100, 32'hFFFFFFFF);

        // ③ 设置当前时间：设为 23:59:50 (接近闹钟时间)
        wb_write(3'b000, {6'h00, 4'h0, 22'h235950});

        // ④ 设置闹钟：23:59:58 且使能
        wb_write(3'b011, {6'h00, 1'b0, 1'b1, 2'b00, 22'h235958});

        // ⑤ 启动递减计时器：初始值 0x000012 (约 18 秒)，开始运行
        wb_write(3'b001, {6'h00, 2'b00, 24'h000012});

        // ⑥ 启动秒表：bit0=1
        wb_write(3'b010, 32'h00000001);

        // ⑦ 仿真运行 2ms，足够发生数次秒脉冲和闹钟触发
        #2_000_000;

        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule