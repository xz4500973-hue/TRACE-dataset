//////////////////////////////////////////////////////////////////////
////  wb_flash.v - Wishbone FLASH interface (dataset2)            ////
////  Refactored: two-stage waitstate FSM, case-based sel decode  ////
//////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module wb_flash(
    clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, wb_we_i,
    wb_stb_i, wb_cyc_i, wb_ack_o,
    flash_adr_o, flash_dat_o, flash_dat_i,
    flash_oe, flash_ce, flash_we
);

    parameter aw = 19;
    parameter dw = 32;
    parameter ws = 4'hf;

    input   clk_i;
    input   nrst_i;
    input   [aw-1:0] wb_adr_i;
    output  [dw-1:0] wb_dat_o;
    input   [dw-1:0] wb_dat_i;
    input   [3:0] wb_sel_i;
    input   wb_we_i, wb_stb_i, wb_cyc_i;
    output reg wb_ack_o;
    output  [18:0] flash_adr_o;
    output  [7:0] flash_dat_o;
    input   [7:0] flash_dat_i;
    output  flash_oe, flash_ce, flash_we;

    wire wb_acc = wb_cyc_i & wb_stb_i;
    wire wb_wr  = wb_acc & wb_we_i;
    wire wb_rd  = wb_acc & !wb_we_i;

    // Waitstate FSM (explicit two-state)
    reg in_wait;
    reg [3:0] wait_cnt;

    always @(posedge clk_i or negedge nrst_i)
        if(~nrst_i) begin
            wb_ack_o <= 1'b0;
            in_wait  <= 1'b0;
            wait_cnt <= 4'd0;
        end
        else begin
            if(!in_wait && wb_acc) begin
                in_wait  <= 1'b1;
                wait_cnt <= 4'd1;
            end
            else if(in_wait) begin
                wait_cnt <= wait_cnt + 4'd1;
                if(wait_cnt == ws) begin
                    wb_ack_o <= 1'b1;
                    in_wait  <= 1'b0;
                end
            end
            else wb_ack_o <= 1'b0;
        end

    // Address low-bit decode (case-based)
    reg [1:0] adr_low;
    always @(*)
        case(wb_sel_i)
            4'b0001: adr_low = 2'b00;
            4'b0010: adr_low = 2'b01;
            4'b0100: adr_low = 2'b10;
            4'b1000: adr_low = 2'b11;
            default: adr_low = 2'b00;
        endcase

    // Data output mux (case-based)
    reg [7:0] flash_dout;
    always @(*)
        case(wb_sel_i)
            4'b0001: flash_dout = wb_dat_i[7:0];
            4'b0010: flash_dout = wb_dat_i[15:8];
            4'b0100: flash_dout = wb_dat_i[23:16];
            4'b1000: flash_dout = wb_dat_i[31:24];
            default: flash_dout = wb_dat_i[7:0];
        endcase

    assign flash_adr_o = {wb_adr_i[18:2], adr_low};
    assign flash_dat_o = flash_dout;
    assign flash_ce    = !wb_acc;
    assign flash_we    = !wb_wr;
    assign flash_oe    = !wb_rd;
    assign wb_dat_o    = {4{flash_dat_i}};

endmodule