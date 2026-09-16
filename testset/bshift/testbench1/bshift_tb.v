`timescale 1ns/1ps

module bshift_tb;

    reg [7:0] data;
    reg [2:0] shamt;
    wire [7:0] out;

    bshift dut (.data(data), .shamt(shamt), .out(out));

    reg clk;
    always #5 clk = ~clk;

    reg [7:0] lfsr;
    wire fb;
    integer i;
    assign fb = lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3];
    always @(posedge clk) lfsr <= {lfsr[6:0], fb};

    initial begin
        $dumpfile("bshift_tb.vcd");
        $dumpvars(0, bshift_tb);
        clk = 1'b0;
        data = 8'd0; shamt = 3'd0;
        lfsr = 8'hA5;
        #15;

        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            data  = lfsr;
            shamt = lfsr[2:0];
        end

        repeat(5) @(posedge clk);
        $finish;
    end

endmodule
