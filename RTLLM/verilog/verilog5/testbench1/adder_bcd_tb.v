`timescale 1ns/1ps
module adder_bcd_tb;
    reg clk; reg[3:0]A,B; reg Cin; wire[3:0]Sum; wire Cout;
    adder_bcd dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    always #5 clk=~clk; integer s;
    initial begin
        $dumpfile("adder_bcd_tb.vcd");$dumpvars(0,adder_bcd_tb);
        clk=0;A=0;B=0;Cin=0;#16;
        for(s=0;s<20;s=s+1)begin @(posedge clk);A=$random(1)%10;B=$random(2)%10;Cin=s[0];end
        repeat(5)@(posedge clk);$finish;
    end
endmodule