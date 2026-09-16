`timescale 1ns/1ps
module freq_div_tb;
    reg CLK_in,RST; wire CLK_50,CLK_10,CLK_1;
    freq_div dut(.CLK_in(CLK_in),.RST(RST),.CLK_50(CLK_50),.CLK_10(CLK_10),.CLK_1(CLK_1));
    always #5 CLK_in=~CLK_in;
    initial begin
        $dumpfile("freq_div_tb.vcd");$dumpvars(0,freq_div_tb);
        CLK_in=0;RST=1;#11 RST=0;
        repeat(25)@(posedge CLK_in);
        RST=1;repeat(3)@(posedge CLK_in);RST=0;
        repeat(80)@(posedge CLK_in);$finish;
    end
endmodule