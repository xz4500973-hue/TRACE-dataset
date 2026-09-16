`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer p;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#14;
        // Overflow tests: positive - negative -> overflow
        for(p=0;p<8;p=p+1)begin @(posedge clk);A=64'h7000000000000000+p*1000000;B=64'h9000000000000000;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule