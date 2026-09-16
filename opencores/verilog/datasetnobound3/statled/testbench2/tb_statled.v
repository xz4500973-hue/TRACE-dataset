`timescale 1ns / 100ps

module tb_statled;
    reg clk,rst; reg[3:0]status; wire led;
    statled uut(.clk(clk),.rst(rst),.status(status),.led(led));
    initial clk=0; always #10 clk=~clk;
    integer i;
    initial begin
        $dumpfile("statled.vcd");$dumpvars(0,tb_statled);
        rst=1;status=4'b0000;#100 rst=0;
        // Rapid state changes
        for(i=0;i<50;i=i+1) begin status<=$urandom%8; #2000000; end
        $display("Done at %0t",$time);$finish;
    end
endmodule