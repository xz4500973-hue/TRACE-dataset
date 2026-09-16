`timescale 1ns/1ns

module tb_netlist;

    reg         clk;
    reg         reset_n;

    wire [11:0] ave_data;
    wire        ave_data_en;
    wire        vsync_out;
    wire        spi_cs;
    wire        spi_clk;
    wire        spi_sdo;

    // ========== DUT：综合后的网表 ==========
    local_dimming_top u_dut (
        .clk        (clk),
        .reset_n    (reset_n),
        .ave_data   (ave_data),
        .ave_data_en(ave_data_en),
        .vsync_out  (vsync_out),
        .spi_cs     (spi_cs),
        .spi_clk    (spi_clk),
        .spi_sdo    (spi_sdo)
    );

    // ========== 50 MHz 时钟 ==========
    initial clk = 0;
    always #10 clk = ~clk;

    // ========== 复位 + VCD 控制 + 仿真超时 ==========
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("local_dimming_netlist.vcd");
        $dumpvars(0, tb_netlist);

        // ② 复位
        reset_n = 0;
        #100000;
        reset_n = 1;

        // ③ 运行 2 ms（覆盖多帧图像处理）
        #2_000_000;
        $display("Netlist simulation finished at %0t", $time);
        $finish;
    end

endmodule