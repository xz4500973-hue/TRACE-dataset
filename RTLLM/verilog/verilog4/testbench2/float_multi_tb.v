`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer s;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#6 rst=0;
        // Multiply by zero
        for(s=0;s<6;s=s+1)begin @(posedge clk);a=32'h00000000;b=32'h40400000+s*32'h01000000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule