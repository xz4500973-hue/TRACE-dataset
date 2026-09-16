`timescale 1ns/1ps
module counter_12_tb;
    reg rst_n,clk,valid_count; wire[3:0]out;
    counter_12 dut(.rst_n(rst_n),.clk(clk),.valid_count(valid_count),.out(out));
    always #5 clk=~clk; integer m;
    initial begin
        $dumpfile("counter_12_tb.vcd");$dumpvars(0,counter_12_tb);
        clk=0;rst_n=0;valid_count=0;#12 rst_n=1;valid_count=1;
        for(m=0;m<15;m=m+1)@(posedge clk);
        valid_count=0;repeat(5)@(posedge clk);valid_count=1;
        for(m=0;m<10;m=m+1)@(posedge clk);$finish;
    end
endmodule