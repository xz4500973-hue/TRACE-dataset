`timescale 1ns/1ps

module bshift_tb;

    reg [7:0] data;
    reg [2:0] shamt;
    wire [7:0] out;

    bshift dut (.data(data), .shamt(shamt), .out(out));

    reg clk;
    always #5 clk = ~clk;
    reg [7:0] cnt;
    integer i;

    initial begin
        $dumpfile("bshift_tb.vcd");
        $dumpvars(0, bshift_tb);
        clk = 1'b0;
        data = 8'd0; shamt = 3'd0; cnt = 8'd0;
        #15;

        // correlated: data = cnt, shamt = fixed
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            data  = cnt;
            shamt = 3'd3;
            cnt = cnt + 8'd1;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
