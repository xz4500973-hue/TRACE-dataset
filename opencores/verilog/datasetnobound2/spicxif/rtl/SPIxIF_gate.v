/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:11:55 2026
/////////////////////////////////////////////////////////////


module SPIxIF ( Rst, Clk, LSB, Mode, Rate, DAV, FRE, TD, FWE, RD, SS, SCK, 
        MOSI, MISO );
  input [1:0] Mode;
  input [2:0] Rate;
  input [8:0] TD;
  output [7:0] RD;
  input Rst, Clk, LSB, DAV, MISO;
  output FRE, FWE, SS, SCK, MOSI;
  wire   Ld, Dir, SCK_Inv, COS_SCK_Lvl, SCK_Lvl, N33, RdEn, N160, N161, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208;
  wire   [2:0] rRate;
  wire   [6:0] CE_Cntr;
  wire   [7:0] OSR;
  wire   [2:0] BitCnt;

  DFQD2BWP12T30P140 FWE_reg ( .D(N161), .CP(Clk), .Q(FWE) );
  DFQD2BWP12T30P140 rRate_reg_0_ ( .D(n98), .CP(Clk), .Q(rRate[0]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_4_ ( .D(n88), .CP(Clk), .Q(CE_Cntr[4]) );
  DFQD2BWP12T30P140 BitCnt_reg_1_ ( .D(n92), .CP(Clk), .Q(BitCnt[1]) );
  DFQD2BWP12T30P140 RdEn_reg ( .D(n120), .CP(Clk), .Q(RdEn) );
  DFQD2BWP12T30P140 CE_Cntr_reg_6_ ( .D(n95), .CP(Clk), .Q(CE_Cntr[6]) );
  DFQD2BWP12T30P140 OSR_reg_0_ ( .D(n110), .CP(Clk), .Q(OSR[0]) );
  DFQD2BWP12T30P140 rRate_reg_1_ ( .D(n97), .CP(Clk), .Q(rRate[1]) );
  DFQD2BWP12T30P140 FRE_reg ( .D(N160), .CP(Clk), .Q(FRE) );
  DFQD2BWP12T30P140 CE_Cntr_reg_3_ ( .D(n87), .CP(Clk), .Q(CE_Cntr[3]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_5_ ( .D(n89), .CP(Clk), .Q(CE_Cntr[5]) );
  DFQD2BWP12T30P140 rRate_reg_2_ ( .D(n96), .CP(Clk), .Q(rRate[2]) );
  DFQD2BWP12T30P140 BitCnt_reg_0_ ( .D(n93), .CP(Clk), .Q(BitCnt[0]) );
  DFQD2BWP12T30P140 COS_SCK_Lvl_reg ( .D(N33), .CP(n208), .Q(COS_SCK_Lvl) );
  DFQD2BWP12T30P140 CE_Cntr_reg_0_ ( .D(n90), .CP(Clk), .Q(CE_Cntr[0]) );
  DFQD2BWP12T30P140 ISR_reg_7_ ( .D(n111), .CP(Clk), .Q(RD[7]) );
  DFQD2BWP12T30P140 ISR_reg_0_ ( .D(n118), .CP(n208), .Q(RD[0]) );
  DFQD2BWP12T30P140 SCK_reg ( .D(n94), .CP(n208), .Q(SCK) );
  DFQD2BWP12T30P140 Ld_reg ( .D(n102), .CP(Clk), .Q(Ld) );
  DFQD2BWP12T30P140 SCK_Inv_reg ( .D(n99), .CP(n208), .Q(SCK_Inv) );
  DFQD2BWP12T30P140 OSR_reg_7_ ( .D(n103), .CP(n208), .Q(OSR[7]) );
  DFQD2BWP12T30P140 ISR_reg_1_ ( .D(n117), .CP(n208), .Q(RD[1]) );
  DFQD2BWP12T30P140 OSR_reg_1_ ( .D(n109), .CP(n208), .Q(OSR[1]) );
  DFQD2BWP12T30P140 BitCnt_reg_2_ ( .D(n91), .CP(Clk), .Q(BitCnt[2]) );
  DFQD2BWP12T30P140 ISR_reg_2_ ( .D(n116), .CP(n208), .Q(RD[2]) );
  DFQD2BWP12T30P140 OSR_reg_6_ ( .D(n104), .CP(n208), .Q(OSR[6]) );
  DFQD2BWP12T30P140 OSR_reg_5_ ( .D(n105), .CP(n208), .Q(OSR[5]) );
  DFQD2BWP12T30P140 OSR_reg_4_ ( .D(n106), .CP(n208), .Q(OSR[4]) );
  DFQD2BWP12T30P140 OSR_reg_2_ ( .D(n108), .CP(n208), .Q(OSR[2]) );
  DFQD2BWP12T30P140 ISR_reg_6_ ( .D(n112), .CP(n208), .Q(RD[6]) );
  DFQD2BWP12T30P140 ISR_reg_5_ ( .D(n113), .CP(n208), .Q(RD[5]) );
  DFQD2BWP12T30P140 ISR_reg_4_ ( .D(n114), .CP(n208), .Q(RD[4]) );
  DFQD2BWP12T30P140 ISR_reg_3_ ( .D(n115), .CP(n208), .Q(RD[3]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_1_ ( .D(n85), .CP(n208), .Q(CE_Cntr[1]) );
  DFQD2BWP12T30P140 SS_reg ( .D(n119), .CP(Clk), .Q(SS) );
  DFQD2BWP12T30P140 Dir_reg ( .D(n100), .CP(n208), .Q(Dir) );
  DFQD1BWP12T30P140 CE_Cntr_reg_2_ ( .D(n86), .CP(Clk), .Q(CE_Cntr[2]) );
  DFQD1BWP12T30P140 OSR_reg_3_ ( .D(n107), .CP(n208), .Q(OSR[3]) );
  DFQD1BWP12T30P140 SCK_Lvl_reg ( .D(n101), .CP(n208), .Q(SCK_Lvl) );
  INVD0BWP12T30P140 U127 ( .I(SCK_Lvl), .ZN(n152) );
  INVD0BWP12T30P140 U128 ( .I(Rst), .ZN(n132) );
  ND2D0BWP12T30P140 U129 ( .A1(SS), .A2(n132), .ZN(n196) );
  INVD0BWP12T30P140 U130 ( .I(SS), .ZN(n204) );
  ND2D0BWP12T30P140 U131 ( .A1(n132), .A2(n204), .ZN(n150) );
  INVD0BWP12T30P140 U132 ( .I(Mode[0]), .ZN(n151) );
  OAI22D0BWP12T30P140 U133 ( .A1(n152), .A2(n196), .B1(n150), .B2(n151), .ZN(
        n101) );
  INVD0BWP12T30P140 U134 ( .I(Dir), .ZN(n170) );
  INVD0BWP12T30P140 U135 ( .I(LSB), .ZN(n121) );
  OAI22D0BWP12T30P140 U136 ( .A1(n170), .A2(n196), .B1(n150), .B2(n121), .ZN(
        n100) );
  INVD0BWP12T30P140 U137 ( .I(SCK), .ZN(n198) );
  INVD0BWP12T30P140 U138 ( .I(SCK_Inv), .ZN(n137) );
  AOI22D0BWP12T30P140 U139 ( .A1(SCK_Inv), .A2(n198), .B1(SCK), .B2(n137), 
        .ZN(n194) );
  NR4D0BWP12T30P140 U140 ( .A1(CE_Cntr[1]), .A2(CE_Cntr[0]), .A3(CE_Cntr[3]), 
        .A4(CE_Cntr[2]), .ZN(n140) );
  INVD0BWP12T30P140 U141 ( .I(CE_Cntr[4]), .ZN(n130) );
  ND2D0BWP12T30P140 U142 ( .A1(n140), .A2(n130), .ZN(n147) );
  INVD0BWP12T30P140 U143 ( .I(Ld), .ZN(n197) );
  OAI31D0BWP12T30P140 U144 ( .A1(CE_Cntr[6]), .A2(CE_Cntr[5]), .A3(n147), .B(
        n197), .ZN(n193) );
  ND2D0BWP12T30P140 U145 ( .A1(SS), .A2(n193), .ZN(n200) );
  NR2D0BWP12T30P140 U146 ( .A1(n194), .A2(n200), .ZN(n126) );
  INVD0BWP12T30P140 U147 ( .I(BitCnt[1]), .ZN(n127) );
  IIND4D0BWP12T30P140 U148 ( .A1(BitCnt[2]), .A2(BitCnt[0]), .B1(n126), .B2(
        n127), .ZN(n201) );
  NR2D0BWP12T30P140 U149 ( .A1(Rst), .A2(Ld), .ZN(n164) );
  ND2D0BWP12T30P140 U150 ( .A1(n201), .A2(n164), .ZN(n168) );
  INVD0BWP12T30P140 U151 ( .I(n168), .ZN(n183) );
  ND2D0BWP12T30P140 U152 ( .A1(DAV), .A2(n132), .ZN(n138) );
  NR2D0BWP12T30P140 U153 ( .A1(n183), .A2(n138), .ZN(n128) );
  AO21D0BWP12T30P140 U154 ( .A1(n183), .A2(SS), .B(n128), .Z(n119) );
  INVD0BWP12T30P140 U155 ( .I(rRate[0]), .ZN(n158) );
  AOI21D0BWP12T30P140 U156 ( .A1(Rate[0]), .A2(n204), .B(Rst), .ZN(n122) );
  OAI21D0BWP12T30P140 U157 ( .A1(n158), .A2(n204), .B(n122), .ZN(n98) );
  NR2D0BWP12T30P140 U158 ( .A1(n193), .A2(n196), .ZN(n143) );
  NR2D0BWP12T30P140 U159 ( .A1(n193), .A2(n150), .ZN(n160) );
  AOI21D0BWP12T30P140 U160 ( .A1(CE_Cntr[0]), .A2(n143), .B(n160), .ZN(n141)
         );
  INVD0BWP12T30P140 U161 ( .I(CE_Cntr[1]), .ZN(n142) );
  AOI21D0BWP12T30P140 U162 ( .A1(rRate[2]), .A2(n193), .B(Rst), .ZN(n162) );
  INVD0BWP12T30P140 U163 ( .I(n143), .ZN(n163) );
  NR3D0BWP12T30P140 U164 ( .A1(CE_Cntr[1]), .A2(CE_Cntr[0]), .A3(n163), .ZN(
        n154) );
  INR2D1BWP12T30P140 U165 ( .A1(n162), .B1(n154), .ZN(n123) );
  ND2D0BWP12T30P140 U166 ( .A1(rRate[1]), .A2(n193), .ZN(n157) );
  OAI211D0BWP12T30P140 U167 ( .A1(n141), .A2(n142), .B(n123), .C(n157), .ZN(
        n85) );
  AO21D0BWP12T30P140 U168 ( .A1(n140), .A2(SS), .B(n193), .Z(n129) );
  INVD0BWP12T30P140 U169 ( .I(rRate[1]), .ZN(n134) );
  ND2D0BWP12T30P140 U170 ( .A1(n158), .A2(n134), .ZN(n159) );
  NR2D0BWP12T30P140 U171 ( .A1(n147), .A2(n163), .ZN(n124) );
  AOI31D0BWP12T30P140 U172 ( .A1(rRate[2]), .A2(n193), .A3(n159), .B(n124), 
        .ZN(n125) );
  OAI211D0BWP12T30P140 U173 ( .A1(n129), .A2(n130), .B(n125), .C(n132), .ZN(
        n88) );
  INVD0BWP12T30P140 U174 ( .I(n200), .ZN(n199) );
  INVD0BWP12T30P140 U175 ( .I(n164), .ZN(n202) );
  AOI21D0BWP12T30P140 U176 ( .A1(n199), .A2(n194), .B(n202), .ZN(n167) );
  NR3D0BWP12T30P140 U177 ( .A1(Dir), .A2(n167), .A3(n202), .ZN(n165) );
  NR3D0BWP12T30P140 U178 ( .A1(n167), .A2(n202), .A3(n170), .ZN(n166) );
  AO222D0BWP12T30P140 U179 ( .A1(n167), .A2(RD[3]), .B1(n165), .B2(RD[2]), 
        .C1(n166), .C2(RD[4]), .Z(n115) );
  NR2D0BWP12T30P140 U180 ( .A1(n126), .A2(n202), .ZN(n188) );
  NR2D0BWP12T30P140 U181 ( .A1(BitCnt[0]), .A2(n188), .ZN(n139) );
  ND2D0BWP12T30P140 U182 ( .A1(n139), .A2(n127), .ZN(n184) );
  OAI211D0BWP12T30P140 U183 ( .A1(n139), .A2(n127), .B(n183), .C(n184), .ZN(
        n92) );
  AO222D0BWP12T30P140 U184 ( .A1(n167), .A2(RD[4]), .B1(n165), .B2(RD[3]), 
        .C1(n166), .C2(RD[5]), .Z(n114) );
  AO22D0BWP12T30P140 U185 ( .A1(n183), .A2(RdEn), .B1(n128), .B2(TD[8]), .Z(
        n120) );
  AO222D0BWP12T30P140 U186 ( .A1(n167), .A2(RD[5]), .B1(n165), .B2(RD[4]), 
        .C1(n166), .C2(RD[6]), .Z(n113) );
  ND3D0BWP12T30P140 U187 ( .A1(n193), .A2(rRate[2]), .A3(rRate[1]), .ZN(n146)
         );
  OAI21D0BWP12T30P140 U188 ( .A1(n130), .A2(n163), .B(n129), .ZN(n149) );
  AOI32D0BWP12T30P140 U189 ( .A1(CE_Cntr[5]), .A2(CE_Cntr[6]), .A3(n143), .B1(
        n149), .B2(CE_Cntr[6]), .ZN(n131) );
  OAI211D0BWP12T30P140 U190 ( .A1(n158), .A2(n146), .B(n132), .C(n131), .ZN(
        n95) );
  AO222D0BWP12T30P140 U191 ( .A1(n167), .A2(RD[6]), .B1(n165), .B2(RD[5]), 
        .C1(n166), .C2(RD[7]), .Z(n112) );
  AOI21D0BWP12T30P140 U192 ( .A1(Rate[1]), .A2(n204), .B(Rst), .ZN(n133) );
  OAI21D0BWP12T30P140 U193 ( .A1(n134), .A2(n204), .B(n133), .ZN(n97) );
  AOI21D0BWP12T30P140 U194 ( .A1(Mode[0]), .A2(Mode[1]), .B(n150), .ZN(n135)
         );
  OAI21D0BWP12T30P140 U195 ( .A1(Mode[0]), .A2(Mode[1]), .B(n135), .ZN(n136)
         );
  OAI21D0BWP12T30P140 U196 ( .A1(n137), .A2(n196), .B(n136), .ZN(n99) );
  OAI22D0BWP12T30P140 U197 ( .A1(Rst), .A2(n197), .B1(n138), .B2(n201), .ZN(
        N160) );
  AO211D0BWP12T30P140 U198 ( .A1(n188), .A2(BitCnt[0]), .B(n139), .C(n168), 
        .Z(n93) );
  INVD0BWP12T30P140 U199 ( .I(n140), .ZN(n145) );
  OAI21D0BWP12T30P140 U200 ( .A1(n142), .A2(n163), .B(n141), .ZN(n155) );
  AOI32D0BWP12T30P140 U201 ( .A1(CE_Cntr[2]), .A2(CE_Cntr[3]), .A3(n143), .B1(
        n155), .B2(CE_Cntr[3]), .ZN(n144) );
  OAI211D0BWP12T30P140 U202 ( .A1(n163), .A2(n145), .B(n162), .C(n144), .ZN(
        n87) );
  OAI31D0BWP12T30P140 U203 ( .A1(CE_Cntr[5]), .A2(n147), .A3(n163), .B(n146), 
        .ZN(n148) );
  AO211D0BWP12T30P140 U204 ( .A1(CE_Cntr[5]), .A2(n149), .B(Rst), .C(n148), 
        .Z(n89) );
  AO222D0BWP12T30P140 U205 ( .A1(n167), .A2(RD[2]), .B1(RD[1]), .B2(n165), 
        .C1(n166), .C2(RD[3]), .Z(n116) );
  AO221D0BWP12T30P140 U206 ( .A1(SS), .A2(rRate[2]), .B1(n204), .B2(Rate[2]), 
        .C(Rst), .Z(n96) );
  AO222D0BWP12T30P140 U207 ( .A1(n167), .A2(RD[7]), .B1(MISO), .B2(n166), .C1(
        RD[6]), .C2(n165), .Z(n111) );
  AOI221D0BWP12T30P140 U208 ( .A1(SCK_Lvl), .A2(Mode[0]), .B1(n152), .B2(n151), 
        .C(n150), .ZN(N33) );
  AO222D0BWP12T30P140 U209 ( .A1(n167), .A2(RD[1]), .B1(n166), .B2(RD[2]), 
        .C1(n165), .C2(RD[0]), .Z(n117) );
  INVD0BWP12T30P140 U210 ( .I(CE_Cntr[2]), .ZN(n153) );
  AOI22D0BWP12T30P140 U211 ( .A1(CE_Cntr[2]), .A2(n155), .B1(n154), .B2(n153), 
        .ZN(n156) );
  OAI211D0BWP12T30P140 U212 ( .A1(n158), .A2(n157), .B(n162), .C(n156), .ZN(
        n86) );
  AOI22D0BWP12T30P140 U213 ( .A1(CE_Cntr[0]), .A2(n160), .B1(n193), .B2(n159), 
        .ZN(n161) );
  OAI211D0BWP12T30P140 U214 ( .A1(CE_Cntr[0]), .A2(n163), .B(n162), .C(n161), 
        .ZN(n90) );
  AN3D0BWP12T30P140 U215 ( .A1(n164), .A2(DAV), .A3(n196), .Z(n102) );
  AO222D0BWP12T30P140 U216 ( .A1(n167), .A2(RD[0]), .B1(n166), .B2(RD[1]), 
        .C1(MISO), .C2(n165), .Z(n118) );
  CKBD0BWP12T30P140 U217 ( .I(Clk), .Z(n208) );
  OA221D0BWP12T30P140 U218 ( .A1(n170), .A2(OSR[0]), .B1(Dir), .B2(OSR[7]), 
        .C(SS), .Z(MOSI) );
  OR2D0BWP12T30P140 U219 ( .A1(n188), .A2(n168), .Z(n169) );
  NR2D0BWP12T30P140 U220 ( .A1(Dir), .A2(n169), .ZN(n187) );
  AOI22D0BWP12T30P140 U221 ( .A1(n188), .A2(OSR[3]), .B1(n187), .B2(OSR[2]), 
        .ZN(n172) );
  AOI21D0BWP12T30P140 U222 ( .A1(n197), .A2(n201), .B(Rst), .ZN(n190) );
  NR2D0BWP12T30P140 U223 ( .A1(n170), .A2(n169), .ZN(n189) );
  AOI22D0BWP12T30P140 U224 ( .A1(n190), .A2(TD[3]), .B1(n189), .B2(OSR[4]), 
        .ZN(n171) );
  ND2D0BWP12T30P140 U225 ( .A1(n172), .A2(n171), .ZN(n107) );
  AOI22D0BWP12T30P140 U226 ( .A1(n188), .A2(OSR[0]), .B1(SCK_Lvl), .B2(n187), 
        .ZN(n174) );
  AOI22D0BWP12T30P140 U227 ( .A1(n190), .A2(TD[0]), .B1(n189), .B2(OSR[1]), 
        .ZN(n173) );
  ND2D0BWP12T30P140 U228 ( .A1(n174), .A2(n173), .ZN(n110) );
  AOI22D0BWP12T30P140 U229 ( .A1(n188), .A2(OSR[2]), .B1(OSR[1]), .B2(n187), 
        .ZN(n176) );
  AOI22D0BWP12T30P140 U230 ( .A1(n190), .A2(TD[2]), .B1(n189), .B2(OSR[3]), 
        .ZN(n175) );
  ND2D0BWP12T30P140 U231 ( .A1(n176), .A2(n175), .ZN(n108) );
  AOI22D0BWP12T30P140 U232 ( .A1(n188), .A2(OSR[4]), .B1(n187), .B2(OSR[3]), 
        .ZN(n178) );
  AOI22D0BWP12T30P140 U233 ( .A1(n190), .A2(TD[4]), .B1(n189), .B2(OSR[5]), 
        .ZN(n177) );
  ND2D0BWP12T30P140 U234 ( .A1(n178), .A2(n177), .ZN(n106) );
  AOI22D0BWP12T30P140 U235 ( .A1(n188), .A2(OSR[5]), .B1(n187), .B2(OSR[4]), 
        .ZN(n180) );
  AOI22D0BWP12T30P140 U236 ( .A1(n190), .A2(TD[5]), .B1(n189), .B2(OSR[6]), 
        .ZN(n179) );
  ND2D0BWP12T30P140 U237 ( .A1(n180), .A2(n179), .ZN(n105) );
  AOI22D0BWP12T30P140 U238 ( .A1(n188), .A2(OSR[6]), .B1(n187), .B2(OSR[5]), 
        .ZN(n182) );
  AOI22D0BWP12T30P140 U239 ( .A1(n190), .A2(TD[6]), .B1(n189), .B2(OSR[7]), 
        .ZN(n181) );
  ND2D0BWP12T30P140 U240 ( .A1(n182), .A2(n181), .ZN(n104) );
  IOA21D0BWP12T30P140 U241 ( .A1(BitCnt[2]), .A2(n184), .B(n183), .ZN(n91) );
  AOI22D0BWP12T30P140 U242 ( .A1(n188), .A2(OSR[1]), .B1(n187), .B2(OSR[0]), 
        .ZN(n186) );
  AOI22D0BWP12T30P140 U243 ( .A1(n190), .A2(TD[1]), .B1(n189), .B2(OSR[2]), 
        .ZN(n185) );
  ND2D0BWP12T30P140 U244 ( .A1(n186), .A2(n185), .ZN(n109) );
  AOI22D0BWP12T30P140 U245 ( .A1(n188), .A2(OSR[7]), .B1(n187), .B2(OSR[6]), 
        .ZN(n192) );
  AOI22D0BWP12T30P140 U246 ( .A1(n190), .A2(TD[7]), .B1(n189), .B2(SCK_Lvl), 
        .ZN(n191) );
  ND2D0BWP12T30P140 U247 ( .A1(n192), .A2(n191), .ZN(n103) );
  IND4D1BWP12T30P140 U248 ( .A1(BitCnt[2]), .B1(RdEn), .B2(n194), .B3(n193), 
        .ZN(n195) );
  NR4D0BWP12T30P140 U249 ( .A1(BitCnt[1]), .A2(BitCnt[0]), .A3(n196), .A4(n195), .ZN(N161) );
  AOI22D0BWP12T30P140 U250 ( .A1(Ld), .A2(SCK_Inv), .B1(SCK_Lvl), .B2(n197), 
        .ZN(n207) );
  AOI22D0BWP12T30P140 U251 ( .A1(SCK), .A2(n200), .B1(n199), .B2(n198), .ZN(
        n206) );
  NR2D0BWP12T30P140 U252 ( .A1(DAV), .A2(n201), .ZN(n203) );
  AOI211D0BWP12T30P140 U253 ( .A1(COS_SCK_Lvl), .A2(n204), .B(n203), .C(n202), 
        .ZN(n205) );
  MUX2ND0BWP12T30P140 U254 ( .I0(n207), .I1(n206), .S(n205), .ZN(n94) );
endmodule

