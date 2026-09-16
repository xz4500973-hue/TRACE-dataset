`timescale 1ns / 1ps

module tb_DPSFmnCE_power;

    reg Rst, Clk, WE, RE;
    reg [15:0] DI;
    wire [15:0] DO;
    wire FF, EF, HF;
    wire [4:0] Cnt;

    DPSFnmCE uut (
        .Rst(Rst), .Clk(Clk), .WE(WE), .RE(RE),
        .DI(DI), .DO(DO), .FF(FF), .EF(EF),
        .HF(HF), .Cnt(Cnt)
    );

    // 时钟
    always #5 Clk = ~Clk;

    // FIFO 写任务
    task FIFO_Wr;
        input [15:0] Data;
        begin
            @(posedge Clk);
            #1 WE = 1; DI = Data;
            @(posedge Clk);
            #1 WE = 0;
        end
    endtask

    // FIFO 读任务
    task FIFO_Rd;
        begin
            @(posedge Clk);
            #1 RE = 1;
            @(posedge Clk);
            #1 RE = 0;
        end
    endtask

    // FIFO 同时读写任务
    task FIFO_RW;
        input [15:0] Data;
        begin
            @(posedge Clk);
            #1 WE = 1; RE = 1; DI = Data;
            @(posedge Clk);
            #1 WE = 0; RE = 0;
        end
    endtask

    integer i;
    reg [31:0] seed;

    initial begin
        // ① 生成 VCD
        $dumpfile("DPSFnmCE.vcd");
        $dumpvars(0, tb_DPSFmnCE_power);

        // 初始化
        Rst = 1; Clk = 1; WE = 0; RE = 0; DI = 0;
        seed = 22222;

        #100;
        Rst = 0;

        // ② 原测试序列（部分）
        FIFO_Wr(16'h1111); FIFO_Wr(16'h2222); FIFO_Wr(16'h3333); FIFO_Wr(16'h4444);
        FIFO_Wr(16'h5555); FIFO_Wr(16'h6666); FIFO_Wr(16'h7777); FIFO_Wr(16'h8888);
        FIFO_Wr(16'h9999); FIFO_Wr(16'hAAAA); FIFO_Wr(16'hBBBB); FIFO_Wr(16'hCCCC);
        FIFO_Wr(16'hDDDD); FIFO_Wr(16'hEEEE); FIFO_Wr(16'hFFFF); FIFO_Wr(16'h0000);
        FIFO_Rd;
        FIFO_Wr(16'h0001);
        repeat(16) FIFO_Rd; // 简化连续读

        // ③ 增加随机测试，提升翻转覆盖率
        for (i = 0; i < 400; i = i + 1) begin
            if ($random(seed) % 2)
                FIFO_Wr($random(seed) % 65536);
            else
                FIFO_Rd;
            // 随机加一些同时读写
            if ($random(seed) % 5 == 0)
                FIFO_RW($random(seed) % 65536);
        end

        #200;
        $finish;
    end

endmodule