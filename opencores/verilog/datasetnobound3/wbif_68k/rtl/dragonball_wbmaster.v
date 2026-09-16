/////////////////////////////////////////////////////////////////////
//// DragonBall/68K to WISHBONE Interface (dataset3 variant)
//// Refactored: merged comb+seq with case-based FSM, register rename
/////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "yes" *) module dragonball_wbmaster(
  clk, reset_n,
  a, cs_n, d, lwe_n, uwe_n, oe_n, dtack_n, berr,
  clk_o, rst_o, cyc_o, stb_o, adr_o, sel_o, we_o, dat_o, dat_i, ack_i, err_i
);

   parameter adr_hi = 9;

   input             clk, reset_n;
   input  [adr_hi:1] a;
   input             cs_n;
   inout  [    15:0] d;
   input             lwe_n, uwe_n;
   input             oe_n;
   output            dtack_n, berr;
   output            clk_o, rst_o, cyc_o, stb_o;
   output [adr_hi:1] adr_o;
   output [     1:0] sel_o;
   output            we_o;
   output [    15:0] dat_o;
   input  [    15:0] dat_i;
   input             ack_i, err_i;

   reg            dtack_r;
   // --- Decode logic using renamed internal signals ---
   wire cs_active  = !cs_n & !(ack_i | err_i | dtack_r);
   wire lo_wr      = !lwe_n;
   wire hi_wr      = !uwe_n;
   wire out_en     = !oe_n;

   // --- Registers with _r suffix ---
   reg            cyc_r, stb_r;
   reg [adr_hi:1] adr_r;
   reg [     1:0] sel_r;
   reg            we_r;
 
   reg [    15:0] dbuf_r;
   reg            sync_stg_r;  // extra sync stage for structural variation

   // --- Unified sequential block ---
   always @(posedge clk or negedge reset_n)
     if (!reset_n) begin
         cyc_r     <= 1'b0;
         stb_r     <= 1'b0;
         adr_r     <= {adr_hi-1{1'b0}};
         sel_r     <= 2'b00;
         we_r      <= 1'b0;
         dtack_r   <= 1'b0;
         dbuf_r    <= 16'h0;
         sync_stg_r <= 1'b0;
     end else begin
         // Case-based structure instead of direct assignments
         if (cs_active) begin
             cyc_r  <= 1'b1;
             stb_r  <= 1'b1;
             adr_r  <= a;
             // select lines
             case (out_en)
               1'b0: sel_r <= {hi_wr, lo_wr};
               1'b1: sel_r <= 2'b11;
             endcase
             we_r   <= hi_wr | lo_wr;
         end else begin
             cyc_r  <= 1'b0;
             stb_r  <= 1'b0;
         end
         dtack_r  <= ack_i & !dtack_r;
         dbuf_r   <= dat_i;
         sync_stg_r <= dtack_r;  // functionally neutral extra flop
     end

   // --- Output assignments ---
   assign clk_o   = clk;
   assign rst_o   = reset_n;
   assign berr    = err_i;
   assign cyc_o   = cyc_r;
   assign stb_o   = stb_r;
   assign adr_o   = adr_r;
   assign sel_o   = sel_r;
   assign we_o    = we_r;
   assign dat_o   = d;
   assign d       = (~cs_n & out_en) ? dbuf_r : 16'hzzzz;
   assign dtack_n = !dtack_r;

endmodule