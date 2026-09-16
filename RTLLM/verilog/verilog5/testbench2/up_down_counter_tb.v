`timescale 1ns/1ps
module up_down_counter_tb;
    reg clk,reset,up_down; wire[15:0]count; integer u;
    up_down_counter dut(.clk(clk),.reset(reset),.up_down(up_down),.count(count));
    always #5 clk=~clk;
    initial begin
        $dumpfile("up_down_counter_tb.vcd");$dumpvars(0,up_down_counter_tb);
        clk=0;reset=1;up_down=1;#10 reset=0;
        // Toggle direction every 1 cycle
        for(u=0;u<20;u=u+1)begin @(posedge clk);up_down=~up_down;end
        $finish;
    end
endmodule