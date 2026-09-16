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

    integer t;
    reg [7:0] walk;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #12;

        // Walking-1 on a: a = 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
        // b = 0, cin = 0
        walk = 8'h01;
        for (t = 0; t < 8; t = t + 1) begin
            @(posedge clk);
            a = walk;
            b = 8'd0;
            cin = 1'b0;
            walk = walk << 1;
        end

        // Walking-1 with cin=1
        walk = 8'h01;
        for (t = 0; t < 8; t = t + 1) begin
            @(posedge clk);
            a = walk;
            b = 8'd0;
            cin = 1'b1;
            walk = walk << 1;
        end

        // Two walking-1s on both a and b
        a = 8'h08;
        b = 8'h10;
        cin = 1'b0;
        @(posedge clk);
        a = 8'h40;
        b = 8'h02;
        @(posedge clk);

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule