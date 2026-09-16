`timescale 1ns/1ps
module fixed_point_adder_tb;
    reg clk; reg[31:0]a,b; wire[31:0]c; integer n;
    fixed_point_adder dut(.a(a),.b(b),.c(c));
    always #5 clk=~clk;
    initial begin
        $dumpfile("fixed_point_adder_tb.vcd");$dumpvars(0,fixed_point_adder_tb);
        clk=0;a=0;b=0;#7;
        // Boundary: zero crossing
        for(n=0;n<20;n=n+1)begin @(posedge clk);a={1'b0,n[14:0],{16{1'b0}}};b={1'b1,n[14:0],{16{1'b0}}};end
        repeat(5)@(posedge clk);$finish;
    end
endmodule