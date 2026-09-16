`timescale 1ns / 1ps

module lfsr_tb;
    reg clk,rst,cke,clear,set,rew;
    integer i;

    initial begin $dumpfile("vcnt.vcd"); $dumpvars(0,lfsr_tb); end
    initial begin clk=0; forever #5 clk=~clk; end

    initial begin
        cke=0;clear=0;set=0;rew=0;rst=1;
        #400 rst=0; #2000 cke=1;

        // Long run with mostly direction changes
        for(i=0;i<200;i=i+1) begin
            cke=1;
            clear=($random%20==0);
            set=($random%15==0);
            rew=$random%2;
            repeat($random%5+1) @(posedge clk);
            clear=0;set=0;
        end
        repeat(200) @(posedge clk);
        $display("Done at %0t",$time);
        $finish;
    end

    vcnt DUT(.clear(clear),.cke(cke),.set(set),.rew(rew),.q(),.clk(clk),.rst(rst));
endmodule