`timescale 1ns/1ps
module RAM_tb;
    reg clk,rst_n,write_en,read_en; reg[7:0]waddr,raddr; reg[5:0]wdata; wire[5:0]rdata; integer i;
    RAM dut(.clk(clk),.rst_n(rst_n),.write_en(write_en),.write_addr(waddr),.write_data(wdata),.read_en(read_en),.read_addr(raddr),.read_data(rdata));
    always #5 clk=~clk;
    initial begin
        $dumpfile("RAM_tb.vcd");$dumpvars(0,RAM_tb);
        clk=0;rst_n=0;write_en=0;read_en=0;waddr=0;raddr=0;wdata=0;#10 rst_n=1;
        for(i=0;i<12;i=i+1)begin @(posedge clk);waddr=i;wdata=i*5;write_en=1;end
        @(posedge clk);write_en=0;
        for(i=0;i<12;i=i+1)begin @(posedge clk);raddr=i;read_en=1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule