`timescale 1ns / 1ps

module PWM_tb;

    reg wb_clk = 0;
    reg extclk = 0;
    reg rst = 1;
    reg [15:0] wb_data = 0;
    reg [15:0] wb_adr = 0;
    reg wb_cyc = 0, wb_stb = 0, wb_we = 0;
    wire wb_ack;
    wire [15:0] wb_o_data;
    wire [15:0] extDC;
    assign extDC = 60;
    wire pwm;

    reg [31:0] configdata [0:20];
    reg [4:0] nconfig = 0;
    reg ready = 1;

    // DUT 例化
    PWM PWM_0 (
        wb_clk, rst, wb_cyc, wb_stb, wb_we,
        wb_adr, wb_data, wb_o_data, wb_ack,
        extclk, extDC, 1'b1, pwm
    );

    // 时钟
    always #10 wb_clk = ~wb_clk;   // 50MHz
    always #1  extclk = ~extclk;   // 500MHz

    // 复位
    initial #20 rst = 0;

    // 配置数据
    initial begin
        configdata[0]  = 32'h40303;
        configdata[1]  = 32'h600ed;
        configdata[2]  = 31'h17;
        configdata[3]  = 32'h80;
        configdata[4]  = 32'h20005;
        configdata[5]  = 32'h401a1;
        configdata[6]  = 32'h1c;
        configdata[7]  = 32'h1c;
        configdata[8]  = 32'h41d00;
        configdata[9]  = 32'h61000;
        configdata[10] = 32'h56;
        configdata[11] = 32'h80;
        configdata[12] = 32'h20008;
        configdata[13] = 32'h400aa;
        configdata[14] = 32'h15;
        configdata[15] = 32'h15;
        configdata[16] = 32'h80;
        configdata[17] = 32'h20005;
        configdata[18] = 32'h401a1;
        configdata[19] = 32'h15;
        configdata[20] = 32'h15;
    end

    // 总线驱动任务
    task driver;
        begin
            @(posedge wb_clk);
            wb_cyc <= 1;
            wb_stb <= 1;
            wb_we  <= 1;
            wb_adr <= configdata[nconfig][31:16];
            wb_data <= configdata[nconfig][15:0];
            nconfig <= nconfig + 1;
            while (!wb_ack) @(posedge wb_clk);
            wb_cyc <= 0;
            wb_stb <= 0;
            wb_we  <= 0;
        end
    endtask

    // 主测试流程
    initial begin
        // ① 生成 VCD
        $dumpfile("PWM.vcd");
        $dumpvars(0, PWM_tb);

        // ② 等待复位释放
        @(negedge rst);

        // ③ 多次发送配置序列，让 PWM 在不同参数下运行
        repeat (10) begin
            nconfig = 0;
            ready = 1;
            while (nconfig < 21) begin
                if (ready && !rst) driver;
                #100;   // 间隔一段时间再发下一个配置
            end
            #50000;   // 等待 PWM 工作一段时间
        end

        // ④ 仿真结束
        #100000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule