`timescale 1ns / 1ps

module a429_tb_top;

    reg         clk2M, reset, enable;
    reg   [1:0] speed;
    reg         par_gen;      // not used in TX (placeholder)
    reg   [6:0] gap_bits;
    reg  [32:1] tx_data;
    reg         tx_req;
    reg         parcheck;
    wire [32:1] rx_data;
    wire        rx_wr_en;
    wire        tx_ready;
    wire        a429_out_a, a429_out_b;   // optional for monitoring

    // Instantiate the top module (loopback)
    a429_top u_top (
        .clk2M     (clk2M),
        .reset     (reset),
        .enable    (enable),
        .speed     (speed),
        .par_gen   (par_gen),
        .gap_bits  (gap_bits),
        .tx_data   (tx_data),
        .tx_req    (tx_req),
        .parcheck  (parcheck),
        .rx_data   (rx_data),
        .rx_wr_en  (rx_wr_en),
        .tx_ready  (tx_ready),
        .a429_out_a(a429_out_a),
        .a429_out_b(a429_out_b)
    );

    // 2 MHz clock generator
    initial clk2M = 0;
    always #250 clk2M = ~clk2M;   // 250 ns half period → 2 MHz
    integer seed;
    integer i, num_words;
    // Main test sequence
    initial begin
        $dumpfile("a429_top_d2_tb2.vcd");
        $dumpvars(0, a429_tb_top);
        $display("=== ARINC 429 Loopback Testbench (Top-level) ===");

        // Reset and disable
        reset   = 1;
        enable  = 0;
        speed   = 2'b00;     // 100Kbps default
        gap_bits= 7'd8;
        tx_data = 32'h0;
        tx_req  = 0;
        parcheck= 0;
        par_gen = 0;

        #1000 reset = 0;
        #1000 enable = 1;
        seed = 44444;


        // ---------- Test mode 1: 100Kbps, special patterns ----------
        $display("Mode 1: 100Kbps, special bit patterns");
        speed = 2'b00;
        gap_bits = 7'd8;
        num_words = 80;
        for (i=0; i<num_words; i=i+1) begin
            wait(tx_ready);
            tx_data = (i%4 == 0) ? 32'hFFFF_FFFF : (i%4 == 1) ? 32'h0000_0001 : (i%4 == 2) ? 32'hAAAA_5555 : 32'h3333_CCCC;
            parcheck = 1'b0;
            @(posedge clk2M);
            tx_req = 1'b1;
            @(posedge clk2M);
            tx_req = 1'b0;
            @(posedge rx_wr_en);
            if (rx_data !== tx_data) begin
                $display("  ERROR: sent=%h, recv=%h (parcheck=%b)", tx_data, rx_data, parcheck);
            end
        end

        // ---------- Test mode 2: 12.5Kbps, long gap, short burst ----------
        $display("Mode 2: 12.5Kbps, long gap");
        speed = 2'b10;
        gap_bits = 7'd50;
        num_words = 40;
        for (i=0; i<num_words; i=i+1) begin
            wait(tx_ready);
            tx_data = {$random(seed+5000)}[31:0];
            parcheck = 1'b0;
            @(posedge clk2M);
            tx_req = 1'b1;
            @(posedge clk2M);
            tx_req = 1'b0;
            @(posedge rx_wr_en);
            if (rx_data !== tx_data) begin
                $display("  ERROR: sent=%h, recv=%h", tx_data, rx_data);
            end
        end

        #20000;
        $display("=== Test completed successfully ===");
        $finish;
    end

endmodule