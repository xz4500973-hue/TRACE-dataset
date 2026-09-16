/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:12:32 2026
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
  wire   clk7, N67, N68, N69, N70, N71, N72, N73, N74, N75, border_n, viden_n,
         N78, sload, hblank_n, hsync_n, vblank_n, vsync_n, datalatch_n,
         attrlatch_n, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, ioreq_t3, mreq_t23, N131,
         N136, N137, N138, N139, n2, n3, n5, n7, n9, n11, n13, n15, n17, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270;
  wire   [8:0] vcnt;
  wire   [8:0] hcnt;
  wire   [2:0] border_color;
  wire   [7:0] shift_reg;
  wire   [7:0] bitmap_reg;
  wire   [7:0] attr_out;
  wire   [7:0] attr_reg;
  wire   [7:3] c_latched;
  wire   [7:3] v_latched;
  wire   [4:0] flash_cnt;

  BUFTD4BWP12T30P140 kbrows_tri_0_ ( .I(n2), .OE(n17), .Z(kbrows[0]) );
  BUFTD4BWP12T30P140 kbrows_tri_1_ ( .I(n2), .OE(n15), .Z(kbrows[1]) );
  BUFTD4BWP12T30P140 kbrows_tri_2_ ( .I(n2), .OE(n13), .Z(kbrows[2]) );
  BUFTD4BWP12T30P140 kbrows_tri_3_ ( .I(n2), .OE(n11), .Z(kbrows[3]) );
  BUFTD4BWP12T30P140 kbrows_tri_4_ ( .I(n2), .OE(n9), .Z(kbrows[4]) );
  BUFTD4BWP12T30P140 kbrows_tri_5_ ( .I(n2), .OE(n7), .Z(kbrows[5]) );
  BUFTD4BWP12T30P140 kbrows_tri_6_ ( .I(n2), .OE(n5), .Z(kbrows[6]) );
  BUFTD4BWP12T30P140 kbrows_tri_7_ ( .I(n2), .OE(n3), .Z(kbrows[7]) );
  DFND1BWP12T30P140 flash_cnt_reg_4_ ( .D(N139), .CPN(vsync_n), .Q(
        flash_cnt[4]), .QN(n266) );
  DFND1BWP12T30P140 flash_cnt_reg_0_ ( .D(n265), .CPN(vsync_n), .Q(
        flash_cnt[0]), .QN(n265) );
  DFND1BWP12T30P140 flash_cnt_reg_2_ ( .D(N137), .CPN(vsync_n), .QN(n264) );
  DFND1BWP12T30P140 v_latched_reg_0_ ( .D(n119), .CPN(clk7), .QN(n263) );
  DFND1BWP12T30P140 v_latched_reg_1_ ( .D(n120), .CPN(n269), .QN(n262) );
  DFND1BWP12T30P140 v_latched_reg_6_ ( .D(n125), .CPN(clk7), .Q(v_latched[6]), 
        .QN(n261) );
  DFND1BWP12T30P140 v_latched_reg_7_ ( .D(n126), .CPN(n269), .Q(v_latched[7]), 
        .QN(n260) );
  DFND1BWP12T30P140 v_latched_reg_2_ ( .D(n121), .CPN(n269), .QN(n259) );
  DFND1BWP12T30P140 border_n_reg ( .D(n136), .CPN(n269), .Q(border_n), .QN(
        n258) );
  DFND1BWP12T30P140 viden_n_reg ( .D(n102), .CPN(n268), .Q(viden_n), .QN(n257)
         );
  DFND1BWP12T30P140 bitmap_reg_reg_0_ ( .D(vramdout[0]), .CPN(datalatch_n), 
        .Q(bitmap_reg[0]) );
  DFND1BWP12T30P140 bitmap_reg_reg_7_ ( .D(vramdout[7]), .CPN(datalatch_n), 
        .Q(bitmap_reg[7]) );
  DFND1BWP12T30P140 bitmap_reg_reg_6_ ( .D(vramdout[6]), .CPN(datalatch_n), 
        .Q(bitmap_reg[6]) );
  DFND1BWP12T30P140 bitmap_reg_reg_5_ ( .D(vramdout[5]), .CPN(datalatch_n), 
        .Q(bitmap_reg[5]) );
  DFND1BWP12T30P140 bitmap_reg_reg_4_ ( .D(vramdout[4]), .CPN(datalatch_n), 
        .Q(bitmap_reg[4]) );
  DFND1BWP12T30P140 bitmap_reg_reg_3_ ( .D(vramdout[3]), .CPN(datalatch_n), 
        .Q(bitmap_reg[3]) );
  DFND1BWP12T30P140 bitmap_reg_reg_2_ ( .D(vramdout[2]), .CPN(datalatch_n), 
        .Q(bitmap_reg[2]) );
  DFND1BWP12T30P140 bitmap_reg_reg_1_ ( .D(vramdout[1]), .CPN(datalatch_n), 
        .Q(bitmap_reg[1]) );
  DFND1BWP12T30P140 attr_out_reg_7_ ( .D(N118), .CPN(n268), .Q(attr_out[7]) );
  DFND1BWP12T30P140 int_n_reg ( .D(n118), .CPN(clk7), .Q(msk_int_n) );
  DFND1BWP12T30P140 shift_reg_reg_0_ ( .D(N103), .CPN(clk7), .Q(shift_reg[0])
         );
  DFND1BWP12T30P140 shift_reg_reg_1_ ( .D(N104), .CPN(clk7), .Q(shift_reg[1])
         );
  DFND1BWP12T30P140 shift_reg_reg_2_ ( .D(N105), .CPN(clk7), .Q(shift_reg[2])
         );
  DFND1BWP12T30P140 shift_reg_reg_4_ ( .D(N107), .CPN(clk7), .Q(shift_reg[4])
         );
  DFND1BWP12T30P140 shift_reg_reg_6_ ( .D(N109), .CPN(clk7), .Q(shift_reg[6])
         );
  DFND1BWP12T30P140 attr_out_reg_5_ ( .D(N116), .CPN(n268), .Q(attr_out[5]) );
  DFND1BWP12T30P140 attr_out_reg_3_ ( .D(N114), .CPN(n268), .Q(attr_out[3]) );
  DFND1BWP12T30P140 attr_out_reg_4_ ( .D(N115), .CPN(n268), .Q(attr_out[4]) );
  DFND1BWP12T30P140 shift_reg_reg_3_ ( .D(N106), .CPN(n269), .Q(shift_reg[3])
         );
  DFND1BWP12T30P140 shift_reg_reg_5_ ( .D(N108), .CPN(n269), .Q(shift_reg[5])
         );
  DFND1BWP12T30P140 mic_reg_reg ( .D(n107), .CPN(n269), .Q(mic) );
  DFND1BWP12T30P140 attr_out_reg_2_ ( .D(N113), .CPN(n268), .Q(attr_out[2]) );
  DFND1BWP12T30P140 attr_out_reg_0_ ( .D(N111), .CPN(n268), .Q(attr_out[0]) );
  DFND1BWP12T30P140 attr_out_reg_1_ ( .D(N112), .CPN(n268), .Q(attr_out[1]) );
  DFND1BWP12T30P140 attr_out_reg_6_ ( .D(N117), .CPN(n268), .Q(attr_out[6]) );
  DFND1BWP12T30P140 spk_reg_reg ( .D(n103), .CPN(n268), .Q(spk) );
  DFND1BWP12T30P140 flash_cnt_reg_3_ ( .D(N138), .CPN(vsync_n), .Q(
        flash_cnt[3]) );
  DFND1BWP12T30P140 flash_cnt_reg_1_ ( .D(N136), .CPN(vsync_n), .Q(
        flash_cnt[1]) );
  DFND1BWP12T30P140 vblank_n_reg ( .D(n117), .CPN(clk7), .Q(vblank_n) );
  DFND1BWP12T30P140 attr_reg_reg_5_ ( .D(vramdout[5]), .CPN(attrlatch_n), .Q(
        attr_reg[5]) );
  DFND1BWP12T30P140 hblank_n_reg ( .D(n127), .CPN(n269), .Q(hblank_n) );
  DFND1BWP12T30P140 attr_reg_reg_4_ ( .D(vramdout[4]), .CPN(attrlatch_n), .Q(
        attr_reg[4]) );
  DFND1BWP12T30P140 attr_reg_reg_3_ ( .D(vramdout[3]), .CPN(attrlatch_n), .Q(
        attr_reg[3]) );
  DFND1BWP12T30P140 attr_reg_reg_2_ ( .D(vramdout[2]), .CPN(attrlatch_n), .Q(
        attr_reg[2]) );
  DFND1BWP12T30P140 attr_reg_reg_1_ ( .D(vramdout[1]), .CPN(attrlatch_n), .Q(
        attr_reg[1]) );
  DFND1BWP12T30P140 attr_reg_reg_0_ ( .D(vramdout[0]), .CPN(attrlatch_n), .Q(
        attr_reg[0]) );
  DFND1BWP12T30P140 attr_reg_reg_6_ ( .D(vramdout[6]), .CPN(attrlatch_n), .Q(
        attr_reg[6]) );
  DFND1BWP12T30P140 attr_reg_reg_7_ ( .D(vramdout[7]), .CPN(attrlatch_n), .Q(
        attr_reg[7]) );
  DFND1BWP12T30P140 hsync_n_reg ( .D(n133), .CPN(n269), .Q(hsync_n) );
  DFND1BWP12T30P140 v_latched_reg_4_ ( .D(n123), .CPN(clk7), .Q(v_latched[4])
         );
  DFND1BWP12T30P140 shift_reg_reg_7_ ( .D(N110), .CPN(n268), .Q(shift_reg[7])
         );
  DFND1BWP12T30P140 v_latched_reg_5_ ( .D(n124), .CPN(clk7), .Q(v_latched[5])
         );
  DFND1BWP12T30P140 v_latched_reg_3_ ( .D(n122), .CPN(clk7), .Q(v_latched[3])
         );
  DFND1BWP12T30P140 c_latched_reg_3_ ( .D(n128), .CPN(n269), .Q(c_latched[3])
         );
  DFND1BWP12T30P140 c_latched_reg_7_ ( .D(n132), .CPN(n269), .Q(c_latched[7])
         );
  DFND1BWP12T30P140 c_latched_reg_6_ ( .D(n131), .CPN(n269), .Q(c_latched[6])
         );
  DFND1BWP12T30P140 c_latched_reg_5_ ( .D(n130), .CPN(n269), .Q(c_latched[5])
         );
  DFND1BWP12T30P140 c_latched_reg_4_ ( .D(n129), .CPN(n269), .Q(c_latched[4])
         );
  DFND1BWP12T30P140 border_color_reg_2_ ( .D(n106), .CPN(n268), .Q(
        border_color[2]) );
  DFND1BWP12T30P140 border_color_reg_1_ ( .D(n105), .CPN(n268), .Q(
        border_color[1]) );
  DFND1BWP12T30P140 border_color_reg_0_ ( .D(n104), .CPN(n268), .Q(
        border_color[0]) );
  DFQD2BWP12T30P140 mreq_t23_reg ( .D(mreq_n), .CP(clkcpu), .Q(mreq_t23) );
  DFQD2BWP12T30P140 ioreq_t3_reg ( .D(N131), .CP(clkcpu), .Q(ioreq_t3) );
  DFND1BWP12T30P140 vsync_n_reg ( .D(n134), .CPN(n269), .Q(vsync_n) );
  DFQD2BWP12T30P140 vcnt_reg_0_ ( .D(n116), .CP(n267), .Q(vcnt[0]) );
  DFQD2BWP12T30P140 hcnt_reg_6_ ( .D(N73), .CP(n267), .Q(hcnt[6]) );
  DFQD2BWP12T30P140 hcnt_reg_4_ ( .D(N71), .CP(n267), .Q(hcnt[4]) );
  DFND1BWP12T30P140 cpuclk_reg_reg ( .D(n137), .CPN(clk7), .Q(clkcpu) );
  DFQD2BWP12T30P140 hcnt_reg_2_ ( .D(N69), .CP(n267), .Q(hcnt[2]) );
  DFQD2BWP12T30P140 vcnt_reg_1_ ( .D(n115), .CP(n267), .Q(vcnt[1]) );
  DFQD2BWP12T30P140 vcnt_reg_2_ ( .D(n114), .CP(n267), .Q(vcnt[2]) );
  DFQD2BWP12T30P140 vcnt_reg_7_ ( .D(n109), .CP(n268), .Q(vcnt[7]) );
  DFQD2BWP12T30P140 vcnt_reg_8_ ( .D(n108), .CP(n268), .Q(vcnt[8]) );
  DFQD2BWP12T30P140 vcnt_reg_5_ ( .D(n111), .CP(n268), .Q(vcnt[5]) );
  DFQD2BWP12T30P140 hcnt_reg_0_ ( .D(N67), .CP(n267), .Q(hcnt[0]) );
  DFQD2BWP12T30P140 hcnt_reg_1_ ( .D(N68), .CP(n267), .Q(hcnt[1]) );
  DFQD2BWP12T30P140 hcnt_reg_3_ ( .D(N70), .CP(n267), .Q(hcnt[3]) );
  DFQD2BWP12T30P140 vcnt_reg_3_ ( .D(n113), .CP(n268), .Q(vcnt[3]) );
  DFQD2BWP12T30P140 hcnt_reg_8_ ( .D(N75), .CP(n267), .Q(hcnt[8]) );
  DFQD2BWP12T30P140 vcnt_reg_6_ ( .D(n110), .CP(n268), .Q(vcnt[6]) );
  DFQD2BWP12T30P140 hcnt_reg_5_ ( .D(N72), .CP(n267), .Q(hcnt[5]) );
  DFND1BWP12T30P140 attrlatch_n_reg ( .D(n138), .CPN(clk7), .Q(attrlatch_n) );
  DFND1BWP12T30P140 datalatch_n_reg ( .D(n139), .CPN(clk7), .Q(datalatch_n) );
  DFND1BWP12T30P140 sload_reg ( .D(N78), .CPN(n269), .Q(sload) );
  DFQD1BWP12T30P140 clk7_reg ( .D(n270), .CP(clk14), .Q(clk7) );
  DFQD1BWP12T30P140 hcnt_reg_7_ ( .D(N74), .CP(n267), .Q(hcnt[7]) );
  DFQD1BWP12T30P140 vcnt_reg_4_ ( .D(n112), .CP(n268), .Q(vcnt[4]) );
  TIELBWP12T30P140 U191 ( .ZN(n2) );
  CKBD0BWP12T30P140 U192 ( .I(din[0]), .Z(vramdin[0]) );
  CKBD0BWP12T30P140 U193 ( .I(din[1]), .Z(vramdin[1]) );
  CKBD0BWP12T30P140 U194 ( .I(din[2]), .Z(vramdin[2]) );
  CKBD0BWP12T30P140 U195 ( .I(din[3]), .Z(vramdin[3]) );
  CKBD0BWP12T30P140 U196 ( .I(din[4]), .Z(vramdin[4]) );
  CKBD0BWP12T30P140 U197 ( .I(din[5]), .Z(vramdin[5]) );
  CKBD0BWP12T30P140 U198 ( .I(din[6]), .Z(vramdin[6]) );
  CKBD0BWP12T30P140 U199 ( .I(din[7]), .Z(vramdin[7]) );
  INVD0BWP12T30P140 U200 ( .I(a[9]), .ZN(n7) );
  INVD0BWP12T30P140 U201 ( .I(a[8]), .ZN(n13) );
  ND2D0BWP12T30P140 U202 ( .A1(hcnt[0]), .A2(hcnt[1]), .ZN(n161) );
  INVD0BWP12T30P140 U203 ( .I(hcnt[2]), .ZN(n225) );
  NR2D0BWP12T30P140 U204 ( .A1(n161), .A2(n225), .ZN(n170) );
  ND2D0BWP12T30P140 U205 ( .A1(hcnt[3]), .A2(n170), .ZN(n165) );
  INVD0BWP12T30P140 U206 ( .I(hcnt[4]), .ZN(n187) );
  NR2D0BWP12T30P140 U207 ( .A1(n165), .A2(n187), .ZN(n164) );
  ND2D0BWP12T30P140 U208 ( .A1(n164), .A2(hcnt[5]), .ZN(n168) );
  OA21D0BWP12T30P140 U209 ( .A1(n164), .A2(hcnt[5]), .B(n168), .Z(N72) );
  INVD0BWP12T30P140 U210 ( .I(vcnt[1]), .ZN(n198) );
  INVD0BWP12T30P140 U211 ( .I(vcnt[0]), .ZN(n197) );
  INVD0BWP12T30P140 U212 ( .I(vcnt[2]), .ZN(n178) );
  NR3D0BWP12T30P140 U213 ( .A1(n198), .A2(n197), .A3(n178), .ZN(n141) );
  INVD0BWP12T30P140 U214 ( .I(vcnt[8]), .ZN(n150) );
  NR4D0BWP12T30P140 U215 ( .A1(vcnt[3]), .A2(vcnt[7]), .A3(vcnt[6]), .A4(n150), 
        .ZN(n202) );
  INVD0BWP12T30P140 U216 ( .I(n141), .ZN(n145) );
  INVD0BWP12T30P140 U217 ( .I(vcnt[5]), .ZN(n183) );
  NR2D0BWP12T30P140 U218 ( .A1(n145), .A2(n183), .ZN(n140) );
  ND2D0BWP12T30P140 U219 ( .A1(hcnt[7]), .A2(hcnt[8]), .ZN(n195) );
  NR2D0BWP12T30P140 U220 ( .A1(n195), .A2(n168), .ZN(n146) );
  INVD0BWP12T30P140 U221 ( .I(hcnt[6]), .ZN(n179) );
  ND2D0BWP12T30P140 U222 ( .A1(n146), .A2(n179), .ZN(n172) );
  AOI31D0BWP12T30P140 U223 ( .A1(n202), .A2(vcnt[4]), .A3(n140), .B(n172), 
        .ZN(n149) );
  INVD0BWP12T30P140 U224 ( .I(n149), .ZN(n158) );
  NR2D0BWP12T30P140 U225 ( .A1(vcnt[3]), .A2(n158), .ZN(n142) );
  INVD0BWP12T30P140 U226 ( .I(n172), .ZN(n166) );
  ND2D0BWP12T30P140 U227 ( .A1(n141), .A2(n166), .ZN(n144) );
  AO22D0BWP12T30P140 U228 ( .A1(n141), .A2(n142), .B1(vcnt[3]), .B2(n144), .Z(
        n113) );
  INVD0BWP12T30P140 U229 ( .I(vcnt[3]), .ZN(n182) );
  OAI21D0BWP12T30P140 U230 ( .A1(n144), .A2(n142), .B(vcnt[4]), .ZN(n143) );
  OAI31D0BWP12T30P140 U231 ( .A1(vcnt[4]), .A2(n144), .A3(n182), .B(n143), 
        .ZN(n112) );
  ND2D0BWP12T30P140 U232 ( .A1(vcnt[3]), .A2(vcnt[4]), .ZN(n174) );
  NR2D0BWP12T30P140 U233 ( .A1(n145), .A2(n174), .ZN(n148) );
  ND2D0BWP12T30P140 U234 ( .A1(n149), .A2(n148), .ZN(n153) );
  OA211D0BWP12T30P140 U235 ( .A1(n158), .A2(n148), .B(n166), .C(vcnt[5]), .Z(
        n152) );
  INVD0BWP12T30P140 U236 ( .I(vcnt[6]), .ZN(n176) );
  OAI32D0BWP12T30P140 U237 ( .A1(vcnt[6]), .A2(n183), .A3(n153), .B1(n152), 
        .B2(n176), .ZN(n110) );
  INVD0BWP12T30P140 U238 ( .I(hcnt[0]), .ZN(N67) );
  INVD0BWP12T30P140 U239 ( .I(hcnt[7]), .ZN(n186) );
  INVD0BWP12T30P140 U240 ( .I(hcnt[8]), .ZN(n147) );
  NR2D0BWP12T30P140 U241 ( .A1(n179), .A2(n168), .ZN(n167) );
  INVD0BWP12T30P140 U242 ( .I(n167), .ZN(n154) );
  AOI221D0BWP12T30P140 U243 ( .A1(n186), .A2(n147), .B1(n154), .B2(n147), .C(
        n146), .ZN(N75) );
  OA21D0BWP12T30P140 U244 ( .A1(hcnt[3]), .A2(n170), .B(n165), .Z(N70) );
  ND3D0BWP12T30P140 U245 ( .A1(vcnt[6]), .A2(vcnt[5]), .A3(n148), .ZN(n155) );
  AOI21D0BWP12T30P140 U246 ( .A1(n149), .A2(n155), .B(n172), .ZN(n157) );
  INVD0BWP12T30P140 U247 ( .I(vcnt[7]), .ZN(n177) );
  ND2D0BWP12T30P140 U248 ( .A1(n149), .A2(n177), .ZN(n156) );
  OR3D0BWP12T30P140 U249 ( .A1(n155), .A2(n177), .A3(n172), .Z(n151) );
  AOI32D0BWP12T30P140 U250 ( .A1(n157), .A2(vcnt[8]), .A3(n156), .B1(n151), 
        .B2(n150), .ZN(n108) );
  INVD0BWP12T30P140 U251 ( .I(n161), .ZN(n169) );
  NR2D0BWP12T30P140 U252 ( .A1(hcnt[0]), .A2(hcnt[1]), .ZN(n226) );
  NR2D0BWP12T30P140 U253 ( .A1(n169), .A2(n226), .ZN(N68) );
  AOI21D0BWP12T30P140 U254 ( .A1(n183), .A2(n153), .B(n152), .ZN(n111) );
  AOI221D0BWP12T30P140 U255 ( .A1(hcnt[7]), .A2(n167), .B1(n186), .B2(n154), 
        .C(n166), .ZN(N74) );
  OAI22D0BWP12T30P140 U256 ( .A1(n157), .A2(n177), .B1(n156), .B2(n155), .ZN(
        n109) );
  NR2D0BWP12T30P140 U257 ( .A1(n197), .A2(n172), .ZN(n171) );
  OAI32D0BWP12T30P140 U258 ( .A1(vcnt[1]), .A2(n197), .A3(n158), .B1(n171), 
        .B2(n198), .ZN(n115) );
  ND2D0BWP12T30P140 U259 ( .A1(vcnt[1]), .A2(vcnt[0]), .ZN(n160) );
  NR3D0BWP12T30P140 U260 ( .A1(n198), .A2(n197), .A3(n172), .ZN(n159) );
  OAI32D0BWP12T30P140 U261 ( .A1(vcnt[2]), .A2(n160), .A3(n172), .B1(n159), 
        .B2(n178), .ZN(n114) );
  AOI21D0BWP12T30P140 U262 ( .A1(n161), .A2(n225), .B(n170), .ZN(N69) );
  INVD0BWP12T30P140 U263 ( .I(a[15]), .ZN(n17) );
  NR2D0BWP12T30P140 U264 ( .A1(iorq_n), .A2(a[0]), .ZN(n228) );
  AOI31D0BWP12T30P140 U265 ( .A1(a[14]), .A2(mreq_t23), .A3(n17), .B(n228), 
        .ZN(n163) );
  OAI211D0BWP12T30P140 U266 ( .A1(hcnt[3]), .A2(hcnt[2]), .B(border_n), .C(
        ioreq_t3), .ZN(n162) );
  OAI21D0BWP12T30P140 U267 ( .A1(n163), .A2(n162), .B(clkcpu), .ZN(n137) );
  AOI21D0BWP12T30P140 U268 ( .A1(n165), .A2(n187), .B(n164), .ZN(N71) );
  ND2D0BWP12T30P140 U269 ( .A1(flash_cnt[0]), .A2(flash_cnt[1]), .ZN(n203) );
  NR2D0BWP12T30P140 U270 ( .A1(n264), .A2(n203), .ZN(n204) );
  AOI21D0BWP12T30P140 U271 ( .A1(n203), .A2(n264), .B(n204), .ZN(N137) );
  AOI211D0BWP12T30P140 U272 ( .A1(n179), .A2(n168), .B(n167), .C(n166), .ZN(
        N73) );
  INVD0BWP12T30P140 U273 ( .I(hcnt[3]), .ZN(n188) );
  NR2D0BWP12T30P140 U274 ( .A1(n188), .A2(n258), .ZN(n219) );
  ND2D0BWP12T30P140 U275 ( .A1(n169), .A2(n219), .ZN(n138) );
  NR2D0BWP12T30P140 U276 ( .A1(hcnt[2]), .A2(n138), .ZN(n181) );
  AOI31D0BWP12T30P140 U277 ( .A1(n170), .A2(border_n), .A3(n188), .B(n181), 
        .ZN(n184) );
  INVD0BWP12T30P140 U278 ( .I(n184), .ZN(n185) );
  AOI22D0BWP12T30P140 U279 ( .A1(n184), .A2(n263), .B1(n197), .B2(n185), .ZN(
        n119) );
  AOI21D0BWP12T30P140 U280 ( .A1(n197), .A2(n172), .B(n171), .ZN(n116) );
  AOI22D0BWP12T30P140 U281 ( .A1(n184), .A2(n262), .B1(n198), .B2(n185), .ZN(
        n120) );
  ND4D0BWP12T30P140 U282 ( .A1(vcnt[7]), .A2(vcnt[6]), .A3(n197), .A4(n198), 
        .ZN(n173) );
  NR4D0BWP12T30P140 U283 ( .A1(vcnt[8]), .A2(n183), .A3(n174), .A4(n173), .ZN(
        n175) );
  ND2D0BWP12T30P140 U284 ( .A1(n175), .A2(n178), .ZN(n200) );
  OA21D0BWP12T30P140 U285 ( .A1(n175), .A2(vsync_n), .B(n200), .Z(n134) );
  CKMUX2D0BWP12T30P140 U286 ( .I0(shift_reg[4]), .I1(bitmap_reg[5]), .S(sload), 
        .Z(N108) );
  INVD0BWP12T30P140 U287 ( .I(n228), .ZN(N131) );
  NR2D0BWP12T30P140 U288 ( .A1(wr_n), .A2(N131), .ZN(n205) );
  CKMUX2D0BWP12T30P140 U289 ( .I0(border_color[0]), .I1(din[0]), .S(n205), .Z(
        n104) );
  AOI22D0BWP12T30P140 U290 ( .A1(n184), .A2(n261), .B1(n176), .B2(n185), .ZN(
        n125) );
  CKMUX2D0BWP12T30P140 U291 ( .I0(border_color[1]), .I1(din[1]), .S(n205), .Z(
        n105) );
  AOI22D0BWP12T30P140 U292 ( .A1(n184), .A2(n260), .B1(n177), .B2(n185), .ZN(
        n126) );
  CKMUX2D0BWP12T30P140 U293 ( .I0(border_color[2]), .I1(din[2]), .S(n205), .Z(
        n106) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n187), .A2(n185), .B1(n185), .B2(
        c_latched[4]), .ZN(n129) );
  AOI22D0BWP12T30P140 U295 ( .A1(n184), .A2(n259), .B1(n178), .B2(n185), .ZN(
        n121) );
  INVD0BWP12T30P140 U296 ( .I(hcnt[5]), .ZN(n196) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n196), .A2(n185), .B1(n185), .B2(
        c_latched[5]), .ZN(n130) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n179), .A2(n185), .B1(n185), .B2(
        c_latched[6]), .ZN(n131) );
  AOI211D0BWP12T30P140 U299 ( .A1(vcnt[7]), .A2(vcnt[6]), .B(vcnt[8]), .C(
        hcnt[8]), .ZN(n136) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n186), .A2(n185), .B1(n185), .B2(
        c_latched[7]), .ZN(n132) );
  ND2D0BWP12T30P140 U301 ( .A1(n226), .A2(n225), .ZN(n213) );
  NR3D0BWP12T30P140 U302 ( .A1(hcnt[3]), .A2(hcnt[4]), .A3(n213), .ZN(n190) );
  ND2D0BWP12T30P140 U303 ( .A1(n190), .A2(n179), .ZN(n194) );
  NR4D0BWP12T30P140 U304 ( .A1(hcnt[7]), .A2(hcnt[8]), .A3(n200), .A4(n194), 
        .ZN(n180) );
  CKMUX2D0BWP12T30P140 U305 ( .I0(msk_int_n), .I1(hcnt[5]), .S(n180), .Z(n118)
         );
  AO21D0BWP12T30P140 U306 ( .A1(n184), .A2(c_latched[3]), .B(n181), .Z(n128)
         );
  MAOI22D0BWP12T30P140 U307 ( .A1(n182), .A2(n185), .B1(n185), .B2(
        v_latched[3]), .ZN(n122) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n183), .A2(n185), .B1(n185), .B2(
        v_latched[5]), .ZN(n124) );
  CKMUX2D0BWP12T30P140 U309 ( .I0(shift_reg[6]), .I1(bitmap_reg[7]), .S(sload), 
        .Z(N110) );
  OA22D0BWP12T30P140 U310 ( .A1(n185), .A2(v_latched[4]), .B1(vcnt[4]), .B2(
        n184), .Z(n123) );
  AOI21D0BWP12T30P140 U311 ( .A1(n188), .A2(n257), .B(n219), .ZN(n102) );
  ND3D0BWP12T30P140 U312 ( .A1(n186), .A2(hcnt[8]), .A3(hcnt[6]), .ZN(n191) );
  NR4D0BWP12T30P140 U313 ( .A1(n188), .A2(n187), .A3(n213), .A4(n191), .ZN(
        n189) );
  CKMUX2D0BWP12T30P140 U314 ( .I0(hsync_n), .I1(hcnt[5]), .S(n189), .Z(n133)
         );
  INVD0BWP12T30P140 U315 ( .I(n190), .ZN(n192) );
  OAI31D0BWP12T30P140 U316 ( .A1(hcnt[5]), .A2(n192), .A3(n191), .B(hblank_n), 
        .ZN(n193) );
  OAI31D0BWP12T30P140 U317 ( .A1(n196), .A2(n195), .A3(n194), .B(n193), .ZN(
        n127) );
  ND2D0BWP12T30P140 U318 ( .A1(n198), .A2(n197), .ZN(n199) );
  NR4D0BWP12T30P140 U319 ( .A1(vcnt[2]), .A2(vcnt[5]), .A3(vcnt[4]), .A4(n199), 
        .ZN(n201) );
  AO22D0BWP12T30P140 U320 ( .A1(n202), .A2(n201), .B1(vblank_n), .B2(n200), 
        .Z(n117) );
  OA21D0BWP12T30P140 U321 ( .A1(flash_cnt[0]), .A2(flash_cnt[1]), .B(n203), 
        .Z(N136) );
  ND2D0BWP12T30P140 U322 ( .A1(n204), .A2(flash_cnt[3]), .ZN(n224) );
  OA21D0BWP12T30P140 U323 ( .A1(n204), .A2(flash_cnt[3]), .B(n224), .Z(N138)
         );
  CKMUX2D0BWP12T30P140 U324 ( .I0(shift_reg[0]), .I1(bitmap_reg[1]), .S(sload), 
        .Z(N104) );
  CKMUX2D0BWP12T30P140 U325 ( .I0(spk), .I1(din[4]), .S(n205), .Z(n103) );
  CKMUX2D0BWP12T30P140 U326 ( .I0(shift_reg[1]), .I1(bitmap_reg[2]), .S(sload), 
        .Z(N105) );
  CKMUX2D0BWP12T30P140 U327 ( .I0(mic), .I1(din[3]), .S(n205), .Z(n107) );
  CKMUX2D0BWP12T30P140 U328 ( .I0(shift_reg[3]), .I1(bitmap_reg[4]), .S(sload), 
        .Z(N107) );
  AN2D0BWP12T30P140 U329 ( .A1(sload), .A2(bitmap_reg[0]), .Z(N103) );
  CKMUX2D0BWP12T30P140 U330 ( .I0(shift_reg[5]), .I1(bitmap_reg[6]), .S(sload), 
        .Z(N109) );
  CKMUX2D0BWP12T30P140 U331 ( .I0(shift_reg[2]), .I1(bitmap_reg[3]), .S(sload), 
        .Z(N106) );
  INVD0BWP12T30P140 U332 ( .I(clk7), .ZN(n270) );
  INVD0BWP12T30P140 U333 ( .I(n270), .ZN(n269) );
  INVD0BWP12T30P140 U334 ( .I(n270), .ZN(n267) );
  INVD0BWP12T30P140 U335 ( .I(n270), .ZN(n268) );
  AN2D0BWP12T30P140 U336 ( .A1(hsync_n), .A2(vsync_n), .Z(csync) );
  ND2D0BWP12T30P140 U337 ( .A1(hblank_n), .A2(vblank_n), .ZN(n227) );
  ND2D0BWP12T30P140 U338 ( .A1(attr_out[7]), .A2(flash_cnt[4]), .ZN(n207) );
  ND2D0BWP12T30P140 U339 ( .A1(n207), .A2(shift_reg[7]), .ZN(n206) );
  OAI21D0BWP12T30P140 U340 ( .A1(shift_reg[7]), .A2(n207), .B(n206), .ZN(n211)
         );
  INVD0BWP12T30P140 U341 ( .I(n211), .ZN(n210) );
  AOI22D0BWP12T30P140 U342 ( .A1(n211), .A2(attr_out[2]), .B1(attr_out[5]), 
        .B2(n210), .ZN(n208) );
  NR2D0BWP12T30P140 U343 ( .A1(n227), .A2(n208), .ZN(b) );
  MUX2ND0BWP12T30P140 U344 ( .I0(attr_out[1]), .I1(attr_out[4]), .S(n210), 
        .ZN(n209) );
  NR2D0BWP12T30P140 U345 ( .A1(n227), .A2(n209), .ZN(g) );
  AOI22D0BWP12T30P140 U346 ( .A1(n211), .A2(attr_out[0]), .B1(attr_out[3]), 
        .B2(n210), .ZN(n212) );
  NR2D0BWP12T30P140 U347 ( .A1(n227), .A2(n212), .ZN(r) );
  INVD0BWP12T30P140 U348 ( .I(n219), .ZN(n218) );
  OAI21D0BWP12T30P140 U349 ( .A1(n258), .A2(n213), .B(n218), .ZN(n214) );
  NR2D0BWP12T30P140 U350 ( .A1(wr_n), .A2(n214), .ZN(vramwe) );
  INVD0BWP12T30P140 U351 ( .I(a[14]), .ZN(n15) );
  NR3D0BWP12T30P140 U352 ( .A1(mreq_n), .A2(a[15]), .A3(n15), .ZN(n245) );
  INVD0BWP12T30P140 U353 ( .I(n245), .ZN(n243) );
  OAI21D0BWP12T30P140 U354 ( .A1(n243), .A2(n214), .B(n218), .ZN(vramcs) );
  OAI22D0BWP12T30P140 U355 ( .A1(hcnt[0]), .A2(n218), .B1(rd_n), .B2(n214), 
        .ZN(vramoe) );
  CKMUX2D0BWP12T30P140 U356 ( .I0(c_latched[3]), .I1(a[0]), .S(n218), .Z(va[0]) );
  CKMUX2D0BWP12T30P140 U357 ( .I0(c_latched[4]), .I1(a[1]), .S(n218), .Z(va[1]) );
  CKMUX2D0BWP12T30P140 U358 ( .I0(c_latched[5]), .I1(a[2]), .S(n218), .Z(va[2]) );
  CKMUX2D0BWP12T30P140 U359 ( .I0(c_latched[6]), .I1(a[3]), .S(n218), .Z(va[3]) );
  CKMUX2D0BWP12T30P140 U360 ( .I0(c_latched[7]), .I1(a[4]), .S(n218), .Z(va[4]) );
  CKMUX2D0BWP12T30P140 U361 ( .I0(v_latched[3]), .I1(a[5]), .S(n218), .Z(va[5]) );
  CKMUX2D0BWP12T30P140 U362 ( .I0(v_latched[4]), .I1(a[6]), .S(n218), .Z(va[6]) );
  CKMUX2D0BWP12T30P140 U363 ( .I0(v_latched[5]), .I1(a[7]), .S(n218), .Z(va[7]) );
  NR2D0BWP12T30P140 U364 ( .A1(n218), .A2(hcnt[1]), .ZN(n220) );
  INVD0BWP12T30P140 U365 ( .I(n220), .ZN(n217) );
  AOI32D0BWP12T30P140 U366 ( .A1(hcnt[1]), .A2(n219), .A3(v_latched[6]), .B1(
        a[8]), .B2(n218), .ZN(n215) );
  OAI21D0BWP12T30P140 U367 ( .A1(n263), .A2(n217), .B(n215), .ZN(va[8]) );
  AOI32D0BWP12T30P140 U368 ( .A1(hcnt[1]), .A2(n219), .A3(v_latched[7]), .B1(
        a[9]), .B2(n218), .ZN(n216) );
  OAI21D0BWP12T30P140 U369 ( .A1(n262), .A2(n217), .B(n216), .ZN(va[9]) );
  INVD0BWP12T30P140 U370 ( .I(a[10]), .ZN(n5) );
  OAI22D0BWP12T30P140 U371 ( .A1(n219), .A2(n5), .B1(n217), .B2(n259), .ZN(
        va[10]) );
  INVD0BWP12T30P140 U372 ( .I(a[11]), .ZN(n3) );
  AOI22D0BWP12T30P140 U373 ( .A1(n220), .A2(n261), .B1(n218), .B2(n3), .ZN(
        va[11]) );
  INVD0BWP12T30P140 U374 ( .I(a[12]), .ZN(n9) );
  AOI22D0BWP12T30P140 U375 ( .A1(n220), .A2(n260), .B1(n218), .B2(n9), .ZN(
        va[12]) );
  INVD0BWP12T30P140 U376 ( .I(a[13]), .ZN(n11) );
  NR2D0BWP12T30P140 U377 ( .A1(n219), .A2(n11), .ZN(va[13]) );
  ND2D0BWP12T30P140 U378 ( .A1(hcnt[0]), .A2(n220), .ZN(n139) );
  ND2D0BWP12T30P140 U379 ( .A1(border_color[0]), .A2(viden_n), .ZN(n221) );
  IOA21D0BWP12T30P140 U380 ( .A1(n257), .A2(attr_reg[3]), .B(n221), .ZN(N114)
         );
  ND2D0BWP12T30P140 U381 ( .A1(border_color[1]), .A2(viden_n), .ZN(n223) );
  IOA21D0BWP12T30P140 U382 ( .A1(n257), .A2(attr_reg[1]), .B(n223), .ZN(N112)
         );
  IOA21D0BWP12T30P140 U383 ( .A1(n257), .A2(attr_reg[0]), .B(n221), .ZN(N111)
         );
  ND2D0BWP12T30P140 U384 ( .A1(border_color[2]), .A2(viden_n), .ZN(n222) );
  IOA21D0BWP12T30P140 U385 ( .A1(n257), .A2(attr_reg[5]), .B(n222), .ZN(N116)
         );
  IOA21D0BWP12T30P140 U386 ( .A1(n257), .A2(attr_reg[2]), .B(n222), .ZN(N113)
         );
  IOA21D0BWP12T30P140 U387 ( .A1(n257), .A2(attr_reg[4]), .B(n223), .ZN(N115)
         );
  MUX2ND0BWP12T30P140 U388 ( .I0(flash_cnt[4]), .I1(n266), .S(n224), .ZN(N139)
         );
  INR3D1BWP12T30P140 U389 ( .A1(n226), .B1(viden_n), .B2(n225), .ZN(N78) );
  INR2D1BWP12T30P140 U390 ( .A1(attr_out[6]), .B1(n227), .ZN(i) );
  INVD0BWP12T30P140 U391 ( .I(vramdout[0]), .ZN(n230) );
  NR2D0BWP12T30P140 U392 ( .A1(n245), .A2(n228), .ZN(n244) );
  ND2D0BWP12T30P140 U393 ( .A1(n243), .A2(n228), .ZN(n248) );
  INVD0BWP12T30P140 U394 ( .I(n248), .ZN(n240) );
  AOI22D0BWP12T30P140 U395 ( .A1(n244), .A2(attr_reg[0]), .B1(n240), .B2(
        kbcolumns[0]), .ZN(n229) );
  ND2D0BWP12T30P140 U396 ( .A1(n244), .A2(n258), .ZN(n247) );
  OAI211D0BWP12T30P140 U397 ( .A1(n243), .A2(n230), .B(n229), .C(n247), .ZN(
        dout[0]) );
  INVD0BWP12T30P140 U398 ( .I(vramdout[1]), .ZN(n232) );
  AOI22D0BWP12T30P140 U399 ( .A1(n244), .A2(attr_reg[1]), .B1(n240), .B2(
        kbcolumns[1]), .ZN(n231) );
  OAI211D0BWP12T30P140 U400 ( .A1(n243), .A2(n232), .B(n231), .C(n247), .ZN(
        dout[1]) );
  INVD0BWP12T30P140 U401 ( .I(vramdout[2]), .ZN(n234) );
  AOI22D0BWP12T30P140 U402 ( .A1(n244), .A2(attr_reg[2]), .B1(n240), .B2(
        kbcolumns[2]), .ZN(n233) );
  OAI211D0BWP12T30P140 U403 ( .A1(n243), .A2(n234), .B(n233), .C(n247), .ZN(
        dout[2]) );
  INVD0BWP12T30P140 U404 ( .I(vramdout[3]), .ZN(n236) );
  AOI22D0BWP12T30P140 U405 ( .A1(n244), .A2(attr_reg[3]), .B1(n240), .B2(
        kbcolumns[3]), .ZN(n235) );
  OAI211D0BWP12T30P140 U406 ( .A1(n243), .A2(n236), .B(n235), .C(n247), .ZN(
        dout[3]) );
  INVD0BWP12T30P140 U407 ( .I(vramdout[4]), .ZN(n238) );
  AOI22D0BWP12T30P140 U408 ( .A1(n244), .A2(attr_reg[4]), .B1(n240), .B2(
        kbcolumns[4]), .ZN(n237) );
  OAI211D0BWP12T30P140 U409 ( .A1(n243), .A2(n238), .B(n237), .C(n247), .ZN(
        dout[4]) );
  AOI22D0BWP12T30P140 U410 ( .A1(n245), .A2(vramdout[5]), .B1(n244), .B2(
        attr_reg[5]), .ZN(n239) );
  ND3D0BWP12T30P140 U411 ( .A1(n248), .A2(n247), .A3(n239), .ZN(dout[5]) );
  INVD0BWP12T30P140 U412 ( .I(vramdout[6]), .ZN(n242) );
  AOI22D0BWP12T30P140 U413 ( .A1(n244), .A2(attr_reg[6]), .B1(n240), .B2(ear), 
        .ZN(n241) );
  OAI211D0BWP12T30P140 U414 ( .A1(n243), .A2(n242), .B(n241), .C(n247), .ZN(
        dout[6]) );
  AOI22D0BWP12T30P140 U415 ( .A1(n245), .A2(vramdout[7]), .B1(n244), .B2(
        attr_reg[7]), .ZN(n246) );
  ND3D0BWP12T30P140 U416 ( .A1(n248), .A2(n247), .A3(n246), .ZN(dout[7]) );
  INR2D1BWP12T30P140 U417 ( .A1(attr_reg[6]), .B1(viden_n), .ZN(N117) );
  INR2D1BWP12T30P140 U418 ( .A1(attr_reg[7]), .B1(viden_n), .ZN(N118) );
endmodule

