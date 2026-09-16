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

    always #5 clk = ~clk;

    integer s;
    reg [7:0] a_patterns [0:3];
    reg [7:0] b_patterns [0:3];

    initial begin
        a_patterns[0] = 8'h0F;
        a_patterns[1] = 8'hF0;
        a_patterns[2] = 8'hAA;
        a_patterns[3] = 8'h55;
        b_patterns[0] = 8'h33;
        b_patterns[1] = 8'hCC;
        b_patterns[2] = 8'h12;
        b_patterns[3] = 8'hED;

        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #13;

        // Pattern cycling: 4x4 = 16 combinations
        for (s = 0; s < 16; s = s + 1) begin
            @(posedge clk);
            a   = a_patterns[s[1:0]];
            b   = b_patterns[s[3:2]];
            cin = s[0] ^ s[2];
        end

        // Extra: 0xAA + 0x55 = 0xFF, cin=0
        @(posedge clk);
        a = 8'hAA;
        b = 8'h55;
        cin = 1'b0;
        @(posedge clk);
        cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule