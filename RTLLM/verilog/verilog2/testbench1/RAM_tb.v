`timescale 1ns/1ps
module RAM_tb;
    reg clk,rst_n,we,re; reg[7:0]wa,ra; reg[5:0]wd; wire[5:0]rd; integer m;
    RAM dut(.clk(clk),.rst_n(rst_n),.write_en(we),.write_addr(wa),.write_data(wd),.read_en(re),.read_addr(ra),.read_data(rd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("RAM_tb.vcd");$dumpvars(0,RAM_tb);
        clk=0;rst_n=0;we=0;re=0;wa=0;ra=0;wd=0;#12 rst_n=1;
        for(m=0;m<12;m=m+1)begin @(posedge clk);wa=m;wd=m+10;we=1;end
        @(posedge clk);we=0;
        for(m=0;m<12;m=m+1)begin @(posedge clk);ra=m;re=1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule