// a429_top.v – Wrapper that instantiates both TX and RX in loopback mode
// VARIANT: assign → always @* for output drivers
(* keep_hierarchy = "yes" *) module a429_top (
    input         clk2M,
    input         reset,
    input         enable,
    input   [1:0] speed,
    input         par_gen,
    input   [6:0] gap_bits,
    input  [32:1] tx_data,
    input         tx_req,
    input         parcheck,
    output [32:1] rx_data,
    output        rx_wr_en,
    output        tx_ready,
    output reg    a429_out_a,
    output reg    a429_out_b
);

    wire tx_a, tx_b;

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

    always @* begin
        a429_out_a = tx_a;
        a429_out_b = tx_b;
    end

endmodule