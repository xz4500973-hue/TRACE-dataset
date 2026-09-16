`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer n;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#7 rst_n=1;
        // Walking 1: 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
        repeat(8)begin
            for(n=0;n<7;n=n+1)begin @(posedge clk);ds=0;dv=1;end
            @(posedge clk);ds=1;dv=1;
            repeat(3)@(posedge clk);dv=0;
        end
        repeat(5)@(posedge clk);$finish;
    end
endmodule