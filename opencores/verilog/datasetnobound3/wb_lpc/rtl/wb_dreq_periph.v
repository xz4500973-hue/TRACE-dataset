//////////////////////////////////////////////////////////////////////
////  wb_dreq_periph.v - Wishbone DMA Requestor for LPC Peripheral////
////  Dataset3: renamed signals, extra hold register              ////
//////////////////////////////////////////////////////////////////////

`include "wb_lpc_defines.v"

(* keep_hierarchy = "yes" *) module wb_dreq_periph(clk_i, nrst_i,
                       dma_chan_i, dma_req_i,
                       ldrq_o
);
    input       clk_i;
    input       nrst_i;
    input [2:0] dma_chan_i;
    input       dma_req_i;
    output reg  ldrq_o;
    
    reg [1:0]   ac;          // renamed adr_cnt -> ac
    reg [3:0]   fsm;         // renamed state -> fsm
    reg         lq_hold;     // extra pipeline

    localparam F_IDLE  = `LDRQ_ST_IDLE;
    localparam F_ADDR  = `LDRQ_ST_ADDR;
    localparam F_ACT   = `LDRQ_ST_ACT;
    localparam F_DONE  = `LDRQ_ST_DONE;
    
    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            fsm     <= F_IDLE;
            ldrq_o  <= 1'b1;
            ac      <= 2'b00;
            lq_hold <= 1'b1;
        end else begin
            lq_hold <= ldrq_o;
            case(fsm)
                F_IDLE: begin
                    if(dma_req_i) begin
                        ldrq_o <= 1'b0;
                        fsm <= F_ADDR;
                        ac  <= 2'h2;
                    end
                end
                F_ADDR: begin
                    ldrq_o <= dma_chan_i[ac];
                    ac <= ac - 1;
                    if(ac == 2'h0)
                        fsm <= F_ACT;
                end
                F_ACT: begin
                    ldrq_o <= 1'b1;
                    fsm <= F_DONE;
                end
                F_DONE: begin
                    ldrq_o <= 1'b1;
                    fsm <= F_IDLE;
                end
            endcase
        end

endmodule