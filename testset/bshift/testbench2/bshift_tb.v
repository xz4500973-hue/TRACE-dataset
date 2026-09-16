`timescale 1ns/1ps

module bshift_tb;

    reg [7:0] data;
    reg [2:0] shamt;
    wire [7:0] out;

    bshift dut (.data(data), .shamt(shamt), .out(out));

    reg clk;
    always #5 clk = ~clk;
    integer i;

    initial begin
        $dumpfile("bshift_tb.vcd");
        $dumpvars(0, bshift_tb);
        clk = 1'b0;
        data = 8'd0; shamt = 3'd0;
        #15;

        // boundary values
        data = 8'h80; shamt = 3'd0; @(posedge clk);
        data = 8'h80; shamt = 3'd1; @(posedge clk);
        data = 8'h01; shamt = 3'd7; @(posedge clk);
        data = 8'hFF; shamt = 3'd7; @(posedge clk);
        data = 8'h55; shamt = 3'd4; @(posedge clk);
        data = 8'hAA; shamt = 3'd3; @(posedge clk);

        // sweep
        for (i = 0; i < 64; i = i + 1) begin
            @(posedge clk);
            data  = i;
            shamt = i % 8;
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
