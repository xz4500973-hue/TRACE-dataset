`timescale 1ns / 100ps

module tb_statled;
    reg clk, rst;
    reg [3:0] status;
    wire led;

    statled uut(.clk(clk),.rst(rst),.status(status),.led(led));

    initial clk=0; always #10 clk=~clk;

    initial begin
        $dumpfile("statled.vcd"); $dumpvars(0,tb_statled);
        rst=1; status=4'b0000;
        #100 rst=0;

        // Different pattern: sequential states 0-7
        repeat(2) begin
            status=0; #5000000; status=1; #5000000; status=2; #5000000;
            status=3; #5000000; status=4; #5000000; status=5; #5000000;
            status=6; #5000000;
        end

        $display("Simulation finished at %0t",$time); $finish;
    end
endmodule