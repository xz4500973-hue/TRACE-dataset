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

        #18 rst_n = 1'b1;

        // Round 1: single pulse 100, then long silence 100ns
        @(posedge clk);
        data_in = 8'd100;
        valid_in = 1'b1;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // long silence 100ns (10 clock cycles)
        repeat(10) @(posedge clk);

        // Round 2: single pulse 200
        data_in = 8'd200;
        valid_in = 1'b1;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // long silence 100ns
        repeat(10) @(posedge clk);

        // Round 3: three separate pulses 50, 150, 250 with 30ns gaps
        data_in = 8'd50;
        valid_in = 1'b1;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;
        repeat(3) @(posedge clk);

        data_in = 8'd150;
        valid_in = 1'b1;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;
        repeat(3) @(posedge clk);

        data_in = 8'd250;
        valid_in = 1'b1;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule