//////////////////////////////////////////////////////////////////////
////  wb_dreq_periph.v - Wishbone DMA Requestor for LPC Peripheral////
////  Dataset2: combinational next-state wires + single seq block  ////
//////////////////////////////////////////////////////////////////////

`include "wb_lpc_defines.v"

module wb_dreq_periph(clk_i, nrst_i,
                       dma_chan_i, dma_req_i,
                       ldrq_o
);
    input       clk_i;
    input       nrst_i;
    input [2:0] dma_chan_i;
    input       dma_req_i;
    output reg  ldrq_o;
    
    reg [1:0]   adr_cnt;
    reg [3:0]   state;
    
    // Next-state wires
    wire [3:0] nxt_state;
    wire       nxt_ldrq;
    wire [1:0] nxt_adr_cnt;

    assign nxt_state =
        (state == `LDRQ_ST_IDLE)  ? (dma_req_i ? `LDRQ_ST_ADDR : `LDRQ_ST_IDLE) :
        (state == `LDRQ_ST_ADDR)  ? (adr_cnt == 2'h0 ? `LDRQ_ST_ACT : `LDRQ_ST_ADDR) :
        (state == `LDRQ_ST_ACT)   ? `LDRQ_ST_DONE :
                                     `LDRQ_ST_IDLE;

    assign nxt_ldrq =
        (state == `LDRQ_ST_IDLE) ? (dma_req_i ? 1'b0 : 1'b1) :
        (state == `LDRQ_ST_ADDR) ? dma_chan_i[adr_cnt] : 1'b1;

    assign nxt_adr_cnt =
        (state == `LDRQ_ST_ADDR) ? (adr_cnt - 1) : adr_cnt;

    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            state   <= `LDRQ_ST_IDLE;
            ldrq_o  <= 1'b1;
            adr_cnt <= 2'b00;
        end else begin
            state   <= nxt_state;
            ldrq_o  <= nxt_ldrq;
            adr_cnt <= nxt_adr_cnt;
        end

endmodule