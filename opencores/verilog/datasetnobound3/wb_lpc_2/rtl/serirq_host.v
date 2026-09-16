//////////////////////////////////////////////////////////////////////
////  serirq_host.v - SERIRQ Host Controller (dataset3)           ////
////  Refactored: two-process style, next-state combinational      ////
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

    reg [12:0] state;
    reg [4:0]  irq_cnt;
    reg [2:0]  start_cnt;
    reg [2:0]  stop_cnt;
    reg        current_mode;
    reg        extra_stage;  // pipeline stage for structural variation

    // Combinational next-state wires
    wire [12:0] nxt_state;
    wire        nxt_serirq_o, nxt_serirq_oe;
    wire [4:0]  nxt_irq_cnt;
    wire [2:0]  nxt_start_cnt, nxt_stop_cnt;
    wire        nxt_current_mode;

    assign nxt_serirq_o =
        (state==`SERIRQ_ST_IDLE) ? (((current_mode==`SERIRQ_MODE_QUIET)&&(serirq_i==1'b0))?1'b0:1'b1) :
        (state==`SERIRQ_ST_START||state==`SERIRQ_ST_STOP) ? 1'b0 : 1'b1;

    assign nxt_serirq_oe =
        (state==`SERIRQ_ST_IDLE) ? (((current_mode==`SERIRQ_MODE_QUIET)&&(serirq_i==1'b0))?1'b1:1'b0) :
        (state==`SERIRQ_ST_START||state==`SERIRQ_ST_STOP) ? 1'b1 : 
        (state==`SERIRQ_ST_START_T||state==`SERIRQ_ST_STOP_T) ? 1'b0 : serirq_oe;

    assign nxt_state =
        (state==`SERIRQ_ST_IDLE) ? (
            ((current_mode==`SERIRQ_MODE_QUIET)&&(serirq_i==1'b0)) ? `SERIRQ_ST_START :
            (current_mode==`SERIRQ_MODE_CONTINUOUS)               ? `SERIRQ_ST_START :
            ((current_mode==`SERIRQ_MODE_QUIET)&&(serirq_mode_i==`SERIRQ_MODE_CONTINUOUS)) ? `SERIRQ_ST_START : `SERIRQ_ST_IDLE
        ) :
        (state==`SERIRQ_ST_START)   ? (start_cnt==3'b111 ? `SERIRQ_ST_START_R : `SERIRQ_ST_START) :
        (state==`SERIRQ_ST_START_R) ? `SERIRQ_ST_START_T :
        (state==`SERIRQ_ST_START_T) ? `SERIRQ_ST_IRQ :
        (state==`SERIRQ_ST_IRQ)     ? `SERIRQ_ST_IRQ_R :
        (state==`SERIRQ_ST_IRQ_R)   ? `SERIRQ_ST_IRQ_T :
        (state==`SERIRQ_ST_IRQ_T)   ? (irq_cnt==5'h1f ? `SERIRQ_ST_STOP : `SERIRQ_ST_IRQ) :
        (state==`SERIRQ_ST_STOP)    ? (stop_cnt==(serirq_mode_i?2'b01:2'b10) ? `SERIRQ_ST_STOP_R : `SERIRQ_ST_STOP) :
        (state==`SERIRQ_ST_STOP_R)  ? `SERIRQ_ST_STOP_T :
        (state==`SERIRQ_ST_STOP_T)  ? `SERIRQ_ST_IDLE : `SERIRQ_ST_IDLE;

    assign nxt_irq_cnt  = (state==`SERIRQ_ST_START) ? 5'h00 : (state==`SERIRQ_ST_IRQ_T&&irq_cnt!=5'h1f) ? irq_cnt+1 : irq_cnt;
    assign nxt_start_cnt = (state==`SERIRQ_ST_IDLE) ? (((current_mode==`SERIRQ_MODE_QUIET)&&(serirq_i==1'b0))?3'b010:3'b000) :
                           (state==`SERIRQ_ST_START) ? start_cnt+1 : 3'b000;
    assign nxt_stop_cnt  = (state==`SERIRQ_ST_STOP) ? stop_cnt+1 : 2'b00;
    assign nxt_current_mode = (state==`SERIRQ_ST_STOP_T) ? serirq_mode_i : current_mode;

    // Unified sequential block
    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            state     <= `SERIRQ_ST_IDLE;
            serirq_oe <= 1'b0;
            serirq_o  <= 1'b1;
            irq_cnt   <= 5'h00;
            start_cnt <= 3'b000;
            stop_cnt  <= 2'b00;
            irq_o     <= 32'hFFFFFFFF;
            current_mode <= `SERIRQ_MODE_CONTINUOUS;
            extra_stage <= 1'b0;
        end
        else begin
            state     <= nxt_state;
            serirq_o  <= nxt_serirq_o;
            serirq_oe <= nxt_serirq_oe;
            irq_cnt   <= nxt_irq_cnt;
            start_cnt <= nxt_start_cnt;
            stop_cnt  <= nxt_stop_cnt;
            current_mode <= nxt_current_mode;
            if(state == `SERIRQ_ST_IRQ_R)
                irq_o[irq_cnt] <= (serirq_i == 1'b0 ? 1'b0 : 1'b1);
            extra_stage <= serirq_i;
        end
endmodule