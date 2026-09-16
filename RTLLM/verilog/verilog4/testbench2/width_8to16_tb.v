`timescale 1ns/1ns
module width_8to16_tb;
    reg clk,rst_n,vi; reg[7:0]di; wire vo; wire[15:0]dout; integer s;
    width_8to16 dut(.clk(clk),.rst_n(rst_n),.valid_in(vi),.data_in(di),.valid_out(vo),.data_out(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("width_8to16_tb.vcd");$dumpvars(0,width_8to16_tb);
        clk=0;rst_n=0;vi=0;di=0;#6 rst_n=1;
        // Reset mid-stream
        @(posedge clk);di=8'hAA;vi=1;
        rst_n=0;@(posedge clk);rst_n=1;
        @(posedge clk);di=8'hBB;vi=1;@(posedge clk);di=8'hCC;vi=1;@(posedge clk);di=8'hDD;vi=1;@(posedge clk);vi=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule