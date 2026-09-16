`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer u;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#10 rst=0;
        // Denormalized: very small numbers
        for(u=0;u<6;u=u+1)begin @(posedge clk);a=32'h00800000+u*32'h00010000;b=32'h00800000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule