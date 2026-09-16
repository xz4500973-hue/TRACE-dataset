`timescale 1ns/1ps
module multi_booth_8bit_tb;
    reg clk,reset; reg[7:0]a,b; wire[15:0]p; wire rdy; integer k;
    multi_booth_8bit dut(.p(p),.rdy(rdy),.clk(clk),.reset(reset),.a(a),.b(b));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_booth_8bit_tb.vcd");$dumpvars(0,multi_booth_8bit_tb);
        clk=0;reset=1;a=0;b=0;#8 reset=0;
        for(k=0;k<10;k=k+1)begin @(posedge clk);a=k*25;b=255-k*25;@(posedge clk);reset=1;@(posedge clk);reset=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule