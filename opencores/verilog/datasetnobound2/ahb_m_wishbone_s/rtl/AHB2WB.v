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
output        wb_clk_o,
output        wb_rst_o,
output [31:0] wb_adr_o, 
output [31:0] wb_dat_o,
output [3:0]  wb_sel_o,
output        wb_we_o,
output        wb_stb_o,
output        wb_cyc_o,

input [31:0]  wb_dat_i,
input         wb_ack_i 

);

/* VARIANT: Split register + always @* for all output logic */

 //register AHB signals - split into separate always blocks
 reg [31:0] rHADDR;
 reg        rHWRITE;
 reg [1:0]  rHTRANS;
 reg [2:0]  rHSIZE;
 reg        rHSEL;

 //high priority pull down HREADYOUT before master latches false data
 reg _pull_down_HREADYOUT;

 //helpful signals
 reg master_wants_read;
 reg master_wants_write;

 //for use in HREADYOUT
 reg  r_wb_cyc_o; 

 // REG 1: address register
 always @(posedge HCLK or negedge HRESETn) begin
    if(!HRESETn) rHADDR <= 0;
    else if(HREADY) rHADDR <= HADDR;
 end

 // REG 2: control registers
 always @(posedge HCLK or negedge HRESETn) begin
    if(!HRESETn) begin
        rHWRITE <= 0;
        rHTRANS <= 0;
        rHSIZE <= 0;
        rHSEL  <= 0;
    end else if(HREADY) begin
        rHWRITE <= HWRITE;
        rHTRANS <= HTRANS;
        rHSIZE <= HSIZE;
        rHSEL  <= HSEL;
    end
 end
 reg wb_stb_o;
 reg wb_cyc_o;
 reg wb_we_o;
 // All output logic in always @* block
 always @* begin
    master_wants_read  = rHSEL & rHTRANS[1] & ~rHWRITE;
    master_wants_write = rHSEL & rHTRANS[1] & rHWRITE;
    wb_stb_o = master_wants_read | master_wants_write;
    wb_cyc_o = wb_stb_o;
    wb_we_o  = master_wants_write;
 end

 assign wb_dat_o = HWDATA;
 assign wb_adr_o = rHADDR;
 assign wb_sel_o = {4{wb_stb_o&wb_cyc_o}};
 assign wb_clk_o = HCLK;
 assign wb_rst_o =!HRESETn;

 always @(posedge HCLK or negedge HRESETn) begin
   if(!HRESETn) r_wb_cyc_o <= 0;
   else if((r_wb_cyc_o==1)&&(HREADYOUT==1)) r_wb_cyc_o <= 0;
   else if(wb_cyc_o) r_wb_cyc_o <= wb_cyc_o;
   else r_wb_cyc_o <= 0;
 end

 assign HREADYOUT = (r_wb_cyc_o&wb_ack_i)?(1):(0);
 assign HRDATA = wb_dat_i;
 assign HRESP = 0;

endmodule