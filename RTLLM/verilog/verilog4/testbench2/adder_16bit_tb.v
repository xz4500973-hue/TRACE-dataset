`timescale 1ns/1ps

module adder_16bit_tb;
    reg clk; reg [15:0] a,b; reg Cin; wire [15:0] y; wire Co;
    adder_16bit dut (.a(a),.b(b),.Cin(Cin),.y(y),.Co(Co));
    always #5 clk=~clk;
    integer s; reg [15:0] aptn[0:3]; reg [15:0] bptn[0:3];
    initial begin
        aptn[0]=16'h0F0F; aptn[1]=16'hF0F0; aptn[2]=16'hAAAA; aptn[3]=16'h5555;
        bptn[0]=16'h3333; bptn[1]=16'hCCCC; bptn[2]=16'h1212; bptn[3]=16'hEDED;
        $dumpfile("adder_16bit_tb.vcd"); $dumpvars(0,adder_16bit_tb);
        clk=0;a=0;b=0;Cin=0;#13;
        for(s=0;s<16;s=s+1)begin @(posedge clk);a=aptn[s[1:0]];b=bptn[s[3:2]];Cin=s[0]^s[2];end
        @(posedge clk);a=16'hAAAA;b=16'h5555;Cin=0; @(posedge clk);Cin=1;
        repeat(5)@(posedge clk);$finish;
    end
endmodule