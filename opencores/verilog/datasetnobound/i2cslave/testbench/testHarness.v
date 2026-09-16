// -------------------------- testHarness.v -----------------------
// 使用 i2c_system_top (集成 I2C 主机+从机) 的仿真测试平台
// -----------------------------------------------------------------

module testHarness ();

reg  rst_n;          // 低有效复位（给 i2c_system_top）
reg  clk;
wire sda;            // 内部 I2C 总线（仅用于观测，实际在顶层内部已连接）
wire scl;

// Wishbone 接口信号（连接外部 CPU 模型）
wire [2:0]  adr;
wire [7:0]  masterDout;
wire [7:0]  masterDin;
wire        we;
wire        stb;
wire        cyc;
wire        ack;
wire        wb_inta_o;

// 从机寄存器输出（从 i2c_system_top 引出，便于观测）
wire [7:0] slave_reg0;
wire [7:0] slave_reg4;
wire [7:0] slave_reg5;
wire [7:0] slave_reg6;
wire [7:0] slave_reg7;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testHarness);
    reset;               // 执行复位任务
    repeat (50000) @(posedge clk);
    $display("Simulation finished after 50000 cycles.");
    $finish;
end

// -----------------------------------------------------------------
// 1. 例化 I2C 系统顶层（内部包含主机和从机，总线已连接）
// -----------------------------------------------------------------
i2c_system_top u_i2c_system (
    .clk          (clk),
    .rst_n        (rst_n),
    .wb_adr_i     (adr),
    .wb_dat_i     (masterDout),
    .wb_dat_o     (masterDin),
    .wb_we_i      (we),
    .wb_stb_i     (stb),
    .wb_cyc_i     (cyc),
    .wb_ack_o     (ack),
    .wb_inta_o    (wb_inta_o),
    .slave_reg0   (slave_reg0),
    .slave_reg4   (slave_reg4),
    .slave_reg5   (slave_reg5),
    .slave_reg6   (slave_reg6),
    .slave_reg7   (slave_reg7)
);

// -----------------------------------------------------------------
// 2. Wishbone 主机模型（模拟 CPU 对 I2C 主机寄存器的访问）
// -----------------------------------------------------------------
wb_master_model #(.dwidth(8), .awidth(3)) u_wb_master_model (
    .clk (clk),
    .rst (~rst_n),   // 模型使用高有效复位，取反
    .adr (adr),
    .din (masterDin),
    .dout(masterDout),
    .cyc (cyc),
    .stb (stb),
    .we  (we),
    .sel (),
    .ack (ack),
    .err (1'b0),
    .rty (1'b0)
);

// -----------------------------------------------------------------
// 3. 时钟生成 (约 48MHz)
// -----------------------------------------------------------------
`define CLK_HALF_PERIOD 10
always begin
    #`CLK_HALF_PERIOD clk = 1'b0;
    #`CLK_HALF_PERIOD clk = 1'b1;
end

// -----------------------------------------------------------------
// 4. 复位任务 (低有效复位)
// -----------------------------------------------------------------
task reset;
begin
    rst_n = 1'b0;          // 复位低有效
    repeat (6) @(posedge clk);
    rst_n = 1'b1;          // 释放复位
    repeat (3) @(posedge clk);
    $display("[%t] Reset released (rst_n=1).", $time);
end
endtask

endmodule