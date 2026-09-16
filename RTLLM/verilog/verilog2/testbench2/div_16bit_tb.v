`timescale 1ns/1ps
module div_16bit_tb;
    reg clk; reg[15:0]A; reg[7:0]B; wire[15:0]result,odd; integer n;
    div_16bit dut(.A(A),.B(B),.result(result),.odd(odd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("div_16bit_tb.vcd");$dumpvars(0,div_16bit_tb);
        clk=0;A=0;B=7;#7;
        for(n=0;n<16;n=n+1)begin @(posedge clk);A=n*200;B=7;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule