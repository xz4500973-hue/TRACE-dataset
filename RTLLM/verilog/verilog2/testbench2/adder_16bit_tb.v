`timescale 1ns/1ps

module adder_16bit_tb;

    reg         clk;
    reg [15:0]  a;
    reg [15:0]  b;
    reg         Cin;
    wire [15:0] y;
    wire        Co;

    adder_16bit dut (.a(a), .b(b), .Cin(Cin), .y(y), .Co(Co));
    always #5 clk = ~clk;

    integer t;
    reg [15:0] walk;

    initial begin
        $dumpfile("adder_16bit_tb.vcd");
        $dumpvars(0, adder_16bit_tb);
        clk = 1'b0; a = 16'd0; b = 16'd0; Cin = 1'b0;
        #12;

        walk = 16'h0001;
        for (t = 0; t < 16; t = t + 1) begin
            @(posedge clk); a = walk; b = 16'd0; Cin = 1'b0; walk = walk << 1;
        end
        walk = 16'h0001;
        for (t = 0; t < 16; t = t + 1) begin
            @(posedge clk); a = walk; b = 16'd0; Cin = 1'b1; walk = walk << 1;
        end
        @(posedge clk); a = 16'h0100; b = 16'h0080; Cin = 1'b0;
        @(posedge clk); a = 16'h4000; b = 16'h0200; Cin = 1'b1;

        repeat(5) @(posedge clk); $finish;
    end

endmodule