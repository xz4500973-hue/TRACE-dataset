`timescale 1ns/1ps
module serial2parallel_tb;
    reg clk,rst_n,ds,dv; wire[7:0]dp; wire dv_out; integer p;
    serial2parallel dut(.clk(clk),.rst_n(rst_n),.din_serial(ds),.din_valid(dv),.dout_parallel(dp),.dout_valid(dv_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("serial2parallel_tb.vcd");$dumpvars(0,serial2parallel_tb);
        clk=0;rst_n=0;ds=0;dv=0;#14 rst_n=1;
        // Interrupted stream: 4 bits -> reset -> 8 bits
        for(p=0;p<4;p=p+1)begin @(posedge clk);ds=p[0];dv=1;end
        @(posedge clk);dv=0;@(posedge clk);rst_n=0;@(posedge clk);rst_n=1;
        for(p=0;p<8;p=p+1)begin @(posedge clk);ds=p[0];dv=1;end
        @(posedge clk);dv=0;
        repeat(5)@(posedge clk);$finish;
    end
endmodule