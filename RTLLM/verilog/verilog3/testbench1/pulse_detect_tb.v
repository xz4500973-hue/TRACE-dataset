`timescale 1ns/1ns
module pulse_detect_tb;
    reg clk,rst_n,data_in; wire data_out; integer p;
    pulse_detect dut(.clk(clk),.rst_n(rst_n),.data_in(data_in),.data_out(data_out));
    always #5 clk=~clk;
    initial begin
        $dumpfile("pulse_detect_tb.vcd");$dumpvars(0,pulse_detect_tb);
        clk=0;rst_n=0;data_in=0;#14 rst_n=1;
        // Alternating 0101 pattern
        repeat(12)begin @(posedge clk);data_in=~data_in;end
        $finish;
    end
endmodule