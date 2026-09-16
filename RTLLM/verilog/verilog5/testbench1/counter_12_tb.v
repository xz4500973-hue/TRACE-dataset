`timescale 1ns/1ps
module counter_12_tb;
    reg rst_n,clk,valid_count; wire[3:0]out;
    counter_12 dut(.rst_n(rst_n),.clk(clk),.valid_count(valid_count),.out(out));
    always #5 clk=~clk; integer t;
    initial begin
        $dumpfile("counter_12_tb.vcd");$dumpvars(0,counter_12_tb);
        clk=0;rst_n=0;valid_count=0;#13 rst_n=1;valid_count=1;
        for(t=0;t<3;t=t+1)@(posedge clk);
        rst_n=0;@(posedge clk);rst_n=1;valid_count=1;@(posedge clk);valid_count=0;
        repeat(3)@(posedge clk);valid_count=1;
        for(t=0;t<14;t=t+1)@(posedge clk);$finish;
    end
endmodule