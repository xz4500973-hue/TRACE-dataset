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

    integer u;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #16;

        // $random with fixed seeds: 30 random pairs
        for (u = 0; u < 30; u = u + 1) begin
            @(posedge clk);
            a   = $random(1) % 256;
            b   = $random(2) % 256;
            cin = ($random(3) % 2);
        end

        // Corner: both zeros
        @(posedge clk);
        a = 8'd0; b = 8'd0; cin = 1'b0;
        @(posedge clk);
        a = 8'd0; b = 8'd0; cin = 1'b1;

        // Corner: 127 + 1
        @(posedge clk);
        a = 8'd127; b = 8'd1; cin = 1'b0;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule