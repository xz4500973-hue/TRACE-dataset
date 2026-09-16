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

    integer j;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #8;

        // Full carry propagation test: a=FF, b sweeps 0..15, cin=1
        a   = 8'hFF;
        cin = 1'b1;
        for (j = 0; j < 16; j = j + 1) begin
            @(posedge clk);
            b = j[3:0];
        end

        // a=0, b=FF, cin=0
        a   = 8'h00;
        b   = 8'hFF;
        cin = 1'b0;
        @(posedge clk);

        // a=0, b=FF, cin=1
        cin = 1'b1;
        @(posedge clk);

        // a=FF, b=FF, cin=0
        a   = 8'hFF;
        b   = 8'hFF;
        cin = 1'b0;
        @(posedge clk);

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule