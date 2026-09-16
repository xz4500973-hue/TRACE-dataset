`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pr; wire[7:0]clk_out; wire r,y,g; integer k;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pr),.clock(clk_out),.red(r),.yellow(y),.green(g));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pr=0;#8 rst_n=1;
        repeat(50)@(posedge clk);
        pr=1;repeat(5)@(posedge clk);pr=0;
        repeat(200)@(posedge clk);$finish;
    end
endmodule