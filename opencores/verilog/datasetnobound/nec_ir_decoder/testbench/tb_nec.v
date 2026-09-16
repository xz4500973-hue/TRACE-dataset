`timescale 1ns / 1ps

module tb_nec;

    reg clk;
    reg rst;
    reg ir;
    wire [7:0] led;

    // 实例化待测模块
    nec u_dut (
        .clk(clk),
        .rst(rst),
        .ir(ir),
        .led(led)
    );

    // 50MHz 时钟 (周期 20ns)
    initial clk = 0;
    always #10 clk = ~clk;

    // NEC 协议参数 (基于 50MHz 时钟)
    // 引导码: 9ms 低, 4.5ms 高
    localparam LEADER_LOW  = 450000;   // 9ms / 20ns = 450000 个周期
    localparam LEADER_HIGH = 225000;   // 4.5ms / 20ns
    // 位时间: 562.5us 低, 562.5us 高 (逻辑0) 或 1.6875ms 高 (逻辑1)
    localparam BIT_LOW      = 28125;   // 562.5us / 20ns
    localparam BIT_HIGH_0   = 28125;   // 逻辑0高电平
    localparam BIT_HIGH_1   = 84375;   // 逻辑1高电平

    // 发送一个 NEC 帧 (LSB first)
    task send_nec_frame;
        input [7:0] addr;
        input [7:0] cmd;
        integer i;
        begin
            // 引导码
            ir = 1'b0;
            repeat(LEADER_LOW) @(posedge clk);
            ir = 1'b1;
            repeat(LEADER_HIGH) @(posedge clk);

            // 发送地址字节
            for (i = 0; i < 8; i = i + 1) begin
                ir = 1'b0;
                repeat(BIT_LOW) @(posedge clk);
                ir = 1'b1;
                if (addr[i])
                    repeat(BIT_HIGH_1) @(posedge clk);
                else
                    repeat(BIT_HIGH_0) @(posedge clk);
            end

            // 发送地址反码
            for (i = 0; i < 8; i = i + 1) begin
                ir = 1'b0;
                repeat(BIT_LOW) @(posedge clk);
                ir = 1'b1;
                if (~addr[i])
                    repeat(BIT_HIGH_1) @(posedge clk);
                else
                    repeat(BIT_HIGH_0) @(posedge clk);
            end

            // 发送命令字节
            for (i = 0; i < 8; i = i + 1) begin
                ir = 1'b0;
                repeat(BIT_LOW) @(posedge clk);
                ir = 1'b1;
                if (cmd[i])
                    repeat(BIT_HIGH_1) @(posedge clk);
                else
                    repeat(BIT_HIGH_0) @(posedge clk);
            end

            // 发送命令反码
            for (i = 0; i < 8; i = i + 1) begin
                ir = 1'b0;
                repeat(BIT_LOW) @(posedge clk);
                ir = 1'b1;
                if (~cmd[i])
                    repeat(BIT_HIGH_1) @(posedge clk);
                else
                    repeat(BIT_HIGH_0) @(posedge clk);
            end

            // 结束位 (停止位) - 拉高，等待至少 562.5us
            ir = 1'b0;
            repeat(BIT_LOW) @(posedge clk);
            ir = 1'b1;
            repeat(10000) @(posedge clk); // 额外的空闲时间
        end
    endtask

    // 主测试流程
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("nec.vcd");
        $dumpvars(0, tb_nec);

        // 初始化
        rst = 1'b0;      // 低电平复位
        ir  = 1'b1;      // 空闲高电平

        // 复位释放
        #100;
        rst = 1'b1;

        // 等待一段时间让模块稳定
        repeat(1000) @(posedge clk);

        // ② 发送三个 NEC 帧，让内部逻辑多次工作
        send_nec_frame(8'h00, 8'h00);   // 地址0，命令0
        repeat(100000) @(posedge clk);  // 等待处理完
        send_nec_frame(8'h11, 8'h22);   // 不同数据
        repeat(100000) @(posedge clk);
        send_nec_frame(8'hFF, 8'hAA);   // 再一帧

        // ③ 多运行一段时间，确保所有状态机完成
        repeat(100000) @(posedge clk);
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule