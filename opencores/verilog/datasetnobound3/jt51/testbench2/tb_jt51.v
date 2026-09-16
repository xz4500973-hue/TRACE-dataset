`timescale 1ns / 1ps

module tb_jt51;

    // 时钟和复位
    reg clk;
    reg rst;
    
    // JT51 接口信号
    reg cs_n;
    reg wr_n;
    reg a0;
    reg [7:0] d_in;
    wire [7:0] d_out;
    wire irq_n;
    wire sample;
    wire signed [15:0] xleft;
    wire signed [15:0] xright;

    // 实例化 JT51（网表顶层模块名通常为 jt51，如果不同请修改）
    jt51 u_jt51 (
        .clk    (clk),
        .rst    (rst),
        .cs_n   (cs_n),
        .wr_n   (wr_n),
        .a0     (a0),
        .d_in   (d_in),
        .d_out  (d_out),
        .irq_n  (irq_n),
        .sample (sample),
        .xleft  (xleft),
        .xright (xright)
    );

    // 时钟生成（假设主时钟频率为 50MHz，可根据实际调整）
    initial clk = 0;
    always #10 clk = ~clk;   // 50MHz

    // 复位释放
    initial begin
        rst = 1;
        #100;
        rst = 0;
    end

    // 写寄存器任务（简化 JT51 写时序：先写地址，后写数据）
    task write_jt51;
        input [7:0] addr;
        input [7:0] data;
        begin
            @(posedge clk);
            cs_n = 0;
            // 写地址周期 (a0 = 0)
            a0 = 0;
            d_in = addr;
            wr_n = 0;
            @(posedge clk);
            wr_n = 1;
            // 写数据周期 (a0 = 1)
            a0 = 1;
            d_in = data;
            wr_n = 0;
            @(posedge clk);
            wr_n = 1;
            cs_n = 1;
            @(posedge clk);
        end
    endtask

    // 主激励
    initial begin
        $dumpfile("jt51_gate.vcd");
        $dumpvars(0, tb_jt51);

        // 初始值
        cs_n = 1;
        wr_n = 1;
        a0 = 0;
        d_in = 8'h00;

        #200;   // 等待复位结束

        // 执行一系列寄存器写操作，使内部逻辑翻转
        write_jt51(8'h00, 8'h01);
        write_jt51(8'h01, 8'h02);
        write_jt51(8'h02, 8'h03);
        write_jt51(8'h10, 8'hF0);
        write_jt51(8'h11, 8'h04);
        write_jt51(8'h20, 8'h7F);
        write_jt51(8'h21, 8'h7F);
        write_jt51(8'h30, 8'h00);
        write_jt51(8'h31, 8'h00);
        write_jt51(8'h22, 8'h55);
        write_jt51(8'h23, 8'hAA);

                // 低速扫描：长间隔，少量固定值，低翻转率
        for (int d = 0; d < 100; d = d + 1) begin
            #200;
            write_jt51(8'h20, 8'h55);
            write_jt51(8'h21, 8'hAA);
            #200;
            write_jt51(8'h30, 8'h00);
            write_jt51(8'h31, 8'hFF);
        end

        #500000;
        $finish;
    end

endmodule