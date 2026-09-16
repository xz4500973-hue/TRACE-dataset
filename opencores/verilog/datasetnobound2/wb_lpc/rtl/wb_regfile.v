//////////////////////////////////////////////////////////////////////
////  wb_regfile.v - Small Wishbone register file for testing     ////
////  Dataset2 variant: combinational decode + single always block ////
//////////////////////////////////////////////////////////////////////

module wb_regfile (clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, wb_we_i,
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
    reg      [7:0] waitstate;

    wire wb_acc = wb_cyc_i & wb_stb_i;
    wire word_sel = (wb_adr_i[3:2] == 2'b00);
    wire nxt_ack  = wb_acc & (waitstate == 8'd0);

    // Unified sequential block
    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) begin
            wb_ack_o   <= 1'b0;
            waitstate  <= 8'd0;
        end else begin
            wb_ack_o   <= nxt_ack;
            if (wb_acc)
                waitstate <= ws_i;
            else if (waitstate > 8'd0)
                waitstate <= waitstate - 8'd1;
        end

    // Register file
    reg [31:0] regfile [0:1];
    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i) begin
            regfile[0] <= 32'h0;
            regfile[1] <= 32'h0;
        end else if (nxt_ack && wb_we_i && word_sel) begin
            if (wb_sel_i[0]) regfile[wb_adr_i[1:0]][7:0]   <= wb_dat_i[7:0];
            if (wb_sel_i[1]) regfile[wb_adr_i[1:0]][15:8]  <= wb_dat_i[15:8];
            if (wb_sel_i[2]) regfile[wb_adr_i[1:0]][23:16] <= wb_dat_i[23:16];
            if (wb_sel_i[3]) regfile[wb_adr_i[1:0]][31:24] <= wb_dat_i[31:24];
        end

    // Read data
    always @(posedge clk_i or negedge nrst_i)
        if (~nrst_i)
            wb_dat_o <= 32'h0;
        else if (nxt_ack && !wb_we_i && word_sel)
            wb_dat_o <= regfile[wb_adr_i[1:0]];
        else
            wb_dat_o <= 32'h0;

    assign wb_err_o  = 1'b0;
    assign datareg0  = regfile[0];
    assign datareg1  = regfile[1];

endmodule