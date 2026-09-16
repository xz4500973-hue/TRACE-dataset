`timescale 1ns / 1ps

`include "../rtl/timescale.v"
`include "../rtl/defines.v"

module tb;

reg [7:0]     tx_buffer[0:2000];
integer       tx_length;

reg           clk_156m25;
reg           clk_xgmii_rx;
reg           clk_xgmii_tx;

reg           reset_156m25_n;
reg           reset_xgmii_rx_n;
reg           reset_xgmii_tx_n;

reg           pkt_rx_ren;

reg  [63:0]   pkt_tx_data;
reg           pkt_tx_val;
reg           pkt_tx_sop;
reg           pkt_tx_eop;
reg  [2:0]    pkt_tx_mod;

reg           wb_clk_i;
reg  [7:0]    wb_adr_i;
reg           wb_cyc_i;
reg  [31:0]   wb_dat_i;
reg           wb_rst_i;
reg           wb_stb_i;
reg           wb_we_i;

integer       tx_count;
integer       rx_count;

wire          pkt_rx_avail;
wire [63:0]   pkt_rx_data;
wire          pkt_rx_eop;
wire          pkt_rx_err;
wire [2:0]    pkt_rx_mod;
wire          pkt_rx_sop;
wire          pkt_rx_val;
wire          pkt_tx_full;
wire          wb_ack_o;
wire [31:0]   wb_dat_o;
wire          wb_int_o;
wire [7:0]    xgmii_txc;
wire [63:0]   xgmii_txd;

wire [7:0]    xgmii_rxc;
wire [63:0]   xgmii_rxd;

xge_mac dut(
    .pkt_rx_avail(pkt_rx_avail), .pkt_rx_data(pkt_rx_data),
    .pkt_rx_eop(pkt_rx_eop), .pkt_rx_err(pkt_rx_err),
    .pkt_rx_mod(pkt_rx_mod), .pkt_rx_sop(pkt_rx_sop),
    .pkt_rx_val(pkt_rx_val), .pkt_tx_full(pkt_tx_full),
    .wb_ack_o(wb_ack_o), .wb_dat_o(wb_dat_o), .wb_int_o(wb_int_o),
    .xgmii_txc(xgmii_txc), .xgmii_txd(xgmii_txd),
    .clk_156m25(clk_156m25), .clk_xgmii_rx(clk_xgmii_rx),
    .clk_xgmii_tx(clk_xgmii_tx), .pkt_rx_ren(pkt_rx_ren),
    .pkt_tx_data(pkt_tx_data), .pkt_tx_eop(pkt_tx_eop),
    .pkt_tx_mod(pkt_tx_mod), .pkt_tx_sop(pkt_tx_sop),
    .pkt_tx_val(pkt_tx_val), .reset_156m25_n(reset_156m25_n),
    .reset_xgmii_rx_n(reset_xgmii_rx_n),
    .reset_xgmii_tx_n(reset_xgmii_tx_n),
    .wb_adr_i(wb_adr_i), .wb_clk_i(wb_clk_i),
    .wb_cyc_i(wb_cyc_i), .wb_dat_i(wb_dat_i),
    .wb_rst_i(wb_rst_i), .wb_stb_i(wb_stb_i),
    .wb_we_i(wb_we_i), .xgmii_rxc(xgmii_rxc), .xgmii_rxd(xgmii_rxd)
);

assign xgmii_rxc = xgmii_txc;
assign xgmii_rxd = xgmii_txd;

// Clock: different period
initial begin
    clk_156m25 = 1'b0; clk_xgmii_rx = 1'b0; clk_xgmii_tx = 1'b0;
    forever begin #3200; clk_156m25 = ~clk_156m25; clk_xgmii_rx = ~clk_xgmii_rx; clk_xgmii_tx = ~clk_xgmii_tx; end
end
initial begin wb_clk_i = 1'b0; forever begin #20000; wb_clk_i = ~wb_clk_i; end end

// Different reset length
initial begin
    reset_156m25_n = 1'b0; reset_xgmii_rx_n = 1'b0; reset_xgmii_tx_n = 1'b0;
    #100000;  // longer reset
    reset_156m25_n = 1'b1; reset_xgmii_rx_n = 1'b1; reset_xgmii_tx_n = 1'b1;
end

initial begin
    $dumpfile("xge_mac.vcd"); $dumpvars(0, tb);
    wb_adr_i = 8'b0; wb_cyc_i = 1'b0; wb_dat_i = 32'b0; wb_rst_i = 1'b1; wb_stb_i = 1'b0; wb_we_i = 1'b0;
    @(posedge wb_clk_i); wb_rst_i = 1'b0;
end
initial begin tx_count = 0; rx_count = 0; end
initial begin
    for (tx_length = 0; tx_length <= 2000; tx_length = tx_length + 1) tx_buffer[tx_length] = 0;
    pkt_rx_ren = 1'b0; pkt_tx_data = 64'b0; pkt_tx_val = 1'b0;
    pkt_tx_sop = 1'b0; pkt_tx_eop = 1'b0; pkt_tx_mod = 3'b0;
end

// Back-to-back small packets with random data
task SendRandomPacket;
  input [31:0] len;
  integer i;
  begin
    tx_length = len;
    for (i = 0; i < len; i = i + 1)
        tx_buffer[i] = $urandom & 8'hff;
    @(posedge clk_156m25); #500;
    pkt_tx_val = 1'b1;
    for (i = 0; i < tx_length; i = i + 8) begin
        pkt_tx_sop = 1'b0; pkt_tx_eop = 1'b0; pkt_tx_mod = 3'b0;
        if (i == 0) pkt_tx_sop = 1'b1;
        if (i + 8 >= tx_length) begin pkt_tx_eop = 1'b1; pkt_tx_mod = tx_length % 8; end
        pkt_tx_data[63:56] = tx_buffer[i]; pkt_tx_data[55:48] = tx_buffer[i+1];
        pkt_tx_data[47:40] = tx_buffer[i+2]; pkt_tx_data[39:32] = tx_buffer[i+3];
        pkt_tx_data[31:24] = tx_buffer[i+4]; pkt_tx_data[23:16] = tx_buffer[i+5];
        pkt_tx_data[15:8]  = tx_buffer[i+6]; pkt_tx_data[7:0]   = tx_buffer[i+7];
        @(posedge clk_156m25); #500;
    end
    pkt_tx_val = 1'b0; pkt_tx_eop = 1'b0; pkt_tx_mod = 3'b0;
    tx_count = tx_count + 1;
  end
endtask

initial begin
    #8000000;
    // Send 8 small back-to-back packets
    repeat (8) begin SendRandomPacket(72); #500000; end
    #10000000;
    $finish;
end

initial begin
    forever begin
        if (pkt_rx_avail) begin
            pkt_rx_ren <= 1'b1; @(posedge clk_156m25);
            rx_count = rx_count + 1; pkt_rx_ren <= 1'b0;
        end
        @(posedge clk_156m25);
    end
end

endmodule