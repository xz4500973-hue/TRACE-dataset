`timescale 1ns/1ps
module adder_pipe_64bit_tb;
    reg clk,rst_n,i_en; reg[63:0]adda,addb; wire[64:0]result; wire o_en;
    adder_pipe_64bit dut(.clk(clk),.rst_n(rst_n),.i_en(i_en),.adda(adda),.addb(addb),.result(result),.o_en(o_en));
    always #5 clk=~clk; integer q;
    initial begin
        $dumpfile("adder_pipe_64bit_tb.vcd");$dumpvars(0,adder_pipe_64bit_tb);
        clk=0;rst_n=0;i_en=0;adda=0;addb=0;#14 rst_n=1;
        for(q=0;q<8;q=q+1)begin @(posedge clk);adda=q;addb=q;if(q%2==0)i_en=1;else i_en=0;end
        repeat(10)@(posedge clk);$finish;
    end
endmodule