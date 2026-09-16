`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer q;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#9 rst_n=1;
        // Random: 4 x 8-bit streams
        repeat(4)begin
            for(q=0;q<8;q=q+1)begin @(posedge clk);ds=$random%2;dv=1;end
            repeat(4)@(posedge clk);dv=0;
        end
        repeat(5)@(posedge clk);$finish;
    end
endmodule