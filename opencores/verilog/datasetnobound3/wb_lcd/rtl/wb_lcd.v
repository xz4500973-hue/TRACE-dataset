//////////////////////////////////////////////////////////////////////
////  wb_lcd.v - Dataset3: if-else ack, ternary combinational     ////
//////////////////////////////////////////////////////////////////////

`include "lcd_defines.v"

(* keep_hierarchy = "yes" *) module wb_lcd (
	input			wb_clk_i, wb_rst_i,
	input	[`WB_DAT_RNG]	wb_dat_i,
	output	reg [`WB_DAT_RNG]	wb_dat_o,
	input	[`WB_ADDR_RNG]	wb_adr_i,
	input	[`WB_BSEL_RNG]	wb_sel_i,
	input			wb_we_i, wb_cyc_i, wb_stb_i,
	output	reg		wb_ack_o,
	output			wb_err_o,
	output	[3:0]		SF_D,
	output			LCD_E, LCD_RS, LCD_RW
	);
	
assign wb_err_o = 0;

wire cs = wb_cyc_i & wb_stb_i;
wire we = cs & wb_we_i;
wire re = cs & !wb_we_i;
wire special_address = (`SPECIAL_REG_ADDR_MASK == (`SPECIAL_REG_ADDR_MASK & wb_adr_i));

wire lcd_busy;
wire lcd_we = !special_address & we;
wire [`ADDR_WIDTH-1:0] lcd_addr = wb_adr_i[`ADDR_WIDTH-1:0];

wire repaint_req =  we & (wb_adr_i == `COMMAND_REG_ADDR) & (wb_dat_i == `COMMAND_REPAINT_CODE);
wire status = lcd_busy ? `STATUS_BUSY_CODE : `STATUS_IDDLE_CODE;

// Ack management: if-else style
reg ack_prev;
always @(posedge wb_clk_i) begin
	if(wb_rst_i) begin
		wb_ack_o <= 1'b0;
		ack_prev <= 1'b0;
	end else begin
		if(cs && !ack_prev) begin
			wb_ack_o <= 1'b1;
			ack_prev <= 1'b1;
		end else if(cs && ack_prev) begin
			wb_ack_o <= 1'b0;
			ack_prev <= 1'b0;
		end else begin
			wb_ack_o <= 1'b0;
			ack_prev <= 1'b0;
		end
	end
end

// Status output with pipeline register
reg [`WB_DAT_RNG] status_pipe;
always @(posedge wb_clk_i) begin
	status_pipe <= status;
	wb_dat_o    <= status_pipe;
end

// Command register (repaint)
reg lcd_repaint = 0;
always @(posedge wb_clk_i) begin
	lcd_repaint <= repaint_req & !lcd_busy;
end

lcd lcd(
	.clk	( wb_clk_i ), .reset	( wb_rst_i ),
	.dat	( wb_dat_i[`DAT_RNG] ), .addr	( lcd_addr ),
	.we	( lcd_we ), .repaint( lcd_repaint ),
	.busy	( lcd_busy ),	
	.SF_D	( SF_D ), .LCD_E	( LCD_E ),
	.LCD_RS	( LCD_RS ), .LCD_RW	( LCD_RW )
	);

endmodule