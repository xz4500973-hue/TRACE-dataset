`timescale 1ns / 1ps

module tb_simple_gpio;

    // 时钟与复位
    reg clk_i;
    reg rst_i;

    // Wishbone 总线
    reg  cyc_i, stb_i, we_i;
    reg  adr_i;       // 地址线，只用到 adr_i[0]
    reg  [7:0] dat_i;
    wire [7:0] dat_o;
    wire ack_o;

    // GPIO 双向接口（8位）
    wire [7:0] gpio;
    reg  [7:0] gpio_in;      // 模拟外部输入到 GPIO 引脚的值
    reg  [7:0] gpio_drive;   // 外部驱动值
    reg  gpio_oe;            // 外部输出使能（0 = 输入）

    // 为简单起见，将 gpio 连接为：当外部使能时输出 gpio_drive，否则高阻
    assign gpio = gpio_oe ? gpio_drive : 8'bz;

    // 例化待测模块（使用默认 io=8）
    simple_gpio #(.io(8)) uut (
        .clk_i(clk_i),
        .rst_i(rst_i),
        .cyc_i(cyc_i),
        .stb_i(stb_i),
        .adr_i(adr_i),
        .we_i(we_i),
        .dat_i(dat_i),
        .dat_o(dat_o),
        .ack_o(ack_o),
        .gpio(gpio)
    );

    // 时钟生成 100MHz
    initial clk_i = 0;
    always #5 clk_i = ~clk_i;

    // Wishbone 写任务
    task wb_write;
        input addr;
        input [7:0] data;
        begin
            @(posedge clk_i);
            cyc_i <= 1; stb_i <= 1; we_i <= 1;
            adr_i <= addr; dat_i <= data;
            @(posedge clk_i);       // 等待 ack
            cyc_i <= 0; stb_i <= 0; we_i <= 0;
        end
    endtask

    // Wishbone 读任务
    task wb_read;
        input addr;
        output [7:0] data;
        begin
            @(posedge clk_i);
            cyc_i <= 1; stb_i <= 1; we_i <= 0;
            adr_i <= addr;
            @(posedge clk_i);       // 数据有效
            data = dat_o;
            cyc_i <= 0; stb_i <= 0;
        end
    endtask

    reg [7:0] read_data;
    integer i;

    initial begin
        // 生成 VCD 文件
        $dumpfile("simple_gpio.vcd");
        $dumpvars(0, tb_simple_gpio);

        // 初始化
        rst_i = 0;          // 异步复位，低有效
        cyc_i = 0; stb_i = 0; we_i = 0;
        adr_i = 0; dat_i = 0;
        gpio_oe = 0; gpio_drive = 8'h00;  // 初始为输入，悬空

        // 复位
        #100;
        rst_i = 1;
        #100;

        // ---- 测试序列 ----
        // 1. 配置所有引脚为输出 (ctrl = 0xFF)
        wb_write(1'b0, 8'hFF);     // 地址0为控制寄存器

        // 2. 写入不同的输出值，并在外部读取（内部线状态应该反映输出）
        for (i = 0; i < 20; i = i + 1) begin
            wb_write(1'b1, $random % 256); // 地址1为线寄存器，输出
            // 同时，让外部输入一个随机值以模拟输入变化（但输出模式下内部读取返回输出值）
            gpio_drive = $random % 256;
            #20; // 等待一点时间
        end

        // 3. 配置所有引脚为输入 (ctrl = 0x00)
        wb_write(1'b0, 8'h00);

        // 4. 外部驱动 GPIO 变化，读取状态
        gpio_oe = 1;  // 外部使能输出
        for (i = 0; i < 20; i = i + 1) begin
            gpio_drive = $random % 256;
            #50;
            wb_read(1'b1, read_data); // 读线状态
            $display("Read GPIO state: %h", read_data);
        end

        // 5. 混合读写操作
        for (i = 0; i < 10; i = i + 1) begin
            // 随机设置控制位
            wb_write(1'b0, $random % 256);
            // 随机写线（输出模式下有效）
            wb_write(1'b1, $random % 256);
            #50;
            // 读回控制寄存器
            wb_read(1'b0, read_data);
            $display("Ctrl reg: %h", read_data);
            // 读回线状态
            wb_read(1'b1, read_data);
            $display("Line reg: %h", read_data);
        end

        // 结束仿真
        #200;
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule