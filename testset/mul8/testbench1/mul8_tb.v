`timescale 1ns/1ps

module mul8_tb;

    reg  [7:0]  a, b;
    wire [15:0] p;

    mul8 dut (.a(a), .b(b), .p(p));

    reg clk;
    always #5 clk = ~clk;

    reg [7:0] lfsr_a, lfsr_b;
    wire fa, fb;
    integer i;
    assign fa = lfsr_a[7] ^ lfsr_a[5] ^ lfsr_a[4] ^ lfsr_a[3];
    assign fb = lfsr_b[7] ^ lfsr_b[6] ^ lfsr_b[5] ^ lfsr_b[1];
    always @(posedge clk) begin
        lfsr_a <= {lfsr_a[6:0], fa};
        lfsr_b <= {lfsr_b[6:0], fb};
    end

    initial begin
        $dumpfile("mul8_tb.vcd");
        $dumpvars(0, mul8_tb);
        clk = 1'b0;
        a = 8'd0; b = 8'd0;
        lfsr_a = 8'hA5; lfsr_b = 8'h5A;
        #15;

        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            a = lfsr_a;
            b = lfsr_b;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
