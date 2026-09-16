`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pr; wire[7:0]c; wire r,y,g; integer q;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pr),.clock(c),.red(r),.yellow(y),.green(g));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pr=1;#9 rst_n=1; // start with request
        repeat(20)@(posedge clk);pr=0;
        repeat(200)@(posedge clk);$finish;
    end
endmodule