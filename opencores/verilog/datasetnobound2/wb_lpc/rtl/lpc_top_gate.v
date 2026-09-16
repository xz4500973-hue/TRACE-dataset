/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 18:38:23 2026
/////////////////////////////////////////////////////////////


module wb_lpc_host ( clk_i, nrst_i, wbs_adr_i, wbs_dat_o, wbs_dat_i, wbs_sel_i, 
        wbs_tga_i, wbs_we_i, wbs_stb_i, wbs_cyc_i, wbs_ack_o, wbs_err_o, 
        dma_chan_i, dma_tc_i, lframe_o, lad_i, lad_o, lad_oe );
  input [31:0] wbs_adr_i;
  output [31:0] wbs_dat_o;
  input [31:0] wbs_dat_i;
  input [3:0] wbs_sel_i;
  input [1:0] wbs_tga_i;
  input [2:0] dma_chan_i;
  input [3:0] lad_i;
  output [3:0] lad_o;
  input clk_i, nrst_i, wbs_we_i, wbs_stb_i, wbs_cyc_i, dma_tc_i;
  output wbs_ack_o, wbs_err_o, lframe_o, lad_oe;
  wire   dat_cnt_0_, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n290, n291, n292, n293;
  wire   [2:0] byte_cnt;
  wire   [12:0] state;
  wire   [2:0] adr_cnt;
  wire   [2:0] xfr_len;

  DFCNQD1BWP12T30P140 wbs_ack_o_reg ( .D(n231), .CP(clk_i), .CDN(n227), .Q(
        wbs_ack_o) );
  DFCNQD1BWP12T30P140 wbs_err_o_reg ( .D(n229), .CP(clk_i), .CDN(n227), .Q(
        wbs_err_o) );
  DFCNQD1BWP12T30P140 lframe_o_reg ( .D(n230), .CP(clk_i), .CDN(n227), .Q(
        lframe_o) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_4_ ( .D(n281), .CP(n291), .CDN(n225), .Q(
        wbs_dat_o[4]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_5_ ( .D(n280), .CP(n291), .CDN(n225), .Q(
        wbs_dat_o[5]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_6_ ( .D(n279), .CP(n291), .CDN(n225), .Q(
        wbs_dat_o[6]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_7_ ( .D(n278), .CP(n291), .CDN(n225), .Q(
        wbs_dat_o[7]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_12_ ( .D(n273), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[12]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_13_ ( .D(n272), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[13]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_14_ ( .D(n271), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[14]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_15_ ( .D(n270), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[15]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_20_ ( .D(n265), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[20]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_21_ ( .D(n264), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[21]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_22_ ( .D(n263), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[22]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_23_ ( .D(n262), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[23]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n257), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[28]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_29_ ( .D(n256), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[29]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_30_ ( .D(n255), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[30]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n254), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[31]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_24_ ( .D(n261), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[24]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n260), .CP(n292), .CDN(n227), .Q(
        wbs_dat_o[25]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n259), .CP(n291), .CDN(n227), .Q(
        wbs_dat_o[26]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_27_ ( .D(n258), .CP(n292), .CDN(n227), .Q(
        wbs_dat_o[27]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_16_ ( .D(n269), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[16]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_17_ ( .D(n268), .CP(n292), .CDN(n227), .Q(
        wbs_dat_o[17]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n267), .CP(n291), .CDN(n227), .Q(
        wbs_dat_o[18]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_19_ ( .D(n266), .CP(n291), .CDN(n227), .Q(
        wbs_dat_o[19]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_8_ ( .D(n277), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[8]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_9_ ( .D(n276), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[9]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_10_ ( .D(n275), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[10]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_11_ ( .D(n274), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[11]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_0_ ( .D(n285), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[0]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_1_ ( .D(n284), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[1]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_2_ ( .D(n283), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[2]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_3_ ( .D(n282), .CP(n293), .CDN(n290), .Q(
        wbs_dat_o[3]) );
  DFCNQD1BWP12T30P140 state_reg_10_ ( .D(n242), .CP(n292), .CDN(n227), .Q(
        state[10]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n249), .CP(n291), .CDN(n225), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_2_ ( .D(n253), .CP(n291), .CDN(n225), .Q(
        xfr_len[2]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n247), .CP(n292), .CDN(n225), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 lad_o_reg_3_ ( .D(n232), .CP(n291), .CDN(n290), .Q(
        lad_o[3]) );
  DFCNQD1BWP12T30P140 lad_o_reg_2_ ( .D(n233), .CP(n292), .CDN(n290), .Q(
        lad_o[2]) );
  DFCNQD1BWP12T30P140 lad_o_reg_0_ ( .D(n235), .CP(n293), .CDN(n290), .Q(
        lad_o[0]) );
  DFCNQD1BWP12T30P140 lad_o_reg_1_ ( .D(n234), .CP(n293), .CDN(n290), .Q(
        lad_o[1]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_0_ ( .D(n237), .CP(n291), .CDN(n225), .Q(
        xfr_len[0]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_1_ ( .D(n236), .CP(n291), .CDN(n225), .Q(
        xfr_len[1]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_0_ ( .D(n240), .CP(n292), .CDN(n290), .Q(
        adr_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n248), .CP(n291), .CDN(n225), .Q(
        state[4]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n250), .CP(n291), .CDN(n225), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_6_ ( .D(n246), .CP(n292), .CDN(n226), .Q(
        state[6]) );
  DFCNQD1BWP12T30P140 dat_cnt_reg_3_ ( .D(n288), .CP(n291), .CDN(n225), .Q(
        byte_cnt[2]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_2_ ( .D(n238), .CP(n292), .CDN(n225), .Q(
        adr_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n251), .CP(n292), .CDN(nrst_i), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n252), .CP(n292), .CDN(n290), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 dat_cnt_reg_1_ ( .D(n286), .CP(n293), .CDN(n225), .Q(
        byte_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_11_ ( .D(n241), .CP(n292), .CDN(n226), .Q(
        state[11]) );
  DFCNQD1BWP12T30P140 state_reg_9_ ( .D(n243), .CP(n292), .CDN(n227), .Q(
        state[9]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(n245), .CP(n291), .CDN(n226), .Q(
        state[7]) );
  DFCNQD1BWP12T30P140 state_reg_8_ ( .D(n244), .CP(n292), .CDN(n290), .Q(
        state[8]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n239), .CP(n292), .CDN(n225), .Q(
        adr_cnt[1]) );
  DFCNQD1BWP12T30P140 dat_cnt_reg_2_ ( .D(n287), .CP(n292), .CDN(n290), .Q(
        byte_cnt[1]) );
  DFCNQD1BWP12T30P140 lad_oe_reg ( .D(n228), .CP(n293), .CDN(n227), .Q(lad_oe)
         );
  DFCNQD1BWP12T30P140 dat_cnt_reg_0_ ( .D(n289), .CP(n293), .CDN(n290), .Q(
        dat_cnt_0_) );
  DFCNQD1BWP12T30P140 state_reg_12_ ( .D(state[12]), .CP(n293), .CDN(n227), 
        .Q(state[12]) );
  INVD0BWP12T30P140 U3 ( .I(state[7]), .ZN(n188) );
  INVD0BWP12T30P140 U4 ( .I(state[3]), .ZN(n36) );
  INVD0BWP12T30P140 U5 ( .I(state[5]), .ZN(n224) );
  NR2D0BWP12T30P140 U6 ( .A1(state[2]), .A2(state[4]), .ZN(n32) );
  ND3D0BWP12T30P140 U7 ( .A1(n36), .A2(n224), .A3(n32), .ZN(n8) );
  NR2D0BWP12T30P140 U8 ( .A1(state[1]), .A2(n8), .ZN(n12) );
  INVD0BWP12T30P140 U9 ( .I(state[6]), .ZN(n141) );
  ND2D0BWP12T30P140 U10 ( .A1(n12), .A2(n141), .ZN(n165) );
  NR3D0BWP12T30P140 U11 ( .A1(state[0]), .A2(state[11]), .A3(n165), .ZN(n2) );
  INVD0BWP12T30P140 U12 ( .I(state[10]), .ZN(n35) );
  ND2D0BWP12T30P140 U13 ( .A1(n2), .A2(n35), .ZN(n29) );
  NR2D0BWP12T30P140 U14 ( .A1(state[8]), .A2(n29), .ZN(n27) );
  ND3D0BWP12T30P140 U15 ( .A1(n188), .A2(n27), .A3(state[9]), .ZN(n216) );
  NR3D0BWP12T30P140 U16 ( .A1(state[8]), .A2(state[9]), .A3(state[7]), .ZN(n1)
         );
  ND2D0BWP12T30P140 U17 ( .A1(n2), .A2(n1), .ZN(n212) );
  INVD0BWP12T30P140 U18 ( .I(xfr_len[2]), .ZN(n150) );
  ND2D0BWP12T30P140 U19 ( .A1(n150), .A2(byte_cnt[2]), .ZN(n3) );
  INVD0BWP12T30P140 U20 ( .I(byte_cnt[0]), .ZN(n196) );
  INVD0BWP12T30P140 U21 ( .I(byte_cnt[1]), .ZN(n199) );
  INVD0BWP12T30P140 U22 ( .I(xfr_len[1]), .ZN(n197) );
  AOI22D0BWP12T30P140 U23 ( .A1(xfr_len[1]), .A2(byte_cnt[1]), .B1(n199), .B2(
        n197), .ZN(n138) );
  AOI21D0BWP12T30P140 U24 ( .A1(xfr_len[0]), .A2(n196), .B(n138), .ZN(n136) );
  INVD0BWP12T30P140 U25 ( .I(byte_cnt[2]), .ZN(n147) );
  ND2D0BWP12T30P140 U26 ( .A1(xfr_len[2]), .A2(n147), .ZN(n134) );
  INVD0BWP12T30P140 U27 ( .I(xfr_len[0]), .ZN(n166) );
  ND2D0BWP12T30P140 U28 ( .A1(byte_cnt[0]), .A2(n166), .ZN(n137) );
  AN4D0BWP12T30P140 U29 ( .A1(n3), .A2(n136), .A3(n134), .A4(n137), .Z(n217)
         );
  IND2D1BWP12T30P140 U30 ( .A1(n216), .B1(n217), .ZN(n34) );
  AO21D0BWP12T30P140 U31 ( .A1(n212), .A2(n34), .B(state[12]), .Z(n5) );
  ND2D0BWP12T30P140 U32 ( .A1(wbs_cyc_i), .A2(wbs_stb_i), .ZN(n77) );
  ND2D0BWP12T30P140 U33 ( .A1(n5), .A2(wbs_ack_o), .ZN(n4) );
  OAI31D0BWP12T30P140 U34 ( .A1(n216), .A2(n5), .A3(n77), .B(n4), .ZN(n231) );
  INVD0BWP12T30P140 U35 ( .I(state[11]), .ZN(n175) );
  INVD0BWP12T30P140 U36 ( .I(state[8]), .ZN(n190) );
  INVD0BWP12T30P140 U37 ( .I(state[9]), .ZN(n181) );
  ND4D0BWP12T30P140 U38 ( .A1(n190), .A2(n35), .A3(n181), .A4(n188), .ZN(n7)
         );
  NR2D0BWP12T30P140 U39 ( .A1(n165), .A2(n7), .ZN(n30) );
  ND3D0BWP12T30P140 U40 ( .A1(n175), .A2(n30), .A3(state[0]), .ZN(n9) );
  INVD0BWP12T30P140 U41 ( .I(n9), .ZN(n160) );
  INVD0BWP12T30P140 U42 ( .I(state[12]), .ZN(n203) );
  NR2D0BWP12T30P140 U43 ( .A1(state[0]), .A2(state[11]), .ZN(n6) );
  IND2D1BWP12T30P140 U44 ( .A1(n7), .B1(n6), .ZN(n11) );
  NR3D0BWP12T30P140 U45 ( .A1(state[6]), .A2(n8), .A3(n11), .ZN(n25) );
  INVD0BWP12T30P140 U46 ( .I(state[2]), .ZN(n130) );
  NR3D0BWP12T30P140 U47 ( .A1(state[6]), .A2(state[1]), .A3(n11), .ZN(n31) );
  AN2D0BWP12T30P140 U48 ( .A1(n31), .A2(n36), .Z(n26) );
  ND2D0BWP12T30P140 U49 ( .A1(n26), .A2(n224), .ZN(n24) );
  NR3D0BWP12T30P140 U50 ( .A1(state[4]), .A2(n130), .A3(n24), .ZN(n129) );
  INVD0BWP12T30P140 U51 ( .I(n129), .ZN(n158) );
  ND2D0BWP12T30P140 U52 ( .A1(n158), .A2(n9), .ZN(n122) );
  OAI21D0BWP12T30P140 U53 ( .A1(n25), .A2(n122), .B(n203), .ZN(n10) );
  AO22D0BWP12T30P140 U54 ( .A1(n160), .A2(n203), .B1(n10), .B2(lframe_o), .Z(
        n230) );
  ND2D0BWP12T30P140 U55 ( .A1(dat_cnt_0_), .A2(n196), .ZN(n168) );
  NR2D0BWP12T30P140 U56 ( .A1(byte_cnt[1]), .A2(n168), .ZN(n88) );
  INVD0BWP12T30P140 U57 ( .I(n11), .ZN(n162) );
  ND2D0BWP12T30P140 U58 ( .A1(n12), .A2(n162), .ZN(n145) );
  NR2D0BWP12T30P140 U59 ( .A1(n141), .A2(n145), .ZN(n169) );
  ND3D0BWP12T30P140 U60 ( .A1(n147), .A2(n203), .A3(n169), .ZN(n20) );
  INR2D1BWP12T30P140 U61 ( .A1(n88), .B1(n20), .ZN(n13) );
  INVD0BWP12T30P140 U62 ( .I(lad_i[0]), .ZN(n21) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n13), .A2(n21), .B1(wbs_dat_o[4]), .B2(n13), 
        .ZN(n281) );
  INVD0BWP12T30P140 U64 ( .I(lad_i[1]), .ZN(n144) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n13), .A2(n144), .B1(wbs_dat_o[5]), .B2(n13), 
        .ZN(n280) );
  INVD0BWP12T30P140 U66 ( .I(lad_i[2]), .ZN(n22) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n13), .A2(n22), .B1(wbs_dat_o[6]), .B2(n13), 
        .ZN(n279) );
  INVD0BWP12T30P140 U68 ( .I(lad_i[3]), .ZN(n143) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n13), .A2(n143), .B1(wbs_dat_o[7]), .B2(n13), 
        .ZN(n278) );
  INVD0BWP12T30P140 U70 ( .I(dat_cnt_0_), .ZN(n209) );
  NR3D0BWP12T30P140 U71 ( .A1(byte_cnt[1]), .A2(n196), .A3(n209), .ZN(n89) );
  INVD0BWP12T30P140 U72 ( .I(n89), .ZN(n200) );
  NR2D0BWP12T30P140 U73 ( .A1(n200), .A2(n20), .ZN(n14) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n14), .A2(n21), .B1(wbs_dat_o[12]), .B2(n14), 
        .ZN(n273) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n14), .A2(n144), .B1(wbs_dat_o[13]), .B2(n14), 
        .ZN(n272) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n14), .A2(n22), .B1(wbs_dat_o[14]), .B2(n14), 
        .ZN(n271) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n14), .A2(n143), .B1(wbs_dat_o[15]), .B2(n14), 
        .ZN(n270) );
  NR2D0BWP12T30P140 U78 ( .A1(n199), .A2(n168), .ZN(n83) );
  INR2D1BWP12T30P140 U79 ( .A1(n83), .B1(n20), .ZN(n15) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n15), .A2(n21), .B1(wbs_dat_o[20]), .B2(n15), 
        .ZN(n265) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n15), .A2(n144), .B1(wbs_dat_o[21]), .B2(n15), 
        .ZN(n264) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n15), .A2(n22), .B1(wbs_dat_o[22]), .B2(n15), 
        .ZN(n263) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n15), .A2(n143), .B1(wbs_dat_o[23]), .B2(n15), 
        .ZN(n262) );
  NR3D0BWP12T30P140 U84 ( .A1(n196), .A2(n199), .A3(n209), .ZN(n148) );
  INR2D1BWP12T30P140 U85 ( .A1(n148), .B1(n20), .ZN(n16) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n16), .A2(n21), .B1(wbs_dat_o[28]), .B2(n16), 
        .ZN(n257) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n16), .A2(n144), .B1(wbs_dat_o[29]), .B2(n16), 
        .ZN(n256) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n16), .A2(n22), .B1(wbs_dat_o[30]), .B2(n16), 
        .ZN(n255) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n16), .A2(n143), .B1(wbs_dat_o[31]), .B2(n16), 
        .ZN(n254) );
  NR3D0BWP12T30P140 U90 ( .A1(dat_cnt_0_), .A2(n199), .A3(n196), .ZN(n84) );
  INR2D1BWP12T30P140 U91 ( .A1(n84), .B1(n20), .ZN(n17) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n17), .A2(n21), .B1(wbs_dat_o[24]), .B2(n17), 
        .ZN(n261) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n17), .A2(n144), .B1(wbs_dat_o[25]), .B2(n17), 
        .ZN(n260) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n17), .A2(n22), .B1(wbs_dat_o[26]), .B2(n17), 
        .ZN(n259) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n17), .A2(n143), .B1(wbs_dat_o[27]), .B2(n17), 
        .ZN(n258) );
  NR3D0BWP12T30P140 U96 ( .A1(byte_cnt[0]), .A2(dat_cnt_0_), .A3(n199), .ZN(
        n86) );
  INR2D1BWP12T30P140 U97 ( .A1(n86), .B1(n20), .ZN(n18) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n18), .A2(n21), .B1(wbs_dat_o[16]), .B2(n18), 
        .ZN(n269) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n18), .A2(n144), .B1(wbs_dat_o[17]), .B2(n18), 
        .ZN(n268) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n18), .A2(n22), .B1(wbs_dat_o[18]), .B2(n18), 
        .ZN(n267) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n18), .A2(n143), .B1(wbs_dat_o[19]), .B2(n18), .ZN(n266) );
  NR3D0BWP12T30P140 U102 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .A3(n196), .ZN(
        n85) );
  INR2D1BWP12T30P140 U103 ( .A1(n85), .B1(n20), .ZN(n19) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n19), .A2(n21), .B1(wbs_dat_o[8]), .B2(n19), 
        .ZN(n277) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n19), .A2(n144), .B1(wbs_dat_o[9]), .B2(n19), 
        .ZN(n276) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n19), .A2(n22), .B1(wbs_dat_o[10]), .B2(n19), 
        .ZN(n275) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n19), .A2(n143), .B1(wbs_dat_o[11]), .B2(n19), .ZN(n274) );
  NR3D0BWP12T30P140 U108 ( .A1(byte_cnt[0]), .A2(byte_cnt[1]), .A3(dat_cnt_0_), 
        .ZN(n87) );
  INR2D1BWP12T30P140 U109 ( .A1(n87), .B1(n20), .ZN(n23) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n23), .A2(n21), .B1(wbs_dat_o[0]), .B2(n23), 
        .ZN(n285) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n23), .A2(n144), .B1(wbs_dat_o[1]), .B2(n23), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n23), .A2(n22), .B1(wbs_dat_o[2]), .B2(n23), 
        .ZN(n283) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n23), .A2(n143), .B1(wbs_dat_o[3]), .B2(n23), 
        .ZN(n282) );
  INVD0BWP12T30P140 U114 ( .I(state[4]), .ZN(n124) );
  NR3D0BWP12T30P140 U115 ( .A1(state[2]), .A2(n124), .A3(n24), .ZN(n183) );
  ND2D0BWP12T30P140 U116 ( .A1(state[1]), .A2(n25), .ZN(n98) );
  ND4D0BWP12T30P140 U117 ( .A1(n124), .A2(n130), .A3(state[5]), .A4(n26), .ZN(
        n186) );
  ND3D0BWP12T30P140 U118 ( .A1(n181), .A2(state[7]), .A3(n27), .ZN(n191) );
  ND3D0BWP12T30P140 U119 ( .A1(n98), .A2(n186), .A3(n191), .ZN(n38) );
  NR2D0BWP12T30P140 U120 ( .A1(n38), .A2(n122), .ZN(n205) );
  NR2D0BWP12T30P140 U121 ( .A1(state[9]), .A2(state[7]), .ZN(n28) );
  IND3D1BWP12T30P140 U122 ( .A1(n29), .B1(state[8]), .B2(n28), .ZN(n176) );
  INVD0BWP12T30P140 U123 ( .I(state[0]), .ZN(n163) );
  ND3D0BWP12T30P140 U124 ( .A1(n163), .A2(n30), .A3(state[11]), .ZN(n170) );
  ND4D0BWP12T30P140 U125 ( .A1(n205), .A2(n176), .A3(n216), .A4(n170), .ZN(
        n202) );
  NR3D0BWP12T30P140 U126 ( .A1(n183), .A2(n169), .A3(n202), .ZN(n33) );
  ND4D0BWP12T30P140 U127 ( .A1(n32), .A2(state[3]), .A3(n31), .A4(n224), .ZN(
        n126) );
  AOI31D0BWP12T30P140 U128 ( .A1(n33), .A2(n212), .A3(n126), .B(state[12]), 
        .ZN(n222) );
  INVD0BWP12T30P140 U129 ( .I(n222), .ZN(n189) );
  OAI222D0BWP12T30P140 U130 ( .A1(n35), .A2(n77), .B1(n35), .B2(n222), .C1(n34), .C2(n189), .ZN(n242) );
  AN2D0BWP12T30P140 U131 ( .A1(wbs_tga_i[0]), .A2(wbs_tga_i[1]), .Z(n99) );
  IND2D1BWP12T30P140 U132 ( .A1(n98), .B1(n99), .ZN(n96) );
  AOI22D0BWP12T30P140 U133 ( .A1(n222), .A2(n96), .B1(n36), .B2(n189), .ZN(
        n249) );
  AN3D0BWP12T30P140 U134 ( .A1(n183), .A2(wbs_sel_i[0]), .A3(wbs_sel_i[1]), 
        .Z(n37) );
  ND3D0BWP12T30P140 U135 ( .A1(n37), .A2(wbs_sel_i[3]), .A3(wbs_sel_i[2]), 
        .ZN(n110) );
  OAI21D0BWP12T30P140 U136 ( .A1(n129), .A2(n183), .B(n203), .ZN(n118) );
  INVD0BWP12T30P140 U137 ( .I(n118), .ZN(n120) );
  OAI22D0BWP12T30P140 U138 ( .A1(state[12]), .A2(n110), .B1(n120), .B2(n150), 
        .ZN(n253) );
  INVD0BWP12T30P140 U139 ( .I(n126), .ZN(n94) );
  NR3D0BWP12T30P140 U140 ( .A1(n160), .A2(n94), .A3(n38), .ZN(n39) );
  OAI21D0BWP12T30P140 U141 ( .A1(state[12]), .A2(n39), .B(n118), .ZN(n114) );
  INVD0BWP12T30P140 U142 ( .I(n114), .ZN(n53) );
  INVD0BWP12T30P140 U143 ( .I(n186), .ZN(n221) );
  AOI22D0BWP12T30P140 U144 ( .A1(n84), .A2(wbs_dat_i[27]), .B1(n83), .B2(
        wbs_dat_i[23]), .ZN(n43) );
  AOI22D0BWP12T30P140 U145 ( .A1(n86), .A2(wbs_dat_i[19]), .B1(n85), .B2(
        wbs_dat_i[11]), .ZN(n42) );
  AOI22D0BWP12T30P140 U146 ( .A1(n88), .A2(wbs_dat_i[7]), .B1(n87), .B2(
        wbs_dat_i[3]), .ZN(n41) );
  AOI22D0BWP12T30P140 U147 ( .A1(n89), .A2(wbs_dat_i[15]), .B1(n148), .B2(
        wbs_dat_i[31]), .ZN(n40) );
  ND4D0BWP12T30P140 U148 ( .A1(n43), .A2(n42), .A3(n41), .A4(n40), .ZN(n44) );
  AOI22D0BWP12T30P140 U149 ( .A1(n221), .A2(n44), .B1(n94), .B2(dma_tc_i), 
        .ZN(n51) );
  ND2D0BWP12T30P140 U150 ( .A1(n129), .A2(adr_cnt[0]), .ZN(n194) );
  ND2D0BWP12T30P140 U151 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n128) );
  NR2D0BWP12T30P140 U152 ( .A1(n194), .A2(n128), .ZN(n185) );
  INVD0BWP12T30P140 U153 ( .I(n128), .ZN(n103) );
  INVD0BWP12T30P140 U154 ( .I(adr_cnt[2]), .ZN(n155) );
  NR2D0BWP12T30P140 U155 ( .A1(adr_cnt[1]), .A2(n155), .ZN(n151) );
  AOI22D0BWP12T30P140 U156 ( .A1(n103), .A2(wbs_adr_i[7]), .B1(n151), .B2(
        wbs_adr_i[15]), .ZN(n46) );
  NR2D0BWP12T30P140 U157 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n104) );
  INVD0BWP12T30P140 U158 ( .I(adr_cnt[1]), .ZN(n192) );
  NR2D0BWP12T30P140 U159 ( .A1(adr_cnt[2]), .A2(n192), .ZN(n152) );
  AOI22D0BWP12T30P140 U160 ( .A1(n104), .A2(wbs_adr_i[31]), .B1(n152), .B2(
        wbs_adr_i[23]), .ZN(n45) );
  NR2D0BWP12T30P140 U161 ( .A1(adr_cnt[0]), .A2(n158), .ZN(n154) );
  INVD0BWP12T30P140 U162 ( .I(n154), .ZN(n105) );
  AOI21D0BWP12T30P140 U163 ( .A1(n46), .A2(n45), .B(n105), .ZN(n49) );
  AOI222D0BWP12T30P140 U164 ( .A1(n151), .A2(wbs_adr_i[11]), .B1(n104), .B2(
        wbs_adr_i[27]), .C1(n152), .C2(wbs_adr_i[19]), .ZN(n47) );
  IND2D1BWP12T30P140 U165 ( .A1(wbs_tga_i[0]), .B1(wbs_tga_i[1]), .ZN(n184) );
  INVD0BWP12T30P140 U166 ( .I(n184), .ZN(n123) );
  ND2D0BWP12T30P140 U167 ( .A1(n160), .A2(n123), .ZN(n97) );
  OAI211D0BWP12T30P140 U168 ( .A1(n47), .A2(n194), .B(n96), .C(n97), .ZN(n48)
         );
  AOI211D0BWP12T30P140 U169 ( .A1(n185), .A2(wbs_adr_i[3]), .B(n49), .C(n48), 
        .ZN(n50) );
  AOI31D0BWP12T30P140 U170 ( .A1(n51), .A2(n50), .A3(n191), .B(n53), .ZN(n52)
         );
  AO21D0BWP12T30P140 U171 ( .A1(n53), .A2(lad_o[3]), .B(n52), .Z(n232) );
  AOI22D0BWP12T30P140 U172 ( .A1(n84), .A2(wbs_dat_i[26]), .B1(n83), .B2(
        wbs_dat_i[22]), .ZN(n57) );
  AOI22D0BWP12T30P140 U173 ( .A1(n86), .A2(wbs_dat_i[18]), .B1(n85), .B2(
        wbs_dat_i[10]), .ZN(n56) );
  AOI22D0BWP12T30P140 U174 ( .A1(n88), .A2(wbs_dat_i[6]), .B1(n87), .B2(
        wbs_dat_i[2]), .ZN(n55) );
  AOI22D0BWP12T30P140 U175 ( .A1(n89), .A2(wbs_dat_i[14]), .B1(n148), .B2(
        wbs_dat_i[30]), .ZN(n54) );
  ND4D0BWP12T30P140 U176 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .ZN(n61) );
  AOI22D0BWP12T30P140 U177 ( .A1(n103), .A2(wbs_adr_i[6]), .B1(n151), .B2(
        wbs_adr_i[14]), .ZN(n59) );
  AOI22D0BWP12T30P140 U178 ( .A1(n104), .A2(wbs_adr_i[30]), .B1(n152), .B2(
        wbs_adr_i[22]), .ZN(n58) );
  AOI21D0BWP12T30P140 U179 ( .A1(n59), .A2(n58), .B(n105), .ZN(n60) );
  AOI21D0BWP12T30P140 U180 ( .A1(n221), .A2(n61), .B(n60), .ZN(n62) );
  OAI31D0BWP12T30P140 U181 ( .A1(wbs_tga_i[0]), .A2(wbs_tga_i[1]), .A3(n98), 
        .B(n62), .ZN(n66) );
  AOI222D0BWP12T30P140 U182 ( .A1(n151), .A2(wbs_adr_i[10]), .B1(n104), .B2(
        wbs_adr_i[26]), .C1(n152), .C2(wbs_adr_i[18]), .ZN(n64) );
  INVD0BWP12T30P140 U183 ( .I(n191), .ZN(n100) );
  AOI21D0BWP12T30P140 U184 ( .A1(n94), .A2(dma_chan_i[2]), .B(n100), .ZN(n63)
         );
  OAI211D0BWP12T30P140 U185 ( .A1(n64), .A2(n194), .B(n63), .C(n97), .ZN(n65)
         );
  AOI211D0BWP12T30P140 U186 ( .A1(n185), .A2(wbs_adr_i[2]), .B(n66), .C(n65), 
        .ZN(n67) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n67), .A2(n114), .B1(n114), .B2(lad_o[2]), 
        .ZN(n233) );
  AOI22D0BWP12T30P140 U188 ( .A1(n103), .A2(wbs_adr_i[4]), .B1(n151), .B2(
        wbs_adr_i[12]), .ZN(n69) );
  AOI22D0BWP12T30P140 U189 ( .A1(n104), .A2(wbs_adr_i[28]), .B1(n152), .B2(
        wbs_adr_i[20]), .ZN(n68) );
  ND2D0BWP12T30P140 U190 ( .A1(n69), .A2(n68), .ZN(n71) );
  AOI222D0BWP12T30P140 U191 ( .A1(n151), .A2(wbs_adr_i[8]), .B1(n104), .B2(
        wbs_adr_i[24]), .C1(n152), .C2(wbs_adr_i[16]), .ZN(n70) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n154), .A2(n71), .B1(n70), .B2(n194), .ZN(
        n81) );
  AOI22D0BWP12T30P140 U193 ( .A1(n84), .A2(wbs_dat_i[24]), .B1(n83), .B2(
        wbs_dat_i[20]), .ZN(n75) );
  AOI22D0BWP12T30P140 U194 ( .A1(n86), .A2(wbs_dat_i[16]), .B1(n85), .B2(
        wbs_dat_i[8]), .ZN(n74) );
  AOI22D0BWP12T30P140 U195 ( .A1(n88), .A2(wbs_dat_i[4]), .B1(n87), .B2(
        wbs_dat_i[0]), .ZN(n73) );
  AOI22D0BWP12T30P140 U196 ( .A1(n89), .A2(wbs_dat_i[12]), .B1(n148), .B2(
        wbs_dat_i[28]), .ZN(n72) );
  ND4D0BWP12T30P140 U197 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .ZN(n76) );
  AOI22D0BWP12T30P140 U198 ( .A1(n221), .A2(n76), .B1(n94), .B2(dma_chan_i[0]), 
        .ZN(n80) );
  INVD0BWP12T30P140 U199 ( .I(n77), .ZN(n161) );
  ND2D0BWP12T30P140 U200 ( .A1(wbs_we_i), .A2(n161), .ZN(n140) );
  INVD0BWP12T30P140 U201 ( .I(n140), .ZN(n219) );
  OAI22D0BWP12T30P140 U202 ( .A1(n123), .A2(n110), .B1(n219), .B2(n97), .ZN(
        n78) );
  AOI211D0BWP12T30P140 U203 ( .A1(n185), .A2(wbs_adr_i[0]), .B(n100), .C(n78), 
        .ZN(n79) );
  NR2D0BWP12T30P140 U204 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .ZN(n117) );
  ND4D0BWP12T30P140 U205 ( .A1(n183), .A2(wbs_sel_i[0]), .A3(wbs_sel_i[1]), 
        .A4(n117), .ZN(n121) );
  ND4D0BWP12T30P140 U206 ( .A1(n81), .A2(n80), .A3(n79), .A4(n121), .ZN(n82)
         );
  CKMUX2D0BWP12T30P140 U207 ( .I0(lad_o[0]), .I1(n82), .S(n114), .Z(n235) );
  AOI22D0BWP12T30P140 U208 ( .A1(n84), .A2(wbs_dat_i[25]), .B1(n83), .B2(
        wbs_dat_i[21]), .ZN(n93) );
  AOI22D0BWP12T30P140 U209 ( .A1(n86), .A2(wbs_dat_i[17]), .B1(n85), .B2(
        wbs_dat_i[9]), .ZN(n92) );
  AOI22D0BWP12T30P140 U210 ( .A1(n88), .A2(wbs_dat_i[5]), .B1(n87), .B2(
        wbs_dat_i[1]), .ZN(n91) );
  AOI22D0BWP12T30P140 U211 ( .A1(n89), .A2(wbs_dat_i[13]), .B1(n148), .B2(
        wbs_dat_i[29]), .ZN(n90) );
  ND4D0BWP12T30P140 U212 ( .A1(n93), .A2(n92), .A3(n91), .A4(n90), .ZN(n95) );
  AOI22D0BWP12T30P140 U213 ( .A1(n221), .A2(n95), .B1(n94), .B2(dma_chan_i[1]), 
        .ZN(n113) );
  INVD0BWP12T30P140 U214 ( .I(n96), .ZN(n101) );
  OAI21D0BWP12T30P140 U215 ( .A1(n99), .A2(n98), .B(n97), .ZN(n127) );
  AOI221D0BWP12T30P140 U216 ( .A1(n101), .A2(n140), .B1(n127), .B2(n219), .C(
        n100), .ZN(n112) );
  AOI222D0BWP12T30P140 U217 ( .A1(n151), .A2(wbs_adr_i[9]), .B1(n104), .B2(
        wbs_adr_i[25]), .C1(n152), .C2(wbs_adr_i[17]), .ZN(n102) );
  NR2D0BWP12T30P140 U218 ( .A1(n102), .A2(n194), .ZN(n109) );
  AOI22D0BWP12T30P140 U219 ( .A1(n103), .A2(wbs_adr_i[5]), .B1(n151), .B2(
        wbs_adr_i[13]), .ZN(n107) );
  AOI22D0BWP12T30P140 U220 ( .A1(n104), .A2(wbs_adr_i[29]), .B1(n152), .B2(
        wbs_adr_i[21]), .ZN(n106) );
  AOI21D0BWP12T30P140 U221 ( .A1(n107), .A2(n106), .B(n105), .ZN(n108) );
  AOI211D0BWP12T30P140 U222 ( .A1(wbs_adr_i[1]), .A2(n185), .B(n109), .C(n108), 
        .ZN(n111) );
  ND4D0BWP12T30P140 U223 ( .A1(n113), .A2(n112), .A3(n111), .A4(n110), .ZN(
        n115) );
  CKMUX2D0BWP12T30P140 U224 ( .I0(lad_o[1]), .I1(n115), .S(n114), .Z(n234) );
  AN2D0BWP12T30P140 U225 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .Z(n116) );
  OA211D0BWP12T30P140 U226 ( .A1(n117), .A2(n116), .B(wbs_sel_i[1]), .C(
        wbs_sel_i[0]), .Z(n119) );
  AOI32D0BWP12T30P140 U227 ( .A1(n119), .A2(n120), .A3(n158), .B1(n166), .B2(
        n118), .ZN(n237) );
  OAI22D0BWP12T30P140 U228 ( .A1(state[12]), .A2(n121), .B1(n120), .B2(n197), 
        .ZN(n236) );
  ND2D0BWP12T30P140 U229 ( .A1(n203), .A2(n122), .ZN(n157) );
  AO22D0BWP12T30P140 U230 ( .A1(n154), .A2(n203), .B1(adr_cnt[0]), .B2(n157), 
        .Z(n240) );
  ND2D0BWP12T30P140 U231 ( .A1(n123), .A2(n185), .ZN(n125) );
  AOI32D0BWP12T30P140 U232 ( .A1(n126), .A2(n222), .A3(n125), .B1(n124), .B2(
        n189), .ZN(n248) );
  AOI211D0BWP12T30P140 U233 ( .A1(n129), .A2(n128), .B(n154), .C(n127), .ZN(
        n131) );
  AOI22D0BWP12T30P140 U234 ( .A1(n222), .A2(n131), .B1(n130), .B2(n189), .ZN(
        n250) );
  NR2D0BWP12T30P140 U235 ( .A1(xfr_len[0]), .A2(xfr_len[1]), .ZN(n133) );
  AOI22D0BWP12T30P140 U236 ( .A1(n133), .A2(n134), .B1(byte_cnt[2]), .B2(n150), 
        .ZN(n132) );
  OAI21D0BWP12T30P140 U237 ( .A1(n134), .A2(n133), .B(n132), .ZN(n135) );
  AOI211D0BWP12T30P140 U238 ( .A1(n138), .A2(n137), .B(n136), .C(n135), .ZN(
        n179) );
  OAI21D0BWP12T30P140 U239 ( .A1(n179), .A2(n184), .B(dat_cnt_0_), .ZN(n220)
         );
  AOI211D0BWP12T30P140 U240 ( .A1(lad_i[0]), .A2(n143), .B(lad_i[2]), .C(
        lad_i[1]), .ZN(n139) );
  OAI21D0BWP12T30P140 U241 ( .A1(lad_i[0]), .A2(n143), .B(n139), .ZN(n172) );
  NR2D0BWP12T30P140 U242 ( .A1(n170), .A2(n172), .ZN(n180) );
  AOI22D0BWP12T30P140 U243 ( .A1(n169), .A2(n220), .B1(n180), .B2(n140), .ZN(
        n142) );
  AOI22D0BWP12T30P140 U244 ( .A1(n222), .A2(n142), .B1(n141), .B2(n189), .ZN(
        n246) );
  INVD0BWP12T30P140 U245 ( .I(n170), .ZN(n214) );
  NR4D0BWP12T30P140 U246 ( .A1(lad_i[2]), .A2(lad_i[0]), .A3(n144), .A4(n143), 
        .ZN(n171) );
  ND2D0BWP12T30P140 U247 ( .A1(n214), .A2(n171), .ZN(n211) );
  AOI31D0BWP12T30P140 U248 ( .A1(n186), .A2(n145), .A3(n211), .B(state[12]), 
        .ZN(n210) );
  ND2D0BWP12T30P140 U249 ( .A1(n214), .A2(n210), .ZN(n208) );
  OAI21D0BWP12T30P140 U250 ( .A1(n221), .A2(n169), .B(n203), .ZN(n201) );
  INVD0BWP12T30P140 U251 ( .I(n201), .ZN(n206) );
  OAI21D0BWP12T30P140 U252 ( .A1(n148), .A2(n201), .B(n210), .ZN(n146) );
  AOI32D0BWP12T30P140 U253 ( .A1(n148), .A2(n147), .A3(n206), .B1(byte_cnt[2]), 
        .B2(n146), .ZN(n149) );
  OAI21D0BWP12T30P140 U254 ( .A1(n150), .A2(n208), .B(n149), .ZN(n288) );
  INVD0BWP12T30P140 U255 ( .I(n151), .ZN(n159) );
  INVD0BWP12T30P140 U256 ( .I(n194), .ZN(n153) );
  AOI22D0BWP12T30P140 U257 ( .A1(n160), .A2(wbs_tga_i[0]), .B1(n153), .B2(n152), .ZN(n156) );
  NR2D0BWP12T30P140 U258 ( .A1(n154), .A2(n157), .ZN(n193) );
  OAI222D0BWP12T30P140 U259 ( .A1(n159), .A2(n158), .B1(n157), .B2(n156), .C1(
        n155), .C2(n193), .ZN(n238) );
  AO32D0BWP12T30P140 U260 ( .A1(n222), .A2(n184), .A3(n160), .B1(n189), .B2(
        state[1]), .Z(n251) );
  ND2D0BWP12T30P140 U261 ( .A1(n162), .A2(n161), .ZN(n164) );
  OAI32D0BWP12T30P140 U262 ( .A1(n189), .A2(n165), .A3(n164), .B1(n222), .B2(
        n163), .ZN(n252) );
  OAI21D0BWP12T30P140 U263 ( .A1(dat_cnt_0_), .A2(n201), .B(n210), .ZN(n195)
         );
  INVD0BWP12T30P140 U264 ( .I(n195), .ZN(n167) );
  OAI222D0BWP12T30P140 U265 ( .A1(n201), .A2(n168), .B1(n196), .B2(n167), .C1(
        n166), .C2(n208), .ZN(n286) );
  AN2D0BWP12T30P140 U266 ( .A1(n169), .A2(dat_cnt_0_), .Z(n178) );
  INVD0BWP12T30P140 U267 ( .I(n179), .ZN(n174) );
  INR3D1BWP12T30P140 U268 ( .A1(n172), .B1(n171), .B2(n170), .ZN(n173) );
  AOI31D0BWP12T30P140 U269 ( .A1(n178), .A2(n184), .A3(n174), .B(n173), .ZN(
        n177) );
  AOI32D0BWP12T30P140 U270 ( .A1(n177), .A2(n222), .A3(n176), .B1(n175), .B2(
        n189), .ZN(n241) );
  AOI22D0BWP12T30P140 U271 ( .A1(n219), .A2(n180), .B1(n179), .B2(n178), .ZN(
        n182) );
  AOI32D0BWP12T30P140 U272 ( .A1(n182), .A2(n222), .A3(n211), .B1(n181), .B2(
        n189), .ZN(n243) );
  AOI21D0BWP12T30P140 U273 ( .A1(n185), .A2(n184), .B(n183), .ZN(n215) );
  OAI22D0BWP12T30P140 U274 ( .A1(n186), .A2(n220), .B1(n219), .B2(n215), .ZN(
        n187) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n188), .A2(n189), .B1(n189), .B2(n187), .ZN(
        n245) );
  AOI22D0BWP12T30P140 U276 ( .A1(n222), .A2(n191), .B1(n190), .B2(n189), .ZN(
        n244) );
  OAI32D0BWP12T30P140 U277 ( .A1(adr_cnt[1]), .A2(state[12]), .A3(n194), .B1(
        n193), .B2(n192), .ZN(n239) );
  AOI21D0BWP12T30P140 U278 ( .A1(n206), .A2(n196), .B(n195), .ZN(n198) );
  OAI222D0BWP12T30P140 U279 ( .A1(n201), .A2(n200), .B1(n199), .B2(n198), .C1(
        n197), .C2(n208), .ZN(n287) );
  IOA21D0BWP12T30P140 U280 ( .A1(n203), .A2(n202), .B(lad_oe), .ZN(n204) );
  OAI21D0BWP12T30P140 U281 ( .A1(state[12]), .A2(n205), .B(n204), .ZN(n228) );
  ND2D0BWP12T30P140 U282 ( .A1(n206), .A2(n209), .ZN(n207) );
  OAI211D0BWP12T30P140 U283 ( .A1(n210), .A2(n209), .B(n208), .C(n207), .ZN(
        n289) );
  AOI21D0BWP12T30P140 U284 ( .A1(n212), .A2(n211), .B(state[12]), .ZN(n213) );
  CKMUX2D0BWP12T30P140 U285 ( .I0(wbs_err_o), .I1(n214), .S(n213), .Z(n229) );
  CKBD0BWP12T30P140 U286 ( .I(clk_i), .Z(n291) );
  CKBD0BWP12T30P140 U287 ( .I(clk_i), .Z(n292) );
  CKBD0BWP12T30P140 U288 ( .I(clk_i), .Z(n293) );
  CKBD0BWP12T30P140 U289 ( .I(nrst_i), .Z(n226) );
  CKBD0BWP12T30P140 U290 ( .I(nrst_i), .Z(n225) );
  CKBD0BWP12T30P140 U291 ( .I(nrst_i), .Z(n227) );
  CKBD0BWP12T30P140 U292 ( .I(nrst_i), .Z(n290) );
  OAI21D0BWP12T30P140 U293 ( .A1(n217), .A2(n216), .B(n215), .ZN(n218) );
  AOI22D0BWP12T30P140 U294 ( .A1(n221), .A2(n220), .B1(n219), .B2(n218), .ZN(
        n223) );
  MUX2ND0BWP12T30P140 U295 ( .I0(n224), .I1(n223), .S(n222), .ZN(n247) );
endmodule


module wb_lpc_periph ( clk_i, nrst_i, wbm_adr_o, wbm_dat_o, wbm_dat_i, 
        wbm_sel_o, wbm_tga_o, wbm_we_o, wbm_stb_o, wbm_cyc_o, wbm_ack_i, 
        wbm_err_i, dma_chan_o, dma_tc_o, lframe_i, lad_i, lad_o, lad_oe );
  output [31:0] wbm_adr_o;
  output [31:0] wbm_dat_o;
  input [31:0] wbm_dat_i;
  output [3:0] wbm_sel_o;
  output [1:0] wbm_tga_o;
  output [2:0] dma_chan_o;
  input [3:0] lad_i;
  output [3:0] lad_o;
  input clk_i, nrst_i, wbm_ack_i, wbm_err_i, lframe_i;
  output wbm_we_o, wbm_stb_o, wbm_cyc_o, dma_tc_o, lad_oe;
  wire   dat_cnt_0_, lpc_write, fw_xfr, dma_xfr, got_ack, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475;
  wire   [2:0] byte_cnt;
  wire   [13:0] state;
  wire   [2:0] adr_cnt;
  wire   [2:0] xfr_len;
  wire   [31:0] lpc_dat_i;
  wire   [31:0] lpc_adr_reg;
  wire   [31:0] lpc_dat_o;
  wire   [1:0] lpc_tga_o;

  DFQD2BWP12T30P140 wbm_adr_o_reg_19_ ( .D(n266), .CP(n475), .Q(wbm_adr_o[19])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_17_ ( .D(n264), .CP(n475), .Q(wbm_adr_o[17])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_15_ ( .D(n262), .CP(n475), .Q(wbm_adr_o[15])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_13_ ( .D(n260), .CP(n475), .Q(wbm_adr_o[13])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_9_ ( .D(n256), .CP(n475), .Q(wbm_adr_o[9])
         );
  DFQD2BWP12T30P140 dma_chan_reg_1_ ( .D(n415), .CP(n469), .Q(dma_chan_o[1])
         );
  DFQD2BWP12T30P140 dma_chan_reg_0_ ( .D(n414), .CP(n472), .Q(dma_chan_o[0])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_12_ ( .D(n259), .CP(clk_i), .Q(wbm_adr_o[12]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_10_ ( .D(n257), .CP(clk_i), .Q(wbm_adr_o[10]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_7_ ( .D(n254), .CP(clk_i), .Q(wbm_adr_o[7])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_5_ ( .D(n252), .CP(clk_i), .Q(wbm_adr_o[5])
         );
  DFQD2BWP12T30P140 wbm_tga_o_reg_0_ ( .D(n314), .CP(n471), .Q(wbm_tga_o[0])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n269), .CP(n474), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n268), .CP(n474), .Q(wbm_adr_o[21])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n267), .CP(n474), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n265), .CP(n474), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n263), .CP(n474), .Q(wbm_adr_o[16])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n261), .CP(n474), .Q(wbm_adr_o[14])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_11_ ( .D(n258), .CP(n474), .Q(wbm_adr_o[11])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_8_ ( .D(n255), .CP(n474), .Q(wbm_adr_o[8])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_6_ ( .D(n253), .CP(n474), .Q(wbm_adr_o[6])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_4_ ( .D(n251), .CP(n474), .Q(wbm_adr_o[4])
         );
  DFQD2BWP12T30P140 dma_tc_reg ( .D(n417), .CP(n468), .Q(dma_tc_o) );
  DFQD2BWP12T30P140 dma_chan_reg_2_ ( .D(n416), .CP(n467), .Q(dma_chan_o[2])
         );
  DFQD2BWP12T30P140 dma_xfr_reg ( .D(n404), .CP(n475), .Q(dma_xfr) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n277), .CP(n465), .Q(wbm_adr_o[30])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n276), .CP(n465), .Q(wbm_adr_o[29])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n275), .CP(n465), .Q(wbm_adr_o[28])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_27_ ( .D(n274), .CP(n465), .Q(wbm_adr_o[27])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_26_ ( .D(n273), .CP(n465), .Q(wbm_adr_o[26])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_25_ ( .D(n272), .CP(n465), .Q(wbm_adr_o[25])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_24_ ( .D(n271), .CP(n465), .Q(wbm_adr_o[24])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_23_ ( .D(n270), .CP(n465), .Q(wbm_adr_o[23])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_4_ ( .D(n367), .CP(n471), .Q(
        lpc_adr_reg[4]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_6_ ( .D(n351), .CP(n470), .Q(
        lpc_adr_reg[6]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_7_ ( .D(n343), .CP(n470), .Q(
        lpc_adr_reg[7]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_12_ ( .D(n365), .CP(n473), .Q(
        lpc_adr_reg[12]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_13_ ( .D(n357), .CP(n473), .Q(
        lpc_adr_reg[13]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_14_ ( .D(n349), .CP(n473), .Q(
        lpc_adr_reg[14]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_6_ ( .D(n394), .CP(n469), .Q(lpc_dat_o[6])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_7_ ( .D(n393), .CP(n472), .Q(lpc_dat_o[7])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_16_ ( .D(n384), .CP(n471), .Q(lpc_dat_o[16])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_20_ ( .D(n380), .CP(n469), .Q(lpc_dat_o[20])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_21_ ( .D(n379), .CP(n472), .Q(lpc_dat_o[21])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_22_ ( .D(n378), .CP(n471), .Q(lpc_dat_o[22])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_23_ ( .D(n377), .CP(n470), .Q(lpc_dat_o[23])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_8_ ( .D(n392), .CP(n473), .Q(lpc_dat_o[8])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_28_ ( .D(n372), .CP(n469), .Q(lpc_dat_o[28])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_29_ ( .D(n371), .CP(n472), .Q(lpc_dat_o[29])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_30_ ( .D(n370), .CP(n471), .Q(lpc_dat_o[30])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_20_ ( .D(n363), .CP(n472), .Q(
        lpc_adr_reg[20]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_21_ ( .D(n355), .CP(n472), .Q(
        lpc_adr_reg[21]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_22_ ( .D(n347), .CP(n472), .Q(
        lpc_adr_reg[22]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_28_ ( .D(n361), .CP(n472), .Q(
        lpc_adr_reg[28]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_29_ ( .D(n353), .CP(n472), .Q(
        lpc_adr_reg[29]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_30_ ( .D(n345), .CP(n472), .Q(
        lpc_adr_reg[30]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_31_ ( .D(n337), .CP(n472), .Q(
        lpc_adr_reg[31]) );
  DFQD2BWP12T30P140 dat_cnt_reg_3_ ( .D(n319), .CP(n469), .Q(byte_cnt[2]) );
  DFQD2BWP12T30P140 lpc_tga_o_reg_1_ ( .D(n402), .CP(n473), .Q(lpc_tga_o[1])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_0_ ( .D(n400), .CP(clk_i), .Q(lpc_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_18_ ( .D(n382), .CP(clk_i), .Q(lpc_dat_o[18]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_9_ ( .D(n391), .CP(clk_i), .Q(lpc_dat_o[9])
         );
  DFQD2BWP12T30P140 lpc_tga_o_reg_0_ ( .D(n403), .CP(n470), .Q(lpc_tga_o[0])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_30_ ( .D(n312), .CP(n471), .Q(wbm_dat_o[30])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_29_ ( .D(n311), .CP(n471), .Q(wbm_dat_o[29])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_28_ ( .D(n310), .CP(n471), .Q(wbm_dat_o[28])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_27_ ( .D(n309), .CP(n471), .Q(wbm_dat_o[27])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_25_ ( .D(n307), .CP(n471), .Q(wbm_dat_o[25])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_24_ ( .D(n306), .CP(n471), .Q(wbm_dat_o[24])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_23_ ( .D(n305), .CP(n471), .Q(wbm_dat_o[23])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_22_ ( .D(n304), .CP(n470), .Q(wbm_dat_o[22])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_21_ ( .D(n303), .CP(n470), .Q(wbm_dat_o[21])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_20_ ( .D(n302), .CP(n470), .Q(wbm_dat_o[20])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_19_ ( .D(n301), .CP(n470), .Q(wbm_dat_o[19])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_18_ ( .D(n300), .CP(n470), .Q(wbm_dat_o[18])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_17_ ( .D(n299), .CP(n470), .Q(wbm_dat_o[17])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_16_ ( .D(n298), .CP(n470), .Q(wbm_dat_o[16])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_15_ ( .D(n297), .CP(n470), .Q(wbm_dat_o[15])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_14_ ( .D(n296), .CP(n470), .Q(wbm_dat_o[14])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_13_ ( .D(n295), .CP(n470), .Q(wbm_dat_o[13])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_12_ ( .D(n294), .CP(n470), .Q(wbm_dat_o[12])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_10_ ( .D(n292), .CP(n469), .Q(wbm_dat_o[10])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_9_ ( .D(n291), .CP(n469), .Q(wbm_dat_o[9])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_8_ ( .D(n290), .CP(n469), .Q(wbm_dat_o[8])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_7_ ( .D(n289), .CP(n469), .Q(wbm_dat_o[7])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_6_ ( .D(n288), .CP(n469), .Q(wbm_dat_o[6])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_5_ ( .D(n287), .CP(n469), .Q(wbm_dat_o[5])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_4_ ( .D(n286), .CP(n469), .Q(wbm_dat_o[4])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_3_ ( .D(n285), .CP(n469), .Q(wbm_dat_o[3])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_2_ ( .D(n284), .CP(n469), .Q(wbm_dat_o[2])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_1_ ( .D(n283), .CP(n469), .Q(wbm_dat_o[1])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_0_ ( .D(n282), .CP(n469), .Q(wbm_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_5_ ( .D(n359), .CP(n474), .Q(
        lpc_adr_reg[5]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_1_ ( .D(n399), .CP(n474), .Q(lpc_dat_o[1])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_10_ ( .D(n390), .CP(n474), .Q(lpc_dat_o[10])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_8_ ( .D(n366), .CP(n470), .Q(
        lpc_adr_reg[8]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_9_ ( .D(n358), .CP(n473), .Q(
        lpc_adr_reg[9]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_10_ ( .D(n350), .CP(n473), .Q(
        lpc_adr_reg[10]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_11_ ( .D(n342), .CP(n473), .Q(
        lpc_adr_reg[11]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_0_ ( .D(n368), .CP(n473), .Q(
        lpc_adr_reg[0]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_1_ ( .D(n360), .CP(n473), .Q(
        lpc_adr_reg[1]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_2_ ( .D(n352), .CP(n473), .Q(
        lpc_adr_reg[2]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_3_ ( .D(n344), .CP(n473), .Q(
        lpc_adr_reg[3]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_24_ ( .D(n362), .CP(n470), .Q(
        lpc_adr_reg[24]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_25_ ( .D(n354), .CP(n473), .Q(
        lpc_adr_reg[25]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_27_ ( .D(n338), .CP(n472), .Q(
        lpc_adr_reg[27]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_16_ ( .D(n364), .CP(n472), .Q(
        lpc_adr_reg[16]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_17_ ( .D(n356), .CP(n472), .Q(
        lpc_adr_reg[17]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_18_ ( .D(n348), .CP(n472), .Q(
        lpc_adr_reg[18]) );
  DFQD2BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n450), .CP(n468), .Q(lpc_dat_i[31])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n447), .CP(n468), .Q(lpc_dat_i[28])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_23_ ( .D(n442), .CP(n468), .Q(lpc_dat_i[23])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_20_ ( .D(n439), .CP(n467), .Q(lpc_dat_i[20])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_15_ ( .D(n434), .CP(n467), .Q(lpc_dat_i[15])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_12_ ( .D(n431), .CP(n467), .Q(lpc_dat_i[12])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_7_ ( .D(n425), .CP(n466), .Q(lpc_dat_i[7])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_4_ ( .D(n422), .CP(n466), .Q(lpc_dat_i[4])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_0_ ( .D(n451), .CP(n468), .Q(lpc_dat_i[0])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_27_ ( .D(n446), .CP(n468), .Q(lpc_dat_i[27])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_24_ ( .D(n443), .CP(n468), .Q(lpc_dat_i[24])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_19_ ( .D(n438), .CP(n467), .Q(lpc_dat_i[19])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_16_ ( .D(n435), .CP(n467), .Q(lpc_dat_i[16])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_11_ ( .D(n430), .CP(n467), .Q(lpc_dat_i[11])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_3_ ( .D(n421), .CP(n466), .Q(lpc_dat_i[3])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_2_ ( .D(n398), .CP(n465), .Q(lpc_dat_o[2])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_3_ ( .D(n397), .CP(n466), .Q(lpc_dat_o[3])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_4_ ( .D(n396), .CP(n468), .Q(lpc_dat_o[4])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_5_ ( .D(n395), .CP(n467), .Q(lpc_dat_o[5])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_17_ ( .D(n383), .CP(n466), .Q(lpc_dat_o[17])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_19_ ( .D(n381), .CP(n467), .Q(lpc_dat_o[19])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_11_ ( .D(n389), .CP(n465), .Q(lpc_dat_o[11])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_12_ ( .D(n388), .CP(n466), .Q(lpc_dat_o[12])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_13_ ( .D(n387), .CP(n468), .Q(lpc_dat_o[13])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_14_ ( .D(n386), .CP(n467), .Q(lpc_dat_o[14])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_24_ ( .D(n376), .CP(n465), .Q(lpc_dat_o[24])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_25_ ( .D(n375), .CP(n466), .Q(lpc_dat_o[25])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_26_ ( .D(n374), .CP(n468), .Q(lpc_dat_o[26])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_31_ ( .D(n369), .CP(n468), .Q(lpc_dat_o[31])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_26_ ( .D(n346), .CP(clk_i), .Q(
        lpc_adr_reg[26]) );
  DFQD2BWP12T30P140 lad_o_reg_2_ ( .D(n407), .CP(n466), .Q(lad_o[2]) );
  DFQD2BWP12T30P140 lpc_write_reg ( .D(n401), .CP(n475), .Q(lpc_write) );
  DFQD2BWP12T30P140 lpc_dat_i_reg_30_ ( .D(n449), .CP(n468), .Q(lpc_dat_i[30])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_29_ ( .D(n448), .CP(n468), .Q(lpc_dat_i[29])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_22_ ( .D(n441), .CP(n468), .Q(lpc_dat_i[22])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_21_ ( .D(n440), .CP(n468), .Q(lpc_dat_i[21])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_14_ ( .D(n433), .CP(n467), .Q(lpc_dat_i[14])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_13_ ( .D(n432), .CP(n467), .Q(lpc_dat_i[13])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_6_ ( .D(n424), .CP(n466), .Q(lpc_dat_i[6])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_5_ ( .D(n423), .CP(n466), .Q(lpc_dat_i[5])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n445), .CP(n468), .Q(lpc_dat_i[26])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n444), .CP(n468), .Q(lpc_dat_i[25])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_17_ ( .D(n436), .CP(n467), .Q(lpc_dat_i[17])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_10_ ( .D(n429), .CP(n467), .Q(lpc_dat_i[10])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_9_ ( .D(n428), .CP(n467), .Q(lpc_dat_i[9])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_1_ ( .D(n426), .CP(n466), .Q(lpc_dat_i[1])
         );
  DFQD2BWP12T30P140 lad_o_reg_1_ ( .D(n408), .CP(n466), .Q(lad_o[1]) );
  DFQD2BWP12T30P140 lpc_dat_i_reg_2_ ( .D(n420), .CP(n466), .Q(lpc_dat_i[2])
         );
  DFQD2BWP12T30P140 lad_o_reg_0_ ( .D(n409), .CP(n466), .Q(lad_o[0]) );
  DFQD2BWP12T30P140 lad_o_reg_3_ ( .D(n406), .CP(n466), .Q(lad_o[3]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_3_ ( .D(n250), .CP(n465), .Q(wbm_adr_o[3])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_2_ ( .D(n249), .CP(n466), .Q(wbm_adr_o[2])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_1_ ( .D(n248), .CP(n468), .Q(wbm_adr_o[1])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n247), .CP(n467), .Q(wbm_adr_o[0])
         );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n333), .CP(n475), .Q(state[3]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n335), .CP(n475), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_8_ ( .D(n328), .CP(n469), .Q(state[8]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_1_ ( .D(n280), .CP(n465), .Q(wbm_sel_o[1])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_31_ ( .D(n313), .CP(n471), .Q(wbm_dat_o[31])
         );
  DFQD2BWP12T30P140 state_reg_7_ ( .D(n329), .CP(n465), .Q(state[7]) );
  DFQD2BWP12T30P140 state_reg_12_ ( .D(n324), .CP(n465), .Q(state[12]) );
  DFQD2BWP12T30P140 got_ack_reg ( .D(n418), .CP(n474), .Q(got_ack) );
  DFQD2BWP12T30P140 state_reg_9_ ( .D(n327), .CP(n472), .Q(state[9]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_0_ ( .D(n279), .CP(n465), .Q(wbm_sel_o[0])
         );
  DFQD2BWP12T30P140 fw_xfr_reg ( .D(n410), .CP(n475), .Q(fw_xfr) );
  DFQD2BWP12T30P140 adr_cnt_reg_2_ ( .D(n316), .CP(clk_i), .Q(adr_cnt[2]) );
  DFQD2BWP12T30P140 state_reg_5_ ( .D(n331), .CP(n471), .Q(state[5]) );
  DFQD2BWP12T30P140 wbm_cyc_o_reg ( .D(n419), .CP(n474), .Q(wbm_cyc_o) );
  DFQD2BWP12T30P140 state_reg_6_ ( .D(n330), .CP(n473), .Q(state[6]) );
  DFQD2BWP12T30P140 wbm_we_o_reg ( .D(n452), .CP(n469), .Q(wbm_we_o) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n318), .CP(n465), .Q(adr_cnt[0]) );
  DFQD2BWP12T30P140 dat_cnt_reg_2_ ( .D(n320), .CP(n467), .Q(byte_cnt[1]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n334), .CP(n474), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n336), .CP(n475), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_13_ ( .D(n323), .CP(n472), .Q(state[13]) );
  DFQD2BWP12T30P140 state_reg_10_ ( .D(n326), .CP(n473), .Q(state[10]) );
  DFQD2BWP12T30P140 xfr_len_reg_1_ ( .D(n412), .CP(clk_i), .Q(xfr_len[1]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_2_ ( .D(n281), .CP(n465), .Q(wbm_sel_o[2])
         );
  DFQD2BWP12T30P140 state_reg_4_ ( .D(n332), .CP(n473), .Q(state[4]) );
  DFQD2BWP12T30P140 xfr_len_reg_0_ ( .D(n413), .CP(n473), .Q(xfr_len[0]) );
  DFQD2BWP12T30P140 xfr_len_reg_2_ ( .D(n411), .CP(n474), .Q(xfr_len[2]) );
  DFQD2BWP12T30P140 dat_cnt_reg_0_ ( .D(n322), .CP(n466), .Q(dat_cnt_0_) );
  DFQD2BWP12T30P140 dat_cnt_reg_1_ ( .D(n321), .CP(n468), .Q(byte_cnt[0]) );
  DFQD1BWP12T30P140 wbm_tga_o_reg_1_ ( .D(n315), .CP(n471), .Q(wbm_tga_o[1])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n278), .CP(n465), .Q(wbm_adr_o[31])
         );
  DFQD1BWP12T30P140 lpc_adr_reg_reg_15_ ( .D(n341), .CP(n473), .Q(
        lpc_adr_reg[15]) );
  DFQD1BWP12T30P140 lpc_adr_reg_reg_23_ ( .D(n339), .CP(n472), .Q(
        lpc_adr_reg[23]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_26_ ( .D(n308), .CP(n471), .Q(wbm_dat_o[26])
         );
  DFQD1BWP12T30P140 wbm_dat_o_reg_11_ ( .D(n293), .CP(n470), .Q(wbm_dat_o[11])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_15_ ( .D(n385), .CP(n474), .Q(lpc_dat_o[15])
         );
  DFQD1BWP12T30P140 lpc_adr_reg_reg_19_ ( .D(n340), .CP(n471), .Q(
        lpc_adr_reg[19]) );
  DFQD1BWP12T30P140 lpc_dat_i_reg_8_ ( .D(n427), .CP(n466), .Q(lpc_dat_i[8])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_27_ ( .D(n373), .CP(n467), .Q(lpc_dat_o[27])
         );
  DFQD1BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n437), .CP(n467), .Q(lpc_dat_i[18])
         );
  DFQD1BWP12T30P140 lad_oe_reg ( .D(n405), .CP(n471), .Q(lad_oe) );
  DFQD1BWP12T30P140 state_reg_11_ ( .D(n325), .CP(n475), .Q(state[11]) );
  DFQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n317), .CP(n466), .Q(adr_cnt[1]) );
  INVD0BWP12T30P140 U3 ( .I(nrst_i), .ZN(n224) );
  INVD0BWP12T30P140 U4 ( .I(state[0]), .ZN(n225) );
  AOI31D0BWP12T30P140 U5 ( .A1(n4), .A2(n225), .A3(n62), .B(n224), .ZN(n230)
         );
  CKBD0BWP12T30P140 U6 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  CKBD0BWP12T30P140 U7 ( .I(wbm_sel_o[2]), .Z(wbm_sel_o[3]) );
  INVD0BWP12T30P140 U8 ( .I(byte_cnt[2]), .ZN(n216) );
  INVD0BWP12T30P140 U9 ( .I(xfr_len[0]), .ZN(n177) );
  INVD0BWP12T30P140 U10 ( .I(byte_cnt[0]), .ZN(n189) );
  INVD0BWP12T30P140 U11 ( .I(xfr_len[1]), .ZN(n168) );
  INVD0BWP12T30P140 U12 ( .I(byte_cnt[1]), .ZN(n149) );
  AOI22D0BWP12T30P140 U13 ( .A1(byte_cnt[1]), .A2(xfr_len[1]), .B1(n168), .B2(
        n149), .ZN(n61) );
  AOI221D0BWP12T30P140 U14 ( .A1(byte_cnt[0]), .A2(n177), .B1(n189), .B2(
        xfr_len[0]), .C(n61), .ZN(n1) );
  ND2D0BWP12T30P140 U15 ( .A1(xfr_len[2]), .A2(n216), .ZN(n57) );
  OAI211D0BWP12T30P140 U16 ( .A1(xfr_len[2]), .A2(n216), .B(n1), .C(n57), .ZN(
        n109) );
  INVD0BWP12T30P140 U17 ( .I(lpc_write), .ZN(n461) );
  ND4D0BWP12T30P140 U18 ( .A1(n461), .A2(n149), .A3(n189), .A4(n216), .ZN(n51)
         );
  OAI21D0BWP12T30P140 U19 ( .A1(n109), .A2(n461), .B(n51), .ZN(n62) );
  ND2D0BWP12T30P140 U20 ( .A1(nrst_i), .A2(n225), .ZN(n183) );
  INVD0BWP12T30P140 U21 ( .I(n183), .ZN(n147) );
  NR2D0BWP12T30P140 U22 ( .A1(state[5]), .A2(state[2]), .ZN(n3) );
  NR3D0BWP12T30P140 U23 ( .A1(state[12]), .A2(state[13]), .A3(state[1]), .ZN(
        n25) );
  INVD0BWP12T30P140 U24 ( .I(state[9]), .ZN(n117) );
  ND2D0BWP12T30P140 U25 ( .A1(n25), .A2(n117), .ZN(n21) );
  NR3D0BWP12T30P140 U26 ( .A1(state[8]), .A2(state[11]), .A3(n21), .ZN(n81) );
  INR2D1BWP12T30P140 U27 ( .A1(n81), .B1(state[10]), .ZN(n86) );
  NR2D0BWP12T30P140 U28 ( .A1(state[6]), .A2(state[4]), .ZN(n6) );
  ND2D0BWP12T30P140 U29 ( .A1(n86), .A2(n6), .ZN(n2) );
  NR2D0BWP12T30P140 U30 ( .A1(state[3]), .A2(n2), .ZN(n5) );
  ND3D0BWP12T30P140 U31 ( .A1(n3), .A2(state[7]), .A3(n5), .ZN(n102) );
  INVD0BWP12T30P140 U32 ( .I(n102), .ZN(n4) );
  ND3D0BWP12T30P140 U33 ( .A1(n62), .A2(n147), .A3(n4), .ZN(n139) );
  INVD0BWP12T30P140 U34 ( .I(n139), .ZN(n231) );
  CKBD0BWP12T30P140 U35 ( .I(n231), .Z(n233) );
  CKBD0BWP12T30P140 U36 ( .I(n230), .Z(n236) );
  CKBD0BWP12T30P140 U37 ( .I(n236), .Z(n232) );
  AO22D0BWP12T30P140 U38 ( .A1(lpc_dat_o[13]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[13]), .Z(n295) );
  AO22D0BWP12T30P140 U39 ( .A1(lpc_dat_o[12]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[12]), .Z(n294) );
  AO22D0BWP12T30P140 U40 ( .A1(lpc_dat_o[11]), .A2(n231), .B1(n232), .B2(
        wbm_dat_o[11]), .Z(n293) );
  CKBD0BWP12T30P140 U41 ( .I(n231), .Z(n194) );
  AO22D0BWP12T30P140 U42 ( .A1(lpc_dat_o[8]), .A2(n194), .B1(n232), .B2(
        wbm_dat_o[8]), .Z(n290) );
  AO22D0BWP12T30P140 U43 ( .A1(lpc_dat_o[7]), .A2(n231), .B1(n232), .B2(
        wbm_dat_o[7]), .Z(n289) );
  CKBD0BWP12T30P140 U44 ( .I(n230), .Z(n195) );
  AO22D0BWP12T30P140 U45 ( .A1(lpc_dat_o[6]), .A2(n194), .B1(n195), .B2(
        wbm_dat_o[6]), .Z(n288) );
  AO22D0BWP12T30P140 U46 ( .A1(lpc_dat_o[5]), .A2(n231), .B1(n195), .B2(
        wbm_dat_o[5]), .Z(n287) );
  AO22D0BWP12T30P140 U47 ( .A1(lpc_dat_o[10]), .A2(n231), .B1(n232), .B2(
        wbm_dat_o[10]), .Z(n292) );
  AO22D0BWP12T30P140 U48 ( .A1(lpc_dat_o[3]), .A2(n194), .B1(n195), .B2(
        wbm_dat_o[3]), .Z(n285) );
  AO22D0BWP12T30P140 U49 ( .A1(lpc_dat_o[2]), .A2(n231), .B1(n195), .B2(
        wbm_dat_o[2]), .Z(n284) );
  AO22D0BWP12T30P140 U50 ( .A1(lpc_dat_o[1]), .A2(n233), .B1(n195), .B2(
        wbm_dat_o[1]), .Z(n283) );
  CKBD0BWP12T30P140 U51 ( .I(n231), .Z(n239) );
  AO22D0BWP12T30P140 U52 ( .A1(lpc_dat_o[0]), .A2(n239), .B1(n195), .B2(
        wbm_dat_o[0]), .Z(n282) );
  ND2D0BWP12T30P140 U53 ( .A1(nrst_i), .A2(lad_i[1]), .ZN(n457) );
  INVD0BWP12T30P140 U54 ( .I(state[2]), .ZN(n154) );
  INVD0BWP12T30P140 U55 ( .I(state[7]), .ZN(n108) );
  ND2D0BWP12T30P140 U56 ( .A1(n5), .A2(n108), .ZN(n7) );
  NR3D0BWP12T30P140 U57 ( .A1(state[5]), .A2(n154), .A3(n7), .ZN(n151) );
  INVD0BWP12T30P140 U58 ( .I(n151), .ZN(n172) );
  OR2D0BWP12T30P140 U59 ( .A1(n457), .A2(n172), .Z(n210) );
  INVD0BWP12T30P140 U60 ( .I(adr_cnt[2]), .ZN(n198) );
  INVD0BWP12T30P140 U61 ( .I(adr_cnt[1]), .ZN(n207) );
  NR2D0BWP12T30P140 U62 ( .A1(state[0]), .A2(n172), .ZN(n12) );
  INVD0BWP12T30P140 U63 ( .I(adr_cnt[0]), .ZN(n193) );
  ND2D0BWP12T30P140 U64 ( .A1(n12), .A2(n193), .ZN(n204) );
  INR4D0BWP12T30P140 U65 ( .A1(n86), .B1(state[2]), .B2(state[5]), .B3(
        state[7]), .ZN(n19) );
  ND3D0BWP12T30P140 U66 ( .A1(state[3]), .A2(n6), .A3(n19), .ZN(n169) );
  OAI21D0BWP12T30P140 U67 ( .A1(state[0]), .A2(n169), .B(nrst_i), .ZN(n206) );
  INVD0BWP12T30P140 U68 ( .I(n206), .ZN(n197) );
  OAI31D0BWP12T30P140 U69 ( .A1(n198), .A2(n207), .A3(n204), .B(n197), .ZN(
        n196) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n210), .A2(n196), .B1(n196), .B2(
        lpc_adr_reg[5]), .ZN(n359) );
  NR2D0BWP12T30P140 U71 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .ZN(n71) );
  INVD0BWP12T30P140 U72 ( .I(state[5]), .ZN(n133) );
  NR3D0BWP12T30P140 U73 ( .A1(state[2]), .A2(n7), .A3(n133), .ZN(n106) );
  ND3D0BWP12T30P140 U74 ( .A1(n216), .A2(n225), .A3(n106), .ZN(n8) );
  NR2D0BWP12T30P140 U75 ( .A1(byte_cnt[0]), .A2(n8), .ZN(n201) );
  AO21D0BWP12T30P140 U76 ( .A1(n71), .A2(n201), .B(n224), .Z(n220) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n457), .A2(n220), .B1(n220), .B2(lpc_dat_o[1]), .ZN(n399) );
  ND2D0BWP12T30P140 U78 ( .A1(nrst_i), .A2(lad_i[2]), .ZN(n235) );
  NR2D0BWP12T30P140 U79 ( .A1(n189), .A2(n8), .ZN(n17) );
  AO21D0BWP12T30P140 U80 ( .A1(n71), .A2(n17), .B(n224), .Z(n223) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n235), .A2(n223), .B1(n223), .B2(
        lpc_dat_o[10]), .ZN(n390) );
  ND2D0BWP12T30P140 U82 ( .A1(nrst_i), .A2(lad_i[3]), .ZN(n246) );
  INVD0BWP12T30P140 U83 ( .I(dat_cnt_0_), .ZN(n187) );
  NR2D0BWP12T30P140 U84 ( .A1(byte_cnt[1]), .A2(n187), .ZN(n146) );
  AO21D0BWP12T30P140 U85 ( .A1(n146), .A2(n17), .B(n224), .Z(n234) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n246), .A2(n234), .B1(n234), .B2(
        lpc_dat_o[15]), .ZN(n385) );
  ND2D0BWP12T30P140 U87 ( .A1(nrst_i), .A2(lad_i[0]), .ZN(n221) );
  INVD0BWP12T30P140 U88 ( .I(n221), .ZN(n166) );
  ND2D0BWP12T30P140 U89 ( .A1(n151), .A2(n166), .ZN(n209) );
  NR2D0BWP12T30P140 U90 ( .A1(adr_cnt[1]), .A2(n198), .ZN(n9) );
  AO31D0BWP12T30P140 U91 ( .A1(adr_cnt[0]), .A2(n12), .A3(n9), .B(n206), .Z(
        n10) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n209), .A2(n10), .B1(n10), .B2(lpc_adr_reg[8]), .ZN(n366) );
  AO22D0BWP12T30P140 U93 ( .A1(lpc_dat_o[9]), .A2(n194), .B1(n232), .B2(
        wbm_dat_o[9]), .Z(n291) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n210), .A2(n10), .B1(n10), .B2(lpc_adr_reg[9]), .ZN(n358) );
  OR2D0BWP12T30P140 U95 ( .A1(n235), .A2(n172), .Z(n211) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n211), .A2(n10), .B1(n10), .B2(
        lpc_adr_reg[10]), .ZN(n350) );
  INVD0BWP12T30P140 U97 ( .I(n246), .ZN(n92) );
  ND2D0BWP12T30P140 U98 ( .A1(n151), .A2(n92), .ZN(n213) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n213), .A2(n10), .B1(n10), .B2(
        lpc_adr_reg[11]), .ZN(n342) );
  ND3D0BWP12T30P140 U100 ( .A1(adr_cnt[0]), .A2(adr_cnt[2]), .A3(adr_cnt[1]), 
        .ZN(n170) );
  INVD0BWP12T30P140 U101 ( .I(n12), .ZN(n13) );
  OAI21D0BWP12T30P140 U102 ( .A1(n170), .A2(n13), .B(n197), .ZN(n15) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n209), .A2(n15), .B1(n15), .B2(
        lpc_adr_reg[0]), .ZN(n368) );
  AO22D0BWP12T30P140 U104 ( .A1(lpc_dat_o[4]), .A2(n239), .B1(n195), .B2(
        wbm_dat_o[4]), .Z(n286) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n211), .A2(n15), .B1(n15), .B2(
        lpc_adr_reg[2]), .ZN(n352) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n213), .A2(n15), .B1(n15), .B2(
        lpc_adr_reg[3]), .ZN(n344) );
  NR2D0BWP12T30P140 U107 ( .A1(adr_cnt[2]), .A2(n193), .ZN(n11) );
  AO31D0BWP12T30P140 U108 ( .A1(n12), .A2(n11), .A3(n207), .B(n206), .Z(n18)
         );
  MAOI22D0BWP12T30P140 U109 ( .A1(n209), .A2(n18), .B1(n18), .B2(
        lpc_adr_reg[24]), .ZN(n362) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n210), .A2(n18), .B1(n18), .B2(
        lpc_adr_reg[25]), .ZN(n354) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n213), .A2(n18), .B1(n18), .B2(
        lpc_adr_reg[27]), .ZN(n338) );
  ND3D0BWP12T30P140 U112 ( .A1(n198), .A2(adr_cnt[1]), .A3(adr_cnt[0]), .ZN(
        n127) );
  OAI21D0BWP12T30P140 U113 ( .A1(n13), .A2(n127), .B(n197), .ZN(n14) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n209), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[16]), .ZN(n364) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n210), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[17]), .ZN(n356) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n211), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[18]), .ZN(n348) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n213), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[19]), .ZN(n340) );
  ND3D0BWP12T30P140 U118 ( .A1(n236), .A2(wbm_ack_i), .A3(wbm_cyc_o), .ZN(n240) );
  NR2D0BWP12T30P140 U119 ( .A1(wbm_we_o), .A2(n240), .ZN(n45) );
  CKBD0BWP12T30P140 U120 ( .I(n45), .Z(n36) );
  NR2D0BWP12T30P140 U121 ( .A1(n36), .A2(n224), .ZN(n35) );
  CKBD0BWP12T30P140 U122 ( .I(n35), .Z(n44) );
  AO22D0BWP12T30P140 U123 ( .A1(lpc_dat_i[31]), .A2(n44), .B1(n36), .B2(
        wbm_dat_i[31]), .Z(n450) );
  AO22D0BWP12T30P140 U124 ( .A1(lpc_dat_i[28]), .A2(n44), .B1(n36), .B2(
        wbm_dat_i[28]), .Z(n447) );
  AO22D0BWP12T30P140 U125 ( .A1(lpc_dat_i[23]), .A2(n44), .B1(n36), .B2(
        wbm_dat_i[23]), .Z(n442) );
  AO22D0BWP12T30P140 U126 ( .A1(lpc_dat_i[20]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[20]), .Z(n439) );
  AO22D0BWP12T30P140 U127 ( .A1(lpc_dat_i[15]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[15]), .Z(n434) );
  AO22D0BWP12T30P140 U128 ( .A1(lpc_dat_i[12]), .A2(n44), .B1(n36), .B2(
        wbm_dat_i[12]), .Z(n431) );
  AO22D0BWP12T30P140 U129 ( .A1(lpc_dat_i[7]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[7]), .Z(n425) );
  AO22D0BWP12T30P140 U130 ( .A1(lpc_dat_i[4]), .A2(n44), .B1(n36), .B2(
        wbm_dat_i[4]), .Z(n422) );
  AO22D0BWP12T30P140 U131 ( .A1(lpc_dat_i[0]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[0]), .Z(n451) );
  AO22D0BWP12T30P140 U132 ( .A1(lpc_dat_i[27]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[27]), .Z(n446) );
  AO22D0BWP12T30P140 U133 ( .A1(lpc_dat_i[24]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[24]), .Z(n443) );
  AO22D0BWP12T30P140 U134 ( .A1(lpc_dat_i[19]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[19]), .Z(n438) );
  AO22D0BWP12T30P140 U135 ( .A1(lpc_dat_i[16]), .A2(n44), .B1(n45), .B2(
        wbm_dat_i[16]), .Z(n435) );
  AO22D0BWP12T30P140 U136 ( .A1(lpc_dat_i[11]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[11]), .Z(n430) );
  AO22D0BWP12T30P140 U137 ( .A1(lpc_dat_i[8]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[8]), .Z(n427) );
  AO22D0BWP12T30P140 U138 ( .A1(lpc_dat_i[3]), .A2(n35), .B1(n45), .B2(
        wbm_dat_i[3]), .Z(n421) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n235), .A2(n220), .B1(n220), .B2(
        lpc_dat_o[2]), .ZN(n398) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n246), .A2(n220), .B1(n220), .B2(
        lpc_dat_o[3]), .ZN(n397) );
  AO21D0BWP12T30P140 U141 ( .A1(n146), .A2(n201), .B(n224), .Z(n200) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n221), .A2(n200), .B1(n200), .B2(
        lpc_dat_o[4]), .ZN(n396) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n457), .A2(n200), .B1(n200), .B2(
        lpc_dat_o[5]), .ZN(n395) );
  NR2D0BWP12T30P140 U144 ( .A1(dat_cnt_0_), .A2(n149), .ZN(n145) );
  AO21D0BWP12T30P140 U145 ( .A1(n145), .A2(n201), .B(n224), .Z(n222) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n457), .A2(n222), .B1(n222), .B2(
        lpc_dat_o[17]), .ZN(n383) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n246), .A2(n222), .B1(n222), .B2(
        lpc_dat_o[19]), .ZN(n381) );
  MAOI22D0BWP12T30P140 U148 ( .A1(n246), .A2(n223), .B1(n223), .B2(
        lpc_dat_o[11]), .ZN(n389) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n221), .A2(n234), .B1(n234), .B2(
        lpc_dat_o[12]), .ZN(n388) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n457), .A2(n234), .B1(n234), .B2(
        lpc_dat_o[13]), .ZN(n387) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n210), .A2(n15), .B1(n15), .B2(
        lpc_adr_reg[1]), .ZN(n360) );
  AO21D0BWP12T30P140 U152 ( .A1(n145), .A2(n17), .B(n224), .Z(n16) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n221), .A2(n16), .B1(n16), .B2(lpc_dat_o[24]), .ZN(n376) );
  MAOI22D0BWP12T30P140 U154 ( .A1(n457), .A2(n16), .B1(n16), .B2(lpc_dat_o[25]), .ZN(n375) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n235), .A2(n16), .B1(n16), .B2(lpc_dat_o[26]), .ZN(n374) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n246), .A2(n16), .B1(n16), .B2(lpc_dat_o[27]), .ZN(n373) );
  NR2D0BWP12T30P140 U157 ( .A1(n149), .A2(n187), .ZN(n215) );
  AO21D0BWP12T30P140 U158 ( .A1(n215), .A2(n17), .B(n224), .Z(n203) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n246), .A2(n203), .B1(n203), .B2(
        lpc_dat_o[31]), .ZN(n369) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n211), .A2(n18), .B1(n18), .B2(
        lpc_adr_reg[26]), .ZN(n346) );
  NR2D0BWP12T30P140 U161 ( .A1(n224), .A2(n225), .ZN(n336) );
  INVD0BWP12T30P140 U162 ( .I(state[6]), .ZN(n87) );
  INVD0BWP12T30P140 U163 ( .I(state[3]), .ZN(n93) );
  ND2D0BWP12T30P140 U164 ( .A1(n19), .A2(n93), .ZN(n88) );
  NR3D0BWP12T30P140 U165 ( .A1(state[4]), .A2(n87), .A3(n88), .ZN(n113) );
  INVD0BWP12T30P140 U166 ( .I(n336), .ZN(n165) );
  INVD0BWP12T30P140 U167 ( .I(state[8]), .ZN(n103) );
  ND3D0BWP12T30P140 U168 ( .A1(n133), .A2(n154), .A3(n108), .ZN(n20) );
  NR4D0BWP12T30P140 U169 ( .A1(state[3]), .A2(state[6]), .A3(state[4]), .A4(
        n20), .ZN(n85) );
  INR2D1BWP12T30P140 U170 ( .A1(n85), .B1(state[10]), .ZN(n23) );
  IND2D1BWP12T30P140 U171 ( .A1(n21), .B1(n23), .ZN(n22) );
  NR3D0BWP12T30P140 U172 ( .A1(state[11]), .A2(n103), .A3(n22), .ZN(n156) );
  IND3D1BWP12T30P140 U173 ( .A1(n22), .B1(state[11]), .B2(n103), .ZN(n63) );
  INVD0BWP12T30P140 U174 ( .I(n63), .ZN(n115) );
  NR2D0BWP12T30P140 U175 ( .A1(n156), .A2(n115), .ZN(n96) );
  INVD0BWP12T30P140 U176 ( .I(state[13]), .ZN(n158) );
  NR2D0BWP12T30P140 U177 ( .A1(state[8]), .A2(state[11]), .ZN(n24) );
  ND2D0BWP12T30P140 U178 ( .A1(n24), .A2(n23), .ZN(n26) );
  NR2D0BWP12T30P140 U179 ( .A1(state[9]), .A2(n26), .ZN(n82) );
  INVD0BWP12T30P140 U180 ( .I(state[12]), .ZN(n112) );
  ND2D0BWP12T30P140 U181 ( .A1(n82), .A2(n112), .ZN(n84) );
  IND3D1BWP12T30P140 U182 ( .A1(n26), .B1(state[9]), .B2(n25), .ZN(n95) );
  OAI31D0BWP12T30P140 U183 ( .A1(state[1]), .A2(n158), .A3(n84), .B(n95), .ZN(
        n160) );
  NR2D0BWP12T30P140 U184 ( .A1(n224), .A2(n160), .ZN(n40) );
  ND2D0BWP12T30P140 U185 ( .A1(n96), .A2(n40), .ZN(n90) );
  AOI32D0BWP12T30P140 U186 ( .A1(n113), .A2(n165), .A3(n216), .B1(n90), .B2(
        n165), .ZN(n65) );
  INVD0BWP12T30P140 U187 ( .I(n65), .ZN(n78) );
  AOI22D0BWP12T30P140 U188 ( .A1(n215), .A2(lpc_dat_i[30]), .B1(n145), .B2(
        lpc_dat_i[26]), .ZN(n28) );
  AOI22D0BWP12T30P140 U189 ( .A1(n146), .A2(lpc_dat_i[14]), .B1(n71), .B2(
        lpc_dat_i[10]), .ZN(n27) );
  ND2D0BWP12T30P140 U190 ( .A1(n113), .A2(byte_cnt[0]), .ZN(n72) );
  AOI21D0BWP12T30P140 U191 ( .A1(n28), .A2(n27), .B(n72), .ZN(n33) );
  AOI22D0BWP12T30P140 U192 ( .A1(n215), .A2(lpc_dat_i[22]), .B1(n145), .B2(
        lpc_dat_i[18]), .ZN(n30) );
  AOI22D0BWP12T30P140 U193 ( .A1(n146), .A2(lpc_dat_i[6]), .B1(n71), .B2(
        lpc_dat_i[2]), .ZN(n29) );
  ND2D0BWP12T30P140 U194 ( .A1(n113), .A2(n189), .ZN(n68) );
  AOI21D0BWP12T30P140 U195 ( .A1(n30), .A2(n29), .B(n68), .ZN(n32) );
  IND2D1BWP12T30P140 U196 ( .A1(got_ack), .B1(n62), .ZN(n114) );
  INVD0BWP12T30P140 U197 ( .I(fw_xfr), .ZN(n171) );
  OAI21D0BWP12T30P140 U198 ( .A1(n461), .A2(n171), .B(n156), .ZN(n31) );
  OAI21D0BWP12T30P140 U199 ( .A1(n114), .A2(n63), .B(n31), .ZN(n140) );
  INVD0BWP12T30P140 U200 ( .I(n40), .ZN(n64) );
  NR4D0BWP12T30P140 U201 ( .A1(n33), .A2(n32), .A3(n140), .A4(n64), .ZN(n34)
         );
  MAOI22D0BWP12T30P140 U202 ( .A1(n78), .A2(n34), .B1(lad_o[2]), .B2(n78), 
        .ZN(n407) );
  AO22D0BWP12T30P140 U203 ( .A1(n45), .A2(wbm_dat_i[30]), .B1(n44), .B2(
        lpc_dat_i[30]), .Z(n449) );
  AO22D0BWP12T30P140 U204 ( .A1(n36), .A2(wbm_dat_i[29]), .B1(n44), .B2(
        lpc_dat_i[29]), .Z(n448) );
  AO22D0BWP12T30P140 U205 ( .A1(n36), .A2(wbm_dat_i[22]), .B1(n44), .B2(
        lpc_dat_i[22]), .Z(n441) );
  AO22D0BWP12T30P140 U206 ( .A1(n36), .A2(wbm_dat_i[21]), .B1(n44), .B2(
        lpc_dat_i[21]), .Z(n440) );
  AO22D0BWP12T30P140 U207 ( .A1(lpc_dat_o[14]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[14]), .Z(n296) );
  AO22D0BWP12T30P140 U208 ( .A1(n45), .A2(wbm_dat_i[14]), .B1(n44), .B2(
        lpc_dat_i[14]), .Z(n433) );
  AO22D0BWP12T30P140 U209 ( .A1(n36), .A2(wbm_dat_i[13]), .B1(n35), .B2(
        lpc_dat_i[13]), .Z(n432) );
  AO22D0BWP12T30P140 U210 ( .A1(n45), .A2(wbm_dat_i[6]), .B1(n44), .B2(
        lpc_dat_i[6]), .Z(n424) );
  AO22D0BWP12T30P140 U211 ( .A1(n36), .A2(wbm_dat_i[5]), .B1(n35), .B2(
        lpc_dat_i[5]), .Z(n423) );
  AO22D0BWP12T30P140 U212 ( .A1(n36), .A2(wbm_dat_i[26]), .B1(n44), .B2(
        lpc_dat_i[26]), .Z(n445) );
  AO22D0BWP12T30P140 U213 ( .A1(n36), .A2(wbm_dat_i[25]), .B1(n44), .B2(
        lpc_dat_i[25]), .Z(n444) );
  AO22D0BWP12T30P140 U214 ( .A1(n36), .A2(wbm_dat_i[18]), .B1(n44), .B2(
        lpc_dat_i[18]), .Z(n437) );
  AO22D0BWP12T30P140 U215 ( .A1(n36), .A2(wbm_dat_i[17]), .B1(n35), .B2(
        lpc_dat_i[17]), .Z(n436) );
  AO22D0BWP12T30P140 U216 ( .A1(n36), .A2(wbm_dat_i[10]), .B1(n35), .B2(
        lpc_dat_i[10]), .Z(n429) );
  AO22D0BWP12T30P140 U217 ( .A1(n45), .A2(wbm_dat_i[9]), .B1(n44), .B2(
        lpc_dat_i[9]), .Z(n428) );
  AO22D0BWP12T30P140 U218 ( .A1(n36), .A2(wbm_dat_i[1]), .B1(n35), .B2(
        lpc_dat_i[1]), .Z(n426) );
  AOI22D0BWP12T30P140 U219 ( .A1(n215), .A2(lpc_dat_i[29]), .B1(n145), .B2(
        lpc_dat_i[25]), .ZN(n38) );
  AOI22D0BWP12T30P140 U220 ( .A1(n146), .A2(lpc_dat_i[13]), .B1(n71), .B2(
        lpc_dat_i[9]), .ZN(n37) );
  AOI21D0BWP12T30P140 U221 ( .A1(n38), .A2(n37), .B(n72), .ZN(n43) );
  AOI22D0BWP12T30P140 U222 ( .A1(n215), .A2(lpc_dat_i[21]), .B1(n145), .B2(
        lpc_dat_i[17]), .ZN(n41) );
  AOI22D0BWP12T30P140 U223 ( .A1(n146), .A2(lpc_dat_i[5]), .B1(n71), .B2(
        lpc_dat_i[1]), .ZN(n39) );
  AOI32D0BWP12T30P140 U224 ( .A1(n41), .A2(n40), .A3(n39), .B1(n68), .B2(n40), 
        .ZN(n42) );
  OA32D0BWP12T30P140 U225 ( .A1(n65), .A2(n43), .A3(n42), .B1(lad_o[1]), .B2(
        n78), .Z(n408) );
  AO22D0BWP12T30P140 U226 ( .A1(n45), .A2(wbm_dat_i[2]), .B1(n44), .B2(
        lpc_dat_i[2]), .Z(n420) );
  AOI22D0BWP12T30P140 U227 ( .A1(n215), .A2(lpc_dat_i[28]), .B1(n145), .B2(
        lpc_dat_i[24]), .ZN(n47) );
  AOI22D0BWP12T30P140 U228 ( .A1(n146), .A2(lpc_dat_i[12]), .B1(n71), .B2(
        lpc_dat_i[8]), .ZN(n46) );
  AOI21D0BWP12T30P140 U229 ( .A1(n47), .A2(n46), .B(n72), .ZN(n53) );
  AOI22D0BWP12T30P140 U230 ( .A1(n215), .A2(lpc_dat_i[20]), .B1(n145), .B2(
        lpc_dat_i[16]), .ZN(n49) );
  AOI22D0BWP12T30P140 U231 ( .A1(n146), .A2(lpc_dat_i[4]), .B1(n71), .B2(
        lpc_dat_i[0]), .ZN(n48) );
  AOI21D0BWP12T30P140 U232 ( .A1(n49), .A2(n48), .B(n68), .ZN(n52) );
  NR2D0BWP12T30P140 U233 ( .A1(xfr_len[1]), .A2(xfr_len[2]), .ZN(n105) );
  ND2D0BWP12T30P140 U234 ( .A1(n115), .A2(dma_xfr), .ZN(n50) );
  AOI211D0BWP12T30P140 U235 ( .A1(xfr_len[0]), .A2(n105), .B(n51), .C(n50), 
        .ZN(n77) );
  NR4D0BWP12T30P140 U236 ( .A1(n53), .A2(n52), .A3(n77), .A4(n140), .ZN(n67)
         );
  NR2D0BWP12T30P140 U237 ( .A1(xfr_len[1]), .A2(n149), .ZN(n58) );
  ND2D0BWP12T30P140 U238 ( .A1(byte_cnt[0]), .A2(xfr_len[0]), .ZN(n56) );
  NR2D0BWP12T30P140 U239 ( .A1(xfr_len[2]), .A2(n216), .ZN(n54) );
  AOI21D0BWP12T30P140 U240 ( .A1(n58), .A2(n57), .B(n54), .ZN(n55) );
  OAI211D0BWP12T30P140 U241 ( .A1(n58), .A2(n57), .B(n56), .C(n55), .ZN(n59)
         );
  AOI21D0BWP12T30P140 U242 ( .A1(n189), .A2(n61), .B(n59), .ZN(n60) );
  OAI21D0BWP12T30P140 U243 ( .A1(xfr_len[0]), .A2(n61), .B(n60), .ZN(n118) );
  INVD0BWP12T30P140 U244 ( .I(n118), .ZN(n143) );
  AOI211D0BWP12T30P140 U245 ( .A1(n143), .A2(n461), .B(n63), .C(n62), .ZN(n66)
         );
  AOI211D0BWP12T30P140 U246 ( .A1(dma_xfr), .A2(n66), .B(n65), .C(n64), .ZN(
        n79) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n67), .A2(n79), .B1(n78), .B2(lad_o[0]), 
        .ZN(n409) );
  AOI22D0BWP12T30P140 U248 ( .A1(n215), .A2(lpc_dat_i[23]), .B1(n145), .B2(
        lpc_dat_i[19]), .ZN(n70) );
  AOI22D0BWP12T30P140 U249 ( .A1(n146), .A2(lpc_dat_i[7]), .B1(n71), .B2(
        lpc_dat_i[3]), .ZN(n69) );
  AOI21D0BWP12T30P140 U250 ( .A1(n70), .A2(n69), .B(n68), .ZN(n76) );
  AOI22D0BWP12T30P140 U251 ( .A1(n215), .A2(lpc_dat_i[31]), .B1(n145), .B2(
        lpc_dat_i[27]), .ZN(n74) );
  AOI22D0BWP12T30P140 U252 ( .A1(n146), .A2(lpc_dat_i[15]), .B1(n71), .B2(
        lpc_dat_i[11]), .ZN(n73) );
  AOI21D0BWP12T30P140 U253 ( .A1(n74), .A2(n73), .B(n72), .ZN(n75) );
  AOI211D0BWP12T30P140 U254 ( .A1(n77), .A2(got_ack), .B(n76), .C(n75), .ZN(
        n80) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n80), .A2(n79), .B1(n78), .B2(lad_o[3]), 
        .ZN(n406) );
  AO22D0BWP12T30P140 U256 ( .A1(n194), .A2(lpc_adr_reg[3]), .B1(n195), .B2(
        wbm_adr_o[3]), .Z(n250) );
  AO22D0BWP12T30P140 U257 ( .A1(n194), .A2(lpc_adr_reg[2]), .B1(n232), .B2(
        wbm_adr_o[2]), .Z(n249) );
  AO22D0BWP12T30P140 U258 ( .A1(n194), .A2(lpc_adr_reg[1]), .B1(n230), .B2(
        wbm_adr_o[1]), .Z(n248) );
  AO22D0BWP12T30P140 U259 ( .A1(n239), .A2(lpc_adr_reg[0]), .B1(n195), .B2(
        wbm_adr_o[0]), .Z(n247) );
  ND3D0BWP12T30P140 U260 ( .A1(state[10]), .A2(n81), .A3(n85), .ZN(n111) );
  NR2D0BWP12T30P140 U261 ( .A1(state[13]), .A2(state[1]), .ZN(n83) );
  ND3D0BWP12T30P140 U262 ( .A1(state[12]), .A2(n83), .A3(n82), .ZN(n128) );
  ND3D0BWP12T30P140 U263 ( .A1(n111), .A2(n128), .A3(n102), .ZN(n91) );
  INVD0BWP12T30P140 U264 ( .I(state[1]), .ZN(n94) );
  OR3D0BWP12T30P140 U265 ( .A1(state[13]), .A2(n94), .A3(n84), .Z(n453) );
  ND2D0BWP12T30P140 U266 ( .A1(n172), .A2(n453), .ZN(n124) );
  ND2D0BWP12T30P140 U267 ( .A1(n86), .A2(n85), .ZN(n455) );
  INVD0BWP12T30P140 U268 ( .I(n455), .ZN(n243) );
  INVD0BWP12T30P140 U269 ( .I(n113), .ZN(n134) );
  INVD0BWP12T30P140 U270 ( .I(n106), .ZN(n129) );
  ND2D0BWP12T30P140 U271 ( .A1(n134), .A2(n129), .ZN(n186) );
  NR2D0BWP12T30P140 U272 ( .A1(n243), .A2(n186), .ZN(n184) );
  IND3D1BWP12T30P140 U273 ( .A1(n88), .B1(state[4]), .B2(n87), .ZN(n161) );
  IND4D1BWP12T30P140 U274 ( .A1(n124), .B1(n184), .B2(n169), .B3(n161), .ZN(
        n89) );
  OAI31D0BWP12T30P140 U275 ( .A1(n91), .A2(n90), .A3(n89), .B(n165), .ZN(n175)
         );
  INVD0BWP12T30P140 U276 ( .I(n175), .ZN(n159) );
  NR2D0BWP12T30P140 U277 ( .A1(state[0]), .A2(n453), .ZN(n459) );
  ND2D0BWP12T30P140 U278 ( .A1(n92), .A2(n459), .ZN(n244) );
  OAI21D0BWP12T30P140 U279 ( .A1(n159), .A2(n93), .B(n244), .ZN(n333) );
  NR2D0BWP12T30P140 U280 ( .A1(n224), .A2(n175), .ZN(n174) );
  INVD0BWP12T30P140 U281 ( .I(n174), .ZN(n152) );
  NR2D0BWP12T30P140 U282 ( .A1(lad_i[0]), .A2(lad_i[1]), .ZN(n176) );
  NR2D0BWP12T30P140 U283 ( .A1(lad_i[3]), .A2(lad_i[2]), .ZN(n164) );
  ND4D0BWP12T30P140 U284 ( .A1(n243), .A2(n176), .A3(lframe_i), .A4(n164), 
        .ZN(n121) );
  OAI22D0BWP12T30P140 U285 ( .A1(n159), .A2(n94), .B1(n152), .B2(n121), .ZN(
        n335) );
  ND3D0BWP12T30P140 U286 ( .A1(n96), .A2(n134), .A3(n95), .ZN(n97) );
  INVD0BWP12T30P140 U287 ( .I(n97), .ZN(n101) );
  INVD0BWP12T30P140 U288 ( .I(n111), .ZN(n98) );
  ND2D0BWP12T30P140 U289 ( .A1(n243), .A2(lframe_i), .ZN(n119) );
  OAI21D0BWP12T30P140 U290 ( .A1(state[0]), .A2(n119), .B(nrst_i), .ZN(n162)
         );
  AOI221D0BWP12T30P140 U291 ( .A1(n98), .A2(n225), .B1(n97), .B2(n225), .C(
        n162), .ZN(n100) );
  ND2D0BWP12T30P140 U292 ( .A1(n100), .A2(lad_oe), .ZN(n99) );
  OAI31D0BWP12T30P140 U293 ( .A1(n101), .A2(n100), .A3(n224), .B(n99), .ZN(
        n405) );
  OAI22D0BWP12T30P140 U294 ( .A1(n159), .A2(n103), .B1(n102), .B2(n152), .ZN(
        n328) );
  AOI211D0BWP12T30P140 U295 ( .A1(xfr_len[1]), .A2(xfr_len[2]), .B(xfr_len[0]), 
        .C(n139), .ZN(n104) );
  INVD0BWP12T30P140 U296 ( .I(n104), .ZN(n237) );
  NR2D0BWP12T30P140 U297 ( .A1(n104), .A2(n224), .ZN(n238) );
  MOAI22D0BWP12T30P140 U298 ( .A1(n105), .A2(n237), .B1(wbm_sel_o[1]), .B2(
        n238), .ZN(n280) );
  AO22D0BWP12T30P140 U299 ( .A1(lpc_dat_o[31]), .A2(n239), .B1(n230), .B2(
        wbm_dat_o[31]), .Z(n313) );
  AOI21D0BWP12T30P140 U300 ( .A1(fw_xfr), .A2(n118), .B(n187), .ZN(n135) );
  OAI31D0BWP12T30P140 U301 ( .A1(fw_xfr), .A2(n172), .A3(n170), .B(n161), .ZN(
        n131) );
  AOI22D0BWP12T30P140 U302 ( .A1(n135), .A2(n106), .B1(n461), .B2(n131), .ZN(
        n107) );
  OAI22D0BWP12T30P140 U303 ( .A1(n159), .A2(n108), .B1(n107), .B2(n152), .ZN(
        n329) );
  ND2D0BWP12T30P140 U304 ( .A1(lpc_write), .A2(n174), .ZN(n116) );
  INVD0BWP12T30P140 U305 ( .I(n116), .ZN(n155) );
  ND2D0BWP12T30P140 U306 ( .A1(n155), .A2(n109), .ZN(n110) );
  OAI22D0BWP12T30P140 U307 ( .A1(n159), .A2(n112), .B1(n111), .B2(n110), .ZN(
        n324) );
  ND3D0BWP12T30P140 U308 ( .A1(n113), .A2(n174), .A3(dat_cnt_0_), .ZN(n142) );
  ND2D0BWP12T30P140 U309 ( .A1(n115), .A2(n114), .ZN(n136) );
  OAI222D0BWP12T30P140 U310 ( .A1(n118), .A2(n142), .B1(n117), .B2(n159), .C1(
        n136), .C2(n116), .ZN(n327) );
  IND3D1BWP12T30P140 U311 ( .A1(n176), .B1(lad_i[2]), .B2(lad_i[3]), .ZN(n122)
         );
  AOI211D0BWP12T30P140 U312 ( .A1(lad_i[0]), .A2(lad_i[1]), .B(n119), .C(n122), 
        .ZN(n226) );
  AOI21D0BWP12T30P140 U313 ( .A1(n226), .A2(n225), .B(n224), .ZN(n120) );
  OAI21D0BWP12T30P140 U314 ( .A1(state[0]), .A2(n121), .B(n120), .ZN(n458) );
  INVD0BWP12T30P140 U315 ( .I(n458), .ZN(n123) );
  OAI32D0BWP12T30P140 U316 ( .A1(n123), .A2(n224), .A3(n122), .B1(n171), .B2(
        n458), .ZN(n410) );
  ND2D0BWP12T30P140 U317 ( .A1(n151), .A2(n147), .ZN(n192) );
  INVD0BWP12T30P140 U318 ( .I(lad_i[2]), .ZN(n227) );
  OAI21D0BWP12T30P140 U319 ( .A1(n226), .A2(n124), .B(n147), .ZN(n144) );
  AOI21D0BWP12T30P140 U320 ( .A1(n151), .A2(n193), .B(n144), .ZN(n191) );
  AOI221D0BWP12T30P140 U321 ( .A1(adr_cnt[1]), .A2(n191), .B1(n172), .B2(n191), 
        .C(n198), .ZN(n125) );
  AOI31D0BWP12T30P140 U322 ( .A1(nrst_i), .A2(n459), .A3(n227), .B(n125), .ZN(
        n126) );
  OAI21D0BWP12T30P140 U323 ( .A1(n192), .A2(n127), .B(n126), .ZN(n316) );
  OAI21D0BWP12T30P140 U324 ( .A1(n135), .A2(n129), .B(n128), .ZN(n130) );
  AOI21D0BWP12T30P140 U325 ( .A1(lpc_write), .A2(n131), .B(n130), .ZN(n132) );
  OAI22D0BWP12T30P140 U326 ( .A1(n159), .A2(n133), .B1(n132), .B2(n152), .ZN(
        n331) );
  OAI22D0BWP12T30P140 U327 ( .A1(lpc_write), .A2(n136), .B1(n135), .B2(n134), 
        .ZN(n137) );
  AO22D0BWP12T30P140 U328 ( .A1(state[6]), .A2(n175), .B1(n174), .B2(n137), 
        .Z(n330) );
  ND3D0BWP12T30P140 U329 ( .A1(n240), .A2(wbm_we_o), .A3(n230), .ZN(n138) );
  OAI21D0BWP12T30P140 U330 ( .A1(n139), .A2(n461), .B(n138), .ZN(n452) );
  AOI22D0BWP12T30P140 U331 ( .A1(state[11]), .A2(n175), .B1(n174), .B2(n140), 
        .ZN(n141) );
  OAI31D0BWP12T30P140 U332 ( .A1(n143), .A2(fw_xfr), .A3(n142), .B(n141), .ZN(
        n325) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n192), .A2(n193), .B1(n193), .B2(n144), .ZN(
        n318) );
  AOI211D0BWP12T30P140 U334 ( .A1(n186), .A2(n189), .B(n184), .C(n183), .ZN(
        n219) );
  AOI21D0BWP12T30P140 U335 ( .A1(n146), .A2(byte_cnt[0]), .B(n145), .ZN(n148)
         );
  ND2D0BWP12T30P140 U336 ( .A1(n186), .A2(n147), .ZN(n185) );
  OAI22D0BWP12T30P140 U337 ( .A1(n219), .A2(n149), .B1(n148), .B2(n185), .ZN(
        n320) );
  NR2D0BWP12T30P140 U338 ( .A1(lad_i[3]), .A2(n453), .ZN(n150) );
  AOI211D0BWP12T30P140 U339 ( .A1(n151), .A2(n170), .B(n226), .C(n150), .ZN(
        n153) );
  OAI22D0BWP12T30P140 U340 ( .A1(n159), .A2(n154), .B1(n153), .B2(n152), .ZN(
        n334) );
  ND3D0BWP12T30P140 U341 ( .A1(n156), .A2(n155), .A3(fw_xfr), .ZN(n157) );
  OAI21D0BWP12T30P140 U342 ( .A1(n159), .A2(n158), .B(n157), .ZN(n323) );
  AO22D0BWP12T30P140 U343 ( .A1(state[10]), .A2(n175), .B1(n174), .B2(n160), 
        .Z(n326) );
  INVD0BWP12T30P140 U344 ( .I(n161), .ZN(n163) );
  AOI21D0BWP12T30P140 U345 ( .A1(n225), .A2(n163), .B(n162), .ZN(n178) );
  INVD0BWP12T30P140 U346 ( .I(n178), .ZN(n181) );
  ND3D0BWP12T30P140 U347 ( .A1(n165), .A2(n164), .A3(n163), .ZN(n180) );
  INVD0BWP12T30P140 U348 ( .I(lad_i[1]), .ZN(n454) );
  ND2D0BWP12T30P140 U349 ( .A1(n166), .A2(n454), .ZN(n167) );
  OAI22D0BWP12T30P140 U350 ( .A1(n168), .A2(n181), .B1(n180), .B2(n167), .ZN(
        n412) );
  INVD0BWP12T30P140 U351 ( .I(xfr_len[2]), .ZN(n182) );
  MOAI22D0BWP12T30P140 U352 ( .A1(n182), .A2(n237), .B1(n238), .B2(
        wbm_sel_o[2]), .ZN(n281) );
  OAI31D0BWP12T30P140 U353 ( .A1(n172), .A2(n171), .A3(n170), .B(n169), .ZN(
        n173) );
  AO22D0BWP12T30P140 U354 ( .A1(state[4]), .A2(n175), .B1(n174), .B2(n173), 
        .Z(n332) );
  OAI31D0BWP12T30P140 U355 ( .A1(n243), .A2(n176), .A3(lad_i[3]), .B(nrst_i), 
        .ZN(n179) );
  AOI32D0BWP12T30P140 U356 ( .A1(n179), .A2(n181), .A3(n235), .B1(n178), .B2(
        n177), .ZN(n413) );
  OAI22D0BWP12T30P140 U357 ( .A1(n182), .A2(n181), .B1(n457), .B2(n180), .ZN(
        n411) );
  NR2D0BWP12T30P140 U358 ( .A1(n184), .A2(n183), .ZN(n190) );
  AOI22D0BWP12T30P140 U359 ( .A1(dat_cnt_0_), .A2(n190), .B1(n185), .B2(n187), 
        .ZN(n322) );
  INVD0BWP12T30P140 U360 ( .I(n185), .ZN(n214) );
  AOI33D0BWP12T30P140 U361 ( .A1(byte_cnt[0]), .A2(n187), .A3(n186), .B1(n214), 
        .B2(dat_cnt_0_), .B3(n189), .ZN(n188) );
  OAI21D0BWP12T30P140 U362 ( .A1(n190), .A2(n189), .B(n188), .ZN(n321) );
  OAI32D0BWP12T30P140 U363 ( .A1(adr_cnt[1]), .A2(n193), .A3(n192), .B1(n191), 
        .B2(n207), .ZN(n317) );
  AO22D0BWP12T30P140 U364 ( .A1(n239), .A2(lpc_adr_reg[19]), .B1(n230), .B2(
        wbm_adr_o[19]), .Z(n266) );
  AO22D0BWP12T30P140 U365 ( .A1(n239), .A2(lpc_adr_reg[17]), .B1(n230), .B2(
        wbm_adr_o[17]), .Z(n264) );
  AO22D0BWP12T30P140 U366 ( .A1(lpc_adr_reg[15]), .A2(n231), .B1(n195), .B2(
        wbm_adr_o[15]), .Z(n262) );
  AO22D0BWP12T30P140 U367 ( .A1(lpc_adr_reg[13]), .A2(n231), .B1(n230), .B2(
        wbm_adr_o[13]), .Z(n260) );
  AO22D0BWP12T30P140 U368 ( .A1(n194), .A2(lpc_adr_reg[9]), .B1(n230), .B2(
        wbm_adr_o[9]), .Z(n256) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n457), .A2(n206), .B1(n206), .B2(
        dma_chan_o[1]), .ZN(n415) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n221), .A2(n206), .B1(n206), .B2(
        dma_chan_o[0]), .ZN(n414) );
  AO22D0BWP12T30P140 U371 ( .A1(lpc_adr_reg[12]), .A2(n194), .B1(n236), .B2(
        wbm_adr_o[12]), .Z(n259) );
  AO22D0BWP12T30P140 U372 ( .A1(n239), .A2(lpc_adr_reg[10]), .B1(n232), .B2(
        wbm_adr_o[10]), .Z(n257) );
  AO22D0BWP12T30P140 U373 ( .A1(lpc_adr_reg[7]), .A2(n231), .B1(n195), .B2(
        wbm_adr_o[7]), .Z(n254) );
  AO22D0BWP12T30P140 U374 ( .A1(lpc_adr_reg[5]), .A2(n231), .B1(n230), .B2(
        wbm_adr_o[5]), .Z(n252) );
  AO22D0BWP12T30P140 U375 ( .A1(n236), .A2(wbm_tga_o[1]), .B1(n239), .B2(
        lpc_tga_o[1]), .Z(n315) );
  AO22D0BWP12T30P140 U376 ( .A1(n236), .A2(wbm_tga_o[0]), .B1(n239), .B2(
        lpc_tga_o[0]), .Z(n314) );
  AO22D0BWP12T30P140 U377 ( .A1(lpc_adr_reg[22]), .A2(n194), .B1(n230), .B2(
        wbm_adr_o[22]), .Z(n269) );
  AO22D0BWP12T30P140 U378 ( .A1(lpc_adr_reg[21]), .A2(n231), .B1(n236), .B2(
        wbm_adr_o[21]), .Z(n268) );
  AO22D0BWP12T30P140 U379 ( .A1(lpc_adr_reg[20]), .A2(n194), .B1(n195), .B2(
        wbm_adr_o[20]), .Z(n267) );
  AO22D0BWP12T30P140 U380 ( .A1(n194), .A2(lpc_adr_reg[18]), .B1(n232), .B2(
        wbm_adr_o[18]), .Z(n265) );
  AO22D0BWP12T30P140 U381 ( .A1(n239), .A2(lpc_adr_reg[16]), .B1(n236), .B2(
        wbm_adr_o[16]), .Z(n263) );
  AO22D0BWP12T30P140 U382 ( .A1(lpc_adr_reg[14]), .A2(n194), .B1(n232), .B2(
        wbm_adr_o[14]), .Z(n261) );
  AO22D0BWP12T30P140 U383 ( .A1(n239), .A2(lpc_adr_reg[11]), .B1(n195), .B2(
        wbm_adr_o[11]), .Z(n258) );
  AO22D0BWP12T30P140 U384 ( .A1(n194), .A2(lpc_adr_reg[8]), .B1(n236), .B2(
        wbm_adr_o[8]), .Z(n255) );
  AO22D0BWP12T30P140 U385 ( .A1(lpc_adr_reg[6]), .A2(n194), .B1(n232), .B2(
        wbm_adr_o[6]), .Z(n253) );
  AO22D0BWP12T30P140 U386 ( .A1(lpc_adr_reg[4]), .A2(n194), .B1(n236), .B2(
        wbm_adr_o[4]), .Z(n251) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n246), .A2(n206), .B1(n206), .B2(dma_tc_o), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n235), .A2(n206), .B1(n206), .B2(
        dma_chan_o[2]), .ZN(n416) );
  AO22D0BWP12T30P140 U389 ( .A1(lpc_adr_reg[31]), .A2(n194), .B1(n195), .B2(
        wbm_adr_o[31]), .Z(n278) );
  AO22D0BWP12T30P140 U390 ( .A1(lpc_adr_reg[30]), .A2(n231), .B1(n195), .B2(
        wbm_adr_o[30]), .Z(n277) );
  AO22D0BWP12T30P140 U391 ( .A1(lpc_adr_reg[29]), .A2(n231), .B1(n195), .B2(
        wbm_adr_o[29]), .Z(n276) );
  AO22D0BWP12T30P140 U392 ( .A1(lpc_adr_reg[28]), .A2(n194), .B1(n195), .B2(
        wbm_adr_o[28]), .Z(n275) );
  AO22D0BWP12T30P140 U393 ( .A1(n239), .A2(lpc_adr_reg[27]), .B1(n195), .B2(
        wbm_adr_o[27]), .Z(n274) );
  AO22D0BWP12T30P140 U394 ( .A1(n239), .A2(lpc_adr_reg[26]), .B1(n230), .B2(
        wbm_adr_o[26]), .Z(n273) );
  AO22D0BWP12T30P140 U395 ( .A1(n239), .A2(lpc_adr_reg[25]), .B1(n236), .B2(
        wbm_adr_o[25]), .Z(n272) );
  AO22D0BWP12T30P140 U396 ( .A1(n239), .A2(lpc_adr_reg[24]), .B1(n230), .B2(
        wbm_adr_o[24]), .Z(n271) );
  AO22D0BWP12T30P140 U397 ( .A1(lpc_adr_reg[23]), .A2(n231), .B1(n236), .B2(
        wbm_adr_o[23]), .Z(n270) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n209), .A2(n196), .B1(n196), .B2(
        lpc_adr_reg[4]), .ZN(n367) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n211), .A2(n196), .B1(n196), .B2(
        lpc_adr_reg[6]), .ZN(n351) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n213), .A2(n196), .B1(n196), .B2(
        lpc_adr_reg[7]), .ZN(n343) );
  OAI31D0BWP12T30P140 U401 ( .A1(n198), .A2(n204), .A3(adr_cnt[1]), .B(n197), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n209), .A2(n199), .B1(n199), .B2(
        lpc_adr_reg[12]), .ZN(n365) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n210), .A2(n199), .B1(n199), .B2(
        lpc_adr_reg[13]), .ZN(n357) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n211), .A2(n199), .B1(n199), .B2(
        lpc_adr_reg[14]), .ZN(n349) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n213), .A2(n199), .B1(n199), .B2(
        lpc_adr_reg[15]), .ZN(n341) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n235), .A2(n200), .B1(n200), .B2(
        lpc_dat_o[6]), .ZN(n394) );
  MAOI22D0BWP12T30P140 U407 ( .A1(n246), .A2(n200), .B1(n200), .B2(
        lpc_dat_o[7]), .ZN(n393) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n221), .A2(n222), .B1(n222), .B2(
        lpc_dat_o[16]), .ZN(n384) );
  AO21D0BWP12T30P140 U409 ( .A1(n215), .A2(n201), .B(n224), .Z(n202) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n221), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[20]), .ZN(n380) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n457), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[21]), .ZN(n379) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n235), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[22]), .ZN(n378) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n246), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[23]), .ZN(n377) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n221), .A2(n223), .B1(n223), .B2(
        lpc_dat_o[8]), .ZN(n392) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n221), .A2(n203), .B1(n203), .B2(
        lpc_dat_o[28]), .ZN(n372) );
  MAOI22D0BWP12T30P140 U416 ( .A1(n457), .A2(n203), .B1(n203), .B2(
        lpc_dat_o[29]), .ZN(n371) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n235), .A2(n203), .B1(n203), .B2(
        lpc_dat_o[30]), .ZN(n370) );
  NR2D0BWP12T30P140 U418 ( .A1(adr_cnt[2]), .A2(n204), .ZN(n208) );
  AO21D0BWP12T30P140 U419 ( .A1(adr_cnt[1]), .A2(n208), .B(n206), .Z(n205) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n209), .A2(n205), .B1(n205), .B2(
        lpc_adr_reg[20]), .ZN(n363) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n210), .A2(n205), .B1(n205), .B2(
        lpc_adr_reg[21]), .ZN(n355) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n211), .A2(n205), .B1(n205), .B2(
        lpc_adr_reg[22]), .ZN(n347) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n213), .A2(n205), .B1(n205), .B2(
        lpc_adr_reg[23]), .ZN(n339) );
  AO21D0BWP12T30P140 U424 ( .A1(n208), .A2(n207), .B(n206), .Z(n212) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n209), .A2(n212), .B1(n212), .B2(
        lpc_adr_reg[28]), .ZN(n361) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n210), .A2(n212), .B1(n212), .B2(
        lpc_adr_reg[29]), .ZN(n353) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n211), .A2(n212), .B1(n212), .B2(
        lpc_adr_reg[30]), .ZN(n345) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n213), .A2(n212), .B1(n212), .B2(
        lpc_adr_reg[31]), .ZN(n337) );
  IND2D1BWP12T30P140 U429 ( .A1(n215), .B1(n214), .ZN(n218) );
  ND3D0BWP12T30P140 U430 ( .A1(byte_cnt[0]), .A2(n215), .A3(n214), .ZN(n217)
         );
  AOI32D0BWP12T30P140 U431 ( .A1(n219), .A2(byte_cnt[2]), .A3(n218), .B1(n217), 
        .B2(n216), .ZN(n319) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n221), .A2(n220), .B1(n220), .B2(
        lpc_dat_o[0]), .ZN(n400) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n235), .A2(n222), .B1(n222), .B2(
        lpc_dat_o[18]), .ZN(n382) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n457), .A2(n223), .B1(n223), .B2(
        lpc_dat_o[9]), .ZN(n391) );
  AOI211D0BWP12T30P140 U435 ( .A1(n226), .A2(n225), .B(n459), .C(n224), .ZN(
        n241) );
  ND2D0BWP12T30P140 U436 ( .A1(nrst_i), .A2(n227), .ZN(n229) );
  ND2D0BWP12T30P140 U437 ( .A1(n241), .A2(lpc_tga_o[0]), .ZN(n228) );
  OAI211D0BWP12T30P140 U438 ( .A1(n241), .A2(n229), .B(n244), .C(n228), .ZN(
        n403) );
  AO22D0BWP12T30P140 U439 ( .A1(lpc_dat_o[30]), .A2(n239), .B1(n236), .B2(
        wbm_dat_o[30]), .Z(n312) );
  AO22D0BWP12T30P140 U440 ( .A1(lpc_dat_o[29]), .A2(n233), .B1(n230), .B2(
        wbm_dat_o[29]), .Z(n311) );
  AO22D0BWP12T30P140 U441 ( .A1(lpc_dat_o[28]), .A2(n239), .B1(n236), .B2(
        wbm_dat_o[28]), .Z(n310) );
  AO22D0BWP12T30P140 U442 ( .A1(lpc_dat_o[27]), .A2(n239), .B1(n230), .B2(
        wbm_dat_o[27]), .Z(n309) );
  AO22D0BWP12T30P140 U443 ( .A1(lpc_dat_o[26]), .A2(n233), .B1(n236), .B2(
        wbm_dat_o[26]), .Z(n308) );
  AO22D0BWP12T30P140 U444 ( .A1(lpc_dat_o[25]), .A2(n233), .B1(n230), .B2(
        wbm_dat_o[25]), .Z(n307) );
  AO22D0BWP12T30P140 U445 ( .A1(lpc_dat_o[24]), .A2(n233), .B1(n236), .B2(
        wbm_dat_o[24]), .Z(n306) );
  AO22D0BWP12T30P140 U446 ( .A1(lpc_dat_o[23]), .A2(n233), .B1(n230), .B2(
        wbm_dat_o[23]), .Z(n305) );
  AO22D0BWP12T30P140 U447 ( .A1(lpc_dat_o[22]), .A2(n233), .B1(n236), .B2(
        wbm_dat_o[22]), .Z(n304) );
  AO22D0BWP12T30P140 U448 ( .A1(lpc_dat_o[21]), .A2(n233), .B1(n230), .B2(
        wbm_dat_o[21]), .Z(n303) );
  AO22D0BWP12T30P140 U449 ( .A1(lpc_dat_o[20]), .A2(n233), .B1(n236), .B2(
        wbm_dat_o[20]), .Z(n302) );
  AO22D0BWP12T30P140 U450 ( .A1(lpc_dat_o[19]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[19]), .Z(n301) );
  AO22D0BWP12T30P140 U451 ( .A1(lpc_dat_o[18]), .A2(n231), .B1(n232), .B2(
        wbm_dat_o[18]), .Z(n300) );
  AO22D0BWP12T30P140 U452 ( .A1(lpc_dat_o[17]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[17]), .Z(n299) );
  AO22D0BWP12T30P140 U453 ( .A1(lpc_dat_o[16]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[16]), .Z(n298) );
  AO22D0BWP12T30P140 U454 ( .A1(lpc_dat_o[15]), .A2(n233), .B1(n232), .B2(
        wbm_dat_o[15]), .Z(n297) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n235), .A2(n234), .B1(n234), .B2(
        lpc_dat_o[14]), .ZN(n386) );
  CKBD0BWP12T30P140 U456 ( .I(clk_i), .Z(n475) );
  CKBD0BWP12T30P140 U457 ( .I(n475), .Z(n474) );
  CKBD0BWP12T30P140 U458 ( .I(n474), .Z(n473) );
  CKBD0BWP12T30P140 U459 ( .I(n475), .Z(n472) );
  CKBD0BWP12T30P140 U460 ( .I(n475), .Z(n471) );
  CKBD0BWP12T30P140 U461 ( .I(n475), .Z(n469) );
  CKBD0BWP12T30P140 U462 ( .I(n475), .Z(n465) );
  CKBD0BWP12T30P140 U463 ( .I(n475), .Z(n467) );
  CKBD0BWP12T30P140 U464 ( .I(n475), .Z(n468) );
  CKBD0BWP12T30P140 U465 ( .I(n474), .Z(n470) );
  CKBD0BWP12T30P140 U466 ( .I(n475), .Z(n466) );
  IOA21D0BWP12T30P140 U467 ( .A1(n236), .A2(got_ack), .B(n240), .ZN(n418) );
  IOA21D0BWP12T30P140 U468 ( .A1(n238), .A2(wbm_sel_o[0]), .B(n237), .ZN(n279)
         );
  AO31D0BWP12T30P140 U469 ( .A1(n240), .A2(wbm_cyc_o), .A3(nrst_i), .B(n239), 
        .Z(n419) );
  IOA21D0BWP12T30P140 U470 ( .A1(dma_xfr), .A2(n241), .B(n244), .ZN(n404) );
  INVD0BWP12T30P140 U471 ( .I(n241), .ZN(n242) );
  AOI32D0BWP12T30P140 U472 ( .A1(n243), .A2(n242), .A3(nrst_i), .B1(
        lpc_tga_o[1]), .B2(n241), .ZN(n245) );
  ND2D0BWP12T30P140 U473 ( .A1(n245), .A2(n244), .ZN(n402) );
  AOI221D0BWP12T30P140 U474 ( .A1(lad_i[1]), .A2(n455), .B1(n454), .B2(n453), 
        .C(n246), .ZN(n456) );
  IAO21D0BWP12T30P140 U475 ( .A1(n457), .A2(lad_i[3]), .B(n456), .ZN(n462) );
  NR2D0BWP12T30P140 U476 ( .A1(n459), .A2(n458), .ZN(n460) );
  MUX2ND0BWP12T30P140 U477 ( .I0(n462), .I1(n461), .S(n460), .ZN(n401) );
endmodule


module wb_dreq_periph ( clk_i, nrst_i, dma_chan_i, dma_req_i, ldrq_o );
  input [2:0] dma_chan_i;
  input clk_i, nrst_i, dma_req_i;
  output ldrq_o;
  wire   nxt_ldrq, n11, n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [3:0] state;
  wire   [2:0] nxt_state;
  wire   [1:0] adr_cnt;

  DFSNQD1BWP12T30P140 ldrq_o_reg ( .D(nxt_ldrq), .CP(clk_i), .SDN(nrst_i), .Q(
        ldrq_o) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_0_ ( .D(n12), .CP(clk_i), .CDN(nrst_i), .Q(
        adr_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n13), .CP(clk_i), .CDN(nrst_i), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(nxt_state[1]), .CP(clk_i), .CDN(nrst_i), .Q(state[1]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(nxt_state[2]), .CP(clk_i), .CDN(nrst_i), .Q(state[2]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(nxt_state[0]), .CP(clk_i), .CDN(nrst_i), .Q(state[0]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n11), .CP(clk_i), .CDN(nrst_i), .Q(
        adr_cnt[1]) );
  TIELBWP12T30P140 U3 ( .ZN(n13) );
  INVD0BWP12T30P140 U4 ( .I(state[0]), .ZN(n4) );
  NR4D0BWP12T30P140 U5 ( .A1(state[3]), .A2(state[1]), .A3(state[2]), .A4(n4), 
        .ZN(n5) );
  INVD0BWP12T30P140 U6 ( .I(adr_cnt[0]), .ZN(n8) );
  ND2D0BWP12T30P140 U7 ( .A1(n5), .A2(n8), .ZN(n9) );
  NR2D0BWP12T30P140 U8 ( .A1(adr_cnt[1]), .A2(n9), .ZN(nxt_state[1]) );
  INVD0BWP12T30P140 U9 ( .I(adr_cnt[1]), .ZN(n7) );
  AOI32D0BWP12T30P140 U10 ( .A1(adr_cnt[0]), .A2(n7), .A3(dma_chan_i[1]), .B1(
        adr_cnt[1]), .B2(dma_chan_i[2]), .ZN(n3) );
  NR3D0BWP12T30P140 U11 ( .A1(state[3]), .A2(state[1]), .A3(state[2]), .ZN(n1)
         );
  OAI21D0BWP12T30P140 U12 ( .A1(state[0]), .A2(dma_req_i), .B(n1), .ZN(n6) );
  AOI21D0BWP12T30P140 U13 ( .A1(nxt_state[1]), .A2(dma_chan_i[0]), .B(n6), 
        .ZN(n2) );
  OAI21D0BWP12T30P140 U14 ( .A1(n4), .A2(n3), .B(n2), .ZN(nxt_ldrq) );
  OAI21D0BWP12T30P140 U15 ( .A1(n5), .A2(n8), .B(n9), .ZN(n12) );
  AOI31D0BWP12T30P140 U16 ( .A1(state[0]), .A2(n8), .A3(n7), .B(n6), .ZN(
        nxt_state[0]) );
  AO21D0BWP12T30P140 U17 ( .A1(adr_cnt[1]), .A2(n9), .B(nxt_state[1]), .Z(n11)
         );
  INR4D0BWP12T30P140 U18 ( .A1(state[1]), .B1(state[3]), .B2(state[2]), .B3(
        state[0]), .ZN(nxt_state[2]) );
endmodule


module wb_dreq_host ( clk_i, nrst_i, dma_chan_o, dma_req_o, ldrq_i );
  output [2:0] dma_chan_o;
  input clk_i, nrst_i, ldrq_i;
  output dma_req_o;
  wire   nxt_dma_req, n9, n10, n11, n12, n1, n2, n3, n4, n5, n6, n7, n8, n13,
         n14;
  wire   [2:0] state;
  wire   [2:0] nxt_state;
  wire   [1:0] adr_cnt;

  DFCNQD1BWP12T30P140 dma_req_o_reg ( .D(nxt_dma_req), .CP(clk_i), .CDN(nrst_i), .Q(dma_req_o) );
  DFCNQD1BWP12T30P140 dma_chan_o_reg_0_ ( .D(n12), .CP(clk_i), .CDN(nrst_i), 
        .Q(dma_chan_o[0]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(nxt_state[2]), .CP(clk_i), .CDN(nrst_i), .Q(state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(nxt_state[1]), .CP(clk_i), .CDN(nrst_i), .Q(state[1]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_0_ ( .D(n10), .CP(clk_i), .CDN(nrst_i), .Q(
        adr_cnt[0]) );
  DFCNQD1BWP12T30P140 dma_chan_o_reg_1_ ( .D(n11), .CP(clk_i), .CDN(nrst_i), 
        .Q(dma_chan_o[2]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n9), .CP(clk_i), .CDN(nrst_i), .Q(
        adr_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(nxt_state[0]), .CP(clk_i), .CDN(nrst_i), .Q(state[0]) );
  TIELBWP12T30P140 U3 ( .ZN(n11) );
  CKBD0BWP12T30P140 U4 ( .I(dma_chan_o[2]), .Z(dma_chan_o[1]) );
  NR3D0BWP12T30P140 U5 ( .A1(state[2]), .A2(dma_chan_o[2]), .A3(state[0]), 
        .ZN(n2) );
  INVD0BWP12T30P140 U6 ( .I(n2), .ZN(n14) );
  INVD0BWP12T30P140 U7 ( .I(state[1]), .ZN(n4) );
  NR2D0BWP12T30P140 U8 ( .A1(n14), .A2(n4), .ZN(nxt_state[2]) );
  OAI31D0BWP12T30P140 U9 ( .A1(dma_chan_o[2]), .A2(state[0]), .A3(state[1]), 
        .B(dma_req_o), .ZN(n1) );
  MOAI22D0BWP12T30P140 U10 ( .A1(n2), .A2(n1), .B1(nxt_state[2]), .B2(ldrq_i), 
        .ZN(nxt_dma_req) );
  NR2D0BWP12T30P140 U11 ( .A1(state[2]), .A2(dma_chan_o[2]), .ZN(n3) );
  ND3D0BWP12T30P140 U12 ( .A1(n4), .A2(n3), .A3(state[0]), .ZN(n5) );
  NR3D0BWP12T30P140 U13 ( .A1(adr_cnt[0]), .A2(adr_cnt[1]), .A3(n5), .ZN(
        nxt_state[1]) );
  CKMUX2D0BWP12T30P140 U14 ( .I0(dma_chan_o[0]), .I1(ldrq_i), .S(nxt_state[1]), 
        .Z(n12) );
  INVD0BWP12T30P140 U15 ( .I(n5), .ZN(n8) );
  INVD0BWP12T30P140 U16 ( .I(adr_cnt[0]), .ZN(n6) );
  ND2D0BWP12T30P140 U17 ( .A1(n6), .A2(n8), .ZN(n7) );
  OAI21D0BWP12T30P140 U18 ( .A1(n8), .A2(n6), .B(n7), .ZN(n10) );
  AO21D0BWP12T30P140 U19 ( .A1(adr_cnt[1]), .A2(n7), .B(nxt_state[1]), .Z(n9)
         );
  OAI21D0BWP12T30P140 U20 ( .A1(adr_cnt[0]), .A2(adr_cnt[1]), .B(n8), .ZN(n13)
         );
  OAI31D0BWP12T30P140 U21 ( .A1(state[1]), .A2(ldrq_i), .A3(n14), .B(n13), 
        .ZN(nxt_state[0]) );
endmodule


module wb_regfile ( clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, 
        wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_err_o, ws_i, datareg0, 
        datareg1 );
  input [3:0] wb_adr_i;
  output [31:0] wb_dat_o;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  input [7:0] ws_i;
  output [31:0] datareg0;
  output [31:0] datareg1;
  input clk_i, nrst_i, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, wb_err_o;
  wire   nxt_ack, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225;
  wire   [7:0] waitstate;

  DFCNQD1BWP12T30P140 wb_dat_o_reg_23_ ( .D(N115), .CP(clk_i), .CDN(n219), .Q(
        wb_dat_o[23]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_20_ ( .D(N112), .CP(clk_i), .CDN(n219), .Q(
        wb_dat_o[20]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_19_ ( .D(N111), .CP(clk_i), .CDN(n219), .Q(
        wb_dat_o[19]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_11_ ( .D(N103), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[11]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_8_ ( .D(N100), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[8]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_7_ ( .D(N99), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[7]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_10_ ( .D(N102), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[10]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_9_ ( .D(N101), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[9]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_5_ ( .D(N97), .CP(clk_i), .CDN(n220), .Q(
        wb_dat_o[5]) );
  DFCNQD1BWP12T30P140 wb_ack_o_reg ( .D(nxt_ack), .CP(n225), .CDN(nrst_i), .Q(
        wb_ack_o) );
  DFCNQD1BWP12T30P140 waitstate_reg_3_ ( .D(n194), .CP(n225), .CDN(n216), .Q(
        waitstate[3]) );
  DFCNQD1BWP12T30P140 waitstate_reg_5_ ( .D(n192), .CP(n225), .CDN(n217), .Q(
        waitstate[5]) );
  DFCNQD1BWP12T30P140 waitstate_reg_7_ ( .D(n190), .CP(n225), .CDN(n218), .Q(
        waitstate[7]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__30_ ( .D(n188), .CP(n224), .CDN(nrst_i), 
        .Q(datareg0[30]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__29_ ( .D(n187), .CP(n224), .CDN(n219), 
        .Q(datareg0[29]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__28_ ( .D(n186), .CP(n224), .CDN(n220), 
        .Q(datareg0[28]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__27_ ( .D(n185), .CP(n224), .CDN(nrst_i), 
        .Q(datareg0[27]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__26_ ( .D(n184), .CP(n224), .CDN(n216), 
        .Q(datareg0[26]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__25_ ( .D(n183), .CP(n224), .CDN(n217), 
        .Q(datareg0[25]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__24_ ( .D(n182), .CP(n224), .CDN(n218), 
        .Q(datareg0[24]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__23_ ( .D(n181), .CP(n224), .CDN(n219), 
        .Q(datareg0[23]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__22_ ( .D(n180), .CP(n224), .CDN(n220), 
        .Q(datareg0[22]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__21_ ( .D(n179), .CP(n224), .CDN(n216), 
        .Q(datareg0[21]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__20_ ( .D(n178), .CP(n224), .CDN(n217), 
        .Q(datareg0[20]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__19_ ( .D(n177), .CP(n223), .CDN(n218), 
        .Q(datareg0[19]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__18_ ( .D(n176), .CP(n223), .CDN(nrst_i), 
        .Q(datareg0[18]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__17_ ( .D(n175), .CP(n223), .CDN(n219), 
        .Q(datareg0[17]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__16_ ( .D(n174), .CP(n223), .CDN(nrst_i), 
        .Q(datareg0[16]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__15_ ( .D(n173), .CP(n223), .CDN(n220), 
        .Q(datareg0[15]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__14_ ( .D(n172), .CP(n223), .CDN(n216), 
        .Q(datareg0[14]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__13_ ( .D(n171), .CP(n223), .CDN(n216), 
        .Q(datareg0[13]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__12_ ( .D(n170), .CP(n223), .CDN(n217), 
        .Q(datareg0[12]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__11_ ( .D(n169), .CP(n223), .CDN(n218), 
        .Q(datareg0[11]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__10_ ( .D(n168), .CP(n223), .CDN(n219), 
        .Q(datareg0[10]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__9_ ( .D(n167), .CP(n223), .CDN(n220), .Q(
        datareg0[9]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__8_ ( .D(n166), .CP(n223), .CDN(n217), .Q(
        datareg0[8]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__27_ ( .D(n153), .CP(n221), .CDN(n216), 
        .Q(datareg1[27]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__26_ ( .D(n152), .CP(n221), .CDN(n216), 
        .Q(datareg1[26]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__25_ ( .D(n151), .CP(n221), .CDN(n216), 
        .Q(datareg1[25]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__24_ ( .D(n150), .CP(n221), .CDN(n216), 
        .Q(datareg1[24]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__23_ ( .D(n149), .CP(n221), .CDN(n216), 
        .Q(datareg1[23]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__22_ ( .D(n148), .CP(n221), .CDN(n216), 
        .Q(datareg1[22]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__21_ ( .D(n147), .CP(n221), .CDN(n216), 
        .Q(datareg1[21]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__20_ ( .D(n146), .CP(n221), .CDN(n217), 
        .Q(datareg1[20]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__19_ ( .D(n145), .CP(n221), .CDN(n217), 
        .Q(datareg1[19]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__18_ ( .D(n144), .CP(n221), .CDN(n217), 
        .Q(datareg1[18]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__17_ ( .D(n143), .CP(n221), .CDN(n217), 
        .Q(datareg1[17]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__16_ ( .D(n142), .CP(n221), .CDN(n217), 
        .Q(datareg1[16]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__15_ ( .D(n141), .CP(n223), .CDN(n217), 
        .Q(datareg1[15]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__13_ ( .D(n139), .CP(n221), .CDN(n217), 
        .Q(datareg1[13]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__12_ ( .D(n138), .CP(n225), .CDN(n217), 
        .Q(datareg1[12]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__11_ ( .D(n137), .CP(n224), .CDN(n217), 
        .Q(datareg1[11]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__10_ ( .D(n136), .CP(n223), .CDN(n217), 
        .Q(datareg1[10]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__8_ ( .D(n134), .CP(n221), .CDN(n217), .Q(
        datareg1[8]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__7_ ( .D(n133), .CP(n225), .CDN(n218), .Q(
        datareg1[7]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__6_ ( .D(n132), .CP(n224), .CDN(n218), .Q(
        datareg1[6]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__5_ ( .D(n131), .CP(n223), .CDN(n218), .Q(
        datareg1[5]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__3_ ( .D(n129), .CP(n221), .CDN(n218), .Q(
        datareg1[3]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__2_ ( .D(n128), .CP(n225), .CDN(n218), .Q(
        datareg1[2]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__1_ ( .D(n127), .CP(n225), .CDN(n218), .Q(
        datareg1[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__0_ ( .D(n126), .CP(n224), .CDN(n218), .Q(
        datareg1[0]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_31_ ( .D(N123), .CP(n223), .CDN(n218), .Q(
        wb_dat_o[31]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_28_ ( .D(N120), .CP(n224), .CDN(n218), .Q(
        wb_dat_o[28]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_27_ ( .D(N119), .CP(n225), .CDN(n218), .Q(
        wb_dat_o[27]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_16_ ( .D(N108), .CP(n221), .CDN(n219), .Q(
        wb_dat_o[16]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_12_ ( .D(N104), .CP(n223), .CDN(n220), .Q(
        wb_dat_o[12]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_4_ ( .D(N96), .CP(n225), .CDN(n220), .Q(
        wb_dat_o[4]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_3_ ( .D(N95), .CP(n225), .CDN(n220), .Q(
        wb_dat_o[3]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(N92), .CP(n223), .CDN(n218), .Q(
        wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_29_ ( .D(N121), .CP(n221), .CDN(n218), .Q(
        wb_dat_o[29]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_26_ ( .D(N118), .CP(n224), .CDN(n219), .Q(
        wb_dat_o[26]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_25_ ( .D(N117), .CP(n223), .CDN(n219), .Q(
        wb_dat_o[25]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_21_ ( .D(N113), .CP(n221), .CDN(n219), .Q(
        wb_dat_o[21]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_17_ ( .D(N109), .CP(n221), .CDN(n219), .Q(
        wb_dat_o[17]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_14_ ( .D(N106), .CP(n225), .CDN(n219), .Q(
        wb_dat_o[14]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_13_ ( .D(N105), .CP(n224), .CDN(n220), .Q(
        wb_dat_o[13]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_6_ ( .D(N98), .CP(n225), .CDN(n220), .Q(
        wb_dat_o[6]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_2_ ( .D(N94), .CP(n225), .CDN(n220), .Q(
        wb_dat_o[2]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(N93), .CP(n224), .CDN(n220), .Q(
        wb_dat_o[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__7_ ( .D(n165), .CP(n222), .CDN(n216), .Q(
        datareg0[7]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__6_ ( .D(n164), .CP(n222), .CDN(n217), .Q(
        datareg0[6]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__5_ ( .D(n163), .CP(n222), .CDN(n218), .Q(
        datareg0[5]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__4_ ( .D(n162), .CP(n222), .CDN(n219), .Q(
        datareg0[4]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__3_ ( .D(n161), .CP(n222), .CDN(n220), .Q(
        datareg0[3]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__2_ ( .D(n160), .CP(n222), .CDN(n219), .Q(
        datareg0[2]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__1_ ( .D(n159), .CP(n222), .CDN(n216), .Q(
        datareg0[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__0_ ( .D(n158), .CP(n222), .CDN(n216), .Q(
        datareg0[0]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__31_ ( .D(n157), .CP(n222), .CDN(n216), 
        .Q(datareg1[31]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__30_ ( .D(n156), .CP(n222), .CDN(n216), 
        .Q(datareg1[30]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__29_ ( .D(n155), .CP(n222), .CDN(n216), 
        .Q(datareg1[29]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__28_ ( .D(n154), .CP(n222), .CDN(n216), 
        .Q(datareg1[28]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__14_ ( .D(n140), .CP(n222), .CDN(n217), 
        .Q(datareg1[14]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__9_ ( .D(n135), .CP(n222), .CDN(n217), .Q(
        datareg1[9]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__4_ ( .D(n130), .CP(n222), .CDN(n218), .Q(
        datareg1[4]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_24_ ( .D(N116), .CP(n222), .CDN(n219), .Q(
        wb_dat_o[24]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_15_ ( .D(N107), .CP(n222), .CDN(n219), .Q(
        wb_dat_o[15]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_30_ ( .D(N122), .CP(n222), .CDN(n218), .Q(
        wb_dat_o[30]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_22_ ( .D(N114), .CP(n222), .CDN(n219), .Q(
        wb_dat_o[22]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_18_ ( .D(N110), .CP(n222), .CDN(n219), .Q(
        wb_dat_o[18]) );
  DFCNQD1BWP12T30P140 waitstate_reg_4_ ( .D(n193), .CP(n225), .CDN(nrst_i), 
        .Q(waitstate[4]) );
  DFCNQD1BWP12T30P140 waitstate_reg_6_ ( .D(n191), .CP(n225), .CDN(nrst_i), 
        .Q(waitstate[6]) );
  DFCNQD1BWP12T30P140 waitstate_reg_2_ ( .D(n195), .CP(n225), .CDN(nrst_i), 
        .Q(waitstate[2]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__31_ ( .D(n189), .CP(n224), .CDN(n220), 
        .Q(datareg0[31]) );
  DFCNQD1BWP12T30P140 waitstate_reg_1_ ( .D(n196), .CP(n225), .CDN(nrst_i), 
        .Q(waitstate[1]) );
  DFCNQD1BWP12T30P140 waitstate_reg_0_ ( .D(n197), .CP(n225), .CDN(nrst_i), 
        .Q(waitstate[0]) );
  ND2D0BWP12T30P140 U3 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(n73) );
  INVD0BWP12T30P140 U4 ( .I(waitstate[7]), .ZN(n58) );
  INVD0BWP12T30P140 U5 ( .I(waitstate[5]), .ZN(n74) );
  INVD0BWP12T30P140 U6 ( .I(waitstate[3]), .ZN(n86) );
  NR3D0BWP12T30P140 U7 ( .A1(waitstate[2]), .A2(waitstate[1]), .A3(
        waitstate[0]), .ZN(n211) );
  ND2D0BWP12T30P140 U8 ( .A1(n86), .A2(n211), .ZN(n123) );
  NR2D0BWP12T30P140 U9 ( .A1(waitstate[4]), .A2(n123), .ZN(n122) );
  ND2D0BWP12T30P140 U10 ( .A1(n74), .A2(n122), .ZN(n82) );
  NR2D0BWP12T30P140 U11 ( .A1(waitstate[6]), .A2(n82), .ZN(n81) );
  ND2D0BWP12T30P140 U12 ( .A1(n58), .A2(n81), .ZN(n72) );
  NR2D0BWP12T30P140 U13 ( .A1(n73), .A2(n72), .ZN(nxt_ack) );
  INVD0BWP12T30P140 U14 ( .I(datareg0[23]), .ZN(n12) );
  INVD0BWP12T30P140 U15 ( .I(wb_adr_i[0]), .ZN(n4) );
  INVD0BWP12T30P140 U16 ( .I(wb_we_i), .ZN(n1) );
  INR3D1BWP12T30P140 U17 ( .A1(nxt_ack), .B1(wb_adr_i[2]), .B2(wb_adr_i[3]), 
        .ZN(n2) );
  ND3D0BWP12T30P140 U18 ( .A1(n4), .A2(n1), .A3(n2), .ZN(n200) );
  CKBD0BWP12T30P140 U19 ( .I(n200), .Z(n110) );
  INVD0BWP12T30P140 U20 ( .I(datareg1[23]), .ZN(n6) );
  ND3D0BWP12T30P140 U21 ( .A1(n1), .A2(wb_adr_i[0]), .A3(n2), .ZN(n119) );
  OAI22D0BWP12T30P140 U22 ( .A1(n12), .A2(n110), .B1(n6), .B2(n119), .ZN(N115)
         );
  INVD0BWP12T30P140 U23 ( .I(datareg0[20]), .ZN(n7) );
  INVD0BWP12T30P140 U24 ( .I(datareg1[20]), .ZN(n15) );
  CKBD0BWP12T30P140 U25 ( .I(n119), .Z(n198) );
  OAI22D0BWP12T30P140 U26 ( .A1(n7), .A2(n200), .B1(n15), .B2(n198), .ZN(N112)
         );
  INVD0BWP12T30P140 U27 ( .I(datareg0[19]), .ZN(n52) );
  INVD0BWP12T30P140 U28 ( .I(datareg1[19]), .ZN(n20) );
  OAI22D0BWP12T30P140 U29 ( .A1(n52), .A2(n110), .B1(n20), .B2(n119), .ZN(N111) );
  INVD0BWP12T30P140 U30 ( .I(datareg0[11]), .ZN(n204) );
  INVD0BWP12T30P140 U31 ( .I(datareg1[11]), .ZN(n207) );
  OAI22D0BWP12T30P140 U32 ( .A1(n204), .A2(n200), .B1(n207), .B2(n119), .ZN(
        N103) );
  INVD0BWP12T30P140 U33 ( .I(datareg0[8]), .ZN(n80) );
  INVD0BWP12T30P140 U34 ( .I(datareg1[8]), .ZN(n97) );
  OAI22D0BWP12T30P140 U35 ( .A1(n80), .A2(n110), .B1(n97), .B2(n119), .ZN(N100) );
  INVD0BWP12T30P140 U36 ( .I(datareg0[7]), .ZN(n23) );
  INVD0BWP12T30P140 U37 ( .I(datareg1[7]), .ZN(n106) );
  OAI22D0BWP12T30P140 U38 ( .A1(n23), .A2(n200), .B1(n106), .B2(n119), .ZN(N99) );
  INVD0BWP12T30P140 U39 ( .I(datareg0[3]), .ZN(n3) );
  INVD0BWP12T30P140 U40 ( .I(datareg1[3]), .ZN(n104) );
  OAI22D0BWP12T30P140 U41 ( .A1(n3), .A2(n200), .B1(n104), .B2(n198), .ZN(N95)
         );
  IND3D1BWP12T30P140 U42 ( .A1(wb_adr_i[1]), .B1(n2), .B2(wb_we_i), .ZN(n5) );
  NR2D0BWP12T30P140 U43 ( .A1(wb_adr_i[0]), .A2(n5), .ZN(n28) );
  ND2D0BWP12T30P140 U44 ( .A1(n28), .A2(wb_sel_i[0]), .ZN(n22) );
  INVD0BWP12T30P140 U45 ( .I(n22), .ZN(n24) );
  INVD0BWP12T30P140 U46 ( .I(wb_dat_i[3]), .ZN(n105) );
  AOI22D0BWP12T30P140 U47 ( .A1(n24), .A2(n105), .B1(n3), .B2(n22), .ZN(n161)
         );
  NR2D0BWP12T30P140 U48 ( .A1(n5), .A2(n4), .ZN(n39) );
  ND2D0BWP12T30P140 U49 ( .A1(wb_sel_i[2]), .A2(n39), .ZN(n47) );
  INVD0BWP12T30P140 U50 ( .I(n47), .ZN(n50) );
  INVD0BWP12T30P140 U51 ( .I(wb_dat_i[23]), .ZN(n13) );
  AOI22D0BWP12T30P140 U52 ( .A1(n50), .A2(n13), .B1(n6), .B2(n47), .ZN(n149)
         );
  INVD0BWP12T30P140 U53 ( .I(wb_dat_i[4]), .ZN(n41) );
  INVD0BWP12T30P140 U54 ( .I(datareg0[4]), .ZN(n8) );
  AOI22D0BWP12T30P140 U55 ( .A1(n24), .A2(n41), .B1(n8), .B2(n22), .ZN(n162)
         );
  ND2D0BWP12T30P140 U56 ( .A1(n28), .A2(wb_sel_i[2]), .ZN(n51) );
  INVD0BWP12T30P140 U57 ( .I(n51), .ZN(n54) );
  INVD0BWP12T30P140 U58 ( .I(wb_dat_i[20]), .ZN(n16) );
  AOI22D0BWP12T30P140 U59 ( .A1(n54), .A2(n16), .B1(n7), .B2(n51), .ZN(n178)
         );
  ND2D0BWP12T30P140 U60 ( .A1(wb_sel_i[3]), .A2(n39), .ZN(n59) );
  INVD0BWP12T30P140 U61 ( .I(n59), .ZN(n62) );
  INVD0BWP12T30P140 U62 ( .I(wb_dat_i[24]), .ZN(n14) );
  INVD0BWP12T30P140 U63 ( .I(datareg1[24]), .ZN(n55) );
  AOI22D0BWP12T30P140 U64 ( .A1(n62), .A2(n14), .B1(n55), .B2(n59), .ZN(n150)
         );
  INVD0BWP12T30P140 U65 ( .I(wb_dat_i[2]), .ZN(n65) );
  INVD0BWP12T30P140 U66 ( .I(datareg0[2]), .ZN(n69) );
  AOI22D0BWP12T30P140 U67 ( .A1(n24), .A2(n65), .B1(n69), .B2(n22), .ZN(n160)
         );
  INVD0BWP12T30P140 U68 ( .I(datareg1[4]), .ZN(n40) );
  OAI22D0BWP12T30P140 U69 ( .A1(n8), .A2(n110), .B1(n40), .B2(n119), .ZN(N96)
         );
  INVD0BWP12T30P140 U70 ( .I(wb_dat_i[18]), .ZN(n26) );
  INVD0BWP12T30P140 U71 ( .I(datareg0[18]), .ZN(n90) );
  AOI22D0BWP12T30P140 U72 ( .A1(n54), .A2(n26), .B1(n90), .B2(n51), .ZN(n176)
         );
  INVD0BWP12T30P140 U73 ( .I(wb_dat_i[21]), .ZN(n11) );
  INVD0BWP12T30P140 U74 ( .I(datareg0[21]), .ZN(n64) );
  AOI22D0BWP12T30P140 U75 ( .A1(n54), .A2(n11), .B1(n64), .B2(n51), .ZN(n179)
         );
  INVD0BWP12T30P140 U76 ( .I(wb_dat_i[22]), .ZN(n9) );
  INVD0BWP12T30P140 U77 ( .I(datareg1[22]), .ZN(n95) );
  AOI22D0BWP12T30P140 U78 ( .A1(n50), .A2(n9), .B1(n95), .B2(n47), .ZN(n148)
         );
  INVD0BWP12T30P140 U79 ( .I(wb_dat_i[1]), .ZN(n67) );
  INVD0BWP12T30P140 U80 ( .I(datareg0[1]), .ZN(n38) );
  AOI22D0BWP12T30P140 U81 ( .A1(n24), .A2(n67), .B1(n38), .B2(n22), .ZN(n159)
         );
  INVD0BWP12T30P140 U82 ( .I(datareg0[0]), .ZN(n10) );
  INVD0BWP12T30P140 U83 ( .I(datareg1[0]), .ZN(n42) );
  OAI22D0BWP12T30P140 U84 ( .A1(n10), .A2(n110), .B1(n42), .B2(n119), .ZN(N92)
         );
  INVD0BWP12T30P140 U85 ( .I(datareg0[22]), .ZN(n96) );
  AOI22D0BWP12T30P140 U86 ( .A1(n54), .A2(n9), .B1(n96), .B2(n51), .ZN(n180)
         );
  INVD0BWP12T30P140 U87 ( .I(datareg0[12]), .ZN(n108) );
  INVD0BWP12T30P140 U88 ( .I(datareg1[12]), .ZN(n112) );
  OAI22D0BWP12T30P140 U89 ( .A1(n108), .A2(n200), .B1(n112), .B2(n198), .ZN(
        N104) );
  INVD0BWP12T30P140 U90 ( .I(wb_dat_i[5]), .ZN(n70) );
  INVD0BWP12T30P140 U91 ( .I(datareg0[5]), .ZN(n201) );
  AOI22D0BWP12T30P140 U92 ( .A1(n24), .A2(n70), .B1(n201), .B2(n22), .ZN(n163)
         );
  INVD0BWP12T30P140 U93 ( .I(wb_dat_i[0]), .ZN(n43) );
  AOI22D0BWP12T30P140 U94 ( .A1(n24), .A2(n43), .B1(n10), .B2(n22), .ZN(n158)
         );
  INVD0BWP12T30P140 U95 ( .I(datareg1[21]), .ZN(n63) );
  AOI22D0BWP12T30P140 U96 ( .A1(n50), .A2(n11), .B1(n63), .B2(n47), .ZN(n147)
         );
  AOI22D0BWP12T30P140 U97 ( .A1(n54), .A2(n13), .B1(n12), .B2(n51), .ZN(n181)
         );
  INVD0BWP12T30P140 U98 ( .I(wb_dat_i[17]), .ZN(n35) );
  INVD0BWP12T30P140 U99 ( .I(datareg0[17]), .ZN(n111) );
  AOI22D0BWP12T30P140 U100 ( .A1(n54), .A2(n35), .B1(n111), .B2(n51), .ZN(n175) );
  INVD0BWP12T30P140 U101 ( .I(datareg1[31]), .ZN(n31) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n31), .A2(n59), .B1(n59), .B2(wb_dat_i[31]), 
        .ZN(n157) );
  INVD0BWP12T30P140 U103 ( .I(datareg0[16]), .ZN(n18) );
  INVD0BWP12T30P140 U104 ( .I(datareg1[16]), .ZN(n48) );
  OAI22D0BWP12T30P140 U105 ( .A1(n18), .A2(n200), .B1(n48), .B2(n198), .ZN(
        N108) );
  INVD0BWP12T30P140 U106 ( .I(wb_dat_i[25]), .ZN(n17) );
  INVD0BWP12T30P140 U107 ( .I(datareg1[25]), .ZN(n78) );
  AOI22D0BWP12T30P140 U108 ( .A1(n62), .A2(n17), .B1(n78), .B2(n59), .ZN(n151)
         );
  ND2D0BWP12T30P140 U109 ( .A1(wb_sel_i[3]), .A2(n28), .ZN(n202) );
  INVD0BWP12T30P140 U110 ( .I(n202), .ZN(n46) );
  INVD0BWP12T30P140 U111 ( .I(datareg0[24]), .ZN(n56) );
  AOI22D0BWP12T30P140 U112 ( .A1(n46), .A2(n14), .B1(n56), .B2(n202), .ZN(n182) );
  AOI22D0BWP12T30P140 U113 ( .A1(n50), .A2(n16), .B1(n15), .B2(n47), .ZN(n146)
         );
  INVD0BWP12T30P140 U114 ( .I(wb_dat_i[30]), .ZN(n45) );
  INVD0BWP12T30P140 U115 ( .I(datareg1[30]), .ZN(n84) );
  AOI22D0BWP12T30P140 U116 ( .A1(n62), .A2(n45), .B1(n84), .B2(n59), .ZN(n156)
         );
  INVD0BWP12T30P140 U117 ( .I(wb_dat_i[6]), .ZN(n117) );
  INVD0BWP12T30P140 U118 ( .I(datareg0[6]), .ZN(n99) );
  AOI22D0BWP12T30P140 U119 ( .A1(n24), .A2(n117), .B1(n99), .B2(n22), .ZN(n164) );
  INVD0BWP12T30P140 U120 ( .I(datareg0[29]), .ZN(n36) );
  INVD0BWP12T30P140 U121 ( .I(datareg1[29]), .ZN(n19) );
  OAI22D0BWP12T30P140 U122 ( .A1(n36), .A2(n110), .B1(n19), .B2(n198), .ZN(
        N121) );
  INVD0BWP12T30P140 U123 ( .I(datareg0[25]), .ZN(n79) );
  AOI22D0BWP12T30P140 U124 ( .A1(n46), .A2(n17), .B1(n79), .B2(n202), .ZN(n183) );
  INVD0BWP12T30P140 U125 ( .I(datareg0[27]), .ZN(n25) );
  INVD0BWP12T30P140 U126 ( .I(datareg1[27]), .ZN(n60) );
  OAI22D0BWP12T30P140 U127 ( .A1(n25), .A2(n110), .B1(n60), .B2(n198), .ZN(
        N119) );
  INVD0BWP12T30P140 U128 ( .I(wb_dat_i[16]), .ZN(n49) );
  AOI22D0BWP12T30P140 U129 ( .A1(n54), .A2(n49), .B1(n18), .B2(n51), .ZN(n174)
         );
  INVD0BWP12T30P140 U130 ( .I(wb_dat_i[29]), .ZN(n37) );
  AOI22D0BWP12T30P140 U131 ( .A1(n62), .A2(n37), .B1(n19), .B2(n59), .ZN(n155)
         );
  INVD0BWP12T30P140 U132 ( .I(wb_dat_i[19]), .ZN(n53) );
  AOI22D0BWP12T30P140 U133 ( .A1(n50), .A2(n53), .B1(n20), .B2(n47), .ZN(n145)
         );
  INVD0BWP12T30P140 U134 ( .I(wb_dat_i[26]), .ZN(n27) );
  INVD0BWP12T30P140 U135 ( .I(datareg0[26]), .ZN(n34) );
  AOI22D0BWP12T30P140 U136 ( .A1(n46), .A2(n27), .B1(n34), .B2(n202), .ZN(n184) );
  INVD0BWP12T30P140 U137 ( .I(wb_dat_i[28]), .ZN(n30) );
  INVD0BWP12T30P140 U138 ( .I(datareg1[28]), .ZN(n21) );
  AOI22D0BWP12T30P140 U139 ( .A1(n62), .A2(n30), .B1(n21), .B2(n59), .ZN(n154)
         );
  INVD0BWP12T30P140 U140 ( .I(datareg0[28]), .ZN(n29) );
  OAI22D0BWP12T30P140 U141 ( .A1(n29), .A2(n110), .B1(n21), .B2(n198), .ZN(
        N120) );
  INVD0BWP12T30P140 U142 ( .I(wb_dat_i[7]), .ZN(n107) );
  AOI22D0BWP12T30P140 U143 ( .A1(n24), .A2(n107), .B1(n23), .B2(n22), .ZN(n165) );
  INVD0BWP12T30P140 U144 ( .I(wb_dat_i[27]), .ZN(n61) );
  AOI22D0BWP12T30P140 U145 ( .A1(n46), .A2(n61), .B1(n25), .B2(n202), .ZN(n185) );
  INVD0BWP12T30P140 U146 ( .I(datareg1[18]), .ZN(n89) );
  AOI22D0BWP12T30P140 U147 ( .A1(n50), .A2(n26), .B1(n89), .B2(n47), .ZN(n144)
         );
  INVD0BWP12T30P140 U148 ( .I(datareg1[26]), .ZN(n33) );
  AOI22D0BWP12T30P140 U149 ( .A1(n62), .A2(n27), .B1(n33), .B2(n59), .ZN(n152)
         );
  ND2D0BWP12T30P140 U150 ( .A1(wb_sel_i[1]), .A2(n39), .ZN(n206) );
  INVD0BWP12T30P140 U151 ( .I(n206), .ZN(n209) );
  INVD0BWP12T30P140 U152 ( .I(wb_dat_i[14]), .ZN(n44) );
  INVD0BWP12T30P140 U153 ( .I(datareg1[14]), .ZN(n100) );
  AOI22D0BWP12T30P140 U154 ( .A1(n209), .A2(n44), .B1(n100), .B2(n206), .ZN(
        n140) );
  ND2D0BWP12T30P140 U155 ( .A1(n28), .A2(wb_sel_i[1]), .ZN(n203) );
  INVD0BWP12T30P140 U156 ( .I(n203), .ZN(n205) );
  INVD0BWP12T30P140 U157 ( .I(wb_dat_i[15]), .ZN(n77) );
  INVD0BWP12T30P140 U158 ( .I(datareg0[15]), .ZN(n71) );
  AOI22D0BWP12T30P140 U159 ( .A1(n205), .A2(n77), .B1(n71), .B2(n203), .ZN(
        n173) );
  AOI22D0BWP12T30P140 U160 ( .A1(n46), .A2(n30), .B1(n29), .B2(n202), .ZN(n186) );
  INVD0BWP12T30P140 U161 ( .I(datareg0[31]), .ZN(n32) );
  OAI22D0BWP12T30P140 U162 ( .A1(n32), .A2(n110), .B1(n31), .B2(n198), .ZN(
        N123) );
  OAI22D0BWP12T30P140 U163 ( .A1(n34), .A2(n110), .B1(n33), .B2(n198), .ZN(
        N118) );
  INVD0BWP12T30P140 U164 ( .I(wb_dat_i[9]), .ZN(n91) );
  INVD0BWP12T30P140 U165 ( .I(datareg1[9]), .ZN(n93) );
  AOI22D0BWP12T30P140 U166 ( .A1(n209), .A2(n91), .B1(n93), .B2(n206), .ZN(
        n135) );
  INVD0BWP12T30P140 U167 ( .I(datareg1[17]), .ZN(n109) );
  AOI22D0BWP12T30P140 U168 ( .A1(n50), .A2(n35), .B1(n109), .B2(n47), .ZN(n143) );
  AOI22D0BWP12T30P140 U169 ( .A1(n46), .A2(n37), .B1(n36), .B2(n202), .ZN(n187) );
  INVD0BWP12T30P140 U170 ( .I(datareg1[1]), .ZN(n66) );
  OAI22D0BWP12T30P140 U171 ( .A1(n38), .A2(n200), .B1(n66), .B2(n198), .ZN(N93) );
  ND2D0BWP12T30P140 U172 ( .A1(wb_sel_i[0]), .A2(n39), .ZN(n115) );
  INVD0BWP12T30P140 U173 ( .I(n115), .ZN(n118) );
  AOI22D0BWP12T30P140 U174 ( .A1(n118), .A2(n41), .B1(n40), .B2(n115), .ZN(
        n130) );
  AOI22D0BWP12T30P140 U175 ( .A1(n118), .A2(n43), .B1(n42), .B2(n115), .ZN(
        n126) );
  INVD0BWP12T30P140 U176 ( .I(datareg0[14]), .ZN(n101) );
  AOI22D0BWP12T30P140 U177 ( .A1(n205), .A2(n44), .B1(n101), .B2(n203), .ZN(
        n172) );
  INVD0BWP12T30P140 U178 ( .I(datareg0[30]), .ZN(n85) );
  AOI22D0BWP12T30P140 U179 ( .A1(n46), .A2(n45), .B1(n85), .B2(n202), .ZN(n188) );
  AOI22D0BWP12T30P140 U180 ( .A1(n50), .A2(n49), .B1(n48), .B2(n47), .ZN(n142)
         );
  AOI22D0BWP12T30P140 U181 ( .A1(n54), .A2(n53), .B1(n52), .B2(n51), .ZN(n177)
         );
  OAI22D0BWP12T30P140 U182 ( .A1(n56), .A2(n200), .B1(n55), .B2(n198), .ZN(
        N116) );
  INVD0BWP12T30P140 U183 ( .I(n73), .ZN(n213) );
  INVD0BWP12T30P140 U184 ( .I(ws_i[7]), .ZN(n57) );
  OAI32D0BWP12T30P140 U185 ( .A1(n58), .A2(n213), .A3(n81), .B1(n73), .B2(n57), 
        .ZN(n190) );
  AOI22D0BWP12T30P140 U186 ( .A1(n62), .A2(n61), .B1(n60), .B2(n59), .ZN(n153)
         );
  OAI22D0BWP12T30P140 U187 ( .A1(n64), .A2(n110), .B1(n63), .B2(n119), .ZN(
        N113) );
  INVD0BWP12T30P140 U188 ( .I(datareg1[2]), .ZN(n68) );
  AOI22D0BWP12T30P140 U189 ( .A1(n118), .A2(n65), .B1(n68), .B2(n115), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U190 ( .A1(n118), .A2(n67), .B1(n66), .B2(n115), .ZN(
        n127) );
  OAI22D0BWP12T30P140 U191 ( .A1(n69), .A2(n110), .B1(n68), .B2(n119), .ZN(N94) );
  INVD0BWP12T30P140 U192 ( .I(datareg1[5]), .ZN(n199) );
  AOI22D0BWP12T30P140 U193 ( .A1(n118), .A2(n70), .B1(n199), .B2(n115), .ZN(
        n131) );
  INVD0BWP12T30P140 U194 ( .I(datareg1[15]), .ZN(n76) );
  OAI22D0BWP12T30P140 U195 ( .A1(n71), .A2(n110), .B1(n76), .B2(n119), .ZN(
        N107) );
  ND2D0BWP12T30P140 U196 ( .A1(n73), .A2(n72), .ZN(n214) );
  INVD0BWP12T30P140 U197 ( .I(n214), .ZN(n88) );
  OAI21D0BWP12T30P140 U198 ( .A1(n122), .A2(n74), .B(n82), .ZN(n75) );
  AO22D0BWP12T30P140 U199 ( .A1(n213), .A2(ws_i[5]), .B1(n88), .B2(n75), .Z(
        n192) );
  AOI22D0BWP12T30P140 U200 ( .A1(n209), .A2(n77), .B1(n76), .B2(n206), .ZN(
        n141) );
  OAI22D0BWP12T30P140 U201 ( .A1(n79), .A2(n200), .B1(n78), .B2(n198), .ZN(
        N117) );
  INVD0BWP12T30P140 U202 ( .I(wb_dat_i[13]), .ZN(n92) );
  INVD0BWP12T30P140 U203 ( .I(datareg0[13]), .ZN(n103) );
  AOI22D0BWP12T30P140 U204 ( .A1(n205), .A2(n92), .B1(n103), .B2(n203), .ZN(
        n171) );
  INVD0BWP12T30P140 U205 ( .I(wb_dat_i[8]), .ZN(n98) );
  AOI22D0BWP12T30P140 U206 ( .A1(n205), .A2(n98), .B1(n80), .B2(n203), .ZN(
        n166) );
  AOI21D0BWP12T30P140 U207 ( .A1(waitstate[6]), .A2(n82), .B(n81), .ZN(n83) );
  MOAI22D0BWP12T30P140 U208 ( .A1(n83), .A2(n214), .B1(n213), .B2(ws_i[6]), 
        .ZN(n191) );
  OAI22D0BWP12T30P140 U209 ( .A1(n85), .A2(n110), .B1(n84), .B2(n198), .ZN(
        N122) );
  OAI21D0BWP12T30P140 U210 ( .A1(n211), .A2(n86), .B(n123), .ZN(n87) );
  AO22D0BWP12T30P140 U211 ( .A1(n213), .A2(ws_i[3]), .B1(n88), .B2(n87), .Z(
        n194) );
  OAI22D0BWP12T30P140 U212 ( .A1(n90), .A2(n200), .B1(n89), .B2(n198), .ZN(
        N110) );
  INVD0BWP12T30P140 U213 ( .I(datareg0[9]), .ZN(n94) );
  AOI22D0BWP12T30P140 U214 ( .A1(n205), .A2(n91), .B1(n94), .B2(n203), .ZN(
        n167) );
  INVD0BWP12T30P140 U215 ( .I(datareg1[13]), .ZN(n102) );
  AOI22D0BWP12T30P140 U216 ( .A1(n209), .A2(n92), .B1(n102), .B2(n206), .ZN(
        n139) );
  OAI22D0BWP12T30P140 U217 ( .A1(n94), .A2(n200), .B1(n93), .B2(n119), .ZN(
        N101) );
  OAI22D0BWP12T30P140 U218 ( .A1(n96), .A2(n200), .B1(n95), .B2(n198), .ZN(
        N114) );
  AOI22D0BWP12T30P140 U219 ( .A1(n209), .A2(n98), .B1(n97), .B2(n206), .ZN(
        n134) );
  INVD0BWP12T30P140 U220 ( .I(wb_dat_i[10]), .ZN(n114) );
  INVD0BWP12T30P140 U221 ( .I(datareg1[10]), .ZN(n120) );
  AOI22D0BWP12T30P140 U222 ( .A1(n209), .A2(n114), .B1(n120), .B2(n206), .ZN(
        n136) );
  INVD0BWP12T30P140 U223 ( .I(datareg1[6]), .ZN(n116) );
  OAI22D0BWP12T30P140 U224 ( .A1(n99), .A2(n110), .B1(n116), .B2(n119), .ZN(
        N98) );
  OAI22D0BWP12T30P140 U225 ( .A1(n101), .A2(n200), .B1(n100), .B2(n198), .ZN(
        N106) );
  OAI22D0BWP12T30P140 U226 ( .A1(n103), .A2(n110), .B1(n102), .B2(n119), .ZN(
        N105) );
  AOI22D0BWP12T30P140 U227 ( .A1(n118), .A2(n105), .B1(n104), .B2(n115), .ZN(
        n129) );
  AOI22D0BWP12T30P140 U228 ( .A1(n118), .A2(n107), .B1(n106), .B2(n115), .ZN(
        n133) );
  INVD0BWP12T30P140 U229 ( .I(wb_dat_i[12]), .ZN(n113) );
  AOI22D0BWP12T30P140 U230 ( .A1(n205), .A2(n113), .B1(n108), .B2(n203), .ZN(
        n170) );
  OAI22D0BWP12T30P140 U231 ( .A1(n111), .A2(n110), .B1(n109), .B2(n119), .ZN(
        N109) );
  AOI22D0BWP12T30P140 U232 ( .A1(n209), .A2(n113), .B1(n112), .B2(n206), .ZN(
        n138) );
  INVD0BWP12T30P140 U233 ( .I(datareg0[10]), .ZN(n121) );
  AOI22D0BWP12T30P140 U234 ( .A1(n205), .A2(n114), .B1(n121), .B2(n203), .ZN(
        n168) );
  MOAI22D0BWP12T30P140 U235 ( .A1(waitstate[0]), .A2(n214), .B1(n213), .B2(
        ws_i[0]), .ZN(n197) );
  AOI22D0BWP12T30P140 U236 ( .A1(n118), .A2(n117), .B1(n116), .B2(n115), .ZN(
        n132) );
  OAI22D0BWP12T30P140 U237 ( .A1(n121), .A2(n200), .B1(n120), .B2(n119), .ZN(
        N102) );
  AOI21D0BWP12T30P140 U238 ( .A1(waitstate[4]), .A2(n123), .B(n122), .ZN(n124)
         );
  MOAI22D0BWP12T30P140 U239 ( .A1(n124), .A2(n214), .B1(n213), .B2(ws_i[4]), 
        .ZN(n193) );
  NR2D0BWP12T30P140 U240 ( .A1(waitstate[1]), .A2(waitstate[0]), .ZN(n210) );
  AOI21D0BWP12T30P140 U241 ( .A1(waitstate[0]), .A2(waitstate[1]), .B(n210), 
        .ZN(n125) );
  MOAI22D0BWP12T30P140 U242 ( .A1(n125), .A2(n214), .B1(n213), .B2(ws_i[1]), 
        .ZN(n196) );
  OAI22D0BWP12T30P140 U243 ( .A1(n201), .A2(n200), .B1(n199), .B2(n198), .ZN(
        N97) );
  CKMUX2D0BWP12T30P140 U244 ( .I0(wb_dat_i[31]), .I1(datareg0[31]), .S(n202), 
        .Z(n189) );
  INVD0BWP12T30P140 U245 ( .I(wb_dat_i[11]), .ZN(n208) );
  AOI22D0BWP12T30P140 U246 ( .A1(n205), .A2(n208), .B1(n204), .B2(n203), .ZN(
        n169) );
  AOI22D0BWP12T30P140 U247 ( .A1(n209), .A2(n208), .B1(n207), .B2(n206), .ZN(
        n137) );
  INVD0BWP12T30P140 U248 ( .I(n210), .ZN(n212) );
  AOI21D0BWP12T30P140 U249 ( .A1(waitstate[2]), .A2(n212), .B(n211), .ZN(n215)
         );
  MOAI22D0BWP12T30P140 U250 ( .A1(n215), .A2(n214), .B1(n213), .B2(ws_i[2]), 
        .ZN(n195) );
  CKBD0BWP12T30P140 U251 ( .I(clk_i), .Z(n222) );
  CKBD0BWP12T30P140 U252 ( .I(clk_i), .Z(n225) );
  CKBD0BWP12T30P140 U253 ( .I(clk_i), .Z(n224) );
  CKBD0BWP12T30P140 U254 ( .I(clk_i), .Z(n223) );
  CKBD0BWP12T30P140 U255 ( .I(clk_i), .Z(n221) );
  CKBD0BWP12T30P140 U256 ( .I(nrst_i), .Z(n220) );
  CKBD0BWP12T30P140 U257 ( .I(nrst_i), .Z(n219) );
  CKBD0BWP12T30P140 U258 ( .I(nrst_i), .Z(n218) );
  CKBD0BWP12T30P140 U259 ( .I(nrst_i), .Z(n217) );
  CKBD0BWP12T30P140 U260 ( .I(nrst_i), .Z(n216) );
endmodule


module lpc_top ( clk_i, nrst_i, wbs_adr_i, wbs_dat_i, wbs_sel_i, wbs_tga_i, 
        wbs_we_i, wbs_stb_i, wbs_cyc_i, wbs_dat_o, wbs_ack_o, wbs_err_o, 
        dma_chan_i, dma_tc_i, dma_req_i, regfile_ws_i );
  input [31:0] wbs_adr_i;
  input [31:0] wbs_dat_i;
  input [3:0] wbs_sel_i;
  input [1:0] wbs_tga_i;
  output [31:0] wbs_dat_o;
  input [2:0] dma_chan_i;
  input [7:0] regfile_ws_i;
  input clk_i, nrst_i, wbs_we_i, wbs_stb_i, wbs_cyc_i, dma_tc_i, dma_req_i;
  output wbs_ack_o, wbs_err_o;
  wire   lframe_o, lad_oe_host, wbm_we_o, wbm_stb_o, wbm_cyc_o, wbm_ack_i,
         wbm_err_i, lad_oe_periph, ldrq_o, N9, N11, N13, N15, n2, n11, n12,
         n13, n14, n15, n16, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36,
         SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38,
         SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40,
         SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42,
         SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44,
         SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46,
         SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48,
         SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50,
         SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52,
         SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54,
         SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56,
         SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58,
         SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60,
         SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62,
         SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64,
         SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66,
         SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68,
         SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70,
         SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72,
         SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74,
         SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76,
         SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78,
         SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80,
         SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82,
         SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84,
         SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86,
         SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88,
         SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90,
         SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92,
         SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94,
         SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96,
         SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98,
         SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100;
  wire   [3:0] regfile_adr;
  wire   [3:0] wbm_adr_o;
  wire   [3:0] lad_bus;
  wire   [3:0] lad_o_host;
  wire   [31:0] wbm_dat_o;
  wire   [31:0] wbm_dat_i;
  wire   [3:0] wbm_sel_o;
  wire   [3:0] lad_o_periph;

  wb_lpc_host UUT_Host ( .clk_i(n15), .nrst_i(n13), .wbs_adr_i(wbs_adr_i), 
        .wbs_dat_o(wbs_dat_o), .wbs_dat_i(wbs_dat_i), .wbs_sel_i(wbs_sel_i), 
        .wbs_tga_i(wbs_tga_i), .wbs_we_i(wbs_we_i), .wbs_stb_i(wbs_stb_i), 
        .wbs_cyc_i(wbs_cyc_i), .wbs_ack_o(wbs_ack_o), .wbs_err_o(wbs_err_o), 
        .dma_chan_i(dma_chan_i), .dma_tc_i(dma_tc_i), .lframe_o(lframe_o), 
        .lad_i(lad_bus), .lad_o(lad_o_host), .lad_oe(lad_oe_host) );
  wb_lpc_periph UUT_Periph ( .clk_i(n16), .nrst_i(nrst_i), .wbm_adr_o({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, wbm_adr_o}), .wbm_dat_o(wbm_dat_o), 
        .wbm_dat_i(wbm_dat_i), .wbm_sel_o(wbm_sel_o), .wbm_tga_o({
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30}), .wbm_we_o(wbm_we_o), .wbm_stb_o(wbm_stb_o), .wbm_cyc_o(wbm_cyc_o), .wbm_ack_i(wbm_ack_i), 
        .wbm_err_i(wbm_err_i), .dma_chan_o({SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33}), .lframe_i(lframe_o), .lad_i(lad_bus), .lad_o(lad_o_periph), .lad_oe(lad_oe_periph) );
  wb_dreq_periph UUT_DREQ_Periph ( .clk_i(clk_i), .nrst_i(n14), .dma_chan_i(
        dma_chan_i), .dma_req_i(dma_req_i), .ldrq_o(ldrq_o) );
  wb_dreq_host UUT_DREQ_Host ( .clk_i(n16), .nrst_i(n14), .dma_chan_o({
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36}), .ldrq_i(ldrq_o) );
  wb_regfile regfile ( .clk_i(n15), .nrst_i(n13), .wb_adr_i(regfile_adr), 
        .wb_dat_o(wbm_dat_i), .wb_dat_i(wbm_dat_o), .wb_sel_i(wbm_sel_o), 
        .wb_we_i(wbm_we_o), .wb_stb_i(wbm_stb_o), .wb_cyc_i(wbm_cyc_o), 
        .wb_ack_o(wbm_ack_i), .ws_i(regfile_ws_i), .datareg0({
        SYNOPSYS_UNCONNECTED_37, SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51, SYNOPSYS_UNCONNECTED_52, 
        SYNOPSYS_UNCONNECTED_53, SYNOPSYS_UNCONNECTED_54, 
        SYNOPSYS_UNCONNECTED_55, SYNOPSYS_UNCONNECTED_56, 
        SYNOPSYS_UNCONNECTED_57, SYNOPSYS_UNCONNECTED_58, 
        SYNOPSYS_UNCONNECTED_59, SYNOPSYS_UNCONNECTED_60, 
        SYNOPSYS_UNCONNECTED_61, SYNOPSYS_UNCONNECTED_62, 
        SYNOPSYS_UNCONNECTED_63, SYNOPSYS_UNCONNECTED_64, 
        SYNOPSYS_UNCONNECTED_65, SYNOPSYS_UNCONNECTED_66, 
        SYNOPSYS_UNCONNECTED_67, SYNOPSYS_UNCONNECTED_68}), .datareg1({
        SYNOPSYS_UNCONNECTED_69, SYNOPSYS_UNCONNECTED_70, 
        SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72, 
        SYNOPSYS_UNCONNECTED_73, SYNOPSYS_UNCONNECTED_74, 
        SYNOPSYS_UNCONNECTED_75, SYNOPSYS_UNCONNECTED_76, 
        SYNOPSYS_UNCONNECTED_77, SYNOPSYS_UNCONNECTED_78, 
        SYNOPSYS_UNCONNECTED_79, SYNOPSYS_UNCONNECTED_80, 
        SYNOPSYS_UNCONNECTED_81, SYNOPSYS_UNCONNECTED_82, 
        SYNOPSYS_UNCONNECTED_83, SYNOPSYS_UNCONNECTED_84, 
        SYNOPSYS_UNCONNECTED_85, SYNOPSYS_UNCONNECTED_86, 
        SYNOPSYS_UNCONNECTED_87, SYNOPSYS_UNCONNECTED_88, 
        SYNOPSYS_UNCONNECTED_89, SYNOPSYS_UNCONNECTED_90, 
        SYNOPSYS_UNCONNECTED_91, SYNOPSYS_UNCONNECTED_92, 
        SYNOPSYS_UNCONNECTED_93, SYNOPSYS_UNCONNECTED_94, 
        SYNOPSYS_UNCONNECTED_95, SYNOPSYS_UNCONNECTED_96, 
        SYNOPSYS_UNCONNECTED_97, SYNOPSYS_UNCONNECTED_98, 
        SYNOPSYS_UNCONNECTED_99, SYNOPSYS_UNCONNECTED_100}) );
  BUFTD4BWP12T30P140 lad_bus_tri_0_ ( .I(N9), .OE(n2), .Z(lad_bus[0]) );
  BUFTD4BWP12T30P140 lad_bus_tri_1_ ( .I(N11), .OE(n2), .Z(lad_bus[1]) );
  BUFTD4BWP12T30P140 lad_bus_tri_2_ ( .I(N13), .OE(n2), .Z(lad_bus[2]) );
  BUFTD4BWP12T30P140 lad_bus_tri_3_ ( .I(N15), .OE(n2), .Z(lad_bus[3]) );
  CKBD0BWP12T30P140 U16 ( .I(nrst_i), .Z(n13) );
  CKBD0BWP12T30P140 U17 ( .I(clk_i), .Z(n16) );
  TIELBWP12T30P140 U18 ( .ZN(wbm_err_i) );
  OR2D0BWP12T30P140 U19 ( .A1(lad_oe_periph), .A2(lad_oe_host), .Z(n2) );
  INR2D1BWP12T30P140 U20 ( .A1(lad_oe_periph), .B1(lad_oe_host), .ZN(n11) );
  AO22D0BWP12T30P140 U21 ( .A1(lad_oe_host), .A2(lad_o_host[1]), .B1(n11), 
        .B2(lad_o_periph[1]), .Z(N11) );
  AO22D0BWP12T30P140 U22 ( .A1(lad_oe_host), .A2(lad_o_host[2]), .B1(n11), 
        .B2(lad_o_periph[2]), .Z(N13) );
  AO22D0BWP12T30P140 U23 ( .A1(lad_oe_host), .A2(lad_o_host[3]), .B1(n11), 
        .B2(lad_o_periph[3]), .Z(N15) );
  AO22D0BWP12T30P140 U24 ( .A1(lad_oe_host), .A2(lad_o_host[0]), .B1(n11), 
        .B2(lad_o_periph[0]), .Z(N9) );
  INR3D1BWP12T30P140 U25 ( .A1(dma_chan_i[1]), .B1(dma_chan_i[0]), .B2(
        dma_chan_i[2]), .ZN(n12) );
  OR2D0BWP12T30P140 U26 ( .A1(n12), .A2(wbm_adr_o[3]), .Z(regfile_adr[3]) );
  CKBD0BWP12T30P140 U27 ( .I(nrst_i), .Z(n14) );
  INR2D1BWP12T30P140 U28 ( .A1(wbm_adr_o[0]), .B1(n12), .ZN(regfile_adr[0]) );
  CKBD0BWP12T30P140 U29 ( .I(clk_i), .Z(n15) );
  INR2D1BWP12T30P140 U30 ( .A1(wbm_adr_o[1]), .B1(n12), .ZN(regfile_adr[1]) );
  INR2D1BWP12T30P140 U31 ( .A1(wbm_adr_o[2]), .B1(n12), .ZN(regfile_adr[2]) );
endmodule

