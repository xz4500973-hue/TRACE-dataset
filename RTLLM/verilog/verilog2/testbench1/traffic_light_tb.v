`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pr; wire[7:0]c; wire r,y,g; integer m;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pr),.clock(c),.red(r),.yellow(y),.green(g));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pr=0;#12 rst_n=1;
        repeat(90)@(posedge clk); // about 1 full cycle
        $finish;
    end
endmodule