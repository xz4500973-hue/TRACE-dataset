/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:17:39 2026
/////////////////////////////////////////////////////////////


module tiny_spi ( rst_i, clk_i, stb_i, we_i, cyc_i, dat_o, int_o, dat_i, adr_i, 
        ack_o, MOSI, SCLK, MISO );
  output [31:0] dat_o;
  input [31:0] dat_i;
  input [2:0] adr_i;
  input rst_i, clk_i, stb_i, we_i, cyc_i, MISO;
  output int_o, ack_o, MOSI, SCLK;
  wire   spi_seq_1_, bba, txren, txeen, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229;
  wire   [7:1] sr8_sf;
  wire   [7:0] bb8;
  wire   [7:0] cc;
  wire   [2:0] bc;
  wire   [7:0] ccr;

  DFQD2BWP12T30P140 ccr_reg_0_ ( .D(n94), .CP(clk_i), .Q(ccr[0]) );
  DFQD2BWP12T30P140 cc_reg_4_ ( .D(n108), .CP(clk_i), .Q(cc[4]) );
  DFQD2BWP12T30P140 cc_reg_3_ ( .D(n107), .CP(clk_i), .Q(cc[3]) );
  DFQD2BWP12T30P140 bc_reg_1_ ( .D(n92), .CP(clk_i), .Q(bc[1]) );
  DFCNQD1BWP12T30P140 spi_seq_reg_1_ ( .D(n113), .CP(clk_i), .CDN(n73), .Q(
        spi_seq_1_) );
  DFQD2BWP12T30P140 cc_reg_2_ ( .D(n106), .CP(clk_i), .Q(cc[2]) );
  DFQD2BWP12T30P140 txeen_reg ( .D(n103), .CP(clk_i), .Q(txeen) );
  DFQD2BWP12T30P140 bc_reg_0_ ( .D(n91), .CP(clk_i), .Q(bc[0]) );
  DFQD2BWP12T30P140 bb8_reg_0_ ( .D(n89), .CP(clk_i), .Q(bb8[0]) );
  DFQD2BWP12T30P140 bb8_reg_1_ ( .D(n80), .CP(clk_i), .Q(bb8[1]) );
  DFCNQD1BWP12T30P140 bba_reg ( .D(n93), .CP(clk_i), .CDN(n73), .Q(bba) );
  DFCNQD1BWP12T30P140 spi_seq_reg_0_ ( .D(n112), .CP(clk_i), .CDN(n73), .Q(
        SCLK) );
  DFQD2BWP12T30P140 cc_reg_1_ ( .D(n105), .CP(clk_i), .Q(cc[1]) );
  DFQD2BWP12T30P140 ccr_reg_6_ ( .D(n100), .CP(n228), .Q(ccr[6]) );
  DFQD2BWP12T30P140 ccr_reg_4_ ( .D(n98), .CP(n228), .Q(ccr[4]) );
  DFQD2BWP12T30P140 ccr_reg_3_ ( .D(n97), .CP(n228), .Q(ccr[3]) );
  DFQD2BWP12T30P140 ccr_reg_2_ ( .D(n96), .CP(n228), .Q(ccr[2]) );
  DFQD2BWP12T30P140 ccr_reg_1_ ( .D(n95), .CP(n228), .Q(ccr[1]) );
  DFQD2BWP12T30P140 cc_reg_0_ ( .D(n104), .CP(clk_i), .Q(cc[0]) );
  DFQD2BWP12T30P140 sr8_reg_0_ ( .D(n88), .CP(clk_i), .Q(sr8_sf[1]) );
  DFQD2BWP12T30P140 sr8_reg_1_ ( .D(n87), .CP(clk_i), .Q(sr8_sf[2]) );
  DFQD2BWP12T30P140 cc_reg_6_ ( .D(n110), .CP(n228), .Q(cc[6]) );
  DFQD2BWP12T30P140 ccr_reg_7_ ( .D(n101), .CP(n228), .Q(ccr[7]) );
  DFQD2BWP12T30P140 txren_reg ( .D(n102), .CP(n228), .Q(txren) );
  DFQD2BWP12T30P140 cc_reg_5_ ( .D(n109), .CP(n228), .Q(cc[5]) );
  DFQD2BWP12T30P140 cc_reg_7_ ( .D(n111), .CP(n228), .Q(cc[7]) );
  DFQD2BWP12T30P140 bc_reg_2_ ( .D(n90), .CP(n228), .Q(bc[2]) );
  DFQD2BWP12T30P140 bb8_reg_2_ ( .D(n79), .CP(n229), .Q(bb8[2]) );
  DFQD2BWP12T30P140 bb8_reg_4_ ( .D(n77), .CP(n229), .Q(bb8[4]) );
  DFQD2BWP12T30P140 bb8_reg_5_ ( .D(n76), .CP(n229), .Q(bb8[5]) );
  DFQD2BWP12T30P140 bb8_reg_6_ ( .D(n75), .CP(n229), .Q(bb8[6]) );
  DFQD2BWP12T30P140 bb8_reg_7_ ( .D(n74), .CP(n229), .Q(bb8[7]) );
  DFQD2BWP12T30P140 sr8_reg_7_ ( .D(n81), .CP(n229), .Q(MOSI) );
  DFQD2BWP12T30P140 sr8_reg_2_ ( .D(n86), .CP(n229), .Q(sr8_sf[3]) );
  DFQD2BWP12T30P140 sr8_reg_3_ ( .D(n85), .CP(n229), .Q(sr8_sf[4]) );
  DFQD2BWP12T30P140 sr8_reg_4_ ( .D(n84), .CP(n229), .Q(sr8_sf[5]) );
  DFQD2BWP12T30P140 sr8_reg_5_ ( .D(n83), .CP(n229), .Q(sr8_sf[6]) );
  DFQD1BWP12T30P140 ccr_reg_5_ ( .D(n99), .CP(n228), .Q(ccr[5]) );
  DFQD1BWP12T30P140 bb8_reg_3_ ( .D(n78), .CP(n229), .Q(bb8[3]) );
  DFQD1BWP12T30P140 sr8_reg_6_ ( .D(n82), .CP(n229), .Q(sr8_sf[7]) );
  TIEHBWP12T30P140 U127 ( .Z(n138) );
  INVD0BWP12T30P140 U128 ( .I(n138), .ZN(dat_o[8]) );
  INVD0BWP12T30P140 U129 ( .I(n138), .ZN(dat_o[9]) );
  INVD0BWP12T30P140 U130 ( .I(n138), .ZN(dat_o[10]) );
  INVD0BWP12T30P140 U131 ( .I(n138), .ZN(dat_o[11]) );
  INVD0BWP12T30P140 U132 ( .I(n138), .ZN(dat_o[12]) );
  INVD0BWP12T30P140 U133 ( .I(n138), .ZN(dat_o[13]) );
  INVD0BWP12T30P140 U134 ( .I(n138), .ZN(dat_o[14]) );
  INVD0BWP12T30P140 U135 ( .I(n138), .ZN(dat_o[15]) );
  INVD0BWP12T30P140 U136 ( .I(n138), .ZN(dat_o[16]) );
  INVD0BWP12T30P140 U137 ( .I(n138), .ZN(dat_o[17]) );
  INVD0BWP12T30P140 U138 ( .I(n138), .ZN(dat_o[18]) );
  INVD0BWP12T30P140 U139 ( .I(n138), .ZN(dat_o[19]) );
  INVD0BWP12T30P140 U140 ( .I(n138), .ZN(dat_o[20]) );
  INVD0BWP12T30P140 U141 ( .I(n138), .ZN(dat_o[21]) );
  INVD0BWP12T30P140 U142 ( .I(n138), .ZN(dat_o[22]) );
  INVD0BWP12T30P140 U143 ( .I(n138), .ZN(dat_o[23]) );
  INVD0BWP12T30P140 U144 ( .I(n138), .ZN(dat_o[24]) );
  INVD0BWP12T30P140 U145 ( .I(n138), .ZN(dat_o[25]) );
  INVD0BWP12T30P140 U146 ( .I(n138), .ZN(dat_o[26]) );
  INVD0BWP12T30P140 U147 ( .I(n138), .ZN(dat_o[27]) );
  INVD0BWP12T30P140 U148 ( .I(n138), .ZN(dat_o[28]) );
  INVD0BWP12T30P140 U149 ( .I(n138), .ZN(dat_o[29]) );
  INVD0BWP12T30P140 U150 ( .I(n138), .ZN(dat_o[30]) );
  INVD0BWP12T30P140 U151 ( .I(n138), .ZN(dat_o[31]) );
  AN2D0BWP12T30P140 U152 ( .A1(cyc_i), .A2(stb_i), .Z(ack_o) );
  INVD0BWP12T30P140 U153 ( .I(ccr[0]), .ZN(n177) );
  INVD0BWP12T30P140 U154 ( .I(adr_i[2]), .ZN(n150) );
  ND2D0BWP12T30P140 U155 ( .A1(ack_o), .A2(we_i), .ZN(n153) );
  OR4D0BWP12T30P140 U156 ( .A1(adr_i[0]), .A2(adr_i[1]), .A3(n150), .A4(n153), 
        .Z(n179) );
  MAOI22D0BWP12T30P140 U157 ( .A1(n177), .A2(n179), .B1(n179), .B2(dat_i[0]), 
        .ZN(n94) );
  NR2D0BWP12T30P140 U158 ( .A1(SCLK), .A2(spi_seq_1_), .ZN(n182) );
  INVD0BWP12T30P140 U159 ( .I(n182), .ZN(n187) );
  INVD0BWP12T30P140 U160 ( .I(bba), .ZN(n181) );
  NR2D0BWP12T30P140 U161 ( .A1(n187), .A2(n181), .ZN(n160) );
  INVD0BWP12T30P140 U162 ( .I(n160), .ZN(n202) );
  NR2D0BWP12T30P140 U163 ( .A1(bc[0]), .A2(bc[1]), .ZN(n143) );
  OR3D0BWP12T30P140 U164 ( .A1(cc[2]), .A2(cc[1]), .A3(cc[0]), .Z(n149) );
  OR2D0BWP12T30P140 U165 ( .A1(cc[3]), .A2(n149), .Z(n142) );
  NR2D0BWP12T30P140 U166 ( .A1(cc[4]), .A2(n142), .ZN(n163) );
  IND2D1BWP12T30P140 U167 ( .A1(cc[5]), .B1(n163), .ZN(n170) );
  NR2D0BWP12T30P140 U168 ( .A1(cc[6]), .A2(n170), .ZN(n169) );
  INR2D1BWP12T30P140 U169 ( .A1(n169), .B1(cc[7]), .ZN(n156) );
  ND2D0BWP12T30P140 U170 ( .A1(SCLK), .A2(n156), .ZN(n152) );
  INVD0BWP12T30P140 U171 ( .I(n152), .ZN(n145) );
  ND2D0BWP12T30P140 U172 ( .A1(n143), .A2(n145), .ZN(n139) );
  NR2D0BWP12T30P140 U173 ( .A1(bc[2]), .A2(n139), .ZN(n159) );
  ND2D0BWP12T30P140 U174 ( .A1(bba), .A2(n159), .ZN(n200) );
  ND2D0BWP12T30P140 U175 ( .A1(n202), .A2(n200), .ZN(n201) );
  NR2D0BWP12T30P140 U176 ( .A1(n160), .A2(n145), .ZN(n175) );
  NR2D0BWP12T30P140 U177 ( .A1(n152), .A2(n201), .ZN(n174) );
  AO222D0BWP12T30P140 U178 ( .A1(n201), .A2(bb8[6]), .B1(n175), .B2(sr8_sf[7]), 
        .C1(sr8_sf[6]), .C2(n174), .Z(n82) );
  NR2D0BWP12T30P140 U179 ( .A1(n182), .A2(n156), .ZN(n178) );
  AOI21D0BWP12T30P140 U180 ( .A1(cc[4]), .A2(n142), .B(n163), .ZN(n140) );
  INVD0BWP12T30P140 U181 ( .I(ccr[4]), .ZN(n168) );
  INVD0BWP12T30P140 U182 ( .I(n178), .ZN(n176) );
  AOI22D0BWP12T30P140 U183 ( .A1(n178), .A2(n140), .B1(n168), .B2(n176), .ZN(
        n108) );
  AO222D0BWP12T30P140 U184 ( .A1(n201), .A2(bb8[5]), .B1(n175), .B2(sr8_sf[6]), 
        .C1(sr8_sf[5]), .C2(n174), .Z(n83) );
  ND2D0BWP12T30P140 U185 ( .A1(cc[3]), .A2(n149), .ZN(n141) );
  INVD0BWP12T30P140 U186 ( .I(ccr[3]), .ZN(n180) );
  AOI32D0BWP12T30P140 U187 ( .A1(n142), .A2(n178), .A3(n141), .B1(n180), .B2(
        n176), .ZN(n107) );
  AO222D0BWP12T30P140 U188 ( .A1(n201), .A2(bb8[4]), .B1(n175), .B2(sr8_sf[5]), 
        .C1(sr8_sf[4]), .C2(n174), .Z(n84) );
  NR2D0BWP12T30P140 U189 ( .A1(bc[0]), .A2(n175), .ZN(n151) );
  INVD0BWP12T30P140 U190 ( .I(bc[1]), .ZN(n144) );
  INVD0BWP12T30P140 U191 ( .I(n143), .ZN(n146) );
  OR2D0BWP12T30P140 U192 ( .A1(n175), .A2(n146), .Z(n161) );
  OAI211D0BWP12T30P140 U193 ( .A1(n151), .A2(n144), .B(n202), .C(n161), .ZN(
        n92) );
  AO222D0BWP12T30P140 U194 ( .A1(n201), .A2(bb8[3]), .B1(n175), .B2(sr8_sf[4]), 
        .C1(sr8_sf[3]), .C2(n174), .Z(n85) );
  IND2D1BWP12T30P140 U195 ( .A1(SCLK), .B1(spi_seq_1_), .ZN(n155) );
  OAI31D0BWP12T30P140 U196 ( .A1(bba), .A2(bc[2]), .A3(n146), .B(n145), .ZN(
        n147) );
  OAI211D0BWP12T30P140 U197 ( .A1(n156), .A2(n155), .B(n202), .C(n147), .ZN(
        n113) );
  AO222D0BWP12T30P140 U198 ( .A1(n201), .A2(bb8[2]), .B1(n175), .B2(sr8_sf[3]), 
        .C1(sr8_sf[2]), .C2(n174), .Z(n86) );
  OAI21D0BWP12T30P140 U199 ( .A1(cc[1]), .A2(cc[0]), .B(cc[2]), .ZN(n148) );
  INVD0BWP12T30P140 U200 ( .I(ccr[2]), .ZN(n173) );
  AOI32D0BWP12T30P140 U201 ( .A1(n149), .A2(n178), .A3(n148), .B1(n173), .B2(
        n176), .ZN(n106) );
  AO222D0BWP12T30P140 U202 ( .A1(n201), .A2(bb8[7]), .B1(n175), .B2(MOSI), 
        .C1(sr8_sf[7]), .C2(n174), .Z(n81) );
  INVD0BWP12T30P140 U203 ( .I(adr_i[0]), .ZN(n183) );
  ND3D0BWP12T30P140 U204 ( .A1(n183), .A2(n150), .A3(adr_i[1]), .ZN(n225) );
  NR2D0BWP12T30P140 U205 ( .A1(n153), .A2(n225), .ZN(n166) );
  CKMUX2D0BWP12T30P140 U206 ( .I0(txeen), .I1(dat_i[0]), .S(n166), .Z(n103) );
  AO21D0BWP12T30P140 U207 ( .A1(bc[0]), .A2(n152), .B(n151), .Z(n91) );
  NR2D0BWP12T30P140 U208 ( .A1(adr_i[2]), .A2(adr_i[1]), .ZN(n184) );
  ND2D0BWP12T30P140 U209 ( .A1(n184), .A2(adr_i[0]), .ZN(n224) );
  NR2D0BWP12T30P140 U210 ( .A1(n224), .A2(n153), .ZN(n218) );
  INVD0BWP12T30P140 U211 ( .I(n218), .ZN(n154) );
  OAI21D0BWP12T30P140 U212 ( .A1(n181), .A2(n201), .B(n154), .ZN(n93) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n156), .A2(n155), .B1(SCLK), .B2(n156), .ZN(
        n112) );
  NR2D0BWP12T30P140 U214 ( .A1(cc[1]), .A2(cc[0]), .ZN(n157) );
  AOI21D0BWP12T30P140 U215 ( .A1(cc[0]), .A2(cc[1]), .B(n157), .ZN(n158) );
  INVD0BWP12T30P140 U216 ( .I(ccr[1]), .ZN(n167) );
  AOI22D0BWP12T30P140 U217 ( .A1(n178), .A2(n158), .B1(n167), .B2(n176), .ZN(
        n105) );
  AO211D0BWP12T30P140 U218 ( .A1(bc[2]), .A2(n161), .B(n160), .C(n159), .Z(n90) );
  INVD0BWP12T30P140 U219 ( .I(ccr[6]), .ZN(n171) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n171), .A2(n179), .B1(n179), .B2(dat_i[6]), 
        .ZN(n100) );
  NR2D0BWP12T30P140 U221 ( .A1(n182), .A2(n169), .ZN(n162) );
  AO22D0BWP12T30P140 U222 ( .A1(ccr[7]), .A2(n176), .B1(cc[7]), .B2(n162), .Z(
        n111) );
  AO222D0BWP12T30P140 U223 ( .A1(n201), .A2(bb8[1]), .B1(sr8_sf[1]), .B2(n174), 
        .C1(n175), .C2(sr8_sf[2]), .Z(n87) );
  IND2D1BWP12T30P140 U224 ( .A1(n163), .B1(cc[5]), .ZN(n164) );
  INVD0BWP12T30P140 U225 ( .I(ccr[5]), .ZN(n165) );
  AOI32D0BWP12T30P140 U226 ( .A1(n170), .A2(n178), .A3(n164), .B1(n165), .B2(
        n176), .ZN(n109) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n165), .A2(n179), .B1(n179), .B2(dat_i[5]), 
        .ZN(n99) );
  CKMUX2D0BWP12T30P140 U228 ( .I0(txren), .I1(dat_i[1]), .S(n166), .Z(n102) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n167), .A2(n179), .B1(n179), .B2(dat_i[1]), 
        .ZN(n95) );
  CKMUX2D0BWP12T30P140 U230 ( .I0(dat_i[7]), .I1(ccr[7]), .S(n179), .Z(n101)
         );
  MAOI22D0BWP12T30P140 U231 ( .A1(n168), .A2(n179), .B1(n179), .B2(dat_i[4]), 
        .ZN(n98) );
  AOI21D0BWP12T30P140 U232 ( .A1(cc[6]), .A2(n170), .B(n169), .ZN(n172) );
  AOI22D0BWP12T30P140 U233 ( .A1(n178), .A2(n172), .B1(n171), .B2(n176), .ZN(
        n110) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n173), .A2(n179), .B1(n179), .B2(dat_i[2]), 
        .ZN(n96) );
  AO222D0BWP12T30P140 U235 ( .A1(n201), .A2(bb8[0]), .B1(sr8_sf[1]), .B2(n175), 
        .C1(n174), .C2(MISO), .Z(n88) );
  AOI22D0BWP12T30P140 U236 ( .A1(n178), .A2(cc[0]), .B1(n177), .B2(n176), .ZN(
        n104) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n180), .A2(n179), .B1(n179), .B2(dat_i[3]), 
        .ZN(n97) );
  CKBD0BWP12T30P140 U238 ( .I(clk_i), .Z(n228) );
  CKBD0BWP12T30P140 U239 ( .I(clk_i), .Z(n229) );
  INVD0BWP12T30P140 U240 ( .I(rst_i), .ZN(n73) );
  AO22D0BWP12T30P140 U241 ( .A1(n182), .A2(txeen), .B1(txren), .B2(n181), .Z(
        int_o) );
  INVD0BWP12T30P140 U242 ( .I(bb8[0]), .ZN(n186) );
  INVD0BWP12T30P140 U243 ( .I(sr8_sf[1]), .ZN(n185) );
  ND2D0BWP12T30P140 U244 ( .A1(n184), .A2(n183), .ZN(n227) );
  OAI222D0BWP12T30P140 U245 ( .A1(n225), .A2(n187), .B1(n186), .B2(n224), .C1(
        n185), .C2(n227), .ZN(dat_o[0]) );
  INVD0BWP12T30P140 U246 ( .I(bb8[2]), .ZN(n189) );
  INVD0BWP12T30P140 U247 ( .I(sr8_sf[3]), .ZN(n188) );
  OAI22D0BWP12T30P140 U248 ( .A1(n224), .A2(n189), .B1(n188), .B2(n227), .ZN(
        dat_o[2]) );
  INVD0BWP12T30P140 U249 ( .I(bb8[3]), .ZN(n191) );
  INVD0BWP12T30P140 U250 ( .I(sr8_sf[4]), .ZN(n190) );
  OAI22D0BWP12T30P140 U251 ( .A1(n224), .A2(n191), .B1(n190), .B2(n227), .ZN(
        dat_o[3]) );
  INVD0BWP12T30P140 U252 ( .I(bb8[4]), .ZN(n193) );
  INVD0BWP12T30P140 U253 ( .I(sr8_sf[5]), .ZN(n192) );
  OAI22D0BWP12T30P140 U254 ( .A1(n224), .A2(n193), .B1(n192), .B2(n227), .ZN(
        dat_o[4]) );
  INVD0BWP12T30P140 U255 ( .I(bb8[5]), .ZN(n195) );
  INVD0BWP12T30P140 U256 ( .I(sr8_sf[6]), .ZN(n194) );
  OAI22D0BWP12T30P140 U257 ( .A1(n224), .A2(n195), .B1(n194), .B2(n227), .ZN(
        dat_o[5]) );
  INVD0BWP12T30P140 U258 ( .I(bb8[6]), .ZN(n197) );
  INVD0BWP12T30P140 U259 ( .I(sr8_sf[7]), .ZN(n196) );
  OAI22D0BWP12T30P140 U260 ( .A1(n224), .A2(n197), .B1(n196), .B2(n227), .ZN(
        dat_o[6]) );
  INVD0BWP12T30P140 U261 ( .I(bb8[7]), .ZN(n199) );
  INVD0BWP12T30P140 U262 ( .I(MOSI), .ZN(n198) );
  OAI22D0BWP12T30P140 U263 ( .A1(n224), .A2(n199), .B1(n198), .B2(n227), .ZN(
        dat_o[7]) );
  NR2D0BWP12T30P140 U264 ( .A1(n218), .A2(n200), .ZN(n217) );
  AOI22D0BWP12T30P140 U265 ( .A1(n218), .A2(dat_i[7]), .B1(n217), .B2(
        sr8_sf[7]), .ZN(n204) );
  NR2D0BWP12T30P140 U266 ( .A1(n218), .A2(n201), .ZN(n220) );
  NR2D0BWP12T30P140 U267 ( .A1(n218), .A2(n202), .ZN(n219) );
  AOI22D0BWP12T30P140 U268 ( .A1(n220), .A2(bb8[7]), .B1(n219), .B2(MOSI), 
        .ZN(n203) );
  ND2D0BWP12T30P140 U269 ( .A1(n204), .A2(n203), .ZN(n74) );
  AOI22D0BWP12T30P140 U270 ( .A1(n218), .A2(dat_i[6]), .B1(n217), .B2(
        sr8_sf[6]), .ZN(n206) );
  AOI22D0BWP12T30P140 U271 ( .A1(n220), .A2(bb8[6]), .B1(n219), .B2(sr8_sf[7]), 
        .ZN(n205) );
  ND2D0BWP12T30P140 U272 ( .A1(n206), .A2(n205), .ZN(n75) );
  AOI22D0BWP12T30P140 U273 ( .A1(n218), .A2(dat_i[0]), .B1(n217), .B2(MISO), 
        .ZN(n208) );
  AOI22D0BWP12T30P140 U274 ( .A1(n220), .A2(bb8[0]), .B1(n219), .B2(sr8_sf[1]), 
        .ZN(n207) );
  ND2D0BWP12T30P140 U275 ( .A1(n208), .A2(n207), .ZN(n89) );
  AOI22D0BWP12T30P140 U276 ( .A1(n218), .A2(dat_i[5]), .B1(n217), .B2(
        sr8_sf[5]), .ZN(n210) );
  AOI22D0BWP12T30P140 U277 ( .A1(n220), .A2(bb8[5]), .B1(n219), .B2(sr8_sf[6]), 
        .ZN(n209) );
  ND2D0BWP12T30P140 U278 ( .A1(n210), .A2(n209), .ZN(n76) );
  AOI22D0BWP12T30P140 U279 ( .A1(n218), .A2(dat_i[1]), .B1(sr8_sf[1]), .B2(
        n217), .ZN(n212) );
  AOI22D0BWP12T30P140 U280 ( .A1(n220), .A2(bb8[1]), .B1(n219), .B2(sr8_sf[2]), 
        .ZN(n211) );
  ND2D0BWP12T30P140 U281 ( .A1(n212), .A2(n211), .ZN(n80) );
  AOI22D0BWP12T30P140 U282 ( .A1(n218), .A2(dat_i[4]), .B1(n217), .B2(
        sr8_sf[4]), .ZN(n214) );
  AOI22D0BWP12T30P140 U283 ( .A1(n220), .A2(bb8[4]), .B1(n219), .B2(sr8_sf[5]), 
        .ZN(n213) );
  ND2D0BWP12T30P140 U284 ( .A1(n214), .A2(n213), .ZN(n77) );
  AOI22D0BWP12T30P140 U285 ( .A1(n218), .A2(dat_i[3]), .B1(n217), .B2(
        sr8_sf[3]), .ZN(n216) );
  AOI22D0BWP12T30P140 U286 ( .A1(n220), .A2(bb8[3]), .B1(n219), .B2(sr8_sf[4]), 
        .ZN(n215) );
  ND2D0BWP12T30P140 U287 ( .A1(n216), .A2(n215), .ZN(n78) );
  AOI22D0BWP12T30P140 U288 ( .A1(n218), .A2(dat_i[2]), .B1(n217), .B2(
        sr8_sf[2]), .ZN(n222) );
  AOI22D0BWP12T30P140 U289 ( .A1(n220), .A2(bb8[2]), .B1(n219), .B2(sr8_sf[3]), 
        .ZN(n221) );
  ND2D0BWP12T30P140 U290 ( .A1(n222), .A2(n221), .ZN(n79) );
  INVD0BWP12T30P140 U291 ( .I(sr8_sf[2]), .ZN(n226) );
  INVD0BWP12T30P140 U292 ( .I(bb8[1]), .ZN(n223) );
  OAI222D0BWP12T30P140 U293 ( .A1(n227), .A2(n226), .B1(n225), .B2(bba), .C1(
        n224), .C2(n223), .ZN(dat_o[1]) );
endmodule

