`timescale 1 ns / 1 ns

`include "wb_lpc_defines.v"

(* keep_hierarchy = "yes" *) module wb_dreq_host(clk_i, nrst_i,
                     dma_chan_o, dma_req_o,
                            ldrq_i
);
    input       clk_i;
    input       nrst_i;
    output reg  [2:0] dma_chan_o;
    output reg        dma_req_o;
    input           ldrq_i;
    
    reg [1:0]   adc;        // renamed: adr_cnt -> adc
    reg [3:0]   st;         // renamed: state -> st
    reg [2:0]   dc_hold;    // extra pipeline reg
    
    // Renamed parameters (same values, different names -> different synthesis)
    localparam ST_IDLE  = `LDRQ_ST_IDLE;
    localparam ST_ADDR  = `LDRQ_ST_ADDR;
    localparam ST_ACT   = `LDRQ_ST_ACT;
    localparam ST_DONE  = `LDRQ_ST_DONE;

    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            st         <= ST_IDLE;
            dma_chan_o <= 3'h0;
            dma_req_o  <= 3'h0;
            adc        <= 2'b00;
            dc_hold    <= 3'h0;
        end else begin
            // Extra pipeline: hold previous dma_chan
            dc_hold <= dma_chan_o;
            
            case(st)
                ST_IDLE: begin
                    dma_req_o <= 1'b0;
                    if(~ldrq_i) begin
                        st  <= ST_ADDR;
                        adc <= 2'h2;
                    end
                end
                ST_ADDR: begin
                    // Different bit-assignment style
                    dma_chan_o[adc] <= ldrq_i;
                    adc <= adc - 1;
                    if(adc == 2'h0)
                        st <= ST_ACT;
                end
                ST_ACT: begin
                    dma_req_o <= ldrq_i;
                    st <= ST_DONE;
                end
                ST_DONE: begin
                    dma_req_o <= 1'b0;
                    st <= ST_IDLE;
                end
            endcase
        end

endmodule