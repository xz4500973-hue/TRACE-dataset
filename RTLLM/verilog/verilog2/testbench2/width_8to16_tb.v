`timescale 1ns/1ns
module width_8to16_tb;
    reg clk,rst_n,vi; reg[7:0]di; wire vo; wire[15:0]dout; integer n;
    width_8to16 dut(.clk(clk),.rst_n(rst_n),.valid_in(vi),.data_in(di),.valid_out(vo),.data_out(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("width_8to16_tb.vcd");$dumpvars(0,width_8to16_tb);
        clk=0;rst_n=0;vi=0;di=0;#7 rst_n=1;
        // Gapped valid: valid every other clock
        for(n=0;n<8;n=n+1)begin @(posedge clk);di=n*20;vi=1;@(posedge clk);vi=0;end
        repeat(10)@(posedge clk);$finish;
    end
endmodule