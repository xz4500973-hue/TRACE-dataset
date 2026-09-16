`timescale 1ns/1ps
module RAM_tb;
    reg clk,rst_n,we,re; reg[7:0]wa,ra; reg[5:0]wd; wire[5:0]rd; integer t;
    RAM dut(.clk(clk),.rst_n(rst_n),.write_en(we),.write_addr(wa),.write_data(wd),.read_en(re),.read_addr(ra),.read_data(rd));
    always #5 clk=~clk;
    initial begin
        $dumpfile("RAM_tb.vcd");$dumpvars(0,RAM_tb);
        clk=0;rst_n=0;we=0;re=0;wa=0;ra=0;wd=0;#13 rst_n=1;
        for(t=0;t<12;t=t+1)begin @(posedge clk);wa=t;wd=t*2+1;we=1;end
        @(posedge clk);we=0;
        for(t=0;t<12;t=t+1)begin @(posedge clk);ra=t;re=1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule