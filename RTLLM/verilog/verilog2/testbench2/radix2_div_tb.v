`timescale 1ns/1ps
module radix2_div_tb;
    reg clk,rst,sgn,opv,rrdy; reg[7:0]dvd,dsr; wire rv; wire[15:0]r; integer n;
    radix2_div dut(.clk(clk),.rst(rst),.dividend(dvd),.divisor(dsr),.sign(sgn),.opn_valid(opv),.res_valid(rv),.res_ready(rrdy),.result(r));
    always #5 clk=~clk;
    initial begin
        $dumpfile("radix2_div_tb.vcd");$dumpvars(0,radix2_div_tb);
        clk=0;rst=1;sgn=0;opv=0;rrdy=1;dvd=0;dsr=0;#7 rst=0;
        for(n=0;n<6;n=n+1)begin @(posedge clk);dvd=n*40;dsr=n*10+1;opv=1;@(posedge clk);opv=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule