`timescale 1ns / 1ps

module tb_md5_full_speed;

    reg clk;
    reg reset;
    reg [511:0] chunk;
    wire [31:0] a64, b64, c64, d64;

    Md5Core u_md5 (
        .clk(clk),
        .wb(chunk),
        .a0(32'h67452301),
        .b0(32'hefcdab89),
        .c0(32'h98badcfe),
        .d0(32'h10325476),
        .a64(a64),
        .b64(b64),
        .c64(c64),
        .d64(d64)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    integer i;

    initial begin
        $dumpfile("md5_full_speed.vcd");
        $dumpvars(0, tb_md5_full_speed);

        reset = 1;
        chunk = 512'b0;
        #20;
        reset = 0;
        #10;

        // 连续发送100个随机块，尽量减小间隔（仅保证前一个块处理完）
        for (i = 0; i < 100; i = i + 1) begin
            chunk = {$random, $random, $random, $random, $random, $random, $random, $random,
                     $random, $random, $random, $random, $random, $random, $random, $random};
            #650;   // 65 cycles per block
        end

        #1000;
        $finish;
    end

endmodule