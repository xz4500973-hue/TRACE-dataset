`timescale 1ns / 1ps
`include "lcd_defines.v"

module tb_wb_lcd;

    reg wb_clk_i,wb_rst_i;
    reg [`WB_DAT_RNG] wb_dat_i;
    wire [`WB_DAT_RNG] wb_dat_o;
    reg [`WB_ADDR_RNG] wb_adr_i;
    reg [`WB_BSEL_RNG] wb_sel_i;
    reg wb_we_i,wb_cyc_i,wb_stb_i;
    wire wb_ack_o,wb_err_o;
    wire [3:0] SF_D; wire LCD_E,LCD_RS,LCD_RW;

    wb_lcd uut(.wb_clk_i(wb_clk_i),.wb_rst_i(wb_rst_i),.wb_dat_i(wb_dat_i),.wb_dat_o(wb_dat_o),
        .wb_adr_i(wb_adr_i),.wb_sel_i(wb_sel_i),.wb_we_i(wb_we_i),.wb_cyc_i(wb_cyc_i),.wb_stb_i(wb_stb_i),
        .wb_ack_o(wb_ack_o),.wb_err_o(wb_err_o),.SF_D(SF_D),.LCD_E(LCD_E),.LCD_RS(LCD_RS),.LCD_RW(LCD_RW));

    initial wb_clk_i=0; always #10 wb_clk_i=~wb_clk_i;

    task wr; input [`WB_ADDR_RNG] a; input [`WB_DAT_RNG] d;
      begin @(posedge wb_clk_i);wb_adr_i<=a;wb_dat_i<=d;wb_sel_i<=4'b0001;wb_we_i<=1;wb_cyc_i<=1;wb_stb_i<=1;
            @(posedge wb_clk_i);while(!wb_ack_o)@(posedge wb_clk_i);@(posedge wb_clk_i);wb_cyc_i<=0;wb_stb_i<=0;wb_we_i<=0;end endtask

    task rd; input [`WB_ADDR_RNG] a; output [`WB_DAT_RNG] d;
      begin @(posedge wb_clk_i);wb_adr_i<=a;wb_sel_i<=4'b0001;wb_we_i<=0;wb_cyc_i<=1;wb_stb_i<=1;
            @(posedge wb_clk_i);while(!wb_ack_o)@(posedge wb_clk_i);d=wb_dat_o;@(posedge wb_clk_i);wb_cyc_i<=0;wb_stb_i<=0;end endtask

    reg [`WB_DAT_RNG] r; integer i;

    initial begin
        $dumpfile("wb_lcd.vcd");$dumpvars(0,tb_wb_lcd);
        wb_rst_i=1;wb_dat_i=0;wb_adr_i=0;wb_sel_i=0;wb_we_i=0;wb_cyc_i=0;wb_stb_i=0;
        #100;wb_rst_i=0;#100;

        // Pattern: fill alternating lines
        for(i=0;i<16;i=i+1) wr(i, 8'h2A);
        for(i=0;i<16;i=i+1) wr(16'h40+i, 8'h23);

        wr(`COMMAND_REG_ADDR,`COMMAND_REPAINT_CODE);
        #500000;

        rd(`COMMAND_REG_ADDR, r);
        $display("Status: %h", r);

        #100000;
        $display("Done at %0t",$time);$finish;
    end

endmodule