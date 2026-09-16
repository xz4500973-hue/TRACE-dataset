`timescale 1ns / 1ps
module prbs_loopback_top_tb;
    reg clk=0; reg rst=0; reg tst=0;
    wire led15, led14, led13;
    prbs_loopback_top DUT (.clk(clk), .rst_in(rst), .test_in(tst), .led15(led15), .led14(led14), .led13(led13));
    always #2 clk=~clk;  // 250MHz
    initial begin
        $dumpfile("prbs.vcd"); $dumpvars(0, prbs_loopback_top_tb);
        rst=1; tst=0; #100; rst=0; #2000;
        // pulse test_in
        tst=1; #50000; tst=0; #50000;
        tst=1; #50000; tst=0; #50000;
        $display("Done at %0t", $time); $finish;
    end
endmodule