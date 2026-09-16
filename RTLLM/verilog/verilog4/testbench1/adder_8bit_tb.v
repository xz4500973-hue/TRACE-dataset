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

    integer r;

    initial begin
        $dumpfile("adder_8bit_tb.vcd");
        $dumpvars(0, adder_8bit_tb);

        clk = 1'b0;
        a = 8'd0;
        b = 8'd0;
        cin = 1'b0;
        #9;

        // Max extreme: a=b=FF, cin alternates 0/1, repeat multiple rounds
        a = 8'hFF;
        b = 8'hFF;
        for (r = 0; r < 12; r = r + 1) begin
            @(posedge clk);
            cin = r[0];
        end

        // Near max: a=FF, b=FE with cin=0 and cin=1
        a = 8'hFF;
        b = 8'hFE;
        @(posedge clk); cin = 1'b0;
        @(posedge clk); cin = 1'b1;

        // a=FE, b=FF
        a = 8'hFE;
        b = 8'hFF;
        @(posedge clk); cin = 1'b0;
        @(posedge clk); cin = 1'b1;

        // a=80, b=80
        a = 8'h80;
        b = 8'h80;
        @(posedge clk); cin = 1'b0;
        @(posedge clk); cin = 1'b1;

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule