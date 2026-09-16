`timescale 1ns / 1ps

module tb_md5_random_blocks;

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
    integer seed;

    initial begin
        $dumpfile("md5_random_blocks.vcd");
        $dumpvars(0, tb_md5_random_blocks);

        reset = 1;
        chunk = 512'b0;
        seed = 12345;
        #20;
        reset = 0;
        #10;

        for (i = 0; i < 50; i = i + 1) begin
            chunk = {$random(seed), $random(seed), $random(seed), $random(seed),
                     $random(seed), $random(seed), $random(seed), $random(seed),
                     $random(seed), $random(seed), $random(seed), $random(seed),
                     $random(seed), $random(seed), $random(seed), $random(seed)};
            #650;   // wait for processing (65 cycles)
        end

        #1000;
        $finish;
    end

endmodule