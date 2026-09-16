(* keep_hierarchy = "yes" *) module local_dimming_top (
    input  wire         clk,
    input  wire         reset_n,      // 低电平复位
    output wire [11:0]  ave_data,
    output wire         ave_data_en,
    output wire         vsync_out,
    output wire         spi_cs,
    output wire         spi_clk,
    output wire         spi_sdo
);

    // ---------- 内部互连信号 ----------
    wire [47:0] video_data;
    wire        video_de;
    wire        video_hs;
    wire        video_vs;
    wire [80:0] ram_rd_addr;
    wire  [8:0] ram_rd_en;
    wire [143:0] ram_rd_data;
    wire [11:0] X_cnt, Y_cnt;

    // 视频生成模块输出的 VGA 分量
    wire [7:0] VGA_R, VGA_G, VGA_B;

    // ---------- 视频生成器 ----------
    video_data_gen u_video_gen (
        .pix_clk   (clk),
        .turn_mode (1'b1),          // 固定为一种测试模式
        .VGA_R     (VGA_R),
        .VGA_G     (VGA_G),
        .VGA_B     (VGA_B),
        .VGA_HS    (video_hs),
        .VGA_VS    (video_vs),
        .VGA_DE    (video_de)
    );

    // 将 VGA 分量拼成 48 位 video_data，其余位填 0
    assign video_data[47:40] = VGA_R;
    assign video_data[39:32] = 8'd0;
    assign video_data[31:24] = VGA_G;
    assign video_data[23:16] = 8'd0;
    assign video_data[15:8]  = VGA_B;
    assign video_data[7:0]   = 8'd0;

    // ---------- 数据提取 ----------
    video_data_extract u_extract (
        .i_clk           (clk),
        .i_reset_n       (reset_n),
        .i_video_data    (video_data),
        .i_video_de      (video_de),
        .i_video_hs      (~video_hs),     // 注意反相
        .i_video_vs      (~video_vs),
        .i_ram_rd_addr   (ram_rd_addr),
        .o_ram_rd_data   (ram_rd_data),
        .i_ram_rd_en     (ram_rd_en),
        .o_X_cnt         (X_cnt),
        .o_Y_cnt         (Y_cnt)
    );

    // ---------- 局部均值计算 ----------
    video_data_average u_average (
        .i_clk           (clk),
        .i_reset_n       (reset_n),
        .i_video_hs      (~video_hs),
        .i_video_vs      (~video_vs),
        .i_video_de      (video_de),
        .o_ram_rd_en     (ram_rd_en),
        .o_ram_rd_addr   (ram_rd_addr),
        .i_ram_rd_data   (ram_rd_data),
        .i_X_cnt         (X_cnt),
        .i_Y_cnt         (Y_cnt),
        .o_ave_data      (ave_data),
        .o_ave_data_en   (ave_data_en)
    );

    // ---------- 输出传输 ----------
    video_data_trans u_trans (
        .i_clk       (clk),
        .i_reset_n   (reset_n),
        .i_ave_data  (ave_data),
        .i_ave_en    (ave_data_en),
        .i_vsync     (~video_vs),
        .i_vde       (video_de),
        .o_vsync     (vsync_out),
        .o_spi_cs    (spi_cs),
        .o_spi_clk   (spi_clk),
        .o_spi_sdo   (spi_sdo)
    );

endmodule