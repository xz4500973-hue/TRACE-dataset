`timescale 1ns / 100ps
/*********************************************************************/
parameter tDLY                  = 1;

/*********************************************************************
* Clock speed, MHz
*********************************************************************/
parameter STATLED_CLK           = 50_000_000;

/*********************************************************************
* LED pulse width, ms
*********************************************************************/
parameter STATLED_PULSE_MS      = 225;  

/*********************************************************************
* Number of clocks per pulse width 
*********************************************************************/    
parameter STATLED_PULSE_CLKCNT 	= STATLED_CLK/1000 * STATLED_PULSE_MS;

/*********************************************************************
* Codes  
*********************************************************************/
parameter CODE_ONE      = 16'b10_00_00_00_00_00_00_00;
parameter CODE_TWO      = 16'b10_10_00_00_00_00_00_00;
parameter CODE_THREE    = 16'b10_10_10_00_00_00_00_00;
parameter CODE_FOUR     = 16'b10_10_10_10_00_00_00_00;
parameter CODE_FIVE     = 16'b10_10_10_10_10_00_00_00;
parameter CODE_SIX      = 16'b10_10_10_10_10_10_00_00;
parameter CODE_50_50    = 16'b10_10_10_10_10_10_10_10;

module tb_statled;

    reg clk;
    reg rst;
    reg [3:0] status;
    wire led;

    // 例化待测模块
    statled uut (
        .clk(clk),
        .rst(rst),
        .status(status),
        .led(led)
    );

    // 50 MHz 时钟 (周期 20 ns)
    initial clk = 0;
    always #10 clk = ~clk;

    // 主仿真过程
    initial begin
        // ① 生成 VCD 文件
        $dumpfile("statled.vcd");
        $dumpvars(0, tb_statled);

        // ② 上电复位
        rst = 1;
        status = 4'b0000;
        #100;
        rst = 0;

        // ③ 在不同状态间切换，使 LED 控制逻辑按各种编码工作
        //    每个状态至少等待 2 个脉冲周期，确保移位寄存器和位计数器完全活动
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 0 (默认 50/50 闪烁)
        status = 4'b0001;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 1
        status = 4'b0010;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 2
        status = 4'b0100;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 4
        status = 4'b0110;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 6
        status = 4'b0011;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 3
        status = 4'b0101;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 状态 5
        status = 4'b0000;
        #(2 * STATLED_PULSE_CLKCNT * 20)   // 回到状态 0

        // ④ 仿真结束
        $display("Simulation finished at %0t", $time);
        $finish;
    end

endmodule