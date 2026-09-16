`timescale 1ns/1ps
module adder_bcd_tb;
    reg clk; reg[3:0]A,B; reg Cin; wire[3:0]Sum; wire Cout;
    adder_bcd dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    always #5 clk=~clk;
    integer r; reg[3:0] vals[0:4];
    initial begin
        vals[0]=0;vals[1]=2;vals[2]=4;vals[3]=6;vals[4]=8;
        $dumpfile("adder_bcd_tb.vcd");$dumpvars(0,adder_bcd_tb);
        clk=0;A=0;B=0;Cin=0;#13;
        for(r=0;r<25;r=r+1)begin @(posedge clk);A=vals[r%5];B=vals[(r+1)%5];Cin=r[0];end
        repeat(5)@(posedge clk);$finish;
    end
endmodule