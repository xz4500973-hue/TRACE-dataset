`timescale 1ns/1ps

module adder_16bit_tb;
    reg clk; reg [15:0] a,b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a),.b(b),.Cin(Cin),.y(y),.Co(Co));
    always #5 clk=~clk;
    integer v;
    initial begin
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0,adder_16bit_tb);
        clk=0;a=0;b=0;Cin=0;#17;
        for(v=0;v<128;v=v+1)begin @(posedge clk);a=v*2;b=v*2+1;Cin=a[0];end
        @(posedge clk);a=16'd65534;b=16'd65535;Cin=0; @(posedge clk);Cin=1;
        @(posedge clk);a=16'd65535;b=16'd65534;Cin=0; @(posedge clk);Cin=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule