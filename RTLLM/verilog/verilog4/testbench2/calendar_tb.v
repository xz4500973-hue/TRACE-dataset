`timescale 1ns/1ps
module calendar_tb;
    reg CLK,RST; wire[5:0]Hours,Mins,Secs;
    calendar dut(.CLK(CLK),.RST(RST),.Hours(Hours),.Mins(Mins),.Secs(Secs));
    always #5 CLK=~CLK;
    initial begin
        $dumpfile("calendar_tb.vcd");$dumpvars(0,calendar_tb);
        CLK=0;RST=1;#6 RST=0;
        repeat(62)@(posedge CLK); // 1min + 2s
        $finish;
    end
endmodule