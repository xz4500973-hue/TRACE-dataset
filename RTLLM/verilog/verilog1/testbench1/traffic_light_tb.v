`timescale 1ns/1ns
module traffic_light_tb;
    reg rst_n,clk,pass_request; wire[7:0]clock; wire red,yellow,green;
    traffic_light dut(.rst_n(rst_n),.clk(clk),.pass_request(pass_request),.clock(clock),.red(red),.yellow(yellow),.green(green));
    always #5 clk=~clk;
    initial begin
        $dumpfile("traffic_light_tb.vcd");$dumpvars(0,traffic_light_tb);
        clk=0;rst_n=0;pass_request=0;#10 rst_n=1;
        repeat(200)@(posedge clk);$finish;
    end
endmodule