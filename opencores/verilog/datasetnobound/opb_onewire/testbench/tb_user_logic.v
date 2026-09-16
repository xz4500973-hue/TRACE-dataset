`timescale 1ns / 1ps

module tb_user_logic;

    // ---- 时钟与复位 ----
    reg clk;          // 50 MHz，同时驱动 main_fifty_clock 和 Bus2IP_Clk
    reg rst;

    // ---- 1-Wire 物理线 ----
    wire DQ_out, DQ_oe;
    reg  DQ_in;       // 来自外部从设备的数据输入
    wire DQ_bidir = DQ_oe ? 1'bz : DQ_out;  // 双向总线仿真 (仅用于观察)

    // ---- OPB 总线信号 ----
    wire [0:31] Bus2IP_Data;
    wire [0:3]  Bus2IP_BE;
    wire [0:3]  Bus2IP_RdCE;
    wire [0:3]  Bus2IP_WrCE;
    wire [0:31] IP2Bus_Data;
    wire        IP2Bus_Ack;
    wire        IP2Bus_Retry;
    wire        IP2Bus_Error;
    wire        IP2Bus_ToutSup;

    // 激励寄存器（TB 驱动）
    reg  [0:31] tb_wr_data;
    reg  [0:3]  tb_wr_ce;    // 写片选
    reg  [0:3]  tb_rd_ce;    // 读片选
    reg  [0:3]  tb_be;       // 字节使能，默认全选

    assign Bus2IP_Data   = tb_wr_data;
    assign Bus2IP_BE     = tb_be;
    assign Bus2IP_RdCE   = tb_rd_ce;
    assign Bus2IP_WrCE   = tb_wr_ce;

    // ---- 例化待测模块 ----
    user_logic u_dut (
        .DQ_Wire_I       (DQ_in),
        .DQ_Wire_O       (DQ_out),
        .DQ_Wire_T       (DQ_oe),
        .main_fifty_clock(clk),
        .Bus2IP_Clk      (clk),
        .Bus2IP_Reset    (rst),
        .Bus2IP_Data     (Bus2IP_Data),
        .Bus2IP_BE       (Bus2IP_BE),
        .Bus2IP_RdCE     (Bus2IP_RdCE),
        .Bus2IP_WrCE     (Bus2IP_WrCE),
        .IP2Bus_Data     (IP2Bus_Data),
        .IP2Bus_Ack      (IP2Bus_Ack),
        .IP2Bus_Retry    (IP2Bus_Retry),
        .IP2Bus_Error    (IP2Bus_Error),
        .IP2Bus_ToutSup  (IP2Bus_ToutSup)
    );

    // ---- 50 MHz 时钟生成 ----
    initial clk = 0;
    always #10 clk = ~clk;  // 周期 20ns

    // ---- 1-Wire 从设备模型 ----
    // 该模型仅用于模拟存在脉冲和读数据位，不实现完整的 1-Wire 协议
    reg  presence_pending;
    reg  [7:0] slave_byte;
    reg  [3:0] bit_cnt;
    reg  read_active;
    reg  [15:0] wait_timer;
    reg  [1:0]  state;      // 0=idle, 1=等待复位完成, 2=存在脉冲, 3=读响应
    localparam IDLE      = 2'd0;
    localparam PRES_WAIT = 2'd1;
    localparam PRES      = 2'd2;
    localparam READ_ACT  = 2'd3;

    always @(posedge clk) begin
        if (rst) begin
            DQ_in <= 1'b1;
            presence_pending <= 0;
            read_active <= 0;
            slave_byte <= 8'hAA;   // 默认返回数据
            bit_cnt <= 0;
            wait_timer <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    DQ_in <= 1'b1;
                    // 检测复位脉冲：主设备拉低 DQ_out, 同时 DQ_oe=0（驱动）
                    if (!DQ_out && !DQ_oe) begin
                        state <= PRES_WAIT;
                        wait_timer <= 0;
                    end
                end
                PRES_WAIT: begin
                    // 等待主设备释放总线
                    if (DQ_oe == 1'b1) begin  // 主设备释放
                        // 延迟 15us 后发出存在脉冲 (根据协议, 从设备在 60us 窗口内拉低)
                        if (wait_timer < 150) begin
                            wait_timer <= wait_timer + 1;
                            DQ_in <= 1'b1;
                        end else begin
                            state <= PRES;
                            wait_timer <= 0;
                            DQ_in <= 1'b0;  // 拉低表示存在
                        end
                    end else begin
                        wait_timer <= 0; // 若主设备未释放, 重置计数
                    end
                end
                PRES: begin
                    // 保持低电平 120us, 然后释放
                    if (wait_timer < 1200) begin
                        wait_timer <= wait_timer + 1;
                        DQ_in <= 1'b0;
                    end else begin
                        DQ_in <= 1'b1;
                        state <= IDLE;
                    end
                end
                // 读时隙：主设备拉低 2us 然后释放, 从设备在 10us 内驱动数据位
                // 简化处理：当检测到读操作（DQ_oe=0, DQ_out=0）且持续时间很短时，视为读时隙开始
                // 我们在主设备释放后立即将 DQ_in 拉低（表示 0）或保持高（表示 1）
            endcase

            // 检测读时隙 (快速响应)
            // 主设备拉低 DQ_out 且 DQ_oe=0, 并且之前状态为 IDLE
            if (state == IDLE && !DQ_out && !DQ_oe) begin
                // 读时隙开始，准备发送一位数据
                read_active <= 1;
                // 根据当前要发送的位设置 DQ_in (在稍后的释放阶段生效)
            end

            if (read_active) begin
                // 等待主设备释放总线 (DQ_oe=1)
                if (DQ_oe) begin
                    // 发送当前位
                    if (slave_byte[0] == 0)
                        DQ_in <= 1'b0;
                    else
                        DQ_in <= 1'b1;
                    // 移位，准备下一位
                    slave_byte <= {1'b0, slave_byte[7:1]};
                    bit_cnt <= bit_cnt + 1;
                    read_active <= 0;
                end
            end
        end
    end

    // ---- OPB 总线任务 ----
    // 写一个寄存器 (地址: reg0=4'b1000, reg1=4'b0100, reg2=4'b0010, reg3=4'b0001)
    task bus_write;
        input [1:0] reg_addr;    // 0~3
        input [31:0] data;
        begin
            @(posedge clk);
            tb_wr_data <= data;
            tb_be      <= 4'b1111;
            case (reg_addr)
                2'd0: tb_wr_ce <= 4'b1000;
                2'd1: tb_wr_ce <= 4'b0100;
                2'd2: tb_wr_ce <= 4'b0010;
                2'd3: tb_wr_ce <= 4'b0001;
            endcase
            tb_rd_ce  <= 4'b0000;
            @(posedge clk);
            tb_wr_ce <= 4'b0000;
            tb_wr_data <= 0;
        end
    endtask

    // 读一个寄存器
    task bus_read;
        input [1:0] reg_addr;
        output [31:0] data;
        begin
            @(posedge clk);
            tb_rd_ce <= (reg_addr == 0) ? 4'b1000 :
                         (reg_addr == 1) ? 4'b0100 :
                         (reg_addr == 2) ? 4'b0010 :
                                           4'b0001;
            @(posedge clk);
            data = IP2Bus_Data;
            tb_rd_ce <= 4'b0000;
        end
    endtask

    // 启动一次 1-Wire 操作 (opcode: 1=写, 2=读, 3=复位)
    task start_operation;
        input [2:0] opcode;
        input [7:0] wr_byte;    // 写操作时使用
        begin
            // 写命令和数据
            bus_write(2'd1, {8'd0, wr_byte});     // slv_reg1 = 数据字节
            bus_write(2'd2, {8'd0, opcode});      // slv_reg2 = opcode (低字节)
            // 启动操作：写 slv_reg3[31]=1
            bus_write(2'd3, 32'h80000000);
            // 等待操作完成 (简单延迟)
            repeat(200) @(posedge clk);
        end
    endtask

    // 主测试流程
    integer i;
    reg [31:0] read_val;
    reg [7:0]  returned_byte;

    initial begin
        // ① 生成 VCD 文件
        $dumpfile("opb_onewire.vcd");
        $dumpvars(0, tb_user_logic);

        // 初始化
        rst = 1;
        tb_wr_data = 0;
        tb_wr_ce   = 0;
        tb_rd_ce   = 0;
        tb_be      = 0;

        #100;
        rst = 0;
        #100;

        // ② 执行一系列操作
        // 总线复位
        $display("Bus reset");
        start_operation(3'd3, 8'd0);   // opcode=3

        // 写 0x33 (opcode=1)
        $display("Write byte 0x33");
        start_operation(3'd1, 8'h33);

        // 读字节 (opcode=2)，从设备模型中 slave_byte 默认为 0xAA，会返回该值
        $display("Read byte");
        start_operation(3'd2, 8'd0);
        // 读取结果 slv_reg0 (数据)
        bus_read(2'd0, read_val);
        returned_byte = read_val[24:31];   // 根据代码，读数据来自 read_byte，映射到 slv_ip2bus_data
        $display("Read returned: 0x%h", returned_byte);

        // 再写 0x55, 读回
        $display("Write byte 0x55");
        start_operation(3'd1, 8'h55);
        $display("Read byte");
        start_operation(3'd2, 8'd0);
        bus_read(2'd0, read_val);
        returned_byte = read_val[24:31];
        $display("Read returned: 0x%h", returned_byte);

        // 多循环几次，增加翻转
        for (i = 0; i < 5; i = i + 1) begin
            start_operation(3'd1, i * 16 + i);
            start_operation(3'd2, 8'd0);
        end

        // ③ 仿真运行一段时间后停止
        repeat(1000) @(posedge clk);
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule