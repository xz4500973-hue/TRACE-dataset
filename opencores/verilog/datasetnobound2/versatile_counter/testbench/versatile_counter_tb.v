`timescale 1ns / 1ps

module lfsr_tb;
    reg clk,rst,cke,clear,set,rew;
    integer i;

    initial begin $dumpfile("vcnt.vcd"); $dumpvars(0,lfsr_tb); end
    initial begin clk=0; forever #5 clk=~clk; end

    initial begin
        cke=0;clear=0;set=0;rew=0;rst=1;
        #400 rst=0; #1000 cke=1;

        // Different pattern: more frequent clear, less set
        for(i=0;i<100;i=i+1) begin
            cke=1;
            clear=($random%3==0);
            set=($random%10==0);
            rew=($random%4==0);
            repeat($random%10+3) @(posedge clk);
            clear=0;set=0;
        end
        repeat(100) @(posedge clk);
        $display("Simulation finished at %0t",$time);
        $finish;
    end

    vcnt DUT(.clear(clear),.cke(cke),.set(set),.rew(rew),.q(),.clk(clk),.rst(rst));
endmodule