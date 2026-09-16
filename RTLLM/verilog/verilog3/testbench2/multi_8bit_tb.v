`timescale 1ns/1ps
module multi_8bit_tb;
    reg clk; reg[7:0]A,B; wire[15:0]product; integer q;
    multi_8bit dut(.A(A),.B(B),.product(product));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_8bit_tb.vcd");$dumpvars(0,multi_8bit_tb);
        clk=0;A=8'h80;B=8'h02;#9;
        for(q=0;q<8;q=q+1)begin @(posedge clk);A=8'h80>>q;B=8'h01<<q;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule