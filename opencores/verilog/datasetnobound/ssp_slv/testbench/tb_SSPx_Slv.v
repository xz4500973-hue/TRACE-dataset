`timescale 1ns / 1ps

module tb_SSPx_Slv_v;

    // UUT Ports
    reg        Rst;
    reg        SSEL;
    reg        SCK;
    reg        MOSI;
    wire       MISO;

    wire [2:0] RA;
    wire       WnR;
    wire       En;
    wire       EOC;
    wire [11:0] DI;
    reg  [11:0] DO;

    wire [3:0] BC;

    // Instantiate the Unit Under Test (UUT)
    SSPx_Slv uut (
        .Rst  (Rst),
        .SSEL (SSEL),
        .SCK  (SCK),
        .MOSI (MOSI),
        .MISO (MISO),
        .RA   (RA),
        .WnR  (WnR),
        .En   (En),
        .EOC  (EOC),
        .DI   (DI),
        .DO   (DO),
        .BC   (BC)
    );

    // Task SSP Write (保持不变)
    task SSP;
        input [2:0]  RAIn;
        input        Cmd;
        input [11:0] DIn;
        input [11:0] DOut;
        begin
               SSEL = 1; MOSI = RAIn[2]; DO = DOut;
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = RAIn[1];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = RAIn[0];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = Cmd;
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[11];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[10];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 9];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 8];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 7];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 6];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 5];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 4];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 3];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 2];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 1];
            #5 SCK  = 1;
            #5 SCK  = 0; MOSI = DIn[ 0];
            #5 SCK  = 1;
            #5 SCK  = 0; SSEL = 0;
            #10;
        end
    endtask

    integer seed;      // 随机种子
    integer i;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("SSPx_Slv.vcd");
        $dumpvars(0, tb_SSPx_Slv_v);

        // ② 初始化与复位
        Rst  = 1;
        SSEL = 0;
        SCK  = 0;
        MOSI = 0;
        DO   = 16'b0;
        #100 Rst = 0;
        #100;

        // ③ 原测试序列（单次传输，保留作为基本验证）
        $display("Original single SSP transfer test");
        SSP(3'h7, 1'b1, 12'h556, 12'hAA9);

        // ④ 大量随机传输，产生丰富的内部信号翻转
        seed = 12345;
        $display("Starting random transfer loop...");
        for (i = 0; i < 500; i = i + 1) begin
            // 随机产生寄存器地址、读写命令、输入数据和期望输出数据
            SSP($random(seed) % 8,           // RAIn  (0~7)
                $random(seed) % 2,           // Cmd   (0/1)
                $random(seed) % 4096,        // DIn   (12位)
                $random(seed) % 4096);       // DOut  (12位)
        end

        // ⑤ 仿真结束
        #1000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule