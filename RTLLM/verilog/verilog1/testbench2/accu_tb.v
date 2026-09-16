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

        #12 rst_n = 1'b1;

        // Round 1: decreasing sequence 15,14,13,12 with 1-cycle gaps
        @(posedge clk);
        data_in = 8'd15;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd14;
        @(posedge clk);
        data_in = 8'd13;
        @(posedge clk);
        data_in = 8'd12;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // 1 clock gap
        @(posedge clk);

        // Round 2: decreasing sequence 11,10,9,8
        data_in = 8'd11;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd10;
        @(posedge clk);
        data_in = 8'd9;
        @(posedge clk);
        data_in = 8'd8;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // 1 clock gap
        @(posedge clk);

        // Round 3: decreasing sequence 7,6,5,4
        data_in = 8'd7;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd6;
        @(posedge clk);
        data_in = 8'd5;
        @(posedge clk);
        data_in = 8'd4;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule