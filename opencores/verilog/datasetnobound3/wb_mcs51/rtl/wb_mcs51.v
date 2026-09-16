/////////////////////////////////////////////////////////////////////
//// MCS51 to Wishbone Interface (dataset3 variant)
//// Refactored: renamed registers, case-style bus access, extra sync
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

   // --- Renamed internal signals ---
   wire addr_bus_en;
   wire wb_access;
   reg  [mcs51_aw-1:0] addr_r;       // renamed from mcs51_addr
   reg  ale_sync;                     // extra sync stage

   // --- Address latch with extra pipeline ---
   always @(negedge mcs51_ale or negedge nrst_i)
     if (~nrst_i) begin
        addr_r    <= {wb_aw{1'b0}};
        ale_sync  <= 1'b0;
     end else begin
        addr_r    <= { {{16-mcs51_aw}{1'b0}}, mcs51_ad_inout[mcs51_aw-1:0] };
        ale_sync  <= 1'b1;
     end

   // --- Tri-state decode ---
   assign addr_bus_en = ~mcs51_rd;
   assign wb_access   = ~mcs51_wr | ~mcs51_rd;

   // --- Output generation using case-style mux for data ---
   assign wbm_adr_o      = { {{wb_aw-16}{1'b0}}, addr_r };
   assign wbm_we_o       = ~mcs51_wr;
   assign wbm_stb_o      = wb_access;
   assign wbm_cyc_o      = wb_access;
   assign wbm_sel_o      = wb_access;
   assign wbm_dat_o      = mcs51_ad_inout[7:0];

   // Tri-state with case-like ternary
   assign mcs51_ad_inout = (addr_bus_en) ? wbm_dat_i : {mcs51_aw{1'bz}};

endmodule