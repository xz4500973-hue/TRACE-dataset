/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:15:40 2026
/////////////////////////////////////////////////////////////


module SPIxIF ( Rst, Clk, LSB, Mode, Rate, DAV, FRE, TD, FWE, RD, SS, SCK, 
        MOSI, MISO );
  input [1:0] Mode;
  input [2:0] Rate;
  input [8:0] TD;
  output [7:0] RD;
  input Rst, Clk, LSB, DAV, MISO;
  output FRE, FWE, SS, SCK, MOSI;
  wire   SCK_Lvl, Ld, Dir, SCK_Inv, COS_SCK_Lvl, N31, pipe_SCK, N100, RdEn,
         N176, N178, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203;
  wire   [2:0] rRate;
  wire   [6:0] CE_Cntr;
  wire   [7:0] OSR;
  wire   [2:0] BitCnt;

  DFQD2BWP12T30P140 FRE_reg ( .D(N176), .CP(Clk), .Q(FRE) );
  DFQD2BWP12T30P140 FWE_reg ( .D(N178), .CP(Clk), .Q(FWE) );
  DFQD2BWP12T30P140 RdEn_reg ( .D(n113), .CP(Clk), .Q(RdEn) );
  DFQD2BWP12T30P140 OSR_reg_7_ ( .D(n78), .CP(Clk), .Q(OSR[7]) );
  DFQD2BWP12T30P140 OSR_reg_1_ ( .D(n84), .CP(Clk), .Q(OSR[1]) );
  DFQD2BWP12T30P140 rRate_reg_0_ ( .D(n105), .CP(Clk), .Q(rRate[0]) );
  DFQD2BWP12T30P140 OSR_reg_6_ ( .D(n79), .CP(Clk), .Q(OSR[6]) );
  DFQD2BWP12T30P140 OSR_reg_5_ ( .D(n80), .CP(Clk), .Q(OSR[5]) );
  DFQD2BWP12T30P140 OSR_reg_4_ ( .D(n81), .CP(Clk), .Q(OSR[4]) );
  DFQD2BWP12T30P140 OSR_reg_3_ ( .D(n82), .CP(Clk), .Q(OSR[3]) );
  DFQD2BWP12T30P140 OSR_reg_2_ ( .D(n83), .CP(Clk), .Q(OSR[2]) );
  DFQD2BWP12T30P140 OSR_reg_0_ ( .D(n85), .CP(Clk), .Q(OSR[0]) );
  DFQD2BWP12T30P140 Ld_reg ( .D(n103), .CP(Clk), .Q(Ld) );
  DFQD2BWP12T30P140 SCK_reg ( .D(N100), .CP(n202), .Q(SCK) );
  DFQD2BWP12T30P140 rRate_reg_1_ ( .D(n106), .CP(Clk), .Q(rRate[1]) );
  DFQD2BWP12T30P140 COS_SCK_Lvl_reg ( .D(N31), .CP(n203), .Q(COS_SCK_Lvl) );
  DFQD2BWP12T30P140 SS_reg ( .D(n110), .CP(Clk), .Q(SS) );
  DFQD2BWP12T30P140 pipe_SCK_reg ( .D(n95), .CP(n203), .Q(pipe_SCK) );
  DFQD2BWP12T30P140 ISR_reg_7_ ( .D(n86), .CP(n202), .Q(RD[7]) );
  DFQD2BWP12T30P140 ISR_reg_0_ ( .D(n93), .CP(n202), .Q(RD[0]) );
  DFQD2BWP12T30P140 BitCnt_reg_2_ ( .D(n111), .CP(n202), .Q(BitCnt[2]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_6_ ( .D(n96), .CP(n203), .Q(CE_Cntr[6]) );
  DFQD2BWP12T30P140 ISR_reg_1_ ( .D(n92), .CP(n202), .Q(RD[1]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_5_ ( .D(n97), .CP(n203), .Q(CE_Cntr[5]) );
  DFQD2BWP12T30P140 ISR_reg_2_ ( .D(n91), .CP(n202), .Q(RD[2]) );
  DFQD2BWP12T30P140 ISR_reg_6_ ( .D(n87), .CP(n202), .Q(RD[6]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_1_ ( .D(n101), .CP(n203), .Q(CE_Cntr[1]) );
  DFQD2BWP12T30P140 ISR_reg_5_ ( .D(n88), .CP(n202), .Q(RD[5]) );
  DFQD2BWP12T30P140 ISR_reg_3_ ( .D(n90), .CP(n202), .Q(RD[3]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_0_ ( .D(n102), .CP(n203), .Q(CE_Cntr[0]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_3_ ( .D(n99), .CP(n203), .Q(CE_Cntr[3]) );
  DFQD2BWP12T30P140 BitCnt_reg_0_ ( .D(n109), .CP(n202), .Q(BitCnt[0]) );
  DFQD2BWP12T30P140 BitCnt_reg_1_ ( .D(n108), .CP(n202), .Q(BitCnt[1]) );
  DFQD2BWP12T30P140 CE_Cntr_reg_4_ ( .D(n98), .CP(n203), .Q(CE_Cntr[4]) );
  DFQD2BWP12T30P140 SCK_Inv_reg ( .D(n112), .CP(n203), .Q(SCK_Inv) );
  DFQD2BWP12T30P140 CE_Cntr_reg_2_ ( .D(n100), .CP(n203), .Q(CE_Cntr[2]) );
  DFQD2BWP12T30P140 SCK_Lvl_reg ( .D(n104), .CP(n203), .Q(SCK_Lvl) );
  DFQD1BWP12T30P140 rRate_reg_2_ ( .D(n107), .CP(Clk), .Q(rRate[2]) );
  DFQD1BWP12T30P140 ISR_reg_4_ ( .D(n89), .CP(n202), .Q(RD[4]) );
  DFQD1BWP12T30P140 Dir_reg ( .D(n94), .CP(n203), .Q(Dir) );
  INVD0BWP12T30P140 U121 ( .I(pipe_SCK), .ZN(n192) );
  MAOI22D0BWP12T30P140 U122 ( .A1(SCK_Inv), .A2(n192), .B1(n192), .B2(SCK_Inv), 
        .ZN(n136) );
  INVD0BWP12T30P140 U123 ( .I(SS), .ZN(n198) );
  NR4D0BWP12T30P140 U124 ( .A1(CE_Cntr[1]), .A2(CE_Cntr[0]), .A3(CE_Cntr[3]), 
        .A4(CE_Cntr[2]), .ZN(n149) );
  INVD0BWP12T30P140 U125 ( .I(CE_Cntr[5]), .ZN(n185) );
  ND2D0BWP12T30P140 U126 ( .A1(n149), .A2(n185), .ZN(n114) );
  INVD0BWP12T30P140 U127 ( .I(Ld), .ZN(n191) );
  OAI31D0BWP12T30P140 U128 ( .A1(CE_Cntr[4]), .A2(CE_Cntr[6]), .A3(n114), .B(
        n191), .ZN(n147) );
  INVD0BWP12T30P140 U129 ( .I(n147), .ZN(n135) );
  NR2D0BWP12T30P140 U130 ( .A1(n198), .A2(n135), .ZN(n193) );
  INVD0BWP12T30P140 U131 ( .I(n193), .ZN(n194) );
  NR2D0BWP12T30P140 U132 ( .A1(n136), .A2(n194), .ZN(n161) );
  NR3D0BWP12T30P140 U133 ( .A1(BitCnt[0]), .A2(BitCnt[2]), .A3(BitCnt[1]), 
        .ZN(n116) );
  ND2D0BWP12T30P140 U134 ( .A1(n161), .A2(n116), .ZN(n195) );
  INVD0BWP12T30P140 U135 ( .I(DAV), .ZN(n190) );
  AOI221D0BWP12T30P140 U136 ( .A1(n195), .A2(n191), .B1(n190), .B2(n191), .C(
        Rst), .ZN(N176) );
  NR2D0BWP12T30P140 U137 ( .A1(Rst), .A2(n198), .ZN(n159) );
  INVD0BWP12T30P140 U138 ( .I(Rst), .ZN(n152) );
  ND2D0BWP12T30P140 U139 ( .A1(n198), .A2(n152), .ZN(n189) );
  INVD0BWP12T30P140 U140 ( .I(n189), .ZN(n119) );
  AO22D0BWP12T30P140 U141 ( .A1(Dir), .A2(n159), .B1(n119), .B2(LSB), .Z(n94)
         );
  INR2D1BWP12T30P140 U142 ( .A1(n136), .B1(n194), .ZN(n115) );
  AN4D0BWP12T30P140 U143 ( .A1(n116), .A2(RdEn), .A3(n115), .A4(n152), .Z(N178) );
  ND2D0BWP12T30P140 U144 ( .A1(n191), .A2(n152), .ZN(n196) );
  IND2D1BWP12T30P140 U145 ( .A1(n196), .B1(n195), .ZN(n125) );
  INVD0BWP12T30P140 U146 ( .I(n125), .ZN(n160) );
  AOI21D0BWP12T30P140 U147 ( .A1(n191), .A2(n195), .B(Rst), .ZN(n178) );
  INR2D1BWP12T30P140 U148 ( .A1(n178), .B1(n190), .ZN(n154) );
  AO22D0BWP12T30P140 U149 ( .A1(n160), .A2(RdEn), .B1(n154), .B2(TD[8]), .Z(
        n113) );
  INVD0BWP12T30P140 U150 ( .I(CE_Cntr[0]), .ZN(n137) );
  INVD0BWP12T30P140 U151 ( .I(CE_Cntr[1]), .ZN(n117) );
  NR2D0BWP12T30P140 U152 ( .A1(n119), .A2(n147), .ZN(n150) );
  ND3D0BWP12T30P140 U153 ( .A1(n137), .A2(n117), .A3(n150), .ZN(n142) );
  AOI21D0BWP12T30P140 U154 ( .A1(rRate[2]), .A2(n147), .B(Rst), .ZN(n140) );
  AOI31D0BWP12T30P140 U155 ( .A1(n117), .A2(n137), .A3(n189), .B(n147), .ZN(
        n129) );
  INR2D1BWP12T30P140 U156 ( .A1(rRate[1]), .B1(n135), .ZN(n138) );
  AOI22D0BWP12T30P140 U157 ( .A1(CE_Cntr[2]), .A2(n129), .B1(n138), .B2(
        rRate[0]), .ZN(n118) );
  OAI211D0BWP12T30P140 U158 ( .A1(CE_Cntr[2]), .A2(n142), .B(n140), .C(n118), 
        .ZN(n100) );
  ND2D0BWP12T30P140 U159 ( .A1(n119), .A2(Mode[0]), .ZN(n158) );
  NR2D0BWP12T30P140 U160 ( .A1(Mode[0]), .A2(n189), .ZN(n143) );
  AOI22D0BWP12T30P140 U161 ( .A1(SCK_Inv), .A2(n159), .B1(n143), .B2(Mode[1]), 
        .ZN(n120) );
  OAI21D0BWP12T30P140 U162 ( .A1(Mode[1]), .A2(n158), .B(n120), .ZN(n112) );
  NR2D0BWP12T30P140 U163 ( .A1(rRate[1]), .A2(rRate[0]), .ZN(n134) );
  ND2D0BWP12T30P140 U164 ( .A1(rRate[2]), .A2(n147), .ZN(n123) );
  AOI21D0BWP12T30P140 U165 ( .A1(n149), .A2(n189), .B(n147), .ZN(n121) );
  ND2D0BWP12T30P140 U166 ( .A1(n149), .A2(n150), .ZN(n130) );
  NR2D0BWP12T30P140 U167 ( .A1(CE_Cntr[4]), .A2(n130), .ZN(n186) );
  AOI211D0BWP12T30P140 U168 ( .A1(CE_Cntr[4]), .A2(n121), .B(Rst), .C(n186), 
        .ZN(n122) );
  OAI21D0BWP12T30P140 U169 ( .A1(n134), .A2(n123), .B(n122), .ZN(n98) );
  INVD0BWP12T30P140 U170 ( .I(rRate[0]), .ZN(n153) );
  AOI21D0BWP12T30P140 U171 ( .A1(Rate[0]), .A2(n198), .B(Rst), .ZN(n124) );
  OAI21D0BWP12T30P140 U172 ( .A1(n153), .A2(n198), .B(n124), .ZN(n105) );
  INVD0BWP12T30P140 U173 ( .I(BitCnt[0]), .ZN(n128) );
  NR2D0BWP12T30P140 U174 ( .A1(n161), .A2(n196), .ZN(n179) );
  INVD0BWP12T30P140 U175 ( .I(n179), .ZN(n127) );
  ND2D0BWP12T30P140 U176 ( .A1(n128), .A2(n127), .ZN(n126) );
  NR3D0BWP12T30P140 U177 ( .A1(BitCnt[0]), .A2(BitCnt[1]), .A3(n179), .ZN(n146) );
  AO211D0BWP12T30P140 U178 ( .A1(BitCnt[1]), .A2(n126), .B(n146), .C(n125), 
        .Z(n108) );
  OAI211D0BWP12T30P140 U179 ( .A1(n128), .A2(n127), .B(n160), .C(n126), .ZN(
        n109) );
  AOI32D0BWP12T30P140 U180 ( .A1(CE_Cntr[2]), .A2(CE_Cntr[3]), .A3(n150), .B1(
        n129), .B2(CE_Cntr[3]), .ZN(n131) );
  ND3D0BWP12T30P140 U181 ( .A1(n131), .A2(n130), .A3(n140), .ZN(n99) );
  NR2D0BWP12T30P140 U182 ( .A1(n147), .A2(n189), .ZN(n132) );
  AOI22D0BWP12T30P140 U183 ( .A1(CE_Cntr[0]), .A2(n132), .B1(n150), .B2(n137), 
        .ZN(n133) );
  OAI211D0BWP12T30P140 U184 ( .A1(n135), .A2(n134), .B(n140), .C(n133), .ZN(
        n102) );
  AOI21D0BWP12T30P140 U185 ( .A1(n193), .A2(n136), .B(n196), .ZN(n157) );
  NR3D0BWP12T30P140 U186 ( .A1(Dir), .A2(n157), .A3(n196), .ZN(n155) );
  INVD0BWP12T30P140 U187 ( .I(Dir), .ZN(n162) );
  NR3D0BWP12T30P140 U188 ( .A1(n157), .A2(n162), .A3(n196), .ZN(n156) );
  AO222D0BWP12T30P140 U189 ( .A1(n157), .A2(RD[3]), .B1(n155), .B2(RD[2]), 
        .C1(n156), .C2(RD[4]), .Z(n90) );
  AO222D0BWP12T30P140 U190 ( .A1(n157), .A2(RD[4]), .B1(n155), .B2(RD[3]), 
        .C1(n156), .C2(RD[5]), .Z(n89) );
  AO222D0BWP12T30P140 U191 ( .A1(n157), .A2(RD[5]), .B1(n155), .B2(RD[4]), 
        .C1(n156), .C2(RD[6]), .Z(n88) );
  AOI21D0BWP12T30P140 U192 ( .A1(n137), .A2(n189), .B(n147), .ZN(n139) );
  AOI21D0BWP12T30P140 U193 ( .A1(CE_Cntr[1]), .A2(n139), .B(n138), .ZN(n141)
         );
  ND3D0BWP12T30P140 U194 ( .A1(n142), .A2(n141), .A3(n140), .ZN(n101) );
  NR2D0BWP12T30P140 U195 ( .A1(Rst), .A2(n192), .ZN(N100) );
  AO222D0BWP12T30P140 U196 ( .A1(n157), .A2(RD[6]), .B1(n155), .B2(RD[5]), 
        .C1(n156), .C2(RD[7]), .Z(n87) );
  AO222D0BWP12T30P140 U197 ( .A1(n157), .A2(RD[2]), .B1(RD[1]), .B2(n155), 
        .C1(n156), .C2(RD[3]), .Z(n91) );
  AO221D0BWP12T30P140 U198 ( .A1(SS), .A2(rRate[2]), .B1(n198), .B2(Rate[2]), 
        .C(Rst), .Z(n107) );
  INVD0BWP12T30P140 U199 ( .I(SCK_Lvl), .ZN(n144) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n158), .A2(n144), .B1(n144), .B2(n143), .ZN(
        N31) );
  AO221D0BWP12T30P140 U201 ( .A1(SS), .A2(rRate[1]), .B1(n198), .B2(Rate[1]), 
        .C(Rst), .Z(n106) );
  AO222D0BWP12T30P140 U202 ( .A1(n157), .A2(RD[1]), .B1(n156), .B2(RD[2]), 
        .C1(n155), .C2(RD[0]), .Z(n92) );
  INVD0BWP12T30P140 U203 ( .I(BitCnt[2]), .ZN(n145) );
  OAI21D0BWP12T30P140 U204 ( .A1(n146), .A2(n145), .B(n160), .ZN(n111) );
  ND3D0BWP12T30P140 U205 ( .A1(n147), .A2(rRate[1]), .A3(rRate[2]), .ZN(n187)
         );
  INVD0BWP12T30P140 U206 ( .I(CE_Cntr[4]), .ZN(n148) );
  AOI31D0BWP12T30P140 U207 ( .A1(n149), .A2(n148), .A3(n189), .B(n147), .ZN(
        n184) );
  AOI32D0BWP12T30P140 U208 ( .A1(CE_Cntr[5]), .A2(CE_Cntr[6]), .A3(n150), .B1(
        n184), .B2(CE_Cntr[6]), .ZN(n151) );
  OAI211D0BWP12T30P140 U209 ( .A1(n187), .A2(n153), .B(n152), .C(n151), .ZN(
        n96) );
  AO222D0BWP12T30P140 U210 ( .A1(n157), .A2(RD[0]), .B1(n156), .B2(RD[1]), 
        .C1(MISO), .C2(n155), .Z(n93) );
  AO21D0BWP12T30P140 U211 ( .A1(n160), .A2(SS), .B(n154), .Z(n110) );
  AO222D0BWP12T30P140 U212 ( .A1(n157), .A2(RD[7]), .B1(MISO), .B2(n156), .C1(
        RD[6]), .C2(n155), .Z(n86) );
  CKBD0BWP12T30P140 U213 ( .I(Clk), .Z(n202) );
  CKBD0BWP12T30P140 U214 ( .I(Clk), .Z(n203) );
  OA221D0BWP12T30P140 U215 ( .A1(n162), .A2(OSR[0]), .B1(Dir), .B2(OSR[7]), 
        .C(SS), .Z(MOSI) );
  IOA21D0BWP12T30P140 U216 ( .A1(SCK_Lvl), .A2(n159), .B(n158), .ZN(n104) );
  AOI22D0BWP12T30P140 U217 ( .A1(n179), .A2(OSR[7]), .B1(n178), .B2(TD[7]), 
        .ZN(n165) );
  ND2D0BWP12T30P140 U218 ( .A1(n161), .A2(n160), .ZN(n163) );
  NR2D0BWP12T30P140 U219 ( .A1(n163), .A2(n162), .ZN(n181) );
  NR2D0BWP12T30P140 U220 ( .A1(Dir), .A2(n163), .ZN(n180) );
  AOI22D0BWP12T30P140 U221 ( .A1(n181), .A2(SCK_Lvl), .B1(n180), .B2(OSR[6]), 
        .ZN(n164) );
  ND2D0BWP12T30P140 U222 ( .A1(n165), .A2(n164), .ZN(n78) );
  AOI22D0BWP12T30P140 U223 ( .A1(OSR[1]), .A2(n179), .B1(n178), .B2(TD[1]), 
        .ZN(n167) );
  AOI22D0BWP12T30P140 U224 ( .A1(n181), .A2(OSR[2]), .B1(n180), .B2(OSR[0]), 
        .ZN(n166) );
  ND2D0BWP12T30P140 U225 ( .A1(n167), .A2(n166), .ZN(n84) );
  AOI22D0BWP12T30P140 U226 ( .A1(n179), .A2(OSR[6]), .B1(n178), .B2(TD[6]), 
        .ZN(n169) );
  AOI22D0BWP12T30P140 U227 ( .A1(n181), .A2(OSR[7]), .B1(n180), .B2(OSR[5]), 
        .ZN(n168) );
  ND2D0BWP12T30P140 U228 ( .A1(n169), .A2(n168), .ZN(n79) );
  AOI22D0BWP12T30P140 U229 ( .A1(n179), .A2(OSR[5]), .B1(n178), .B2(TD[5]), 
        .ZN(n171) );
  AOI22D0BWP12T30P140 U230 ( .A1(n181), .A2(OSR[6]), .B1(n180), .B2(OSR[4]), 
        .ZN(n170) );
  ND2D0BWP12T30P140 U231 ( .A1(n171), .A2(n170), .ZN(n80) );
  AOI22D0BWP12T30P140 U232 ( .A1(n179), .A2(OSR[4]), .B1(n178), .B2(TD[4]), 
        .ZN(n173) );
  AOI22D0BWP12T30P140 U233 ( .A1(n181), .A2(OSR[5]), .B1(n180), .B2(OSR[3]), 
        .ZN(n172) );
  ND2D0BWP12T30P140 U234 ( .A1(n173), .A2(n172), .ZN(n81) );
  AOI22D0BWP12T30P140 U235 ( .A1(n179), .A2(OSR[3]), .B1(n178), .B2(TD[3]), 
        .ZN(n175) );
  AOI22D0BWP12T30P140 U236 ( .A1(n181), .A2(OSR[4]), .B1(n180), .B2(OSR[2]), 
        .ZN(n174) );
  ND2D0BWP12T30P140 U237 ( .A1(n175), .A2(n174), .ZN(n82) );
  AOI22D0BWP12T30P140 U238 ( .A1(n179), .A2(OSR[2]), .B1(n178), .B2(TD[2]), 
        .ZN(n177) );
  AOI22D0BWP12T30P140 U239 ( .A1(n181), .A2(OSR[3]), .B1(OSR[1]), .B2(n180), 
        .ZN(n176) );
  ND2D0BWP12T30P140 U240 ( .A1(n177), .A2(n176), .ZN(n83) );
  AOI22D0BWP12T30P140 U241 ( .A1(n179), .A2(OSR[0]), .B1(n178), .B2(TD[0]), 
        .ZN(n183) );
  AOI22D0BWP12T30P140 U242 ( .A1(n181), .A2(OSR[1]), .B1(SCK_Lvl), .B2(n180), 
        .ZN(n182) );
  ND2D0BWP12T30P140 U243 ( .A1(n183), .A2(n182), .ZN(n85) );
  AOI221D0BWP12T30P140 U244 ( .A1(n186), .A2(n185), .B1(n184), .B2(CE_Cntr[5]), 
        .C(Rst), .ZN(n188) );
  ND2D0BWP12T30P140 U245 ( .A1(n188), .A2(n187), .ZN(n97) );
  NR3D0BWP12T30P140 U246 ( .A1(Ld), .A2(n190), .A3(n189), .ZN(n103) );
  AOI22D0BWP12T30P140 U247 ( .A1(Ld), .A2(SCK_Inv), .B1(SCK_Lvl), .B2(n191), 
        .ZN(n201) );
  AOI22D0BWP12T30P140 U248 ( .A1(pipe_SCK), .A2(n194), .B1(n193), .B2(n192), 
        .ZN(n200) );
  NR2D0BWP12T30P140 U249 ( .A1(DAV), .A2(n195), .ZN(n197) );
  AOI211D0BWP12T30P140 U250 ( .A1(COS_SCK_Lvl), .A2(n198), .B(n197), .C(n196), 
        .ZN(n199) );
  MUX2ND0BWP12T30P140 U251 ( .I0(n201), .I1(n200), .S(n199), .ZN(n95) );
endmodule

