/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:20:17 2026
/////////////////////////////////////////////////////////////


module tiny_spi ( rst_i, clk_i, stb_i, we_i, cyc_i, dat_o, int_o, dat_i, adr_i, 
        ack_o, MOSI, SCLK, MISO );
  output [31:0] dat_o;
  input [31:0] dat_i;
  input [2:0] adr_i;
  input rst_i, clk_i, stb_i, we_i, cyc_i, MISO;
  output int_o, ack_o, MOSI, SCLK;
  wire   sr8_7_, bba, nxt_ld, nxt_sf, ld, sf, txren, txeen, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200;
  wire   [7:1] sr8_sf;
  wire   [6:0] sr8_pipe;
  wire   [7:0] bb8;
  wire   [1:0] spi_seq;
  wire   [7:0] cc;
  wire   [7:0] ccr;
  wire   [1:0] nxt_state;
  wire   [2:0] bc;

  DFQD2BWP12T30P140 sr8_pipe_reg_1_ ( .D(sr8_sf[2]), .CP(clk_i), .Q(
        sr8_pipe[1]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_2_ ( .D(sr8_sf[3]), .CP(clk_i), .Q(
        sr8_pipe[2]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_3_ ( .D(sr8_sf[4]), .CP(clk_i), .Q(
        sr8_pipe[3]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_4_ ( .D(sr8_sf[5]), .CP(clk_i), .Q(
        sr8_pipe[4]) );
  DFQD2BWP12T30P140 ccr_reg_7_ ( .D(n97), .CP(clk_i), .Q(ccr[7]) );
  DFQD2BWP12T30P140 bb8_reg_2_ ( .D(n72), .CP(clk_i), .Q(bb8[2]) );
  DFQD2BWP12T30P140 bb8_reg_3_ ( .D(n71), .CP(clk_i), .Q(bb8[3]) );
  DFQD2BWP12T30P140 bb8_reg_4_ ( .D(n70), .CP(clk_i), .Q(bb8[4]) );
  DFQD2BWP12T30P140 sck_reg ( .D(spi_seq[0]), .CP(n199), .Q(SCLK) );
  DFCNQD1BWP12T30P140 spi_seq_reg_1_ ( .D(nxt_state[1]), .CP(clk_i), .CDN(n59), 
        .Q(spi_seq[1]) );
  DFQD2BWP12T30P140 sf_reg ( .D(nxt_sf), .CP(n199), .Q(sf) );
  DFQD2BWP12T30P140 ccr_reg_5_ ( .D(n95), .CP(n199), .Q(ccr[5]) );
  DFQD2BWP12T30P140 ccr_reg_3_ ( .D(n93), .CP(n199), .Q(ccr[3]) );
  DFQD2BWP12T30P140 ccr_reg_1_ ( .D(n91), .CP(n199), .Q(ccr[1]) );
  DFQD2BWP12T30P140 txeen_reg ( .D(n89), .CP(n199), .Q(txeen) );
  DFQD2BWP12T30P140 txren_reg ( .D(n88), .CP(n200), .Q(txren) );
  DFQD2BWP12T30P140 cc_reg_6_ ( .D(n76), .CP(n199), .Q(cc[6]) );
  DFQD2BWP12T30P140 cc_reg_2_ ( .D(n80), .CP(n200), .Q(cc[2]) );
  DFQD2BWP12T30P140 cc_reg_4_ ( .D(n78), .CP(n199), .Q(cc[4]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_0_ ( .D(sr8_sf[1]), .CP(n200), .Q(sr8_pipe[0]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_5_ ( .D(sr8_sf[6]), .CP(n200), .Q(sr8_pipe[5]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_6_ ( .D(sr8_sf[7]), .CP(n200), .Q(sr8_pipe[6]) );
  DFQD2BWP12T30P140 sr8_pipe_reg_7_ ( .D(sr8_7_), .CP(n200), .Q(MOSI) );
  DFCNQD1BWP12T30P140 bba_reg ( .D(n87), .CP(clk_i), .CDN(n59), .Q(bba) );
  DFQD2BWP12T30P140 cc_reg_3_ ( .D(n79), .CP(n199), .Q(cc[3]) );
  DFQD2BWP12T30P140 cc_reg_5_ ( .D(n77), .CP(n200), .Q(cc[5]) );
  DFQD2BWP12T30P140 cc_reg_7_ ( .D(n83), .CP(n199), .Q(cc[7]) );
  DFQD2BWP12T30P140 cc_reg_1_ ( .D(n81), .CP(n199), .Q(cc[1]) );
  DFQD2BWP12T30P140 bc_reg_1_ ( .D(n86), .CP(n200), .Q(bc[1]) );
  DFQD2BWP12T30P140 ccr_reg_6_ ( .D(n96), .CP(n199), .Q(ccr[6]) );
  DFQD2BWP12T30P140 ccr_reg_4_ ( .D(n94), .CP(n199), .Q(ccr[4]) );
  DFQD2BWP12T30P140 ccr_reg_2_ ( .D(n92), .CP(n199), .Q(ccr[2]) );
  DFQD2BWP12T30P140 bb8_reg_0_ ( .D(n74), .CP(n199), .Q(bb8[0]) );
  DFQD2BWP12T30P140 cc_reg_0_ ( .D(n82), .CP(n200), .Q(cc[0]) );
  DFQD2BWP12T30P140 bb8_reg_1_ ( .D(n73), .CP(n199), .Q(bb8[1]) );
  DFQD2BWP12T30P140 bb8_reg_5_ ( .D(n69), .CP(n200), .Q(bb8[5]) );
  DFQD2BWP12T30P140 bb8_reg_6_ ( .D(n68), .CP(n200), .Q(bb8[6]) );
  DFQD2BWP12T30P140 bb8_reg_7_ ( .D(n67), .CP(n200), .Q(bb8[7]) );
  DFQD2BWP12T30P140 bc_reg_0_ ( .D(n85), .CP(n200), .Q(bc[0]) );
  DFQD2BWP12T30P140 sr8_reg_1_ ( .D(n75), .CP(clk_i), .Q(sr8_sf[2]) );
  DFQD2BWP12T30P140 sr8_reg_2_ ( .D(n65), .CP(clk_i), .Q(sr8_sf[3]) );
  DFQD2BWP12T30P140 sr8_reg_3_ ( .D(n64), .CP(clk_i), .Q(sr8_sf[4]) );
  DFQD2BWP12T30P140 sr8_reg_7_ ( .D(n60), .CP(n200), .Q(sr8_7_) );
  DFCNQD1BWP12T30P140 spi_seq_reg_0_ ( .D(nxt_state[0]), .CP(clk_i), .CDN(n59), 
        .Q(spi_seq[0]) );
  DFQD2BWP12T30P140 sr8_reg_0_ ( .D(n66), .CP(n200), .Q(sr8_sf[1]) );
  DFQD2BWP12T30P140 sr8_reg_5_ ( .D(n62), .CP(n200), .Q(sr8_sf[6]) );
  DFQD2BWP12T30P140 sr8_reg_6_ ( .D(n61), .CP(n200), .Q(sr8_sf[7]) );
  DFQD1BWP12T30P140 ccr_reg_0_ ( .D(n90), .CP(n199), .Q(ccr[0]) );
  DFQD1BWP12T30P140 bc_reg_2_ ( .D(n84), .CP(n200), .Q(bc[2]) );
  DFQD1BWP12T30P140 sr8_reg_4_ ( .D(n63), .CP(clk_i), .Q(sr8_sf[5]) );
  DFQD1BWP12T30P140 ld_reg ( .D(nxt_ld), .CP(n199), .Q(ld) );
  TIEHBWP12T30P140 U115 ( .Z(n122) );
  INVD0BWP12T30P140 U116 ( .I(n122), .ZN(dat_o[8]) );
  INVD0BWP12T30P140 U117 ( .I(n122), .ZN(dat_o[9]) );
  INVD0BWP12T30P140 U118 ( .I(n122), .ZN(dat_o[10]) );
  INVD0BWP12T30P140 U119 ( .I(n122), .ZN(dat_o[11]) );
  INVD0BWP12T30P140 U120 ( .I(n122), .ZN(dat_o[12]) );
  INVD0BWP12T30P140 U121 ( .I(n122), .ZN(dat_o[13]) );
  INVD0BWP12T30P140 U122 ( .I(n122), .ZN(dat_o[14]) );
  INVD0BWP12T30P140 U123 ( .I(n122), .ZN(dat_o[15]) );
  INVD0BWP12T30P140 U124 ( .I(n122), .ZN(dat_o[16]) );
  INVD0BWP12T30P140 U125 ( .I(n122), .ZN(dat_o[17]) );
  INVD0BWP12T30P140 U126 ( .I(n122), .ZN(dat_o[18]) );
  INVD0BWP12T30P140 U127 ( .I(n122), .ZN(dat_o[19]) );
  INVD0BWP12T30P140 U128 ( .I(n122), .ZN(dat_o[20]) );
  INVD0BWP12T30P140 U129 ( .I(n122), .ZN(dat_o[21]) );
  INVD0BWP12T30P140 U130 ( .I(n122), .ZN(dat_o[22]) );
  INVD0BWP12T30P140 U131 ( .I(n122), .ZN(dat_o[23]) );
  INVD0BWP12T30P140 U132 ( .I(n122), .ZN(dat_o[24]) );
  INVD0BWP12T30P140 U133 ( .I(n122), .ZN(dat_o[25]) );
  INVD0BWP12T30P140 U134 ( .I(n122), .ZN(dat_o[26]) );
  INVD0BWP12T30P140 U135 ( .I(n122), .ZN(dat_o[27]) );
  INVD0BWP12T30P140 U136 ( .I(n122), .ZN(dat_o[28]) );
  INVD0BWP12T30P140 U137 ( .I(n122), .ZN(dat_o[29]) );
  INVD0BWP12T30P140 U138 ( .I(n122), .ZN(dat_o[30]) );
  INVD0BWP12T30P140 U139 ( .I(n122), .ZN(dat_o[31]) );
  AN2D0BWP12T30P140 U140 ( .A1(cyc_i), .A2(stb_i), .Z(ack_o) );
  ND2D0BWP12T30P140 U141 ( .A1(ack_o), .A2(we_i), .ZN(n138) );
  INR4D0BWP12T30P140 U142 ( .A1(adr_i[2]), .B1(adr_i[0]), .B2(adr_i[1]), .B3(
        n138), .ZN(n148) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(ccr[7]), .I1(dat_i[7]), .S(n148), .Z(n97) );
  NR2D0BWP12T30P140 U144 ( .A1(ld), .A2(sf), .ZN(n126) );
  NR2D0BWP12T30P140 U145 ( .A1(ld), .A2(n126), .ZN(n127) );
  AO222D0BWP12T30P140 U146 ( .A1(ld), .A2(bb8[6]), .B1(sr8_sf[6]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[7]), .Z(n61) );
  AO222D0BWP12T30P140 U147 ( .A1(ld), .A2(bb8[5]), .B1(sr8_sf[5]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[6]), .Z(n62) );
  AO222D0BWP12T30P140 U148 ( .A1(bb8[0]), .A2(ld), .B1(MISO), .B2(n127), .C1(
        n126), .C2(sr8_sf[1]), .Z(n66) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(ccr[2]), .I1(dat_i[2]), .S(n148), .Z(n92) );
  INVD0BWP12T30P140 U150 ( .I(cc[4]), .ZN(n141) );
  INVD0BWP12T30P140 U151 ( .I(cc[2]), .ZN(n156) );
  NR2D0BWP12T30P140 U152 ( .A1(cc[1]), .A2(cc[0]), .ZN(n157) );
  ND2D0BWP12T30P140 U153 ( .A1(n156), .A2(n157), .ZN(n162) );
  NR2D0BWP12T30P140 U154 ( .A1(cc[3]), .A2(n162), .ZN(n161) );
  ND2D0BWP12T30P140 U155 ( .A1(n141), .A2(n161), .ZN(n140) );
  NR2D0BWP12T30P140 U156 ( .A1(cc[5]), .A2(n140), .ZN(n146) );
  INVD0BWP12T30P140 U157 ( .I(cc[6]), .ZN(n145) );
  ND2D0BWP12T30P140 U158 ( .A1(n146), .A2(n145), .ZN(n160) );
  NR2D0BWP12T30P140 U159 ( .A1(cc[7]), .A2(n160), .ZN(n128) );
  INVD0BWP12T30P140 U160 ( .I(n128), .ZN(n133) );
  INVD0BWP12T30P140 U161 ( .I(spi_seq[1]), .ZN(n125) );
  INVD0BWP12T30P140 U162 ( .I(spi_seq[0]), .ZN(n123) );
  OAI32D0BWP12T30P140 U163 ( .A1(spi_seq[0]), .A2(n133), .A3(n125), .B1(n128), 
        .B2(n123), .ZN(nxt_state[0]) );
  NR2D0BWP12T30P140 U164 ( .A1(spi_seq[1]), .A2(spi_seq[0]), .ZN(n176) );
  NR3D0BWP12T30P140 U165 ( .A1(bc[1]), .A2(bc[2]), .A3(bc[0]), .ZN(n129) );
  INR2D1BWP12T30P140 U166 ( .A1(n129), .B1(bba), .ZN(n132) );
  ND2D0BWP12T30P140 U167 ( .A1(spi_seq[0]), .A2(n128), .ZN(n131) );
  MAOI22D0BWP12T30P140 U168 ( .A1(bba), .A2(n176), .B1(n132), .B2(n131), .ZN(
        n124) );
  OAI31D0BWP12T30P140 U169 ( .A1(spi_seq[0]), .A2(n128), .A3(n125), .B(n124), 
        .ZN(nxt_state[1]) );
  AO222D0BWP12T30P140 U170 ( .A1(ld), .A2(bb8[7]), .B1(sr8_sf[7]), .B2(n127), 
        .C1(n126), .C2(sr8_7_), .Z(n60) );
  AO222D0BWP12T30P140 U171 ( .A1(ld), .A2(bb8[4]), .B1(sr8_sf[4]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[5]), .Z(n63) );
  AO222D0BWP12T30P140 U172 ( .A1(ld), .A2(bb8[3]), .B1(sr8_sf[3]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[4]), .Z(n64) );
  AO222D0BWP12T30P140 U173 ( .A1(ld), .A2(bb8[2]), .B1(sr8_sf[2]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[3]), .Z(n65) );
  AO222D0BWP12T30P140 U174 ( .A1(ld), .A2(bb8[1]), .B1(sr8_sf[1]), .B2(n127), 
        .C1(n126), .C2(sr8_sf[2]), .Z(n75) );
  ND2D0BWP12T30P140 U175 ( .A1(n129), .A2(n128), .ZN(n130) );
  INVD0BWP12T30P140 U176 ( .I(bba), .ZN(n171) );
  AOI211D0BWP12T30P140 U177 ( .A1(spi_seq[0]), .A2(n130), .B(spi_seq[1]), .C(
        n171), .ZN(nxt_ld) );
  NR2D0BWP12T30P140 U178 ( .A1(spi_seq[1]), .A2(n131), .ZN(nxt_sf) );
  INVD0BWP12T30P140 U179 ( .I(nxt_sf), .ZN(n152) );
  NR3D0BWP12T30P140 U180 ( .A1(bc[0]), .A2(n132), .A3(n152), .ZN(n153) );
  AO211D0BWP12T30P140 U181 ( .A1(bc[0]), .A2(n152), .B(n153), .C(nxt_ld), .Z(
        n85) );
  AOI21D0BWP12T30P140 U182 ( .A1(cc[0]), .A2(cc[1]), .B(n157), .ZN(n134) );
  INVD0BWP12T30P140 U183 ( .I(n176), .ZN(n174) );
  ND2D0BWP12T30P140 U184 ( .A1(n133), .A2(n174), .ZN(n164) );
  INVD0BWP12T30P140 U185 ( .I(ccr[1]), .ZN(n137) );
  OAI22D0BWP12T30P140 U186 ( .A1(n134), .A2(n164), .B1(n174), .B2(n137), .ZN(
        n81) );
  INVD0BWP12T30P140 U187 ( .I(ccr[5]), .ZN(n135) );
  INVD0BWP12T30P140 U188 ( .I(n148), .ZN(n143) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n135), .A2(n143), .B1(n143), .B2(dat_i[5]), 
        .ZN(n95) );
  AOI21D0BWP12T30P140 U190 ( .A1(cc[5]), .A2(n140), .B(n146), .ZN(n136) );
  OAI22D0BWP12T30P140 U191 ( .A1(n136), .A2(n164), .B1(n174), .B2(n135), .ZN(
        n77) );
  INVD0BWP12T30P140 U192 ( .I(ccr[3]), .ZN(n163) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n163), .A2(n143), .B1(n143), .B2(dat_i[3]), 
        .ZN(n93) );
  INVD0BWP12T30P140 U194 ( .I(ld), .ZN(n175) );
  NR2D0BWP12T30P140 U195 ( .A1(adr_i[2]), .A2(adr_i[1]), .ZN(n169) );
  ND2D0BWP12T30P140 U196 ( .A1(n169), .A2(adr_i[0]), .ZN(n168) );
  NR2D0BWP12T30P140 U197 ( .A1(n168), .A2(n138), .ZN(n192) );
  AO21D0BWP12T30P140 U198 ( .A1(n175), .A2(bba), .B(n192), .Z(n87) );
  INVD0BWP12T30P140 U199 ( .I(ccr[0]), .ZN(n144) );
  OAI22D0BWP12T30P140 U200 ( .A1(cc[0]), .A2(n164), .B1(n144), .B2(n174), .ZN(
        n82) );
  INVD0BWP12T30P140 U201 ( .I(dat_i[1]), .ZN(n139) );
  AOI22D0BWP12T30P140 U202 ( .A1(n148), .A2(n139), .B1(n137), .B2(n143), .ZN(
        n91) );
  INR3D1BWP12T30P140 U203 ( .A1(adr_i[1]), .B1(adr_i[2]), .B2(adr_i[0]), .ZN(
        n170) );
  IND2D1BWP12T30P140 U204 ( .A1(n138), .B1(n170), .ZN(n149) );
  INVD0BWP12T30P140 U205 ( .I(n149), .ZN(n151) );
  INVD0BWP12T30P140 U206 ( .I(txren), .ZN(n167) );
  AOI22D0BWP12T30P140 U207 ( .A1(n151), .A2(n139), .B1(n167), .B2(n149), .ZN(
        n88) );
  INVD0BWP12T30P140 U208 ( .I(n164), .ZN(n159) );
  OAI21D0BWP12T30P140 U209 ( .A1(n161), .A2(n141), .B(n140), .ZN(n142) );
  AO22D0BWP12T30P140 U210 ( .A1(n176), .A2(ccr[4]), .B1(n159), .B2(n142), .Z(
        n78) );
  INVD0BWP12T30P140 U211 ( .I(dat_i[0]), .ZN(n150) );
  AOI22D0BWP12T30P140 U212 ( .A1(n148), .A2(n150), .B1(n144), .B2(n143), .ZN(
        n90) );
  CKMUX2D0BWP12T30P140 U213 ( .I0(ccr[4]), .I1(dat_i[4]), .S(n148), .Z(n94) );
  OAI21D0BWP12T30P140 U214 ( .A1(n146), .A2(n145), .B(n160), .ZN(n147) );
  AO22D0BWP12T30P140 U215 ( .A1(n176), .A2(ccr[6]), .B1(n159), .B2(n147), .Z(
        n76) );
  CKMUX2D0BWP12T30P140 U216 ( .I0(ccr[6]), .I1(dat_i[6]), .S(n148), .Z(n96) );
  INVD0BWP12T30P140 U217 ( .I(txeen), .ZN(n166) );
  AOI22D0BWP12T30P140 U218 ( .A1(n151), .A2(n150), .B1(n166), .B2(n149), .ZN(
        n89) );
  NR2D0BWP12T30P140 U219 ( .A1(bc[0]), .A2(n152), .ZN(n155) );
  INVD0BWP12T30P140 U220 ( .I(bc[1]), .ZN(n154) );
  ND2D0BWP12T30P140 U221 ( .A1(n153), .A2(n154), .ZN(n198) );
  INVD0BWP12T30P140 U222 ( .I(nxt_ld), .ZN(n197) );
  OAI211D0BWP12T30P140 U223 ( .A1(n155), .A2(n154), .B(n198), .C(n197), .ZN(
        n86) );
  OAI21D0BWP12T30P140 U224 ( .A1(n157), .A2(n156), .B(n162), .ZN(n158) );
  AO22D0BWP12T30P140 U225 ( .A1(n176), .A2(ccr[2]), .B1(n159), .B2(n158), .Z(
        n80) );
  AO32D0BWP12T30P140 U226 ( .A1(cc[7]), .A2(n174), .A3(n160), .B1(n176), .B2(
        ccr[7]), .Z(n83) );
  AOI21D0BWP12T30P140 U227 ( .A1(cc[3]), .A2(n162), .B(n161), .ZN(n165) );
  OAI22D0BWP12T30P140 U228 ( .A1(n165), .A2(n164), .B1(n174), .B2(n163), .ZN(
        n79) );
  CKBD0BWP12T30P140 U229 ( .I(clk_i), .Z(n199) );
  CKBD0BWP12T30P140 U230 ( .I(clk_i), .Z(n200) );
  INVD0BWP12T30P140 U231 ( .I(rst_i), .ZN(n59) );
  OAI22D0BWP12T30P140 U232 ( .A1(bba), .A2(n167), .B1(n166), .B2(n174), .ZN(
        int_o) );
  INVD0BWP12T30P140 U233 ( .I(n168), .ZN(n173) );
  INR2D1BWP12T30P140 U234 ( .A1(n169), .B1(adr_i[0]), .ZN(n172) );
  AO222D0BWP12T30P140 U235 ( .A1(n176), .A2(n170), .B1(n173), .B2(bb8[0]), 
        .C1(n172), .C2(sr8_pipe[0]), .Z(dat_o[0]) );
  AO222D0BWP12T30P140 U236 ( .A1(n171), .A2(n170), .B1(n173), .B2(bb8[1]), 
        .C1(n172), .C2(sr8_pipe[1]), .Z(dat_o[1]) );
  AO22D0BWP12T30P140 U237 ( .A1(n173), .A2(bb8[2]), .B1(n172), .B2(sr8_pipe[2]), .Z(dat_o[2]) );
  AO22D0BWP12T30P140 U238 ( .A1(n173), .A2(bb8[3]), .B1(n172), .B2(sr8_pipe[3]), .Z(dat_o[3]) );
  AO22D0BWP12T30P140 U239 ( .A1(n173), .A2(bb8[4]), .B1(n172), .B2(sr8_pipe[4]), .Z(dat_o[4]) );
  AO22D0BWP12T30P140 U240 ( .A1(n173), .A2(bb8[5]), .B1(n172), .B2(sr8_pipe[5]), .Z(dat_o[5]) );
  AO22D0BWP12T30P140 U241 ( .A1(n173), .A2(bb8[6]), .B1(n172), .B2(sr8_pipe[6]), .Z(dat_o[6]) );
  AO22D0BWP12T30P140 U242 ( .A1(n173), .A2(bb8[7]), .B1(n172), .B2(MOSI), .Z(
        dat_o[7]) );
  NR3D0BWP12T30P140 U243 ( .A1(n192), .A2(n175), .A3(n174), .ZN(n191) );
  AOI22D0BWP12T30P140 U244 ( .A1(n192), .A2(dat_i[2]), .B1(n191), .B2(
        sr8_sf[3]), .ZN(n178) );
  NR2D0BWP12T30P140 U245 ( .A1(ld), .A2(n192), .ZN(n194) );
  NR3D0BWP12T30P140 U246 ( .A1(n176), .A2(n192), .A3(n175), .ZN(n193) );
  AOI22D0BWP12T30P140 U247 ( .A1(n194), .A2(bb8[2]), .B1(n193), .B2(sr8_sf[2]), 
        .ZN(n177) );
  ND2D0BWP12T30P140 U248 ( .A1(n178), .A2(n177), .ZN(n72) );
  AOI22D0BWP12T30P140 U249 ( .A1(n192), .A2(dat_i[3]), .B1(n191), .B2(
        sr8_sf[4]), .ZN(n180) );
  AOI22D0BWP12T30P140 U250 ( .A1(n194), .A2(bb8[3]), .B1(n193), .B2(sr8_sf[3]), 
        .ZN(n179) );
  ND2D0BWP12T30P140 U251 ( .A1(n180), .A2(n179), .ZN(n71) );
  AOI22D0BWP12T30P140 U252 ( .A1(n192), .A2(dat_i[4]), .B1(n191), .B2(
        sr8_sf[5]), .ZN(n182) );
  AOI22D0BWP12T30P140 U253 ( .A1(n194), .A2(bb8[4]), .B1(n193), .B2(sr8_sf[4]), 
        .ZN(n181) );
  ND2D0BWP12T30P140 U254 ( .A1(n182), .A2(n181), .ZN(n70) );
  AOI22D0BWP12T30P140 U255 ( .A1(n192), .A2(dat_i[7]), .B1(n191), .B2(sr8_7_), 
        .ZN(n184) );
  AOI22D0BWP12T30P140 U256 ( .A1(n194), .A2(bb8[7]), .B1(n193), .B2(sr8_sf[7]), 
        .ZN(n183) );
  ND2D0BWP12T30P140 U257 ( .A1(n184), .A2(n183), .ZN(n67) );
  AOI22D0BWP12T30P140 U258 ( .A1(n192), .A2(dat_i[6]), .B1(n191), .B2(
        sr8_sf[7]), .ZN(n186) );
  AOI22D0BWP12T30P140 U259 ( .A1(n194), .A2(bb8[6]), .B1(n193), .B2(sr8_sf[6]), 
        .ZN(n185) );
  ND2D0BWP12T30P140 U260 ( .A1(n186), .A2(n185), .ZN(n68) );
  AOI22D0BWP12T30P140 U261 ( .A1(n192), .A2(dat_i[5]), .B1(n191), .B2(
        sr8_sf[6]), .ZN(n188) );
  AOI22D0BWP12T30P140 U262 ( .A1(n194), .A2(bb8[5]), .B1(n193), .B2(sr8_sf[5]), 
        .ZN(n187) );
  ND2D0BWP12T30P140 U263 ( .A1(n188), .A2(n187), .ZN(n69) );
  AOI22D0BWP12T30P140 U264 ( .A1(n192), .A2(dat_i[1]), .B1(n191), .B2(
        sr8_sf[2]), .ZN(n190) );
  AOI22D0BWP12T30P140 U265 ( .A1(n194), .A2(bb8[1]), .B1(n193), .B2(sr8_sf[1]), 
        .ZN(n189) );
  ND2D0BWP12T30P140 U266 ( .A1(n190), .A2(n189), .ZN(n73) );
  AOI22D0BWP12T30P140 U267 ( .A1(n192), .A2(dat_i[0]), .B1(sr8_sf[1]), .B2(
        n191), .ZN(n196) );
  AOI22D0BWP12T30P140 U268 ( .A1(bb8[0]), .A2(n194), .B1(MISO), .B2(n193), 
        .ZN(n195) );
  ND2D0BWP12T30P140 U269 ( .A1(n196), .A2(n195), .ZN(n74) );
  IOA21D0BWP12T30P140 U270 ( .A1(bc[2]), .A2(n198), .B(n197), .ZN(n84) );
endmodule

