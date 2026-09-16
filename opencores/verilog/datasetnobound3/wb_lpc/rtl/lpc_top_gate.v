/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Mon Jun 22 17:33:40 2026
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

  DFCNQD1BWP12T30P140 wbs_err_o_reg ( .D(n229), .CP(clk_i), .CDN(n227), .Q(
        wbs_err_o) );
  DFCNQD1BWP12T30P140 lad_o_reg_0_ ( .D(n235), .CP(clk_i), .CDN(n290), .Q(
        lad_o[0]) );
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
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_13_ ( .D(n272), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[13]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_14_ ( .D(n271), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[14]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_15_ ( .D(n270), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[15]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_20_ ( .D(n265), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[20]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_21_ ( .D(n264), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[21]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_22_ ( .D(n263), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[22]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_23_ ( .D(n262), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[23]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n257), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[28]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_29_ ( .D(n256), .CP(n292), .CDN(n226), .Q(
        wbs_dat_o[29]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_30_ ( .D(n255), .CP(n291), .CDN(n226), .Q(
        wbs_dat_o[30]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n254), .CP(n293), .CDN(n226), .Q(
        wbs_dat_o[31]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_24_ ( .D(n261), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[24]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n260), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[25]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n259), .CP(n292), .CDN(n227), .Q(
        wbs_dat_o[26]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_27_ ( .D(n258), .CP(n291), .CDN(n227), .Q(
        wbs_dat_o[27]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_16_ ( .D(n269), .CP(n292), .CDN(n227), .Q(
        wbs_dat_o[16]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_17_ ( .D(n268), .CP(n293), .CDN(n227), .Q(
        wbs_dat_o[17]) );
  DFCNQD1BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n267), .CP(n292), .CDN(n227), .Q(
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
  DFCNQD1BWP12T30P140 wbs_ack_o_reg ( .D(n231), .CP(n291), .CDN(n227), .Q(
        wbs_ack_o) );
  DFCNQD1BWP12T30P140 state_reg_10_ ( .D(n242), .CP(n292), .CDN(n227), .Q(
        state[10]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n249), .CP(n291), .CDN(n225), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_2_ ( .D(n253), .CP(n291), .CDN(n225), .Q(
        xfr_len[2]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n247), .CP(n292), .CDN(n225), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 lad_o_reg_3_ ( .D(n232), .CP(n292), .CDN(n290), .Q(
        lad_o[3]) );
  DFCNQD1BWP12T30P140 lad_o_reg_2_ ( .D(n233), .CP(n293), .CDN(n290), .Q(
        lad_o[2]) );
  DFCNQD1BWP12T30P140 lad_o_reg_1_ ( .D(n234), .CP(n293), .CDN(n290), .Q(
        lad_o[1]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_0_ ( .D(n237), .CP(n291), .CDN(n225), .Q(
        xfr_len[0]) );
  DFCNQD1BWP12T30P140 xfr_len_reg_1_ ( .D(n236), .CP(n291), .CDN(n225), .Q(
        xfr_len[1]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_0_ ( .D(n240), .CP(n292), .CDN(nrst_i), .Q(
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
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n251), .CP(n292), .CDN(n290), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n252), .CP(n292), .CDN(n290), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 dat_cnt_reg_1_ ( .D(n286), .CP(n293), .CDN(n225), .Q(
        byte_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_11_ ( .D(n241), .CP(n292), .CDN(n226), .Q(
        state[11]) );
  DFCNQD1BWP12T30P140 state_reg_9_ ( .D(n243), .CP(n292), .CDN(n227), .Q(
        state[9]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(n245), .CP(n292), .CDN(n226), .Q(
        state[7]) );
  DFCNQD1BWP12T30P140 state_reg_8_ ( .D(n244), .CP(n292), .CDN(n290), .Q(
        state[8]) );
  DFCNQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n239), .CP(n292), .CDN(n225), .Q(
        adr_cnt[1]) );
  DFCNQD1BWP12T30P140 dat_cnt_reg_2_ ( .D(n287), .CP(n292), .CDN(n290), .Q(
        byte_cnt[1]) );
  DFCNQD1BWP12T30P140 lad_oe_reg ( .D(n228), .CP(n291), .CDN(n227), .Q(lad_oe)
         );
  DFCNQD1BWP12T30P140 dat_cnt_reg_0_ ( .D(n289), .CP(n293), .CDN(n290), .Q(
        dat_cnt_0_) );
  DFCNQD1BWP12T30P140 state_reg_12_ ( .D(state[12]), .CP(n293), .CDN(n227), 
        .Q(state[12]) );
  ND3D0BWP12T30P140 U3 ( .A1(n120), .A2(n171), .A3(n138), .ZN(n18) );
  INVD0BWP12T30P140 U4 ( .I(state[0]), .ZN(n132) );
  INVD0BWP12T30P140 U5 ( .I(state[3]), .ZN(n39) );
  INVD0BWP12T30P140 U6 ( .I(state[5]), .ZN(n224) );
  NR2D0BWP12T30P140 U7 ( .A1(state[2]), .A2(state[4]), .ZN(n34) );
  ND3D0BWP12T30P140 U8 ( .A1(n39), .A2(n224), .A3(n34), .ZN(n6) );
  NR2D0BWP12T30P140 U9 ( .A1(state[1]), .A2(n6), .ZN(n10) );
  INVD0BWP12T30P140 U10 ( .I(state[6]), .ZN(n115) );
  ND2D0BWP12T30P140 U11 ( .A1(n10), .A2(n115), .ZN(n134) );
  INVD0BWP12T30P140 U12 ( .I(state[8]), .ZN(n159) );
  INVD0BWP12T30P140 U13 ( .I(state[10]), .ZN(n38) );
  INVD0BWP12T30P140 U14 ( .I(state[9]), .ZN(n150) );
  INVD0BWP12T30P140 U15 ( .I(state[7]), .ZN(n157) );
  ND4D0BWP12T30P140 U16 ( .A1(n159), .A2(n38), .A3(n150), .A4(n157), .ZN(n5)
         );
  NR2D0BWP12T30P140 U17 ( .A1(n134), .A2(n5), .ZN(n3) );
  ND3D0BWP12T30P140 U18 ( .A1(n132), .A2(n3), .A3(state[11]), .ZN(n139) );
  INVD0BWP12T30P140 U19 ( .I(n139), .ZN(n118) );
  NR3D0BWP12T30P140 U20 ( .A1(state[0]), .A2(state[11]), .A3(n134), .ZN(n23)
         );
  NR3D0BWP12T30P140 U21 ( .A1(state[8]), .A2(state[9]), .A3(state[7]), .ZN(n1)
         );
  ND2D0BWP12T30P140 U22 ( .A1(n23), .A2(n1), .ZN(n35) );
  INVD0BWP12T30P140 U23 ( .I(lad_i[1]), .ZN(n20) );
  INVD0BWP12T30P140 U24 ( .I(lad_i[3]), .ZN(n113) );
  NR4D0BWP12T30P140 U25 ( .A1(lad_i[2]), .A2(lad_i[0]), .A3(n20), .A4(n113), 
        .ZN(n140) );
  ND2D0BWP12T30P140 U26 ( .A1(n118), .A2(n140), .ZN(n151) );
  AOI21D0BWP12T30P140 U27 ( .A1(n35), .A2(n151), .B(state[12]), .ZN(n2) );
  CKMUX2D0BWP12T30P140 U28 ( .I0(wbs_err_o), .I1(n118), .S(n2), .Z(n229) );
  INVD0BWP12T30P140 U29 ( .I(state[11]), .ZN(n144) );
  ND3D0BWP12T30P140 U30 ( .A1(n144), .A2(n3), .A3(state[0]), .ZN(n7) );
  INVD0BWP12T30P140 U31 ( .I(n7), .ZN(n129) );
  INVD0BWP12T30P140 U32 ( .I(state[12]), .ZN(n171) );
  NR2D0BWP12T30P140 U33 ( .A1(state[0]), .A2(state[11]), .ZN(n4) );
  IND2D1BWP12T30P140 U34 ( .A1(n5), .B1(n4), .ZN(n9) );
  NR3D0BWP12T30P140 U35 ( .A1(state[6]), .A2(n6), .A3(n9), .ZN(n28) );
  INVD0BWP12T30P140 U36 ( .I(state[2]), .ZN(n103) );
  NR3D0BWP12T30P140 U37 ( .A1(state[6]), .A2(state[1]), .A3(n9), .ZN(n33) );
  AN2D0BWP12T30P140 U38 ( .A1(n33), .A2(n39), .Z(n29) );
  ND2D0BWP12T30P140 U39 ( .A1(n29), .A2(n224), .ZN(n27) );
  NR3D0BWP12T30P140 U40 ( .A1(state[4]), .A2(n103), .A3(n27), .ZN(n102) );
  INVD0BWP12T30P140 U41 ( .I(n102), .ZN(n127) );
  ND2D0BWP12T30P140 U42 ( .A1(n127), .A2(n7), .ZN(n96) );
  OAI21D0BWP12T30P140 U43 ( .A1(n28), .A2(n96), .B(n171), .ZN(n8) );
  AO22D0BWP12T30P140 U44 ( .A1(n129), .A2(n171), .B1(n8), .B2(lframe_o), .Z(
        n230) );
  INVD0BWP12T30P140 U45 ( .I(byte_cnt[0]), .ZN(n164) );
  ND2D0BWP12T30P140 U46 ( .A1(dat_cnt_0_), .A2(n164), .ZN(n137) );
  NR2D0BWP12T30P140 U47 ( .A1(byte_cnt[1]), .A2(n137), .ZN(n194) );
  INVD0BWP12T30P140 U48 ( .I(byte_cnt[2]), .ZN(n120) );
  INVD0BWP12T30P140 U49 ( .I(n9), .ZN(n131) );
  ND2D0BWP12T30P140 U50 ( .A1(n10), .A2(n131), .ZN(n117) );
  NR2D0BWP12T30P140 U51 ( .A1(n115), .A2(n117), .ZN(n138) );
  INR2D1BWP12T30P140 U52 ( .A1(n194), .B1(n18), .ZN(n11) );
  INVD0BWP12T30P140 U53 ( .I(lad_i[0]), .ZN(n19) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n11), .A2(n19), .B1(wbs_dat_o[4]), .B2(n11), 
        .ZN(n281) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n11), .A2(n20), .B1(wbs_dat_o[5]), .B2(n11), 
        .ZN(n280) );
  INVD0BWP12T30P140 U56 ( .I(lad_i[2]), .ZN(n21) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n11), .A2(n21), .B1(wbs_dat_o[6]), .B2(n11), 
        .ZN(n279) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n11), .A2(n113), .B1(wbs_dat_o[7]), .B2(n11), 
        .ZN(n278) );
  INVD0BWP12T30P140 U59 ( .I(dat_cnt_0_), .ZN(n177) );
  NR3D0BWP12T30P140 U60 ( .A1(byte_cnt[1]), .A2(n164), .A3(n177), .ZN(n196) );
  INVD0BWP12T30P140 U61 ( .I(n196), .ZN(n168) );
  NR2D0BWP12T30P140 U62 ( .A1(n168), .A2(n18), .ZN(n12) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n12), .A2(n19), .B1(wbs_dat_o[12]), .B2(n12), 
        .ZN(n273) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n12), .A2(n20), .B1(wbs_dat_o[13]), .B2(n12), 
        .ZN(n272) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n12), .A2(n21), .B1(wbs_dat_o[14]), .B2(n12), 
        .ZN(n271) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n12), .A2(n113), .B1(wbs_dat_o[15]), .B2(n12), 
        .ZN(n270) );
  INVD0BWP12T30P140 U67 ( .I(byte_cnt[1]), .ZN(n167) );
  NR2D0BWP12T30P140 U68 ( .A1(n167), .A2(n137), .ZN(n189) );
  INR2D1BWP12T30P140 U69 ( .A1(n189), .B1(n18), .ZN(n13) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n13), .A2(n19), .B1(wbs_dat_o[20]), .B2(n13), 
        .ZN(n265) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n13), .A2(n20), .B1(wbs_dat_o[21]), .B2(n13), 
        .ZN(n264) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n13), .A2(n21), .B1(wbs_dat_o[22]), .B2(n13), 
        .ZN(n263) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n13), .A2(n113), .B1(wbs_dat_o[23]), .B2(n13), 
        .ZN(n262) );
  NR3D0BWP12T30P140 U74 ( .A1(n164), .A2(n167), .A3(n177), .ZN(n195) );
  INR2D1BWP12T30P140 U75 ( .A1(n195), .B1(n18), .ZN(n14) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n14), .A2(n19), .B1(wbs_dat_o[28]), .B2(n14), 
        .ZN(n257) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n14), .A2(n20), .B1(wbs_dat_o[29]), .B2(n14), 
        .ZN(n256) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n14), .A2(n21), .B1(wbs_dat_o[30]), .B2(n14), 
        .ZN(n255) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n14), .A2(n113), .B1(wbs_dat_o[31]), .B2(n14), 
        .ZN(n254) );
  NR3D0BWP12T30P140 U80 ( .A1(dat_cnt_0_), .A2(n167), .A3(n164), .ZN(n190) );
  INR2D1BWP12T30P140 U81 ( .A1(n190), .B1(n18), .ZN(n15) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n15), .A2(n19), .B1(wbs_dat_o[24]), .B2(n15), 
        .ZN(n261) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n15), .A2(n20), .B1(wbs_dat_o[25]), .B2(n15), 
        .ZN(n260) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n15), .A2(n21), .B1(wbs_dat_o[26]), .B2(n15), 
        .ZN(n259) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n15), .A2(n113), .B1(wbs_dat_o[27]), .B2(n15), 
        .ZN(n258) );
  NR3D0BWP12T30P140 U86 ( .A1(byte_cnt[0]), .A2(dat_cnt_0_), .A3(n167), .ZN(
        n192) );
  INR2D1BWP12T30P140 U87 ( .A1(n192), .B1(n18), .ZN(n16) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n16), .A2(n19), .B1(wbs_dat_o[16]), .B2(n16), 
        .ZN(n269) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n16), .A2(n20), .B1(wbs_dat_o[17]), .B2(n16), 
        .ZN(n268) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n16), .A2(n21), .B1(wbs_dat_o[18]), .B2(n16), 
        .ZN(n267) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n16), .A2(n113), .B1(wbs_dat_o[19]), .B2(n16), 
        .ZN(n266) );
  NR3D0BWP12T30P140 U92 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .A3(n164), .ZN(
        n191) );
  INR2D1BWP12T30P140 U93 ( .A1(n191), .B1(n18), .ZN(n17) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n17), .A2(n19), .B1(wbs_dat_o[8]), .B2(n17), 
        .ZN(n277) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n17), .A2(n20), .B1(wbs_dat_o[9]), .B2(n17), 
        .ZN(n276) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n17), .A2(n21), .B1(wbs_dat_o[10]), .B2(n17), 
        .ZN(n275) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n17), .A2(n113), .B1(wbs_dat_o[11]), .B2(n17), 
        .ZN(n274) );
  NR3D0BWP12T30P140 U98 ( .A1(byte_cnt[0]), .A2(byte_cnt[1]), .A3(dat_cnt_0_), 
        .ZN(n193) );
  INR2D1BWP12T30P140 U99 ( .A1(n193), .B1(n18), .ZN(n22) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n22), .A2(n19), .B1(wbs_dat_o[0]), .B2(n22), 
        .ZN(n285) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n22), .A2(n20), .B1(wbs_dat_o[1]), .B2(n22), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n22), .A2(n21), .B1(wbs_dat_o[2]), .B2(n22), 
        .ZN(n283) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n22), .A2(n113), .B1(wbs_dat_o[3]), .B2(n22), 
        .ZN(n282) );
  ND2D0BWP12T30P140 U104 ( .A1(n23), .A2(n38), .ZN(n32) );
  NR2D0BWP12T30P140 U105 ( .A1(state[8]), .A2(n32), .ZN(n30) );
  ND3D0BWP12T30P140 U106 ( .A1(n157), .A2(n30), .A3(state[9]), .ZN(n216) );
  INVD0BWP12T30P140 U107 ( .I(xfr_len[2]), .ZN(n122) );
  ND2D0BWP12T30P140 U108 ( .A1(n122), .A2(byte_cnt[2]), .ZN(n24) );
  INVD0BWP12T30P140 U109 ( .I(xfr_len[1]), .ZN(n165) );
  AOI22D0BWP12T30P140 U110 ( .A1(xfr_len[1]), .A2(byte_cnt[1]), .B1(n167), 
        .B2(n165), .ZN(n111) );
  AOI21D0BWP12T30P140 U111 ( .A1(xfr_len[0]), .A2(n164), .B(n111), .ZN(n109)
         );
  ND2D0BWP12T30P140 U112 ( .A1(xfr_len[2]), .A2(n120), .ZN(n107) );
  INVD0BWP12T30P140 U113 ( .I(xfr_len[0]), .ZN(n135) );
  ND2D0BWP12T30P140 U114 ( .A1(byte_cnt[0]), .A2(n135), .ZN(n110) );
  AN4D0BWP12T30P140 U115 ( .A1(n24), .A2(n109), .A3(n107), .A4(n110), .Z(n217)
         );
  IND2D1BWP12T30P140 U116 ( .A1(n216), .B1(n217), .ZN(n37) );
  AO21D0BWP12T30P140 U117 ( .A1(n35), .A2(n37), .B(state[12]), .Z(n26) );
  ND2D0BWP12T30P140 U118 ( .A1(wbs_cyc_i), .A2(wbs_stb_i), .ZN(n77) );
  ND2D0BWP12T30P140 U119 ( .A1(n26), .A2(wbs_ack_o), .ZN(n25) );
  OAI31D0BWP12T30P140 U120 ( .A1(n216), .A2(n26), .A3(n77), .B(n25), .ZN(n231)
         );
  INVD0BWP12T30P140 U121 ( .I(state[4]), .ZN(n97) );
  NR3D0BWP12T30P140 U122 ( .A1(state[2]), .A2(n97), .A3(n27), .ZN(n153) );
  ND2D0BWP12T30P140 U123 ( .A1(state[1]), .A2(n28), .ZN(n78) );
  ND4D0BWP12T30P140 U124 ( .A1(n97), .A2(n103), .A3(state[5]), .A4(n29), .ZN(
        n155) );
  ND3D0BWP12T30P140 U125 ( .A1(n150), .A2(state[7]), .A3(n30), .ZN(n160) );
  ND3D0BWP12T30P140 U126 ( .A1(n78), .A2(n155), .A3(n160), .ZN(n41) );
  NR2D0BWP12T30P140 U127 ( .A1(n41), .A2(n96), .ZN(n173) );
  NR2D0BWP12T30P140 U128 ( .A1(state[9]), .A2(state[7]), .ZN(n31) );
  IND3D1BWP12T30P140 U129 ( .A1(n32), .B1(state[8]), .B2(n31), .ZN(n145) );
  ND4D0BWP12T30P140 U130 ( .A1(n173), .A2(n145), .A3(n216), .A4(n139), .ZN(
        n170) );
  NR3D0BWP12T30P140 U131 ( .A1(n153), .A2(n138), .A3(n170), .ZN(n36) );
  ND4D0BWP12T30P140 U132 ( .A1(n34), .A2(state[3]), .A3(n33), .A4(n224), .ZN(
        n99) );
  AOI31D0BWP12T30P140 U133 ( .A1(n36), .A2(n35), .A3(n99), .B(state[12]), .ZN(
        n222) );
  INVD0BWP12T30P140 U134 ( .I(n222), .ZN(n158) );
  OAI222D0BWP12T30P140 U135 ( .A1(n38), .A2(n77), .B1(n38), .B2(n222), .C1(n37), .C2(n158), .ZN(n242) );
  AN2D0BWP12T30P140 U136 ( .A1(wbs_tga_i[0]), .A2(wbs_tga_i[1]), .Z(n79) );
  IND2D1BWP12T30P140 U137 ( .A1(n78), .B1(n79), .ZN(n76) );
  AOI22D0BWP12T30P140 U138 ( .A1(n222), .A2(n76), .B1(n39), .B2(n158), .ZN(
        n249) );
  AN3D0BWP12T30P140 U139 ( .A1(n153), .A2(wbs_sel_i[0]), .A3(wbs_sel_i[1]), 
        .Z(n40) );
  ND3D0BWP12T30P140 U140 ( .A1(n40), .A2(wbs_sel_i[3]), .A3(wbs_sel_i[2]), 
        .ZN(n204) );
  OAI21D0BWP12T30P140 U141 ( .A1(n102), .A2(n153), .B(n171), .ZN(n92) );
  INVD0BWP12T30P140 U142 ( .I(n92), .ZN(n95) );
  OAI22D0BWP12T30P140 U143 ( .A1(state[12]), .A2(n204), .B1(n95), .B2(n122), 
        .ZN(n253) );
  INVD0BWP12T30P140 U144 ( .I(n99), .ZN(n201) );
  NR3D0BWP12T30P140 U145 ( .A1(n129), .A2(n201), .A3(n41), .ZN(n42) );
  OAI21D0BWP12T30P140 U146 ( .A1(state[12]), .A2(n42), .B(n92), .ZN(n213) );
  INVD0BWP12T30P140 U147 ( .I(n213), .ZN(n56) );
  INVD0BWP12T30P140 U148 ( .I(n155), .ZN(n221) );
  AOI22D0BWP12T30P140 U149 ( .A1(n190), .A2(wbs_dat_i[27]), .B1(n189), .B2(
        wbs_dat_i[23]), .ZN(n46) );
  AOI22D0BWP12T30P140 U150 ( .A1(n192), .A2(wbs_dat_i[19]), .B1(n191), .B2(
        wbs_dat_i[11]), .ZN(n45) );
  AOI22D0BWP12T30P140 U151 ( .A1(n194), .A2(wbs_dat_i[7]), .B1(n193), .B2(
        wbs_dat_i[3]), .ZN(n44) );
  AOI22D0BWP12T30P140 U152 ( .A1(n196), .A2(wbs_dat_i[15]), .B1(n195), .B2(
        wbs_dat_i[31]), .ZN(n43) );
  ND4D0BWP12T30P140 U153 ( .A1(n46), .A2(n45), .A3(n44), .A4(n43), .ZN(n47) );
  AOI22D0BWP12T30P140 U154 ( .A1(n221), .A2(n47), .B1(n201), .B2(dma_tc_i), 
        .ZN(n54) );
  ND2D0BWP12T30P140 U155 ( .A1(n102), .A2(adr_cnt[0]), .ZN(n185) );
  ND2D0BWP12T30P140 U156 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n101) );
  NR2D0BWP12T30P140 U157 ( .A1(n185), .A2(n101), .ZN(n208) );
  INVD0BWP12T30P140 U158 ( .I(n101), .ZN(n179) );
  INVD0BWP12T30P140 U159 ( .I(adr_cnt[2]), .ZN(n124) );
  NR2D0BWP12T30P140 U160 ( .A1(adr_cnt[1]), .A2(n124), .ZN(n184) );
  AOI22D0BWP12T30P140 U161 ( .A1(n179), .A2(wbs_adr_i[7]), .B1(n184), .B2(
        wbs_adr_i[15]), .ZN(n49) );
  NR2D0BWP12T30P140 U162 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n183) );
  INVD0BWP12T30P140 U163 ( .I(adr_cnt[1]), .ZN(n161) );
  NR2D0BWP12T30P140 U164 ( .A1(adr_cnt[2]), .A2(n161), .ZN(n182) );
  AOI22D0BWP12T30P140 U165 ( .A1(n183), .A2(wbs_adr_i[31]), .B1(n182), .B2(
        wbs_adr_i[23]), .ZN(n48) );
  NR2D0BWP12T30P140 U166 ( .A1(adr_cnt[0]), .A2(n127), .ZN(n188) );
  INVD0BWP12T30P140 U167 ( .I(n188), .ZN(n82) );
  AOI21D0BWP12T30P140 U168 ( .A1(n49), .A2(n48), .B(n82), .ZN(n52) );
  AOI222D0BWP12T30P140 U169 ( .A1(n184), .A2(wbs_adr_i[11]), .B1(n183), .B2(
        wbs_adr_i[27]), .C1(n182), .C2(wbs_adr_i[19]), .ZN(n50) );
  IND2D1BWP12T30P140 U170 ( .A1(wbs_tga_i[0]), .B1(wbs_tga_i[1]), .ZN(n154) );
  INVD0BWP12T30P140 U171 ( .I(n154), .ZN(n205) );
  ND2D0BWP12T30P140 U172 ( .A1(n129), .A2(n205), .ZN(n203) );
  OAI211D0BWP12T30P140 U173 ( .A1(n50), .A2(n185), .B(n76), .C(n203), .ZN(n51)
         );
  AOI211D0BWP12T30P140 U174 ( .A1(n208), .A2(wbs_adr_i[3]), .B(n52), .C(n51), 
        .ZN(n53) );
  AOI31D0BWP12T30P140 U175 ( .A1(n54), .A2(n53), .A3(n160), .B(n56), .ZN(n55)
         );
  AO21D0BWP12T30P140 U176 ( .A1(n56), .A2(lad_o[3]), .B(n55), .Z(n232) );
  AOI22D0BWP12T30P140 U177 ( .A1(n190), .A2(wbs_dat_i[26]), .B1(n189), .B2(
        wbs_dat_i[22]), .ZN(n60) );
  AOI22D0BWP12T30P140 U178 ( .A1(n192), .A2(wbs_dat_i[18]), .B1(n191), .B2(
        wbs_dat_i[10]), .ZN(n59) );
  AOI22D0BWP12T30P140 U179 ( .A1(n194), .A2(wbs_dat_i[6]), .B1(n193), .B2(
        wbs_dat_i[2]), .ZN(n58) );
  AOI22D0BWP12T30P140 U180 ( .A1(n196), .A2(wbs_dat_i[14]), .B1(n195), .B2(
        wbs_dat_i[30]), .ZN(n57) );
  ND4D0BWP12T30P140 U181 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(n64) );
  AOI22D0BWP12T30P140 U182 ( .A1(n179), .A2(wbs_adr_i[6]), .B1(n184), .B2(
        wbs_adr_i[14]), .ZN(n62) );
  AOI22D0BWP12T30P140 U183 ( .A1(n183), .A2(wbs_adr_i[30]), .B1(n182), .B2(
        wbs_adr_i[22]), .ZN(n61) );
  AOI21D0BWP12T30P140 U184 ( .A1(n62), .A2(n61), .B(n82), .ZN(n63) );
  AOI21D0BWP12T30P140 U185 ( .A1(n221), .A2(n64), .B(n63), .ZN(n65) );
  OAI31D0BWP12T30P140 U186 ( .A1(wbs_tga_i[0]), .A2(wbs_tga_i[1]), .A3(n78), 
        .B(n65), .ZN(n69) );
  AOI222D0BWP12T30P140 U187 ( .A1(n184), .A2(wbs_adr_i[10]), .B1(n183), .B2(
        wbs_adr_i[26]), .C1(n182), .C2(wbs_adr_i[18]), .ZN(n67) );
  INVD0BWP12T30P140 U188 ( .I(n160), .ZN(n207) );
  AOI21D0BWP12T30P140 U189 ( .A1(n201), .A2(dma_chan_i[2]), .B(n207), .ZN(n66)
         );
  OAI211D0BWP12T30P140 U190 ( .A1(n67), .A2(n185), .B(n66), .C(n203), .ZN(n68)
         );
  AOI211D0BWP12T30P140 U191 ( .A1(n208), .A2(wbs_adr_i[2]), .B(n69), .C(n68), 
        .ZN(n70) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n70), .A2(n213), .B1(n213), .B2(lad_o[2]), 
        .ZN(n233) );
  AOI22D0BWP12T30P140 U193 ( .A1(n190), .A2(wbs_dat_i[25]), .B1(n189), .B2(
        wbs_dat_i[21]), .ZN(n74) );
  AOI22D0BWP12T30P140 U194 ( .A1(n192), .A2(wbs_dat_i[17]), .B1(n191), .B2(
        wbs_dat_i[9]), .ZN(n73) );
  AOI22D0BWP12T30P140 U195 ( .A1(n194), .A2(wbs_dat_i[5]), .B1(n193), .B2(
        wbs_dat_i[1]), .ZN(n72) );
  AOI22D0BWP12T30P140 U196 ( .A1(n196), .A2(wbs_dat_i[13]), .B1(n195), .B2(
        wbs_dat_i[29]), .ZN(n71) );
  ND4D0BWP12T30P140 U197 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .ZN(n75) );
  AOI22D0BWP12T30P140 U198 ( .A1(n221), .A2(n75), .B1(n201), .B2(dma_chan_i[1]), .ZN(n89) );
  INVD0BWP12T30P140 U199 ( .I(n76), .ZN(n80) );
  INVD0BWP12T30P140 U200 ( .I(n77), .ZN(n130) );
  ND2D0BWP12T30P140 U201 ( .A1(wbs_we_i), .A2(n130), .ZN(n114) );
  OAI21D0BWP12T30P140 U202 ( .A1(n79), .A2(n78), .B(n203), .ZN(n100) );
  INVD0BWP12T30P140 U203 ( .I(n114), .ZN(n219) );
  AOI221D0BWP12T30P140 U204 ( .A1(n80), .A2(n114), .B1(n100), .B2(n219), .C(
        n207), .ZN(n88) );
  AOI222D0BWP12T30P140 U205 ( .A1(n184), .A2(wbs_adr_i[9]), .B1(n183), .B2(
        wbs_adr_i[25]), .C1(n182), .C2(wbs_adr_i[17]), .ZN(n81) );
  NR2D0BWP12T30P140 U206 ( .A1(n81), .A2(n185), .ZN(n86) );
  AOI22D0BWP12T30P140 U207 ( .A1(n179), .A2(wbs_adr_i[5]), .B1(n184), .B2(
        wbs_adr_i[13]), .ZN(n84) );
  AOI22D0BWP12T30P140 U208 ( .A1(n183), .A2(wbs_adr_i[29]), .B1(n182), .B2(
        wbs_adr_i[21]), .ZN(n83) );
  AOI21D0BWP12T30P140 U209 ( .A1(n84), .A2(n83), .B(n82), .ZN(n85) );
  AOI211D0BWP12T30P140 U210 ( .A1(wbs_adr_i[1]), .A2(n208), .B(n86), .C(n85), 
        .ZN(n87) );
  ND4D0BWP12T30P140 U211 ( .A1(n89), .A2(n88), .A3(n87), .A4(n204), .ZN(n90)
         );
  CKMUX2D0BWP12T30P140 U212 ( .I0(lad_o[1]), .I1(n90), .S(n213), .Z(n234) );
  NR2D0BWP12T30P140 U213 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .ZN(n94) );
  AN2D0BWP12T30P140 U214 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .Z(n91) );
  OA211D0BWP12T30P140 U215 ( .A1(n94), .A2(n91), .B(wbs_sel_i[1]), .C(
        wbs_sel_i[0]), .Z(n93) );
  AOI32D0BWP12T30P140 U216 ( .A1(n93), .A2(n95), .A3(n127), .B1(n135), .B2(n92), .ZN(n237) );
  ND4D0BWP12T30P140 U217 ( .A1(n153), .A2(wbs_sel_i[0]), .A3(wbs_sel_i[1]), 
        .A4(n94), .ZN(n209) );
  OAI22D0BWP12T30P140 U218 ( .A1(state[12]), .A2(n209), .B1(n95), .B2(n165), 
        .ZN(n236) );
  ND2D0BWP12T30P140 U219 ( .A1(n171), .A2(n96), .ZN(n126) );
  AO22D0BWP12T30P140 U220 ( .A1(n188), .A2(n171), .B1(adr_cnt[0]), .B2(n126), 
        .Z(n240) );
  ND2D0BWP12T30P140 U221 ( .A1(n205), .A2(n208), .ZN(n98) );
  AOI32D0BWP12T30P140 U222 ( .A1(n99), .A2(n222), .A3(n98), .B1(n97), .B2(n158), .ZN(n248) );
  AOI211D0BWP12T30P140 U223 ( .A1(n102), .A2(n101), .B(n188), .C(n100), .ZN(
        n104) );
  AOI22D0BWP12T30P140 U224 ( .A1(n222), .A2(n104), .B1(n103), .B2(n158), .ZN(
        n250) );
  NR2D0BWP12T30P140 U225 ( .A1(xfr_len[0]), .A2(xfr_len[1]), .ZN(n106) );
  AOI22D0BWP12T30P140 U226 ( .A1(n106), .A2(n107), .B1(byte_cnt[2]), .B2(n122), 
        .ZN(n105) );
  OAI21D0BWP12T30P140 U227 ( .A1(n107), .A2(n106), .B(n105), .ZN(n108) );
  AOI211D0BWP12T30P140 U228 ( .A1(n111), .A2(n110), .B(n109), .C(n108), .ZN(
        n148) );
  OAI21D0BWP12T30P140 U229 ( .A1(n148), .A2(n154), .B(dat_cnt_0_), .ZN(n220)
         );
  AOI211D0BWP12T30P140 U230 ( .A1(lad_i[0]), .A2(n113), .B(lad_i[2]), .C(
        lad_i[1]), .ZN(n112) );
  OAI21D0BWP12T30P140 U231 ( .A1(lad_i[0]), .A2(n113), .B(n112), .ZN(n141) );
  NR2D0BWP12T30P140 U232 ( .A1(n139), .A2(n141), .ZN(n149) );
  AOI22D0BWP12T30P140 U233 ( .A1(n138), .A2(n220), .B1(n149), .B2(n114), .ZN(
        n116) );
  AOI22D0BWP12T30P140 U234 ( .A1(n222), .A2(n116), .B1(n115), .B2(n158), .ZN(
        n246) );
  AOI31D0BWP12T30P140 U235 ( .A1(n155), .A2(n117), .A3(n151), .B(state[12]), 
        .ZN(n178) );
  ND2D0BWP12T30P140 U236 ( .A1(n118), .A2(n178), .ZN(n176) );
  OAI21D0BWP12T30P140 U237 ( .A1(n221), .A2(n138), .B(n171), .ZN(n169) );
  INVD0BWP12T30P140 U238 ( .I(n169), .ZN(n174) );
  OAI21D0BWP12T30P140 U239 ( .A1(n195), .A2(n169), .B(n178), .ZN(n119) );
  AOI32D0BWP12T30P140 U240 ( .A1(n195), .A2(n120), .A3(n174), .B1(byte_cnt[2]), 
        .B2(n119), .ZN(n121) );
  OAI21D0BWP12T30P140 U241 ( .A1(n122), .A2(n176), .B(n121), .ZN(n288) );
  INVD0BWP12T30P140 U242 ( .I(n184), .ZN(n128) );
  INVD0BWP12T30P140 U243 ( .I(n185), .ZN(n123) );
  AOI22D0BWP12T30P140 U244 ( .A1(n129), .A2(wbs_tga_i[0]), .B1(n123), .B2(n182), .ZN(n125) );
  NR2D0BWP12T30P140 U245 ( .A1(n188), .A2(n126), .ZN(n162) );
  OAI222D0BWP12T30P140 U246 ( .A1(n128), .A2(n127), .B1(n126), .B2(n125), .C1(
        n124), .C2(n162), .ZN(n238) );
  AO32D0BWP12T30P140 U247 ( .A1(n222), .A2(n154), .A3(n129), .B1(n158), .B2(
        state[1]), .Z(n251) );
  ND2D0BWP12T30P140 U248 ( .A1(n131), .A2(n130), .ZN(n133) );
  OAI32D0BWP12T30P140 U249 ( .A1(n158), .A2(n134), .A3(n133), .B1(n222), .B2(
        n132), .ZN(n252) );
  OAI21D0BWP12T30P140 U250 ( .A1(dat_cnt_0_), .A2(n169), .B(n178), .ZN(n163)
         );
  INVD0BWP12T30P140 U251 ( .I(n163), .ZN(n136) );
  OAI222D0BWP12T30P140 U252 ( .A1(n169), .A2(n137), .B1(n164), .B2(n136), .C1(
        n135), .C2(n176), .ZN(n286) );
  AN2D0BWP12T30P140 U253 ( .A1(n138), .A2(dat_cnt_0_), .Z(n147) );
  INVD0BWP12T30P140 U254 ( .I(n148), .ZN(n143) );
  INR3D1BWP12T30P140 U255 ( .A1(n141), .B1(n140), .B2(n139), .ZN(n142) );
  AOI31D0BWP12T30P140 U256 ( .A1(n147), .A2(n154), .A3(n143), .B(n142), .ZN(
        n146) );
  AOI32D0BWP12T30P140 U257 ( .A1(n146), .A2(n222), .A3(n145), .B1(n144), .B2(
        n158), .ZN(n241) );
  AOI22D0BWP12T30P140 U258 ( .A1(n219), .A2(n149), .B1(n148), .B2(n147), .ZN(
        n152) );
  AOI32D0BWP12T30P140 U259 ( .A1(n152), .A2(n222), .A3(n151), .B1(n150), .B2(
        n158), .ZN(n243) );
  AOI21D0BWP12T30P140 U260 ( .A1(n208), .A2(n154), .B(n153), .ZN(n215) );
  OAI22D0BWP12T30P140 U261 ( .A1(n155), .A2(n220), .B1(n219), .B2(n215), .ZN(
        n156) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n157), .A2(n158), .B1(n158), .B2(n156), .ZN(
        n245) );
  AOI22D0BWP12T30P140 U263 ( .A1(n222), .A2(n160), .B1(n159), .B2(n158), .ZN(
        n244) );
  OAI32D0BWP12T30P140 U264 ( .A1(adr_cnt[1]), .A2(state[12]), .A3(n185), .B1(
        n162), .B2(n161), .ZN(n239) );
  AOI21D0BWP12T30P140 U265 ( .A1(n174), .A2(n164), .B(n163), .ZN(n166) );
  OAI222D0BWP12T30P140 U266 ( .A1(n169), .A2(n168), .B1(n167), .B2(n166), .C1(
        n165), .C2(n176), .ZN(n287) );
  IOA21D0BWP12T30P140 U267 ( .A1(n171), .A2(n170), .B(lad_oe), .ZN(n172) );
  OAI21D0BWP12T30P140 U268 ( .A1(state[12]), .A2(n173), .B(n172), .ZN(n228) );
  ND2D0BWP12T30P140 U269 ( .A1(n174), .A2(n177), .ZN(n175) );
  OAI211D0BWP12T30P140 U270 ( .A1(n178), .A2(n177), .B(n176), .C(n175), .ZN(
        n289) );
  AOI22D0BWP12T30P140 U271 ( .A1(n179), .A2(wbs_adr_i[4]), .B1(n184), .B2(
        wbs_adr_i[12]), .ZN(n181) );
  AOI22D0BWP12T30P140 U272 ( .A1(n183), .A2(wbs_adr_i[28]), .B1(n182), .B2(
        wbs_adr_i[20]), .ZN(n180) );
  ND2D0BWP12T30P140 U273 ( .A1(n181), .A2(n180), .ZN(n187) );
  AOI222D0BWP12T30P140 U274 ( .A1(n184), .A2(wbs_adr_i[8]), .B1(n183), .B2(
        wbs_adr_i[24]), .C1(n182), .C2(wbs_adr_i[16]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n188), .A2(n187), .B1(n186), .B2(n185), .ZN(
        n212) );
  AOI22D0BWP12T30P140 U276 ( .A1(n190), .A2(wbs_dat_i[24]), .B1(n189), .B2(
        wbs_dat_i[20]), .ZN(n200) );
  AOI22D0BWP12T30P140 U277 ( .A1(n192), .A2(wbs_dat_i[16]), .B1(n191), .B2(
        wbs_dat_i[8]), .ZN(n199) );
  AOI22D0BWP12T30P140 U278 ( .A1(n194), .A2(wbs_dat_i[4]), .B1(n193), .B2(
        wbs_dat_i[0]), .ZN(n198) );
  AOI22D0BWP12T30P140 U279 ( .A1(n196), .A2(wbs_dat_i[12]), .B1(n195), .B2(
        wbs_dat_i[28]), .ZN(n197) );
  ND4D0BWP12T30P140 U280 ( .A1(n200), .A2(n199), .A3(n198), .A4(n197), .ZN(
        n202) );
  AOI22D0BWP12T30P140 U281 ( .A1(n221), .A2(n202), .B1(n201), .B2(
        dma_chan_i[0]), .ZN(n211) );
  OAI22D0BWP12T30P140 U282 ( .A1(n205), .A2(n204), .B1(n219), .B2(n203), .ZN(
        n206) );
  AOI211D0BWP12T30P140 U283 ( .A1(n208), .A2(wbs_adr_i[0]), .B(n207), .C(n206), 
        .ZN(n210) );
  ND4D0BWP12T30P140 U284 ( .A1(n212), .A2(n211), .A3(n210), .A4(n209), .ZN(
        n214) );
  CKMUX2D0BWP12T30P140 U285 ( .I0(lad_o[0]), .I1(n214), .S(n213), .Z(n235) );
  CKBD0BWP12T30P140 U286 ( .I(clk_i), .Z(n292) );
  CKBD0BWP12T30P140 U287 ( .I(clk_i), .Z(n291) );
  CKBD0BWP12T30P140 U288 ( .I(clk_i), .Z(n293) );
  CKBD0BWP12T30P140 U289 ( .I(nrst_i), .Z(n227) );
  CKBD0BWP12T30P140 U290 ( .I(nrst_i), .Z(n226) );
  CKBD0BWP12T30P140 U291 ( .I(nrst_i), .Z(n290) );
  CKBD0BWP12T30P140 U292 ( .I(nrst_i), .Z(n225) );
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
  DFQD2BWP12T30P140 wbm_adr_o_reg_11_ ( .D(n258), .CP(n475), .Q(wbm_adr_o[11])
         );
  DFQD2BWP12T30P140 dma_chan_reg_1_ ( .D(n415), .CP(n471), .Q(dma_chan_o[1])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_9_ ( .D(n256), .CP(clk_i), .Q(wbm_adr_o[9])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_7_ ( .D(n254), .CP(clk_i), .Q(wbm_adr_o[7])
         );
  DFQD2BWP12T30P140 wbm_tga_o_reg_1_ ( .D(n315), .CP(n471), .Q(wbm_tga_o[1])
         );
  DFQD2BWP12T30P140 wbm_tga_o_reg_0_ ( .D(n314), .CP(n471), .Q(wbm_tga_o[0])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n269), .CP(n474), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n267), .CP(n474), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n265), .CP(n474), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n263), .CP(n474), .Q(wbm_adr_o[16])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n261), .CP(n474), .Q(wbm_adr_o[14])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_12_ ( .D(n259), .CP(n474), .Q(wbm_adr_o[12])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_10_ ( .D(n257), .CP(n474), .Q(wbm_adr_o[10])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_8_ ( .D(n255), .CP(n474), .Q(wbm_adr_o[8])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_6_ ( .D(n253), .CP(n474), .Q(wbm_adr_o[6])
         );
  DFQD2BWP12T30P140 dma_tc_reg ( .D(n417), .CP(n469), .Q(dma_tc_o) );
  DFQD2BWP12T30P140 dma_chan_reg_2_ ( .D(n416), .CP(n472), .Q(dma_chan_o[2])
         );
  DFQD2BWP12T30P140 dma_chan_reg_0_ ( .D(n414), .CP(n466), .Q(dma_chan_o[0])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n278), .CP(n465), .Q(wbm_adr_o[31])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n277), .CP(n465), .Q(wbm_adr_o[30])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n276), .CP(n465), .Q(wbm_adr_o[29])
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
  DFQD2BWP12T30P140 wbm_adr_o_reg_5_ ( .D(n252), .CP(n465), .Q(wbm_adr_o[5])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_4_ ( .D(n251), .CP(n466), .Q(wbm_adr_o[4])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_5_ ( .D(n359), .CP(n473), .Q(
        lpc_adr_reg[5]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_7_ ( .D(n343), .CP(n470), .Q(
        lpc_adr_reg[7]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_12_ ( .D(n365), .CP(n473), .Q(
        lpc_adr_reg[12]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_13_ ( .D(n357), .CP(n473), .Q(
        lpc_adr_reg[13]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_14_ ( .D(n349), .CP(n473), .Q(
        lpc_adr_reg[14]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_15_ ( .D(n341), .CP(n473), .Q(
        lpc_adr_reg[15]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_6_ ( .D(n394), .CP(n471), .Q(lpc_dat_o[6])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_18_ ( .D(n382), .CP(n473), .Q(lpc_dat_o[18])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_20_ ( .D(n380), .CP(n471), .Q(lpc_dat_o[20])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_21_ ( .D(n379), .CP(n470), .Q(lpc_dat_o[21])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_22_ ( .D(n378), .CP(n473), .Q(lpc_dat_o[22])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_28_ ( .D(n372), .CP(n471), .Q(lpc_dat_o[28])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_30_ ( .D(n370), .CP(n470), .Q(lpc_dat_o[30])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_31_ ( .D(n369), .CP(n473), .Q(lpc_dat_o[31])
         );
  DFQD2BWP12T30P140 dat_cnt_reg_3_ ( .D(n319), .CP(n471), .Q(byte_cnt[2]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_4_ ( .D(n367), .CP(clk_i), .Q(
        lpc_adr_reg[4]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_6_ ( .D(n351), .CP(clk_i), .Q(
        lpc_adr_reg[6]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_23_ ( .D(n377), .CP(clk_i), .Q(lpc_dat_o[23]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_30_ ( .D(n312), .CP(n471), .Q(wbm_dat_o[30])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_29_ ( .D(n311), .CP(n471), .Q(wbm_dat_o[29])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_28_ ( .D(n310), .CP(n471), .Q(wbm_dat_o[28])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_26_ ( .D(n308), .CP(n471), .Q(wbm_dat_o[26])
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
  DFQD2BWP12T30P140 wbm_dat_o_reg_11_ ( .D(n293), .CP(n470), .Q(wbm_dat_o[11])
         );
  DFQD2BWP12T30P140 lpc_tga_o_reg_0_ ( .D(n403), .CP(clk_i), .Q(lpc_tga_o[0])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_8_ ( .D(n392), .CP(n474), .Q(lpc_dat_o[8])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_8_ ( .D(n366), .CP(n473), .Q(
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
  DFQD2BWP12T30P140 lpc_adr_reg_reg_19_ ( .D(n340), .CP(n471), .Q(
        lpc_adr_reg[19]) );
  DFQD2BWP12T30P140 lpc_tga_o_reg_1_ ( .D(n402), .CP(n474), .Q(lpc_tga_o[1])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n450), .CP(n468), .Q(lpc_dat_i[31])
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
  DFQD2BWP12T30P140 lpc_dat_i_reg_8_ ( .D(n427), .CP(n466), .Q(lpc_dat_i[8])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_3_ ( .D(n421), .CP(n466), .Q(lpc_dat_i[3])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_1_ ( .D(n399), .CP(n466), .Q(lpc_dat_o[1])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_2_ ( .D(n398), .CP(n468), .Q(lpc_dat_o[2])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_3_ ( .D(n397), .CP(n467), .Q(lpc_dat_o[3])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_4_ ( .D(n396), .CP(n469), .Q(lpc_dat_o[4])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_5_ ( .D(n395), .CP(n472), .Q(lpc_dat_o[5])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_7_ ( .D(n393), .CP(n467), .Q(lpc_dat_o[7])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_16_ ( .D(n384), .CP(n465), .Q(lpc_dat_o[16])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_19_ ( .D(n381), .CP(n472), .Q(lpc_dat_o[19])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_9_ ( .D(n391), .CP(n465), .Q(lpc_dat_o[9])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_10_ ( .D(n390), .CP(n466), .Q(lpc_dat_o[10])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_11_ ( .D(n389), .CP(n468), .Q(lpc_dat_o[11])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_12_ ( .D(n388), .CP(n467), .Q(lpc_dat_o[12])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_13_ ( .D(n387), .CP(n469), .Q(lpc_dat_o[13])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_14_ ( .D(n386), .CP(n472), .Q(lpc_dat_o[14])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_24_ ( .D(n376), .CP(n468), .Q(lpc_dat_o[24])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_25_ ( .D(n375), .CP(n467), .Q(lpc_dat_o[25])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_26_ ( .D(n374), .CP(n469), .Q(lpc_dat_o[26])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_27_ ( .D(n373), .CP(n472), .Q(lpc_dat_o[27])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_29_ ( .D(n371), .CP(n469), .Q(lpc_dat_o[29])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_20_ ( .D(n363), .CP(n472), .Q(
        lpc_adr_reg[20]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_21_ ( .D(n355), .CP(n472), .Q(
        lpc_adr_reg[21]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_22_ ( .D(n347), .CP(n472), .Q(
        lpc_adr_reg[22]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_23_ ( .D(n339), .CP(n472), .Q(
        lpc_adr_reg[23]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_28_ ( .D(n361), .CP(n472), .Q(
        lpc_adr_reg[28]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_29_ ( .D(n353), .CP(n472), .Q(
        lpc_adr_reg[29]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_30_ ( .D(n345), .CP(n472), .Q(
        lpc_adr_reg[30]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_31_ ( .D(n337), .CP(n472), .Q(
        lpc_adr_reg[31]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_24_ ( .D(n362), .CP(clk_i), .Q(
        lpc_adr_reg[24]) );
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
  DFQD2BWP12T30P140 wbm_dat_o_reg_3_ ( .D(n285), .CP(n469), .Q(wbm_dat_o[3])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_2_ ( .D(n284), .CP(n469), .Q(wbm_dat_o[2])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_1_ ( .D(n283), .CP(n469), .Q(wbm_dat_o[1])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_0_ ( .D(n282), .CP(n469), .Q(wbm_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n445), .CP(n468), .Q(lpc_dat_i[26])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n444), .CP(n468), .Q(lpc_dat_i[25])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n437), .CP(n467), .Q(lpc_dat_i[18])
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
  DFQD2BWP12T30P140 wbm_adr_o_reg_3_ ( .D(n250), .CP(n468), .Q(wbm_adr_o[3])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_25_ ( .D(n354), .CP(n474), .Q(
        lpc_adr_reg[25]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_2_ ( .D(n249), .CP(n467), .Q(wbm_adr_o[2])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_1_ ( .D(n248), .CP(n469), .Q(wbm_adr_o[1])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n247), .CP(n472), .Q(wbm_adr_o[0])
         );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n333), .CP(n475), .Q(state[3]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_26_ ( .D(n346), .CP(n465), .Q(
        lpc_adr_reg[26]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_27_ ( .D(n338), .CP(n472), .Q(
        lpc_adr_reg[27]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_16_ ( .D(n364), .CP(n472), .Q(
        lpc_adr_reg[16]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_17_ ( .D(n356), .CP(n472), .Q(
        lpc_adr_reg[17]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_18_ ( .D(n348), .CP(n472), .Q(
        lpc_adr_reg[18]) );
  DFQD2BWP12T30P140 state_reg_5_ ( .D(n331), .CP(n475), .Q(state[5]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n335), .CP(n475), .Q(state[1]) );
  DFQD2BWP12T30P140 dma_xfr_reg ( .D(n404), .CP(n473), .Q(dma_xfr) );
  DFQD2BWP12T30P140 state_reg_8_ ( .D(n328), .CP(n471), .Q(state[8]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_31_ ( .D(n313), .CP(n471), .Q(wbm_dat_o[31])
         );
  DFQD2BWP12T30P140 wbm_sel_o_reg_1_ ( .D(n280), .CP(n465), .Q(wbm_sel_o[1])
         );
  DFQD2BWP12T30P140 lad_oe_reg ( .D(n405), .CP(n474), .Q(lad_oe) );
  DFQD2BWP12T30P140 state_reg_7_ ( .D(n329), .CP(n468), .Q(state[7]) );
  DFQD2BWP12T30P140 state_reg_13_ ( .D(n323), .CP(n475), .Q(state[13]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_0_ ( .D(n279), .CP(n465), .Q(wbm_sel_o[0])
         );
  DFQD2BWP12T30P140 got_ack_reg ( .D(n418), .CP(n474), .Q(got_ack) );
  DFQD2BWP12T30P140 fw_xfr_reg ( .D(n410), .CP(n475), .Q(fw_xfr) );
  DFQD2BWP12T30P140 state_reg_9_ ( .D(n327), .CP(n468), .Q(state[9]) );
  DFQD2BWP12T30P140 lpc_write_reg ( .D(n401), .CP(n470), .Q(lpc_write) );
  DFQD2BWP12T30P140 wbm_cyc_o_reg ( .D(n419), .CP(n474), .Q(wbm_stb_o) );
  DFQD2BWP12T30P140 state_reg_11_ ( .D(n325), .CP(n475), .Q(state[11]) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n318), .CP(n468), .Q(adr_cnt[0]) );
  DFQD2BWP12T30P140 adr_cnt_reg_2_ ( .D(n316), .CP(n465), .Q(adr_cnt[2]) );
  DFQD2BWP12T30P140 state_reg_6_ ( .D(n330), .CP(n474), .Q(state[6]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n336), .CP(n475), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n334), .CP(n466), .Q(state[2]) );
  DFQD2BWP12T30P140 wbm_we_o_reg ( .D(n452), .CP(n469), .Q(wbm_we_o) );
  DFQD2BWP12T30P140 state_reg_10_ ( .D(n326), .CP(n470), .Q(state[10]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_2_ ( .D(n281), .CP(n465), .Q(wbm_sel_o[3])
         );
  DFQD2BWP12T30P140 xfr_len_reg_1_ ( .D(n412), .CP(n465), .Q(xfr_len[1]) );
  DFQD2BWP12T30P140 state_reg_4_ ( .D(n332), .CP(n473), .Q(state[4]) );
  DFQD2BWP12T30P140 xfr_len_reg_0_ ( .D(n413), .CP(n474), .Q(xfr_len[0]) );
  DFQD2BWP12T30P140 xfr_len_reg_2_ ( .D(n411), .CP(n466), .Q(xfr_len[2]) );
  DFQD2BWP12T30P140 dat_cnt_reg_0_ ( .D(n322), .CP(n467), .Q(dat_cnt_0_) );
  DFQD2BWP12T30P140 dat_cnt_reg_1_ ( .D(n321), .CP(n469), .Q(byte_cnt[0]) );
  DFQD1BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n268), .CP(n474), .Q(wbm_adr_o[21])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n275), .CP(n465), .Q(wbm_adr_o[28])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_17_ ( .D(n383), .CP(n470), .Q(lpc_dat_o[17])
         );
  DFQD1BWP12T30P140 wbm_dat_o_reg_27_ ( .D(n309), .CP(n471), .Q(wbm_dat_o[27])
         );
  DFQD1BWP12T30P140 wbm_dat_o_reg_12_ ( .D(n294), .CP(n470), .Q(wbm_dat_o[12])
         );
  DFQD1BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n447), .CP(n468), .Q(lpc_dat_i[28])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_0_ ( .D(n400), .CP(n465), .Q(lpc_dat_o[0])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_15_ ( .D(n385), .CP(n466), .Q(lpc_dat_o[15])
         );
  DFQD1BWP12T30P140 lad_o_reg_2_ ( .D(n407), .CP(n466), .Q(lad_o[2]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_4_ ( .D(n286), .CP(n469), .Q(wbm_dat_o[4])
         );
  DFQD1BWP12T30P140 lad_o_reg_3_ ( .D(n406), .CP(n466), .Q(lad_o[3]) );
  DFQD1BWP12T30P140 state_reg_12_ ( .D(n324), .CP(clk_i), .Q(state[12]) );
  DFQD1BWP12T30P140 dat_cnt_reg_2_ ( .D(n320), .CP(n472), .Q(byte_cnt[1]) );
  DFQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n317), .CP(n467), .Q(adr_cnt[1]) );
  INVD0BWP12T30P140 U3 ( .I(nrst_i), .ZN(n215) );
  AOI31D0BWP12T30P140 U4 ( .A1(n32), .A2(n216), .A3(n60), .B(n215), .ZN(n211)
         );
  CKBD0BWP12T30P140 U5 ( .I(wbm_stb_o), .Z(wbm_cyc_o) );
  CKBD0BWP12T30P140 U6 ( .I(wbm_sel_o[3]), .Z(wbm_sel_o[2]) );
  NR2D0BWP12T30P140 U7 ( .A1(state[5]), .A2(state[2]), .ZN(n2) );
  NR3D0BWP12T30P140 U8 ( .A1(state[12]), .A2(state[13]), .A3(state[1]), .ZN(
        n22) );
  INVD0BWP12T30P140 U9 ( .I(state[9]), .ZN(n131) );
  ND2D0BWP12T30P140 U10 ( .A1(n22), .A2(n131), .ZN(n18) );
  NR3D0BWP12T30P140 U11 ( .A1(state[8]), .A2(state[11]), .A3(n18), .ZN(n79) );
  INR2D1BWP12T30P140 U12 ( .A1(n79), .B1(state[10]), .ZN(n84) );
  NR2D0BWP12T30P140 U13 ( .A1(state[6]), .A2(state[4]), .ZN(n11) );
  ND2D0BWP12T30P140 U14 ( .A1(n84), .A2(n11), .ZN(n1) );
  NR2D0BWP12T30P140 U15 ( .A1(state[3]), .A2(n1), .ZN(n4) );
  ND3D0BWP12T30P140 U16 ( .A1(n2), .A2(state[7]), .A3(n4), .ZN(n102) );
  INVD0BWP12T30P140 U17 ( .I(n102), .ZN(n32) );
  INVD0BWP12T30P140 U18 ( .I(state[0]), .ZN(n216) );
  INVD0BWP12T30P140 U19 ( .I(byte_cnt[2]), .ZN(n205) );
  INVD0BWP12T30P140 U20 ( .I(xfr_len[0]), .ZN(n175) );
  INVD0BWP12T30P140 U21 ( .I(byte_cnt[0]), .ZN(n187) );
  INVD0BWP12T30P140 U22 ( .I(xfr_len[1]), .ZN(n167) );
  INVD0BWP12T30P140 U23 ( .I(byte_cnt[1]), .ZN(n142) );
  AOI22D0BWP12T30P140 U24 ( .A1(byte_cnt[1]), .A2(xfr_len[1]), .B1(n167), .B2(
        n142), .ZN(n59) );
  AOI221D0BWP12T30P140 U25 ( .A1(byte_cnt[0]), .A2(n175), .B1(n187), .B2(
        xfr_len[0]), .C(n59), .ZN(n3) );
  ND2D0BWP12T30P140 U26 ( .A1(xfr_len[2]), .A2(n205), .ZN(n55) );
  OAI211D0BWP12T30P140 U27 ( .A1(xfr_len[2]), .A2(n205), .B(n3), .C(n55), .ZN(
        n99) );
  INVD0BWP12T30P140 U28 ( .I(lpc_write), .ZN(n461) );
  ND4D0BWP12T30P140 U29 ( .A1(n461), .A2(n142), .A3(n187), .A4(n205), .ZN(n49)
         );
  OAI21D0BWP12T30P140 U30 ( .A1(n99), .A2(n461), .B(n49), .ZN(n60) );
  CKBD0BWP12T30P140 U31 ( .I(n211), .Z(n243) );
  ND3D0BWP12T30P140 U32 ( .A1(n243), .A2(wbm_ack_i), .A3(wbm_stb_o), .ZN(n245)
         );
  NR2D0BWP12T30P140 U33 ( .A1(wbm_we_o), .A2(n245), .ZN(n43) );
  CKBD0BWP12T30P140 U34 ( .I(n43), .Z(n34) );
  NR2D0BWP12T30P140 U35 ( .A1(n34), .A2(n215), .ZN(n33) );
  CKBD0BWP12T30P140 U36 ( .I(n33), .Z(n42) );
  AO22D0BWP12T30P140 U37 ( .A1(lpc_dat_i[28]), .A2(n42), .B1(n34), .B2(
        wbm_dat_i[28]), .Z(n447) );
  AO22D0BWP12T30P140 U38 ( .A1(lpc_dat_i[23]), .A2(n42), .B1(n34), .B2(
        wbm_dat_i[23]), .Z(n442) );
  AO22D0BWP12T30P140 U39 ( .A1(lpc_dat_i[20]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[20]), .Z(n439) );
  AO22D0BWP12T30P140 U40 ( .A1(lpc_dat_i[15]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[15]), .Z(n434) );
  AO22D0BWP12T30P140 U41 ( .A1(lpc_dat_i[31]), .A2(n42), .B1(n34), .B2(
        wbm_dat_i[31]), .Z(n450) );
  AO22D0BWP12T30P140 U42 ( .A1(lpc_dat_i[7]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[7]), .Z(n425) );
  AO22D0BWP12T30P140 U43 ( .A1(lpc_dat_i[4]), .A2(n42), .B1(n34), .B2(
        wbm_dat_i[4]), .Z(n422) );
  AO22D0BWP12T30P140 U44 ( .A1(lpc_dat_i[0]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[0]), .Z(n451) );
  AO22D0BWP12T30P140 U45 ( .A1(lpc_dat_i[27]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[27]), .Z(n446) );
  AO22D0BWP12T30P140 U46 ( .A1(lpc_dat_i[24]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[24]), .Z(n443) );
  AO22D0BWP12T30P140 U47 ( .A1(lpc_dat_i[19]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[19]), .Z(n438) );
  AO22D0BWP12T30P140 U48 ( .A1(lpc_dat_i[16]), .A2(n42), .B1(n43), .B2(
        wbm_dat_i[16]), .Z(n435) );
  AO22D0BWP12T30P140 U49 ( .A1(lpc_dat_i[11]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[11]), .Z(n430) );
  AO22D0BWP12T30P140 U50 ( .A1(lpc_dat_i[8]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[8]), .Z(n427) );
  AO22D0BWP12T30P140 U51 ( .A1(lpc_dat_i[3]), .A2(n33), .B1(n43), .B2(
        wbm_dat_i[3]), .Z(n421) );
  ND2D0BWP12T30P140 U52 ( .A1(nrst_i), .A2(lad_i[0]), .ZN(n222) );
  NR2D0BWP12T30P140 U53 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .ZN(n69) );
  INVD0BWP12T30P140 U54 ( .I(state[7]), .ZN(n117) );
  ND2D0BWP12T30P140 U55 ( .A1(n4), .A2(n117), .ZN(n10) );
  INVD0BWP12T30P140 U56 ( .I(state[5]), .ZN(n97) );
  NR3D0BWP12T30P140 U57 ( .A1(state[2]), .A2(n10), .A3(n97), .ZN(n115) );
  ND3D0BWP12T30P140 U58 ( .A1(n205), .A2(n216), .A3(n115), .ZN(n6) );
  NR2D0BWP12T30P140 U59 ( .A1(byte_cnt[0]), .A2(n6), .ZN(n200) );
  AO21D0BWP12T30P140 U60 ( .A1(n69), .A2(n200), .B(n215), .Z(n5) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n222), .A2(n5), .B1(n5), .B2(lpc_dat_o[0]), 
        .ZN(n400) );
  ND2D0BWP12T30P140 U62 ( .A1(nrst_i), .A2(lad_i[1]), .ZN(n457) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n457), .A2(n5), .B1(n5), .B2(lpc_dat_o[1]), 
        .ZN(n399) );
  ND2D0BWP12T30P140 U64 ( .A1(nrst_i), .A2(lad_i[2]), .ZN(n201) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n201), .A2(n5), .B1(n5), .B2(lpc_dat_o[2]), 
        .ZN(n398) );
  AO22D0BWP12T30P140 U66 ( .A1(lpc_dat_i[12]), .A2(n42), .B1(n34), .B2(
        wbm_dat_i[12]), .Z(n431) );
  ND2D0BWP12T30P140 U67 ( .A1(nrst_i), .A2(lad_i[3]), .ZN(n246) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n246), .A2(n5), .B1(n5), .B2(lpc_dat_o[3]), 
        .ZN(n397) );
  INVD0BWP12T30P140 U69 ( .I(dat_cnt_0_), .ZN(n185) );
  NR2D0BWP12T30P140 U70 ( .A1(byte_cnt[1]), .A2(n185), .ZN(n139) );
  AO21D0BWP12T30P140 U71 ( .A1(n139), .A2(n200), .B(n215), .Z(n198) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n222), .A2(n198), .B1(n198), .B2(lpc_dat_o[4]), .ZN(n396) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n457), .A2(n198), .B1(n198), .B2(lpc_dat_o[5]), .ZN(n395) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n246), .A2(n198), .B1(n198), .B2(lpc_dat_o[7]), .ZN(n393) );
  NR2D0BWP12T30P140 U75 ( .A1(dat_cnt_0_), .A2(n142), .ZN(n138) );
  AO21D0BWP12T30P140 U76 ( .A1(n138), .A2(n200), .B(n215), .Z(n199) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n222), .A2(n199), .B1(n199), .B2(
        lpc_dat_o[16]), .ZN(n384) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n246), .A2(n199), .B1(n199), .B2(
        lpc_dat_o[19]), .ZN(n381) );
  NR2D0BWP12T30P140 U79 ( .A1(n187), .A2(n6), .ZN(n9) );
  AO21D0BWP12T30P140 U80 ( .A1(n69), .A2(n9), .B(n215), .Z(n221) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n457), .A2(n221), .B1(n221), .B2(lpc_dat_o[9]), .ZN(n391) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n201), .A2(n221), .B1(n221), .B2(
        lpc_dat_o[10]), .ZN(n390) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n246), .A2(n221), .B1(n221), .B2(
        lpc_dat_o[11]), .ZN(n389) );
  AO21D0BWP12T30P140 U84 ( .A1(n139), .A2(n9), .B(n215), .Z(n7) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n222), .A2(n7), .B1(n7), .B2(lpc_dat_o[12]), 
        .ZN(n388) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n457), .A2(n7), .B1(n7), .B2(lpc_dat_o[13]), 
        .ZN(n387) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n201), .A2(n7), .B1(n7), .B2(lpc_dat_o[14]), 
        .ZN(n386) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n246), .A2(n7), .B1(n7), .B2(lpc_dat_o[15]), 
        .ZN(n385) );
  AO21D0BWP12T30P140 U89 ( .A1(n138), .A2(n9), .B(n215), .Z(n8) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n222), .A2(n8), .B1(n8), .B2(lpc_dat_o[24]), 
        .ZN(n376) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n457), .A2(n8), .B1(n8), .B2(lpc_dat_o[25]), 
        .ZN(n375) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n201), .A2(n8), .B1(n8), .B2(lpc_dat_o[26]), 
        .ZN(n374) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n246), .A2(n8), .B1(n8), .B2(lpc_dat_o[27]), 
        .ZN(n373) );
  NR2D0BWP12T30P140 U94 ( .A1(n142), .A2(n185), .ZN(n204) );
  AO21D0BWP12T30P140 U95 ( .A1(n204), .A2(n9), .B(n215), .Z(n202) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n457), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[29]), .ZN(n371) );
  INVD0BWP12T30P140 U97 ( .I(state[2]), .ZN(n155) );
  NR3D0BWP12T30P140 U98 ( .A1(state[5]), .A2(n155), .A3(n10), .ZN(n152) );
  INVD0BWP12T30P140 U99 ( .I(n222), .ZN(n165) );
  ND2D0BWP12T30P140 U100 ( .A1(n152), .A2(n165), .ZN(n231) );
  INVD0BWP12T30P140 U101 ( .I(n152), .ZN(n170) );
  NR2D0BWP12T30P140 U102 ( .A1(state[0]), .A2(n170), .ZN(n226) );
  INVD0BWP12T30P140 U103 ( .I(adr_cnt[0]), .ZN(n191) );
  ND2D0BWP12T30P140 U104 ( .A1(n226), .A2(n191), .ZN(n196) );
  NR2D0BWP12T30P140 U105 ( .A1(adr_cnt[2]), .A2(n196), .ZN(n13) );
  INR4D0BWP12T30P140 U106 ( .A1(n84), .B1(state[2]), .B2(state[5]), .B3(
        state[7]), .ZN(n16) );
  ND3D0BWP12T30P140 U107 ( .A1(state[3]), .A2(n11), .A3(n16), .ZN(n168) );
  OAI21D0BWP12T30P140 U108 ( .A1(state[0]), .A2(n168), .B(nrst_i), .ZN(n224)
         );
  AO21D0BWP12T30P140 U109 ( .A1(adr_cnt[1]), .A2(n13), .B(n224), .Z(n12) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n231), .A2(n12), .B1(n12), .B2(
        lpc_adr_reg[20]), .ZN(n363) );
  OR2D0BWP12T30P140 U111 ( .A1(n457), .A2(n170), .Z(n232) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n232), .A2(n12), .B1(n12), .B2(
        lpc_adr_reg[21]), .ZN(n355) );
  OR2D0BWP12T30P140 U113 ( .A1(n201), .A2(n170), .Z(n233) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n233), .A2(n12), .B1(n12), .B2(
        lpc_adr_reg[22]), .ZN(n347) );
  INVD0BWP12T30P140 U115 ( .I(n246), .ZN(n90) );
  ND2D0BWP12T30P140 U116 ( .A1(n152), .A2(n90), .ZN(n235) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n235), .A2(n12), .B1(n12), .B2(
        lpc_adr_reg[23]), .ZN(n339) );
  INVD0BWP12T30P140 U118 ( .I(adr_cnt[1]), .ZN(n195) );
  AO21D0BWP12T30P140 U119 ( .A1(n13), .A2(n195), .B(n224), .Z(n14) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n231), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[28]), .ZN(n361) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n232), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[29]), .ZN(n353) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n233), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[30]), .ZN(n345) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n235), .A2(n14), .B1(n14), .B2(
        lpc_adr_reg[31]), .ZN(n337) );
  NR2D0BWP12T30P140 U124 ( .A1(adr_cnt[2]), .A2(n191), .ZN(n15) );
  AO31D0BWP12T30P140 U125 ( .A1(n226), .A2(n15), .A3(n195), .B(n224), .Z(n92)
         );
  MAOI22D0BWP12T30P140 U126 ( .A1(n231), .A2(n92), .B1(n92), .B2(
        lpc_adr_reg[24]), .ZN(n362) );
  NR2D0BWP12T30P140 U127 ( .A1(n215), .A2(n216), .ZN(n336) );
  INVD0BWP12T30P140 U128 ( .I(state[6]), .ZN(n85) );
  INVD0BWP12T30P140 U129 ( .I(state[3]), .ZN(n91) );
  ND2D0BWP12T30P140 U130 ( .A1(n16), .A2(n91), .ZN(n86) );
  NR3D0BWP12T30P140 U131 ( .A1(state[4]), .A2(n85), .A3(n86), .ZN(n127) );
  INVD0BWP12T30P140 U132 ( .I(n336), .ZN(n164) );
  INVD0BWP12T30P140 U133 ( .I(state[8]), .ZN(n103) );
  ND3D0BWP12T30P140 U134 ( .A1(n97), .A2(n155), .A3(n117), .ZN(n17) );
  NR4D0BWP12T30P140 U135 ( .A1(state[3]), .A2(state[6]), .A3(state[4]), .A4(
        n17), .ZN(n83) );
  INR2D1BWP12T30P140 U136 ( .A1(n83), .B1(state[10]), .ZN(n20) );
  IND2D1BWP12T30P140 U137 ( .A1(n18), .B1(n20), .ZN(n19) );
  NR3D0BWP12T30P140 U138 ( .A1(state[11]), .A2(n103), .A3(n19), .ZN(n119) );
  IND3D1BWP12T30P140 U139 ( .A1(n19), .B1(state[11]), .B2(n103), .ZN(n61) );
  INVD0BWP12T30P140 U140 ( .I(n61), .ZN(n129) );
  NR2D0BWP12T30P140 U141 ( .A1(n119), .A2(n129), .ZN(n107) );
  INVD0BWP12T30P140 U142 ( .I(state[13]), .ZN(n121) );
  NR2D0BWP12T30P140 U143 ( .A1(state[8]), .A2(state[11]), .ZN(n21) );
  ND2D0BWP12T30P140 U144 ( .A1(n21), .A2(n20), .ZN(n23) );
  NR2D0BWP12T30P140 U145 ( .A1(state[9]), .A2(n23), .ZN(n80) );
  INVD0BWP12T30P140 U146 ( .I(state[12]), .ZN(n101) );
  ND2D0BWP12T30P140 U147 ( .A1(n80), .A2(n101), .ZN(n82) );
  IND3D1BWP12T30P140 U148 ( .A1(n23), .B1(state[9]), .B2(n22), .ZN(n106) );
  OAI31D0BWP12T30P140 U149 ( .A1(state[1]), .A2(n121), .A3(n82), .B(n106), 
        .ZN(n159) );
  NR2D0BWP12T30P140 U150 ( .A1(n215), .A2(n159), .ZN(n38) );
  ND2D0BWP12T30P140 U151 ( .A1(n107), .A2(n38), .ZN(n88) );
  AOI32D0BWP12T30P140 U152 ( .A1(n127), .A2(n164), .A3(n205), .B1(n88), .B2(
        n164), .ZN(n63) );
  INVD0BWP12T30P140 U153 ( .I(n63), .ZN(n76) );
  AOI22D0BWP12T30P140 U154 ( .A1(n204), .A2(lpc_dat_i[30]), .B1(n138), .B2(
        lpc_dat_i[26]), .ZN(n25) );
  AOI22D0BWP12T30P140 U155 ( .A1(n139), .A2(lpc_dat_i[14]), .B1(n69), .B2(
        lpc_dat_i[10]), .ZN(n24) );
  ND2D0BWP12T30P140 U156 ( .A1(n127), .A2(byte_cnt[0]), .ZN(n70) );
  AOI21D0BWP12T30P140 U157 ( .A1(n25), .A2(n24), .B(n70), .ZN(n30) );
  AOI22D0BWP12T30P140 U158 ( .A1(n204), .A2(lpc_dat_i[22]), .B1(n138), .B2(
        lpc_dat_i[18]), .ZN(n27) );
  AOI22D0BWP12T30P140 U159 ( .A1(n139), .A2(lpc_dat_i[6]), .B1(n69), .B2(
        lpc_dat_i[2]), .ZN(n26) );
  ND2D0BWP12T30P140 U160 ( .A1(n127), .A2(n187), .ZN(n66) );
  AOI21D0BWP12T30P140 U161 ( .A1(n27), .A2(n26), .B(n66), .ZN(n29) );
  IND2D1BWP12T30P140 U162 ( .A1(got_ack), .B1(n60), .ZN(n128) );
  INVD0BWP12T30P140 U163 ( .I(fw_xfr), .ZN(n169) );
  OAI21D0BWP12T30P140 U164 ( .A1(n461), .A2(n169), .B(n119), .ZN(n28) );
  OAI21D0BWP12T30P140 U165 ( .A1(n128), .A2(n61), .B(n28), .ZN(n133) );
  INVD0BWP12T30P140 U166 ( .I(n38), .ZN(n62) );
  NR4D0BWP12T30P140 U167 ( .A1(n30), .A2(n29), .A3(n133), .A4(n62), .ZN(n31)
         );
  MAOI22D0BWP12T30P140 U168 ( .A1(n76), .A2(n31), .B1(lad_o[2]), .B2(n76), 
        .ZN(n407) );
  AO22D0BWP12T30P140 U169 ( .A1(n43), .A2(wbm_dat_i[30]), .B1(n42), .B2(
        lpc_dat_i[30]), .Z(n449) );
  AO22D0BWP12T30P140 U170 ( .A1(n34), .A2(wbm_dat_i[29]), .B1(n42), .B2(
        lpc_dat_i[29]), .Z(n448) );
  AO22D0BWP12T30P140 U171 ( .A1(n34), .A2(wbm_dat_i[22]), .B1(n42), .B2(
        lpc_dat_i[22]), .Z(n441) );
  AO22D0BWP12T30P140 U172 ( .A1(n34), .A2(wbm_dat_i[21]), .B1(n42), .B2(
        lpc_dat_i[21]), .Z(n440) );
  AO22D0BWP12T30P140 U173 ( .A1(n43), .A2(wbm_dat_i[14]), .B1(n42), .B2(
        lpc_dat_i[14]), .Z(n433) );
  AO22D0BWP12T30P140 U174 ( .A1(n34), .A2(wbm_dat_i[13]), .B1(n33), .B2(
        lpc_dat_i[13]), .Z(n432) );
  AO22D0BWP12T30P140 U175 ( .A1(n43), .A2(wbm_dat_i[6]), .B1(n42), .B2(
        lpc_dat_i[6]), .Z(n424) );
  AO22D0BWP12T30P140 U176 ( .A1(n34), .A2(wbm_dat_i[5]), .B1(n33), .B2(
        lpc_dat_i[5]), .Z(n423) );
  ND2D0BWP12T30P140 U177 ( .A1(nrst_i), .A2(n216), .ZN(n181) );
  INVD0BWP12T30P140 U178 ( .I(n181), .ZN(n140) );
  ND3D0BWP12T30P140 U179 ( .A1(n60), .A2(n140), .A3(n32), .ZN(n158) );
  INVD0BWP12T30P140 U180 ( .I(n158), .ZN(n214) );
  CKBD0BWP12T30P140 U181 ( .I(n243), .Z(n213) );
  AO22D0BWP12T30P140 U182 ( .A1(lpc_dat_o[10]), .A2(n214), .B1(n213), .B2(
        wbm_dat_o[10]), .Z(n292) );
  CKBD0BWP12T30P140 U183 ( .I(n214), .Z(n194) );
  AO22D0BWP12T30P140 U184 ( .A1(lpc_dat_o[9]), .A2(n194), .B1(n213), .B2(
        wbm_dat_o[9]), .Z(n291) );
  AO22D0BWP12T30P140 U185 ( .A1(lpc_dat_o[8]), .A2(n194), .B1(n213), .B2(
        wbm_dat_o[8]), .Z(n290) );
  AO22D0BWP12T30P140 U186 ( .A1(lpc_dat_o[7]), .A2(n214), .B1(n213), .B2(
        wbm_dat_o[7]), .Z(n289) );
  CKBD0BWP12T30P140 U187 ( .I(n211), .Z(n193) );
  AO22D0BWP12T30P140 U188 ( .A1(lpc_dat_o[6]), .A2(n194), .B1(n193), .B2(
        wbm_dat_o[6]), .Z(n288) );
  AO22D0BWP12T30P140 U189 ( .A1(lpc_dat_o[5]), .A2(n214), .B1(n193), .B2(
        wbm_dat_o[5]), .Z(n287) );
  CKBD0BWP12T30P140 U190 ( .I(n214), .Z(n244) );
  AO22D0BWP12T30P140 U191 ( .A1(lpc_dat_o[4]), .A2(n244), .B1(n193), .B2(
        wbm_dat_o[4]), .Z(n286) );
  AO22D0BWP12T30P140 U192 ( .A1(lpc_dat_o[3]), .A2(n194), .B1(n193), .B2(
        wbm_dat_o[3]), .Z(n285) );
  AO22D0BWP12T30P140 U193 ( .A1(lpc_dat_o[2]), .A2(n214), .B1(n193), .B2(
        wbm_dat_o[2]), .Z(n284) );
  CKBD0BWP12T30P140 U194 ( .I(n214), .Z(n212) );
  AO22D0BWP12T30P140 U195 ( .A1(lpc_dat_o[1]), .A2(n212), .B1(n193), .B2(
        wbm_dat_o[1]), .Z(n283) );
  AO22D0BWP12T30P140 U196 ( .A1(lpc_dat_o[0]), .A2(n244), .B1(n193), .B2(
        wbm_dat_o[0]), .Z(n282) );
  AO22D0BWP12T30P140 U197 ( .A1(n34), .A2(wbm_dat_i[26]), .B1(n42), .B2(
        lpc_dat_i[26]), .Z(n445) );
  AO22D0BWP12T30P140 U198 ( .A1(n34), .A2(wbm_dat_i[25]), .B1(n42), .B2(
        lpc_dat_i[25]), .Z(n444) );
  AO22D0BWP12T30P140 U199 ( .A1(n34), .A2(wbm_dat_i[18]), .B1(n42), .B2(
        lpc_dat_i[18]), .Z(n437) );
  AO22D0BWP12T30P140 U200 ( .A1(n34), .A2(wbm_dat_i[17]), .B1(n33), .B2(
        lpc_dat_i[17]), .Z(n436) );
  AO22D0BWP12T30P140 U201 ( .A1(n34), .A2(wbm_dat_i[10]), .B1(n33), .B2(
        lpc_dat_i[10]), .Z(n429) );
  AO22D0BWP12T30P140 U202 ( .A1(n43), .A2(wbm_dat_i[9]), .B1(n42), .B2(
        lpc_dat_i[9]), .Z(n428) );
  AO22D0BWP12T30P140 U203 ( .A1(n34), .A2(wbm_dat_i[1]), .B1(n33), .B2(
        lpc_dat_i[1]), .Z(n426) );
  AOI22D0BWP12T30P140 U204 ( .A1(n204), .A2(lpc_dat_i[29]), .B1(n138), .B2(
        lpc_dat_i[25]), .ZN(n36) );
  AOI22D0BWP12T30P140 U205 ( .A1(n139), .A2(lpc_dat_i[13]), .B1(n69), .B2(
        lpc_dat_i[9]), .ZN(n35) );
  AOI21D0BWP12T30P140 U206 ( .A1(n36), .A2(n35), .B(n70), .ZN(n41) );
  AOI22D0BWP12T30P140 U207 ( .A1(n204), .A2(lpc_dat_i[21]), .B1(n138), .B2(
        lpc_dat_i[17]), .ZN(n39) );
  AOI22D0BWP12T30P140 U208 ( .A1(n139), .A2(lpc_dat_i[5]), .B1(n69), .B2(
        lpc_dat_i[1]), .ZN(n37) );
  AOI32D0BWP12T30P140 U209 ( .A1(n39), .A2(n38), .A3(n37), .B1(n66), .B2(n38), 
        .ZN(n40) );
  OA32D0BWP12T30P140 U210 ( .A1(n63), .A2(n41), .A3(n40), .B1(lad_o[1]), .B2(
        n76), .Z(n408) );
  AO22D0BWP12T30P140 U211 ( .A1(n43), .A2(wbm_dat_i[2]), .B1(n42), .B2(
        lpc_dat_i[2]), .Z(n420) );
  AOI22D0BWP12T30P140 U212 ( .A1(n204), .A2(lpc_dat_i[28]), .B1(n138), .B2(
        lpc_dat_i[24]), .ZN(n45) );
  AOI22D0BWP12T30P140 U213 ( .A1(n139), .A2(lpc_dat_i[12]), .B1(n69), .B2(
        lpc_dat_i[8]), .ZN(n44) );
  AOI21D0BWP12T30P140 U214 ( .A1(n45), .A2(n44), .B(n70), .ZN(n51) );
  AOI22D0BWP12T30P140 U215 ( .A1(n204), .A2(lpc_dat_i[20]), .B1(n138), .B2(
        lpc_dat_i[16]), .ZN(n47) );
  AOI22D0BWP12T30P140 U216 ( .A1(n139), .A2(lpc_dat_i[4]), .B1(n69), .B2(
        lpc_dat_i[0]), .ZN(n46) );
  AOI21D0BWP12T30P140 U217 ( .A1(n47), .A2(n46), .B(n66), .ZN(n50) );
  NR2D0BWP12T30P140 U218 ( .A1(xfr_len[1]), .A2(xfr_len[2]), .ZN(n105) );
  ND2D0BWP12T30P140 U219 ( .A1(n129), .A2(dma_xfr), .ZN(n48) );
  AOI211D0BWP12T30P140 U220 ( .A1(xfr_len[0]), .A2(n105), .B(n49), .C(n48), 
        .ZN(n75) );
  NR4D0BWP12T30P140 U221 ( .A1(n51), .A2(n50), .A3(n75), .A4(n133), .ZN(n65)
         );
  NR2D0BWP12T30P140 U222 ( .A1(xfr_len[1]), .A2(n142), .ZN(n56) );
  ND2D0BWP12T30P140 U223 ( .A1(byte_cnt[0]), .A2(xfr_len[0]), .ZN(n54) );
  NR2D0BWP12T30P140 U224 ( .A1(xfr_len[2]), .A2(n205), .ZN(n52) );
  AOI21D0BWP12T30P140 U225 ( .A1(n56), .A2(n55), .B(n52), .ZN(n53) );
  OAI211D0BWP12T30P140 U226 ( .A1(n56), .A2(n55), .B(n54), .C(n53), .ZN(n57)
         );
  AOI21D0BWP12T30P140 U227 ( .A1(n187), .A2(n59), .B(n57), .ZN(n58) );
  OAI21D0BWP12T30P140 U228 ( .A1(xfr_len[0]), .A2(n59), .B(n58), .ZN(n132) );
  INVD0BWP12T30P140 U229 ( .I(n132), .ZN(n136) );
  AOI211D0BWP12T30P140 U230 ( .A1(n136), .A2(n461), .B(n61), .C(n60), .ZN(n64)
         );
  AOI211D0BWP12T30P140 U231 ( .A1(dma_xfr), .A2(n64), .B(n63), .C(n62), .ZN(
        n77) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n65), .A2(n77), .B1(n76), .B2(lad_o[0]), 
        .ZN(n409) );
  AOI22D0BWP12T30P140 U233 ( .A1(n204), .A2(lpc_dat_i[23]), .B1(n138), .B2(
        lpc_dat_i[19]), .ZN(n68) );
  AOI22D0BWP12T30P140 U234 ( .A1(n139), .A2(lpc_dat_i[7]), .B1(n69), .B2(
        lpc_dat_i[3]), .ZN(n67) );
  AOI21D0BWP12T30P140 U235 ( .A1(n68), .A2(n67), .B(n66), .ZN(n74) );
  AOI22D0BWP12T30P140 U236 ( .A1(n204), .A2(lpc_dat_i[31]), .B1(n138), .B2(
        lpc_dat_i[27]), .ZN(n72) );
  AOI22D0BWP12T30P140 U237 ( .A1(n139), .A2(lpc_dat_i[15]), .B1(n69), .B2(
        lpc_dat_i[11]), .ZN(n71) );
  AOI21D0BWP12T30P140 U238 ( .A1(n72), .A2(n71), .B(n70), .ZN(n73) );
  AOI211D0BWP12T30P140 U239 ( .A1(n75), .A2(got_ack), .B(n74), .C(n73), .ZN(
        n78) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n78), .A2(n77), .B1(n76), .B2(lad_o[3]), 
        .ZN(n406) );
  AO22D0BWP12T30P140 U241 ( .A1(n194), .A2(lpc_adr_reg[3]), .B1(n193), .B2(
        wbm_adr_o[3]), .Z(n250) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n232), .A2(n92), .B1(n92), .B2(
        lpc_adr_reg[25]), .ZN(n354) );
  AO22D0BWP12T30P140 U243 ( .A1(n194), .A2(lpc_adr_reg[2]), .B1(n213), .B2(
        wbm_adr_o[2]), .Z(n249) );
  AO22D0BWP12T30P140 U244 ( .A1(n194), .A2(lpc_adr_reg[1]), .B1(n211), .B2(
        wbm_adr_o[1]), .Z(n248) );
  AO22D0BWP12T30P140 U245 ( .A1(n244), .A2(lpc_adr_reg[0]), .B1(n193), .B2(
        wbm_adr_o[0]), .Z(n247) );
  ND3D0BWP12T30P140 U246 ( .A1(state[10]), .A2(n79), .A3(n83), .ZN(n108) );
  NR2D0BWP12T30P140 U247 ( .A1(state[13]), .A2(state[1]), .ZN(n81) );
  ND3D0BWP12T30P140 U248 ( .A1(state[12]), .A2(n81), .A3(n80), .ZN(n93) );
  ND3D0BWP12T30P140 U249 ( .A1(n108), .A2(n93), .A3(n102), .ZN(n89) );
  INVD0BWP12T30P140 U250 ( .I(state[1]), .ZN(n98) );
  OR3D0BWP12T30P140 U251 ( .A1(state[13]), .A2(n98), .A3(n82), .Z(n453) );
  ND2D0BWP12T30P140 U252 ( .A1(n170), .A2(n453), .ZN(n137) );
  ND2D0BWP12T30P140 U253 ( .A1(n84), .A2(n83), .ZN(n455) );
  INVD0BWP12T30P140 U254 ( .I(n455), .ZN(n237) );
  INVD0BWP12T30P140 U255 ( .I(n127), .ZN(n147) );
  INVD0BWP12T30P140 U256 ( .I(n115), .ZN(n94) );
  ND2D0BWP12T30P140 U257 ( .A1(n147), .A2(n94), .ZN(n184) );
  NR2D0BWP12T30P140 U258 ( .A1(n237), .A2(n184), .ZN(n182) );
  IND3D1BWP12T30P140 U259 ( .A1(n86), .B1(state[4]), .B2(n85), .ZN(n160) );
  IND4D1BWP12T30P140 U260 ( .A1(n137), .B1(n182), .B2(n168), .B3(n160), .ZN(
        n87) );
  OAI31D0BWP12T30P140 U261 ( .A1(n89), .A2(n88), .A3(n87), .B(n164), .ZN(n173)
         );
  INVD0BWP12T30P140 U262 ( .I(n173), .ZN(n156) );
  NR2D0BWP12T30P140 U263 ( .A1(state[0]), .A2(n453), .ZN(n459) );
  ND2D0BWP12T30P140 U264 ( .A1(n90), .A2(n459), .ZN(n239) );
  OAI21D0BWP12T30P140 U265 ( .A1(n156), .A2(n91), .B(n239), .ZN(n333) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n233), .A2(n92), .B1(n92), .B2(
        lpc_adr_reg[26]), .ZN(n346) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n235), .A2(n92), .B1(n92), .B2(
        lpc_adr_reg[27]), .ZN(n338) );
  INVD0BWP12T30P140 U268 ( .I(n226), .ZN(n229) );
  INVD0BWP12T30P140 U269 ( .I(adr_cnt[2]), .ZN(n223) );
  ND3D0BWP12T30P140 U270 ( .A1(n223), .A2(adr_cnt[1]), .A3(adr_cnt[0]), .ZN(
        n146) );
  INVD0BWP12T30P140 U271 ( .I(n224), .ZN(n228) );
  OAI21D0BWP12T30P140 U272 ( .A1(n229), .A2(n146), .B(n228), .ZN(n192) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n231), .A2(n192), .B1(n192), .B2(
        lpc_adr_reg[16]), .ZN(n364) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n232), .A2(n192), .B1(n192), .B2(
        lpc_adr_reg[17]), .ZN(n356) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n233), .A2(n192), .B1(n192), .B2(
        lpc_adr_reg[18]), .ZN(n348) );
  ND3D0BWP12T30P140 U276 ( .A1(adr_cnt[0]), .A2(adr_cnt[2]), .A3(adr_cnt[1]), 
        .ZN(n230) );
  OAI31D0BWP12T30P140 U277 ( .A1(fw_xfr), .A2(n170), .A3(n230), .B(n160), .ZN(
        n114) );
  AOI21D0BWP12T30P140 U278 ( .A1(fw_xfr), .A2(n132), .B(n185), .ZN(n148) );
  OAI21D0BWP12T30P140 U279 ( .A1(n148), .A2(n94), .B(n93), .ZN(n95) );
  AOI21D0BWP12T30P140 U280 ( .A1(lpc_write), .A2(n114), .B(n95), .ZN(n96) );
  NR2D0BWP12T30P140 U281 ( .A1(n215), .A2(n173), .ZN(n172) );
  INVD0BWP12T30P140 U282 ( .I(n172), .ZN(n153) );
  OAI22D0BWP12T30P140 U283 ( .A1(n156), .A2(n97), .B1(n96), .B2(n153), .ZN(
        n331) );
  NR2D0BWP12T30P140 U284 ( .A1(lad_i[0]), .A2(lad_i[1]), .ZN(n174) );
  NR2D0BWP12T30P140 U285 ( .A1(lad_i[3]), .A2(lad_i[2]), .ZN(n163) );
  ND4D0BWP12T30P140 U286 ( .A1(n237), .A2(n174), .A3(lframe_i), .A4(n163), 
        .ZN(n124) );
  OAI22D0BWP12T30P140 U287 ( .A1(n156), .A2(n98), .B1(n153), .B2(n124), .ZN(
        n335) );
  ND2D0BWP12T30P140 U288 ( .A1(lpc_write), .A2(n172), .ZN(n130) );
  INVD0BWP12T30P140 U289 ( .I(n130), .ZN(n118) );
  ND2D0BWP12T30P140 U290 ( .A1(n118), .A2(n99), .ZN(n100) );
  OAI22D0BWP12T30P140 U291 ( .A1(n156), .A2(n101), .B1(n108), .B2(n100), .ZN(
        n324) );
  OAI22D0BWP12T30P140 U292 ( .A1(n156), .A2(n103), .B1(n102), .B2(n153), .ZN(
        n328) );
  AO22D0BWP12T30P140 U293 ( .A1(lpc_dat_o[31]), .A2(n244), .B1(n211), .B2(
        wbm_dat_o[31]), .Z(n313) );
  AOI211D0BWP12T30P140 U294 ( .A1(xfr_len[1]), .A2(xfr_len[2]), .B(xfr_len[0]), 
        .C(n158), .ZN(n104) );
  INVD0BWP12T30P140 U295 ( .I(n104), .ZN(n241) );
  NR2D0BWP12T30P140 U296 ( .A1(n104), .A2(n215), .ZN(n242) );
  MOAI22D0BWP12T30P140 U297 ( .A1(n105), .A2(n241), .B1(wbm_sel_o[1]), .B2(
        n242), .ZN(n280) );
  ND3D0BWP12T30P140 U298 ( .A1(n107), .A2(n147), .A3(n106), .ZN(n109) );
  INVD0BWP12T30P140 U299 ( .I(n109), .ZN(n113) );
  INVD0BWP12T30P140 U300 ( .I(n108), .ZN(n110) );
  ND2D0BWP12T30P140 U301 ( .A1(n237), .A2(lframe_i), .ZN(n122) );
  OAI21D0BWP12T30P140 U302 ( .A1(state[0]), .A2(n122), .B(nrst_i), .ZN(n161)
         );
  AOI221D0BWP12T30P140 U303 ( .A1(n110), .A2(n216), .B1(n109), .B2(n216), .C(
        n161), .ZN(n112) );
  ND2D0BWP12T30P140 U304 ( .A1(n112), .A2(lad_oe), .ZN(n111) );
  OAI31D0BWP12T30P140 U305 ( .A1(n113), .A2(n112), .A3(n215), .B(n111), .ZN(
        n405) );
  AOI22D0BWP12T30P140 U306 ( .A1(n148), .A2(n115), .B1(n461), .B2(n114), .ZN(
        n116) );
  OAI22D0BWP12T30P140 U307 ( .A1(n156), .A2(n117), .B1(n116), .B2(n153), .ZN(
        n329) );
  ND3D0BWP12T30P140 U308 ( .A1(n119), .A2(n118), .A3(fw_xfr), .ZN(n120) );
  OAI21D0BWP12T30P140 U309 ( .A1(n156), .A2(n121), .B(n120), .ZN(n323) );
  IND3D1BWP12T30P140 U310 ( .A1(n174), .B1(lad_i[2]), .B2(lad_i[3]), .ZN(n125)
         );
  AOI211D0BWP12T30P140 U311 ( .A1(lad_i[0]), .A2(lad_i[1]), .B(n122), .C(n125), 
        .ZN(n217) );
  AOI21D0BWP12T30P140 U312 ( .A1(n217), .A2(n216), .B(n215), .ZN(n123) );
  OAI21D0BWP12T30P140 U313 ( .A1(state[0]), .A2(n124), .B(n123), .ZN(n458) );
  INVD0BWP12T30P140 U314 ( .I(n458), .ZN(n126) );
  OAI32D0BWP12T30P140 U315 ( .A1(n126), .A2(n215), .A3(n125), .B1(n169), .B2(
        n458), .ZN(n410) );
  ND3D0BWP12T30P140 U316 ( .A1(n127), .A2(n172), .A3(dat_cnt_0_), .ZN(n135) );
  ND2D0BWP12T30P140 U317 ( .A1(n129), .A2(n128), .ZN(n149) );
  OAI222D0BWP12T30P140 U318 ( .A1(n132), .A2(n135), .B1(n131), .B2(n156), .C1(
        n149), .C2(n130), .ZN(n327) );
  AOI22D0BWP12T30P140 U319 ( .A1(state[11]), .A2(n173), .B1(n172), .B2(n133), 
        .ZN(n134) );
  OAI31D0BWP12T30P140 U320 ( .A1(n136), .A2(fw_xfr), .A3(n135), .B(n134), .ZN(
        n325) );
  ND2D0BWP12T30P140 U321 ( .A1(n152), .A2(n140), .ZN(n190) );
  OAI21D0BWP12T30P140 U322 ( .A1(n217), .A2(n137), .B(n140), .ZN(n143) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n190), .A2(n191), .B1(n191), .B2(n143), .ZN(
        n318) );
  AOI211D0BWP12T30P140 U324 ( .A1(n184), .A2(n187), .B(n182), .C(n181), .ZN(
        n208) );
  AOI21D0BWP12T30P140 U325 ( .A1(n139), .A2(byte_cnt[0]), .B(n138), .ZN(n141)
         );
  ND2D0BWP12T30P140 U326 ( .A1(n184), .A2(n140), .ZN(n183) );
  OAI22D0BWP12T30P140 U327 ( .A1(n208), .A2(n142), .B1(n141), .B2(n183), .ZN(
        n320) );
  INVD0BWP12T30P140 U328 ( .I(lad_i[2]), .ZN(n218) );
  AOI21D0BWP12T30P140 U329 ( .A1(n152), .A2(n191), .B(n143), .ZN(n189) );
  AOI221D0BWP12T30P140 U330 ( .A1(adr_cnt[1]), .A2(n189), .B1(n170), .B2(n189), 
        .C(n223), .ZN(n144) );
  AOI31D0BWP12T30P140 U331 ( .A1(nrst_i), .A2(n459), .A3(n218), .B(n144), .ZN(
        n145) );
  OAI21D0BWP12T30P140 U332 ( .A1(n190), .A2(n146), .B(n145), .ZN(n316) );
  OAI22D0BWP12T30P140 U333 ( .A1(lpc_write), .A2(n149), .B1(n148), .B2(n147), 
        .ZN(n150) );
  AO22D0BWP12T30P140 U334 ( .A1(state[6]), .A2(n173), .B1(n172), .B2(n150), 
        .Z(n330) );
  NR2D0BWP12T30P140 U335 ( .A1(lad_i[3]), .A2(n453), .ZN(n151) );
  AOI211D0BWP12T30P140 U336 ( .A1(n152), .A2(n230), .B(n217), .C(n151), .ZN(
        n154) );
  OAI22D0BWP12T30P140 U337 ( .A1(n156), .A2(n155), .B1(n154), .B2(n153), .ZN(
        n334) );
  ND3D0BWP12T30P140 U338 ( .A1(n245), .A2(wbm_we_o), .A3(n211), .ZN(n157) );
  OAI21D0BWP12T30P140 U339 ( .A1(n158), .A2(n461), .B(n157), .ZN(n452) );
  AO22D0BWP12T30P140 U340 ( .A1(state[10]), .A2(n173), .B1(n172), .B2(n159), 
        .Z(n326) );
  INVD0BWP12T30P140 U341 ( .I(xfr_len[2]), .ZN(n180) );
  MOAI22D0BWP12T30P140 U342 ( .A1(n180), .A2(n241), .B1(n242), .B2(
        wbm_sel_o[3]), .ZN(n281) );
  INVD0BWP12T30P140 U343 ( .I(n160), .ZN(n162) );
  AOI21D0BWP12T30P140 U344 ( .A1(n216), .A2(n162), .B(n161), .ZN(n176) );
  INVD0BWP12T30P140 U345 ( .I(n176), .ZN(n179) );
  ND3D0BWP12T30P140 U346 ( .A1(n164), .A2(n163), .A3(n162), .ZN(n178) );
  INVD0BWP12T30P140 U347 ( .I(lad_i[1]), .ZN(n454) );
  ND2D0BWP12T30P140 U348 ( .A1(n165), .A2(n454), .ZN(n166) );
  OAI22D0BWP12T30P140 U349 ( .A1(n167), .A2(n179), .B1(n178), .B2(n166), .ZN(
        n412) );
  OAI31D0BWP12T30P140 U350 ( .A1(n170), .A2(n169), .A3(n230), .B(n168), .ZN(
        n171) );
  AO22D0BWP12T30P140 U351 ( .A1(state[4]), .A2(n173), .B1(n172), .B2(n171), 
        .Z(n332) );
  OAI31D0BWP12T30P140 U352 ( .A1(n237), .A2(n174), .A3(lad_i[3]), .B(nrst_i), 
        .ZN(n177) );
  AOI32D0BWP12T30P140 U353 ( .A1(n177), .A2(n179), .A3(n201), .B1(n176), .B2(
        n175), .ZN(n413) );
  OAI22D0BWP12T30P140 U354 ( .A1(n180), .A2(n179), .B1(n457), .B2(n178), .ZN(
        n411) );
  NR2D0BWP12T30P140 U355 ( .A1(n182), .A2(n181), .ZN(n188) );
  AOI22D0BWP12T30P140 U356 ( .A1(dat_cnt_0_), .A2(n188), .B1(n183), .B2(n185), 
        .ZN(n322) );
  INVD0BWP12T30P140 U357 ( .I(n183), .ZN(n203) );
  AOI33D0BWP12T30P140 U358 ( .A1(byte_cnt[0]), .A2(n185), .A3(n184), .B1(n203), 
        .B2(dat_cnt_0_), .B3(n187), .ZN(n186) );
  OAI21D0BWP12T30P140 U359 ( .A1(n188), .A2(n187), .B(n186), .ZN(n321) );
  OAI32D0BWP12T30P140 U360 ( .A1(adr_cnt[1]), .A2(n191), .A3(n190), .B1(n189), 
        .B2(n195), .ZN(n317) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n235), .A2(n192), .B1(n192), .B2(
        lpc_adr_reg[19]), .ZN(n340) );
  AO22D0BWP12T30P140 U362 ( .A1(n244), .A2(lpc_adr_reg[19]), .B1(n211), .B2(
        wbm_adr_o[19]), .Z(n266) );
  AO22D0BWP12T30P140 U363 ( .A1(n244), .A2(lpc_adr_reg[17]), .B1(n211), .B2(
        wbm_adr_o[17]), .Z(n264) );
  AO22D0BWP12T30P140 U364 ( .A1(lpc_adr_reg[15]), .A2(n214), .B1(n193), .B2(
        wbm_adr_o[15]), .Z(n262) );
  AO22D0BWP12T30P140 U365 ( .A1(lpc_adr_reg[13]), .A2(n214), .B1(n211), .B2(
        wbm_adr_o[13]), .Z(n260) );
  AO22D0BWP12T30P140 U366 ( .A1(n244), .A2(lpc_adr_reg[11]), .B1(n193), .B2(
        wbm_adr_o[11]), .Z(n258) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n457), .A2(n224), .B1(n224), .B2(
        dma_chan_o[1]), .ZN(n415) );
  AO22D0BWP12T30P140 U368 ( .A1(n194), .A2(lpc_adr_reg[9]), .B1(n211), .B2(
        wbm_adr_o[9]), .Z(n256) );
  AO22D0BWP12T30P140 U369 ( .A1(lpc_adr_reg[7]), .A2(n214), .B1(n193), .B2(
        wbm_adr_o[7]), .Z(n254) );
  AO22D0BWP12T30P140 U370 ( .A1(n243), .A2(wbm_tga_o[1]), .B1(n244), .B2(
        lpc_tga_o[1]), .Z(n315) );
  AO22D0BWP12T30P140 U371 ( .A1(n243), .A2(wbm_tga_o[0]), .B1(n244), .B2(
        lpc_tga_o[0]), .Z(n314) );
  AO22D0BWP12T30P140 U372 ( .A1(lpc_adr_reg[22]), .A2(n194), .B1(n211), .B2(
        wbm_adr_o[22]), .Z(n269) );
  AO22D0BWP12T30P140 U373 ( .A1(lpc_adr_reg[21]), .A2(n214), .B1(n243), .B2(
        wbm_adr_o[21]), .Z(n268) );
  AO22D0BWP12T30P140 U374 ( .A1(lpc_adr_reg[20]), .A2(n194), .B1(n193), .B2(
        wbm_adr_o[20]), .Z(n267) );
  AO22D0BWP12T30P140 U375 ( .A1(n194), .A2(lpc_adr_reg[18]), .B1(n213), .B2(
        wbm_adr_o[18]), .Z(n265) );
  AO22D0BWP12T30P140 U376 ( .A1(n244), .A2(lpc_adr_reg[16]), .B1(n243), .B2(
        wbm_adr_o[16]), .Z(n263) );
  AO22D0BWP12T30P140 U377 ( .A1(lpc_adr_reg[14]), .A2(n194), .B1(n213), .B2(
        wbm_adr_o[14]), .Z(n261) );
  AO22D0BWP12T30P140 U378 ( .A1(lpc_adr_reg[12]), .A2(n194), .B1(n243), .B2(
        wbm_adr_o[12]), .Z(n259) );
  AO22D0BWP12T30P140 U379 ( .A1(n244), .A2(lpc_adr_reg[10]), .B1(n213), .B2(
        wbm_adr_o[10]), .Z(n257) );
  AO22D0BWP12T30P140 U380 ( .A1(n194), .A2(lpc_adr_reg[8]), .B1(n243), .B2(
        wbm_adr_o[8]), .Z(n255) );
  AO22D0BWP12T30P140 U381 ( .A1(lpc_adr_reg[6]), .A2(n194), .B1(n213), .B2(
        wbm_adr_o[6]), .Z(n253) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n246), .A2(n224), .B1(n224), .B2(dma_tc_o), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U383 ( .A1(n201), .A2(n224), .B1(n224), .B2(
        dma_chan_o[2]), .ZN(n416) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n222), .A2(n224), .B1(n224), .B2(
        dma_chan_o[0]), .ZN(n414) );
  AO22D0BWP12T30P140 U385 ( .A1(lpc_adr_reg[31]), .A2(n194), .B1(n193), .B2(
        wbm_adr_o[31]), .Z(n278) );
  AO22D0BWP12T30P140 U386 ( .A1(lpc_adr_reg[30]), .A2(n214), .B1(n193), .B2(
        wbm_adr_o[30]), .Z(n277) );
  AO22D0BWP12T30P140 U387 ( .A1(lpc_adr_reg[29]), .A2(n214), .B1(n193), .B2(
        wbm_adr_o[29]), .Z(n276) );
  AO22D0BWP12T30P140 U388 ( .A1(lpc_adr_reg[28]), .A2(n194), .B1(n193), .B2(
        wbm_adr_o[28]), .Z(n275) );
  AO22D0BWP12T30P140 U389 ( .A1(n244), .A2(lpc_adr_reg[27]), .B1(n193), .B2(
        wbm_adr_o[27]), .Z(n274) );
  AO22D0BWP12T30P140 U390 ( .A1(n244), .A2(lpc_adr_reg[26]), .B1(n211), .B2(
        wbm_adr_o[26]), .Z(n273) );
  AO22D0BWP12T30P140 U391 ( .A1(n244), .A2(lpc_adr_reg[25]), .B1(n243), .B2(
        wbm_adr_o[25]), .Z(n272) );
  AO22D0BWP12T30P140 U392 ( .A1(n244), .A2(lpc_adr_reg[24]), .B1(n211), .B2(
        wbm_adr_o[24]), .Z(n271) );
  AO22D0BWP12T30P140 U393 ( .A1(lpc_adr_reg[23]), .A2(n214), .B1(n243), .B2(
        wbm_adr_o[23]), .Z(n270) );
  AO22D0BWP12T30P140 U394 ( .A1(lpc_adr_reg[5]), .A2(n214), .B1(n211), .B2(
        wbm_adr_o[5]), .Z(n252) );
  AO22D0BWP12T30P140 U395 ( .A1(lpc_adr_reg[4]), .A2(n194), .B1(n243), .B2(
        wbm_adr_o[4]), .Z(n251) );
  OAI31D0BWP12T30P140 U396 ( .A1(n223), .A2(n195), .A3(n196), .B(n228), .ZN(
        n209) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n232), .A2(n209), .B1(n209), .B2(
        lpc_adr_reg[5]), .ZN(n359) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n235), .A2(n209), .B1(n209), .B2(
        lpc_adr_reg[7]), .ZN(n343) );
  OAI31D0BWP12T30P140 U399 ( .A1(n223), .A2(n196), .A3(adr_cnt[1]), .B(n228), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n231), .A2(n197), .B1(n197), .B2(
        lpc_adr_reg[12]), .ZN(n365) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n232), .A2(n197), .B1(n197), .B2(
        lpc_adr_reg[13]), .ZN(n357) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n233), .A2(n197), .B1(n197), .B2(
        lpc_adr_reg[14]), .ZN(n349) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n235), .A2(n197), .B1(n197), .B2(
        lpc_adr_reg[15]), .ZN(n341) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n201), .A2(n198), .B1(n198), .B2(
        lpc_dat_o[6]), .ZN(n394) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n457), .A2(n199), .B1(n199), .B2(
        lpc_dat_o[17]), .ZN(n383) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n201), .A2(n199), .B1(n199), .B2(
        lpc_dat_o[18]), .ZN(n382) );
  AO21D0BWP12T30P140 U407 ( .A1(n204), .A2(n200), .B(n215), .Z(n210) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n222), .A2(n210), .B1(n210), .B2(
        lpc_dat_o[20]), .ZN(n380) );
  MAOI22D0BWP12T30P140 U409 ( .A1(n457), .A2(n210), .B1(n210), .B2(
        lpc_dat_o[21]), .ZN(n379) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n201), .A2(n210), .B1(n210), .B2(
        lpc_dat_o[22]), .ZN(n378) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n222), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[28]), .ZN(n372) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n201), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[30]), .ZN(n370) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n246), .A2(n202), .B1(n202), .B2(
        lpc_dat_o[31]), .ZN(n369) );
  IND2D1BWP12T30P140 U414 ( .A1(n204), .B1(n203), .ZN(n207) );
  ND3D0BWP12T30P140 U415 ( .A1(byte_cnt[0]), .A2(n204), .A3(n203), .ZN(n206)
         );
  AOI32D0BWP12T30P140 U416 ( .A1(n208), .A2(byte_cnt[2]), .A3(n207), .B1(n206), 
        .B2(n205), .ZN(n319) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n231), .A2(n209), .B1(n209), .B2(
        lpc_adr_reg[4]), .ZN(n367) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n233), .A2(n209), .B1(n209), .B2(
        lpc_adr_reg[6]), .ZN(n351) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n246), .A2(n210), .B1(n210), .B2(
        lpc_dat_o[23]), .ZN(n377) );
  AO22D0BWP12T30P140 U420 ( .A1(lpc_dat_o[30]), .A2(n244), .B1(n243), .B2(
        wbm_dat_o[30]), .Z(n312) );
  AO22D0BWP12T30P140 U421 ( .A1(lpc_dat_o[29]), .A2(n212), .B1(n211), .B2(
        wbm_dat_o[29]), .Z(n311) );
  AO22D0BWP12T30P140 U422 ( .A1(lpc_dat_o[28]), .A2(n244), .B1(n243), .B2(
        wbm_dat_o[28]), .Z(n310) );
  AO22D0BWP12T30P140 U423 ( .A1(lpc_dat_o[27]), .A2(n244), .B1(n211), .B2(
        wbm_dat_o[27]), .Z(n309) );
  AO22D0BWP12T30P140 U424 ( .A1(lpc_dat_o[26]), .A2(n212), .B1(n243), .B2(
        wbm_dat_o[26]), .Z(n308) );
  AO22D0BWP12T30P140 U425 ( .A1(lpc_dat_o[25]), .A2(n212), .B1(n211), .B2(
        wbm_dat_o[25]), .Z(n307) );
  AO22D0BWP12T30P140 U426 ( .A1(lpc_dat_o[24]), .A2(n212), .B1(n243), .B2(
        wbm_dat_o[24]), .Z(n306) );
  AO22D0BWP12T30P140 U427 ( .A1(lpc_dat_o[23]), .A2(n212), .B1(n211), .B2(
        wbm_dat_o[23]), .Z(n305) );
  AO22D0BWP12T30P140 U428 ( .A1(lpc_dat_o[22]), .A2(n212), .B1(n243), .B2(
        wbm_dat_o[22]), .Z(n304) );
  AO22D0BWP12T30P140 U429 ( .A1(lpc_dat_o[21]), .A2(n212), .B1(n211), .B2(
        wbm_dat_o[21]), .Z(n303) );
  AO22D0BWP12T30P140 U430 ( .A1(lpc_dat_o[20]), .A2(n212), .B1(n243), .B2(
        wbm_dat_o[20]), .Z(n302) );
  AO22D0BWP12T30P140 U431 ( .A1(lpc_dat_o[19]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[19]), .Z(n301) );
  AO22D0BWP12T30P140 U432 ( .A1(lpc_dat_o[18]), .A2(n214), .B1(n213), .B2(
        wbm_dat_o[18]), .Z(n300) );
  AO22D0BWP12T30P140 U433 ( .A1(lpc_dat_o[17]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[17]), .Z(n299) );
  AO22D0BWP12T30P140 U434 ( .A1(lpc_dat_o[16]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[16]), .Z(n298) );
  AO22D0BWP12T30P140 U435 ( .A1(lpc_dat_o[15]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[15]), .Z(n297) );
  AO22D0BWP12T30P140 U436 ( .A1(lpc_dat_o[14]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[14]), .Z(n296) );
  AO22D0BWP12T30P140 U437 ( .A1(lpc_dat_o[13]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[13]), .Z(n295) );
  AO22D0BWP12T30P140 U438 ( .A1(lpc_dat_o[12]), .A2(n212), .B1(n213), .B2(
        wbm_dat_o[12]), .Z(n294) );
  AO22D0BWP12T30P140 U439 ( .A1(lpc_dat_o[11]), .A2(n214), .B1(n213), .B2(
        wbm_dat_o[11]), .Z(n293) );
  AOI211D0BWP12T30P140 U440 ( .A1(n217), .A2(n216), .B(n459), .C(n215), .ZN(
        n240) );
  ND2D0BWP12T30P140 U441 ( .A1(nrst_i), .A2(n218), .ZN(n220) );
  ND2D0BWP12T30P140 U442 ( .A1(n240), .A2(lpc_tga_o[0]), .ZN(n219) );
  OAI211D0BWP12T30P140 U443 ( .A1(n240), .A2(n220), .B(n239), .C(n219), .ZN(
        n403) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n222), .A2(n221), .B1(n221), .B2(
        lpc_dat_o[8]), .ZN(n392) );
  NR2D0BWP12T30P140 U445 ( .A1(adr_cnt[1]), .A2(n223), .ZN(n225) );
  AO31D0BWP12T30P140 U446 ( .A1(adr_cnt[0]), .A2(n226), .A3(n225), .B(n224), 
        .Z(n227) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n231), .A2(n227), .B1(n227), .B2(
        lpc_adr_reg[8]), .ZN(n366) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n232), .A2(n227), .B1(n227), .B2(
        lpc_adr_reg[9]), .ZN(n358) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n233), .A2(n227), .B1(n227), .B2(
        lpc_adr_reg[10]), .ZN(n350) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n235), .A2(n227), .B1(n227), .B2(
        lpc_adr_reg[11]), .ZN(n342) );
  OAI21D0BWP12T30P140 U451 ( .A1(n230), .A2(n229), .B(n228), .ZN(n234) );
  MAOI22D0BWP12T30P140 U452 ( .A1(n231), .A2(n234), .B1(n234), .B2(
        lpc_adr_reg[0]), .ZN(n368) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n232), .A2(n234), .B1(n234), .B2(
        lpc_adr_reg[1]), .ZN(n360) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n233), .A2(n234), .B1(n234), .B2(
        lpc_adr_reg[2]), .ZN(n352) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n235), .A2(n234), .B1(n234), .B2(
        lpc_adr_reg[3]), .ZN(n344) );
  CKBD0BWP12T30P140 U456 ( .I(clk_i), .Z(n475) );
  CKBD0BWP12T30P140 U457 ( .I(n475), .Z(n471) );
  CKBD0BWP12T30P140 U458 ( .I(n475), .Z(n474) );
  CKBD0BWP12T30P140 U459 ( .I(n474), .Z(n470) );
  CKBD0BWP12T30P140 U460 ( .I(n474), .Z(n473) );
  CKBD0BWP12T30P140 U461 ( .I(n475), .Z(n465) );
  CKBD0BWP12T30P140 U462 ( .I(n475), .Z(n472) );
  CKBD0BWP12T30P140 U463 ( .I(n475), .Z(n467) );
  CKBD0BWP12T30P140 U464 ( .I(n475), .Z(n466) );
  CKBD0BWP12T30P140 U465 ( .I(n475), .Z(n468) );
  CKBD0BWP12T30P140 U466 ( .I(n475), .Z(n469) );
  INVD0BWP12T30P140 U467 ( .I(n240), .ZN(n236) );
  AOI32D0BWP12T30P140 U468 ( .A1(n237), .A2(n236), .A3(nrst_i), .B1(
        lpc_tga_o[1]), .B2(n240), .ZN(n238) );
  ND2D0BWP12T30P140 U469 ( .A1(n238), .A2(n239), .ZN(n402) );
  IOA21D0BWP12T30P140 U470 ( .A1(dma_xfr), .A2(n240), .B(n239), .ZN(n404) );
  IOA21D0BWP12T30P140 U471 ( .A1(n242), .A2(wbm_sel_o[0]), .B(n241), .ZN(n279)
         );
  IOA21D0BWP12T30P140 U472 ( .A1(n243), .A2(got_ack), .B(n245), .ZN(n418) );
  AO31D0BWP12T30P140 U473 ( .A1(n245), .A2(wbm_stb_o), .A3(nrst_i), .B(n244), 
        .Z(n419) );
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
  wire   n26, n27, n28, n29, n30, n31, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25;
  wire   [3:0] fsm;
  wire   [1:0] ac;

  DFSNQD1BWP12T30P140 ldrq_o_reg ( .D(n26), .CP(clk_i), .SDN(nrst_i), .Q(
        ldrq_o) );
  DFCNQD1BWP12T30P140 ac_reg_1_ ( .D(n30), .CP(clk_i), .CDN(nrst_i), .Q(ac[1])
         );
  DFCNQD1BWP12T30P140 ac_reg_0_ ( .D(n31), .CP(clk_i), .CDN(nrst_i), .Q(ac[0])
         );
  DFCNQD1BWP12T30P140 fsm_reg_0_ ( .D(n27), .CP(clk_i), .CDN(nrst_i), .Q(
        fsm[0]) );
  DFCNQD1BWP12T30P140 fsm_reg_2_ ( .D(n28), .CP(clk_i), .CDN(nrst_i), .Q(
        fsm[2]) );
  DFCNQD1BWP12T30P140 fsm_reg_1_ ( .D(n29), .CP(clk_i), .CDN(nrst_i), .Q(
        fsm[1]) );
  DFCNQD1BWP12T30P140 fsm_reg_3_ ( .D(fsm[3]), .CP(clk_i), .CDN(nrst_i), .Q(
        fsm[3]) );
  NR2D0BWP12T30P140 U3 ( .A1(fsm[1]), .A2(fsm[2]), .ZN(n3) );
  INVD0BWP12T30P140 U4 ( .I(n3), .ZN(n21) );
  INVD0BWP12T30P140 U5 ( .I(fsm[0]), .ZN(n20) );
  OAI32D0BWP12T30P140 U6 ( .A1(fsm[0]), .A2(dma_req_i), .A3(n21), .B1(n3), 
        .B2(n20), .ZN(n1) );
  AOI211D0BWP12T30P140 U7 ( .A1(fsm[1]), .A2(fsm[2]), .B(fsm[3]), .C(n1), .ZN(
        n9) );
  INVD0BWP12T30P140 U8 ( .I(ldrq_o), .ZN(n8) );
  NR2D0BWP12T30P140 U9 ( .A1(ac[1]), .A2(ac[0]), .ZN(n16) );
  ND2D0BWP12T30P140 U10 ( .A1(dma_chan_i[0]), .A2(n16), .ZN(n5) );
  INVD0BWP12T30P140 U11 ( .I(ac[1]), .ZN(n2) );
  AOI32D0BWP12T30P140 U12 ( .A1(ac[0]), .A2(n2), .A3(dma_chan_i[1]), .B1(
        dma_chan_i[2]), .B2(ac[1]), .ZN(n4) );
  ND2D0BWP12T30P140 U13 ( .A1(n3), .A2(fsm[0]), .ZN(n25) );
  AOI21D0BWP12T30P140 U14 ( .A1(n5), .A2(n4), .B(n25), .ZN(n6) );
  OAI21D0BWP12T30P140 U15 ( .A1(n21), .A2(n6), .B(n9), .ZN(n7) );
  OAI21D0BWP12T30P140 U16 ( .A1(n9), .A2(n8), .B(n7), .ZN(n26) );
  NR2D0BWP12T30P140 U17 ( .A1(n16), .A2(n20), .ZN(n13) );
  INVD0BWP12T30P140 U18 ( .I(dma_req_i), .ZN(n10) );
  AOI211D0BWP12T30P140 U19 ( .A1(n20), .A2(n10), .B(n21), .C(fsm[3]), .ZN(n15)
         );
  INVD0BWP12T30P140 U20 ( .I(n15), .ZN(n12) );
  OAI21D0BWP12T30P140 U21 ( .A1(ac[0]), .A2(n12), .B(ac[1]), .ZN(n11) );
  OAI21D0BWP12T30P140 U22 ( .A1(n13), .A2(n12), .B(n11), .ZN(n30) );
  INVD0BWP12T30P140 U23 ( .I(ac[0]), .ZN(n14) );
  OAI32D0BWP12T30P140 U24 ( .A1(ac[0]), .A2(fsm[3]), .A3(n25), .B1(n15), .B2(
        n14), .ZN(n31) );
  INVD0BWP12T30P140 U25 ( .I(n16), .ZN(n19) );
  AOI21D0BWP12T30P140 U26 ( .A1(fsm[2]), .A2(fsm[1]), .B(fsm[0]), .ZN(n17) );
  OAI31D0BWP12T30P140 U27 ( .A1(fsm[2]), .A2(fsm[1]), .A3(dma_req_i), .B(n17), 
        .ZN(n18) );
  AOI221D0BWP12T30P140 U28 ( .A1(n19), .A2(n18), .B1(n25), .B2(n18), .C(fsm[3]), .ZN(n22) );
  INVD0BWP12T30P140 U29 ( .I(n22), .ZN(n23) );
  OAI32D0BWP12T30P140 U30 ( .A1(fsm[0]), .A2(n21), .A3(n23), .B1(n22), .B2(n20), .ZN(n27) );
  INVD0BWP12T30P140 U31 ( .I(fsm[1]), .ZN(n24) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n22), .A2(n24), .B1(fsm[2]), .B2(n22), .ZN(
        n28) );
  MUX2ND0BWP12T30P140 U33 ( .I0(n25), .I1(n24), .S(n23), .ZN(n29) );
endmodule


module wb_dreq_host ( clk_i, nrst_i, dma_chan_o, dma_req_o, ldrq_i );
  output [2:0] dma_chan_o;
  input clk_i, nrst_i, ldrq_i;
  output dma_req_o;
  wire   n23, n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [3:0] st;
  wire   [1:0] adc;

  DFCNQD1BWP12T30P140 dma_chan_o_reg_0_ ( .D(n25), .CP(clk_i), .CDN(nrst_i), 
        .Q(dma_chan_o[0]) );
  DFCNQD1BWP12T30P140 dma_req_o_reg ( .D(n26), .CP(clk_i), .CDN(nrst_i), .Q(
        dma_req_o) );
  DFCNQD1BWP12T30P140 dma_chan_o_reg_1_ ( .D(n24), .CP(clk_i), .CDN(nrst_i), 
        .Q(dma_chan_o[1]) );
  DFCNQD1BWP12T30P140 dma_chan_o_reg_2_ ( .D(n23), .CP(clk_i), .CDN(nrst_i), 
        .Q(dma_chan_o[2]) );
  DFCNQD1BWP12T30P140 adc_reg_0_ ( .D(n31), .CP(clk_i), .CDN(nrst_i), .Q(
        adc[0]) );
  DFCNQD1BWP12T30P140 st_reg_2_ ( .D(n28), .CP(clk_i), .CDN(nrst_i), .Q(st[2])
         );
  DFCNQD1BWP12T30P140 st_reg_0_ ( .D(n27), .CP(clk_i), .CDN(nrst_i), .Q(st[0])
         );
  DFCNQD1BWP12T30P140 adc_reg_1_ ( .D(n30), .CP(clk_i), .CDN(nrst_i), .Q(
        adc[1]) );
  DFCNQD1BWP12T30P140 st_reg_1_ ( .D(n29), .CP(clk_i), .CDN(nrst_i), .Q(st[1])
         );
  DFCNQD1BWP12T30P140 st_reg_3_ ( .D(st[3]), .CP(clk_i), .CDN(nrst_i), .Q(
        st[3]) );
  INVD0BWP12T30P140 U3 ( .I(st[0]), .ZN(n20) );
  INVD0BWP12T30P140 U4 ( .I(st[1]), .ZN(n19) );
  INVD0BWP12T30P140 U5 ( .I(st[2]), .ZN(n9) );
  ND2D0BWP12T30P140 U6 ( .A1(n19), .A2(n9), .ZN(n17) );
  NR3D0BWP12T30P140 U7 ( .A1(st[3]), .A2(n20), .A3(n17), .ZN(n3) );
  INVD0BWP12T30P140 U8 ( .I(adc[0]), .ZN(n11) );
  ND2D0BWP12T30P140 U9 ( .A1(n3), .A2(n11), .ZN(n6) );
  NR2D0BWP12T30P140 U10 ( .A1(adc[1]), .A2(n6), .ZN(n10) );
  INVD0BWP12T30P140 U11 ( .I(ldrq_i), .ZN(n7) );
  MAOI22D0BWP12T30P140 U12 ( .A1(n10), .A2(n7), .B1(dma_chan_o[0]), .B2(n10), 
        .ZN(n25) );
  AOI211D0BWP12T30P140 U13 ( .A1(st[1]), .A2(st[2]), .B(st[0]), .C(st[3]), 
        .ZN(n8) );
  INVD0BWP12T30P140 U14 ( .I(dma_req_o), .ZN(n2) );
  IND2D1BWP12T30P140 U15 ( .A1(st[3]), .B1(n20), .ZN(n16) );
  ND3D0BWP12T30P140 U16 ( .A1(n9), .A2(ldrq_i), .A3(st[1]), .ZN(n1) );
  OAI22D0BWP12T30P140 U17 ( .A1(n8), .A2(n2), .B1(n16), .B2(n1), .ZN(n26) );
  INVD0BWP12T30P140 U18 ( .I(adc[1]), .ZN(n14) );
  ND3D0BWP12T30P140 U19 ( .A1(n14), .A2(adc[0]), .A3(n3), .ZN(n4) );
  CKMUX2D0BWP12T30P140 U20 ( .I0(ldrq_i), .I1(dma_chan_o[1]), .S(n4), .Z(n24)
         );
  NR2D0BWP12T30P140 U21 ( .A1(n6), .A2(n14), .ZN(n5) );
  CKMUX2D0BWP12T30P140 U22 ( .I0(dma_chan_o[2]), .I1(ldrq_i), .S(n5), .Z(n23)
         );
  AOI211D0BWP12T30P140 U23 ( .A1(ldrq_i), .A2(n20), .B(st[3]), .C(n17), .ZN(
        n12) );
  OAI21D0BWP12T30P140 U24 ( .A1(n12), .A2(n11), .B(n6), .ZN(n31) );
  AOI221D0BWP12T30P140 U25 ( .A1(n17), .A2(n8), .B1(n7), .B2(n8), .C(n10), 
        .ZN(n18) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n18), .A2(n9), .B1(st[1]), .B2(n18), .ZN(n28)
         );
  OAI32D0BWP12T30P140 U27 ( .A1(st[0]), .A2(n18), .A3(n17), .B1(n10), .B2(n20), 
        .ZN(n27) );
  ND2D0BWP12T30P140 U28 ( .A1(n12), .A2(n11), .ZN(n13) );
  MUX2ND0BWP12T30P140 U29 ( .I0(n14), .I1(adc[1]), .S(n13), .ZN(n15) );
  OAI31D0BWP12T30P140 U30 ( .A1(ldrq_i), .A2(n17), .A3(n16), .B(n15), .ZN(n30)
         );
  MUX2ND0BWP12T30P140 U31 ( .I0(n20), .I1(n19), .S(n18), .ZN(n29) );
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
  wire   state, ack_valid, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204;
  wire   [7:0] wsr;
  wire   [31:0] rd_pipe;

  DFCNQD1BWP12T30P140 wb_ack_o_reg ( .D(ack_valid), .CP(n203), .CDN(nrst_i), 
        .Q(wb_ack_o) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_8_ ( .D(rd_pipe[8]), .CP(n202), .CDN(n194), 
        .Q(wb_dat_o[8]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(rd_pipe[0]), .CP(n203), .CDN(n195), 
        .Q(wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_22_ ( .D(rd_pipe[22]), .CP(n203), .CDN(n86), 
        .Q(wb_dat_o[22]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_21_ ( .D(rd_pipe[21]), .CP(n202), .CDN(n87), 
        .Q(wb_dat_o[21]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_14_ ( .D(rd_pipe[14]), .CP(n203), .CDN(n194), .Q(wb_dat_o[14]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_9_ ( .D(rd_pipe[9]), .CP(n203), .CDN(n194), 
        .Q(wb_dat_o[9]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_6_ ( .D(rd_pipe[6]), .CP(n202), .CDN(n194), 
        .Q(wb_dat_o[6]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_31_ ( .D(rd_pipe[31]), .CP(n198), .CDN(n193), .Q(wb_dat_o[31]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_28_ ( .D(rd_pipe[28]), .CP(n198), .CDN(n193), .Q(wb_dat_o[28]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_27_ ( .D(rd_pipe[27]), .CP(n201), .CDN(n193), .Q(wb_dat_o[27]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_24_ ( .D(rd_pipe[24]), .CP(n198), .CDN(n196), .Q(wb_dat_o[24]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_23_ ( .D(rd_pipe[23]), .CP(n204), .CDN(n195), .Q(wb_dat_o[23]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_20_ ( .D(rd_pipe[20]), .CP(n201), .CDN(n194), .Q(wb_dat_o[20]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_19_ ( .D(rd_pipe[19]), .CP(n200), .CDN(n197), .Q(wb_dat_o[19]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_16_ ( .D(rd_pipe[16]), .CP(n204), .CDN(n86), 
        .Q(wb_dat_o[16]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_15_ ( .D(rd_pipe[15]), .CP(n198), .CDN(n87), 
        .Q(wb_dat_o[15]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_12_ ( .D(rd_pipe[12]), .CP(n200), .CDN(n194), .Q(wb_dat_o[12]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_11_ ( .D(rd_pipe[11]), .CP(n199), .CDN(n194), .Q(wb_dat_o[11]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_7_ ( .D(rd_pipe[7]), .CP(n198), .CDN(n194), 
        .Q(wb_dat_o[7]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_4_ ( .D(rd_pipe[4]), .CP(n200), .CDN(n194), 
        .Q(wb_dat_o[4]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_3_ ( .D(rd_pipe[3]), .CP(n199), .CDN(n194), 
        .Q(wb_dat_o[3]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_30_ ( .D(rd_pipe[30]), .CP(n198), .CDN(n193), .Q(wb_dat_o[30]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_29_ ( .D(rd_pipe[29]), .CP(n198), .CDN(n193), .Q(wb_dat_o[29]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_26_ ( .D(rd_pipe[26]), .CP(n200), .CDN(n193), .Q(wb_dat_o[26]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_25_ ( .D(rd_pipe[25]), .CP(n199), .CDN(n196), .Q(wb_dat_o[25]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_18_ ( .D(rd_pipe[18]), .CP(n199), .CDN(n194), .Q(wb_dat_o[18]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_17_ ( .D(rd_pipe[17]), .CP(n198), .CDN(n86), 
        .Q(wb_dat_o[17]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_13_ ( .D(rd_pipe[13]), .CP(n201), .CDN(n194), .Q(wb_dat_o[13]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_10_ ( .D(rd_pipe[10]), .CP(n204), .CDN(n194), .Q(wb_dat_o[10]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_5_ ( .D(rd_pipe[5]), .CP(n201), .CDN(n194), 
        .Q(wb_dat_o[5]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_2_ ( .D(rd_pipe[2]), .CP(n200), .CDN(n194), 
        .Q(wb_dat_o[2]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(rd_pipe[1]), .CP(n204), .CDN(n195), 
        .Q(wb_dat_o[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__30_ ( .D(n182), .CP(n203), .CDN(nrst_i), 
        .Q(datareg0[30]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__29_ ( .D(n181), .CP(n203), .CDN(nrst_i), 
        .Q(datareg0[29]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__28_ ( .D(n180), .CP(n203), .CDN(n193), 
        .Q(datareg0[28]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__27_ ( .D(n179), .CP(n203), .CDN(n87), .Q(
        datareg0[27]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__26_ ( .D(n178), .CP(n203), .CDN(n194), 
        .Q(datareg0[26]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__25_ ( .D(n177), .CP(n203), .CDN(n195), 
        .Q(datareg0[25]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__24_ ( .D(n176), .CP(n203), .CDN(n196), 
        .Q(datareg0[24]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__23_ ( .D(n175), .CP(n202), .CDN(n197), 
        .Q(datareg0[23]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__22_ ( .D(n174), .CP(n202), .CDN(nrst_i), 
        .Q(datareg0[22]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__21_ ( .D(n173), .CP(n202), .CDN(n86), .Q(
        datareg0[21]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__20_ ( .D(n172), .CP(n202), .CDN(n87), .Q(
        datareg0[20]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__19_ ( .D(n171), .CP(n202), .CDN(n193), 
        .Q(datareg0[19]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__18_ ( .D(n170), .CP(n202), .CDN(n193), 
        .Q(datareg0[18]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__17_ ( .D(n169), .CP(n202), .CDN(n194), 
        .Q(datareg0[17]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__16_ ( .D(n168), .CP(n202), .CDN(nrst_i), 
        .Q(datareg0[16]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__15_ ( .D(n167), .CP(n202), .CDN(n195), 
        .Q(datareg0[15]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__14_ ( .D(n166), .CP(n202), .CDN(n196), 
        .Q(datareg0[14]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__13_ ( .D(n165), .CP(n202), .CDN(n197), 
        .Q(datareg0[13]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__12_ ( .D(n164), .CP(n202), .CDN(n86), .Q(
        datareg0[12]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__31_ ( .D(n183), .CP(n203), .CDN(nrst_i), 
        .Q(datareg0[31]) );
  DFCNQD1BWP12T30P140 wsr_reg_6_ ( .D(n185), .CP(n203), .CDN(n197), .Q(wsr[6])
         );
  DFCNQD1BWP12T30P140 wsr_reg_2_ ( .D(n189), .CP(n204), .CDN(n197), .Q(wsr[2])
         );
  DFCNQD1BWP12T30P140 regfile_reg_1__30_ ( .D(n150), .CP(n200), .CDN(n86), .Q(
        datareg1[30]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__29_ ( .D(n149), .CP(n200), .CDN(n86), .Q(
        datareg1[29]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__28_ ( .D(n148), .CP(n200), .CDN(n86), .Q(
        datareg1[28]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__27_ ( .D(n147), .CP(n200), .CDN(n86), .Q(
        datareg1[27]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__26_ ( .D(n146), .CP(n200), .CDN(n86), .Q(
        datareg1[26]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__25_ ( .D(n145), .CP(n200), .CDN(n86), .Q(
        datareg1[25]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__24_ ( .D(n144), .CP(n200), .CDN(n86), .Q(
        datareg1[24]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__23_ ( .D(n143), .CP(n200), .CDN(n86), .Q(
        datareg1[23]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__22_ ( .D(n142), .CP(n200), .CDN(n86), .Q(
        datareg1[22]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__21_ ( .D(n141), .CP(n200), .CDN(n87), .Q(
        datareg1[21]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__20_ ( .D(n140), .CP(n200), .CDN(n87), .Q(
        datareg1[20]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__19_ ( .D(n139), .CP(n199), .CDN(n87), .Q(
        datareg1[19]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__18_ ( .D(n138), .CP(n199), .CDN(n87), .Q(
        datareg1[18]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__17_ ( .D(n137), .CP(n199), .CDN(n87), .Q(
        datareg1[17]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__16_ ( .D(n136), .CP(n199), .CDN(n87), .Q(
        datareg1[16]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__15_ ( .D(n135), .CP(n199), .CDN(n87), .Q(
        datareg1[15]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__14_ ( .D(n134), .CP(n199), .CDN(n87), .Q(
        datareg1[14]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__13_ ( .D(n133), .CP(n199), .CDN(n87), .Q(
        datareg1[13]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__12_ ( .D(n132), .CP(n199), .CDN(n87), .Q(
        datareg1[12]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__11_ ( .D(n131), .CP(n199), .CDN(n87), .Q(
        datareg1[11]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__10_ ( .D(n130), .CP(n199), .CDN(n87), .Q(
        datareg1[10]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__9_ ( .D(n129), .CP(n199), .CDN(n87), .Q(
        datareg1[9]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__8_ ( .D(n128), .CP(n199), .CDN(n193), .Q(
        datareg1[8]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__7_ ( .D(n127), .CP(n198), .CDN(n193), .Q(
        datareg1[7]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__6_ ( .D(n126), .CP(n198), .CDN(n193), .Q(
        datareg1[6]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__5_ ( .D(n125), .CP(n198), .CDN(n193), .Q(
        datareg1[5]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__4_ ( .D(n124), .CP(n198), .CDN(n193), .Q(
        datareg1[4]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__3_ ( .D(n123), .CP(n198), .CDN(n193), .Q(
        datareg1[3]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__2_ ( .D(n122), .CP(n198), .CDN(n193), .Q(
        datareg1[2]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__1_ ( .D(n121), .CP(n198), .CDN(n193), .Q(
        datareg1[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__0_ ( .D(n120), .CP(n198), .CDN(n193), .Q(
        datareg1[0]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__11_ ( .D(n163), .CP(n201), .CDN(n87), .Q(
        datareg0[11]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__10_ ( .D(n162), .CP(n201), .CDN(n193), 
        .Q(datareg0[10]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__9_ ( .D(n161), .CP(n201), .CDN(nrst_i), 
        .Q(datareg0[9]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__8_ ( .D(n160), .CP(n201), .CDN(n194), .Q(
        datareg0[8]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__7_ ( .D(n159), .CP(n201), .CDN(n195), .Q(
        datareg0[7]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__6_ ( .D(n158), .CP(n201), .CDN(n196), .Q(
        datareg0[6]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__5_ ( .D(n157), .CP(n201), .CDN(n197), .Q(
        datareg0[5]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__4_ ( .D(n156), .CP(n201), .CDN(n86), .Q(
        datareg0[4]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__3_ ( .D(n155), .CP(n201), .CDN(n87), .Q(
        datareg0[3]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__2_ ( .D(n154), .CP(n201), .CDN(n86), .Q(
        datareg0[2]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__1_ ( .D(n153), .CP(n201), .CDN(n86), .Q(
        datareg0[1]) );
  DFCNQD1BWP12T30P140 regfile_reg_0__0_ ( .D(n152), .CP(n201), .CDN(n86), .Q(
        datareg0[0]) );
  DFCNQD1BWP12T30P140 regfile_reg_1__31_ ( .D(n151), .CP(n200), .CDN(n86), .Q(
        datareg1[31]) );
  DFCNQD1BWP12T30P140 wsr_reg_3_ ( .D(n188), .CP(n204), .CDN(n197), .Q(wsr[3])
         );
  DFCNQD1BWP12T30P140 wsr_reg_7_ ( .D(n184), .CP(n203), .CDN(nrst_i), .Q(
        wsr[7]) );
  DFCNQD1BWP12T30P140 wsr_reg_4_ ( .D(n187), .CP(n204), .CDN(n197), .Q(wsr[4])
         );
  DFCNQD1BWP12T30P140 rd_pipe_reg_23_ ( .D(n111), .CP(clk_i), .CDN(n195), .Q(
        rd_pipe[23]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_18_ ( .D(n106), .CP(clk_i), .CDN(n196), .Q(
        rd_pipe[18]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_17_ ( .D(n105), .CP(clk_i), .CDN(n196), .Q(
        rd_pipe[17]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_16_ ( .D(n104), .CP(clk_i), .CDN(n196), .Q(
        rd_pipe[16]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_11_ ( .D(n99), .CP(clk_i), .CDN(n196), .Q(
        rd_pipe[11]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_9_ ( .D(n97), .CP(clk_i), .CDN(n196), .Q(
        rd_pipe[9]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_7_ ( .D(n95), .CP(clk_i), .CDN(n197), .Q(
        rd_pipe[7]) );
  DFCNQD1BWP12T30P140 wsr_reg_5_ ( .D(n186), .CP(n203), .CDN(n197), .Q(wsr[5])
         );
  DFCNQD1BWP12T30P140 wsr_reg_1_ ( .D(n190), .CP(n204), .CDN(n197), .Q(wsr[1])
         );
  DFCNQD1BWP12T30P140 wsr_reg_0_ ( .D(n192), .CP(n204), .CDN(n195), .Q(wsr[0])
         );
  DFCNQD1BWP12T30P140 state_reg ( .D(n191), .CP(n204), .CDN(n196), .Q(state)
         );
  DFCNQD1BWP12T30P140 rd_pipe_reg_31_ ( .D(n119), .CP(n202), .CDN(n195), .Q(
        rd_pipe[31]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_26_ ( .D(n114), .CP(n203), .CDN(n195), .Q(
        rd_pipe[26]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_25_ ( .D(n113), .CP(n202), .CDN(n195), .Q(
        rd_pipe[25]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_1_ ( .D(n89), .CP(n203), .CDN(n197), .Q(
        rd_pipe[1]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_0_ ( .D(n88), .CP(n202), .CDN(n197), .Q(
        rd_pipe[0]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_30_ ( .D(n118), .CP(n198), .CDN(n195), .Q(
        rd_pipe[30]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_29_ ( .D(n117), .CP(n204), .CDN(n195), .Q(
        rd_pipe[29]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_28_ ( .D(n116), .CP(n199), .CDN(n195), .Q(
        rd_pipe[28]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_27_ ( .D(n115), .CP(n204), .CDN(n195), .Q(
        rd_pipe[27]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_24_ ( .D(n112), .CP(n201), .CDN(n195), .Q(
        rd_pipe[24]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_22_ ( .D(n110), .CP(n201), .CDN(n195), .Q(
        rd_pipe[22]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_21_ ( .D(n109), .CP(n200), .CDN(n195), .Q(
        rd_pipe[21]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_20_ ( .D(n108), .CP(n199), .CDN(n196), .Q(
        rd_pipe[20]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_19_ ( .D(n107), .CP(n198), .CDN(n196), .Q(
        rd_pipe[19]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_15_ ( .D(n103), .CP(n201), .CDN(n196), .Q(
        rd_pipe[15]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_14_ ( .D(n102), .CP(n200), .CDN(n196), .Q(
        rd_pipe[14]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_13_ ( .D(n101), .CP(n199), .CDN(n196), .Q(
        rd_pipe[13]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_12_ ( .D(n100), .CP(n198), .CDN(n196), .Q(
        rd_pipe[12]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_10_ ( .D(n98), .CP(n204), .CDN(n196), .Q(
        rd_pipe[10]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_8_ ( .D(n96), .CP(n204), .CDN(n196), .Q(
        rd_pipe[8]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_6_ ( .D(n94), .CP(n204), .CDN(n197), .Q(
        rd_pipe[6]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_5_ ( .D(n93), .CP(n204), .CDN(n197), .Q(
        rd_pipe[5]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_4_ ( .D(n92), .CP(n204), .CDN(n197), .Q(
        rd_pipe[4]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_3_ ( .D(n91), .CP(n204), .CDN(n197), .Q(
        rd_pipe[3]) );
  DFCNQD1BWP12T30P140 rd_pipe_reg_2_ ( .D(n90), .CP(n204), .CDN(n197), .Q(
        rd_pipe[2]) );
  IND2D1BWP12T30P140 U3 ( .A1(wb_we_i), .B1(n2), .ZN(n49) );
  NR2D0BWP12T30P140 U4 ( .A1(wsr[2]), .A2(wsr[1]), .ZN(n26) );
  NR4D0BWP12T30P140 U5 ( .A1(wsr[7]), .A2(wsr[6]), .A3(wsr[5]), .A4(wsr[4]), 
        .ZN(n1) );
  INVD0BWP12T30P140 U6 ( .I(wsr[3]), .ZN(n77) );
  AN4D0BWP12T30P140 U7 ( .A1(n26), .A2(wsr[0]), .A3(n1), .A4(n77), .Z(n12) );
  INVD0BWP12T30P140 U8 ( .I(state), .ZN(n76) );
  INR2D1BWP12T30P140 U9 ( .A1(n12), .B1(n76), .ZN(ack_valid) );
  INR3D1BWP12T30P140 U10 ( .A1(ack_valid), .B1(wb_adr_i[2]), .B2(wb_adr_i[3]), 
        .ZN(n2) );
  IND3D1BWP12T30P140 U11 ( .A1(wb_adr_i[1]), .B1(n2), .B2(wb_we_i), .ZN(n3) );
  NR2D0BWP12T30P140 U12 ( .A1(wb_adr_i[0]), .A2(n3), .ZN(n9) );
  AN2D0BWP12T30P140 U13 ( .A1(wb_sel_i[3]), .A2(n9), .Z(n59) );
  INVD0BWP12T30P140 U14 ( .I(wb_dat_i[30]), .ZN(n57) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n59), .A2(n57), .B1(datareg0[30]), .B2(n59), 
        .ZN(n182) );
  INVD0BWP12T30P140 U16 ( .I(wb_dat_i[29]), .ZN(n68) );
  MAOI22D0BWP12T30P140 U17 ( .A1(n59), .A2(n68), .B1(datareg0[29]), .B2(n59), 
        .ZN(n181) );
  INVD0BWP12T30P140 U18 ( .I(wb_dat_i[28]), .ZN(n55) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n59), .A2(n55), .B1(datareg0[28]), .B2(n59), 
        .ZN(n180) );
  INVD0BWP12T30P140 U20 ( .I(wb_dat_i[27]), .ZN(n63) );
  MAOI22D0BWP12T30P140 U21 ( .A1(n59), .A2(n63), .B1(datareg0[27]), .B2(n59), 
        .ZN(n179) );
  INVD0BWP12T30P140 U22 ( .I(wb_dat_i[26]), .ZN(n37) );
  MAOI22D0BWP12T30P140 U23 ( .A1(n59), .A2(n37), .B1(datareg0[26]), .B2(n59), 
        .ZN(n178) );
  INVD0BWP12T30P140 U24 ( .I(wb_dat_i[25]), .ZN(n23) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n59), .A2(n23), .B1(datareg0[25]), .B2(n59), 
        .ZN(n177) );
  AN2D0BWP12T30P140 U26 ( .A1(n9), .A2(wb_sel_i[0]), .Z(n17) );
  INVD0BWP12T30P140 U27 ( .I(wb_dat_i[2]), .ZN(n61) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n17), .A2(n61), .B1(datareg0[2]), .B2(n17), 
        .ZN(n154) );
  INVD0BWP12T30P140 U29 ( .I(wb_adr_i[0]), .ZN(n4) );
  NR2D0BWP12T30P140 U30 ( .A1(n4), .A2(n49), .ZN(n60) );
  NR2D0BWP12T30P140 U31 ( .A1(wb_adr_i[0]), .A2(n49), .ZN(n64) );
  CKBD0BWP12T30P140 U32 ( .I(n64), .Z(n65) );
  AO222D0BWP12T30P140 U33 ( .A1(n49), .A2(rd_pipe[31]), .B1(datareg1[31]), 
        .B2(n60), .C1(datareg0[31]), .C2(n65), .Z(n119) );
  AN2D0BWP12T30P140 U34 ( .A1(n9), .A2(wb_sel_i[2]), .Z(n46) );
  INVD0BWP12T30P140 U35 ( .I(wb_dat_i[18]), .ZN(n11) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n46), .A2(n11), .B1(datareg0[18]), .B2(n46), 
        .ZN(n170) );
  NR2D0BWP12T30P140 U37 ( .A1(n4), .A2(n3), .ZN(n34) );
  AN2D0BWP12T30P140 U38 ( .A1(wb_sel_i[2]), .A2(n34), .Z(n19) );
  INVD0BWP12T30P140 U39 ( .I(wb_dat_i[21]), .ZN(n10) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n19), .A2(n10), .B1(datareg1[21]), .B2(n19), 
        .ZN(n141) );
  INVD0BWP12T30P140 U41 ( .I(wb_dat_i[3]), .ZN(n70) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n17), .A2(n70), .B1(datareg0[3]), .B2(n17), 
        .ZN(n155) );
  CKBD0BWP12T30P140 U43 ( .I(n49), .Z(n67) );
  CKBD0BWP12T30P140 U44 ( .I(n60), .Z(n66) );
  AO222D0BWP12T30P140 U45 ( .A1(n67), .A2(rd_pipe[26]), .B1(datareg1[26]), 
        .B2(n66), .C1(datareg0[26]), .C2(n64), .Z(n114) );
  INVD0BWP12T30P140 U46 ( .I(wb_dat_i[19]), .ZN(n8) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n46), .A2(n8), .B1(datareg0[19]), .B2(n46), 
        .ZN(n171) );
  INVD0BWP12T30P140 U48 ( .I(wb_dat_i[22]), .ZN(n15) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n19), .A2(n15), .B1(datareg1[22]), .B2(n19), 
        .ZN(n142) );
  INVD0BWP12T30P140 U50 ( .I(wb_dat_i[16]), .ZN(n18) );
  MAOI22D0BWP12T30P140 U51 ( .A1(n46), .A2(n18), .B1(datareg0[16]), .B2(n46), 
        .ZN(n168) );
  INVD0BWP12T30P140 U52 ( .I(wb_dat_i[20]), .ZN(n5) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n19), .A2(n5), .B1(datareg1[20]), .B2(n19), 
        .ZN(n140) );
  INVD0BWP12T30P140 U54 ( .I(wb_dat_i[17]), .ZN(n16) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n46), .A2(n16), .B1(datareg0[17]), .B2(n46), 
        .ZN(n169) );
  INVD0BWP12T30P140 U56 ( .I(wb_dat_i[4]), .ZN(n44) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n17), .A2(n44), .B1(datareg0[4]), .B2(n17), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n46), .A2(n5), .B1(datareg0[20]), .B2(n46), 
        .ZN(n172) );
  INVD0BWP12T30P140 U59 ( .I(wsr[0]), .ZN(n25) );
  ND2D0BWP12T30P140 U60 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(n6) );
  ND2D0BWP12T30P140 U61 ( .A1(n76), .A2(n6), .ZN(n30) );
  NR2D0BWP12T30P140 U62 ( .A1(state), .A2(n6), .ZN(n82) );
  AOI22D0BWP12T30P140 U63 ( .A1(ws_i[0]), .A2(n82), .B1(state), .B2(n25), .ZN(
        n7) );
  OAI21D0BWP12T30P140 U64 ( .A1(n25), .A2(n30), .B(n7), .ZN(n192) );
  INVD0BWP12T30P140 U65 ( .I(wb_dat_i[1]), .ZN(n48) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n17), .A2(n48), .B1(datareg0[1]), .B2(n17), 
        .ZN(n153) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n19), .A2(n8), .B1(datareg1[19]), .B2(n19), 
        .ZN(n139) );
  AO222D0BWP12T30P140 U68 ( .A1(n67), .A2(rd_pipe[1]), .B1(datareg1[1]), .B2(
        n66), .C1(datareg0[1]), .C2(n65), .Z(n89) );
  AN2D0BWP12T30P140 U69 ( .A1(n9), .A2(wb_sel_i[1]), .Z(n29) );
  INVD0BWP12T30P140 U70 ( .I(wb_dat_i[15]), .ZN(n20) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n29), .A2(n20), .B1(datareg0[15]), .B2(n29), 
        .ZN(n167) );
  INVD0BWP12T30P140 U72 ( .I(wb_dat_i[5]), .ZN(n56) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n17), .A2(n56), .B1(datareg0[5]), .B2(n17), 
        .ZN(n157) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n46), .A2(n10), .B1(datareg0[21]), .B2(n46), 
        .ZN(n173) );
  AO222D0BWP12T30P140 U75 ( .A1(n67), .A2(rd_pipe[0]), .B1(datareg1[0]), .B2(
        n66), .C1(datareg0[0]), .C2(n65), .Z(n88) );
  INVD0BWP12T30P140 U76 ( .I(wb_dat_i[23]), .ZN(n45) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n19), .A2(n45), .B1(datareg1[23]), .B2(n19), 
        .ZN(n143) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n19), .A2(n11), .B1(datareg1[18]), .B2(n19), 
        .ZN(n138) );
  NR2D0BWP12T30P140 U79 ( .A1(n12), .A2(n76), .ZN(n38) );
  INVD0BWP12T30P140 U80 ( .I(n38), .ZN(n81) );
  OAI21D0BWP12T30P140 U81 ( .A1(n81), .A2(n25), .B(n30), .ZN(n13) );
  AOI22D0BWP12T30P140 U82 ( .A1(wsr[1]), .A2(n13), .B1(n82), .B2(ws_i[1]), 
        .ZN(n14) );
  OAI31D0BWP12T30P140 U83 ( .A1(wsr[1]), .A2(wsr[0]), .A3(n76), .B(n14), .ZN(
        n190) );
  AO222D0BWP12T30P140 U84 ( .A1(n67), .A2(rd_pipe[30]), .B1(datareg1[30]), 
        .B2(n66), .C1(datareg0[30]), .C2(n64), .Z(n118) );
  INVD0BWP12T30P140 U85 ( .I(wb_dat_i[6]), .ZN(n62) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n17), .A2(n62), .B1(datareg0[6]), .B2(n17), 
        .ZN(n158) );
  AO222D0BWP12T30P140 U87 ( .A1(n49), .A2(rd_pipe[23]), .B1(datareg1[23]), 
        .B2(n60), .C1(datareg0[23]), .C2(n65), .Z(n111) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n46), .A2(n15), .B1(datareg0[22]), .B2(n46), 
        .ZN(n174) );
  INVD0BWP12T30P140 U89 ( .I(wb_dat_i[14]), .ZN(n22) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n29), .A2(n22), .B1(datareg0[14]), .B2(n29), 
        .ZN(n166) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n19), .A2(n16), .B1(datareg1[17]), .B2(n19), 
        .ZN(n137) );
  AO222D0BWP12T30P140 U92 ( .A1(n49), .A2(rd_pipe[29]), .B1(datareg1[29]), 
        .B2(n60), .C1(datareg0[29]), .C2(n65), .Z(n117) );
  INVD0BWP12T30P140 U93 ( .I(wb_dat_i[0]), .ZN(n35) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n17), .A2(n35), .B1(datareg0[0]), .B2(n17), 
        .ZN(n152) );
  INVD0BWP12T30P140 U95 ( .I(wb_dat_i[7]), .ZN(n71) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n17), .A2(n71), .B1(datareg0[7]), .B2(n17), 
        .ZN(n159) );
  AO222D0BWP12T30P140 U97 ( .A1(n67), .A2(rd_pipe[28]), .B1(datareg1[28]), 
        .B2(n66), .C1(datareg0[28]), .C2(n64), .Z(n116) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n19), .A2(n18), .B1(datareg1[16]), .B2(n19), 
        .ZN(n136) );
  ND2D0BWP12T30P140 U99 ( .A1(wb_sel_i[3]), .A2(n34), .ZN(n21) );
  INVD0BWP12T30P140 U100 ( .I(n21), .ZN(n69) );
  INVD0BWP12T30P140 U101 ( .I(wb_dat_i[24]), .ZN(n58) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n69), .A2(n58), .B1(datareg1[24]), .B2(n69), 
        .ZN(n144) );
  INVD0BWP12T30P140 U103 ( .I(wb_dat_i[13]), .ZN(n24) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n29), .A2(n24), .B1(datareg0[13]), .B2(n29), 
        .ZN(n165) );
  AO222D0BWP12T30P140 U105 ( .A1(n49), .A2(rd_pipe[27]), .B1(datareg1[27]), 
        .B2(n60), .C1(datareg0[27]), .C2(n65), .Z(n115) );
  INVD0BWP12T30P140 U106 ( .I(wb_dat_i[8]), .ZN(n73) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n29), .A2(n73), .B1(datareg0[8]), .B2(n29), 
        .ZN(n160) );
  AN2D0BWP12T30P140 U108 ( .A1(wb_sel_i[1]), .A2(n34), .Z(n74) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n74), .A2(n20), .B1(datareg1[15]), .B2(n74), 
        .ZN(n135) );
  AO222D0BWP12T30P140 U110 ( .A1(n67), .A2(rd_pipe[24]), .B1(datareg1[24]), 
        .B2(n60), .C1(datareg0[24]), .C2(n64), .Z(n112) );
  AO222D0BWP12T30P140 U111 ( .A1(n49), .A2(rd_pipe[7]), .B1(datareg1[7]), .B2(
        n66), .C1(datareg0[7]), .C2(n64), .Z(n95) );
  OA22D0BWP12T30P140 U112 ( .A1(n21), .A2(wb_dat_i[31]), .B1(datareg1[31]), 
        .B2(n69), .Z(n151) );
  INVD0BWP12T30P140 U113 ( .I(wb_dat_i[9]), .ZN(n47) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n29), .A2(n47), .B1(datareg0[9]), .B2(n29), 
        .ZN(n161) );
  AO222D0BWP12T30P140 U115 ( .A1(n49), .A2(rd_pipe[22]), .B1(datareg1[22]), 
        .B2(n60), .C1(datareg0[22]), .C2(n64), .Z(n110) );
  INVD0BWP12T30P140 U116 ( .I(wb_dat_i[12]), .ZN(n33) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n29), .A2(n33), .B1(datareg0[12]), .B2(n29), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n74), .A2(n22), .B1(datareg1[14]), .B2(n74), 
        .ZN(n134) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n69), .A2(n23), .B1(datareg1[25]), .B2(n69), 
        .ZN(n145) );
  AO222D0BWP12T30P140 U120 ( .A1(n49), .A2(rd_pipe[21]), .B1(datareg1[21]), 
        .B2(n60), .C1(datareg0[21]), .C2(n64), .Z(n109) );
  INVD0BWP12T30P140 U121 ( .I(wb_dat_i[10]), .ZN(n36) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n29), .A2(n36), .B1(datareg0[10]), .B2(n29), 
        .ZN(n162) );
  AO222D0BWP12T30P140 U123 ( .A1(n49), .A2(rd_pipe[9]), .B1(datareg1[9]), .B2(
        n66), .C1(datareg0[9]), .C2(n64), .Z(n97) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n74), .A2(n24), .B1(datareg1[13]), .B2(n74), 
        .ZN(n133) );
  AO222D0BWP12T30P140 U125 ( .A1(n67), .A2(rd_pipe[20]), .B1(datareg1[20]), 
        .B2(n60), .C1(datareg0[20]), .C2(n64), .Z(n108) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(datareg0[31]), .I1(wb_dat_i[31]), .S(n59), 
        .Z(n183) );
  AO222D0BWP12T30P140 U127 ( .A1(n49), .A2(rd_pipe[25]), .B1(datareg1[25]), 
        .B2(n60), .C1(datareg0[25]), .C2(n65), .Z(n113) );
  ND2D0BWP12T30P140 U128 ( .A1(n26), .A2(n25), .ZN(n42) );
  NR3D0BWP12T30P140 U129 ( .A1(wsr[4]), .A2(wsr[3]), .A3(n42), .ZN(n27) );
  OAI21D0BWP12T30P140 U130 ( .A1(n27), .A2(n81), .B(n30), .ZN(n83) );
  AOI21D0BWP12T30P140 U131 ( .A1(wsr[5]), .A2(state), .B(n83), .ZN(n50) );
  INVD0BWP12T30P140 U132 ( .I(wsr[6]), .ZN(n51) );
  ND2D0BWP12T30P140 U133 ( .A1(n38), .A2(n27), .ZN(n79) );
  NR2D0BWP12T30P140 U134 ( .A1(wsr[5]), .A2(n79), .ZN(n85) );
  ND2D0BWP12T30P140 U135 ( .A1(n85), .A2(n51), .ZN(n54) );
  ND2D0BWP12T30P140 U136 ( .A1(n82), .A2(ws_i[6]), .ZN(n28) );
  OAI211D0BWP12T30P140 U137 ( .A1(n50), .A2(n51), .B(n54), .C(n28), .ZN(n185)
         );
  INVD0BWP12T30P140 U138 ( .I(wb_dat_i[11]), .ZN(n43) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n29), .A2(n43), .B1(datareg0[11]), .B2(n29), 
        .ZN(n163) );
  INVD0BWP12T30P140 U140 ( .I(n30), .ZN(n39) );
  AOI21D0BWP12T30P140 U141 ( .A1(n38), .A2(n42), .B(n39), .ZN(n75) );
  NR2D0BWP12T30P140 U142 ( .A1(n81), .A2(n42), .ZN(n31) );
  AOI22D0BWP12T30P140 U143 ( .A1(ws_i[3]), .A2(n82), .B1(n31), .B2(n77), .ZN(
        n32) );
  OAI21D0BWP12T30P140 U144 ( .A1(n75), .A2(n77), .B(n32), .ZN(n188) );
  AO222D0BWP12T30P140 U145 ( .A1(n67), .A2(rd_pipe[10]), .B1(datareg1[10]), 
        .B2(n60), .C1(datareg0[10]), .C2(n65), .Z(n98) );
  AO222D0BWP12T30P140 U146 ( .A1(n49), .A2(rd_pipe[19]), .B1(datareg1[19]), 
        .B2(n66), .C1(datareg0[19]), .C2(n64), .Z(n107) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n74), .A2(n33), .B1(datareg1[12]), .B2(n74), 
        .ZN(n132) );
  AO222D0BWP12T30P140 U148 ( .A1(n49), .A2(rd_pipe[11]), .B1(datareg1[11]), 
        .B2(n66), .C1(datareg0[11]), .C2(n64), .Z(n99) );
  AO222D0BWP12T30P140 U149 ( .A1(n67), .A2(rd_pipe[16]), .B1(datareg1[16]), 
        .B2(n60), .C1(datareg0[16]), .C2(n65), .Z(n104) );
  AO222D0BWP12T30P140 U150 ( .A1(n67), .A2(rd_pipe[8]), .B1(datareg1[8]), .B2(
        n60), .C1(datareg0[8]), .C2(n65), .Z(n96) );
  AO222D0BWP12T30P140 U151 ( .A1(n49), .A2(rd_pipe[15]), .B1(datareg1[15]), 
        .B2(n66), .C1(datareg0[15]), .C2(n64), .Z(n103) );
  AN2D0BWP12T30P140 U152 ( .A1(wb_sel_i[0]), .A2(n34), .Z(n72) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n72), .A2(n35), .B1(datareg1[0]), .B2(n72), 
        .ZN(n120) );
  MAOI22D0BWP12T30P140 U154 ( .A1(n74), .A2(n36), .B1(datareg1[10]), .B2(n74), 
        .ZN(n130) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n69), .A2(n37), .B1(datareg1[26]), .B2(n69), 
        .ZN(n146) );
  OA32D0BWP12T30P140 U156 ( .A1(wsr[1]), .A2(n39), .A3(wsr[0]), .B1(n38), .B2(
        n39), .Z(n40) );
  AOI22D0BWP12T30P140 U157 ( .A1(wsr[2]), .A2(n40), .B1(n82), .B2(ws_i[2]), 
        .ZN(n41) );
  OAI21D0BWP12T30P140 U158 ( .A1(n81), .A2(n42), .B(n41), .ZN(n189) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n74), .A2(n43), .B1(datareg1[11]), .B2(n74), 
        .ZN(n131) );
  AO222D0BWP12T30P140 U160 ( .A1(n67), .A2(rd_pipe[14]), .B1(datareg1[14]), 
        .B2(n60), .C1(datareg0[14]), .C2(n65), .Z(n102) );
  MAOI22D0BWP12T30P140 U161 ( .A1(n72), .A2(n44), .B1(datareg1[4]), .B2(n72), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n46), .A2(n45), .B1(datareg0[23]), .B2(n46), 
        .ZN(n175) );
  AO222D0BWP12T30P140 U163 ( .A1(n67), .A2(rd_pipe[18]), .B1(datareg1[18]), 
        .B2(n60), .C1(datareg0[18]), .C2(n65), .Z(n106) );
  MAOI22D0BWP12T30P140 U164 ( .A1(n74), .A2(n47), .B1(datareg1[9]), .B2(n74), 
        .ZN(n129) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n72), .A2(n48), .B1(datareg1[1]), .B2(n72), 
        .ZN(n121) );
  AO222D0BWP12T30P140 U166 ( .A1(n49), .A2(rd_pipe[17]), .B1(datareg1[17]), 
        .B2(n66), .C1(datareg0[17]), .C2(n64), .Z(n105) );
  AO222D0BWP12T30P140 U167 ( .A1(n49), .A2(rd_pipe[13]), .B1(datareg1[13]), 
        .B2(n66), .C1(datareg0[13]), .C2(n64), .Z(n101) );
  OAI21D0BWP12T30P140 U168 ( .A1(n51), .A2(n76), .B(n50), .ZN(n52) );
  AOI22D0BWP12T30P140 U169 ( .A1(wsr[7]), .A2(n52), .B1(n82), .B2(ws_i[7]), 
        .ZN(n53) );
  OAI21D0BWP12T30P140 U170 ( .A1(wsr[7]), .A2(n54), .B(n53), .ZN(n184) );
  MAOI22D0BWP12T30P140 U171 ( .A1(n69), .A2(n55), .B1(datareg1[28]), .B2(n69), 
        .ZN(n148) );
  AO222D0BWP12T30P140 U172 ( .A1(n67), .A2(rd_pipe[5]), .B1(datareg1[5]), .B2(
        n66), .C1(datareg0[5]), .C2(n65), .Z(n93) );
  MAOI22D0BWP12T30P140 U173 ( .A1(n72), .A2(n56), .B1(datareg1[5]), .B2(n72), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n69), .A2(n57), .B1(datareg1[30]), .B2(n69), 
        .ZN(n150) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n59), .A2(n58), .B1(datareg0[24]), .B2(n59), 
        .ZN(n176) );
  AO222D0BWP12T30P140 U176 ( .A1(n67), .A2(rd_pipe[12]), .B1(datareg1[12]), 
        .B2(n60), .C1(datareg0[12]), .C2(n65), .Z(n100) );
  MAOI22D0BWP12T30P140 U177 ( .A1(n72), .A2(n61), .B1(datareg1[2]), .B2(n72), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n72), .A2(n62), .B1(datareg1[6]), .B2(n72), 
        .ZN(n126) );
  MAOI22D0BWP12T30P140 U179 ( .A1(n69), .A2(n63), .B1(datareg1[27]), .B2(n69), 
        .ZN(n147) );
  AO222D0BWP12T30P140 U180 ( .A1(n67), .A2(rd_pipe[6]), .B1(datareg1[6]), .B2(
        n66), .C1(datareg0[6]), .C2(n64), .Z(n94) );
  AO222D0BWP12T30P140 U181 ( .A1(n67), .A2(rd_pipe[2]), .B1(datareg1[2]), .B2(
        n66), .C1(datareg0[2]), .C2(n65), .Z(n90) );
  AO222D0BWP12T30P140 U182 ( .A1(n67), .A2(rd_pipe[4]), .B1(datareg1[4]), .B2(
        n66), .C1(datareg0[4]), .C2(n65), .Z(n92) );
  AO222D0BWP12T30P140 U183 ( .A1(n67), .A2(rd_pipe[3]), .B1(datareg1[3]), .B2(
        n66), .C1(datareg0[3]), .C2(n65), .Z(n91) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n69), .A2(n68), .B1(datareg1[29]), .B2(n69), 
        .ZN(n149) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n72), .A2(n70), .B1(datareg1[3]), .B2(n72), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n72), .A2(n71), .B1(datareg1[7]), .B2(n72), 
        .ZN(n127) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n74), .A2(n73), .B1(datareg1[8]), .B2(n74), 
        .ZN(n128) );
  CKBD0BWP12T30P140 U188 ( .I(clk_i), .Z(n198) );
  CKBD0BWP12T30P140 U189 ( .I(clk_i), .Z(n202) );
  CKBD0BWP12T30P140 U190 ( .I(clk_i), .Z(n203) );
  CKBD0BWP12T30P140 U191 ( .I(clk_i), .Z(n204) );
  CKBD0BWP12T30P140 U192 ( .I(clk_i), .Z(n201) );
  CKBD0BWP12T30P140 U193 ( .I(clk_i), .Z(n199) );
  CKBD0BWP12T30P140 U194 ( .I(clk_i), .Z(n200) );
  CKBD0BWP12T30P140 U195 ( .I(nrst_i), .Z(n196) );
  CKBD0BWP12T30P140 U196 ( .I(nrst_i), .Z(n193) );
  CKBD0BWP12T30P140 U197 ( .I(nrst_i), .Z(n87) );
  CKBD0BWP12T30P140 U198 ( .I(nrst_i), .Z(n86) );
  CKBD0BWP12T30P140 U199 ( .I(nrst_i), .Z(n197) );
  CKBD0BWP12T30P140 U200 ( .I(nrst_i), .Z(n194) );
  CKBD0BWP12T30P140 U201 ( .I(nrst_i), .Z(n195) );
  OAI21D0BWP12T30P140 U202 ( .A1(n77), .A2(n76), .B(n75), .ZN(n78) );
  AOI22D0BWP12T30P140 U203 ( .A1(wsr[4]), .A2(n78), .B1(n82), .B2(ws_i[4]), 
        .ZN(n80) );
  ND2D0BWP12T30P140 U204 ( .A1(n80), .A2(n79), .ZN(n187) );
  IND2D1BWP12T30P140 U205 ( .A1(n82), .B1(n81), .ZN(n191) );
  AOI22D0BWP12T30P140 U206 ( .A1(wsr[5]), .A2(n83), .B1(n82), .B2(ws_i[5]), 
        .ZN(n84) );
  IND2D1BWP12T30P140 U207 ( .A1(n85), .B1(n84), .ZN(n186) );
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
         n13, n14, n15, n16, n17, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49,
         SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51,
         SYNOPSYS_UNCONNECTED_52, SYNOPSYS_UNCONNECTED_53,
         SYNOPSYS_UNCONNECTED_54, SYNOPSYS_UNCONNECTED_55,
         SYNOPSYS_UNCONNECTED_56, SYNOPSYS_UNCONNECTED_57,
         SYNOPSYS_UNCONNECTED_58, SYNOPSYS_UNCONNECTED_59,
         SYNOPSYS_UNCONNECTED_60, SYNOPSYS_UNCONNECTED_61,
         SYNOPSYS_UNCONNECTED_62, SYNOPSYS_UNCONNECTED_63,
         SYNOPSYS_UNCONNECTED_64, SYNOPSYS_UNCONNECTED_65,
         SYNOPSYS_UNCONNECTED_66, SYNOPSYS_UNCONNECTED_67,
         SYNOPSYS_UNCONNECTED_68, SYNOPSYS_UNCONNECTED_69,
         SYNOPSYS_UNCONNECTED_70, SYNOPSYS_UNCONNECTED_71,
         SYNOPSYS_UNCONNECTED_72, SYNOPSYS_UNCONNECTED_73,
         SYNOPSYS_UNCONNECTED_74, SYNOPSYS_UNCONNECTED_75,
         SYNOPSYS_UNCONNECTED_76, SYNOPSYS_UNCONNECTED_77,
         SYNOPSYS_UNCONNECTED_78, SYNOPSYS_UNCONNECTED_79,
         SYNOPSYS_UNCONNECTED_80, SYNOPSYS_UNCONNECTED_81,
         SYNOPSYS_UNCONNECTED_82, SYNOPSYS_UNCONNECTED_83,
         SYNOPSYS_UNCONNECTED_84, SYNOPSYS_UNCONNECTED_85,
         SYNOPSYS_UNCONNECTED_86, SYNOPSYS_UNCONNECTED_87,
         SYNOPSYS_UNCONNECTED_88, SYNOPSYS_UNCONNECTED_89,
         SYNOPSYS_UNCONNECTED_90, SYNOPSYS_UNCONNECTED_91,
         SYNOPSYS_UNCONNECTED_92, SYNOPSYS_UNCONNECTED_93,
         SYNOPSYS_UNCONNECTED_94, SYNOPSYS_UNCONNECTED_95,
         SYNOPSYS_UNCONNECTED_96, SYNOPSYS_UNCONNECTED_97,
         SYNOPSYS_UNCONNECTED_98, SYNOPSYS_UNCONNECTED_99,
         SYNOPSYS_UNCONNECTED_100;
  wire   [3:0] regfile_adr;
  wire   [3:0] wbm_adr_o;
  wire   [3:0] lad_bus;
  wire   [3:0] lad_o_host;
  wire   [31:0] wbm_dat_o;
  wire   [31:0] wbm_dat_i;
  wire   [3:0] wbm_sel_o;
  wire   [3:0] lad_o_periph;

  wb_lpc_host UUT_Host ( .clk_i(n16), .nrst_i(n13), .wbs_adr_i(wbs_adr_i), 
        .wbs_dat_o(wbs_dat_o), .wbs_dat_i(wbs_dat_i), .wbs_sel_i(wbs_sel_i), 
        .wbs_tga_i(wbs_tga_i), .wbs_we_i(wbs_we_i), .wbs_stb_i(wbs_stb_i), 
        .wbs_cyc_i(wbs_cyc_i), .wbs_ack_o(wbs_ack_o), .wbs_err_o(wbs_err_o), 
        .dma_chan_i(dma_chan_i), .dma_tc_i(dma_tc_i), .lframe_o(lframe_o), 
        .lad_i(lad_bus), .lad_o(lad_o_host), .lad_oe(lad_oe_host) );
  wb_lpc_periph UUT_Periph ( .clk_i(n17), .nrst_i(nrst_i), .wbm_adr_o({
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
  wb_dreq_periph UUT_DREQ_Periph ( .clk_i(clk_i), .nrst_i(n15), .dma_chan_i(
        dma_chan_i), .dma_req_i(dma_req_i), .ldrq_o(ldrq_o) );
  wb_dreq_host UUT_DREQ_Host ( .clk_i(n17), .nrst_i(n14), .dma_chan_o({
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36}), .ldrq_i(ldrq_o) );
  wb_regfile regfile ( .clk_i(n16), .nrst_i(n13), .wb_adr_i(regfile_adr), 
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
  INR3D1BWP12T30P140 U17 ( .A1(dma_chan_i[1]), .B1(dma_chan_i[0]), .B2(
        dma_chan_i[2]), .ZN(n12) );
  CKBD0BWP12T30P140 U18 ( .I(clk_i), .Z(n17) );
  TIELBWP12T30P140 U19 ( .ZN(wbm_err_i) );
  OR2D0BWP12T30P140 U20 ( .A1(lad_oe_periph), .A2(lad_oe_host), .Z(n2) );
  INR2D1BWP12T30P140 U21 ( .A1(lad_oe_periph), .B1(lad_oe_host), .ZN(n11) );
  AO22D0BWP12T30P140 U22 ( .A1(lad_oe_host), .A2(lad_o_host[2]), .B1(n11), 
        .B2(lad_o_periph[2]), .Z(N13) );
  AO22D0BWP12T30P140 U23 ( .A1(lad_oe_host), .A2(lad_o_host[3]), .B1(n11), 
        .B2(lad_o_periph[3]), .Z(N15) );
  AO22D0BWP12T30P140 U24 ( .A1(lad_oe_host), .A2(lad_o_host[1]), .B1(n11), 
        .B2(lad_o_periph[1]), .Z(N11) );
  AO22D0BWP12T30P140 U25 ( .A1(lad_oe_host), .A2(lad_o_host[0]), .B1(n11), 
        .B2(lad_o_periph[0]), .Z(N9) );
  OR2D0BWP12T30P140 U26 ( .A1(n12), .A2(wbm_adr_o[3]), .Z(regfile_adr[3]) );
  INR2D1BWP12T30P140 U27 ( .A1(wbm_adr_o[0]), .B1(n12), .ZN(regfile_adr[0]) );
  CKBD0BWP12T30P140 U28 ( .I(clk_i), .Z(n16) );
  CKBD0BWP12T30P140 U29 ( .I(nrst_i), .Z(n15) );
  CKBD0BWP12T30P140 U30 ( .I(nrst_i), .Z(n14) );
  INR2D1BWP12T30P140 U31 ( .A1(wbm_adr_o[1]), .B1(n12), .ZN(regfile_adr[1]) );
  INR2D1BWP12T30P140 U32 ( .A1(wbm_adr_o[2]), .B1(n12), .ZN(regfile_adr[2]) );
endmodule

