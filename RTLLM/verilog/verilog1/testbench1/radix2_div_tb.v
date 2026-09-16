`timescale 1ns/1ps
module radix2_div_tb;
    reg clk,rst,sign,opn_valid,res_ready; reg[7:0]dividend,divisor; wire res_valid; wire[15:0]result; integer i;
    radix2_div dut(.clk(clk),.rst(rst),.dividend(dividend),.divisor(divisor),.sign(sign),.opn_valid(opn_valid),.res_valid(res_valid),.res_ready(res_ready),.result(result));
    always #5 clk=~clk;
    initial begin
        $dumpfile("radix2_div_tb.vcd");$dumpvars(0,radix2_div_tb);
        clk=0;rst=1;sign=0;opn_valid=0;res_ready=1;dividend=0;divisor=0;#10 rst=0;
        for(i=0;i<8;i=i+1)begin @(posedge clk);dividend=i*20+10;divisor=i*3+2;opn_valid=1;@(posedge clk);opn_valid=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule