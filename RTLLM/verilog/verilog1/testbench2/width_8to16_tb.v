`timescale 1ns/1ns
module width_8to16_tb;
    reg clk,rst_n,vi; reg[7:0]di; wire vo; wire[15:0]dout; integer k;
    width_8to16 dut(.clk(clk),.rst_n(rst_n),.valid_in(vi),.data_in(di),.valid_out(vo),.data_out(dout));
    always #5 clk=~clk;
    initial begin
        $dumpfile("width_8to16_tb.vcd");$dumpvars(0,width_8to16_tb);
        clk=0;rst_n=0;vi=0;di=0;#8 rst_n=1;
        // 0xA5, 0x5A -> 0xA55A
        @(posedge clk);di=8'hA5;vi=1;@(posedge clk);di=8'h5A;vi=1;
        // 0x12, 0x34 -> 0x1234
        @(posedge clk);di=8'h12;vi=1;@(posedge clk);di=8'h34;vi=1;
        @(posedge clk);vi=0;
        repeat(10)@(posedge clk);$finish;
    end
endmodule