//////////////////////////////////////////////////////////////////////
////  serirq_slave.v - SERIRQ Slave (dataset3)                     ////
////  Refactored: next-state combinational wires                   ////
//////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns
`include "serirq_defines.v"

(* keep_hierarchy = "yes" *) module serirq_slave(clk_i, nrst_i, 
                    irq_i,
                    serirq_o, serirq_i, serirq_oe
);
    input             clk_i;
    input             nrst_i;
    output reg        serirq_o;
    input             serirq_i;
    output reg        serirq_oe;
    input      [31:0] irq_i;
    reg        [31:0] current_irq;
    reg        [12:0] state;
    reg         [4:0] irq_cnt;
    reg found_stop;
    reg found_start;
    reg serirq_mode;
    reg [3:0] stop_clk_cnt;
    reg        extra_sync; // functionally neutral flop

    wire irq_changed = (serirq_mode & (current_irq != irq_i));

    // Combinational next-state wires
    wire [12:0] nxt_state;
    wire        nxt_serirq_o, nxt_serirq_oe;
    wire [4:0]  nxt_irq_cnt;

    assign nxt_state =
        (state == `SERIRQ_ST_IDLE) ?
            (found_start ? `SERIRQ_ST_IRQ_R :
             irq_changed ? `SERIRQ_ST_IDLE : `SERIRQ_ST_IDLE) :
        (state == `SERIRQ_ST_IRQ) ?
            (found_stop ? `SERIRQ_ST_IDLE : `SERIRQ_ST_IRQ_R) :
        (state == `SERIRQ_ST_IRQ_R) ?
            (found_stop ? `SERIRQ_ST_IDLE : `SERIRQ_ST_IRQ_T) :
        (state == `SERIRQ_ST_IRQ_T) ?
            (irq_cnt == 5'h1f ? `SERIRQ_ST_WAIT_STOP :
             (found_stop ? `SERIRQ_ST_IDLE : `SERIRQ_ST_IRQ)) :
        (state == `SERIRQ_ST_WAIT_STOP) ?
            (found_stop ? `SERIRQ_ST_IDLE : `SERIRQ_ST_WAIT_STOP) : `SERIRQ_ST_IDLE;

    assign nxt_serirq_o =
        (state == `SERIRQ_ST_IDLE) ?
            (found_start ? (irq_i[irq_cnt] ? 1'b1 : 1'b0) : (irq_changed ? 1'b0 : 1'b1)) :
        (state == `SERIRQ_ST_IRQ) ? (irq_i[irq_cnt] ? 1'b1 : 1'b0) : 1'b1;

    assign nxt_serirq_oe =
        (state == `SERIRQ_ST_IDLE) ?
            (found_start ? (irq_i[irq_cnt] ? 1'b0 : 1'b1) : (irq_changed ? 1'b1 : 1'b0)) :
        (state == `SERIRQ_ST_IRQ) ? (irq_i[irq_cnt] ? 1'b0 : 1'b1) :
        (state == `SERIRQ_ST_IRQ_T) ? 1'b0 : serirq_oe;

    assign nxt_irq_cnt =
        (state == `SERIRQ_ST_IDLE) ? 5'h00 :
        (state == `SERIRQ_ST_IRQ_T && irq_cnt != 5'h1f) ? irq_cnt + 1 : irq_cnt;

    // Sequential block
    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            state     <= `SERIRQ_ST_IDLE;
            serirq_oe <= 1'b0;
            serirq_o  <= 4'b1;
            irq_cnt   <= 5'h00;
            current_irq <= irq_i;
            found_stop  <= 1'b0;
            found_start <= 1'b0;
            serirq_mode <= `SERIRQ_MODE_CONTINUOUS;
            stop_clk_cnt <= 4'h0;
            extra_sync <= 1'b0;
        end
        else begin
            // Stop/start detection
            if(serirq_i == 1'b0) begin
                stop_clk_cnt <= stop_clk_cnt + 1;
            end else begin
                case(stop_clk_cnt)
                    4'h2: begin found_stop<=1'b1; found_start<=1'b0; serirq_mode<=`SERIRQ_MODE_QUIET; end
                    4'h3: begin found_stop<=1'b1; found_start<=1'b0; serirq_mode<=`SERIRQ_MODE_CONTINUOUS; end
                    4'h4,4'h6,4'h8: begin found_stop<=1'b0; found_start<=1'b1; end
                    default: begin found_stop<=1'b0; found_start<=1'b0; end
                endcase
                stop_clk_cnt <= 4'h0;
            end

            // FSM update
            state     <= nxt_state;
            serirq_o  <= nxt_serirq_o;
            serirq_oe <= nxt_serirq_oe;
            irq_cnt   <= nxt_irq_cnt;
            if(state == `SERIRQ_ST_IDLE && found_start)
                current_irq <= irq_i;
            else if(state == `SERIRQ_ST_IDLE && irq_changed)
                current_irq <= irq_i;
            extra_sync <= found_start;
        end
endmodule