`timescale 1ns/1ns
module width_8to16_tb;
    reg clk,rst_n,valid_in; reg[7:0]data_in; wire valid_out; wire[15:0]data_out; integer i;
    width_8to16 dut(.clk(clk),.rst_n(rst_n),.valid_in(valid_in),.data_in(data_in),.valid_out(valid_out),.data_out(data_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("width_8to16_tb.vcd");$dumpvars(0,width_8to16_tb);
        clk=0;rst_n=0;valid_in=0;data_in=0;#10 rst_n=1;
        for(i=0;i<10;i=i+1)begin @(posedge clk);data_in=i;valid_in=1;end
        @(posedge clk);valid_in=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule