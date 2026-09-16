`timescale 1ns/1ps

module adder_32bit_tb;
    reg clk; reg[32:1]A,B; wire[32:1]S; wire C32;
    adder_32bit dut(.A(A),.B(B),.S(S),.C32(C32));
    always #5 clk=~clk;
    reg[31:0] lfsr_a,lfsr_b; wire fb_a,fb_b; integer k;
    assign fb_a=lfsr_a[31]^lfsr_a[21]^lfsr_a[1]^lfsr_a[0];
    assign fb_b=lfsr_b[31]^lfsr_b[22]^lfsr_b[2]^lfsr_b[1];
    always@(posedge clk)begin lfsr_a<={lfsr_a[30:0],fb_a};lfsr_b<={lfsr_b[30:0],fb_b};end
    initial begin
        $dumpfile("adder_32bit_tb.vcd");$dumpvars(0,adder_32bit_tb);
        clk=0;A=0;B=0;lfsr_a=32'hDEADBEEF;lfsr_b=32'hCAFEBABE;#15;
        for(k=0;k<30;k=k+1)begin @(posedge clk);A={1'b0,lfsr_a};B={1'b0,lfsr_b};end
        repeat(5)@(posedge clk);$finish;
    end
endmodule