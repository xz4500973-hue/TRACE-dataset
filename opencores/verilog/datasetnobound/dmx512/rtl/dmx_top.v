(* keep_hierarchy = "yes" *) module dmx_top (
    input         sys_clk,
    input         sys_rst,
    input  [13:0] csr_a,
    input         csr_we,
    input  [31:0] csr_di,
    output [31:0] csr_do,
    output        dmx_signal
);

    wire tx_out;
    
    // ----- 添加以下两行声明 -----
    wire [31:0] csr_do_tx;
    wire [31:0] csr_do_rx;
    // -------------------------

    // Instantiate DMX Transmitter
    dmx_tx #(
        .csr_addr(4'h0),
        .clk_freq(83333333)
    ) tx_dut (
        .sys_clk(sys_clk),
        .sys_rst(sys_rst),
        .csr_a(csr_a),
        .csr_we(csr_we),
        .csr_do(csr_do_tx),   // 现在宽度匹配
        .csr_di(csr_di),
        .thru(1'b0),
        .tx(tx_out)
    );

    // Instantiate DMX Receiver
    dmx_rx #(
        .csr_addr(4'h1),
        .clk_freq(83333333)
    ) rx_dut (
        .sys_clk(sys_clk),
        .sys_rst(sys_rst),
        .csr_a(csr_a),
        .csr_we(csr_we),
        .csr_do(csr_do_rx),   // 宽度匹配
        .csr_di(csr_di),
        .rx(tx_out)
    );

    assign csr_do = csr_do_tx | csr_do_rx;
    assign dmx_signal = tx_out;

endmodule