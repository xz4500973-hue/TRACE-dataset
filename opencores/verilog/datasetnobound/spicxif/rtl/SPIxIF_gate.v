/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:47:21 2026
/////////////////////////////////////////////////////////////


module SPIxIF ( Rst, Clk, LSB, Mode, Rate, DAV, FRE, TD, FWE, RD, SS, SCK, 
        MOSI, MISO );
  input [1:0] Mode;
  input [2:0] Rate;
  input [8:0] TD;
  output [7:0] RD;
  input Rst, Clk, LSB, DAV, MISO;
  output FRE, FWE, SS, SCK, MOSI;
  wire   Dir, SCK_Inv, SCK_Lvl, COS_SCK_Lvl, N35, Ld, RdEn, N191, N193, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204;
  wire   [2:0] rRate;
  wire   [6:0] CE_Cntr;
  wire   [7:0] OSR;
  wire   [2:0] BitCnt;

  DFQD2BWP12T30P140 FRE_reg ( .D(N191), .CP(Clk), .Q(FRE) );
  DFQD2BWP12T30P140 FWE_reg ( .D(N193), .CP(Clk), .Q(FWE) );
  DFQD2BWP12T30P140 RdEn_reg ( .D(n81), .CP(Clk), .Q(RdEn) );
  DFQD2BWP12T30P140 OSR_reg_7_ ( .D(n82), .CP(Clk), .Q(OSR[7]) );
  DFQD2BWP12T30P140 rRate_reg_0_ ( .D(n114), .CP(Clk), .Q(rRate[0]) );
  DFQD2BWP12T30P140 OSR_reg_1_ ( .D(n88), .CP(Clk), .Q(OSR[1]) );
  DFQD2BWP12T30P140 OSR_reg_6_ ( .D(n83), .CP(Clk), .Q(OSR[6]) );
  DFQD2BWP12T30P140 OSR_reg_5_ ( .D(n84), .CP(Clk), .Q(OSR[5]) );
  DFQD2BWP12T30P140 OSR_reg_4_ ( .D(n85), .CP(Clk), .Q(OSR[4]) );
  DFQD2BWP12T30P140 OSR_reg_3_ ( .D(n86), .CP(Clk), .Q(OSR[3]) );
  DFQD2BWP12T30P140 OSR_reg_2_ ( .D(n87), .CP(Clk), .Q(OSR[2]) );
  DFQD2BWP12T30P140 OSR_reg_0_ ( .D(n89), .CP(Clk), .Q(OSR[0]) );
  DFQD2BWP12T30P140 rRate_reg_2_ ( .D(n112), .CP(Clk), .Q(rRate[2]) );
  DFQD2BWP12T30P140 rRate_reg_1_ ( .D(n113), .CP(Clk), .Q(rRate[1]) );
  DFQD2BWP12T30P140 SCK_reg ( .D(n99), .CP(Clk), .Q(SCK) );
  DFQD2BWP12T30P140 ISR_reg_7_ ( .D(n90), .CP(n204), .Q(RD[7]) );
  DFQD2BWP12T30P140 ISR_reg_0_ ( .D(n97), .CP(Clk), .Q(RD[0]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_6_ ( .D(n111), .CP(n204), .Q(CE_Cntr[6]) );
  DFQD2BWP12T30P140 ISR_reg_1_ ( .D(n96), .CP(n204), .Q(RD[1]) );
  DFQD2BWP12T30P140 BitCnt_reg_1_ ( .D(n101), .CP(n204), .Q(BitCnt[1]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_5_ ( .D(n109), .CP(n204), .Q(CE_Cntr[5]) );
  DFQD2BWP12T30P140 BitCnt_reg_2_ ( .D(n100), .CP(Clk), .Q(BitCnt[2]) );
  DFQD2BWP12T30P140 ISR_reg_2_ ( .D(n95), .CP(n204), .Q(RD[2]) );
  DFQD2BWP12T30P140 Ld_reg ( .D(n115), .CP(n204), .Q(Ld) );
  DFQD2BWP12T30P140 ISR_reg_6_ ( .D(n91), .CP(Clk), .Q(RD[6]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_1_ ( .D(n105), .CP(n204), .Q(CE_Cntr[1]) );
  DFQD2BWP12T30P140 ISR_reg_5_ ( .D(n92), .CP(n204), .Q(RD[5]) );
  DFQD2BWP12T30P140 ISR_reg_4_ ( .D(n93), .CP(n204), .Q(RD[4]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_0_ ( .D(n110), .CP(n204), .Q(CE_Cntr[0]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_3_ ( .D(n107), .CP(n204), .Q(CE_Cntr[3]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_4_ ( .D(n108), .CP(n204), .Q(CE_Cntr[4]) );
  DFQD2BWP12T30P140 BitCnt_reg_0_ ( .D(n102), .CP(n204), .Q(BitCnt[0]) );
  DFQD2BWP12T30P140 SCK_Inv_reg ( .D(n103), .CP(n204), .Q(SCK_Inv) );
  DFQD2BWP12T30P140 CE_Cntr_reg_2_ ( .D(n106), .CP(n204), .Q(CE_Cntr[2]) );
  DFQD2BWP12T30P140 SCK_Lvl_reg ( .D(n104), .CP(n204), .Q(SCK_Lvl) );
  DFQD2BWP12T30P140 Dir_reg ( .D(n98), .CP(n204), .Q(Dir) );
  DFQD1BWP12T30P140 COS_SCK_Lvl_reg ( .D(N35), .CP(n204), .Q(COS_SCK_Lvl) );
  DFQD1BWP12T30P140 ISR_reg_3_ ( .D(n94), .CP(n204), .Q(RD[3]) );
  DFQD1BWP12T30P140 SS_reg ( .D(n116), .CP(Clk), .Q(SS) );
  INVD0BWP12T30P140 U123 ( .I(SCK), .ZN(n194) );
  MAOI22D0BWP12T30P140 U124 ( .A1(SCK_Inv), .A2(n194), .B1(n194), .B2(SCK_Inv), 
        .ZN(n188) );
  INVD0BWP12T30P140 U125 ( .I(SS), .ZN(n200) );
  NR4D0BWP12T30P140 U126 ( .A1(CE_Cntr[1]), .A2(CE_Cntr[0]), .A3(CE_Cntr[3]), 
        .A4(CE_Cntr[2]), .ZN(n150) );
  INVD0BWP12T30P140 U127 ( .I(CE_Cntr[5]), .ZN(n184) );
  ND2D0BWP12T30P140 U128 ( .A1(n150), .A2(n184), .ZN(n117) );
  INVD0BWP12T30P140 U129 ( .I(Ld), .ZN(n193) );
  OAI31D0BWP12T30P140 U130 ( .A1(CE_Cntr[4]), .A2(CE_Cntr[6]), .A3(n117), .B(
        n193), .ZN(n148) );
  INVD0BWP12T30P140 U131 ( .I(n148), .ZN(n135) );
  NR2D0BWP12T30P140 U132 ( .A1(n200), .A2(n135), .ZN(n195) );
  INVD0BWP12T30P140 U133 ( .I(n195), .ZN(n196) );
  NR2D0BWP12T30P140 U134 ( .A1(n188), .A2(n196), .ZN(n124) );
  INR4D0BWP12T30P140 U135 ( .A1(n124), .B1(BitCnt[0]), .B2(BitCnt[2]), .B3(
        BitCnt[1]), .ZN(n118) );
  INVD0BWP12T30P140 U136 ( .I(Rst), .ZN(n153) );
  ND2D0BWP12T30P140 U137 ( .A1(n193), .A2(n153), .ZN(n198) );
  NR2D0BWP12T30P140 U138 ( .A1(n118), .A2(n198), .ZN(n158) );
  INVD0BWP12T30P140 U139 ( .I(n118), .ZN(n197) );
  AOI21D0BWP12T30P140 U140 ( .A1(n193), .A2(n197), .B(Rst), .ZN(n177) );
  INVD0BWP12T30P140 U141 ( .I(DAV), .ZN(n192) );
  INR2D1BWP12T30P140 U142 ( .A1(n177), .B1(n192), .ZN(n121) );
  AO21D0BWP12T30P140 U143 ( .A1(n158), .A2(SS), .B(n121), .Z(n116) );
  NR2D0BWP12T30P140 U144 ( .A1(Rst), .A2(n200), .ZN(n164) );
  ND2D0BWP12T30P140 U145 ( .A1(n200), .A2(n153), .ZN(n191) );
  INVD0BWP12T30P140 U146 ( .I(n191), .ZN(n122) );
  AO22D0BWP12T30P140 U147 ( .A1(Dir), .A2(n164), .B1(n122), .B2(LSB), .Z(n98)
         );
  AOI221D0BWP12T30P140 U148 ( .A1(n197), .A2(n193), .B1(n192), .B2(n193), .C(
        Rst), .ZN(N191) );
  INVD0BWP12T30P140 U149 ( .I(CE_Cntr[0]), .ZN(n136) );
  INVD0BWP12T30P140 U150 ( .I(CE_Cntr[1]), .ZN(n119) );
  NR2D0BWP12T30P140 U151 ( .A1(n148), .A2(n200), .ZN(n151) );
  ND3D0BWP12T30P140 U152 ( .A1(n136), .A2(n119), .A3(n151), .ZN(n141) );
  AOI21D0BWP12T30P140 U153 ( .A1(rRate[2]), .A2(n148), .B(Rst), .ZN(n139) );
  AOI31D0BWP12T30P140 U154 ( .A1(SS), .A2(n119), .A3(n136), .B(n148), .ZN(n129) );
  INR2D1BWP12T30P140 U155 ( .A1(rRate[1]), .B1(n135), .ZN(n137) );
  AOI22D0BWP12T30P140 U156 ( .A1(CE_Cntr[2]), .A2(n129), .B1(rRate[0]), .B2(
        n137), .ZN(n120) );
  OAI211D0BWP12T30P140 U157 ( .A1(CE_Cntr[2]), .A2(n141), .B(n139), .C(n120), 
        .ZN(n106) );
  AO22D0BWP12T30P140 U158 ( .A1(n158), .A2(RdEn), .B1(n121), .B2(TD[8]), .Z(
        n81) );
  ND2D0BWP12T30P140 U159 ( .A1(n122), .A2(Mode[0]), .ZN(n163) );
  NR2D0BWP12T30P140 U160 ( .A1(Mode[0]), .A2(n191), .ZN(n142) );
  AOI22D0BWP12T30P140 U161 ( .A1(SCK_Inv), .A2(n164), .B1(n142), .B2(Mode[1]), 
        .ZN(n123) );
  OAI21D0BWP12T30P140 U162 ( .A1(Mode[1]), .A2(n163), .B(n123), .ZN(n103) );
  NR2D0BWP12T30P140 U163 ( .A1(n124), .A2(n198), .ZN(n178) );
  NR2D0BWP12T30P140 U164 ( .A1(BitCnt[0]), .A2(n178), .ZN(n147) );
  INVD0BWP12T30P140 U165 ( .I(n158), .ZN(n144) );
  AO211D0BWP12T30P140 U166 ( .A1(BitCnt[0]), .A2(n178), .B(n147), .C(n144), 
        .Z(n102) );
  INVD0BWP12T30P140 U167 ( .I(rRate[0]), .ZN(n154) );
  AOI21D0BWP12T30P140 U168 ( .A1(Rate[0]), .A2(n200), .B(Rst), .ZN(n125) );
  OAI21D0BWP12T30P140 U169 ( .A1(n154), .A2(n200), .B(n125), .ZN(n114) );
  NR2D0BWP12T30P140 U170 ( .A1(rRate[0]), .A2(rRate[1]), .ZN(n134) );
  ND2D0BWP12T30P140 U171 ( .A1(rRate[2]), .A2(n148), .ZN(n128) );
  AOI21D0BWP12T30P140 U172 ( .A1(n150), .A2(SS), .B(n148), .ZN(n126) );
  ND2D0BWP12T30P140 U173 ( .A1(n150), .A2(n151), .ZN(n131) );
  NR2D0BWP12T30P140 U174 ( .A1(CE_Cntr[4]), .A2(n131), .ZN(n185) );
  AOI211D0BWP12T30P140 U175 ( .A1(CE_Cntr[4]), .A2(n126), .B(Rst), .C(n185), 
        .ZN(n127) );
  OAI21D0BWP12T30P140 U176 ( .A1(n134), .A2(n128), .B(n127), .ZN(n108) );
  AOI32D0BWP12T30P140 U177 ( .A1(CE_Cntr[2]), .A2(CE_Cntr[3]), .A3(n151), .B1(
        n129), .B2(CE_Cntr[3]), .ZN(n130) );
  ND3D0BWP12T30P140 U178 ( .A1(n131), .A2(n130), .A3(n139), .ZN(n107) );
  NR2D0BWP12T30P140 U179 ( .A1(SS), .A2(n148), .ZN(n132) );
  AOI22D0BWP12T30P140 U180 ( .A1(CE_Cntr[0]), .A2(n132), .B1(n151), .B2(n136), 
        .ZN(n133) );
  OAI211D0BWP12T30P140 U181 ( .A1(n135), .A2(n134), .B(n139), .C(n133), .ZN(
        n110) );
  AOI21D0BWP12T30P140 U182 ( .A1(n195), .A2(n188), .B(n198), .ZN(n157) );
  NR3D0BWP12T30P140 U183 ( .A1(Dir), .A2(n157), .A3(n198), .ZN(n155) );
  INVD0BWP12T30P140 U184 ( .I(Dir), .ZN(n159) );
  NR3D0BWP12T30P140 U185 ( .A1(n157), .A2(n159), .A3(n198), .ZN(n156) );
  AO222D0BWP12T30P140 U186 ( .A1(n157), .A2(RD[3]), .B1(n155), .B2(RD[2]), 
        .C1(n156), .C2(RD[4]), .Z(n94) );
  AO222D0BWP12T30P140 U187 ( .A1(n157), .A2(RD[7]), .B1(MISO), .B2(n156), .C1(
        RD[6]), .C2(n155), .Z(n90) );
  AO222D0BWP12T30P140 U188 ( .A1(n157), .A2(RD[4]), .B1(n155), .B2(RD[3]), 
        .C1(n156), .C2(RD[5]), .Z(n93) );
  AO222D0BWP12T30P140 U189 ( .A1(n157), .A2(RD[5]), .B1(n155), .B2(RD[4]), 
        .C1(n156), .C2(RD[6]), .Z(n92) );
  AOI21D0BWP12T30P140 U190 ( .A1(SS), .A2(n136), .B(n148), .ZN(n138) );
  AOI21D0BWP12T30P140 U191 ( .A1(CE_Cntr[1]), .A2(n138), .B(n137), .ZN(n140)
         );
  ND3D0BWP12T30P140 U192 ( .A1(n141), .A2(n140), .A3(n139), .ZN(n105) );
  AO222D0BWP12T30P140 U193 ( .A1(n157), .A2(RD[6]), .B1(n155), .B2(RD[5]), 
        .C1(n156), .C2(RD[7]), .Z(n91) );
  AO221D0BWP12T30P140 U194 ( .A1(SS), .A2(rRate[2]), .B1(n200), .B2(Rate[2]), 
        .C(Rst), .Z(n112) );
  AO221D0BWP12T30P140 U195 ( .A1(SS), .A2(rRate[1]), .B1(n200), .B2(Rate[1]), 
        .C(Rst), .Z(n113) );
  AO222D0BWP12T30P140 U196 ( .A1(n157), .A2(RD[2]), .B1(RD[1]), .B2(n155), 
        .C1(n156), .C2(RD[3]), .Z(n95) );
  INVD0BWP12T30P140 U197 ( .I(SCK_Lvl), .ZN(n143) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n163), .A2(n143), .B1(n143), .B2(n142), .ZN(
        N35) );
  INVD0BWP12T30P140 U199 ( .I(BitCnt[1]), .ZN(n146) );
  ND2D0BWP12T30P140 U200 ( .A1(n147), .A2(n146), .ZN(n145) );
  AO21D0BWP12T30P140 U201 ( .A1(BitCnt[2]), .A2(n145), .B(n144), .Z(n100) );
  AO222D0BWP12T30P140 U202 ( .A1(n157), .A2(RD[1]), .B1(n156), .B2(RD[2]), 
        .C1(n155), .C2(RD[0]), .Z(n96) );
  OAI211D0BWP12T30P140 U203 ( .A1(n147), .A2(n146), .B(n158), .C(n145), .ZN(
        n101) );
  ND3D0BWP12T30P140 U204 ( .A1(n148), .A2(rRate[2]), .A3(rRate[1]), .ZN(n186)
         );
  INVD0BWP12T30P140 U205 ( .I(CE_Cntr[4]), .ZN(n149) );
  AOI31D0BWP12T30P140 U206 ( .A1(n150), .A2(SS), .A3(n149), .B(n148), .ZN(n183) );
  AOI32D0BWP12T30P140 U207 ( .A1(CE_Cntr[5]), .A2(CE_Cntr[6]), .A3(n151), .B1(
        n183), .B2(CE_Cntr[6]), .ZN(n152) );
  OAI211D0BWP12T30P140 U208 ( .A1(n154), .A2(n186), .B(n153), .C(n152), .ZN(
        n111) );
  AO222D0BWP12T30P140 U209 ( .A1(n157), .A2(RD[0]), .B1(n156), .B2(RD[1]), 
        .C1(MISO), .C2(n155), .Z(n97) );
  CKBD0BWP12T30P140 U210 ( .I(Clk), .Z(n204) );
  OA221D0BWP12T30P140 U211 ( .A1(n159), .A2(OSR[0]), .B1(Dir), .B2(OSR[7]), 
        .C(SS), .Z(MOSI) );
  AOI22D0BWP12T30P140 U212 ( .A1(n178), .A2(OSR[4]), .B1(n177), .B2(TD[4]), 
        .ZN(n162) );
  IND2D1BWP12T30P140 U213 ( .A1(n178), .B1(n158), .ZN(n160) );
  NR2D0BWP12T30P140 U214 ( .A1(n160), .A2(n159), .ZN(n180) );
  NR2D0BWP12T30P140 U215 ( .A1(Dir), .A2(n160), .ZN(n179) );
  AOI22D0BWP12T30P140 U216 ( .A1(n180), .A2(OSR[5]), .B1(n179), .B2(OSR[3]), 
        .ZN(n161) );
  ND2D0BWP12T30P140 U217 ( .A1(n162), .A2(n161), .ZN(n85) );
  IOA21D0BWP12T30P140 U218 ( .A1(SCK_Lvl), .A2(n164), .B(n163), .ZN(n104) );
  AOI22D0BWP12T30P140 U219 ( .A1(n178), .A2(OSR[7]), .B1(n177), .B2(TD[7]), 
        .ZN(n166) );
  AOI22D0BWP12T30P140 U220 ( .A1(n180), .A2(SCK_Lvl), .B1(n179), .B2(OSR[6]), 
        .ZN(n165) );
  ND2D0BWP12T30P140 U221 ( .A1(n166), .A2(n165), .ZN(n82) );
  AOI22D0BWP12T30P140 U222 ( .A1(n178), .A2(OSR[1]), .B1(n177), .B2(TD[1]), 
        .ZN(n168) );
  AOI22D0BWP12T30P140 U223 ( .A1(n180), .A2(OSR[2]), .B1(n179), .B2(OSR[0]), 
        .ZN(n167) );
  ND2D0BWP12T30P140 U224 ( .A1(n168), .A2(n167), .ZN(n88) );
  AOI22D0BWP12T30P140 U225 ( .A1(n178), .A2(OSR[6]), .B1(n177), .B2(TD[6]), 
        .ZN(n170) );
  AOI22D0BWP12T30P140 U226 ( .A1(n180), .A2(OSR[7]), .B1(n179), .B2(OSR[5]), 
        .ZN(n169) );
  ND2D0BWP12T30P140 U227 ( .A1(n170), .A2(n169), .ZN(n83) );
  AOI22D0BWP12T30P140 U228 ( .A1(n178), .A2(OSR[5]), .B1(n177), .B2(TD[5]), 
        .ZN(n172) );
  AOI22D0BWP12T30P140 U229 ( .A1(n180), .A2(OSR[6]), .B1(n179), .B2(OSR[4]), 
        .ZN(n171) );
  ND2D0BWP12T30P140 U230 ( .A1(n172), .A2(n171), .ZN(n84) );
  AOI22D0BWP12T30P140 U231 ( .A1(n178), .A2(OSR[3]), .B1(n177), .B2(TD[3]), 
        .ZN(n174) );
  AOI22D0BWP12T30P140 U232 ( .A1(n180), .A2(OSR[4]), .B1(n179), .B2(OSR[2]), 
        .ZN(n173) );
  ND2D0BWP12T30P140 U233 ( .A1(n174), .A2(n173), .ZN(n86) );
  AOI22D0BWP12T30P140 U234 ( .A1(n178), .A2(OSR[2]), .B1(n177), .B2(TD[2]), 
        .ZN(n176) );
  AOI22D0BWP12T30P140 U235 ( .A1(n180), .A2(OSR[3]), .B1(OSR[1]), .B2(n179), 
        .ZN(n175) );
  ND2D0BWP12T30P140 U236 ( .A1(n176), .A2(n175), .ZN(n87) );
  AOI22D0BWP12T30P140 U237 ( .A1(n178), .A2(OSR[0]), .B1(n177), .B2(TD[0]), 
        .ZN(n182) );
  AOI22D0BWP12T30P140 U238 ( .A1(n180), .A2(OSR[1]), .B1(SCK_Lvl), .B2(n179), 
        .ZN(n181) );
  ND2D0BWP12T30P140 U239 ( .A1(n182), .A2(n181), .ZN(n89) );
  AOI221D0BWP12T30P140 U240 ( .A1(n185), .A2(n184), .B1(n183), .B2(CE_Cntr[5]), 
        .C(Rst), .ZN(n187) );
  ND2D0BWP12T30P140 U241 ( .A1(n187), .A2(n186), .ZN(n109) );
  NR2D0BWP12T30P140 U242 ( .A1(BitCnt[0]), .A2(BitCnt[1]), .ZN(n189) );
  ND4D0BWP12T30P140 U243 ( .A1(n195), .A2(n189), .A3(RdEn), .A4(n188), .ZN(
        n190) );
  NR3D0BWP12T30P140 U244 ( .A1(BitCnt[2]), .A2(Rst), .A3(n190), .ZN(N193) );
  NR3D0BWP12T30P140 U245 ( .A1(Ld), .A2(n192), .A3(n191), .ZN(n115) );
  AOI22D0BWP12T30P140 U246 ( .A1(Ld), .A2(SCK_Inv), .B1(SCK_Lvl), .B2(n193), 
        .ZN(n203) );
  AOI22D0BWP12T30P140 U247 ( .A1(SCK), .A2(n196), .B1(n195), .B2(n194), .ZN(
        n202) );
  NR2D0BWP12T30P140 U248 ( .A1(DAV), .A2(n197), .ZN(n199) );
  AOI211D0BWP12T30P140 U249 ( .A1(COS_SCK_Lvl), .A2(n200), .B(n199), .C(n198), 
        .ZN(n201) );
  MUX2ND0BWP12T30P140 U250 ( .I0(n203), .I1(n202), .S(n201), .ZN(n99) );
endmodule

