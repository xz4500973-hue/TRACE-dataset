/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 16:00:55 2026
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
  wire   clk7_q, hblank_q, hsync_q, vblank_q, vsync_q, viden_q, bdr_n_q,
         sl_nxt, sl_q, iot3_q, mrt23_q, iot3_nxt, voe_nxt, vwe_nxt, dlatch_q,
         alatch_q, n2, n3, n5, n7, n9, n11, n13, n15, n17, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289;
  wire   [8:4] hc_q;
  wire   [8:0] hc_nxt;
  wire   [8:0] vc_q;
  wire   [7:0] sreg_nxt;
  wire   [7:0] bmp_q;
  wire   [7:0] sreg_q;
  wire   [2:0] bdr_col_q;
  wire   [7:0] attro_nxt;
  wire   [7:0] attr_q;
  wire   [4:0] flash_q;
  wire   [4:1] flash_nxt;
  wire   [7:0] attro_q;
  wire   [3:0] rgb_nxt;
  wire   [3:0] hc_lo;
  wire   [12:0] disp_va;
  wire   [13:0] va_nxt;

  BUFTD4BWP12T30P140 kbrows_tri_0_ ( .I(n2), .OE(n17), .Z(kbrows[0]) );
  BUFTD4BWP12T30P140 kbrows_tri_1_ ( .I(n2), .OE(n15), .Z(kbrows[1]) );
  BUFTD4BWP12T30P140 kbrows_tri_2_ ( .I(n2), .OE(n13), .Z(kbrows[2]) );
  BUFTD4BWP12T30P140 kbrows_tri_3_ ( .I(n2), .OE(n11), .Z(kbrows[3]) );
  BUFTD4BWP12T30P140 kbrows_tri_4_ ( .I(n2), .OE(n9), .Z(kbrows[4]) );
  BUFTD4BWP12T30P140 kbrows_tri_5_ ( .I(n2), .OE(n7), .Z(kbrows[5]) );
  BUFTD4BWP12T30P140 kbrows_tri_6_ ( .I(n2), .OE(n5), .Z(kbrows[6]) );
  BUFTD4BWP12T30P140 kbrows_tri_7_ ( .I(n2), .OE(n3), .Z(kbrows[7]) );
  DFND1BWP12T30P140 flash_q_reg_4_ ( .D(flash_nxt[4]), .CPN(vsync_q), .Q(
        flash_q[4]), .QN(n284) );
  DFND1BWP12T30P140 vblank_q_reg ( .D(n137), .CPN(n288), .Q(vblank_q), .QN(
        n283) );
  DFND1BWP12T30P140 vsync_q_reg ( .D(n136), .CPN(n288), .Q(vsync_q), .QN(n282)
         );
  DFND1BWP12T30P140 flash_q_reg_0_ ( .D(n281), .CPN(vsync_q), .Q(flash_q[0]), 
        .QN(n281) );
  DFND1BWP12T30P140 flash_q_reg_2_ ( .D(flash_nxt[2]), .CPN(vsync_q), .QN(n280) );
  DFND1BWP12T30P140 vlat_q_reg_0_ ( .D(n122), .CPN(n288), .QN(n279) );
  DFND1BWP12T30P140 vlat_q_reg_1_ ( .D(n123), .CPN(clk7_q), .QN(n278) );
  DFND1BWP12T30P140 vlat_q_reg_6_ ( .D(n128), .CPN(n288), .Q(disp_va[11]), 
        .QN(n277) );
  DFND1BWP12T30P140 vlat_q_reg_7_ ( .D(n129), .CPN(clk7_q), .Q(disp_va[12]), 
        .QN(n276) );
  DFND1BWP12T30P140 vlat_q_reg_2_ ( .D(n124), .CPN(n288), .QN(n275) );
  DFND1BWP12T30P140 bdr_n_q_reg ( .D(n141), .CPN(n288), .Q(bdr_n_q), .QN(n274)
         );
  DFND1BWP12T30P140 viden_q_reg ( .D(n112), .CPN(n286), .Q(viden_q), .QN(n273)
         );
  DFND1BWP12T30P140 rb_q_reg ( .D(rgb_nxt[1]), .CPN(n287), .Q(b) );
  DFND1BWP12T30P140 rr_q_reg ( .D(rgb_nxt[0]), .CPN(n287), .Q(r) );
  DFND1BWP12T30P140 ri_q_reg ( .D(rgb_nxt[3]), .CPN(n287), .Q(i) );
  DFND1BWP12T30P140 rg_q_reg ( .D(rgb_nxt[2]), .CPN(n287), .Q(g) );
  DFND1BWP12T30P140 va_q_reg_13_ ( .D(va_nxt[13]), .CPN(n287), .Q(va[13]) );
  DFND1BWP12T30P140 va_q_reg_12_ ( .D(n144), .CPN(n287), .Q(va[12]) );
  DFND1BWP12T30P140 va_q_reg_11_ ( .D(n145), .CPN(n287), .Q(va[11]) );
  DFND1BWP12T30P140 va_q_reg_10_ ( .D(n146), .CPN(n287), .Q(va[10]) );
  DFND1BWP12T30P140 va_q_reg_9_ ( .D(n143), .CPN(n287), .Q(va[9]) );
  DFND1BWP12T30P140 va_q_reg_8_ ( .D(n142), .CPN(n287), .Q(va[8]) );
  DFND1BWP12T30P140 va_q_reg_7_ ( .D(va_nxt[7]), .CPN(n287), .Q(va[7]) );
  DFND1BWP12T30P140 va_q_reg_6_ ( .D(va_nxt[6]), .CPN(n287), .Q(va[6]) );
  DFND1BWP12T30P140 va_q_reg_5_ ( .D(va_nxt[5]), .CPN(n286), .Q(va[5]) );
  DFND1BWP12T30P140 va_q_reg_4_ ( .D(va_nxt[4]), .CPN(n286), .Q(va[4]) );
  DFND1BWP12T30P140 va_q_reg_3_ ( .D(va_nxt[3]), .CPN(n286), .Q(va[3]) );
  DFND1BWP12T30P140 va_q_reg_2_ ( .D(va_nxt[2]), .CPN(n286), .Q(va[2]) );
  DFND1BWP12T30P140 va_q_reg_1_ ( .D(va_nxt[1]), .CPN(n286), .Q(va[1]) );
  DFND1BWP12T30P140 va_q_reg_0_ ( .D(va_nxt[0]), .CPN(n286), .Q(va[0]) );
  DFND1BWP12T30P140 vcs_q_reg ( .D(n147), .CPN(n286), .Q(vramcs) );
  DFND1BWP12T30P140 voe_q_reg ( .D(voe_nxt), .CPN(n286), .Q(vramoe) );
  DFND1BWP12T30P140 vwe_q_reg ( .D(vwe_nxt), .CPN(n286), .Q(vramwe) );
  DFND1BWP12T30P140 bmp_q_reg_0_ ( .D(vramdout[0]), .CPN(dlatch_q), .Q(
        bmp_q[0]) );
  DFND1BWP12T30P140 bmp_q_reg_7_ ( .D(vramdout[7]), .CPN(dlatch_q), .Q(
        bmp_q[7]) );
  DFND1BWP12T30P140 bmp_q_reg_6_ ( .D(vramdout[6]), .CPN(dlatch_q), .Q(
        bmp_q[6]) );
  DFND1BWP12T30P140 bmp_q_reg_5_ ( .D(vramdout[5]), .CPN(dlatch_q), .Q(
        bmp_q[5]) );
  DFND1BWP12T30P140 bmp_q_reg_4_ ( .D(vramdout[4]), .CPN(dlatch_q), .Q(
        bmp_q[4]) );
  DFND1BWP12T30P140 bmp_q_reg_3_ ( .D(vramdout[3]), .CPN(dlatch_q), .Q(
        bmp_q[3]) );
  DFND1BWP12T30P140 bmp_q_reg_2_ ( .D(vramdout[2]), .CPN(dlatch_q), .Q(
        bmp_q[2]) );
  DFND1BWP12T30P140 bmp_q_reg_1_ ( .D(vramdout[1]), .CPN(dlatch_q), .Q(
        bmp_q[1]) );
  DFND1BWP12T30P140 attro_q_reg_7_ ( .D(attro_nxt[7]), .CPN(n287), .Q(
        attro_q[7]) );
  DFND1BWP12T30P140 attro_q_reg_5_ ( .D(attro_nxt[5]), .CPN(n287), .Q(
        attro_q[5]) );
  DFND1BWP12T30P140 attro_q_reg_4_ ( .D(attro_nxt[4]), .CPN(n287), .Q(
        attro_q[4]) );
  DFND1BWP12T30P140 attro_q_reg_0_ ( .D(attro_nxt[0]), .CPN(n287), .Q(
        attro_q[0]) );
  DFND1BWP12T30P140 attro_q_reg_2_ ( .D(attro_nxt[2]), .CPN(n287), .Q(
        attro_q[2]) );
  DFND1BWP12T30P140 attro_q_reg_1_ ( .D(attro_nxt[1]), .CPN(n287), .Q(
        attro_q[1]) );
  DFND1BWP12T30P140 int_q_reg ( .D(n135), .CPN(n288), .Q(msk_int_n) );
  DFND1BWP12T30P140 attro_q_reg_3_ ( .D(attro_nxt[3]), .CPN(n287), .Q(
        attro_q[3]) );
  DFND1BWP12T30P140 sreg_q_reg_0_ ( .D(sreg_nxt[0]), .CPN(clk7_q), .Q(
        sreg_q[0]) );
  DFND1BWP12T30P140 sreg_q_reg_1_ ( .D(sreg_nxt[1]), .CPN(clk7_q), .Q(
        sreg_q[1]) );
  DFND1BWP12T30P140 sreg_q_reg_2_ ( .D(sreg_nxt[2]), .CPN(clk7_q), .Q(
        sreg_q[2]) );
  DFND1BWP12T30P140 sreg_q_reg_3_ ( .D(sreg_nxt[3]), .CPN(clk7_q), .Q(
        sreg_q[3]) );
  DFND1BWP12T30P140 sreg_q_reg_5_ ( .D(sreg_nxt[5]), .CPN(clk7_q), .Q(
        sreg_q[5]) );
  DFND1BWP12T30P140 attro_q_reg_6_ ( .D(attro_nxt[6]), .CPN(n287), .Q(
        attro_q[6]) );
  DFND1BWP12T30P140 sreg_q_reg_4_ ( .D(sreg_nxt[4]), .CPN(n288), .Q(sreg_q[4])
         );
  DFND1BWP12T30P140 sreg_q_reg_6_ ( .D(sreg_nxt[6]), .CPN(n288), .Q(sreg_q[6])
         );
  DFND1BWP12T30P140 spk_q_reg ( .D(n108), .CPN(n286), .Q(spk) );
  DFND1BWP12T30P140 mic_q_reg ( .D(n107), .CPN(n286), .Q(mic) );
  DFND1BWP12T30P140 flash_q_reg_3_ ( .D(flash_nxt[3]), .CPN(vsync_q), .Q(
        flash_q[3]) );
  DFND1BWP12T30P140 flash_q_reg_1_ ( .D(flash_nxt[1]), .CPN(vsync_q), .Q(
        flash_q[1]) );
  DFND1BWP12T30P140 attr_q_reg_7_ ( .D(vramdout[7]), .CPN(alatch_q), .Q(
        attr_q[7]) );
  DFND1BWP12T30P140 attr_q_reg_6_ ( .D(vramdout[6]), .CPN(alatch_q), .Q(
        attr_q[6]) );
  DFND1BWP12T30P140 sreg_q_reg_7_ ( .D(sreg_nxt[7]), .CPN(clk7_q), .Q(
        sreg_q[7]) );
  DFND1BWP12T30P140 attr_q_reg_4_ ( .D(vramdout[4]), .CPN(alatch_q), .Q(
        attr_q[4]) );
  DFND1BWP12T30P140 attr_q_reg_3_ ( .D(vramdout[3]), .CPN(alatch_q), .Q(
        attr_q[3]) );
  DFND1BWP12T30P140 attr_q_reg_2_ ( .D(vramdout[2]), .CPN(alatch_q), .Q(
        attr_q[2]) );
  DFND1BWP12T30P140 attr_q_reg_1_ ( .D(vramdout[1]), .CPN(alatch_q), .Q(
        attr_q[1]) );
  DFND1BWP12T30P140 attr_q_reg_0_ ( .D(vramdout[0]), .CPN(alatch_q), .Q(
        attr_q[0]) );
  DFND1BWP12T30P140 attr_q_reg_5_ ( .D(vramdout[5]), .CPN(alatch_q), .Q(
        attr_q[5]) );
  DFND1BWP12T30P140 hsync_q_reg ( .D(n138), .CPN(n288), .Q(hsync_q) );
  DFND1BWP12T30P140 clat_q_reg_3_ ( .D(n130), .CPN(clk7_q), .Q(disp_va[0]) );
  DFND1BWP12T30P140 hblank_q_reg ( .D(n139), .CPN(n288), .Q(hblank_q) );
  DFND1BWP12T30P140 clat_q_reg_5_ ( .D(n132), .CPN(clk7_q), .Q(disp_va[2]) );
  DFND1BWP12T30P140 clat_q_reg_4_ ( .D(n131), .CPN(clk7_q), .Q(disp_va[1]) );
  DFND1BWP12T30P140 vlat_q_reg_5_ ( .D(n127), .CPN(clk7_q), .Q(disp_va[7]) );
  DFND1BWP12T30P140 vlat_q_reg_4_ ( .D(n126), .CPN(clk7_q), .Q(disp_va[6]) );
  DFND1BWP12T30P140 vlat_q_reg_3_ ( .D(n125), .CPN(clk7_q), .Q(disp_va[5]) );
  DFND1BWP12T30P140 clat_q_reg_7_ ( .D(n134), .CPN(n288), .Q(disp_va[4]) );
  DFND1BWP12T30P140 clat_q_reg_6_ ( .D(n133), .CPN(n288), .Q(disp_va[3]) );
  DFND1BWP12T30P140 bdr_col_q_reg_2_ ( .D(n111), .CPN(n288), .Q(bdr_col_q[2])
         );
  DFND1BWP12T30P140 bdr_col_q_reg_1_ ( .D(n110), .CPN(n286), .Q(bdr_col_q[1])
         );
  DFND1BWP12T30P140 bdr_col_q_reg_0_ ( .D(n109), .CPN(n286), .Q(bdr_col_q[0])
         );
  DFQD2BWP12T30P140 mrt23_q_reg ( .D(mreq_n), .CP(clkcpu), .Q(mrt23_q) );
  DFQD2BWP12T30P140 iot3_q_reg ( .D(iot3_nxt), .CP(clkcpu), .Q(iot3_q) );
  DFQD2BWP12T30P140 vc_q_reg_7_ ( .D(n114), .CP(n286), .Q(vc_q[7]) );
  DFQD2BWP12T30P140 hc_q_reg_6_ ( .D(hc_nxt[6]), .CP(n285), .Q(hc_q[6]) );
  DFND1BWP12T30P140 cpuclk_q_reg ( .D(n148), .CPN(clk7_q), .Q(clkcpu) );
  DFQD2BWP12T30P140 vc_q_reg_6_ ( .D(n115), .CP(n286), .Q(vc_q[6]) );
  DFQD2BWP12T30P140 hc_q_reg_8_ ( .D(hc_nxt[8]), .CP(n285), .Q(hc_q[8]) );
  DFQD2BWP12T30P140 hc_q_reg_4_ ( .D(hc_nxt[4]), .CP(n285), .Q(hc_q[4]) );
  DFQD2BWP12T30P140 vc_q_reg_3_ ( .D(n118), .CP(n286), .Q(vc_q[3]) );
  DFQD2BWP12T30P140 hc_q_reg_2_ ( .D(hc_nxt[2]), .CP(n285), .Q(hc_lo[2]) );
  DFQD2BWP12T30P140 hc_q_reg_7_ ( .D(hc_nxt[7]), .CP(n285), .Q(hc_q[7]) );
  DFQD2BWP12T30P140 vc_q_reg_0_ ( .D(n121), .CP(n285), .Q(vc_q[0]) );
  DFQD2BWP12T30P140 vc_q_reg_4_ ( .D(n117), .CP(n286), .Q(vc_q[4]) );
  DFQD2BWP12T30P140 vc_q_reg_8_ ( .D(n113), .CP(n286), .Q(vc_q[8]) );
  DFQD2BWP12T30P140 hc_q_reg_0_ ( .D(hc_nxt[0]), .CP(n285), .Q(hc_lo[0]) );
  DFQD2BWP12T30P140 hc_q_reg_1_ ( .D(hc_nxt[1]), .CP(n285), .Q(hc_lo[1]) );
  DFQD2BWP12T30P140 vc_q_reg_1_ ( .D(n120), .CP(n285), .Q(vc_q[1]) );
  DFQD2BWP12T30P140 vc_q_reg_2_ ( .D(n119), .CP(n285), .Q(vc_q[2]) );
  DFQD2BWP12T30P140 hc_q_reg_5_ ( .D(hc_nxt[5]), .CP(n285), .Q(hc_q[5]) );
  DFND1BWP12T30P140 dlatch_q_reg ( .D(n150), .CPN(n288), .Q(dlatch_q) );
  DFND1BWP12T30P140 alatch_q_reg ( .D(n149), .CPN(n288), .Q(alatch_q) );
  DFND1BWP12T30P140 sl_q_reg ( .D(sl_nxt), .CPN(n288), .Q(sl_q) );
  DFQD1BWP12T30P140 clk7_q_reg ( .D(n289), .CP(clk14), .Q(clk7_q) );
  DFQD1BWP12T30P140 vc_q_reg_5_ ( .D(n116), .CP(n286), .Q(vc_q[5]) );
  DFQD1BWP12T30P140 hc_q_reg_3_ ( .D(hc_nxt[3]), .CP(n285), .Q(hc_lo[3]) );
  TIELBWP12T30P140 U196 ( .ZN(n2) );
  CKBD0BWP12T30P140 U197 ( .I(din[0]), .Z(vramdin[0]) );
  CKBD0BWP12T30P140 U198 ( .I(din[1]), .Z(vramdin[1]) );
  CKBD0BWP12T30P140 U199 ( .I(din[2]), .Z(vramdin[2]) );
  CKBD0BWP12T30P140 U200 ( .I(din[3]), .Z(vramdin[3]) );
  CKBD0BWP12T30P140 U201 ( .I(din[4]), .Z(vramdin[4]) );
  CKBD0BWP12T30P140 U202 ( .I(din[5]), .Z(vramdin[5]) );
  CKBD0BWP12T30P140 U203 ( .I(din[6]), .Z(vramdin[6]) );
  CKBD0BWP12T30P140 U204 ( .I(din[7]), .Z(vramdin[7]) );
  INVD0BWP12T30P140 U205 ( .I(a[8]), .ZN(n13) );
  INVD0BWP12T30P140 U206 ( .I(a[9]), .ZN(n7) );
  INVD0BWP12T30P140 U207 ( .I(vc_q[5]), .ZN(n202) );
  ND2D0BWP12T30P140 U208 ( .A1(vc_q[4]), .A2(vc_q[3]), .ZN(n176) );
  NR2D0BWP12T30P140 U209 ( .A1(n202), .A2(n176), .ZN(n152) );
  INVD0BWP12T30P140 U210 ( .I(vc_q[7]), .ZN(n222) );
  INVD0BWP12T30P140 U211 ( .I(vc_q[6]), .ZN(n210) );
  NR4D0BWP12T30P140 U212 ( .A1(vc_q[8]), .A2(vc_q[0]), .A3(n222), .A4(n210), 
        .ZN(n151) );
  ND2D0BWP12T30P140 U213 ( .A1(n152), .A2(n151), .ZN(n156) );
  NR3D0BWP12T30P140 U214 ( .A1(vc_q[1]), .A2(vc_q[2]), .A3(n156), .ZN(n172) );
  INVD0BWP12T30P140 U215 ( .I(vc_q[3]), .ZN(n206) );
  ND4D0BWP12T30P140 U216 ( .A1(vc_q[8]), .A2(n210), .A3(n222), .A4(n206), .ZN(
        n174) );
  NR2D0BWP12T30P140 U217 ( .A1(vc_q[1]), .A2(vc_q[2]), .ZN(n153) );
  INVD0BWP12T30P140 U218 ( .I(vc_q[4]), .ZN(n205) );
  INVD0BWP12T30P140 U219 ( .I(vc_q[0]), .ZN(n220) );
  ND4D0BWP12T30P140 U220 ( .A1(n153), .A2(n205), .A3(n220), .A4(n202), .ZN(
        n154) );
  OAI22D0BWP12T30P140 U221 ( .A1(n172), .A2(n283), .B1(n174), .B2(n154), .ZN(
        n137) );
  INVD0BWP12T30P140 U222 ( .I(vc_q[1]), .ZN(n201) );
  ND2D0BWP12T30P140 U223 ( .A1(vc_q[2]), .A2(n201), .ZN(n155) );
  OAI22D0BWP12T30P140 U224 ( .A1(n172), .A2(n282), .B1(n156), .B2(n155), .ZN(
        n136) );
  ND2D0BWP12T30P140 U225 ( .A1(flash_q[0]), .A2(flash_q[1]), .ZN(n183) );
  NR2D0BWP12T30P140 U226 ( .A1(n280), .A2(n183), .ZN(n182) );
  AOI21D0BWP12T30P140 U227 ( .A1(n183), .A2(n280), .B(n182), .ZN(flash_nxt[2])
         );
  ND2D0BWP12T30P140 U228 ( .A1(hc_lo[0]), .A2(hc_lo[1]), .ZN(n233) );
  INVD0BWP12T30P140 U229 ( .I(n233), .ZN(n204) );
  INVD0BWP12T30P140 U230 ( .I(hc_lo[3]), .ZN(n169) );
  NR2D0BWP12T30P140 U231 ( .A1(n169), .A2(n274), .ZN(n167) );
  ND2D0BWP12T30P140 U232 ( .A1(n204), .A2(n167), .ZN(n149) );
  INVD0BWP12T30P140 U233 ( .I(hc_lo[2]), .ZN(n232) );
  NR2D0BWP12T30P140 U234 ( .A1(n233), .A2(n232), .ZN(n231) );
  NR2D0BWP12T30P140 U235 ( .A1(hc_lo[2]), .A2(n149), .ZN(n189) );
  AOI31D0BWP12T30P140 U236 ( .A1(n231), .A2(bdr_n_q), .A3(n169), .B(n189), 
        .ZN(n190) );
  INVD0BWP12T30P140 U237 ( .I(n190), .ZN(n214) );
  AOI22D0BWP12T30P140 U238 ( .A1(n190), .A2(n279), .B1(n220), .B2(n214), .ZN(
        n122) );
  AOI22D0BWP12T30P140 U239 ( .A1(n190), .A2(n278), .B1(n201), .B2(n214), .ZN(
        n123) );
  AOI22D0BWP12T30P140 U240 ( .A1(n190), .A2(n277), .B1(n210), .B2(n214), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U241 ( .A1(n190), .A2(n276), .B1(n222), .B2(n214), .ZN(
        n129) );
  INVD0BWP12T30P140 U242 ( .I(vc_q[2]), .ZN(n198) );
  AOI22D0BWP12T30P140 U243 ( .A1(n190), .A2(n275), .B1(n198), .B2(n214), .ZN(
        n124) );
  AOI211D0BWP12T30P140 U244 ( .A1(vc_q[7]), .A2(vc_q[6]), .B(vc_q[8]), .C(
        hc_q[8]), .ZN(n141) );
  AOI22D0BWP12T30P140 U245 ( .A1(hc_lo[3]), .A2(n141), .B1(n273), .B2(n169), 
        .ZN(n112) );
  ND2D0BWP12T30P140 U246 ( .A1(hblank_q), .A2(vblank_q), .ZN(n264) );
  ND2D0BWP12T30P140 U247 ( .A1(attro_q[7]), .A2(flash_q[4]), .ZN(n158) );
  ND2D0BWP12T30P140 U248 ( .A1(n158), .A2(sreg_q[7]), .ZN(n157) );
  OAI21D0BWP12T30P140 U249 ( .A1(sreg_q[7]), .A2(n158), .B(n157), .ZN(n162) );
  INVD0BWP12T30P140 U250 ( .I(n162), .ZN(n161) );
  AOI22D0BWP12T30P140 U251 ( .A1(n162), .A2(attro_q[1]), .B1(attro_q[4]), .B2(
        n161), .ZN(n159) );
  NR2D0BWP12T30P140 U252 ( .A1(n264), .A2(n159), .ZN(rgb_nxt[1]) );
  MUX2ND0BWP12T30P140 U253 ( .I0(attro_q[3]), .I1(attro_q[0]), .S(n162), .ZN(
        n160) );
  NR2D0BWP12T30P140 U254 ( .A1(n264), .A2(n160), .ZN(rgb_nxt[0]) );
  AOI22D0BWP12T30P140 U255 ( .A1(n162), .A2(attro_q[2]), .B1(attro_q[5]), .B2(
        n161), .ZN(n163) );
  NR2D0BWP12T30P140 U256 ( .A1(n264), .A2(n163), .ZN(rgb_nxt[2]) );
  INVD0BWP12T30P140 U257 ( .I(a[13]), .ZN(n11) );
  NR2D0BWP12T30P140 U258 ( .A1(n167), .A2(n11), .ZN(va_nxt[13]) );
  INVD0BWP12T30P140 U259 ( .I(a[12]), .ZN(n9) );
  INVD0BWP12T30P140 U260 ( .I(n167), .ZN(n170) );
  NR2D0BWP12T30P140 U261 ( .A1(n170), .A2(hc_lo[1]), .ZN(n241) );
  AOI22D0BWP12T30P140 U262 ( .A1(n241), .A2(n276), .B1(n170), .B2(n9), .ZN(
        n144) );
  INVD0BWP12T30P140 U263 ( .I(a[11]), .ZN(n3) );
  AOI22D0BWP12T30P140 U264 ( .A1(n241), .A2(n277), .B1(n170), .B2(n3), .ZN(
        n145) );
  INVD0BWP12T30P140 U265 ( .I(a[10]), .ZN(n5) );
  INVD0BWP12T30P140 U266 ( .I(n241), .ZN(n166) );
  OAI22D0BWP12T30P140 U267 ( .A1(n167), .A2(n5), .B1(n166), .B2(n275), .ZN(
        n146) );
  AOI32D0BWP12T30P140 U268 ( .A1(hc_lo[1]), .A2(n167), .A3(disp_va[12]), .B1(
        a[9]), .B2(n170), .ZN(n164) );
  OAI21D0BWP12T30P140 U269 ( .A1(n278), .A2(n166), .B(n164), .ZN(n143) );
  AOI32D0BWP12T30P140 U270 ( .A1(hc_lo[1]), .A2(n167), .A3(disp_va[11]), .B1(
        a[8]), .B2(n170), .ZN(n165) );
  OAI21D0BWP12T30P140 U271 ( .A1(n279), .A2(n166), .B(n165), .ZN(n142) );
  CKMUX2D0BWP12T30P140 U272 ( .I0(a[7]), .I1(disp_va[7]), .S(n167), .Z(
        va_nxt[7]) );
  CKMUX2D0BWP12T30P140 U273 ( .I0(a[6]), .I1(disp_va[6]), .S(n167), .Z(
        va_nxt[6]) );
  CKMUX2D0BWP12T30P140 U274 ( .I0(a[5]), .I1(disp_va[5]), .S(n167), .Z(
        va_nxt[5]) );
  CKMUX2D0BWP12T30P140 U275 ( .I0(a[4]), .I1(disp_va[4]), .S(n167), .Z(
        va_nxt[4]) );
  CKMUX2D0BWP12T30P140 U276 ( .I0(a[3]), .I1(disp_va[3]), .S(n167), .Z(
        va_nxt[3]) );
  CKMUX2D0BWP12T30P140 U277 ( .I0(a[2]), .I1(disp_va[2]), .S(n167), .Z(
        va_nxt[2]) );
  CKMUX2D0BWP12T30P140 U278 ( .I0(a[1]), .I1(disp_va[1]), .S(n167), .Z(
        va_nxt[1]) );
  CKMUX2D0BWP12T30P140 U279 ( .I0(a[0]), .I1(disp_va[0]), .S(n167), .Z(
        va_nxt[0]) );
  INVD0BWP12T30P140 U280 ( .I(a[14]), .ZN(n15) );
  NR2D0BWP12T30P140 U281 ( .A1(hc_lo[0]), .A2(hc_lo[1]), .ZN(n203) );
  ND2D0BWP12T30P140 U282 ( .A1(n203), .A2(n232), .ZN(n187) );
  NR2D0BWP12T30P140 U283 ( .A1(n187), .A2(n274), .ZN(n168) );
  NR3D0BWP12T30P140 U284 ( .A1(a[15]), .A2(mreq_n), .A3(n15), .ZN(n260) );
  INVD0BWP12T30P140 U285 ( .I(n260), .ZN(n258) );
  OAI21D0BWP12T30P140 U286 ( .A1(n168), .A2(n258), .B(n170), .ZN(n147) );
  AOI21D0BWP12T30P140 U287 ( .A1(n169), .A2(n187), .B(n274), .ZN(n171) );
  OAI22D0BWP12T30P140 U288 ( .A1(hc_lo[0]), .A2(n170), .B1(rd_n), .B2(n171), 
        .ZN(voe_nxt) );
  NR2D0BWP12T30P140 U289 ( .A1(wr_n), .A2(n171), .ZN(vwe_nxt) );
  AN2D0BWP12T30P140 U290 ( .A1(attr_q[7]), .A2(n273), .Z(attro_nxt[7]) );
  NR4D0BWP12T30P140 U291 ( .A1(hc_q[6]), .A2(hc_lo[3]), .A3(hc_q[4]), .A4(n187), .ZN(n191) );
  INVD0BWP12T30P140 U292 ( .I(hc_q[8]), .ZN(n208) );
  INVD0BWP12T30P140 U293 ( .I(hc_q[7]), .ZN(n226) );
  ND4D0BWP12T30P140 U294 ( .A1(n172), .A2(n191), .A3(n208), .A4(n226), .ZN(
        n173) );
  CKMUX2D0BWP12T30P140 U295 ( .I0(hc_q[5]), .I1(msk_int_n), .S(n173), .Z(n135)
         );
  AN2D0BWP12T30P140 U296 ( .A1(sl_q), .A2(bmp_q[0]), .Z(sreg_nxt[0]) );
  CKMUX2D0BWP12T30P140 U297 ( .I0(sreg_q[0]), .I1(bmp_q[1]), .S(sl_q), .Z(
        sreg_nxt[1]) );
  CKMUX2D0BWP12T30P140 U298 ( .I0(sreg_q[1]), .I1(bmp_q[2]), .S(sl_q), .Z(
        sreg_nxt[2]) );
  CKMUX2D0BWP12T30P140 U299 ( .I0(sreg_q[2]), .I1(bmp_q[3]), .S(sl_q), .Z(
        sreg_nxt[3]) );
  CKMUX2D0BWP12T30P140 U300 ( .I0(sreg_q[4]), .I1(bmp_q[5]), .S(sl_q), .Z(
        sreg_nxt[5]) );
  AN2D0BWP12T30P140 U301 ( .A1(attr_q[6]), .A2(n273), .Z(attro_nxt[6]) );
  CKMUX2D0BWP12T30P140 U302 ( .I0(sreg_q[3]), .I1(bmp_q[4]), .S(sl_q), .Z(
        sreg_nxt[4]) );
  CKMUX2D0BWP12T30P140 U303 ( .I0(sreg_q[5]), .I1(bmp_q[6]), .S(sl_q), .Z(
        sreg_nxt[6]) );
  NR2D0BWP12T30P140 U304 ( .A1(iorq_n), .A2(a[0]), .ZN(n243) );
  INVD0BWP12T30P140 U305 ( .I(n243), .ZN(iot3_nxt) );
  NR2D0BWP12T30P140 U306 ( .A1(wr_n), .A2(iot3_nxt), .ZN(n237) );
  CKMUX2D0BWP12T30P140 U307 ( .I0(spk), .I1(din[5]), .S(n237), .Z(n108) );
  CKMUX2D0BWP12T30P140 U308 ( .I0(mic), .I1(din[4]), .S(n237), .Z(n107) );
  ND3D0BWP12T30P140 U309 ( .A1(vc_q[1]), .A2(vc_q[0]), .A3(vc_q[2]), .ZN(n180)
         );
  NR2D0BWP12T30P140 U310 ( .A1(n180), .A2(n174), .ZN(n175) );
  ND2D0BWP12T30P140 U311 ( .A1(hc_q[8]), .A2(hc_q[7]), .ZN(n196) );
  ND2D0BWP12T30P140 U312 ( .A1(hc_lo[3]), .A2(n231), .ZN(n236) );
  INVD0BWP12T30P140 U313 ( .I(hc_q[4]), .ZN(n235) );
  NR2D0BWP12T30P140 U314 ( .A1(n236), .A2(n235), .ZN(n234) );
  ND2D0BWP12T30P140 U315 ( .A1(n234), .A2(hc_q[5]), .ZN(n209) );
  NR2D0BWP12T30P140 U316 ( .A1(n196), .A2(n209), .ZN(n207) );
  INVD0BWP12T30P140 U317 ( .I(hc_q[6]), .ZN(n215) );
  ND2D0BWP12T30P140 U318 ( .A1(n207), .A2(n215), .ZN(n219) );
  AOI31D0BWP12T30P140 U319 ( .A1(vc_q[4]), .A2(vc_q[5]), .A3(n175), .B(n219), 
        .ZN(n185) );
  NR2D0BWP12T30P140 U320 ( .A1(n180), .A2(n176), .ZN(n184) );
  ND2D0BWP12T30P140 U321 ( .A1(vc_q[5]), .A2(n184), .ZN(n212) );
  NR2D0BWP12T30P140 U322 ( .A1(n210), .A2(n212), .ZN(n177) );
  ND2D0BWP12T30P140 U323 ( .A1(n185), .A2(n177), .ZN(n223) );
  INVD0BWP12T30P140 U324 ( .I(n185), .ZN(n213) );
  INVD0BWP12T30P140 U325 ( .I(n219), .ZN(n224) );
  OAI21D0BWP12T30P140 U326 ( .A1(n177), .A2(n213), .B(n224), .ZN(n221) );
  AOI21D0BWP12T30P140 U327 ( .A1(n185), .A2(n222), .B(n221), .ZN(n179) );
  INVD0BWP12T30P140 U328 ( .I(vc_q[8]), .ZN(n178) );
  OAI32D0BWP12T30P140 U329 ( .A1(vc_q[8]), .A2(n222), .A3(n223), .B1(n179), 
        .B2(n178), .ZN(n113) );
  AN3D0BWP12T30P140 U330 ( .A1(n203), .A2(n273), .A3(hc_lo[2]), .Z(sl_nxt) );
  INVD0BWP12T30P140 U331 ( .I(n180), .ZN(n230) );
  ND2D0BWP12T30P140 U332 ( .A1(n230), .A2(n224), .ZN(n228) );
  NR2D0BWP12T30P140 U333 ( .A1(vc_q[3]), .A2(n213), .ZN(n229) );
  OAI21D0BWP12T30P140 U334 ( .A1(n228), .A2(n229), .B(vc_q[4]), .ZN(n181) );
  OAI31D0BWP12T30P140 U335 ( .A1(vc_q[4]), .A2(n228), .A3(n206), .B(n181), 
        .ZN(n117) );
  ND2D0BWP12T30P140 U336 ( .A1(n182), .A2(flash_q[3]), .ZN(n242) );
  OA21D0BWP12T30P140 U337 ( .A1(n182), .A2(flash_q[3]), .B(n242), .Z(
        flash_nxt[3]) );
  OA21D0BWP12T30P140 U338 ( .A1(flash_q[0]), .A2(flash_q[1]), .B(n183), .Z(
        flash_nxt[1]) );
  INVD0BWP12T30P140 U339 ( .I(n184), .ZN(n186) );
  AOI211D0BWP12T30P140 U340 ( .A1(n185), .A2(n186), .B(n219), .C(n202), .ZN(
        n211) );
  AOI221D0BWP12T30P140 U341 ( .A1(n219), .A2(n202), .B1(n186), .B2(n202), .C(
        n211), .ZN(n116) );
  CKMUX2D0BWP12T30P140 U342 ( .I0(sreg_q[6]), .I1(bmp_q[7]), .S(sl_q), .Z(
        sreg_nxt[7]) );
  NR4D0BWP12T30P140 U343 ( .A1(hc_q[7]), .A2(n208), .A3(n215), .A4(n187), .ZN(
        n192) );
  ND3D0BWP12T30P140 U344 ( .A1(hc_lo[3]), .A2(hc_q[4]), .A3(n192), .ZN(n188)
         );
  CKMUX2D0BWP12T30P140 U345 ( .I0(hc_q[5]), .I1(hsync_q), .S(n188), .Z(n138)
         );
  OA21D0BWP12T30P140 U346 ( .A1(hc_lo[3]), .A2(n231), .B(n236), .Z(hc_nxt[3])
         );
  AO21D0BWP12T30P140 U347 ( .A1(n190), .A2(disp_va[0]), .B(n189), .Z(n130) );
  INVD0BWP12T30P140 U348 ( .I(hc_q[5]), .ZN(n197) );
  INVD0BWP12T30P140 U349 ( .I(n191), .ZN(n195) );
  ND2D0BWP12T30P140 U350 ( .A1(n192), .A2(n235), .ZN(n193) );
  OAI31D0BWP12T30P140 U351 ( .A1(hc_lo[3]), .A2(hc_q[5]), .A3(n193), .B(
        hblank_q), .ZN(n194) );
  OAI31D0BWP12T30P140 U352 ( .A1(n197), .A2(n196), .A3(n195), .B(n194), .ZN(
        n139) );
  OA21D0BWP12T30P140 U353 ( .A1(n234), .A2(hc_q[5]), .B(n209), .Z(hc_nxt[5])
         );
  MAOI22D0BWP12T30P140 U354 ( .A1(n197), .A2(n214), .B1(n214), .B2(disp_va[2]), 
        .ZN(n132) );
  ND2D0BWP12T30P140 U355 ( .A1(vc_q[1]), .A2(vc_q[0]), .ZN(n200) );
  NR3D0BWP12T30P140 U356 ( .A1(n201), .A2(n220), .A3(n219), .ZN(n199) );
  OAI32D0BWP12T30P140 U357 ( .A1(vc_q[2]), .A2(n200), .A3(n219), .B1(n199), 
        .B2(n198), .ZN(n119) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n235), .A2(n214), .B1(n214), .B2(disp_va[1]), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U359 ( .A1(n220), .A2(n219), .ZN(n218) );
  OAI32D0BWP12T30P140 U360 ( .A1(vc_q[1]), .A2(n220), .A3(n213), .B1(n218), 
        .B2(n201), .ZN(n120) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n202), .A2(n214), .B1(n214), .B2(disp_va[7]), 
        .ZN(n127) );
  NR2D0BWP12T30P140 U362 ( .A1(n204), .A2(n203), .ZN(hc_nxt[1]) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n205), .A2(n214), .B1(n214), .B2(disp_va[6]), 
        .ZN(n126) );
  INVD0BWP12T30P140 U364 ( .I(hc_lo[0]), .ZN(hc_nxt[0]) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n206), .A2(n214), .B1(n214), .B2(disp_va[5]), 
        .ZN(n125) );
  NR2D0BWP12T30P140 U366 ( .A1(n215), .A2(n209), .ZN(n227) );
  INVD0BWP12T30P140 U367 ( .I(n227), .ZN(n225) );
  AOI221D0BWP12T30P140 U368 ( .A1(n226), .A2(n208), .B1(n225), .B2(n208), .C(
        n207), .ZN(hc_nxt[8]) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n226), .A2(n214), .B1(n214), .B2(disp_va[4]), 
        .ZN(n134) );
  AOI211D0BWP12T30P140 U370 ( .A1(n215), .A2(n209), .B(n227), .C(n224), .ZN(
        hc_nxt[6]) );
  CKMUX2D0BWP12T30P140 U371 ( .I0(bdr_col_q[1]), .I1(din[1]), .S(n237), .Z(
        n110) );
  OAI32D0BWP12T30P140 U372 ( .A1(vc_q[6]), .A2(n213), .A3(n212), .B1(n211), 
        .B2(n210), .ZN(n115) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n215), .A2(n214), .B1(n214), .B2(disp_va[3]), 
        .ZN(n133) );
  INVD0BWP12T30P140 U374 ( .I(a[15]), .ZN(n17) );
  AOI31D0BWP12T30P140 U375 ( .A1(a[14]), .A2(mrt23_q), .A3(n17), .B(n243), 
        .ZN(n217) );
  OAI211D0BWP12T30P140 U376 ( .A1(hc_lo[3]), .A2(hc_lo[2]), .B(bdr_n_q), .C(
        iot3_q), .ZN(n216) );
  OAI21D0BWP12T30P140 U377 ( .A1(n217), .A2(n216), .B(clkcpu), .ZN(n148) );
  AOI21D0BWP12T30P140 U378 ( .A1(n220), .A2(n219), .B(n218), .ZN(n121) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n223), .A2(n222), .B1(n222), .B2(n221), .ZN(
        n114) );
  CKMUX2D0BWP12T30P140 U380 ( .I0(bdr_col_q[2]), .I1(din[2]), .S(n237), .Z(
        n111) );
  AOI221D0BWP12T30P140 U381 ( .A1(hc_q[7]), .A2(n227), .B1(n226), .B2(n225), 
        .C(n224), .ZN(hc_nxt[7]) );
  AO22D0BWP12T30P140 U382 ( .A1(n230), .A2(n229), .B1(vc_q[3]), .B2(n228), .Z(
        n118) );
  AOI21D0BWP12T30P140 U383 ( .A1(n233), .A2(n232), .B(n231), .ZN(hc_nxt[2]) );
  AOI21D0BWP12T30P140 U384 ( .A1(n236), .A2(n235), .B(n234), .ZN(hc_nxt[4]) );
  CKMUX2D0BWP12T30P140 U385 ( .I0(bdr_col_q[0]), .I1(din[0]), .S(n237), .Z(
        n109) );
  INVD0BWP12T30P140 U386 ( .I(clk7_q), .ZN(n289) );
  INVD0BWP12T30P140 U387 ( .I(n289), .ZN(n288) );
  INVD0BWP12T30P140 U388 ( .I(n289), .ZN(n287) );
  INVD0BWP12T30P140 U389 ( .I(n289), .ZN(n286) );
  INVD0BWP12T30P140 U390 ( .I(n289), .ZN(n285) );
  AN2D0BWP12T30P140 U391 ( .A1(hsync_q), .A2(vsync_q), .Z(csync) );
  ND2D0BWP12T30P140 U392 ( .A1(viden_q), .A2(bdr_col_q[2]), .ZN(n238) );
  IOA21D0BWP12T30P140 U393 ( .A1(attr_q[5]), .A2(n273), .B(n238), .ZN(
        attro_nxt[5]) );
  ND2D0BWP12T30P140 U394 ( .A1(viden_q), .A2(bdr_col_q[1]), .ZN(n239) );
  IOA21D0BWP12T30P140 U395 ( .A1(attr_q[4]), .A2(n273), .B(n239), .ZN(
        attro_nxt[4]) );
  ND2D0BWP12T30P140 U396 ( .A1(viden_q), .A2(bdr_col_q[0]), .ZN(n240) );
  IOA21D0BWP12T30P140 U397 ( .A1(attr_q[0]), .A2(n273), .B(n240), .ZN(
        attro_nxt[0]) );
  IOA21D0BWP12T30P140 U398 ( .A1(attr_q[2]), .A2(n273), .B(n238), .ZN(
        attro_nxt[2]) );
  IOA21D0BWP12T30P140 U399 ( .A1(attr_q[1]), .A2(n273), .B(n239), .ZN(
        attro_nxt[1]) );
  IOA21D0BWP12T30P140 U400 ( .A1(attr_q[3]), .A2(n273), .B(n240), .ZN(
        attro_nxt[3]) );
  ND2D0BWP12T30P140 U401 ( .A1(hc_lo[0]), .A2(n241), .ZN(n150) );
  MUX2ND0BWP12T30P140 U402 ( .I0(flash_q[4]), .I1(n284), .S(n242), .ZN(
        flash_nxt[4]) );
  INVD0BWP12T30P140 U403 ( .I(vramdout[0]), .ZN(n245) );
  NR2D0BWP12T30P140 U404 ( .A1(n243), .A2(n260), .ZN(n259) );
  NR2D0BWP12T30P140 U405 ( .A1(n260), .A2(iot3_nxt), .ZN(n255) );
  AOI22D0BWP12T30P140 U406 ( .A1(n259), .A2(attr_q[0]), .B1(n255), .B2(
        kbcolumns[0]), .ZN(n244) );
  ND2D0BWP12T30P140 U407 ( .A1(n259), .A2(n274), .ZN(n262) );
  OAI211D0BWP12T30P140 U408 ( .A1(n258), .A2(n245), .B(n244), .C(n262), .ZN(
        dout[0]) );
  INVD0BWP12T30P140 U409 ( .I(vramdout[1]), .ZN(n247) );
  AOI22D0BWP12T30P140 U410 ( .A1(n259), .A2(attr_q[1]), .B1(n255), .B2(
        kbcolumns[1]), .ZN(n246) );
  OAI211D0BWP12T30P140 U411 ( .A1(n258), .A2(n247), .B(n246), .C(n262), .ZN(
        dout[1]) );
  INVD0BWP12T30P140 U412 ( .I(vramdout[2]), .ZN(n249) );
  AOI22D0BWP12T30P140 U413 ( .A1(n259), .A2(attr_q[2]), .B1(n255), .B2(
        kbcolumns[2]), .ZN(n248) );
  OAI211D0BWP12T30P140 U414 ( .A1(n258), .A2(n249), .B(n248), .C(n262), .ZN(
        dout[2]) );
  INVD0BWP12T30P140 U415 ( .I(vramdout[3]), .ZN(n251) );
  AOI22D0BWP12T30P140 U416 ( .A1(n259), .A2(attr_q[3]), .B1(n255), .B2(
        kbcolumns[3]), .ZN(n250) );
  OAI211D0BWP12T30P140 U417 ( .A1(n258), .A2(n251), .B(n250), .C(n262), .ZN(
        dout[3]) );
  INVD0BWP12T30P140 U418 ( .I(vramdout[4]), .ZN(n253) );
  AOI22D0BWP12T30P140 U419 ( .A1(n259), .A2(attr_q[4]), .B1(n255), .B2(
        kbcolumns[4]), .ZN(n252) );
  OAI211D0BWP12T30P140 U420 ( .A1(n258), .A2(n253), .B(n252), .C(n262), .ZN(
        dout[4]) );
  INVD0BWP12T30P140 U421 ( .I(n255), .ZN(n263) );
  AOI22D0BWP12T30P140 U422 ( .A1(n260), .A2(vramdout[5]), .B1(n259), .B2(
        attr_q[5]), .ZN(n254) );
  ND3D0BWP12T30P140 U423 ( .A1(n263), .A2(n262), .A3(n254), .ZN(dout[5]) );
  INVD0BWP12T30P140 U424 ( .I(vramdout[6]), .ZN(n257) );
  AOI22D0BWP12T30P140 U425 ( .A1(n259), .A2(attr_q[6]), .B1(n255), .B2(ear), 
        .ZN(n256) );
  OAI211D0BWP12T30P140 U426 ( .A1(n258), .A2(n257), .B(n256), .C(n262), .ZN(
        dout[6]) );
  AOI22D0BWP12T30P140 U427 ( .A1(n260), .A2(vramdout[7]), .B1(n259), .B2(
        attr_q[7]), .ZN(n261) );
  ND3D0BWP12T30P140 U428 ( .A1(n263), .A2(n262), .A3(n261), .ZN(dout[7]) );
  INR2D1BWP12T30P140 U429 ( .A1(attro_q[6]), .B1(n264), .ZN(rgb_nxt[3]) );
endmodule

