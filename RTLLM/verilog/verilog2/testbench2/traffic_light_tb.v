`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pr; wire[7:0]c; wire r,y,g; integer n;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pr),.clock(c),.red(r),.yellow(y),.green(g));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pr=0;#7 rst_n=1;
        repeat(30)@(posedge clk);
        rst_n=0;@(posedge clk);rst_n=1;
        repeat(75)@(posedge clk);$finish;
    end
endmodule