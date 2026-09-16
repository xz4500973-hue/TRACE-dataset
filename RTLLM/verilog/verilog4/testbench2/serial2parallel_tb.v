`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer s;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#6 rst_n=1;
        // 3 consecutive bytes: 0x0F, 0xF0, 0x00
        for(s=0;s<4;s=s+1)begin @(posedge clk);ds=1;dv=1;end
        for(s=0;s<4;s=s+1)begin @(posedge clk);ds=0;dv=1;end
        for(s=0;s<4;s=s+1)begin @(posedge clk);ds=0;dv=1;end
        for(s=0;s<4;s=s+1)begin @(posedge clk);ds=0;dv=1;end
        for(s=0;s<8;s=s+1)begin @(posedge clk);ds=0;dv=1;end
        repeat(5)@(posedge clk);$finish;
    end
endmodule