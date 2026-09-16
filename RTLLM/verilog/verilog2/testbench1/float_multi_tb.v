`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer m;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#12 rst=0;
        // Multiply by infinity
        for(m=0;m<6;m=m+1)begin @(posedge clk);a=32'h7F800000;b=32'h3F800000+m*32'h00800000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule