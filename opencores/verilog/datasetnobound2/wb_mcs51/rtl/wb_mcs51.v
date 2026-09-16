/////////////////////////////////////////////////////////////////////
//// MCS51 to Wishbone Interface (dataset2 variant)
//// Refactored: two-process style, combinational next-state wires
/////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module wb_mcs51 (nrst_i, clk_i, mcs51_ale, mcs51_rd, mcs51_wr, mcs51_ad_inout,
                 wbm_adr_o, wbm_dat_i, wbm_dat_o, wbm_sel_o, wbm_cyc_o,
                 wbm_stb_o, wbm_we_o, wbm_ack_i, wbm_rty_i, wbm_err_i);

   parameter mcs51_aw = 8;
   parameter wb_aw = 16;

   input nrst_i, clk_i;
   input mcs51_ale, mcs51_rd, mcs51_wr;
   inout [mcs51_aw-1:0] mcs51_ad_inout;
   output [wb_aw-1:0]  wbm_adr_o;
   input  [7:0]   wbm_dat_i;
   output [7:0]   wbm_dat_o;
   output         wbm_sel_o, wbm_cyc_o, wbm_stb_o, wbm_we_o;
   input          wbm_ack_i, wbm_rty_i, wbm_err_i;

   // --- Combinational next-state for address latch ---
   wire [mcs51_aw-1:0] nxt_addr;
   assign nxt_addr = { {{16-mcs51_aw}{1'b0}}, mcs51_ad_inout[mcs51_aw-1:0] };

   // --- Address register ---
   reg [mcs51_aw-1:0] mcs51_addr;
   always @(negedge mcs51_ale or negedge nrst_i)
     if (~nrst_i)
        mcs51_addr <= {{wb_aw}{1'b0}};
     else
        mcs51_addr <= nxt_addr;

   // --- Combinational WB signal generation ---
   wire l_wb_stb;
   wire mcs51_ad_oe;
   assign mcs51_ad_oe = ~mcs51_rd;
   assign l_wb_stb    = ~mcs51_wr | ~mcs51_rd;

   // --- Output assignments (using explicit wire aliases) ---
   assign wbm_adr_o      = { {{wb_aw-16}{1'b0}}, mcs51_addr };
   assign wbm_we_o       = ~mcs51_wr;
   assign wbm_stb_o      = l_wb_stb;
   assign wbm_cyc_o      = l_wb_stb;
   assign wbm_sel_o      = l_wb_stb;
   assign wbm_dat_o      = mcs51_ad_inout[7:0];
   assign mcs51_ad_inout = mcs51_ad_oe ? wbm_dat_i : 8'bzzzzzzzz;

endmodule