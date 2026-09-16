`timescale 1ns/1ps

module accu_tb;

    reg         clk;
    reg         rst_n;
    reg [7:0]   data_in;
    reg         valid_in;
    wire        valid_out;
    wire [9:0]  data_out;

    accu uut (
        .clk        (clk),
        .rst_n      (rst_n),
        .data_in    (data_in),
        .valid_in   (valid_in),
        .valid_out  (valid_out),
        .data_out   (data_out)
    );

    // clock generation: period = 10ns
    always #5 clk = ~clk;

    initial begin
        $dumpfile("accu_tb.vcd");
        $dumpvars(0, accu_tb);

        clk = 1'b0;
        rst_n = 1'b0;
        data_in = 8'd0;
        valid_in = 1'b0;

        #20 rst_n = 1'b1;

        // Round 1: all zeros, valid_in continuously high
        @(posedge clk);
        data_in = 8'd0;
        valid_in = 1'b1;
        repeat(3) @(posedge clk);
        valid_in = 1'b0;

        // gap 20ns
        repeat(2) @(posedge clk);

        // Round 2: all zeros again, continuous valid
        data_in = 8'd0;
        valid_in = 1'b1;
        repeat(3) @(posedge clk);
        valid_in = 1'b0;

        // gap 20ns
        repeat(2) @(posedge clk);

        // Round 3: all zeros again
        data_in = 8'd0;
        valid_in = 1'b1;
        repeat(3) @(posedge clk);
        valid_in = 1'b0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule