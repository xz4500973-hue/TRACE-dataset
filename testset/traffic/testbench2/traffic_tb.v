`timescale 1ns/1ps

module traffic_tb;

    reg         clk, rst_n;
    wire [2:0]  lights;

    traffic dut (.clk(clk), .rst_n(rst_n), .lights(lights));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("traffic_tb.vcd");
        $dumpvars(0, traffic_tb);
        clk = 1'b0; rst_n = 1'b0;
        #12 rst_n = 1'b1;

        repeat(120) @(posedge clk);

        // re-assert reset mid-run
        rst_n = 1'b0;
        repeat(5) @(posedge clk);
        rst_n = 1'b1;

        repeat(150) @(posedge clk);
        $finish;
    end

endmodule
