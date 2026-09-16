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

        #8 rst_n = 1'b1;

        // Round 1: checkerboard pattern 255,0,255,0
        @(posedge clk);
        data_in = 8'd255;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd0;
        @(posedge clk);
        data_in = 8'd255;
        @(posedge clk);
        data_in = 8'd0;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // gap 10ns
        @(posedge clk);

        // Round 2: checkerboard 0,255,0,255
        data_in = 8'd0;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd255;
        @(posedge clk);
        data_in = 8'd0;
        @(posedge clk);
        data_in = 8'd255;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // gap 10ns
        @(posedge clk);

        // Round 3: checkerboard 127,128,127,128
        data_in = 8'd127;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd128;
        @(posedge clk);
        data_in = 8'd127;
        @(posedge clk);
        data_in = 8'd128;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule