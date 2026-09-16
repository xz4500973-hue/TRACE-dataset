`timescale 1ns/1ps
module adder_bcd_tb;
    reg clk; reg[3:0]A,B; reg Cin; wire[3:0]Sum; wire Cout;
    adder_bcd dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    always #5 clk=~clk; integer p;
    initial begin
        $dumpfile("adder_bcd_tb.vcd");$dumpvars(0,adder_bcd_tb);
        clk=0;A=0;B=0;Cin=0;#9;
        for(p=0;p<10;p=p+1)begin @(posedge clk);A=5;B=p;Cin=0; @(posedge clk);Cin=1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule