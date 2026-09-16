`timescale 1ns/1ps
module adder_pipe_64bit_tb;
    reg clk,rst_n,i_en; reg[63:0]adda,addb; wire[64:0]result; wire o_en;
    adder_pipe_64bit dut(.clk(clk),.rst_n(rst_n),.i_en(i_en),.adda(adda),.addb(addb),.result(result),.o_en(o_en));
    always #5 clk=~clk; integer s;
    initial begin
        $dumpfile("adder_pipe_64bit_tb.vcd");$dumpvars(0,adder_pipe_64bit_tb);
        clk=0;rst_n=0;i_en=0;adda=0;addb=0;#9 rst_n=1;
        for(s=0;s<16;s=s+1)begin @(posedge clk);adda=64'hAAAAAAAAAAAAAAAA>>s;addb=64'h5555555555555555<<s;i_en=1;end
        @(posedge clk);i_en=0; repeat(10)@(posedge clk);$finish;
    end
endmodule