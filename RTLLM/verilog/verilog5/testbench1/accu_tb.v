`timescale 1ns/1ps

module accu_tb;

    reg         clk;
    reg         rst_n;
    reg [7:0]   data_in;
    reg         valid_in;
    wire        valid_out;
    wire [9:0]  data_out;

     accu uut (
         .CLK        (clk),
         .RST_N      (rst_n),
         .DATA_IN    (data_in),
         .VALID_IN   (valid_in),
         .VALID_OUT  (valid_out),
         .DATA_OUT   (data_out)
     );

    // clock generation: period = 10ns
    always #5 clk = ~clk;

    // task: send single valid pulse with specified data and wait
    task send_pulse;
        input [7:0] val;
        begin
            data_in = val;
            valid_in = 1'b1;
            @(posedge clk);
            valid_in = 1'b0;
            data_in = 8'd0;
        end
    endtask

    initial begin
        $dumpfile("accu_tb.vcd");
        $dumpvars(0, accu_tb);

        clk = 1'b0;
        rst_n = 1'b0;
        data_in = 8'd0;
        valid_in = 1'b0;

        #22 rst_n = 1'b1;

        // Round 1: 4 pulses of fixed value 10 with random gaps
        // Pulse 1
        send_pulse(8'd10);
        repeat(1) @(posedge clk); // gap 10ns
        // Pulse 2
        send_pulse(8'd10);
        repeat(5) @(posedge clk); // gap 50ns
        // Pulse 3
        send_pulse(8'd10);
        repeat(2) @(posedge clk); // gap 20ns
        // Pulse 4
        send_pulse(8'd10);

        // gap 40ns
        repeat(4) @(posedge clk);

        // Round 2: 4 pulses of fixed value 20 with different gaps
        send_pulse(8'd20);
        repeat(3) @(posedge clk); // gap 30ns
        send_pulse(8'd20);
        repeat(1) @(posedge clk); // gap 10ns
        send_pulse(8'd20);
        repeat(5) @(posedge clk); // gap 50ns
        send_pulse(8'd20);

        // gap 30ns
        repeat(3) @(posedge clk);

        // Round 3: 4 pulses of fixed value 30 with gaps
        send_pulse(8'd30);
        repeat(4) @(posedge clk); // gap 40ns
        send_pulse(8'd30);
        repeat(2) @(posedge clk); // gap 20ns
        send_pulse(8'd30);
        repeat(1) @(posedge clk); // gap 10ns
        send_pulse(8'd30);

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule