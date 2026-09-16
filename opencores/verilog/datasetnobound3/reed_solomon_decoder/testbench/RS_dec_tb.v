`timescale 1ns / 1ps
module RS_dec_tb;

    parameter pclk = 2;          // 半周期 2ns -> 250MHz
    parameter number = 100;      // 测试码字数量

    reg clk, reset;
    reg CE;
    reg [7:0] input_byte;
    wire [7:0] Out_byte;
    wire CEO;
    wire Valid_out;

    RS_dec DUT (
        .clk(clk),
        .reset(reset),
        .CE(CE),
        .input_byte(input_byte),
        .Out_byte(Out_byte),
        .CEO(CEO),
        .Valid_out(Valid_out)
    );

    // ---------- 存储器与变量 ----------
    reg [7:0] in_mem [0:(number*204)-1];
    reg [7:0] out_mem [0:(number*188)-1];
    reg enable;
    reg [7:0] true_out;
    integer h, k, err;
    integer ce_t, in_t;
    integer lim = 6;   // 等待周期数

    // ---------- 时钟生成 ----------
    initial begin
        clk = 0;
        forever #pclk clk = ~clk;
    end

    // ---------- 读取激励文件 ----------
    initial begin
        err = 0;
        $readmemb("input_RS_blocks", in_mem);
        $readmemb("output_RS_blocks", out_mem);
    end

    // ---------- 芯片使能 CE 生成 ----------
    initial begin
        CE = 0;
        @(posedge enable);
        forever begin
            @(posedge clk);
            #2 CE = 1;
            @(posedge clk);
            #2 CE = 0;
            for (ce_t = 0; ce_t < lim; ce_t = ce_t + 1)
                @(posedge clk);
        end
    end

    // ---------- 复位与启动 ----------
    initial begin
        h = 0;
        k = 0;
        enable = 0;
        reset = 1;
        repeat(5) @(posedge clk);
        reset = 0;
        repeat(2) @(posedge clk);
        enable = 1;
    end

    // ---------- 输入激励 ----------
    initial begin
        input_byte = 0;
        @(posedge enable);
        for (k = 0; k < (number*204); k = k + 1) begin
            input_byte = in_mem[k];
            @(posedge clk);
            @(posedge clk);
            for (in_t = 0; in_t < lim; in_t = in_t + 1)
                @(posedge clk);
        end
    end

    // ---------- 输出检查与仿真结束 ----------
    always @(posedge clk) begin
        if (Valid_out && CEO) begin
            true_out = out_mem[h];
            if (true_out !== Out_byte) begin
                $display("Error at out no. %d !!!!!!!!!!!!!", h);
                err = err + 1;
            end
            h = h + 1;

            if (h == (number*188)) begin
                if (err == 0)
                    $display("No Errors !!!!!!!!!!!!!");
                else
                    $display("Total Errors = %d !!!!!!!!!!!!!", err);

                // 仿真结束
                #100;
                $display("Simulation finished at %0t", $time);
                $finish;
            end
        end
    end

    // ---------- 超时保护（防止文件缺失导致死等） ----------
    initial begin
        #(number * 250 * pclk);   // 根据激励总量估算最大时间
        $display("Timeout: simulation stopped at %0t", $time);
        $finish;
    end

    // ---------- VCD 波形生成 ----------
    initial begin
        $dumpfile("RS_dec.vcd");
        $dumpvars(0, RS_dec_tb);
    end

endmodule