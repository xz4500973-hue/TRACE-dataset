// USB Device Core - SIE EP (dataset3: two-process with nxt_ wires)
(* keep_hierarchy = "yes" *) module usbf_sie_ep
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           rx_setup_i
    ,input           rx_valid_i
    ,input           rx_strb_i
    ,input  [  7:0]  rx_data_i
    ,input           rx_last_i
    ,input           rx_crc_err_i
    ,input           rx_full_i
    ,input           rx_ack_i
    ,input  [  7:0]  tx_data_i
    ,input           tx_empty_i
    ,input           tx_flush_i
    ,input  [ 10:0]  tx_length_i
    ,input           tx_start_i
    ,input           tx_data_accept_i

    // Outputs
    ,output          rx_space_o
    ,output          rx_push_o
    ,output [  7:0]  rx_data_o
    ,output [ 10:0]  rx_length_o
    ,output          rx_ready_o
    ,output          rx_err_o
    ,output          rx_setup_o
    ,output          tx_pop_o
    ,output          tx_busy_o
    ,output          tx_err_o
    ,output          tx_ready_o
    ,output          tx_data_valid_o
    ,output          tx_data_strb_o
    ,output [  7:0]  tx_data_o
    ,output          tx_data_last_o
);
// Rx next-state wires
reg rx_ready_q,rx_err_q,rx_setup_q;reg[10:0]rx_len_q;
wire nxt_rx_ready=(rx_ack_i?0:(rx_valid_i&&rx_last_i?1:rx_ready_q));
wire[10:0]nxt_rx_len=(rx_ack_i?0:(rx_valid_i&&rx_strb_i?rx_len_q+1:rx_len_q));
wire nxt_rx_err=(rx_ack_i?0:(rx_valid_i&&rx_last_i&&rx_crc_err_i?1:(rx_full_i&&(rx_valid_i&&rx_strb_i)?1:rx_err_q)));
wire nxt_rx_setup=(rx_ack_i?0:(rx_setup_i?1:rx_setup_q));

always@(posedge clk_i or posedge rst_i) if(rst_i)begin rx_ready_q<=0;rx_len_q<=0;rx_err_q<=0;rx_setup_q<=0;end else begin
 rx_ready_q<=nxt_rx_ready;rx_len_q<=nxt_rx_len;rx_err_q<=nxt_rx_err;rx_setup_q<=nxt_rx_setup;end
assign rx_space_o=!rx_ready_q;assign rx_length_o=rx_len_q;assign rx_ready_o=rx_ready_q;assign rx_err_o=rx_err_q;assign rx_setup_o=rx_setup_q;
assign rx_push_o=rx_valid_i&rx_strb_i;assign rx_data_o=rx_data_i;

// Tx
reg tx_active_q,tx_err_q,tx_zlp_q;reg[10:0]tx_len_q;
wire nxt_tx_active=(tx_flush_i?0:(tx_start_i?1:(tx_data_valid_o&&tx_data_last_o&&tx_data_accept_i?0:tx_active_q)));
wire nxt_tx_zlp=(tx_flush_i?0:(tx_start_i?(tx_length_i==0):tx_zlp_q));
wire[10:0]nxt_tx_len=(tx_flush_i?0:(tx_start_i?tx_length_i:(tx_data_valid_o&&tx_data_accept_i&&!tx_zlp_q?tx_len_q-1:tx_len_q)));
wire nxt_tx_err=(tx_flush_i?0:((!tx_zlp_q&&tx_empty_i&&tx_data_valid_o)?1:tx_err_q));

always@(posedge clk_i or posedge rst_i) if(rst_i)begin tx_active_q<=0;tx_err_q<=0;tx_zlp_q<=0;tx_len_q<=0;end else begin
 tx_active_q<=nxt_tx_active;tx_zlp_q<=nxt_tx_zlp;tx_len_q<=nxt_tx_len;tx_err_q<=nxt_tx_err;end
assign tx_ready_o=tx_active_q;assign tx_data_valid_o=tx_active_q;assign tx_data_strb_o=!tx_zlp_q;assign tx_data_last_o=tx_zlp_q||(tx_len_q==1);assign tx_data_o=tx_data_i;
assign tx_err_o=tx_err_q;assign tx_busy_o=tx_active_q;assign tx_pop_o=tx_data_accept_i&tx_active_q;
endmodule