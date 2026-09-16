`timescale 1ns/1ps
module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk; integer t; reg[32:1] walk;
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;#12;
        walk=1;
        for(t=0;t<32;t=t+1)begin @(posedge clk);A=walk;B=0;walk=walk<<1;end
        walk=1;
        for(t=0;t<32;t=t+1)begin @(posedge clk);A=walk;B=0;walk=walk<<1;end
        @(posedge clk);A=32'h00010000;B=32'h00008000;
        repeat(5)@(posedge clk);$finish;
    end
endmodule