`timescale 1ns/1ps
module multi_booth_8bit_tb;
    reg clk,reset; reg[7:0]a,b; wire[15:0]p; wire rdy; integer t;
    multi_booth_8bit dut(.p(p),.rdy(rdy),.clk(clk),.reset(reset),.a(a),.b(b));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_booth_8bit_tb.vcd");$dumpvars(0,multi_booth_8bit_tb);
        clk=0;reset=1;a=8'hFF;b=8'hFF;#13 reset=0;
        for(t=0;t<4;t=t+1)begin @(posedge clk);@(posedge clk);reset=1;@(posedge clk);reset=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule