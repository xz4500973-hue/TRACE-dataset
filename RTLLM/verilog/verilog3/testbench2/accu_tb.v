`timescale 1ns/1ps

module accu_tb;

    reg         clk;
    reg         rst_n;
    reg [7:0]   data_in;
    reg         valid_in;
    wire        valid_out;
    wire [9:0]  data_out;

    // 8-bit LFSR for pseudo-random data generation
    reg [7:0] lfsr;
    reg       lfsr_fb;

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

    // LFSR feedback: taps at bits 7,6,3,2 (x^8 + x^7 + x^4 + x^3 + 1)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            lfsr <= 8'hA5;
        else begin
            lfsr_fb = lfsr[7] ^ lfsr[6] ^ lfsr[3] ^ lfsr[2];
            lfsr <= {lfsr[6:0], lfsr_fb};
        end
    end

    initial begin
        $dumpfile("accu_tb.vcd");
        $dumpvars(0, accu_tb);

        clk = 1'b0;
        rst_n = 1'b0;
        valid_in = 1'b0;
        data_in = 8'd0;

        #13 rst_n = 1'b1;

        // Round 1: 4 LFSR values, valid high ~80% duty cycle
        @(posedge clk);
        data_in = lfsr;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        valid_in = 1'b0;

        // short gap 10ns
        @(posedge clk);

        // Round 2: 4 LFSR values
        data_in = lfsr;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        valid_in = 1'b0;

        // short gap 10ns
        @(posedge clk);

        // Round 3: 4 LFSR values
        data_in = lfsr;
        valid_in = 1'b1;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        data_in = lfsr;
        @(posedge clk);
        valid_in = 1'b0;

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule