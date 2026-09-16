`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer n;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#7 rst=0;
        // Small positive values
        for(n=0;n<10;n=n+1)begin @(posedge clk);a=32'h3F800000+n*32'h00080000;b=32'h3E800000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule