/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:54:03 2026
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
  wire   dtack_r, cs_active, N18, n2, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [15:0] dbuf_r;

  DFCNQD1BWP12T30P140 cyc_r_reg ( .D(cs_active), .CP(clk), .CDN(rst_o), .Q(
        cyc_o) );
  DFCNQD1BWP12T30P140 sel_r_reg_1_ ( .D(n49), .CP(clk), .CDN(rst_o), .Q(
        sel_o[1]) );
  DFCNQD1BWP12T30P140 sel_r_reg_0_ ( .D(n48), .CP(clk), .CDN(rst_o), .Q(
        sel_o[0]) );
  DFCNQD1BWP12T30P140 we_r_reg ( .D(n47), .CP(clk), .CDN(rst_o), .Q(we_o) );
  DFCNQD1BWP12T30P140 adr_r_reg_6_ ( .D(n43), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[6]) );
  DFCNQD1BWP12T30P140 adr_r_reg_5_ ( .D(n42), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[5]) );
  DFCNQD1BWP12T30P140 adr_r_reg_4_ ( .D(n41), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[4]) );
  DFCNQD1BWP12T30P140 adr_r_reg_3_ ( .D(n40), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[3]) );
  DFCNQD1BWP12T30P140 adr_r_reg_2_ ( .D(n39), .CP(clk_o), .CDN(rst_o), .Q(
        adr_o[2]) );
  DFCNQD1BWP12T30P140 adr_r_reg_1_ ( .D(n38), .CP(clk_o), .CDN(reset_n), .Q(
        adr_o[1]) );
  DFCNQD1BWP12T30P140 adr_r_reg_9_ ( .D(n46), .CP(clk), .CDN(rst_o), .Q(
        adr_o[9]) );
  DFCNQD1BWP12T30P140 adr_r_reg_8_ ( .D(n45), .CP(clk), .CDN(rst_o), .Q(
        adr_o[8]) );
  DFCNQD1BWP12T30P140 adr_r_reg_7_ ( .D(n44), .CP(clk), .CDN(rst_o), .Q(
        adr_o[7]) );
  DFCNQD1BWP12T30P140 dtack_r_reg ( .D(N18), .CP(clk), .CDN(rst_o), .Q(dtack_r) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_4_ ( .D(dat_i[4]), .CP(clk), .CDN(reset_n), 
        .Q(dbuf_r[4]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_3_ ( .D(dat_i[3]), .CP(clk), .CDN(reset_n), 
        .Q(dbuf_r[3]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_2_ ( .D(dat_i[2]), .CP(clk), .CDN(reset_n), 
        .Q(dbuf_r[2]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_1_ ( .D(dat_i[1]), .CP(clk), .CDN(reset_n), 
        .Q(dbuf_r[1]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_15_ ( .D(dat_i[15]), .CP(clk_o), .CDN(reset_n), .Q(dbuf_r[15]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_14_ ( .D(dat_i[14]), .CP(clk), .CDN(rst_o), 
        .Q(dbuf_r[14]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_13_ ( .D(dat_i[13]), .CP(clk_o), .CDN(reset_n), .Q(dbuf_r[13]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_12_ ( .D(dat_i[12]), .CP(clk), .CDN(reset_n), 
        .Q(dbuf_r[12]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_11_ ( .D(dat_i[11]), .CP(clk_o), .CDN(reset_n), .Q(dbuf_r[11]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_10_ ( .D(dat_i[10]), .CP(clk_o), .CDN(reset_n), .Q(dbuf_r[10]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_9_ ( .D(dat_i[9]), .CP(clk_o), .CDN(reset_n), 
        .Q(dbuf_r[9]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_8_ ( .D(dat_i[8]), .CP(clk_o), .CDN(reset_n), 
        .Q(dbuf_r[8]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_7_ ( .D(dat_i[7]), .CP(clk_o), .CDN(reset_n), 
        .Q(dbuf_r[7]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_6_ ( .D(dat_i[6]), .CP(clk_o), .CDN(reset_n), 
        .Q(dbuf_r[6]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_5_ ( .D(dat_i[5]), .CP(clk_o), .CDN(reset_n), 
        .Q(dbuf_r[5]) );
  DFCNQD1BWP12T30P140 dbuf_r_reg_0_ ( .D(dat_i[0]), .CP(clk_o), .CDN(rst_o), 
        .Q(dbuf_r[0]) );
  BUFTD4BWP12T30P140 d_tri_0_ ( .I(dbuf_r[0]), .OE(n2), .Z(d[0]) );
  BUFTD4BWP12T30P140 d_tri_1_ ( .I(dbuf_r[1]), .OE(n2), .Z(d[1]) );
  BUFTD4BWP12T30P140 d_tri_2_ ( .I(dbuf_r[2]), .OE(n2), .Z(d[2]) );
  BUFTD4BWP12T30P140 d_tri_3_ ( .I(dbuf_r[3]), .OE(n2), .Z(d[3]) );
  BUFTD4BWP12T30P140 d_tri_4_ ( .I(dbuf_r[4]), .OE(n2), .Z(d[4]) );
  BUFTD4BWP12T30P140 d_tri_5_ ( .I(dbuf_r[5]), .OE(n2), .Z(d[5]) );
  BUFTD4BWP12T30P140 d_tri_6_ ( .I(dbuf_r[6]), .OE(n2), .Z(d[6]) );
  BUFTD4BWP12T30P140 d_tri_7_ ( .I(dbuf_r[7]), .OE(n2), .Z(d[7]) );
  BUFTD4BWP12T30P140 d_tri_8_ ( .I(dbuf_r[8]), .OE(n2), .Z(d[8]) );
  BUFTD4BWP12T30P140 d_tri_9_ ( .I(dbuf_r[9]), .OE(n2), .Z(d[9]) );
  BUFTD4BWP12T30P140 d_tri_10_ ( .I(dbuf_r[10]), .OE(n2), .Z(d[10]) );
  BUFTD4BWP12T30P140 d_tri_11_ ( .I(dbuf_r[11]), .OE(n2), .Z(d[11]) );
  BUFTD4BWP12T30P140 d_tri_12_ ( .I(dbuf_r[12]), .OE(n2), .Z(d[12]) );
  BUFTD4BWP12T30P140 d_tri_13_ ( .I(dbuf_r[13]), .OE(n2), .Z(d[13]) );
  BUFTD4BWP12T30P140 d_tri_14_ ( .I(dbuf_r[14]), .OE(n2), .Z(d[14]) );
  BUFTD4BWP12T30P140 d_tri_15_ ( .I(dbuf_r[15]), .OE(n2), .Z(d[15]) );
  NR2D1BWP12T30P140 U24 ( .A1(cs_n), .A2(oe_n), .ZN(n2) );
  CKBD0BWP12T30P140 U25 ( .I(cyc_o), .Z(stb_o) );
  CKBD0BWP12T30P140 U26 ( .I(err_i), .Z(berr) );
  NR4D0BWP12T30P140 U27 ( .A1(cs_n), .A2(err_i), .A3(dtack_r), .A4(ack_i), 
        .ZN(cs_active) );
  INVD0BWP12T30P140 U28 ( .I(sel_o[1]), .ZN(n50) );
  INVD0BWP12T30P140 U29 ( .I(cs_active), .ZN(n52) );
  AOI32D0BWP12T30P140 U30 ( .A1(oe_n), .A2(cs_active), .A3(uwe_n), .B1(n50), 
        .B2(n52), .ZN(n49) );
  INVD0BWP12T30P140 U31 ( .I(sel_o[0]), .ZN(n51) );
  AOI32D0BWP12T30P140 U32 ( .A1(oe_n), .A2(cs_active), .A3(lwe_n), .B1(n51), 
        .B2(n52), .ZN(n48) );
  INVD0BWP12T30P140 U33 ( .I(we_o), .ZN(n53) );
  AOI32D0BWP12T30P140 U34 ( .A1(uwe_n), .A2(cs_active), .A3(lwe_n), .B1(n53), 
        .B2(n52), .ZN(n47) );
  CKMUX2D0BWP12T30P140 U35 ( .I0(adr_o[6]), .I1(a[6]), .S(cs_active), .Z(n43)
         );
  CKMUX2D0BWP12T30P140 U36 ( .I0(adr_o[5]), .I1(a[5]), .S(cs_active), .Z(n42)
         );
  CKMUX2D0BWP12T30P140 U37 ( .I0(adr_o[4]), .I1(a[4]), .S(cs_active), .Z(n41)
         );
  CKMUX2D0BWP12T30P140 U38 ( .I0(adr_o[3]), .I1(a[3]), .S(cs_active), .Z(n40)
         );
  CKMUX2D0BWP12T30P140 U39 ( .I0(adr_o[2]), .I1(a[2]), .S(cs_active), .Z(n39)
         );
  CKMUX2D0BWP12T30P140 U40 ( .I0(adr_o[1]), .I1(a[1]), .S(cs_active), .Z(n38)
         );
  CKMUX2D0BWP12T30P140 U41 ( .I0(adr_o[9]), .I1(a[9]), .S(cs_active), .Z(n46)
         );
  CKMUX2D0BWP12T30P140 U42 ( .I0(adr_o[8]), .I1(a[8]), .S(cs_active), .Z(n45)
         );
  CKMUX2D0BWP12T30P140 U43 ( .I0(adr_o[7]), .I1(a[7]), .S(cs_active), .Z(n44)
         );
  INVD0BWP12T30P140 U44 ( .I(dtack_r), .ZN(dtack_n) );
  AN2D0BWP12T30P140 U45 ( .A1(ack_i), .A2(dtack_n), .Z(N18) );
  BUFFD1BWP12T30P140 U46 ( .I(reset_n), .Z(rst_o) );
  BUFFD1BWP12T30P140 U47 ( .I(clk), .Z(clk_o) );
  CKBD0BWP12T30P140 U48 ( .I(d[0]), .Z(dat_o[0]) );
  CKBD0BWP12T30P140 U49 ( .I(d[1]), .Z(dat_o[1]) );
  CKBD0BWP12T30P140 U50 ( .I(d[2]), .Z(dat_o[2]) );
  CKBD0BWP12T30P140 U51 ( .I(d[3]), .Z(dat_o[3]) );
  CKBD0BWP12T30P140 U52 ( .I(d[4]), .Z(dat_o[4]) );
  CKBD0BWP12T30P140 U53 ( .I(d[5]), .Z(dat_o[5]) );
  CKBD0BWP12T30P140 U54 ( .I(d[6]), .Z(dat_o[6]) );
  CKBD0BWP12T30P140 U55 ( .I(d[7]), .Z(dat_o[7]) );
  CKBD0BWP12T30P140 U56 ( .I(d[8]), .Z(dat_o[8]) );
  CKBD0BWP12T30P140 U57 ( .I(d[9]), .Z(dat_o[9]) );
  CKBD0BWP12T30P140 U58 ( .I(d[10]), .Z(dat_o[10]) );
  CKBD0BWP12T30P140 U59 ( .I(d[11]), .Z(dat_o[11]) );
  CKBD0BWP12T30P140 U60 ( .I(d[12]), .Z(dat_o[12]) );
  CKBD0BWP12T30P140 U61 ( .I(d[13]), .Z(dat_o[13]) );
  CKBD0BWP12T30P140 U62 ( .I(d[14]), .Z(dat_o[14]) );
  CKBD0BWP12T30P140 U63 ( .I(d[15]), .Z(dat_o[15]) );
endmodule

