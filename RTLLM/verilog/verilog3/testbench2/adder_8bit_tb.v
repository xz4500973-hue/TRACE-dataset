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

    integer q;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #11;

        // a = b sync: both sweep 0..63 together, cin flips every 4
        for (q = 0; q < 64; q = q + 1) begin
            @(posedge clk);
            a = q[7:0];
            b = q[7:0];
            cin = q[2];  // flips every 4 steps
        end

        // a = b = 127, 128, 200, 255
        @(posedge clk); a = 8'd127; b = 8'd127; cin = 1'b0;
        @(posedge clk); a = 8'd128; b = 8'd128; cin = 1'b1;
        @(posedge clk); a = 8'd200; b = 8'd200; cin = 1'b0;
        @(posedge clk); a = 8'd255; b = 8'd255; cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule