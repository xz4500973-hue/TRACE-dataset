`timescale 1ns/1ns
module parallel2serial_tb;
    reg clk,rst_n; reg[3:0]d; wire valid_out,dout; integer n;
    parallel2serial dut(.clk(clk),.rst_n(rst_n),.d(d),.valid_out(valid_out),.dout(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("parallel2serial_tb.vcd");$dumpvars(0,parallel2serial_tb);
        clk=0;rst_n=0;d=0;#7 rst_n=1;
        for(n=0;n<6;n=n+1)begin @(posedge clk);d={n[2:0],n[3]};repeat(5)@(posedge clk);end
        $finish;
    end
endmodule