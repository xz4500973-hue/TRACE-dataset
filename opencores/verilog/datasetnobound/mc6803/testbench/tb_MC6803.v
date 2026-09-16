`timescale 1ns / 1ps

module tb_MC6803;

    reg clk;
    reg RST;
    reg hold;
    reg halt;
    reg irq;
    reg nmi;
    reg [7:0] PORT_A_IN;
    reg [4:0] PORT_B_IN;
    reg [7:0] DATA_IN;
    wire [7:0] PORT_A_OUT;
    wire [4:0] PORT_B_OUT;
    wire [15:0] ADDRESS;
    wire [7:0] DATA_OUT;
    wire E_CLK;
    wire rw;

    // 例化 MC6803_gen2
    MC6803_gen2 uut (
        .clk        (clk),
        .RST        (RST),
        .hold       (hold),
        .halt       (halt),
        .irq        (irq),
        .nmi        (nmi),
        .PORT_A_IN  (PORT_A_IN),
        .PORT_B_IN  (PORT_B_IN),
        .DATA_IN    (DATA_IN),
        .PORT_A_OUT (PORT_A_OUT),
        .PORT_B_OUT (PORT_B_OUT),
        .ADDRESS    (ADDRESS),
        .DATA_OUT   (DATA_OUT),
        .E_CLK      (E_CLK),
        .rw         (rw)
    );

    // 时钟生成 (8 MHz 为例，周期 125ns)
    initial clk = 0;
    always #62.5 clk = ~clk;  // 半周期 62.5ns

    // 外部 ROM 模型：复位向量 + NOP 填充
    always @* begin
        case (ADDRESS)
            16'hFFFE: DATA_IN = 8'h00;   // 复位向量低字节
            16'hFFFF: DATA_IN = 8'h00;   // 复位向量高字节 -> 0x0000
            default:  DATA_IN = 8'h01;   // 其它地址返回 NOP (0x01)
        endcase
    end

    // 仿真控制
    initial begin
        // ① 生成 VCD
        $dumpfile("MC6803.vcd");
        $dumpvars(0, tb_MC6803);

        // 初始化输入
        RST        = 1;
        hold       = 0;
        halt       = 0;
        irq        = 0;
        nmi        = 0;
        PORT_A_IN  = 0;
        PORT_B_IN  = 0;

        // ② 复位释放
        #500;
        RST = 0;

        // ③ 运行 10 ms（可调整）
        #10_000_000;
        $display("Simulation finished at %0t ns", $time);
        $finish;
    end

endmodule