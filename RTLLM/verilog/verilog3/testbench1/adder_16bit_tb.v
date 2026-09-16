`timescale 1ns/1ps

module adder_16bit_tb;

    reg clk; reg [15:0] a; reg [15:0] b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a), .b(b), .Cin(Cin), .y(y), .Co(Co));
    always #5 clk = ~clk;

    integer p; reg [15:0] walk0;
    initial begin
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0, adder_16bit_tb);
        clk = 1'b0; a = 16'd0; b = 16'd0; Cin = 1'b0; #14;

        walk0 = 16'h0001; b = 16'hFFFF; Cin = 1'b1;
        for (p = 0; p < 16; p = p + 1) begin
            @(posedge clk); a = ~walk0; walk0 = walk0 << 1;
        end
        walk0 = 16'h0001; Cin = 1'b0;
        for (p = 0; p < 16; p = p + 1) begin
            @(posedge clk); a = ~walk0; walk0 = walk0 << 1;
        end
        @(posedge clk); a = 16'hFFFE; b = 16'h0001; Cin = 1'b0;
        @(posedge clk); Cin = 1'b1;
        repeat(5) @(posedge clk); $finish;
    end

endmodule