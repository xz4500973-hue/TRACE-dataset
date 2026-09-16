`timescale 1ns / 1ps

module top_tb;
    reg clk,rst,enable; reg[31:0]degrees; reg[2:0]actv; wire[63:0]data1;
    top uut(.enable(enable),.degrees(degrees),.data1(data1),.rst(rst),.actv(actv),.clk(clk));
    initial clk=0; always #6 clk=~clk;
    integer i;
    initial begin
        $dumpfile("top.vcd"); $dumpvars(0,top_tb);
        rst=1;enable=0;degrees=0;actv=3'b110;
        #20 rst=0; #20 enable=1;
        for(i=0;i<360;i=i+4) begin degrees=i; #10; end
        #500; $display("Done at %0t",$time); $finish;
    end
endmodule