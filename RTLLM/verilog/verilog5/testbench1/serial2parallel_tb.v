`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer t;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#13 rst_n=1;
        // 0x81 = 10000001
        @(posedge clk);ds=1;dv=1;
        for(t=0;t<6;t=t+1)begin @(posedge clk);ds=0;dv=1;end
        @(posedge clk);ds=1;dv=1;
        @(posedge clk);dv=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule