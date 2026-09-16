(* keep_hierarchy = "yes" *) module AHB2WB(

//AHB MASTER SIDE
input        HCLK,
input        HRESETn,
input [31:0] HADDR,
input [31:0] HWDATA,
input        HWRITE,
input        HSEL,
input [1:0]  HTRANS,
input [2:0]  HSIZE,
input        HREADY,

output [31:0] HRDATA,
output        HRESP,
output        HREADYOUT, 

//WISHBONE SLAVE SIDE
output reg    wb_clk_o,
output reg    wb_rst_o,
output reg [31:0] wb_adr_o, 
output reg [31:0] wb_dat_o,
output reg [3:0]  wb_sel_o,
output reg        wb_we_o,
output reg        wb_stb_o,
output reg        wb_cyc_o,

input [31:0]  wb_dat_i,
input         wb_ack_i 

);

/* VARIANT: All outputs reg'd (not wire assigned), single merged always for AHB regs, 
            separate always for WB outputs */

 //register AHB signals
 reg [31:0] rHADDR;
 reg        rHWRITE;
 reg [1:0]  rHTRANS;
 reg [2:0]  rHSIZE;
 reg        rHSEL;

 //helpful signals
 wire master_wants_read;
 wire master_wants_write;

 //for use in HREADYOUT
 reg  r_wb_cyc_o; 

 // Single merged always for register latching
 always @(posedge HCLK or negedge HRESETn) begin
    if(!HRESETn) begin
        rHADDR <= 0;
        rHWRITE <= 0;
        rHTRANS <= 0;
        rHSIZE <= 0;
        rHSEL  <= 0;
        r_wb_cyc_o <= 0;
    end else begin
        if(HREADY) begin
            rHADDR <= HADDR;
            rHWRITE <= HWRITE;
            rHTRANS <= HTRANS;
            rHSIZE <= HSIZE;
            rHSEL  <= HSEL;
        end
        if((r_wb_cyc_o==1)&&(HREADYOUT==1)) r_wb_cyc_o <= 0;
        else if(wb_cyc_o) r_wb_cyc_o <= wb_cyc_o;
        else r_wb_cyc_o <= 0;
    end
 end

 // Combinational decode of AHB -> WB
 assign master_wants_read  = rHSEL & rHTRANS[1] & ~rHWRITE;
 assign master_wants_write = rHSEL & rHTRANS[1] & rHWRITE;
 
 wire wb_stb_o_int = master_wants_read | master_wants_write;
 wire wb_cyc_o_int = wb_stb_o_int;
 wire wb_we_o_int  = master_wants_write;

always @(*) begin
    if(!HRESETn) begin
        wb_clk_o = 0;
        wb_rst_o = 0;
    end
    else begin
        wb_clk_o = HCLK;
        wb_rst_o = !HRESETn;
    end
end


// 原有的 always 块保持不变，但删除对 wb_clk_o 和 wb_rst_o 的赋值
always @(posedge HCLK or negedge HRESETn) begin
    if(!HRESETn) begin
        wb_stb_o <= 0;
        wb_cyc_o <= 0;
        wb_we_o  <= 0;
        wb_dat_o <= 0;
        wb_adr_o <= 0;
        wb_sel_o <= 0;
        // 删除 wb_clk_o 和 wb_rst_o 的赋值
    end else begin
        wb_stb_o <= wb_stb_o_int;
        wb_cyc_o <= wb_cyc_o_int;
        wb_we_o  <= wb_we_o_int;
        wb_dat_o <= HWDATA;
        wb_adr_o <= rHADDR;
        wb_sel_o <= {4{wb_stb_o_int & wb_cyc_o_int}};
        // 删除 wb_clk_o 和 wb_rst_o 的赋值
    end
end

 assign HREADYOUT = (r_wb_cyc_o&wb_ack_i)?(1):(0);
 assign HRDATA = wb_dat_i;
 assign HRESP = 0;

endmodule