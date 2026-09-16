`timescale 1ns/1ps
module instr_reg_tb;
    reg clk,rst; reg[1:0]fetch; reg[7:0]data; wire[2:0]ins; wire[4:0]ad1; wire[7:0]ad2;
    instr_reg dut(.clk(clk),.rst(rst),.fetch(fetch),.data(data),.ins(ins),.ad1(ad1),.ad2(ad2));
    always #5 clk=~clk; integer m;
    initial begin
        $dumpfile("instr_reg_tb.vcd");$dumpvars(0,instr_reg_tb);
        clk=0;rst=0;fetch=0;data=0;#12 rst=1;
        for(m=0;m<10;m=m+1)begin @(posedge clk);fetch=1;data=8'hFF;end
        @(posedge clk);fetch=0;
        repeat(5)@(posedge clk);$finish;
    end
endmodule