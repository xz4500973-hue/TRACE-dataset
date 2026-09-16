/////////////////////////////////////////////////////////////////////
//// DragonBall/68K to WISHBONE Interface (dataset2 variant)
//// Refactored: two-process style, combinational next-state + seq
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
   reg            dtack_p1;  // extra pipeline stage for dtack timing variation
   // --- Combinational decodes ---
   reg            dtack;
   wire cs  = !cs_n & !(ack_i | err_i | dtack_p1);
   wire lwe = !lwe_n;
   wire uwe = !uwe_n;
   wire oe  = !oe_n;

   // --- Next-state wires ---
   wire            nxt_cyc  = cs;
   wire            nxt_stb  = cs;
   wire [adr_hi:1] nxt_adr  = a;
   wire [     1:0] nxt_sel  = oe ? 2'b11 : {uwe, lwe};
   wire            nxt_we   = uwe | lwe;
   wire            nxt_dtack = ack_i & !dtack;
   wire [    15:0] nxt_sdat = dat_i;

   // --- Registers ---
   reg            cyc_o, stb_o;
   reg [adr_hi:1] adr_o;
   reg [     1:0] sel_o;
   reg            we_o;

   reg [    15:0] sdat_i;
   always @(posedge clk or negedge reset_n)
     if (!reset_n) begin
         cyc_o  <= 1'b0;
         stb_o  <= 1'b0;
         adr_o  <= {adr_hi-1{1'b0}};
         sel_o  <= 2'b00;
         we_o   <= 1'b0;
         dtack  <= 1'b0;
         sdat_i <= 16'h0;
         dtack_p1 <= 1'b0;
     end else begin
         cyc_o  <= nxt_cyc;
         stb_o  <= nxt_stb;
         adr_o  <= nxt_adr;
         sel_o  <= nxt_sel;
         we_o   <= nxt_we;
         dtack  <= nxt_dtack;
         sdat_i <= nxt_sdat;
         dtack_p1 <= dtack;
     end

   // --- Outputs ---
   assign clk_o = clk;
   assign rst_o = reset_n;
   assign berr  = err_i;
   assign dat_o = d;
   assign d      = (~cs_n & oe) ? sdat_i : 16'hzzzz;
   assign dtack_n = !dtack;

endmodule