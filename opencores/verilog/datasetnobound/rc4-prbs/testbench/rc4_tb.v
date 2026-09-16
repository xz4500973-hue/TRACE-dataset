`define RC4
`define TEST_CYCLES 2000   // 增加仿真周期数

`define KEY_SIZE 7

module rc4_tb;

    reg [7:0] password[0:`KEY_SIZE-1];
    parameter tck = 10;
    reg clk, rst;
    wire output_ready;
    wire [7:0] K;
    reg [7:0] password_input;

    // 时钟
    always #(tck/2) clk = ~clk;

    // DUT
    rc4 rc4mod (
        .clk(clk),
        .rst(rst),
        .password_input(password_input),
        .output_ready(output_ready),
        .K(K)
    );

    integer clkcount;
    always @(posedge clk) begin
        clkcount <= clkcount + 1;
        if (clkcount < `KEY_SIZE)
            password_input <= password[clkcount];
    end

    initial begin
        // 密钥
        password[0] = 8'h01;
        password[1] = 8'h02;
        password[2] = 8'h03;
        password[3] = 8'h04;
        password[4] = 8'h05;
        password[5] = 8'h06;
        password[6] = 8'h07;

        // ① 生成 VCD
        $dumpfile("rc4.vcd");
        $dumpvars(0, rc4_tb);

        $display("Start...");
        clk = 0;
        rst = 1;
        clkcount = 0;
        password_input = password[0];
        #(1*tck);
        rst = 0;
        #(5000 * tck);    // 仿真 5000 个时钟周期

        $display("Finish.");
        $finish;
    end

endmodule