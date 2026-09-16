`timescale 1ns/1ps
module synchronizer_tb;
    reg clk_a,clk_b,arstn,brstn,data_en; reg[3:0]data_in; wire[3:0]dataout; integer i;
    synchronizer dut(.clk_a(clk_a),.clk_b(clk_b),.arstn(arstn),.brstn(brstn),.data_in(data_in),.data_en(data_en),.dataout(dataout));
    always #5 clk_a=~clk_a; always #7 clk_b=~clk_b;
    initial begin
        $dumpfile("synchronizer_tb.vcd");$dumpvars(0,synchronizer_tb);
        clk_a=0;clk_b=0;arstn=0;brstn=0;data_in=0;data_en=0;#15 arstn=1;brstn=1;
        for(i=0;i<8;i=i+1)begin @(posedge clk_a);data_in=i;data_en=1;end
        @(posedge clk_a);data_en=0;
        repeat(30)@(posedge clk_b);$finish;
    end
endmodule