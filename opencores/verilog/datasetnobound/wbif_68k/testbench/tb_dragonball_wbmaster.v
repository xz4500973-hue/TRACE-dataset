`timescale 1ns / 1ps

module tb_dragonball_wbmaster;

    // 参数
    parameter adr_hi = 9;

    // 68K 总线信号
    reg           clk;
    reg           reset_n;
    reg  [adr_hi:1] a;
    reg           cs_n;
    wire [15:0]   d;          // 双向数据总线
    reg           lwe_n;
    reg           uwe_n;
    reg           oe_n;
    wire          dtack_n;
    wire          berr;

    // Wishbone 侧
    wire          clk_o;
    wire          rst_o;
    wire          cyc_o;
    wire          stb_o;
    wire [adr_hi:1] adr_o;
    wire [1:0]    sel_o;
    wire          we_o;
    wire [15:0]   dat_o;
    reg  [15:0]   wb_dat_i;
    reg           ack_i;
    reg           err_i;

    // 双向总线驱动
    reg [15:0]    d_drive;
    reg           d_oe;      // 1：TB驱动总线
    assign d = d_oe ? d_drive : 16'bz;

    // 例化 DUT
    dragonball_wbmaster #(.adr_hi(adr_hi)) uut (
        .clk         (clk),
        .reset_n     (reset_n),
        .a           (a),
        .cs_n        (cs_n),
        .d           (d),
        .lwe_n       (lwe_n),
        .uwe_n       (uwe_n),
        .oe_n        (oe_n),
        .dtack_n     (dtack_n),
        .berr        (berr),
        .clk_o       (clk_o),
        .rst_o       (rst_o),
        .cyc_o       (cyc_o),
        .stb_o       (stb_o),
        .adr_o       (adr_o),
        .sel_o       (sel_o),
        .we_o        (we_o),
        .dat_o       (dat_o),
        .dat_i       (wb_dat_i),
        .ack_i       (ack_i),
        .err_i       (err_i)
    );

    // 时钟：50MHz (周期 20ns)
    initial clk = 0;
    always #10 clk = ~clk;

    // Wishbone 从设备模型：单周期应答，读返回随机数据
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            ack_i     <= 1'b0;
            wb_dat_i  <= 16'h0000;
        end else begin
            if (cyc_o && stb_o && !ack_i) begin
                // 单周期响应
                ack_i    <= 1'b1;
                if (!we_o)  // 读周期
                    wb_dat_i <= $random % 65536;
            end else begin
                ack_i <= 1'b0;
            end
        end
    end
    initial err_i = 1'b0;   // 无总线错误

    // 68K 写任务（字节/字写入）
    task m68k_write;
        input [adr_hi:1] addr;
        input [15:0]     data;
        input            uwe;   // 1: 写高字节  0: 不写
        input            lwe;   // 1: 写低字节
        begin
            // 地址阶段
            @(posedge clk);
            a      <= addr;
            cs_n   <= 1'b0;
            oe_n   <= 1'b1;     // 禁止输出
            lwe_n  <= ~lwe;
            uwe_n  <= ~uwe;
            d_oe   <= 1'b1;
            d_drive <= data;
            // 数据阶段，等待 dtack_n 有效
            @(negedge dtack_n);
            // 释放总线
            @(posedge clk);
            cs_n   <= 1'b1;
            lwe_n  <= 1'b1;
            uwe_n  <= 1'b1;
            d_oe   <= 1'b0;
            @(posedge clk);     // 等待一个周期
        end
    endtask

    // 68K 读任务（16位读）
    task m68k_read;
        input  [adr_hi:1] addr;
        output [15:0]     data;
        begin
            @(posedge clk);
            a      <= addr;
            cs_n   <= 1'b0;
            oe_n   <= 1'b0;     // 使能输出
            lwe_n  <= 1'b1;
            uwe_n  <= 1'b1;
            d_oe   <= 1'b0;     // 释放总线，等待模块驱动
            // 等待 dtack_n
            @(negedge dtack_n);
            data = d;           // 采样数据
            @(posedge clk);
            cs_n   <= 1'b1;
            oe_n   <= 1'b1;
            @(posedge clk);
        end
    endtask

    integer i;
    reg [15:0] rd_data;
    reg [15:0] addr;

    initial begin
        // 生成 VCD
        $dumpfile("dragonball_wbmaster.vcd");
        $dumpvars(0, tb_dragonball_wbmaster);

        // 初始化所有控制信号
        clk    = 0;
        reset_n = 1'b0;
        cs_n   = 1'b1;
        oe_n   = 1'b1;
        lwe_n  = 1'b1;
        uwe_n  = 1'b1;
        d_oe   = 1'b0;
        a      = 0;

        // 复位
        #100;
        reset_n = 1'b1;
        #100;

        // 执行一系列随机写操作
        for (i = 0; i < 50; i = i + 1) begin
            addr = $random % (1 << adr_hi);
            // 随机写高低字节
            m68k_write(addr, $random % 65536, $random % 2, $random % 2);
        end

        // 执行一系列随机读操作
        for (i = 0; i < 50; i = i + 1) begin
            addr = $random % (1 << adr_hi);
            m68k_read(addr, rd_data);
        end

        // 混合读写
        for (i = 0; i < 100; i = i + 1) begin
            addr = $random % (1 << adr_hi);
            if ($random % 2)
                m68k_write(addr, $random % 65536, $random % 2, $random % 2);
            else
                m68k_read(addr, rd_data);
        end

        // 结束仿真
        #1000;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule