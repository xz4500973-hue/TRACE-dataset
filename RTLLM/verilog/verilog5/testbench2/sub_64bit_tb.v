`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer u;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#10;
        // Positive - negative (no overflow) + negative - positive (overflow)
        for(u=0;u<6;u=u+1)begin @(posedge clk);A=u*100;B=64'h8000000000000000|(u*50);end
        for(u=0;u<6;u=u+1)begin @(posedge clk);A=64'h8000000000000000|(u*10);B=u*1000;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule