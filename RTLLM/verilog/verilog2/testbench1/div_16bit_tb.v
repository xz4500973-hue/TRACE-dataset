`timescale 1ns/1ps
module div_16bit_tb;
    reg clk; reg[15:0]A; reg[7:0]B; wire[15:0]result,odd; integer m;
    div_16bit dut(.A(A),.B(B),.result(result),.odd(odd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("div_16bit_tb.vcd");$dumpvars(0,div_16bit_tb);
        clk=0;A=16'hFFFF;B=255;#12;
        for(m=0;m<8;m=m+1)begin @(posedge clk);A=16'hFFFF;B=2<<m;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule