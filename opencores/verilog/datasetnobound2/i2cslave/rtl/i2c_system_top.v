// =====================================================================
// i2c_system_top.v
// 功能：将 I2C 主机核和 I2C 从机核集成在一个顶层模块中
//       内部连接 SDA/SCL，形成完整的 I2C 主从通信系统
// =====================================================================

`timescale 1ns / 1ps

module i2c_system_top (
    // 系统接口
    input  wire        clk,           // 系统时钟 (如 50MHz)
    input  wire        rst_n,         // 异步复位，低有效

    // Wishbone 主机接口（用于访问 I2C 主机核的寄存器）
    input  wire [2:0]  wb_adr_i,
    input  wire [7:0]  wb_dat_i,
    output wire [7:0]  wb_dat_o,
    input  wire        wb_we_i,
    input  wire        wb_stb_i,
    input  wire        wb_cyc_i,
    output wire        wb_ack_o,
    output wire        wb_inta_o,     // I2C 主机中断输出

    // 从机寄存器输出（只读，供外部监测）
    output wire [7:0]  slave_reg0,
    output wire [7:0]  slave_reg4,
    output wire [7:0]  slave_reg5,
    output wire [7:0]  slave_reg6,
    output wire [7:0]  slave_reg7
);

    // -----------------------------------------------------------------
    // I2C 总线内部信号（主机和从机共享）
    // -----------------------------------------------------------------
    wire scl;           // 内部 SCL 线
    wire sda;           // 内部 SDA 线

    // I2C 主机核的 Pad 信号
    wire scl_pad_i, scl_pad_o, scl_padoen_o;
    wire sda_pad_i, sda_pad_o, sda_padoen_o;

    // I2C 从机的直接接口（不含三态，由从机内部处理）
    // 从机顶层 i2cSlaveTop 的 sda 和 scl 是 inout 类型，需要连接到内部总线

    // -----------------------------------------------------------------
    // 1. I2C 主机核实例化
    // -----------------------------------------------------------------
    i2c_master_top #(
        .ARST_LVL(1'b0)        // 复位低电平有效，与外部 rst_n 一致
    ) u_i2c_master (
        .wb_clk_i     (clk),
        .wb_rst_i     (~rst_n),      // 主机核使用高有效同步复位，取反
        .arst_i       (~rst_n),      // 异步复位同样取反
        .wb_adr_i     (wb_adr_i),
        .wb_dat_i     (wb_dat_i),
        .wb_dat_o     (wb_dat_o),
        .wb_we_i      (wb_we_i),
        .wb_stb_i     (wb_stb_i),
        .wb_cyc_i     (wb_cyc_i),
        .wb_ack_o     (wb_ack_o),
        .wb_inta_o    (wb_inta_o),
        .scl_pad_i    (scl_pad_i),
        .scl_pad_o    (scl_pad_o),
        .scl_padoen_o (scl_padoen_o),
        .sda_pad_i    (sda_pad_i),
        .sda_pad_o    (sda_pad_o),
        .sda_padoen_o (sda_padoen_o)
    );

    // -----------------------------------------------------------------
    // 2. I2C 从机顶层实例化
    //    从机内部的 SDA/SCL 直接连接到内部总线
    // -----------------------------------------------------------------
    i2cSlaveTop u_i2c_slave (
        .clk   (clk),
        .rst   (~rst_n),        // 从机内部使用高有效复位，取反
        .sda   (sda),
        .scl   (scl),
        .myReg0(slave_reg0)
    );
    // 将从机的固定寄存器值输出到顶层端口（可选）
    assign slave_reg4 = 8'h12;
    assign slave_reg5 = 8'h34;
    assign slave_reg6 = 8'h56;
    assign slave_reg7 = 8'h78;

    // -----------------------------------------------------------------
    // 3. I2C 总线连接（三态缓冲，模拟开漏）
    // -----------------------------------------------------------------
    // SCL 线：主机输出 enable 低时驱动 scl_pad_o，否则高阻（由从机或上拉决定）
    assign scl = (scl_padoen_o == 1'b0) ? scl_pad_o : 1'bz;
    assign scl_pad_i = scl;

    // SDA 线：同理
    assign sda = (sda_padoen_o == 1'b0) ? sda_pad_o : 1'bz;
    assign sda_pad_i = sda;

    // 注意：此处未添加上拉电阻，实际使用时，外部电路应有上拉。
    // 如果希望内部模拟上拉，可以添加 weak 上拉，但通常由外部板级上拉实现。
    // 对于仿真，可以使用 pullup 语句，但该语句不可综合。此处省略，由外部提供。

endmodule