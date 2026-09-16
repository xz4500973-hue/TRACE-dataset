/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:03:56 2026
/////////////////////////////////////////////////////////////


module dragonball_wbmaster ( clk, reset_n, a, cs_n, d, lwe_n, uwe_n, oe_n, 
        dtack_n, berr, clk_o, rst_o, cyc_o, stb_o, adr_o, sel_o, we_o, dat_o, 
        dat_i, ack_i, err_i );
  input [9:1] a;
  inout [15:0] d;
  output [9:1] adr_o;
  output [1:0] sel_o;
  output [15:0] dat_o;
  input [15:0] dat_i;
  input clk, reset_n, cs_n, lwe_n, uwe_n, oe_n, ack_i, err_i;
  output dtack_n, berr, clk_o, rst_o, cyc_o, stb_o, we_o;
  wire   dtack_p1, cs, nxt_we, dtack, nxt_dtack, n2;
  wire   [1:0] nxt_sel;
  wire   [15:0] sdat_i;

  DFCNQD1BWP12T30P140 adr_o_reg_5_ ( .D(a[5]), .CP(clk), .CDN(rst_o), .Q(
        adr_o[5]) );
  DFCNQD1BWP12T30P140 adr_o_reg_4_ ( .D(a[4]), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[4]) );
  DFCNQD1BWP12T30P140 adr_o_reg_3_ ( .D(a[3]), .CP(clk), .CDN(rst_o), .Q(
        adr_o[3]) );
  DFCNQD1BWP12T30P140 adr_o_reg_2_ ( .D(a[2]), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[2]) );
  DFCNQD1BWP12T30P140 adr_o_reg_1_ ( .D(a[1]), .CP(clk), .CDN(rst_o), .Q(
        adr_o[1]) );
  DFCNQD1BWP12T30P140 sel_o_reg_1_ ( .D(nxt_sel[1]), .CP(clk_o), .CDN(rst_o), 
        .Q(sel_o[1]) );
  DFCNQD1BWP12T30P140 sel_o_reg_0_ ( .D(nxt_sel[0]), .CP(clk_o), .CDN(reset_n), 
        .Q(sel_o[0]) );
  DFCNQD1BWP12T30P140 cyc_o_reg ( .D(cs), .CP(clk), .CDN(rst_o), .Q(cyc_o) );
  DFCNQD1BWP12T30P140 adr_o_reg_9_ ( .D(a[9]), .CP(clk), .CDN(reset_n), .Q(
        adr_o[9]) );
  DFCNQD1BWP12T30P140 adr_o_reg_8_ ( .D(a[8]), .CP(clk), .CDN(rst_o), .Q(
        adr_o[8]) );
  DFCNQD1BWP12T30P140 adr_o_reg_7_ ( .D(a[7]), .CP(clk), .CDN(reset_n), .Q(
        adr_o[7]) );
  DFCNQD1BWP12T30P140 adr_o_reg_6_ ( .D(a[6]), .CP(clk), .CDN(rst_o), .Q(
        adr_o[6]) );
  DFCNQD1BWP12T30P140 dtack_p1_reg ( .D(dtack), .CP(clk), .CDN(rst_o), .Q(
        dtack_p1) );
  DFCNQD1BWP12T30P140 we_o_reg ( .D(nxt_we), .CP(clk_o), .CDN(rst_o), .Q(we_o)
         );
  DFCNQD1BWP12T30P140 sdat_i_reg_15_ ( .D(dat_i[15]), .CP(clk), .CDN(rst_o), 
        .Q(sdat_i[15]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_3_ ( .D(dat_i[3]), .CP(clk), .CDN(reset_n), 
        .Q(sdat_i[3]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_2_ ( .D(dat_i[2]), .CP(clk), .CDN(reset_n), 
        .Q(sdat_i[2]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_1_ ( .D(dat_i[1]), .CP(clk), .CDN(reset_n), 
        .Q(sdat_i[1]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_0_ ( .D(dat_i[0]), .CP(clk), .CDN(reset_n), 
        .Q(sdat_i[0]) );
  DFCNQD1BWP12T30P140 dtack_reg ( .D(nxt_dtack), .CP(clk), .CDN(reset_n), .Q(
        dtack) );
  DFCNQD1BWP12T30P140 sdat_i_reg_14_ ( .D(dat_i[14]), .CP(clk_o), .CDN(rst_o), 
        .Q(sdat_i[14]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_13_ ( .D(dat_i[13]), .CP(clk_o), .CDN(rst_o), 
        .Q(sdat_i[13]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_12_ ( .D(dat_i[12]), .CP(clk_o), .CDN(rst_o), 
        .Q(sdat_i[12]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_11_ ( .D(dat_i[11]), .CP(clk_o), .CDN(rst_o), 
        .Q(sdat_i[11]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_10_ ( .D(dat_i[10]), .CP(clk_o), .CDN(reset_n), .Q(sdat_i[10]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_9_ ( .D(dat_i[9]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[9]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_8_ ( .D(dat_i[8]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[8]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_7_ ( .D(dat_i[7]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[7]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_6_ ( .D(dat_i[6]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[6]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_5_ ( .D(dat_i[5]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[5]) );
  DFCNQD1BWP12T30P140 sdat_i_reg_4_ ( .D(dat_i[4]), .CP(clk_o), .CDN(reset_n), 
        .Q(sdat_i[4]) );
  BUFTD4BWP12T30P140 d_tri_0_ ( .I(sdat_i[0]), .OE(n2), .Z(d[0]) );
  BUFTD4BWP12T30P140 d_tri_1_ ( .I(sdat_i[1]), .OE(n2), .Z(d[1]) );
  BUFTD4BWP12T30P140 d_tri_2_ ( .I(sdat_i[2]), .OE(n2), .Z(d[2]) );
  BUFTD4BWP12T30P140 d_tri_3_ ( .I(sdat_i[3]), .OE(n2), .Z(d[3]) );
  BUFTD4BWP12T30P140 d_tri_4_ ( .I(sdat_i[4]), .OE(n2), .Z(d[4]) );
  BUFTD4BWP12T30P140 d_tri_5_ ( .I(sdat_i[5]), .OE(n2), .Z(d[5]) );
  BUFTD4BWP12T30P140 d_tri_6_ ( .I(sdat_i[6]), .OE(n2), .Z(d[6]) );
  BUFTD4BWP12T30P140 d_tri_7_ ( .I(sdat_i[7]), .OE(n2), .Z(d[7]) );
  BUFTD4BWP12T30P140 d_tri_8_ ( .I(sdat_i[8]), .OE(n2), .Z(d[8]) );
  BUFTD4BWP12T30P140 d_tri_9_ ( .I(sdat_i[9]), .OE(n2), .Z(d[9]) );
  BUFTD4BWP12T30P140 d_tri_10_ ( .I(sdat_i[10]), .OE(n2), .Z(d[10]) );
  BUFTD4BWP12T30P140 d_tri_11_ ( .I(sdat_i[11]), .OE(n2), .Z(d[11]) );
  BUFTD4BWP12T30P140 d_tri_12_ ( .I(sdat_i[12]), .OE(n2), .Z(d[12]) );
  BUFTD4BWP12T30P140 d_tri_13_ ( .I(sdat_i[13]), .OE(n2), .Z(d[13]) );
  BUFTD4BWP12T30P140 d_tri_14_ ( .I(sdat_i[14]), .OE(n2), .Z(d[14]) );
  BUFTD4BWP12T30P140 d_tri_15_ ( .I(sdat_i[15]), .OE(n2), .Z(d[15]) );
  NR2D1BWP12T30P140 U11 ( .A1(cs_n), .A2(oe_n), .ZN(n2) );
  CKBD0BWP12T30P140 U12 ( .I(cyc_o), .Z(stb_o) );
  CKBD0BWP12T30P140 U13 ( .I(err_i), .Z(berr) );
  INVD0BWP12T30P140 U14 ( .I(dtack), .ZN(dtack_n) );
  AN2D0BWP12T30P140 U15 ( .A1(ack_i), .A2(dtack_n), .Z(nxt_dtack) );
  BUFFD1BWP12T30P140 U16 ( .I(clk), .Z(clk_o) );
  BUFFD1BWP12T30P140 U17 ( .I(reset_n), .Z(rst_o) );
  ND2D0BWP12T30P140 U18 ( .A1(uwe_n), .A2(lwe_n), .ZN(nxt_we) );
  ND2D0BWP12T30P140 U19 ( .A1(uwe_n), .A2(oe_n), .ZN(nxt_sel[1]) );
  ND2D0BWP12T30P140 U20 ( .A1(lwe_n), .A2(oe_n), .ZN(nxt_sel[0]) );
  NR4D0BWP12T30P140 U21 ( .A1(cs_n), .A2(ack_i), .A3(err_i), .A4(dtack_p1), 
        .ZN(cs) );
  CKBD0BWP12T30P140 U22 ( .I(d[0]), .Z(dat_o[0]) );
  CKBD0BWP12T30P140 U23 ( .I(d[1]), .Z(dat_o[1]) );
  CKBD0BWP12T30P140 U24 ( .I(d[2]), .Z(dat_o[2]) );
  CKBD0BWP12T30P140 U25 ( .I(d[3]), .Z(dat_o[3]) );
  CKBD0BWP12T30P140 U26 ( .I(d[4]), .Z(dat_o[4]) );
  CKBD0BWP12T30P140 U27 ( .I(d[5]), .Z(dat_o[5]) );
  CKBD0BWP12T30P140 U28 ( .I(d[6]), .Z(dat_o[6]) );
  CKBD0BWP12T30P140 U29 ( .I(d[7]), .Z(dat_o[7]) );
  CKBD0BWP12T30P140 U30 ( .I(d[8]), .Z(dat_o[8]) );
  CKBD0BWP12T30P140 U31 ( .I(d[9]), .Z(dat_o[9]) );
  CKBD0BWP12T30P140 U32 ( .I(d[10]), .Z(dat_o[10]) );
  CKBD0BWP12T30P140 U33 ( .I(d[11]), .Z(dat_o[11]) );
  CKBD0BWP12T30P140 U34 ( .I(d[12]), .Z(dat_o[12]) );
  CKBD0BWP12T30P140 U35 ( .I(d[13]), .Z(dat_o[13]) );
  CKBD0BWP12T30P140 U36 ( .I(d[14]), .Z(dat_o[14]) );
  CKBD0BWP12T30P140 U37 ( .I(d[15]), .Z(dat_o[15]) );
endmodule

