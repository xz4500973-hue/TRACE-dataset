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

    initial begin
        $dumpfile("accu_tb.vcd");
        $dumpvars(0, accu_tb);

        clk = 1'b0;
        rst_n = 1'b0;
        data_in = 8'd0;
        valid_in = 1'b0;

        #7 rst_n = 1'b1;

        // Round 1: bit-reverse pattern 0,128,64,192
        // These are 0x00, 0x80, 0x40, 0xC0 (bit-reverse: 00000000, 10000000, 01000000, 11000000)
        @(posedge clk);
        data_in = 8'h00;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'h80;
        @(posedge clk);
        data_in = 8'h40;
        @(posedge clk);
        data_in = 8'hC0;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // gap 20ns
        repeat(2) @(posedge clk);

        // Round 2: bit-reverse pattern 32,160,96,224
        // 0x20, 0xA0, 0x60, 0xE0
        data_in = 8'h20;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'hA0;
        @(posedge clk);
        data_in = 8'h60;
        @(posedge clk);
        data_in = 8'hE0;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        // gap 20ns
        repeat(2) @(posedge clk);

        // Round 3: bit-reverse pattern 16,144,80,208
        // 0x10, 0x90, 0x50, 0xD0
        data_in = 8'h10;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = 8'h90;
        @(posedge clk);
        data_in = 8'h50;
        @(posedge clk);
        data_in = 8'hD0;
        @(posedge clk);
        valid_in = 1'b0;
        data_in = 8'd0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule