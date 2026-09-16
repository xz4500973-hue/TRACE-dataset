`timescale 1ns/1ps
module radix2_div_tb;
    reg clk,rst,sign,opn_valid,res_ready; reg[7:0]dvd,dsr; wire rv; wire[15:0]r; integer k;
    radix2_div dut(.clk(clk),.rst(rst),.dividend(dvd),.divisor(dsr),.sign(sign),.opn_valid(opn_valid),.res_valid(rv),.res_ready(res_ready),.result(r));
    always #5 clk=~clk;
    initial begin
        $dumpfile("radix2_div_tb.vcd");$dumpvars(0,radix2_div_tb);
        clk=0;rst=1;sign=0;opn_valid=0;res_ready=1;dvd=0;dsr=0;#8 rst=0;
        for(k=0;k<10;k=k+1)begin @(posedge clk);dvd=k*25;dsr=5;opn_valid=1;@(posedge clk);opn_valid=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule