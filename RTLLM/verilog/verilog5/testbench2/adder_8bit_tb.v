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

    integer v;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #17;

        // Interleaved increment: a = 0,2,4...254; b = 1,3,5...255; cin = a[0]
        for (v = 0; v < 128; v = v + 1) begin
            @(posedge clk);
            a   = v * 2;        // 0, 2, 4, ..., 254
            b   = v * 2 + 1;    // 1, 3, 5, ..., 255
            cin = a[0];
        end

        // Near overflow: 254 + 255
        @(posedge clk);
        a = 8'd254; b = 8'd255; cin = 1'b0;
        @(posedge clk);
        cin = 1'b1;

        // 255 + 254
        @(posedge clk);
        a = 8'd255; b = 8'd254; cin = 1'b0;
        @(posedge clk);
        cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule