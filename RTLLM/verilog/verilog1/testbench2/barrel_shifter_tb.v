`timescale 1ns/1ps
module barrel_shifter_tb;
    reg clk; reg[7:0]in; reg[2:0]ctrl; wire[7:0]out;
    barrel_shifter dut(.in(in),.ctrl(ctrl),.out(out));
    always #5 clk=~clk; integer k;
    initial begin
        $dumpfile("barrel_shifter_tb.vcd");$dumpvars(0,barrel_shifter_tb);
        clk=0;in=0;ctrl=0;#8;
        for(k=0;k<8;k=k+1)begin @(posedge clk);in=8'h01<<k;ctrl=k;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule