`timescale 1ns/1ps
module adder_pipe_64bit_tb;
    reg clk,rst_n,i_en; reg[63:0]adda,addb; wire[64:0]result; wire o_en;
    adder_pipe_64bit dut(.clk(clk),.rst_n(rst_n),.i_en(i_en),.adda(adda),.addb(addb),.result(result),.o_en(o_en));
    always #5 clk=~clk;
    reg[31:0] lfsr; wire fb;
    assign fb=lfsr[31]^lfsr[21]^lfsr[1]^lfsr[0];
    always@(posedge clk or negedge rst_n)if(!rst_n)lfsr<=32'hABCD;else lfsr<={lfsr[30:0],fb};
    integer k;
    initial begin
        $dumpfile("adder_pipe_64bit_tb.vcd");$dumpvars(0,adder_pipe_64bit_tb);
        clk=0;rst_n=0;i_en=0;adda=0;addb=0;#15 rst_n=1;
        for(k=0;k<15;k=k+1)begin @(posedge clk);adda={lfsr,lfsr};addb=~adda;i_en=1;end
        @(posedge clk);i_en=0; repeat(10)@(posedge clk);$finish;
    end
endmodule