`timescale 1ns / 1ps

module tb_pixelfeed;

    reg sys_clk;
    reg sys_rst;
    reg vga_rst;

    wire pixel_valid;
    wire fml_stb;
    wire [25:0] fml_adr;

    // fml_di 是输入到 DUT，需要用 reg 驱动
    reg [63:0] fml_di;   // 假设网表中是 64 位，若不一致请修改

    // 时钟
    initial sys_clk = 0;
    always #5 sys_clk = ~sys_clk;

    // DUT 实例化
    vgafb_pixelfeed dut (
        .sys_clk          (sys_clk),
        .sys_rst          (sys_rst),
        .vga_rst          (vga_rst),
        .nbursts          (18'd100),
        .baseaddress      (26'd1024),
        .baseaddress_ack  (),
        .fml_adr          (fml_adr),
        .fml_stb          (fml_stb),
        .fml_ack          (fml_stb),
        .fml_di           (fml_di),
        .dcb_stb          (),
        .dcb_adr          (),
        .dcb_dat          (),
        .dcb_hit          (1'b0),
        .pixel_valid      (pixel_valid),
        .pixel            (),
        .pixel_ack        (pixel_valid)
    );

    // 随机数据生成
    integer seed;
    initial seed = 12345;
    always @(posedge sys_clk) begin
        if (fml_stb) begin
            fml_di <= {$random(seed), $random(seed)};
        end
    end

    // 主测试流程
    initial begin
        $dumpfile("vgafb_pixelfeed.vcd");
        $dumpvars(0, tb_pixelfeed);
        fml_di = 64'h0;
        sys_rst = 1'b1;
        vga_rst = 1'b1;
        #20 sys_rst = 1'b0;
        #20 vga_rst = 1'b0;
        #20000;
        $finish;
    end

endmodule