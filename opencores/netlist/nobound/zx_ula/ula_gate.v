/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:54:49 2026
/////////////////////////////////////////////////////////////


module ula ( clk14, a, din, dout, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, clkcpu, 
        msk_int_n, va, vramdout, vramdin, vramoe, vramcs, vramwe, ear, mic, 
        spk, kbrows, kbcolumns, r, g, b, i, csync );
  input [15:0] a;
  input [7:0] din;
  output [7:0] dout;
  output [13:0] va;
  input [7:0] vramdout;
  output [7:0] vramdin;
  output [7:0] kbrows;
  input [4:0] kbcolumns;
  input clk14, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, ear;
  output clkcpu, msk_int_n, vramoe, vramcs, vramwe, mic, spk, r, g, b, i,
         csync;
  wire   clk7, N41, N42, N43, N44, N45, N46, N47, N48, N49, HBlank_n, HSync_n,
         VBlank_n, VSync_n, Border_n, VidEN_n, DataLatch_n, AttrLatch_n, N94,
         SLoad, AOLatch_n, N99, N100, N101, N102, N103, N104, N105, N106, N109,
         N110, N111, N112, N113, N114, N115, N116, N119, N120, N121, N122,
         ioreq_n, ioreqtw3, mreqt23, n2, n3, n5, n7, n9, n11, n13, n15, n17,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269;
  wire   [8:0] hc;
  wire   [8:0] vc;
  wire   [7:0] BitmapReg;
  wire   [7:0] SRegister;
  wire   [7:0] AttrReg;
  wire   [2:0] BorderColor;
  wire   [7:0] AttrOut;
  wire   [4:0] FlashCnt;
  wire   [7:3] c;
  wire   [7:3] v;

  BUFTD4BWP12T30P140 kbrows_tri_0_ ( .I(n2), .OE(n17), .Z(kbrows[0]) );
  BUFTD4BWP12T30P140 kbrows_tri_1_ ( .I(n2), .OE(n15), .Z(kbrows[1]) );
  BUFTD4BWP12T30P140 kbrows_tri_2_ ( .I(n2), .OE(n13), .Z(kbrows[2]) );
  BUFTD4BWP12T30P140 kbrows_tri_3_ ( .I(n2), .OE(n11), .Z(kbrows[3]) );
  BUFTD4BWP12T30P140 kbrows_tri_4_ ( .I(n2), .OE(n9), .Z(kbrows[4]) );
  BUFTD4BWP12T30P140 kbrows_tri_5_ ( .I(n2), .OE(n7), .Z(kbrows[5]) );
  BUFTD4BWP12T30P140 kbrows_tri_6_ ( .I(n2), .OE(n5), .Z(kbrows[6]) );
  BUFTD4BWP12T30P140 kbrows_tri_7_ ( .I(n2), .OE(n3), .Z(kbrows[7]) );
  DFND1BWP12T30P140 FlashCnt_reg_4_ ( .D(N122), .CPN(VSync_n), .Q(FlashCnt[4]), 
        .QN(n266) );
  DFND1BWP12T30P140 VBlank_n_reg ( .D(n132), .CPN(n268), .Q(VBlank_n), .QN(
        n265) );
  DFND1BWP12T30P140 FlashCnt_reg_0_ ( .D(n264), .CPN(VSync_n), .Q(FlashCnt[0]), 
        .QN(n264) );
  DFND1BWP12T30P140 FlashCnt_reg_2_ ( .D(N120), .CPN(VSync_n), .QN(n263) );
  DFND1BWP12T30P140 v_reg_0_ ( .D(n117), .CPN(n267), .QN(n262) );
  DFND1BWP12T30P140 v_reg_1_ ( .D(n118), .CPN(n267), .QN(n261) );
  DFND1BWP12T30P140 v_reg_6_ ( .D(n123), .CPN(n267), .Q(v[6]), .QN(n260) );
  DFND1BWP12T30P140 v_reg_7_ ( .D(n124), .CPN(n267), .Q(v[7]), .QN(n259) );
  DFND1BWP12T30P140 v_reg_2_ ( .D(n119), .CPN(n267), .QN(n258) );
  DFND1BWP12T30P140 VSync_n_reg ( .D(n131), .CPN(clk7), .Q(VSync_n), .QN(n257)
         );
  DFND1BWP12T30P140 VidEN_n_reg ( .D(n107), .CPN(n268), .Q(VidEN_n), .QN(n256)
         );
  DFND1BWP12T30P140 AttrOut_reg_7_ ( .D(N116), .CPN(AOLatch_n), .Q(AttrOut[7])
         );
  DFND1BWP12T30P140 AttrOut_reg_4_ ( .D(N113), .CPN(AOLatch_n), .Q(AttrOut[4])
         );
  DFND1BWP12T30P140 AttrOut_reg_3_ ( .D(N112), .CPN(AOLatch_n), .Q(AttrOut[3])
         );
  DFND1BWP12T30P140 AttrOut_reg_5_ ( .D(N114), .CPN(AOLatch_n), .Q(AttrOut[5])
         );
  DFND1BWP12T30P140 AttrOut_reg_1_ ( .D(N110), .CPN(AOLatch_n), .Q(AttrOut[1])
         );
  DFND1BWP12T30P140 AttrOut_reg_0_ ( .D(N109), .CPN(AOLatch_n), .Q(AttrOut[0])
         );
  DFND1BWP12T30P140 AttrOut_reg_2_ ( .D(N111), .CPN(AOLatch_n), .Q(AttrOut[2])
         );
  DFND1BWP12T30P140 BitmapReg_reg_0_ ( .D(vramdout[0]), .CPN(DataLatch_n), .Q(
        BitmapReg[0]) );
  DFND1BWP12T30P140 AttrOut_reg_6_ ( .D(N115), .CPN(AOLatch_n), .Q(AttrOut[6])
         );
  DFND1BWP12T30P140 BitmapReg_reg_7_ ( .D(vramdout[7]), .CPN(DataLatch_n), .Q(
        BitmapReg[7]) );
  DFND1BWP12T30P140 BitmapReg_reg_6_ ( .D(vramdout[6]), .CPN(DataLatch_n), .Q(
        BitmapReg[6]) );
  DFND1BWP12T30P140 BitmapReg_reg_5_ ( .D(vramdout[5]), .CPN(DataLatch_n), .Q(
        BitmapReg[5]) );
  DFND1BWP12T30P140 BitmapReg_reg_4_ ( .D(vramdout[4]), .CPN(DataLatch_n), .Q(
        BitmapReg[4]) );
  DFND1BWP12T30P140 BitmapReg_reg_3_ ( .D(vramdout[3]), .CPN(DataLatch_n), .Q(
        BitmapReg[3]) );
  DFND1BWP12T30P140 BitmapReg_reg_2_ ( .D(vramdout[2]), .CPN(DataLatch_n), .Q(
        BitmapReg[2]) );
  DFND1BWP12T30P140 BitmapReg_reg_1_ ( .D(vramdout[1]), .CPN(DataLatch_n), .Q(
        BitmapReg[1]) );
  DFND1BWP12T30P140 INT_n_reg ( .D(n130), .CPN(clk7), .Q(msk_int_n) );
  DFND1BWP12T30P140 SRegister_reg_1_ ( .D(N100), .CPN(clk7), .Q(SRegister[1])
         );
  DFND1BWP12T30P140 SRegister_reg_3_ ( .D(N102), .CPN(clk7), .Q(SRegister[3])
         );
  DFND1BWP12T30P140 SRegister_reg_5_ ( .D(N104), .CPN(clk7), .Q(SRegister[5])
         );
  DFND1BWP12T30P140 rMic_reg ( .D(n105), .CPN(clk7), .Q(mic) );
  DFND1BWP12T30P140 SRegister_reg_0_ ( .D(N99), .CPN(n268), .Q(SRegister[0])
         );
  DFND1BWP12T30P140 SRegister_reg_2_ ( .D(N101), .CPN(n268), .Q(SRegister[2])
         );
  DFND1BWP12T30P140 SRegister_reg_4_ ( .D(N103), .CPN(n268), .Q(SRegister[4])
         );
  DFND1BWP12T30P140 SRegister_reg_6_ ( .D(N105), .CPN(n268), .Q(SRegister[6])
         );
  DFND1BWP12T30P140 rSpk_reg ( .D(n106), .CPN(n268), .Q(spk) );
  DFND1BWP12T30P140 FlashCnt_reg_3_ ( .D(N121), .CPN(VSync_n), .Q(FlashCnt[3])
         );
  DFND1BWP12T30P140 FlashCnt_reg_1_ ( .D(N119), .CPN(VSync_n), .Q(FlashCnt[1])
         );
  DFND1BWP12T30P140 SRegister_reg_7_ ( .D(N106), .CPN(clk7), .Q(SRegister[7])
         );
  DFND1BWP12T30P140 AttrReg_reg_5_ ( .D(vramdout[5]), .CPN(AttrLatch_n), .Q(
        AttrReg[5]) );
  DFND1BWP12T30P140 AttrReg_reg_4_ ( .D(vramdout[4]), .CPN(AttrLatch_n), .Q(
        AttrReg[4]) );
  DFND1BWP12T30P140 AttrReg_reg_3_ ( .D(vramdout[3]), .CPN(AttrLatch_n), .Q(
        AttrReg[3]) );
  DFND1BWP12T30P140 AttrReg_reg_2_ ( .D(vramdout[2]), .CPN(AttrLatch_n), .Q(
        AttrReg[2]) );
  DFND1BWP12T30P140 AttrReg_reg_1_ ( .D(vramdout[1]), .CPN(AttrLatch_n), .Q(
        AttrReg[1]) );
  DFND1BWP12T30P140 AttrReg_reg_0_ ( .D(vramdout[0]), .CPN(AttrLatch_n), .Q(
        AttrReg[0]) );
  DFND1BWP12T30P140 AttrReg_reg_6_ ( .D(vramdout[6]), .CPN(AttrLatch_n), .Q(
        AttrReg[6]) );
  DFND1BWP12T30P140 AttrReg_reg_7_ ( .D(vramdout[7]), .CPN(AttrLatch_n), .Q(
        AttrReg[7]) );
  DFND1BWP12T30P140 BorderColor_reg_1_ ( .D(n103), .CPN(clk7), .Q(
        BorderColor[1]) );
  DFND1BWP12T30P140 HBlank_n_reg ( .D(n134), .CPN(n268), .Q(HBlank_n) );
  DFND1BWP12T30P140 c_reg_6_ ( .D(n128), .CPN(clk7), .Q(c[6]) );
  DFND1BWP12T30P140 c_reg_4_ ( .D(n126), .CPN(clk7), .Q(c[4]) );
  DFND1BWP12T30P140 v_reg_5_ ( .D(n122), .CPN(clk7), .Q(v[5]) );
  DFND1BWP12T30P140 v_reg_3_ ( .D(n120), .CPN(clk7), .Q(v[3]) );
  DFND1BWP12T30P140 BorderColor_reg_2_ ( .D(n104), .CPN(n268), .Q(
        BorderColor[2]) );
  DFND1BWP12T30P140 BorderColor_reg_0_ ( .D(n102), .CPN(n268), .Q(
        BorderColor[0]) );
  DFND1BWP12T30P140 c_reg_3_ ( .D(n125), .CPN(n268), .Q(c[3]) );
  DFND1BWP12T30P140 c_reg_7_ ( .D(n129), .CPN(n268), .Q(c[7]) );
  DFND1BWP12T30P140 c_reg_5_ ( .D(n127), .CPN(n268), .Q(c[5]) );
  DFND1BWP12T30P140 v_reg_4_ ( .D(n121), .CPN(n268), .Q(v[4]) );
  DFND1BWP12T30P140 HSync_n_reg ( .D(n133), .CPN(n268), .Q(HSync_n) );
  DFQD2BWP12T30P140 mreqt23_reg ( .D(mreq_n), .CP(clkcpu), .Q(mreqt23) );
  DFQD2BWP12T30P140 ioreqtw3_reg ( .D(ioreq_n), .CP(clkcpu), .Q(ioreqtw3) );
  DFND1BWP12T30P140 Border_n_reg ( .D(n136), .CPN(clk7), .Q(Border_n) );
  DFQD2BWP12T30P140 vc_reg_5_ ( .D(n111), .CP(clk7), .Q(vc[5]) );
  DFQD2BWP12T30P140 vc_reg_7_ ( .D(n109), .CP(clk7), .Q(vc[7]) );
  DFQD2BWP12T30P140 vc_reg_3_ ( .D(n113), .CP(clk7), .Q(vc[3]) );
  DFQD2BWP12T30P140 hc_reg_4_ ( .D(N45), .CP(n267), .Q(hc[4]) );
  DFQD2BWP12T30P140 vc_reg_8_ ( .D(n108), .CP(n268), .Q(vc[8]) );
  DFQD2BWP12T30P140 hc_reg_6_ ( .D(N47), .CP(n267), .Q(hc[6]) );
  DFQD2BWP12T30P140 vc_reg_2_ ( .D(n114), .CP(n268), .Q(vc[2]) );
  DFQD2BWP12T30P140 hc_reg_7_ ( .D(N48), .CP(n267), .Q(hc[7]) );
  DFQD2BWP12T30P140 vc_reg_0_ ( .D(n116), .CP(n267), .Q(vc[0]) );
  DFQD2BWP12T30P140 hc_reg_8_ ( .D(N49), .CP(n267), .Q(hc[8]) );
  DFQD2BWP12T30P140 vc_reg_1_ ( .D(n115), .CP(n267), .Q(vc[1]) );
  DFQD2BWP12T30P140 vc_reg_6_ ( .D(n110), .CP(n268), .Q(vc[6]) );
  DFQD2BWP12T30P140 hc_reg_3_ ( .D(N44), .CP(n267), .Q(hc[3]) );
  DFQD2BWP12T30P140 hc_reg_2_ ( .D(N43), .CP(n267), .Q(hc[2]) );
  DFQD2BWP12T30P140 hc_reg_5_ ( .D(N46), .CP(n267), .Q(hc[5]) );
  DFND1BWP12T30P140 DataLatch_n_reg ( .D(n139), .CPN(clk7), .Q(DataLatch_n) );
  DFND1BWP12T30P140 AttrLatch_n_reg ( .D(n138), .CPN(clk7), .Q(AttrLatch_n) );
  DFND1BWP12T30P140 AOLatch_n_reg ( .D(n140), .CPN(clk7), .Q(AOLatch_n) );
  DFQD2BWP12T30P140 hc_reg_0_ ( .D(N41), .CP(n267), .Q(hc[0]) );
  DFQD2BWP12T30P140 hc_reg_1_ ( .D(N42), .CP(n267), .Q(hc[1]) );
  DFND1BWP12T30P140 SLoad_reg ( .D(N94), .CPN(n268), .Q(SLoad) );
  DFQD1BWP12T30P140 clk7_reg ( .D(n269), .CP(clk14), .Q(clk7) );
  DFQD1BWP12T30P140 vc_reg_4_ ( .D(n112), .CP(n268), .Q(vc[4]) );
  DFQD1BWP12T30P140 CPUClk_reg ( .D(n137), .CP(n267), .Q(clkcpu) );
  TIELBWP12T30P140 U192 ( .ZN(n2) );
  CKBD0BWP12T30P140 U193 ( .I(din[0]), .Z(vramdin[0]) );
  CKBD0BWP12T30P140 U194 ( .I(din[1]), .Z(vramdin[1]) );
  CKBD0BWP12T30P140 U195 ( .I(din[2]), .Z(vramdin[2]) );
  CKBD0BWP12T30P140 U196 ( .I(din[3]), .Z(vramdin[3]) );
  CKBD0BWP12T30P140 U197 ( .I(din[4]), .Z(vramdin[4]) );
  CKBD0BWP12T30P140 U198 ( .I(din[5]), .Z(vramdin[5]) );
  CKBD0BWP12T30P140 U199 ( .I(din[6]), .Z(vramdin[6]) );
  CKBD0BWP12T30P140 U200 ( .I(din[7]), .Z(vramdin[7]) );
  INVD0BWP12T30P140 U201 ( .I(a[9]), .ZN(n7) );
  INVD0BWP12T30P140 U202 ( .I(a[8]), .ZN(n13) );
  INVD0BWP12T30P140 U203 ( .I(hc[1]), .ZN(n150) );
  ND3D0BWP12T30P140 U204 ( .A1(n150), .A2(hc[2]), .A3(hc[0]), .ZN(n140) );
  ND2D0BWP12T30P140 U205 ( .A1(hc[0]), .A2(hc[1]), .ZN(n174) );
  INVD0BWP12T30P140 U206 ( .I(hc[2]), .ZN(n246) );
  NR2D0BWP12T30P140 U207 ( .A1(n174), .A2(n246), .ZN(n175) );
  ND2D0BWP12T30P140 U208 ( .A1(hc[3]), .A2(n175), .ZN(n159) );
  INVD0BWP12T30P140 U209 ( .I(hc[4]), .ZN(n185) );
  NR2D0BWP12T30P140 U210 ( .A1(n159), .A2(n185), .ZN(n158) );
  ND2D0BWP12T30P140 U211 ( .A1(n158), .A2(hc[5]), .ZN(n153) );
  OA21D0BWP12T30P140 U212 ( .A1(n158), .A2(hc[5]), .B(n153), .Z(N46) );
  OA21D0BWP12T30P140 U213 ( .A1(hc[3]), .A2(n175), .B(n159), .Z(N44) );
  AOI21D0BWP12T30P140 U214 ( .A1(n174), .A2(n246), .B(n175), .ZN(N43) );
  INVD0BWP12T30P140 U215 ( .I(vc[5]), .ZN(n182) );
  ND2D0BWP12T30P140 U216 ( .A1(vc[1]), .A2(vc[0]), .ZN(n149) );
  INVD0BWP12T30P140 U217 ( .I(vc[2]), .ZN(n180) );
  NR2D0BWP12T30P140 U218 ( .A1(n149), .A2(n180), .ZN(n162) );
  INVD0BWP12T30P140 U219 ( .I(vc[8]), .ZN(n168) );
  NR4D0BWP12T30P140 U220 ( .A1(vc[3]), .A2(vc[7]), .A3(vc[6]), .A4(n168), .ZN(
        n171) );
  INVD0BWP12T30P140 U221 ( .I(vc[4]), .ZN(n176) );
  NR2D0BWP12T30P140 U222 ( .A1(n182), .A2(n176), .ZN(n202) );
  ND2D0BWP12T30P140 U223 ( .A1(hc[7]), .A2(hc[8]), .ZN(n189) );
  NR2D0BWP12T30P140 U224 ( .A1(n189), .A2(n153), .ZN(n143) );
  INVD0BWP12T30P140 U225 ( .I(hc[6]), .ZN(n184) );
  ND2D0BWP12T30P140 U226 ( .A1(n143), .A2(n184), .ZN(n156) );
  AOI31D0BWP12T30P140 U227 ( .A1(n162), .A2(n171), .A3(n202), .B(n156), .ZN(
        n155) );
  ND2D0BWP12T30P140 U228 ( .A1(vc[3]), .A2(vc[4]), .ZN(n169) );
  INR2D1BWP12T30P140 U229 ( .A1(n162), .B1(n169), .ZN(n154) );
  ND2D0BWP12T30P140 U230 ( .A1(n155), .A2(n154), .ZN(n167) );
  INVD0BWP12T30P140 U231 ( .I(n155), .ZN(n141) );
  INVD0BWP12T30P140 U232 ( .I(n156), .ZN(n151) );
  OA211D0BWP12T30P140 U233 ( .A1(n141), .A2(n154), .B(n151), .C(vc[5]), .Z(
        n166) );
  INVD0BWP12T30P140 U234 ( .I(vc[6]), .ZN(n183) );
  OAI32D0BWP12T30P140 U235 ( .A1(vc[6]), .A2(n182), .A3(n167), .B1(n166), .B2(
        n183), .ZN(n110) );
  INVD0BWP12T30P140 U236 ( .I(vc[0]), .ZN(n177) );
  NR2D0BWP12T30P140 U237 ( .A1(n177), .A2(n156), .ZN(n144) );
  INVD0BWP12T30P140 U238 ( .I(vc[1]), .ZN(n179) );
  OAI32D0BWP12T30P140 U239 ( .A1(vc[1]), .A2(n177), .A3(n141), .B1(n144), .B2(
        n179), .ZN(n115) );
  ND2D0BWP12T30P140 U240 ( .A1(n162), .A2(n151), .ZN(n160) );
  INVD0BWP12T30P140 U241 ( .I(vc[3]), .ZN(n181) );
  NR2D0BWP12T30P140 U242 ( .A1(vc[3]), .A2(n141), .ZN(n161) );
  OAI21D0BWP12T30P140 U243 ( .A1(n160), .A2(n161), .B(vc[4]), .ZN(n142) );
  OAI31D0BWP12T30P140 U244 ( .A1(vc[4]), .A2(n160), .A3(n181), .B(n142), .ZN(
        n112) );
  INVD0BWP12T30P140 U245 ( .I(hc[7]), .ZN(n199) );
  INVD0BWP12T30P140 U246 ( .I(hc[8]), .ZN(n198) );
  NR2D0BWP12T30P140 U247 ( .A1(n184), .A2(n153), .ZN(n152) );
  INVD0BWP12T30P140 U248 ( .I(n152), .ZN(n145) );
  AOI221D0BWP12T30P140 U249 ( .A1(n199), .A2(n198), .B1(n145), .B2(n198), .C(
        n143), .ZN(N49) );
  AOI21D0BWP12T30P140 U250 ( .A1(n177), .A2(n156), .B(n144), .ZN(n116) );
  AOI221D0BWP12T30P140 U251 ( .A1(hc[7]), .A2(n152), .B1(n199), .B2(n145), .C(
        n151), .ZN(N48) );
  INVD0BWP12T30P140 U252 ( .I(a[15]), .ZN(n17) );
  NR2D0BWP12T30P140 U253 ( .A1(iorq_n), .A2(a[0]), .ZN(n220) );
  AOI31D0BWP12T30P140 U254 ( .A1(a[14]), .A2(mreqt23), .A3(n17), .B(n220), 
        .ZN(n147) );
  OAI211D0BWP12T30P140 U255 ( .A1(hc[3]), .A2(hc[2]), .B(Border_n), .C(
        ioreqtw3), .ZN(n146) );
  OAI21D0BWP12T30P140 U256 ( .A1(n147), .A2(n146), .B(clkcpu), .ZN(n137) );
  NR3D0BWP12T30P140 U257 ( .A1(n179), .A2(n177), .A3(n156), .ZN(n148) );
  OAI32D0BWP12T30P140 U258 ( .A1(vc[2]), .A2(n149), .A3(n156), .B1(n148), .B2(
        n180), .ZN(n114) );
  INVD0BWP12T30P140 U259 ( .I(hc[0]), .ZN(N41) );
  AOI22D0BWP12T30P140 U260 ( .A1(hc[0]), .A2(hc[1]), .B1(n150), .B2(N41), .ZN(
        N42) );
  AOI211D0BWP12T30P140 U261 ( .A1(n184), .A2(n153), .B(n152), .C(n151), .ZN(
        N47) );
  ND3D0BWP12T30P140 U262 ( .A1(vc[6]), .A2(vc[5]), .A3(n154), .ZN(n163) );
  AOI21D0BWP12T30P140 U263 ( .A1(n155), .A2(n163), .B(n156), .ZN(n165) );
  INVD0BWP12T30P140 U264 ( .I(vc[7]), .ZN(n194) );
  ND2D0BWP12T30P140 U265 ( .A1(n155), .A2(n194), .ZN(n164) );
  OR3D0BWP12T30P140 U266 ( .A1(n163), .A2(n194), .A3(n156), .Z(n157) );
  AOI32D0BWP12T30P140 U267 ( .A1(n165), .A2(vc[8]), .A3(n164), .B1(n157), .B2(
        n168), .ZN(n108) );
  AOI21D0BWP12T30P140 U268 ( .A1(n159), .A2(n185), .B(n158), .ZN(N45) );
  AO22D0BWP12T30P140 U269 ( .A1(n162), .A2(n161), .B1(vc[3]), .B2(n160), .Z(
        n113) );
  OAI22D0BWP12T30P140 U270 ( .A1(n165), .A2(n194), .B1(n164), .B2(n163), .ZN(
        n109) );
  AOI21D0BWP12T30P140 U271 ( .A1(n182), .A2(n167), .B(n166), .ZN(n111) );
  AOI211D0BWP12T30P140 U272 ( .A1(vc[7]), .A2(vc[6]), .B(vc[8]), .C(hc[8]), 
        .ZN(n136) );
  NR2D0BWP12T30P140 U273 ( .A1(vc[1]), .A2(vc[0]), .ZN(n170) );
  ND4D0BWP12T30P140 U274 ( .A1(vc[7]), .A2(vc[6]), .A3(n170), .A4(n168), .ZN(
        n204) );
  NR4D0BWP12T30P140 U275 ( .A1(vc[2]), .A2(n182), .A3(n169), .A4(n204), .ZN(
        n205) );
  ND4D0BWP12T30P140 U276 ( .A1(n171), .A2(n170), .A3(n180), .A4(n182), .ZN(
        n172) );
  OAI22D0BWP12T30P140 U277 ( .A1(n205), .A2(n265), .B1(vc[4]), .B2(n172), .ZN(
        n132) );
  INVD0BWP12T30P140 U278 ( .I(hc[3]), .ZN(n196) );
  NR3D0BWP12T30P140 U279 ( .A1(hc[2]), .A2(hc[1]), .A3(hc[0]), .ZN(n213) );
  ND4D0BWP12T30P140 U280 ( .A1(hc[6]), .A2(hc[8]), .A3(n213), .A4(n199), .ZN(
        n186) );
  NR3D0BWP12T30P140 U281 ( .A1(n196), .A2(n185), .A3(n186), .ZN(n173) );
  CKMUX2D0BWP12T30P140 U282 ( .I0(HSync_n), .I1(hc[5]), .S(n173), .Z(n133) );
  ND2D0BWP12T30P140 U283 ( .A1(hc[3]), .A2(Border_n), .ZN(n218) );
  OR2D0BWP12T30P140 U284 ( .A1(n174), .A2(n218), .Z(n138) );
  NR2D0BWP12T30P140 U285 ( .A1(hc[2]), .A2(n138), .ZN(n178) );
  AOI31D0BWP12T30P140 U286 ( .A1(n175), .A2(Border_n), .A3(n196), .B(n178), 
        .ZN(n195) );
  INVD0BWP12T30P140 U287 ( .I(n195), .ZN(n193) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n176), .A2(n193), .B1(n193), .B2(v[4]), .ZN(
        n121) );
  ND2D0BWP12T30P140 U289 ( .A1(FlashCnt[0]), .A2(FlashCnt[1]), .ZN(n191) );
  NR2D0BWP12T30P140 U290 ( .A1(n263), .A2(n191), .ZN(n192) );
  AOI21D0BWP12T30P140 U291 ( .A1(n191), .A2(n263), .B(n192), .ZN(N120) );
  INVD0BWP12T30P140 U292 ( .I(hc[5]), .ZN(n190) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n190), .A2(n193), .B1(n193), .B2(c[5]), .ZN(
        n127) );
  AOI22D0BWP12T30P140 U294 ( .A1(n195), .A2(n262), .B1(n177), .B2(n193), .ZN(
        n117) );
  MAOI22D0BWP12T30P140 U295 ( .A1(n199), .A2(n193), .B1(n193), .B2(c[7]), .ZN(
        n129) );
  AO21D0BWP12T30P140 U296 ( .A1(n195), .A2(c[3]), .B(n178), .Z(n125) );
  AOI22D0BWP12T30P140 U297 ( .A1(n195), .A2(n261), .B1(n179), .B2(n193), .ZN(
        n118) );
  INVD0BWP12T30P140 U298 ( .I(n220), .ZN(ioreq_n) );
  NR2D0BWP12T30P140 U299 ( .A1(wr_n), .A2(ioreq_n), .ZN(n197) );
  CKMUX2D0BWP12T30P140 U300 ( .I0(BorderColor[0]), .I1(din[0]), .S(n197), .Z(
        n102) );
  AOI22D0BWP12T30P140 U301 ( .A1(n195), .A2(n258), .B1(n180), .B2(n193), .ZN(
        n119) );
  CKMUX2D0BWP12T30P140 U302 ( .I0(BorderColor[2]), .I1(din[2]), .S(n197), .Z(
        n104) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n181), .A2(n193), .B1(n193), .B2(v[3]), .ZN(
        n120) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n182), .A2(n193), .B1(n193), .B2(v[5]), .ZN(
        n122) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n185), .A2(n193), .B1(n193), .B2(c[4]), .ZN(
        n126) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n184), .A2(n193), .B1(n193), .B2(c[6]), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U307 ( .A1(n195), .A2(n260), .B1(n183), .B2(n193), .ZN(
        n123) );
  ND4D0BWP12T30P140 U308 ( .A1(n184), .A2(n196), .A3(n185), .A4(n213), .ZN(
        n200) );
  ND2D0BWP12T30P140 U309 ( .A1(n196), .A2(n185), .ZN(n187) );
  OAI31D0BWP12T30P140 U310 ( .A1(hc[5]), .A2(n187), .A3(n186), .B(HBlank_n), 
        .ZN(n188) );
  OAI31D0BWP12T30P140 U311 ( .A1(n190), .A2(n189), .A3(n200), .B(n188), .ZN(
        n134) );
  CKMUX2D0BWP12T30P140 U312 ( .I0(BorderColor[1]), .I1(din[1]), .S(n197), .Z(
        n103) );
  CKMUX2D0BWP12T30P140 U313 ( .I0(SRegister[6]), .I1(BitmapReg[7]), .S(SLoad), 
        .Z(N106) );
  OA21D0BWP12T30P140 U314 ( .A1(FlashCnt[0]), .A2(FlashCnt[1]), .B(n191), .Z(
        N119) );
  ND2D0BWP12T30P140 U315 ( .A1(n192), .A2(FlashCnt[3]), .ZN(n245) );
  OA21D0BWP12T30P140 U316 ( .A1(n192), .A2(FlashCnt[3]), .B(n245), .Z(N121) );
  CKMUX2D0BWP12T30P140 U317 ( .I0(spk), .I1(din[4]), .S(n197), .Z(n106) );
  AOI22D0BWP12T30P140 U318 ( .A1(n195), .A2(n259), .B1(n194), .B2(n193), .ZN(
        n124) );
  CKMUX2D0BWP12T30P140 U319 ( .I0(SRegister[5]), .I1(BitmapReg[6]), .S(SLoad), 
        .Z(N105) );
  CKMUX2D0BWP12T30P140 U320 ( .I0(SRegister[3]), .I1(BitmapReg[4]), .S(SLoad), 
        .Z(N103) );
  INVD0BWP12T30P140 U321 ( .I(n218), .ZN(n219) );
  AOI21D0BWP12T30P140 U322 ( .A1(n196), .A2(n256), .B(n219), .ZN(n107) );
  CKMUX2D0BWP12T30P140 U323 ( .I0(SRegister[1]), .I1(BitmapReg[2]), .S(SLoad), 
        .Z(N101) );
  AN2D0BWP12T30P140 U324 ( .A1(SLoad), .A2(BitmapReg[0]), .Z(N99) );
  CKMUX2D0BWP12T30P140 U325 ( .I0(mic), .I1(din[3]), .S(n197), .Z(n105) );
  CKMUX2D0BWP12T30P140 U326 ( .I0(SRegister[4]), .I1(BitmapReg[5]), .S(SLoad), 
        .Z(N104) );
  CKMUX2D0BWP12T30P140 U327 ( .I0(SRegister[2]), .I1(BitmapReg[3]), .S(SLoad), 
        .Z(N102) );
  CKMUX2D0BWP12T30P140 U328 ( .I0(SRegister[0]), .I1(BitmapReg[1]), .S(SLoad), 
        .Z(N100) );
  IND4D1BWP12T30P140 U329 ( .A1(n200), .B1(n205), .B2(n199), .B3(n198), .ZN(
        n201) );
  CKMUX2D0BWP12T30P140 U330 ( .I0(hc[5]), .I1(msk_int_n), .S(n201), .Z(n130)
         );
  ND3D0BWP12T30P140 U331 ( .A1(vc[2]), .A2(vc[3]), .A3(n202), .ZN(n203) );
  OAI22D0BWP12T30P140 U332 ( .A1(n205), .A2(n257), .B1(n204), .B2(n203), .ZN(
        n131) );
  INVD0BWP12T30P140 U333 ( .I(clk7), .ZN(n269) );
  INVD0BWP12T30P140 U334 ( .I(n269), .ZN(n268) );
  INVD0BWP12T30P140 U335 ( .I(n269), .ZN(n267) );
  ND2D0BWP12T30P140 U336 ( .A1(HBlank_n), .A2(VBlank_n), .ZN(n247) );
  ND2D0BWP12T30P140 U337 ( .A1(AttrOut[7]), .A2(FlashCnt[4]), .ZN(n207) );
  ND2D0BWP12T30P140 U338 ( .A1(n207), .A2(SRegister[7]), .ZN(n206) );
  OAI21D0BWP12T30P140 U339 ( .A1(SRegister[7]), .A2(n207), .B(n206), .ZN(n211)
         );
  INVD0BWP12T30P140 U340 ( .I(n211), .ZN(n210) );
  AOI22D0BWP12T30P140 U341 ( .A1(n211), .A2(AttrOut[0]), .B1(AttrOut[3]), .B2(
        n210), .ZN(n208) );
  NR2D0BWP12T30P140 U342 ( .A1(n247), .A2(n208), .ZN(b) );
  MUX2ND0BWP12T30P140 U343 ( .I0(AttrOut[2]), .I1(AttrOut[5]), .S(n210), .ZN(
        n209) );
  NR2D0BWP12T30P140 U344 ( .A1(n247), .A2(n209), .ZN(g) );
  AOI22D0BWP12T30P140 U345 ( .A1(n211), .A2(AttrOut[1]), .B1(AttrOut[4]), .B2(
        n210), .ZN(n212) );
  NR2D0BWP12T30P140 U346 ( .A1(n247), .A2(n212), .ZN(r) );
  IOA21D0BWP12T30P140 U347 ( .A1(Border_n), .A2(n213), .B(n218), .ZN(n214) );
  NR2D0BWP12T30P140 U348 ( .A1(wr_n), .A2(n214), .ZN(vramwe) );
  INVD0BWP12T30P140 U349 ( .I(a[14]), .ZN(n15) );
  NR3D0BWP12T30P140 U350 ( .A1(mreq_n), .A2(a[15]), .A3(n15), .ZN(n222) );
  INVD0BWP12T30P140 U351 ( .I(n222), .ZN(n240) );
  OAI21D0BWP12T30P140 U352 ( .A1(n214), .A2(n240), .B(n218), .ZN(vramcs) );
  OAI22D0BWP12T30P140 U353 ( .A1(hc[0]), .A2(n218), .B1(rd_n), .B2(n214), .ZN(
        vramoe) );
  CKMUX2D0BWP12T30P140 U354 ( .I0(c[3]), .I1(a[0]), .S(n218), .Z(va[0]) );
  CKMUX2D0BWP12T30P140 U355 ( .I0(c[4]), .I1(a[1]), .S(n218), .Z(va[1]) );
  CKMUX2D0BWP12T30P140 U356 ( .I0(c[5]), .I1(a[2]), .S(n218), .Z(va[2]) );
  CKMUX2D0BWP12T30P140 U357 ( .I0(c[6]), .I1(a[3]), .S(n218), .Z(va[3]) );
  CKMUX2D0BWP12T30P140 U358 ( .I0(c[7]), .I1(a[4]), .S(n218), .Z(va[4]) );
  CKMUX2D0BWP12T30P140 U359 ( .I0(v[3]), .I1(a[5]), .S(n218), .Z(va[5]) );
  CKMUX2D0BWP12T30P140 U360 ( .I0(v[4]), .I1(a[6]), .S(n218), .Z(va[6]) );
  CKMUX2D0BWP12T30P140 U361 ( .I0(v[5]), .I1(a[7]), .S(n218), .Z(va[7]) );
  NR2D0BWP12T30P140 U362 ( .A1(n218), .A2(hc[1]), .ZN(n241) );
  INVD0BWP12T30P140 U363 ( .I(n241), .ZN(n217) );
  AOI32D0BWP12T30P140 U364 ( .A1(hc[1]), .A2(n219), .A3(v[6]), .B1(a[8]), .B2(
        n218), .ZN(n215) );
  OAI21D0BWP12T30P140 U365 ( .A1(n262), .A2(n217), .B(n215), .ZN(va[8]) );
  AOI32D0BWP12T30P140 U366 ( .A1(hc[1]), .A2(n219), .A3(v[7]), .B1(a[9]), .B2(
        n218), .ZN(n216) );
  OAI21D0BWP12T30P140 U367 ( .A1(n261), .A2(n217), .B(n216), .ZN(va[9]) );
  INVD0BWP12T30P140 U368 ( .I(a[10]), .ZN(n5) );
  OAI22D0BWP12T30P140 U369 ( .A1(n219), .A2(n5), .B1(n217), .B2(n258), .ZN(
        va[10]) );
  INVD0BWP12T30P140 U370 ( .I(a[11]), .ZN(n3) );
  AOI22D0BWP12T30P140 U371 ( .A1(n241), .A2(n260), .B1(n218), .B2(n3), .ZN(
        va[11]) );
  INVD0BWP12T30P140 U372 ( .I(a[12]), .ZN(n9) );
  AOI22D0BWP12T30P140 U373 ( .A1(n241), .A2(n259), .B1(n218), .B2(n9), .ZN(
        va[12]) );
  INVD0BWP12T30P140 U374 ( .I(a[13]), .ZN(n11) );
  NR2D0BWP12T30P140 U375 ( .A1(n219), .A2(n11), .ZN(va[13]) );
  ND2D0BWP12T30P140 U376 ( .A1(n240), .A2(n220), .ZN(n224) );
  NR2D0BWP12T30P140 U377 ( .A1(n222), .A2(n220), .ZN(n236) );
  IND2D1BWP12T30P140 U378 ( .A1(Border_n), .B1(n236), .ZN(n237) );
  AOI22D0BWP12T30P140 U379 ( .A1(n222), .A2(vramdout[5]), .B1(n236), .B2(
        AttrReg[5]), .ZN(n221) );
  ND3D0BWP12T30P140 U380 ( .A1(n224), .A2(n237), .A3(n221), .ZN(dout[5]) );
  AOI22D0BWP12T30P140 U381 ( .A1(n222), .A2(vramdout[7]), .B1(n236), .B2(
        AttrReg[7]), .ZN(n223) );
  ND3D0BWP12T30P140 U382 ( .A1(n224), .A2(n237), .A3(n223), .ZN(dout[7]) );
  INVD0BWP12T30P140 U383 ( .I(vramdout[0]), .ZN(n226) );
  INVD0BWP12T30P140 U384 ( .I(n224), .ZN(n235) );
  AOI22D0BWP12T30P140 U385 ( .A1(n236), .A2(AttrReg[0]), .B1(n235), .B2(
        kbcolumns[0]), .ZN(n225) );
  OAI211D0BWP12T30P140 U386 ( .A1(n240), .A2(n226), .B(n225), .C(n237), .ZN(
        dout[0]) );
  INVD0BWP12T30P140 U387 ( .I(vramdout[1]), .ZN(n228) );
  AOI22D0BWP12T30P140 U388 ( .A1(n236), .A2(AttrReg[1]), .B1(n235), .B2(
        kbcolumns[1]), .ZN(n227) );
  OAI211D0BWP12T30P140 U389 ( .A1(n240), .A2(n228), .B(n227), .C(n237), .ZN(
        dout[1]) );
  INVD0BWP12T30P140 U390 ( .I(vramdout[2]), .ZN(n230) );
  AOI22D0BWP12T30P140 U391 ( .A1(n236), .A2(AttrReg[2]), .B1(n235), .B2(
        kbcolumns[2]), .ZN(n229) );
  OAI211D0BWP12T30P140 U392 ( .A1(n240), .A2(n230), .B(n229), .C(n237), .ZN(
        dout[2]) );
  INVD0BWP12T30P140 U393 ( .I(vramdout[3]), .ZN(n232) );
  AOI22D0BWP12T30P140 U394 ( .A1(n236), .A2(AttrReg[3]), .B1(n235), .B2(
        kbcolumns[3]), .ZN(n231) );
  OAI211D0BWP12T30P140 U395 ( .A1(n240), .A2(n232), .B(n231), .C(n237), .ZN(
        dout[3]) );
  INVD0BWP12T30P140 U396 ( .I(vramdout[4]), .ZN(n234) );
  AOI22D0BWP12T30P140 U397 ( .A1(n236), .A2(AttrReg[4]), .B1(n235), .B2(
        kbcolumns[4]), .ZN(n233) );
  OAI211D0BWP12T30P140 U398 ( .A1(n240), .A2(n234), .B(n233), .C(n237), .ZN(
        dout[4]) );
  INVD0BWP12T30P140 U399 ( .I(vramdout[6]), .ZN(n239) );
  AOI22D0BWP12T30P140 U400 ( .A1(n236), .A2(AttrReg[6]), .B1(n235), .B2(ear), 
        .ZN(n238) );
  OAI211D0BWP12T30P140 U401 ( .A1(n240), .A2(n239), .B(n238), .C(n237), .ZN(
        dout[6]) );
  ND2D0BWP12T30P140 U402 ( .A1(hc[0]), .A2(n241), .ZN(n139) );
  ND2D0BWP12T30P140 U403 ( .A1(BorderColor[2]), .A2(VidEN_n), .ZN(n242) );
  IOA21D0BWP12T30P140 U404 ( .A1(n256), .A2(AttrReg[5]), .B(n242), .ZN(N114)
         );
  ND2D0BWP12T30P140 U405 ( .A1(BorderColor[1]), .A2(VidEN_n), .ZN(n243) );
  IOA21D0BWP12T30P140 U406 ( .A1(n256), .A2(AttrReg[1]), .B(n243), .ZN(N110)
         );
  IOA21D0BWP12T30P140 U407 ( .A1(n256), .A2(AttrReg[2]), .B(n242), .ZN(N111)
         );
  ND2D0BWP12T30P140 U408 ( .A1(BorderColor[0]), .A2(VidEN_n), .ZN(n244) );
  IOA21D0BWP12T30P140 U409 ( .A1(n256), .A2(AttrReg[0]), .B(n244), .ZN(N109)
         );
  IOA21D0BWP12T30P140 U410 ( .A1(n256), .A2(AttrReg[4]), .B(n243), .ZN(N113)
         );
  IOA21D0BWP12T30P140 U411 ( .A1(n256), .A2(AttrReg[3]), .B(n244), .ZN(N112)
         );
  MUX2ND0BWP12T30P140 U412 ( .I0(FlashCnt[4]), .I1(n266), .S(n245), .ZN(N122)
         );
  NR4D0BWP12T30P140 U413 ( .A1(hc[0]), .A2(hc[1]), .A3(VidEN_n), .A4(n246), 
        .ZN(N94) );
  INR2D1BWP12T30P140 U414 ( .A1(HSync_n), .B1(n257), .ZN(csync) );
  INR2D1BWP12T30P140 U415 ( .A1(AttrOut[6]), .B1(n247), .ZN(i) );
  INR2D1BWP12T30P140 U416 ( .A1(AttrReg[6]), .B1(VidEN_n), .ZN(N115) );
  INR2D1BWP12T30P140 U417 ( .A1(AttrReg[7]), .B1(VidEN_n), .ZN(N116) );
endmodule

