`timescale 1ns/1ps
module multi_booth_8bit_tb;
    reg clk,reset; reg[7:0]a,b; wire[15:0]p; wire rdy; integer s;
    multi_booth_8bit dut(.p(p),.rdy(rdy),.clk(clk),.reset(reset),.a(a),.b(b));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_booth_8bit_tb.vcd");$dumpvars(0,multi_booth_8bit_tb);
        clk=0;reset=1;a=0;b=0;#6 reset=0;
        for(s=0;s<5;s=s+1)begin @(posedge clk);a=s*50;b=s*50;@(posedge clk);reset=1;@(posedge clk);reset=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule