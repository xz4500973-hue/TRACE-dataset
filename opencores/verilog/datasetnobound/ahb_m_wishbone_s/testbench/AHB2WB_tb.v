`timescale 1ns/1ps

module AHB2WB_tb;

    // ================= 时钟与复位 =================
    reg HCLK;
    reg HRESETn;

    // ================= AHB 主机信号 =================
    reg  [31:0] HADDR;
    reg  [31:0] HWDATA;
    reg         HWRITE;
    reg         HSEL;
    reg  [1:0]  HTRANS;
    reg  [2:0]  HSIZE;
    reg         HREADY;           // 由 TB 作为 AHB 总线就绪信号

    wire [31:0] HRDATA;
    wire        HRESP;
    wire        HREADYOUT;

    // ================= Wishbone 从设备信号 =================
    wire        wb_clk_o;
    wire        wb_rst_o;
    wire [31:0] wb_adr_o;
    wire [31:0] wb_dat_o;
    wire [3:0]  wb_sel_o;
    wire        wb_we_o;
    wire        wb_stb_o;
    wire        wb_cyc_o;

    reg  [31:0] wb_dat_i;
    reg         wb_ack_i;

    // ================= DUT 实例化 =================
    AHB2WB u_dut (
        .HCLK       (HCLK),
        .HRESETn    (HRESETn),
        .HADDR      (HADDR),
        .HWDATA     (HWDATA),
        .HWRITE     (HWRITE),
        .HSEL       (HSEL),
        .HTRANS     (HTRANS),
        .HSIZE      (HSIZE),
        .HREADY     (HREADY),
        .HRDATA     (HRDATA),
        .HRESP      (HRESP),
        .HREADYOUT  (HREADYOUT),
        .wb_clk_o   (wb_clk_o),
        .wb_rst_o   (wb_rst_o),
        .wb_adr_o   (wb_adr_o),
        .wb_dat_o   (wb_dat_o),
        .wb_sel_o   (wb_sel_o),
        .wb_we_o    (wb_we_o),
        .wb_stb_o   (wb_stb_o),
        .wb_cyc_o   (wb_cyc_o),
        .wb_dat_i   (wb_dat_i),
        .wb_ack_i   (wb_ack_i)
    );

    // ================= 时钟生成 =================
    initial HCLK = 0;
    always #5 HCLK = ~HCLK;   // 100MHz, 周期 10ns

    // ================= 简单存储器模型（Wishbone 从设备） =================
    // 容量 64KB，按字节寻址
    reg [7:0] mem [0:65535];

    // 生成 wb_ack_i 并处理读写
    always @(posedge wb_clk_o or posedge wb_rst_o) begin
        if (wb_rst_o) begin
            wb_ack_i <= 1'b0;
            wb_dat_i <= 32'h0;
        end else begin
            wb_ack_i <= 1'b0;   // 默认无应答

            if (wb_stb_o && wb_cyc_o) begin
                // 提供一个周期的应答
                wb_ack_i <= 1'b1;

                if (wb_we_o) begin   // 写操作
                    // 根据 wb_sel_o 写入对应字节
                    if (wb_sel_o[0]) mem[wb_adr_o]   <= wb_dat_o[7:0];
                    if (wb_sel_o[1]) mem[wb_adr_o+1] <= wb_dat_o[15:8];
                    if (wb_sel_o[2]) mem[wb_adr_o+2] <= wb_dat_o[23:16];
                    if (wb_sel_o[3]) mem[wb_adr_o+3] <= wb_dat_o[31:24];
                end else begin      // 读操作
                    // 组合逻辑读出，这里同步锁存到 wb_dat_i
                    wb_dat_i <= { mem[wb_adr_o+3], mem[wb_adr_o+2],
                                  mem[wb_adr_o+1], mem[wb_adr_o] };
                end
            end
        end
    end

    // ================= AHB 主机任务 =================
    integer i, test_count;
    reg [31:0] seed;

    // 单次 AHB 写操作
    task ahb_write;
        input [31:0] addr;
        input [31:0] data;
    begin
        // 地址阶段（HREADY 必须为高才可发起）
        @(posedge HCLK);
        HADDR  <= addr;
        HWDATA <= data;
        HWRITE <= 1'b1;
        HSEL   <= 1'b1;
        HTRANS <= 2'b10;        // 非连续传输
        HSIZE  <= 3'b010;       // 32 位
        HREADY <= 1'b1;         // 本 TB 中总线始终就绪
        @(posedge HCLK);        // 数据阶段开始
        // 等待 HREADYOUT 变高，结束本次传输
        while (HREADYOUT !== 1'b1) @(posedge HCLK);
        // 传输结束，释放控制信号
        HSEL   <= 1'b0;
        HTRANS <= 2'b00;        // IDLE
    end
    endtask

    // 单次 AHB 读操作
    task ahb_read;
        input  [31:0] addr;
        output [31:0] data;
    begin
        @(posedge HCLK);
        HADDR  <= addr;
        HWRITE <= 1'b0;
        HSEL   <= 1'b1;
        HTRANS <= 2'b10;
        HSIZE  <= 3'b010;
        HREADY <= 1'b1;
        @(posedge HCLK);        // 数据阶段开始
        while (HREADYOUT !== 1'b1) @(posedge HCLK);
        data = HRDATA;          // 此时读取有效数据
        HSEL   <= 1'b0;
        HTRANS <= 2'b00;
    end
    endtask

    // ================= 主测试流程 =================
    reg [31:0] readback;
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("AHB2WB.vcd");
        $dumpvars(0, AHB2WB_tb);

        // 初始化信号
        HRESETn = 1'b0;
        HADDR   = 32'h0;
        HWDATA  = 32'h0;
        HWRITE  = 1'b0;
        HSEL    = 1'b0;
        HTRANS  = 2'b00;
        HSIZE   = 3'b000;
        HREADY  = 1'b0;

        seed    = 12345;
        test_count = 500;   // 总测试次数，足够功耗分析

        // 复位
        #100;
        HRESETn = 1'b1;
        HREADY  = 1'b1;     // 复位后总线就绪
        #100;

        $display("=== AHB2WB Power Testbench ===");
        $display("Running %0d random transactions...", test_count);

        // 混合读写随机测试
        for (i = 0; i < test_count; i = i + 1) begin
            // 随机地址（32 位对齐）
            reg [31:0] rand_addr;
            reg [31:0] rand_data;
            rand_addr = {$random(seed)} & 32'hFFFFFFFC;  // 4 字节对齐
            rand_data = {$random(seed), $random(seed)};

            if ($random(seed) % 2) begin
                // 写操作
                ahb_write(rand_addr, rand_data);
            end else begin
                // 读操作（验证不强求，但保留数据）
                ahb_read(rand_addr, readback);
            end

            // 每次传输间隔 1~3 个空闲时钟，增加信号翻转多样性
            repeat($random(seed) % 3 + 1) @(posedge HCLK);
        end

        // 再多运行一小段时间，让未完成的操作结束
        #200;
        $display("=== Testbench complete ===");
        $finish;
    end

endmodule