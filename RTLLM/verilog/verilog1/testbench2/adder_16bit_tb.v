`timescale 1ns/1ps

module adder_16bit_tb;

    reg         clk;
    reg [15:0]  a;
    reg [15:0]  b;
    reg         Cin;
    wire [15:0] y;
    wire        Co;

    adder_16bit dut (
        .a(a), .b(b), .Cin(Cin), .y(y), .Co(Co)
    );

    always #5 clk = ~clk;

    reg [15:0] lfsr_a, lfsr_b;
    wire fb_a, fb_b;
    integer k;

    assign fb_a = lfsr_a[15] ^ lfsr_a[13] ^ lfsr_a[12] ^ lfsr_a[10];
    assign fb_b = lfsr_b[15] ^ lfsr_b[12] ^ lfsr_b[11] ^ lfsr_b[8];

    always @(posedge clk) begin
        lfsr_a <= {lfsr_a[14:0], fb_a};
        lfsr_b <= {lfsr_b[14:0], fb_b};
    end

    initial begin
        $dumpfile("adder_16bit_tb.vcd");
        $dumpvars(0, adder_16bit_tb);

        clk = 1'b0;
        a = 16'd0; b = 16'd0; Cin = 1'b0;
        lfsr_a = 16'hACE1;
        lfsr_b = 16'h1CEA;
        #15;

        for (k = 0; k < 35; k = k + 1) begin
            @(posedge clk);
            a   = lfsr_a;
            b   = lfsr_b;
            Cin = lfsr_a[0] ^ lfsr_b[0];
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule