/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:51:51 2026
/////////////////////////////////////////////////////////////


module tiny_spi ( rst_i, clk_i, stb_i, we_i, dat_o, dat_i, int_o, adr_i, cyc_i, 
        ack_o, MOSI, SCLK, MISO );
  output [31:0] dat_o;
  input [31:0] dat_i;
  input [2:0] adr_i;
  input rst_i, clk_i, stb_i, we_i, cyc_i, MISO;
  output int_o, ack_o, MOSI, SCLK;
  wire   bba, txren, txeen, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221;
  wire   [7:1] sr8_sf;
  wire   [7:0] bb8;
  wire   [1:0] spi_seq;
  wire   [1:0] spi_seq_next;
  wire   [7:0] cc;
  wire   [2:0] bc;
  wire   [7:0] ccr;

  DFQD2BWP12T30P140 cc_reg_4_ ( .D(n97), .CP(clk_i), .Q(cc[4]) );
  DFQD2BWP12T30P140 cc_reg_3_ ( .D(n96), .CP(clk_i), .Q(cc[3]) );
  DFQD2BWP12T30P140 bc_reg_1_ ( .D(n79), .CP(clk_i), .Q(bc[1]) );
  DFQD2BWP12T30P140 cc_reg_2_ ( .D(n95), .CP(clk_i), .Q(cc[2]) );
  DFQD2BWP12T30P140 txren_reg ( .D(n81), .CP(clk_i), .Q(txren) );
  DFQD2BWP12T30P140 ccr_reg_7_ ( .D(n90), .CP(clk_i), .Q(ccr[7]) );
  DFCNQD1BWP12T30P140 spi_seq_reg_0_ ( .D(spi_seq_next[0]), .CP(clk_i), .CDN(
        n77), .Q(spi_seq[0]) );
  DFQD2BWP12T30P140 bc_reg_0_ ( .D(n80), .CP(clk_i), .Q(bc[0]) );
  DFQD2BWP12T30P140 bb8_reg_0_ ( .D(n110), .CP(clk_i), .Q(bb8[0]) );
  DFQD2BWP12T30P140 bb8_reg_1_ ( .D(n111), .CP(clk_i), .Q(bb8[1]) );
  DFCNQD1BWP12T30P140 bba_reg ( .D(n118), .CP(clk_i), .CDN(n77), .Q(bba) );
  DFQD2BWP12T30P140 cc_reg_1_ ( .D(n94), .CP(clk_i), .Q(cc[1]) );
  DFQD2BWP12T30P140 ccr_reg_6_ ( .D(n89), .CP(n220), .Q(ccr[6]) );
  DFQD2BWP12T30P140 ccr_reg_5_ ( .D(n88), .CP(n220), .Q(ccr[5]) );
  DFQD2BWP12T30P140 ccr_reg_3_ ( .D(n86), .CP(n220), .Q(ccr[3]) );
  DFQD2BWP12T30P140 ccr_reg_2_ ( .D(n85), .CP(n220), .Q(ccr[2]) );
  DFQD2BWP12T30P140 ccr_reg_1_ ( .D(n84), .CP(n220), .Q(ccr[1]) );
  DFQD2BWP12T30P140 ccr_reg_0_ ( .D(n83), .CP(n220), .Q(ccr[0]) );
  DFCNQD1BWP12T30P140 spi_seq_reg_1_ ( .D(spi_seq_next[1]), .CP(clk_i), .CDN(
        n77), .Q(spi_seq[1]) );
  DFQD2BWP12T30P140 cc_reg_0_ ( .D(n93), .CP(clk_i), .Q(cc[0]) );
  DFQD2BWP12T30P140 sr8_reg_0_ ( .D(n102), .CP(clk_i), .Q(sr8_sf[1]) );
  DFQD2BWP12T30P140 sr8_reg_1_ ( .D(n103), .CP(clk_i), .Q(sr8_sf[2]) );
  DFQD2BWP12T30P140 cc_reg_6_ ( .D(n99), .CP(n220), .Q(cc[6]) );
  DFQD2BWP12T30P140 txeen_reg ( .D(n82), .CP(n220), .Q(txeen) );
  DFQD2BWP12T30P140 cc_reg_7_ ( .D(n100), .CP(n220), .Q(cc[7]) );
  DFQD2BWP12T30P140 cc_reg_5_ ( .D(n98), .CP(n220), .Q(cc[5]) );
  LHQD2BWP12T30P140 spi_seq_next_reg_1_ ( .E(n101), .D(n92), .Q(
        spi_seq_next[1]) );
  LHQD2BWP12T30P140 spi_seq_next_reg_0_ ( .E(n101), .D(n91), .Q(
        spi_seq_next[0]) );
  DFQD2BWP12T30P140 sr8_reg_7_ ( .D(n109), .CP(n221), .Q(MOSI) );
  DFQD2BWP12T30P140 bb8_reg_7_ ( .D(n117), .CP(n221), .Q(bb8[7]) );
  DFQD2BWP12T30P140 bb8_reg_2_ ( .D(n112), .CP(n221), .Q(bb8[2]) );
  DFQD2BWP12T30P140 bb8_reg_3_ ( .D(n113), .CP(n221), .Q(bb8[3]) );
  DFQD2BWP12T30P140 bb8_reg_4_ ( .D(n114), .CP(n221), .Q(bb8[4]) );
  DFQD2BWP12T30P140 bb8_reg_5_ ( .D(n115), .CP(n221), .Q(bb8[5]) );
  DFQD2BWP12T30P140 bb8_reg_6_ ( .D(n116), .CP(n221), .Q(bb8[6]) );
  DFQD2BWP12T30P140 sr8_reg_6_ ( .D(n108), .CP(n221), .Q(sr8_sf[7]) );
  DFQD2BWP12T30P140 sr8_reg_5_ ( .D(n107), .CP(n221), .Q(sr8_sf[6]) );
  DFQD2BWP12T30P140 sr8_reg_2_ ( .D(n104), .CP(n221), .Q(sr8_sf[3]) );
  DFQD2BWP12T30P140 sr8_reg_3_ ( .D(n105), .CP(n221), .Q(sr8_sf[4]) );
  DFQD1BWP12T30P140 ccr_reg_4_ ( .D(n87), .CP(n220), .Q(ccr[4]) );
  DFQD1BWP12T30P140 bc_reg_2_ ( .D(n78), .CP(n220), .Q(bc[2]) );
  DFQD1BWP12T30P140 sr8_reg_4_ ( .D(n106), .CP(n221), .Q(sr8_sf[5]) );
  TIEHBWP12T30P140 U133 ( .Z(n143) );
  INVD0BWP12T30P140 U134 ( .I(n143), .ZN(dat_o[8]) );
  INVD0BWP12T30P140 U135 ( .I(n143), .ZN(dat_o[9]) );
  INVD0BWP12T30P140 U136 ( .I(n143), .ZN(dat_o[10]) );
  INVD0BWP12T30P140 U137 ( .I(n143), .ZN(dat_o[11]) );
  INVD0BWP12T30P140 U138 ( .I(n143), .ZN(dat_o[12]) );
  INVD0BWP12T30P140 U139 ( .I(n143), .ZN(dat_o[13]) );
  INVD0BWP12T30P140 U140 ( .I(n143), .ZN(dat_o[14]) );
  INVD0BWP12T30P140 U141 ( .I(n143), .ZN(dat_o[15]) );
  INVD0BWP12T30P140 U142 ( .I(n143), .ZN(dat_o[16]) );
  INVD0BWP12T30P140 U143 ( .I(n143), .ZN(dat_o[17]) );
  INVD0BWP12T30P140 U144 ( .I(n143), .ZN(dat_o[18]) );
  INVD0BWP12T30P140 U145 ( .I(n143), .ZN(dat_o[19]) );
  INVD0BWP12T30P140 U146 ( .I(n143), .ZN(dat_o[20]) );
  INVD0BWP12T30P140 U147 ( .I(n143), .ZN(dat_o[21]) );
  INVD0BWP12T30P140 U148 ( .I(n143), .ZN(dat_o[22]) );
  INVD0BWP12T30P140 U149 ( .I(n143), .ZN(dat_o[23]) );
  INVD0BWP12T30P140 U150 ( .I(n143), .ZN(dat_o[24]) );
  INVD0BWP12T30P140 U151 ( .I(n143), .ZN(dat_o[25]) );
  INVD0BWP12T30P140 U152 ( .I(n143), .ZN(dat_o[26]) );
  INVD0BWP12T30P140 U153 ( .I(n143), .ZN(dat_o[27]) );
  INVD0BWP12T30P140 U154 ( .I(n143), .ZN(dat_o[28]) );
  INVD0BWP12T30P140 U155 ( .I(n143), .ZN(dat_o[29]) );
  INVD0BWP12T30P140 U156 ( .I(n143), .ZN(dat_o[30]) );
  INVD0BWP12T30P140 U157 ( .I(n143), .ZN(dat_o[31]) );
  INVD0BWP12T30P140 U158 ( .I(spi_seq[0]), .ZN(n177) );
  NR2D0BWP12T30P140 U159 ( .A1(spi_seq[1]), .A2(n177), .ZN(SCLK) );
  OR3D0BWP12T30P140 U160 ( .A1(cc[2]), .A2(cc[1]), .A3(cc[0]), .Z(n157) );
  OR2D0BWP12T30P140 U161 ( .A1(cc[3]), .A2(n157), .Z(n154) );
  NR2D0BWP12T30P140 U162 ( .A1(cc[4]), .A2(n154), .ZN(n170) );
  IND2D1BWP12T30P140 U163 ( .A1(cc[5]), .B1(n170), .ZN(n175) );
  NR2D0BWP12T30P140 U164 ( .A1(cc[6]), .A2(n175), .ZN(n168) );
  INR2D1BWP12T30P140 U165 ( .A1(n168), .B1(cc[7]), .ZN(n185) );
  AOI21D0BWP12T30P140 U166 ( .A1(spi_seq[1]), .A2(n177), .B(SCLK), .ZN(n167)
         );
  NR2D0BWP12T30P140 U167 ( .A1(n185), .A2(n167), .ZN(n174) );
  AOI21D0BWP12T30P140 U168 ( .A1(cc[4]), .A2(n154), .B(n170), .ZN(n144) );
  INVD0BWP12T30P140 U169 ( .I(ccr[4]), .ZN(n176) );
  INVD0BWP12T30P140 U170 ( .I(n174), .ZN(n171) );
  AOI22D0BWP12T30P140 U171 ( .A1(n174), .A2(n144), .B1(n176), .B2(n171), .ZN(
        n97) );
  ND2D0BWP12T30P140 U172 ( .A1(n185), .A2(SCLK), .ZN(n162) );
  NR2D0BWP12T30P140 U173 ( .A1(bc[0]), .A2(n162), .ZN(n146) );
  INVD0BWP12T30P140 U174 ( .I(bc[1]), .ZN(n145) );
  NR2D0BWP12T30P140 U175 ( .A1(spi_seq[1]), .A2(spi_seq[0]), .ZN(n192) );
  ND2D0BWP12T30P140 U176 ( .A1(n192), .A2(bba), .ZN(n199) );
  INVD0BWP12T30P140 U177 ( .I(n162), .ZN(n179) );
  NR2D0BWP12T30P140 U178 ( .A1(bc[1]), .A2(bc[0]), .ZN(n178) );
  ND2D0BWP12T30P140 U179 ( .A1(n179), .A2(n178), .ZN(n188) );
  OAI211D0BWP12T30P140 U180 ( .A1(n146), .A2(n145), .B(n199), .C(n188), .ZN(
        n79) );
  AN2D0BWP12T30P140 U181 ( .A1(cyc_i), .A2(stb_i), .Z(ack_o) );
  INVD0BWP12T30P140 U182 ( .I(adr_i[1]), .ZN(n148) );
  NR3D0BWP12T30P140 U183 ( .A1(adr_i[2]), .A2(adr_i[0]), .A3(n148), .ZN(n193)
         );
  ND2D0BWP12T30P140 U184 ( .A1(ack_o), .A2(we_i), .ZN(n149) );
  INR2D1BWP12T30P140 U185 ( .A1(n193), .B1(n149), .ZN(n166) );
  INVD0BWP12T30P140 U186 ( .I(dat_i[1]), .ZN(n159) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n166), .A2(n159), .B1(txren), .B2(n166), 
        .ZN(n81) );
  INVD0BWP12T30P140 U188 ( .I(adr_i[2]), .ZN(n147) );
  NR4D0BWP12T30P140 U189 ( .A1(adr_i[0]), .A2(adr_i[1]), .A3(n147), .A4(n149), 
        .ZN(n160) );
  INVD0BWP12T30P140 U190 ( .I(n160), .ZN(n182) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(dat_i[7]), .I1(ccr[7]), .S(n182), .Z(n90) );
  INVD0BWP12T30P140 U192 ( .I(n199), .ZN(n187) );
  AO211D0BWP12T30P140 U193 ( .A1(bc[0]), .A2(n162), .B(n187), .C(n146), .Z(n80) );
  INVD0BWP12T30P140 U194 ( .I(bba), .ZN(n194) );
  NR2D0BWP12T30P140 U195 ( .A1(bc[2]), .A2(n188), .ZN(n186) );
  ND2D0BWP12T30P140 U196 ( .A1(bba), .A2(n186), .ZN(n197) );
  ND2D0BWP12T30P140 U197 ( .A1(n199), .A2(n197), .ZN(n198) );
  ND3D0BWP12T30P140 U198 ( .A1(n148), .A2(n147), .A3(adr_i[0]), .ZN(n191) );
  NR2D0BWP12T30P140 U199 ( .A1(n149), .A2(n191), .ZN(n217) );
  INVD0BWP12T30P140 U200 ( .I(n217), .ZN(n150) );
  OAI21D0BWP12T30P140 U201 ( .A1(n194), .A2(n198), .B(n150), .ZN(n118) );
  NR2D0BWP12T30P140 U202 ( .A1(cc[1]), .A2(cc[0]), .ZN(n151) );
  AOI21D0BWP12T30P140 U203 ( .A1(cc[0]), .A2(cc[1]), .B(n151), .ZN(n152) );
  INVD0BWP12T30P140 U204 ( .I(ccr[1]), .ZN(n158) );
  AOI22D0BWP12T30P140 U205 ( .A1(n174), .A2(n152), .B1(n158), .B2(n171), .ZN(
        n94) );
  INVD0BWP12T30P140 U206 ( .I(ccr[6]), .ZN(n163) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n163), .A2(n182), .B1(n182), .B2(dat_i[6]), 
        .ZN(n89) );
  INVD0BWP12T30P140 U208 ( .I(ccr[5]), .ZN(n172) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n172), .A2(n182), .B1(n182), .B2(dat_i[5]), 
        .ZN(n88) );
  ND2D0BWP12T30P140 U210 ( .A1(cc[3]), .A2(n157), .ZN(n153) );
  INVD0BWP12T30P140 U211 ( .I(ccr[3]), .ZN(n155) );
  AOI32D0BWP12T30P140 U212 ( .A1(n154), .A2(n174), .A3(n153), .B1(n155), .B2(
        n171), .ZN(n96) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n155), .A2(n182), .B1(n182), .B2(dat_i[3]), 
        .ZN(n86) );
  OAI21D0BWP12T30P140 U214 ( .A1(cc[1]), .A2(cc[0]), .B(cc[2]), .ZN(n156) );
  INVD0BWP12T30P140 U215 ( .I(ccr[2]), .ZN(n183) );
  AOI32D0BWP12T30P140 U216 ( .A1(n157), .A2(n174), .A3(n156), .B1(n183), .B2(
        n171), .ZN(n95) );
  AOI22D0BWP12T30P140 U217 ( .A1(n160), .A2(n159), .B1(n158), .B2(n182), .ZN(
        n84) );
  INVD0BWP12T30P140 U218 ( .I(dat_i[0]), .ZN(n165) );
  INVD0BWP12T30P140 U219 ( .I(ccr[0]), .ZN(n161) );
  AOI22D0BWP12T30P140 U220 ( .A1(n160), .A2(n165), .B1(n161), .B2(n182), .ZN(
        n83) );
  AOI22D0BWP12T30P140 U221 ( .A1(n174), .A2(cc[0]), .B1(n161), .B2(n171), .ZN(
        n93) );
  NR2D0BWP12T30P140 U222 ( .A1(n187), .A2(n179), .ZN(n190) );
  NR2D0BWP12T30P140 U223 ( .A1(n162), .A2(n198), .ZN(n189) );
  AO222D0BWP12T30P140 U224 ( .A1(n198), .A2(bb8[0]), .B1(sr8_sf[1]), .B2(n190), 
        .C1(n189), .C2(MISO), .Z(n102) );
  AO222D0BWP12T30P140 U225 ( .A1(n198), .A2(bb8[1]), .B1(sr8_sf[2]), .B2(n190), 
        .C1(n189), .C2(sr8_sf[1]), .Z(n103) );
  AOI21D0BWP12T30P140 U226 ( .A1(cc[6]), .A2(n175), .B(n168), .ZN(n164) );
  AOI22D0BWP12T30P140 U227 ( .A1(n174), .A2(n164), .B1(n163), .B2(n171), .ZN(
        n99) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n166), .A2(n165), .B1(txeen), .B2(n166), 
        .ZN(n82) );
  NR2D0BWP12T30P140 U229 ( .A1(n168), .A2(n167), .ZN(n169) );
  AO22D0BWP12T30P140 U230 ( .A1(cc[7]), .A2(n169), .B1(ccr[7]), .B2(n171), .Z(
        n100) );
  IND2D1BWP12T30P140 U231 ( .A1(n170), .B1(cc[5]), .ZN(n173) );
  AOI32D0BWP12T30P140 U232 ( .A1(n175), .A2(n174), .A3(n173), .B1(n172), .B2(
        n171), .ZN(n98) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n176), .A2(n182), .B1(n182), .B2(dat_i[4]), 
        .ZN(n87) );
  ND2D0BWP12T30P140 U234 ( .A1(spi_seq[1]), .A2(n177), .ZN(n184) );
  INVD0BWP12T30P140 U235 ( .I(n178), .ZN(n180) );
  OAI31D0BWP12T30P140 U236 ( .A1(bba), .A2(bc[2]), .A3(n180), .B(n179), .ZN(
        n181) );
  OAI211D0BWP12T30P140 U237 ( .A1(n185), .A2(n184), .B(n199), .C(n181), .ZN(
        n92) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n183), .A2(n182), .B1(n182), .B2(dat_i[2]), 
        .ZN(n85) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n185), .A2(n184), .B1(SCLK), .B2(n185), .ZN(
        n91) );
  AO222D0BWP12T30P140 U240 ( .A1(n198), .A2(bb8[6]), .B1(n189), .B2(sr8_sf[6]), 
        .C1(sr8_sf[7]), .C2(n190), .Z(n108) );
  AO222D0BWP12T30P140 U241 ( .A1(n198), .A2(bb8[2]), .B1(sr8_sf[3]), .B2(n190), 
        .C1(n189), .C2(sr8_sf[2]), .Z(n104) );
  AO211D0BWP12T30P140 U242 ( .A1(bc[2]), .A2(n188), .B(n187), .C(n186), .Z(n78) );
  AO222D0BWP12T30P140 U243 ( .A1(n198), .A2(bb8[3]), .B1(sr8_sf[4]), .B2(n190), 
        .C1(n189), .C2(sr8_sf[3]), .Z(n105) );
  AO222D0BWP12T30P140 U244 ( .A1(n198), .A2(bb8[4]), .B1(sr8_sf[5]), .B2(n190), 
        .C1(n189), .C2(sr8_sf[4]), .Z(n106) );
  AO222D0BWP12T30P140 U245 ( .A1(n198), .A2(bb8[7]), .B1(sr8_sf[7]), .B2(n189), 
        .C1(MOSI), .C2(n190), .Z(n109) );
  AO222D0BWP12T30P140 U246 ( .A1(n198), .A2(bb8[5]), .B1(sr8_sf[6]), .B2(n190), 
        .C1(n189), .C2(sr8_sf[5]), .Z(n107) );
  CKBD0BWP12T30P140 U247 ( .I(clk_i), .Z(n220) );
  CKBD0BWP12T30P140 U248 ( .I(clk_i), .Z(n221) );
  INVD0BWP12T30P140 U249 ( .I(rst_i), .ZN(n77) );
  AO22D0BWP12T30P140 U250 ( .A1(n194), .A2(txren), .B1(n192), .B2(txeen), .Z(
        int_o) );
  NR3D0BWP12T30P140 U251 ( .A1(adr_i[2]), .A2(adr_i[0]), .A3(adr_i[1]), .ZN(
        n196) );
  INVD0BWP12T30P140 U252 ( .I(n191), .ZN(n195) );
  AO222D0BWP12T30P140 U253 ( .A1(n192), .A2(n193), .B1(sr8_sf[1]), .B2(n196), 
        .C1(bb8[0]), .C2(n195), .Z(dat_o[0]) );
  AO222D0BWP12T30P140 U254 ( .A1(n194), .A2(n193), .B1(sr8_sf[2]), .B2(n196), 
        .C1(bb8[1]), .C2(n195), .Z(dat_o[1]) );
  AO22D0BWP12T30P140 U255 ( .A1(n195), .A2(bb8[2]), .B1(sr8_sf[3]), .B2(n196), 
        .Z(dat_o[2]) );
  AO22D0BWP12T30P140 U256 ( .A1(n195), .A2(bb8[3]), .B1(sr8_sf[4]), .B2(n196), 
        .Z(dat_o[3]) );
  AO22D0BWP12T30P140 U257 ( .A1(n195), .A2(bb8[4]), .B1(sr8_sf[5]), .B2(n196), 
        .Z(dat_o[4]) );
  AO22D0BWP12T30P140 U258 ( .A1(n195), .A2(bb8[5]), .B1(sr8_sf[6]), .B2(n196), 
        .Z(dat_o[5]) );
  AO22D0BWP12T30P140 U259 ( .A1(n195), .A2(bb8[6]), .B1(sr8_sf[7]), .B2(n196), 
        .Z(dat_o[6]) );
  AO22D0BWP12T30P140 U260 ( .A1(MOSI), .A2(n196), .B1(n195), .B2(bb8[7]), .Z(
        dat_o[7]) );
  ND2D0BWP12T30P140 U261 ( .A1(spi_seq[1]), .A2(spi_seq[0]), .ZN(n101) );
  NR2D0BWP12T30P140 U262 ( .A1(n217), .A2(n197), .ZN(n215) );
  NR2D0BWP12T30P140 U263 ( .A1(n217), .A2(n198), .ZN(n214) );
  AOI22D0BWP12T30P140 U264 ( .A1(n215), .A2(MISO), .B1(n214), .B2(bb8[0]), 
        .ZN(n201) );
  NR2D0BWP12T30P140 U265 ( .A1(n217), .A2(n199), .ZN(n216) );
  AOI22D0BWP12T30P140 U266 ( .A1(n217), .A2(dat_i[0]), .B1(n216), .B2(
        sr8_sf[1]), .ZN(n200) );
  ND2D0BWP12T30P140 U267 ( .A1(n201), .A2(n200), .ZN(n110) );
  AOI22D0BWP12T30P140 U268 ( .A1(n215), .A2(sr8_sf[1]), .B1(n214), .B2(bb8[1]), 
        .ZN(n203) );
  AOI22D0BWP12T30P140 U269 ( .A1(n217), .A2(dat_i[1]), .B1(n216), .B2(
        sr8_sf[2]), .ZN(n202) );
  ND2D0BWP12T30P140 U270 ( .A1(n203), .A2(n202), .ZN(n111) );
  AOI22D0BWP12T30P140 U271 ( .A1(n215), .A2(sr8_sf[3]), .B1(n214), .B2(bb8[3]), 
        .ZN(n205) );
  AOI22D0BWP12T30P140 U272 ( .A1(n217), .A2(dat_i[3]), .B1(n216), .B2(
        sr8_sf[4]), .ZN(n204) );
  ND2D0BWP12T30P140 U273 ( .A1(n205), .A2(n204), .ZN(n113) );
  AOI22D0BWP12T30P140 U274 ( .A1(sr8_sf[7]), .A2(n215), .B1(bb8[7]), .B2(n214), 
        .ZN(n207) );
  AOI22D0BWP12T30P140 U275 ( .A1(MOSI), .A2(n216), .B1(n217), .B2(dat_i[7]), 
        .ZN(n206) );
  ND2D0BWP12T30P140 U276 ( .A1(n207), .A2(n206), .ZN(n117) );
  AOI22D0BWP12T30P140 U277 ( .A1(n215), .A2(sr8_sf[4]), .B1(n214), .B2(bb8[4]), 
        .ZN(n209) );
  AOI22D0BWP12T30P140 U278 ( .A1(n217), .A2(dat_i[4]), .B1(n216), .B2(
        sr8_sf[5]), .ZN(n208) );
  ND2D0BWP12T30P140 U279 ( .A1(n209), .A2(n208), .ZN(n114) );
  AOI22D0BWP12T30P140 U280 ( .A1(n215), .A2(sr8_sf[2]), .B1(n214), .B2(bb8[2]), 
        .ZN(n211) );
  AOI22D0BWP12T30P140 U281 ( .A1(n217), .A2(dat_i[2]), .B1(n216), .B2(
        sr8_sf[3]), .ZN(n210) );
  ND2D0BWP12T30P140 U282 ( .A1(n211), .A2(n210), .ZN(n112) );
  AOI22D0BWP12T30P140 U283 ( .A1(n215), .A2(sr8_sf[6]), .B1(n214), .B2(bb8[6]), 
        .ZN(n213) );
  AOI22D0BWP12T30P140 U284 ( .A1(n217), .A2(dat_i[6]), .B1(n216), .B2(
        sr8_sf[7]), .ZN(n212) );
  ND2D0BWP12T30P140 U285 ( .A1(n213), .A2(n212), .ZN(n116) );
  AOI22D0BWP12T30P140 U286 ( .A1(n215), .A2(sr8_sf[5]), .B1(n214), .B2(bb8[5]), 
        .ZN(n219) );
  AOI22D0BWP12T30P140 U287 ( .A1(n217), .A2(dat_i[5]), .B1(n216), .B2(
        sr8_sf[6]), .ZN(n218) );
  ND2D0BWP12T30P140 U288 ( .A1(n219), .A2(n218), .ZN(n115) );
endmodule

