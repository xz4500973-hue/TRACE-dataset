`timescale 1ns/1ps
module counter_12_tb;
    reg rst_n,clk,valid_count; wire[3:0]out;
    counter_12 dut(.rst_n(rst_n),.clk(clk),.valid_count(valid_count),.out(out));
    always #5 clk=~clk; integer q;
    initial begin
        $dumpfile("counter_12_tb.vcd");$dumpvars(0,counter_12_tb);
        clk=0;rst_n=0;valid_count=0;#9 rst_n=1;valid_count=1;
        for(q=0;q<25;q=q+1)begin @(posedge clk);valid_count=q%3!=0;end
        $finish;
    end
endmodule