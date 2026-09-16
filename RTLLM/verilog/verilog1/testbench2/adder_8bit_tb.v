`timescale 1ns/1ps

module adder_8bit_tb;

    reg         clk;
    reg [7:0]   a;
    reg [7:0]   b;
    reg         cin;
    wire [7:0]  sum;
    wire        cout;

    adder_8bit dut (
        .a   (a),
        .b   (b),
        .cin (cin),
        .sum (sum),
        .cout(cout)
    );

    // clock generation: period = 10ns
    always #5 clk = ~clk;

    reg [7:0] lfsr_a;
    reg [7:0] lfsr_b;
    wire     fb_a, fb_b;
    integer  k;

    assign fb_a = lfsr_a[7] ^ lfsr_a[5] ^ lfsr_a[4] ^ lfsr_a[3];
    assign fb_b = lfsr_b[7] ^ lfsr_b[5] ^ lfsr_b[3] ^ lfsr_b[2];

    always @(posedge clk) begin
        lfsr_a <= {lfsr_a[6:0], fb_a};
        lfsr_b <= {lfsr_b[6:0], fb_b};
    end

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        lfsr_a = 8'h5A;
        lfsr_b = 8'hA5;

        #15;

        // 40 random pairs from LFSR
        for (k = 0; k < 40; k = k + 1) begin
            @(posedge clk);
            a   = lfsr_a;
            b   = lfsr_b;
            cin = lfsr_a[0] ^ lfsr_b[0];
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule