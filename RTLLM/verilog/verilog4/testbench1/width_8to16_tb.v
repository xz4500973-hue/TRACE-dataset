`timescale 1ns/1ns
module width_8to16_tb;
    reg clk,rst_n,vi; reg[7:0]di; wire vo; wire[15:0]dout; integer r;
    width_8to16 dut(.clk(clk),.rst_n(rst_n),.valid_in(vi),.data_in(di),.valid_out(vo),.data_out(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("width_8to16_tb.vcd");$dumpvars(0,width_8to16_tb);
        clk=0;rst_n=0;vi=0;di=0;#11 rst_n=1;
        // Random bytes for 8 pairs
        for(r=0;r<16;r=r+1)begin @(posedge clk);di=$random%256;vi=1;end
        @(posedge clk);vi=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule