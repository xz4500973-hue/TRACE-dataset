`timescale 1ns/1ps
module adder_pipe_64bit_tb;
    reg clk,rst_n,i_en; reg[63:0]adda,addb; wire[64:0]result; wire o_en;
    adder_pipe_64bit dut(.clk(clk),.rst_n(rst_n),.i_en(i_en),.adda(adda),.addb(addb),.result(result),.o_en(o_en));
    always #5 clk=~clk; integer r;
    initial begin
        $dumpfile("adder_pipe_64bit_tb.vcd");$dumpvars(0,adder_pipe_64bit_tb);
        clk=0;rst_n=0;i_en=0;adda=64'hFFFFFFFFFFFFFFFF;addb=64'hFFFFFFFFFFFFFFFF;#11 rst_n=1;
        for(r=0;r<10;r=r+1)begin @(posedge clk);i_en=1;end
        @(posedge clk);i_en=0; repeat(10)@(posedge clk);$finish;
    end
endmodule