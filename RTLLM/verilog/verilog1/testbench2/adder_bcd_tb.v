`timescale 1ns/1ps
module adder_bcd_tb;
    reg clk; reg[3:0]A,B; reg Cin; wire[3:0]Sum; wire Cout;
    adder_bcd dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    always #5 clk=~clk; integer i;
    initial begin
        $dumpfile("adder_bcd_tb.vcd");$dumpvars(0,adder_bcd_tb);
        clk=0;A=0;B=0;Cin=0;#8;
        for(i=9;i>=0;i=i-1)begin
            @(posedge clk);A=i[3:0];B=9-i[3:0];Cin=1'b0;
            @(posedge clk);A=i[3:0];B=9-i[3:0];Cin=1'b1;
        end
        repeat(5)@(posedge clk);$finish;
    end
endmodule