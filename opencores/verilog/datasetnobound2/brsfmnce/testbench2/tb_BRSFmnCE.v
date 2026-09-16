`timescale 1ns / 1ps

module tb_BRSFmnCE_power;

    reg Rst, Clk, Clr, WE, RE;
    reg [7:0] DI;
    wire [7:0] DO;
    wire ACK, FF, AF, HF, AE, EF;
    wire [10:0] Cnt;

    integer i, cycle;
    reg [31:0] seed;

    BRSFmnCE uut (
        .Rst(Rst), .Clk(Clk), .Clr(Clr),
        .WE(WE), .DI(DI), .RE(RE),
        .DO(DO), .ACK(ACK),
        .FF(FF), .AF(AF), .HF(HF), .AE(AE), .EF(EF),
        .Cnt(Cnt)
    );

    // 时钟
    always #5 Clk = ~Clk;

    initial begin
        $dumpfile("BRSFmnCE.vcd");
        $dumpvars(0, tb_BRSFmnCE_power);

        Rst = 1; Clk = 1; Clr = 0;
        WE = 0; RE = 0; DI = 0;
        seed = 22222;
        #101 Rst = 0;

        // 执行 10 次填充–排空循环
        for (cycle = 0; cycle < 30; cycle = cycle + 1) begin
            // --- 填充到 Almost Full ---
            while (~AF) begin
                @(posedge Clk) #1;
                DI = $random(seed);
                WE = ~FF;
            end
            WE = 0;

            // --- 排空到 Almost Empty ---
            RE = ~EF;
            while (~AE) begin
                @(posedge Clk) #1;
                RE = ~EF;
            end
            RE = 0;

            // 随机空闲间隔
            repeat($random(seed) % 5 + 1) @(posedge Clk);
        end

        // 测试单次读写
        @(posedge Clk) #1; WE = 1; DI = $random;
        @(posedge Clk) #1; WE = 0;
        @(posedge Clk) #1; RE = 1;
        @(posedge Clk) #1; RE = 0;

        #2000;
        $finish;
    end

endmodule