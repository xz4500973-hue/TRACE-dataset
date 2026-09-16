`timescale 1ns / 1ps

module tb_top_unified;

    reg         clk;
    reg         rst_n;
    reg  [1:0]  sel_op;
    reg  [31:0] a, b;
    reg         start_div;
    wire [31:0] c;
    wire        div_done;

    // 实例化顶层
    top u_top (
        .clk        (clk),
        .rst_n      (rst_n),
        .sel_op     (sel_op),
        .a          (a),
        .b          (b),
        .start_div  (start_div),
        .c          (c),
        .div_done   (div_done)
    );

    // 100MHz 时钟
    initial clk = 0;
    always #5 clk = ~clk;

    // 随机种子
    integer seed;

    // 主测试流程
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("qcalc_unified.vcd");
        $dumpvars(0, tb_top_unified);

        // 初始化
        rst_n     = 1'b0;
        sel_op    = 2'b00;
        a         = 32'b0;
        b         = 32'b0;
        start_div = 1'b0;
        seed      = 12345;

        // 复位释放
        #100;
        rst_n = 1'b1;
        #100;

        // ② 混合随机测试 500 次
        repeat (500) begin
            // 随机操作选择
            sel_op = $random(seed) % 3;    // 0,1,2 对应加、乘、除

            // 生成随机输入（注意符号）
            a = $random(seed);
            b = $random(seed);

            // 对于除法，需要启动脉冲
            if (sel_op == 2'b10) begin
                // 除法器要求启动脉冲至少一个周期
                @(posedge clk);
                start_div = 1'b1;
                @(posedge clk);
                start_div = 1'b0;
                // 等待除法完成
                while (!div_done) @(posedge clk);
            end else begin
                // 加法和乘法是组合逻辑，等待一个周期让输出稳定
                @(posedge clk);
            end

            // 随机空闲 1~3 个时钟周期
            repeat($random(seed) % 3 + 1) @(posedge clk);
        end

        // ③ 额外多运行一段时间，观察最后的波形
        #200;
        $display("=== Simulation finished ===");
        $finish;
    end

endmodule