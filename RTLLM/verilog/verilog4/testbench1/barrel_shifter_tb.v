`timescale 1ns/1ps
module barrel_shifter_tb;
    reg clk; reg[7:0]in; reg[2:0]ctrl; wire[7:0]out;
    barrel_shifter dut(.in(in),.ctrl(ctrl),.out(out));
    always #5 clk=~clk; integer r;
    initial begin
        $dumpfile("barrel_shifter_tb.vcd");$dumpvars(0,barrel_shifter_tb);
        clk=0;in=8'hC3;ctrl=0;#11;
        for(r=0;r<8;r=r+1)begin @(posedge clk);in=$random(1)%256;ctrl=r;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule