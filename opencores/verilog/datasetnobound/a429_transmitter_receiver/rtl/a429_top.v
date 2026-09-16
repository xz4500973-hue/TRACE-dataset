// a429_top.v – Wrapper that instantiates both TX and RX in loopback mode
(* keep_hierarchy = "yes" *) module a429_top (
    input         clk2M,        // 2 MHz master clock
    input         reset,        // asynchronous reset
    input         enable,       // global enable for both TX and RX
    input   [1:0] speed,        // speed[0]=1 → 12.5Kbps, speed[0]=0 → 100Kbps
    input         par_gen,      // TX parity generation (not implemented)
    input   [6:0] gap_bits,     // TX gap between words (4‑64)
    input  [32:1] tx_data,      // data to be transmitted
    input         tx_req,       // request to send a word
    input         parcheck,     // RX parity check enable
    output [32:1] rx_data,      // received data word
    output        rx_wr_en,     // received data valid strobe
    output        tx_ready,     // TX ready to accept new data
    output        a429_out_a,   // ARINC 429 A output (active during TX)
    output        a429_out_b    // ARINC 429 B output (active during TX)
);

    // Internal wires for TX -> RX connection
    wire tx_a, tx_b;

    // TX instance
    a429_tx_iface u_tx (
        .clk2M      (clk2M),
        .reset      (reset),
        .enable     (enable),
        .speed      (speed),
        .par_gen    (par_gen),
        .gap_bits   (gap_bits),
        .data       (tx_data),
        .tx_req     (tx_req),
        .a429_out_a (tx_a),
        .a429_out_b (tx_b),
        .ready      (tx_ready)
    );

    // RX instance – directly connected to TX outputs (loopback)
    a429_rx_iface u_rx (
        .clk2M      (clk2M),
        .reset      (reset),
        .enable     (enable),
        .speed      (speed),
        .a429_in_a  (tx_a),
        .a429_in_b  (tx_b),
        .parcheck   (parcheck),
        .data       (rx_data),
        .wr_en      (rx_wr_en)
    );

    // Drive the physical outputs (same as TX internal signals)
    assign a429_out_a = tx_a;
    assign a429_out_b = tx_b;

endmodule