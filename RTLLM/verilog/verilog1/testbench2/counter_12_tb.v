`timescale 1ns/1ps
module counter_12_tb;
    reg rst_n,clk,valid_count; wire[3:0]out;
    counter_12 dut(.rst_n(rst_n),.clk(clk),.valid_count(valid_count),.out(out));
    always #5 clk=~clk; integer k;
    initial begin
        $dumpfile("counter_12_tb.vcd");$dumpvars(0,counter_12_tb);
        clk=0;rst_n=0;valid_count=0;#8 rst_n=1;
        for(k=0;k<24;k=k+1)begin @(posedge clk);valid_count=k%2;end
        $finish;
    end
endmodule