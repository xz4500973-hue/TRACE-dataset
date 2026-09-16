/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:50:05 2026
/////////////////////////////////////////////////////////////


module wb_mcs51 ( nrst_i, clk_i, mcs51_ale, mcs51_rd, mcs51_wr, mcs51_ad_inout, 
        wbm_adr_o, wbm_dat_i, wbm_dat_o, wbm_sel_o, wbm_cyc_o, wbm_stb_o, 
        wbm_we_o, wbm_ack_i, wbm_rty_i, wbm_err_i );
  inout [7:0] mcs51_ad_inout;
  output [15:0] wbm_adr_o;
  input [7:0] wbm_dat_i;
  output [7:0] wbm_dat_o;
  input nrst_i, clk_i, mcs51_ale, mcs51_rd, mcs51_wr, wbm_ack_i, wbm_rty_i,
         wbm_err_i;
  output wbm_sel_o, wbm_cyc_o, wbm_stb_o, wbm_we_o;
  wire   n2, n25, n26;

  DFNCND1BWP12T30P140 mcs51_addr_reg_7_ ( .D(mcs51_ad_inout[7]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[7]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_6_ ( .D(mcs51_ad_inout[6]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[6]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_5_ ( .D(mcs51_ad_inout[5]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[5]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_4_ ( .D(mcs51_ad_inout[4]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[4]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_3_ ( .D(mcs51_ad_inout[3]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[3]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_2_ ( .D(mcs51_ad_inout[2]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[2]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_1_ ( .D(mcs51_ad_inout[1]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[1]) );
  DFNCND1BWP12T30P140 mcs51_addr_reg_0_ ( .D(mcs51_ad_inout[0]), .CPN(
        mcs51_ale), .CDN(nrst_i), .Q(wbm_adr_o[0]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_0_ ( .I(wbm_dat_i[0]), .OE(n2), .Z(
        mcs51_ad_inout[0]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_1_ ( .I(wbm_dat_i[1]), .OE(n2), .Z(
        mcs51_ad_inout[1]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_2_ ( .I(wbm_dat_i[2]), .OE(n2), .Z(
        mcs51_ad_inout[2]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_3_ ( .I(wbm_dat_i[3]), .OE(n2), .Z(
        mcs51_ad_inout[3]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_4_ ( .I(wbm_dat_i[4]), .OE(n2), .Z(
        mcs51_ad_inout[4]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_5_ ( .I(wbm_dat_i[5]), .OE(n2), .Z(
        mcs51_ad_inout[5]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_6_ ( .I(wbm_dat_i[6]), .OE(n2), .Z(
        mcs51_ad_inout[6]) );
  BUFTD4BWP12T30P140 mcs51_ad_inout_tri_7_ ( .I(wbm_dat_i[7]), .OE(n2), .Z(
        mcs51_ad_inout[7]) );
  TIEHBWP12T30P140 U7 ( .Z(n25) );
  INVD0BWP12T30P140 U8 ( .I(n25), .ZN(wbm_adr_o[8]) );
  INVD0BWP12T30P140 U9 ( .I(n25), .ZN(wbm_adr_o[9]) );
  INVD0BWP12T30P140 U10 ( .I(n25), .ZN(wbm_adr_o[10]) );
  INVD0BWP12T30P140 U11 ( .I(n25), .ZN(wbm_adr_o[11]) );
  INVD0BWP12T30P140 U12 ( .I(n25), .ZN(wbm_adr_o[12]) );
  INVD0BWP12T30P140 U13 ( .I(n25), .ZN(wbm_adr_o[13]) );
  INVD0BWP12T30P140 U14 ( .I(n25), .ZN(wbm_adr_o[14]) );
  INVD0BWP12T30P140 U15 ( .I(n25), .ZN(wbm_adr_o[15]) );
  CKND2D1BWP12T30P140 U16 ( .A1(mcs51_rd), .A2(mcs51_wr), .ZN(wbm_cyc_o) );
  INVD0BWP12T30P140 U17 ( .I(wbm_cyc_o), .ZN(n26) );
  INVD0BWP12T30P140 U18 ( .I(n26), .ZN(wbm_sel_o) );
  INVD0BWP12T30P140 U19 ( .I(n26), .ZN(wbm_stb_o) );
  INVD0BWP12T30P140 U20 ( .I(mcs51_rd), .ZN(n2) );
  INVD0BWP12T30P140 U21 ( .I(mcs51_wr), .ZN(wbm_we_o) );
  CKBD0BWP12T30P140 U22 ( .I(mcs51_ad_inout[0]), .Z(wbm_dat_o[0]) );
  CKBD0BWP12T30P140 U23 ( .I(mcs51_ad_inout[1]), .Z(wbm_dat_o[1]) );
  CKBD0BWP12T30P140 U24 ( .I(mcs51_ad_inout[2]), .Z(wbm_dat_o[2]) );
  CKBD0BWP12T30P140 U25 ( .I(mcs51_ad_inout[3]), .Z(wbm_dat_o[3]) );
  CKBD0BWP12T30P140 U26 ( .I(mcs51_ad_inout[4]), .Z(wbm_dat_o[4]) );
  CKBD0BWP12T30P140 U27 ( .I(mcs51_ad_inout[5]), .Z(wbm_dat_o[5]) );
  CKBD0BWP12T30P140 U28 ( .I(mcs51_ad_inout[6]), .Z(wbm_dat_o[6]) );
  CKBD0BWP12T30P140 U29 ( .I(mcs51_ad_inout[7]), .Z(wbm_dat_o[7]) );
endmodule

