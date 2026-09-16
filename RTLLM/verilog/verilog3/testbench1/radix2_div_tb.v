`timescale 1ns/1ps
module radix2_div_tb;
    reg clk,rst,sgn,opv,rrdy; reg[7:0]dvd,dsr; wire rv; wire[15:0]r; integer p;
    radix2_div dut(.clk(clk),.rst(rst),.dividend(dvd),.divisor(dsr),.sign(sgn),.opn_valid(opv),.res_valid(rv),.res_ready(rrdy),.result(r));
    always #5 clk=~clk;
    initial begin
        $dumpfile("radix2_div_tb.vcd");$dumpvars(0,radix2_div_tb);
        clk=0;rst=1;sgn=0;opv=0;rrdy=1;dvd=0;dsr=0;#14 rst=0;
        for(p=0;p<8;p=p+1)begin @(posedge clk);dvd=$random%256;dsr=$random%200+1;opv=1;@(posedge clk);opv=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule