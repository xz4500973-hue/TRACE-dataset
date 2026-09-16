`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pr; wire[7:0]c; wire r,y,g; integer p;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pr),.clock(c),.red(r),.yellow(y),.green(g));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pr=0;#14 rst_n=1;
        // Multiple pass requests
        repeat(20)@(posedge clk);pr=1;repeat(3)@(posedge clk);pr=0;
        repeat(60)@(posedge clk);pr=1;repeat(3)@(posedge clk);pr=0;
        repeat(100)@(posedge clk);$finish;
    end
endmodule