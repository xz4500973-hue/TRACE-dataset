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

        #15 rst_n = 1'b1;

        // Round 1: incremental sequence 1,2,3,4 with gaps
        @(posedge clk);
        data_in = 8'd1;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd2;
        @(posedge clk);
        data_in = 8'd3;
        @(posedge clk);
        data_in = 8'd4;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // silent period 30ns
        repeat(3) @(posedge clk);

        // Round 2: incremental sequence 5,6,7,8 with gaps
        data_in = 8'd5;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd6;
        @(posedge clk);
        data_in = 8'd7;
        @(posedge clk);
        data_in = 8'd8;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // silent period 50ns
        repeat(5) @(posedge clk);

        // Round 3: incremental sequence 10,20,30,40
        data_in = 8'd10;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'd20;
        @(posedge clk);
        data_in = 8'd30;
        @(posedge clk);
        data_in = 8'd40;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule