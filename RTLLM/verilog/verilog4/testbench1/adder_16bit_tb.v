`timescale 1ns/1ps

module adder_16bit_tb;
    reg clk; reg [15:0] a,b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a),.b(b),.Cin(Cin),.y(y),.Co(Co));
    always #5 clk=~clk;
    integer r;
    initial begin
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0,adder_16bit_tb);
        clk=0;a=0;b=0;Cin=0;#9;
        a=16'hFFFF; b=16'hFFFF;
        for(r=0;r<12;r=r+1)begin @(posedge clk);Cin=r[0];end
        @(posedge clk);a=16'hFFFF;b=16'hFFFE;Cin=0; @(posedge clk);Cin=1;
        @(posedge clk);a=16'hFFFE;b=16'hFFFF;Cin=0; @(posedge clk);Cin=1;
        @(posedge clk);a=16'h8000;b=16'h8000;Cin=0; @(posedge clk);Cin=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule