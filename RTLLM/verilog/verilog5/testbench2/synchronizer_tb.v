`timescale 1ns/1ps
module synchronizer_tb;
    reg clk_a,clk_b,arstn,brstn,en; reg[3:0]din; wire[3:0]dout; integer u;
    synchronizer dut(.clk_a(clk_a),.clk_b(clk_b),.arstn(arstn),.brstn(brstn),.data_in(din),.data_en(en),.dataout(dout));
    always #5 clk_a=~clk_a; always #14 clk_b=~clk_b;
    initial begin
        $dumpfile("synchronizer_tb.vcd");$dumpvars(0,synchronizer_tb);
        clk_a=0;clk_b=0;arstn=0;brstn=0;din=0;en=0;#10 arstn=1;brstn=1;
        // Long enable pulse
        @(posedge clk_a);din=4'hC;en=1;repeat(5)@(posedge clk_a);en=0;
        repeat(30)@(posedge clk_b);
        // Short enable pulse
        @(posedge clk_a);din=4'h3;en=1;@(posedge clk_a);en=0;
        repeat(30)@(posedge clk_b);$finish;
    end
endmodule