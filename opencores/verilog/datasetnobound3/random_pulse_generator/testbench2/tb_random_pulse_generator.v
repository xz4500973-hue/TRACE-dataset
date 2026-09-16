`timescale 1ns / 1ps
module tb_random_pulse_generator;
    reg clk; reg ce; reg rst; wire q;
    random_pulse_generator #(.LN2_PERIOD(8)) u_dut (.clk(clk),.ce(ce),.rst(rst),.q(q));
    initial clk=0; always #2 clk=~clk;  // 250MHz
    initial begin
        $dumpfile("rpg.vcd"); $dumpvars(0,tb_random_pulse_generator);
        rst=1; ce=0; #100; rst=0; #20;
        // Burst pattern
        repeat(100) begin ce=1; #500; ce=0; #200; end
        ce=1; #200000; ce=0; #10000;
        $display("Done at %0t",$time); $finish;
    end
endmodule