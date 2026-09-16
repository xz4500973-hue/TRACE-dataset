`timescale 1ns/1ps
module adder_bcd_tb;
    reg clk; reg[3:0]A,B; reg Cin; wire[3:0]Sum; wire Cout;
    adder_bcd dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    always #5 clk=~clk; integer q;
    initial begin
        $dumpfile("adder_bcd_tb.vcd");$dumpvars(0,adder_bcd_tb);
        clk=0;A=0;B=0;Cin=0;#11;
        for(q=0;q<10;q=q+1)begin @(posedge clk);A=q;B={q[2:0],q[3]};Cin=q[0];end
        repeat(5)@(posedge clk);$finish;
    end
endmodule