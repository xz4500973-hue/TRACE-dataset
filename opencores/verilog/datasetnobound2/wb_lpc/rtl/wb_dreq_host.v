`timescale 1 ns / 1 ns

`include "wb_lpc_defines.v"

module wb_dreq_host(clk_i, nrst_i,
                     dma_chan_o, dma_req_o,
                            ldrq_i
);
    input       clk_i;
    input       nrst_i;
    output reg  [2:0] dma_chan_o;
    output reg        dma_req_o;
    input           ldrq_i;
    
    reg [1:0]   adr_cnt;
    reg [3:0]   state;
    
    // Next-state wires (two-process style)
    wire [3:0] nxt_state;
    wire       nxt_dma_req;
    wire [1:0] nxt_adr_cnt;

    assign nxt_state =
        (state == `LDRQ_ST_IDLE)  ? (~ldrq_i ? `LDRQ_ST_ADDR : `LDRQ_ST_IDLE) :
        (state == `LDRQ_ST_ADDR)  ? (adr_cnt == 2'h0 ? `LDRQ_ST_ACT : `LDRQ_ST_ADDR) :
        (state == `LDRQ_ST_ACT)   ? `LDRQ_ST_DONE :
        /* LDRQ_ST_DONE */          `LDRQ_ST_IDLE;

    reg [2:0] nxt_dma_chan;
    integer i;
    always @(*) begin
        nxt_dma_chan = dma_chan_o;   // 默认保持原值
        for (i = 0; i < 3; i = i + 1) begin
            if (i == adr_cnt)
                nxt_dma_chan[i] = ldrq_i;
        end
    end
    assign nxt_dma_chan_comb = (state == `LDRQ_ST_ADDR) ? nxt_dma_chan : dma_chan_o;
    assign nxt_dma_req =
        (state == `LDRQ_ST_IDLE) ? 1'b0 :
        (state == `LDRQ_ST_ACT)  ? ldrq_i :
        (state == `LDRQ_ST_DONE) ? 1'b0 : dma_req_o;

    assign nxt_adr_cnt =
        (state == `LDRQ_ST_ADDR) ? (adr_cnt - 1) : adr_cnt;

    // Unified sequential block
    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            state      <= `LDRQ_ST_IDLE;
            dma_chan_o <= 3'h0;
            dma_req_o  <= 3'h0;
            adr_cnt    <= 2'b00;
        end else begin
            state      <= nxt_state;
            dma_chan_o <= nxt_dma_chan_comb;
            dma_req_o  <= nxt_dma_req;
            adr_cnt    <= nxt_adr_cnt;
        end

endmodule