`timescale 1ns/1ps
module barrel_shifter_tb;
    reg clk; reg[7:0]in; reg[2:0]ctrl; wire[7:0]out;
    barrel_shifter dut(.in(in),.ctrl(ctrl),.out(out));
    always #5 clk=~clk; integer i,j;
    initial begin
        $dumpfile("barrel_shifter_tb.vcd");$dumpvars(0,barrel_shifter_tb);
        clk=0;in=8'hA5;ctrl=0;#10;
        for(j=0;j<8;j=j+1)for(i=0;i<8;i=i+1)begin @(posedge clk);in=i*17+3;ctrl=j;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule