`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer m;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#12 rst_n=1;
        // All ones: 0xFF
        for(m=0;m<8;m=m+1)begin @(posedge clk);ds=1;dv=1;end
        @(posedge clk);dv=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule