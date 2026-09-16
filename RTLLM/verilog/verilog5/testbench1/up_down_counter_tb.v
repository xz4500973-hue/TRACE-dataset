`timescale 1ns/1ps
module up_down_counter_tb;
    reg clk,reset,up_down; wire[15:0]count; integer t;
    up_down_counter dut(.clk(clk),.reset(reset),.up_down(up_down),.count(count));
    always #5 clk=~clk;
    initial begin
        $dumpfile("up_down_counter_tb.vcd");$dumpvars(0,up_down_counter_tb);
        clk=0;reset=1;up_down=1;#13 reset=0;
        // Count up near max then toggle direction
        repeat(65540)@(posedge clk);
        up_down=0;repeat(10)@(posedge clk);
        $finish;
    end
endmodule