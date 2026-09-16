`timescale 1ns/1ns
module parallel2serial_tb;
    reg clk,rst_n; reg[3:0]d; wire valid_out,dout; integer k;
    parallel2serial dut(.clk(clk),.rst_n(rst_n),.d(d),.valid_out(valid_out),.dout(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("parallel2serial_tb.vcd");$dumpvars(0,parallel2serial_tb);
        clk=0;rst_n=0;d=0;#8 rst_n=1;
        for(k=0;k<8;k=k+1)begin @(posedge clk);d=k%2?4'b1010:4'b0101;repeat(5)@(posedge clk);end
        $finish;
    end
endmodule