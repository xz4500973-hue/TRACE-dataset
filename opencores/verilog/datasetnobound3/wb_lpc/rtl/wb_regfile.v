//////////////////////////////////////////////////////////////////////
////  wb_regfile.v - Small Wishbone register file for testing     ////
////  Dataset3 variant: explicit FSM + pipeline read data path    ////
//////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module wb_regfile (clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, wb_we_i,
                   wb_stb_i, wb_cyc_i, wb_ack_o, wb_err_o, ws_i, datareg0, datareg1);

    input          clk_i, nrst_i;
    input    [3:0] wb_adr_i;
    output reg [31:0] wb_dat_o;
    input   [31:0] wb_dat_i;
    input    [3:0] wb_sel_i;
    input          wb_we_i, wb_stb_i, wb_cyc_i;
    output reg     wb_ack_o;
    output         wb_err_o;
    input    [7:0] ws_i;
    output  [31:0] datareg0, datareg1;

    wire wb_acc = wb_cyc_i & wb_stb_i;
    wire word_sel = (wb_adr_i[3:2] == 2'b00);

    // Explicit waitstate FSM
    parameter ST_IDLE = 1'b0, ST_WAIT = 1'b1;
    reg state;
    reg [7:0] wsr;

    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) begin
            state <= ST_IDLE;
            wsr   <= 8'd0;
        end else begin
            case (state)
              ST_IDLE: if (wb_acc) begin
                  state <= ST_WAIT;
                  wsr   <= ws_i;
              end
              ST_WAIT: if (wsr == 8'd1) begin
                  state <= ST_IDLE;
                  wsr   <= 8'd0;
              end else begin
                  wsr <= wsr - 8'd1;
              end
            endcase
        end

    wire ack_valid = (state == ST_WAIT) && (wsr == 8'd1);
    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) wb_ack_o <= 1'b0;
        else wb_ack_o <= ack_valid;

    // Register file with extra pipeline read stage
    reg [31:0] regfile [0:1];
    reg [31:0] rd_pipe;
    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) begin
            regfile[0] <= 32'h0;
            regfile[1] <= 32'h0;
        end else if (ack_valid && wb_we_i && word_sel) begin
            if (wb_sel_i[0]) regfile[wb_adr_i[1:0]][7:0]   <= wb_dat_i[7:0];
            if (wb_sel_i[1]) regfile[wb_adr_i[1:0]][15:8]  <= wb_dat_i[15:8];
            if (wb_sel_i[2]) regfile[wb_adr_i[1:0]][23:16] <= wb_dat_i[23:16];
            if (wb_sel_i[3]) regfile[wb_adr_i[1:0]][31:24] <= wb_dat_i[31:24];
        end

    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) begin
            rd_pipe <= 32'h0;
            wb_dat_o <= 32'h0;
        end else begin
            rd_pipe  <= (ack_valid && !wb_we_i && word_sel) ? regfile[wb_adr_i[1:0]] : rd_pipe;
            wb_dat_o <= rd_pipe;
        end

    assign wb_err_o  = 1'b0;
    assign datareg0  = regfile[0];
    assign datareg1  = regfile[1];

endmodule