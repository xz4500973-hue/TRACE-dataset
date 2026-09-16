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

    integer i;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #10;

        // Boundary walk: a from 0 to 255, b = ~a, cin alternates
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            a   = i[7:0];
            b   = ~i[7:0];
            cin = i[0];     // alternate cin per step
        end

        // Extra test: a=b=255, cin=1
        @(posedge clk);
        a = 8'hFF;
        b = 8'hFF;
        cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule