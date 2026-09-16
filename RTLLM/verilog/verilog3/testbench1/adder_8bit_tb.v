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

    integer p;
    reg [7:0] walk0;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #14;

        // Walking-0 on a: a = ~(0x01), ~(0x02), ..., ~(0x80)
        // b = 0xFF, cin = 1
        walk0 = 8'h01;
        b = 8'hFF;
        cin = 1'b1;
        for (p = 0; p < 8; p = p + 1) begin
            @(posedge clk);
            a = ~walk0;
            walk0 = walk0 << 1;
        end

        // Walking-0 with cin = 0
        walk0 = 8'h01;
        cin = 1'b0;
        for (p = 0; p < 8; p = p + 1) begin
            @(posedge clk);
            a = ~walk0;
            walk0 = walk0 << 1;
        end

        // a=0xFE, b=0x01
        a = 8'hFE;
        b = 8'h01;
        cin = 1'b0;
        @(posedge clk);
        cin = 1'b1;
        @(posedge clk);

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule