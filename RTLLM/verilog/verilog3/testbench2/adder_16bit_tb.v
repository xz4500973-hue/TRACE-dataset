`timescale 1ns/1ps

module adder_16bit_tb;
    reg clk; reg [15:0] a,b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a),.b(b),.Cin(Cin),.y(y),.Co(Co));
    always #5 clk=~clk;
    integer q;
    initial begin
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0,adder_16bit_tb);
        clk=0;a=0;b=0;Cin=0;#11;
        for(q=0;q<64;q=q+1)begin @(posedge clk);a=q;b=q;Cin=q[2];end
        @(posedge clk);a=127;b=127;Cin=0; @(posedge clk);a=128;b=128;Cin=1;
        @(posedge clk);a=200;b=200;Cin=0; @(posedge clk);a=255;b=255;Cin=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule