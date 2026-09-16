`timescale 1ns/1ps
module sub_64bit_tb;
    reg clk; reg[63:0]A,B; wire[63:0]result; wire overflow; integer q;
    sub_64bit dut(.A(A),.B(B),.result(result),.overflow(overflow));
    always #5 clk=~clk;
    initial begin
        $dumpfile("sub_64bit_tb.vcd");$dumpvars(0,sub_64bit_tb);
        clk=0;A=0;B=0;#9;
        // Walking-1 on A, B=0
        for(q=0;q<16;q=q+1)begin @(posedge clk);A=64'd1<<q;B=0;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule