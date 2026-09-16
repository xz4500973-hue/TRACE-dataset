`timescale 1ns / 100ps

module tb_statled;
    reg clk,rst; reg[3:0]status; wire led;
    statled uut(.clk(clk),.rst(rst),.status(status),.led(led));
    initial clk=0; always #10 clk=~clk;
    initial begin
        $dumpfile("statled.vcd");$dumpvars(0,tb_statled);
        rst=1;status=4'b0000;#100 rst=0;
        // Toggle between 3 states with longer dwell
        status=1;#8000000;status=3;#8000000;status=5;#8000000;status=0;#8000000;
        $display("Simulation finished at %0t",$time);$finish;
    end
endmodule