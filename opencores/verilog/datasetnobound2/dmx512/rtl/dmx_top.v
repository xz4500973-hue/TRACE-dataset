// VARIANT: assign → always @* for csr_doo and dmx_signal
(* keep_hierarchy = "yes" *) module dmx_top (
    input sys_clk, sys_rst, input [13:0] csr_a, input csr_we, input [31:0] csr_di,
    output reg [31:0] csr_doo, output reg dmx_signal
);
    wire tx_out;
    wire [31:0] csr_doo_tx, csr_doo_rx;

    dmx_tx #(.csr_addr(4'h0), .clk_freq(83333333)) tx_dut (
        .sys_clk(sys_clk), .sys_rst(sys_rst), .csr_a(csr_a), .csr_we(csr_we),
        .csr_doo(csr_doo_tx), .csr_di(csr_di), .thru(1'b0), .tx(tx_out)
    );
    dmx_rx #(.csr_addr(4'h1), .clk_freq(83333333)) rx_dut (
        .sys_clk(sys_clk), .sys_rst(sys_rst), .csr_a(csr_a), .csr_we(csr_we),
        .csr_doo(csr_doo_rx), .csr_di(csr_di), .rx(tx_out)
    );

    always @* begin
        csr_doo = csr_doo_tx | csr_doo_rx;
        dmx_signal = tx_out;
    end
endmodule