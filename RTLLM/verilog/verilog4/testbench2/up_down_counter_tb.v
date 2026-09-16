`timescale 1ns/1ps
module up_down_counter_tb;
    reg clk,reset,up_down; wire[15:0]count; integer s;
    up_down_counter dut(.clk(clk),.reset(reset),.up_down(up_down),.count(count));
    always #5 clk=~clk;
    initial begin
        $dumpfile("up_down_counter_tb.vcd");$dumpvars(0,up_down_counter_tb);
        clk=0;reset=1;up_down=1;#6 reset=0;
        repeat(3)@(posedge clk);reset=1;@(posedge clk);reset=0;up_down=0;
        repeat(8)@(posedge clk);reset=1;#5 reset=0;up_down=1;
        repeat(12)@(posedge clk);$finish;
    end
endmodule