`timescale 1ns/1ps
module float_multi_tb;
    reg clk,rst; reg[31:0]a,b; wire[31:0]z; integer p;
    float_multi dut(.clk(clk),.rst(rst),.a(a),.b(b),.z(z));
    always #5 clk=~clk;
    initial begin
        $dumpfile("float_multi_tb.vcd");$dumpvars(0,float_multi_tb);
        clk=0;rst=1;#14 rst=0;
        // Negative values
        for(p=0;p<8;p=p+1)begin @(posedge clk);a=32'hBF800000-p*32'h00800000;b=32'hC0000000;end
        repeat(30)@(posedge clk);$finish;
    end
endmodule