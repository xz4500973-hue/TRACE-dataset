`timescale 1ns/1ps

module adder_16bit_tb;
    reg clk; reg [15:0] a,b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a),.b(b),.Cin(Cin),.y(y),.Co(Co));
    always #5 clk=~clk;
    integer u;
    initial begin
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0,adder_16bit_tb);
        clk=0;a=0;b=0;Cin=0;#16;
        for(u=0;u<30;u=u+1)begin @(posedge clk);a=$random(1)%65536;b=$random(2)%65536;Cin=$random(3)%2;end
        @(posedge clk);a=0;b=0;Cin=0; @(posedge clk);a=0;b=0;Cin=1;
        @(posedge clk);a=32767;b=1;Cin=0;
        repeat(5)@(posedge clk);$finish;
    end
endmodule