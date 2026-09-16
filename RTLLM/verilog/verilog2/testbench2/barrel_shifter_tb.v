`timescale 1ns/1ps
module barrel_shifter_tb;
    reg clk; reg[7:0]in; reg[2:0]ctrl; wire[7:0]out;
    barrel_shifter dut(.in(in),.ctrl(ctrl),.out(out));
    always #5 clk=~clk; integer n;
    initial begin
        $dumpfile("barrel_shifter_tb.vcd");$dumpvars(0,barrel_shifter_tb);
        clk=0;in=8'hAA;ctrl=0;#7;
        for(n=0;n<8;n=n+1)begin @(posedge clk);ctrl=n;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule