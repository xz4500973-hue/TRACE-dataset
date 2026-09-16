`timescale 1ns/1ps
module multi_booth_8bit_tb;
    reg clk,reset; reg[7:0]a,b; wire[15:0]p; wire rdy; integer q;
    multi_booth_8bit dut(.p(p),.rdy(rdy),.clk(clk),.reset(reset),.a(a),.b(b));
    always #5 clk=~clk;
    initial begin
        $dumpfile("multi_booth_8bit_tb.vcd");$dumpvars(0,multi_booth_8bit_tb);
        clk=0;reset=1;a=0;b=0;#9 reset=0;
        for(q=0;q<5;q=q+1)begin @(posedge clk);a=8'h80>>q;b=8'h01<<q;@(posedge clk);reset=1;@(posedge clk);reset=0;repeat(20)@(posedge clk);end
        $finish;
    end
endmodule