`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer r;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#11 rst=0;
        // Random float values (limited mantissa to be valid)
        for(r=0;r<8;r=r+1)begin @(posedge clk);a=($random(1)&32'h7F8FFFFF)|32'h3F800000;b=($random(2)&32'h7F8FFFFF)|32'h3F800000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule