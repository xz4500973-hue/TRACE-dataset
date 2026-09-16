//////////////////////////////////////////////////////////////////////
////  serirq_host.v - SERIRQ Host Controller (dataset2)           ////
////  Refactored: case-to-if-else chain FSM                        ////
//////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns
`include "serirq_defines.v"

(* keep_hierarchy = "yes" *) module serirq_host(clk_i, nrst_i, 
                   serirq_mode_i, irq_o,
                   serirq_o, serirq_i, serirq_oe
);
    input              clk_i;
    input              nrst_i;
    input              serirq_mode_i;
    output reg         serirq_o;
    input              serirq_i;
    output reg         serirq_oe;
    output reg  [31:0] irq_o;

    reg         [12:0] state;
    reg          [4:0] irq_cnt;
    reg          [2:0] start_cnt;
    reg          [2:0] stop_cnt;
    reg                current_mode;

    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            state     <= `SERIRQ_ST_IDLE;
            serirq_oe <= 1'b0;
            serirq_o  <= 4'b1;
            irq_cnt   <= 5'h00;
            start_cnt <= 3'b000;
            stop_cnt  <= 2'b00;
            irq_o     <= 32'hFFFFFFFF;
            current_mode <= `SERIRQ_MODE_CONTINUOUS;
        end
        else begin
            if(state == `SERIRQ_ST_IDLE) begin
                serirq_oe <= 1'b0;
                start_cnt <= 3'b000;
                stop_cnt  <= 2'b00;
                serirq_o  <= 1'b1;
                if((current_mode == `SERIRQ_MODE_QUIET) && (serirq_i == 1'b0)) begin
                    start_cnt <= 3'b010; serirq_o <= 1'b0; serirq_oe <= 1'b1; state <= `SERIRQ_ST_START;
                end else if(current_mode == `SERIRQ_MODE_CONTINUOUS) begin
                    start_cnt <= 3'b000; state <= `SERIRQ_ST_START;
                end else if((current_mode == `SERIRQ_MODE_QUIET) && (serirq_mode_i == `SERIRQ_MODE_CONTINUOUS)) begin
                    start_cnt <= 3'b000; state <= `SERIRQ_ST_START;
                end else state <= `SERIRQ_ST_IDLE;
            end
            else if(state == `SERIRQ_ST_START) begin
                serirq_o <= 1'b0; serirq_oe <= 1'b1; irq_cnt <= 5'h00; start_cnt <= start_cnt + 1;
                state <= (start_cnt == 3'b111) ? `SERIRQ_ST_START_R : `SERIRQ_ST_START;
            end
            else if(state == `SERIRQ_ST_START_R) begin
                serirq_o <= 1'b1; state <= `SERIRQ_ST_START_T;
            end
            else if(state == `SERIRQ_ST_START_T) begin
                serirq_oe <= 1'b0; state <= `SERIRQ_ST_IRQ;
            end
            else if(state == `SERIRQ_ST_IRQ) begin
                state <= `SERIRQ_ST_IRQ_R;
            end
            else if(state == `SERIRQ_ST_IRQ_R) begin
                irq_o[irq_cnt] <= (serirq_i == 1'b0 ? 1'b0 : 1'b1); state <= `SERIRQ_ST_IRQ_T;
            end
            else if(state == `SERIRQ_ST_IRQ_T) begin
                if(irq_cnt == 5'h1f) state <= `SERIRQ_ST_STOP;
                else begin state <= `SERIRQ_ST_IRQ; irq_cnt <= irq_cnt + 1; end
            end
            else if(state == `SERIRQ_ST_STOP) begin
                serirq_o <= 1'b0; serirq_oe <= 1'b1; stop_cnt <= stop_cnt + 1;
                state <= (stop_cnt == (serirq_mode_i ? 2'b01 : 2'b10)) ? `SERIRQ_ST_STOP_R : `SERIRQ_ST_STOP;
            end
            else if(state == `SERIRQ_ST_STOP_R) begin
                serirq_o <= 1'b1; state <= `SERIRQ_ST_STOP_T;
            end
            else if(state == `SERIRQ_ST_STOP_T) begin
                serirq_oe <= 1'b0; state <= `SERIRQ_ST_IDLE; current_mode <= serirq_mode_i;
            end
        end
endmodule