/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:49:07 2026
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
  wire   dat_cnt_0_, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244;
  wire   [2:0] byte_cnt;
  wire   [12:0] state;
  wire   [2:0] adr_cnt;
  wire   [2:0] xfr_len;

  DFQD2BWP12T30P140 wbs_ack_o_reg ( .D(n264), .CP(clk_i), .Q(wbs_ack_o) );
  DFQD2BWP12T30P140 wbs_err_o_reg ( .D(n265), .CP(clk_i), .Q(wbs_err_o) );
  DFQD2BWP12T30P140 lpc_dat_i_reg_4_ ( .D(n302), .CP(n242), .Q(wbs_dat_o[4])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_7_ ( .D(n301), .CP(n242), .Q(wbs_dat_o[7])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_6_ ( .D(n300), .CP(n242), .Q(wbs_dat_o[6])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_5_ ( .D(n299), .CP(n242), .Q(wbs_dat_o[5])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_12_ ( .D(n294), .CP(n244), .Q(wbs_dat_o[12])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_15_ ( .D(n293), .CP(n243), .Q(wbs_dat_o[15])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_14_ ( .D(n292), .CP(n242), .Q(wbs_dat_o[14])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_13_ ( .D(n291), .CP(n244), .Q(wbs_dat_o[13])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_20_ ( .D(n286), .CP(n243), .Q(wbs_dat_o[20])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_23_ ( .D(n285), .CP(n242), .Q(wbs_dat_o[23])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_22_ ( .D(n284), .CP(n244), .Q(wbs_dat_o[22])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_21_ ( .D(n283), .CP(n243), .Q(wbs_dat_o[21])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n277), .CP(n244), .Q(wbs_dat_o[31])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_30_ ( .D(n276), .CP(n243), .Q(wbs_dat_o[30])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_29_ ( .D(n275), .CP(n242), .Q(wbs_dat_o[29])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_24_ ( .D(n282), .CP(n244), .Q(wbs_dat_o[24])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_27_ ( .D(n281), .CP(n243), .Q(wbs_dat_o[27])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n280), .CP(n242), .Q(wbs_dat_o[26])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n279), .CP(n243), .Q(wbs_dat_o[25])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_16_ ( .D(n290), .CP(n244), .Q(wbs_dat_o[16])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_19_ ( .D(n289), .CP(n243), .Q(wbs_dat_o[19])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n288), .CP(n242), .Q(wbs_dat_o[18])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_17_ ( .D(n287), .CP(n242), .Q(wbs_dat_o[17])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_8_ ( .D(n298), .CP(n244), .Q(wbs_dat_o[8])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_11_ ( .D(n297), .CP(n244), .Q(wbs_dat_o[11])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_10_ ( .D(n296), .CP(n244), .Q(wbs_dat_o[10])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_0_ ( .D(n306), .CP(n244), .Q(wbs_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_3_ ( .D(n305), .CP(n244), .Q(wbs_dat_o[3])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_2_ ( .D(n304), .CP(n244), .Q(wbs_dat_o[2])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_1_ ( .D(n303), .CP(n244), .Q(wbs_dat_o[1])
         );
  DFQD2BWP12T30P140 state_reg_6_ ( .D(n255), .CP(n243), .Q(state[6]) );
  DFQD2BWP12T30P140 state_reg_4_ ( .D(n253), .CP(n242), .Q(state[4]) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n268), .CP(n243), .Q(adr_cnt[0]) );
  DFQD2BWP12T30P140 state_reg_10_ ( .D(n259), .CP(clk_i), .Q(state[10]) );
  DFQD2BWP12T30P140 lad_o_reg_3_ ( .D(n249), .CP(n244), .Q(lad_o[3]) );
  DFQD2BWP12T30P140 lad_o_reg_2_ ( .D(n248), .CP(n244), .Q(lad_o[2]) );
  DFQD2BWP12T30P140 lad_o_reg_1_ ( .D(n247), .CP(n244), .Q(lad_o[1]) );
  DFQD2BWP12T30P140 lad_o_reg_0_ ( .D(n246), .CP(n243), .Q(lad_o[0]) );
  DFQD2BWP12T30P140 xfr_len_reg_0_ ( .D(n274), .CP(n242), .Q(xfr_len[0]) );
  DFQD2BWP12T30P140 lframe_o_reg ( .D(n263), .CP(n242), .Q(lframe_o) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n251), .CP(n243), .Q(state[2]) );
  DFQD2BWP12T30P140 xfr_len_reg_2_ ( .D(n273), .CP(n242), .Q(xfr_len[2]) );
  DFQD2BWP12T30P140 adr_cnt_reg_2_ ( .D(n266), .CP(n243), .Q(adr_cnt[2]) );
  DFQD2BWP12T30P140 xfr_len_reg_1_ ( .D(n272), .CP(n242), .Q(xfr_len[1]) );
  DFQD2BWP12T30P140 dat_cnt_reg_3_ ( .D(n269), .CP(n242), .Q(byte_cnt[2]) );
  DFQD2BWP12T30P140 state_reg_7_ ( .D(n256), .CP(n242), .Q(state[7]) );
  DFQD2BWP12T30P140 state_reg_11_ ( .D(n260), .CP(n243), .Q(state[11]) );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n252), .CP(n243), .Q(state[3]) );
  DFQD2BWP12T30P140 state_reg_8_ ( .D(n257), .CP(n243), .Q(state[8]) );
  DFQD2BWP12T30P140 state_reg_9_ ( .D(n258), .CP(n243), .Q(state[9]) );
  DFQD2BWP12T30P140 adr_cnt_reg_1_ ( .D(n267), .CP(n243), .Q(adr_cnt[1]) );
  DFQD2BWP12T30P140 dat_cnt_reg_1_ ( .D(n271), .CP(n244), .Q(byte_cnt[0]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n250), .CP(n243), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n262), .CP(n243), .Q(state[0]) );
  DFQD2BWP12T30P140 lad_oe_reg ( .D(n245), .CP(n242), .Q(lad_oe) );
  DFQD2BWP12T30P140 dat_cnt_reg_0_ ( .D(n307), .CP(n244), .Q(dat_cnt_0_) );
  DFQD2BWP12T30P140 dat_cnt_reg_2_ ( .D(n270), .CP(n242), .Q(byte_cnt[1]) );
  DFQD1BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n278), .CP(n242), .Q(wbs_dat_o[28])
         );
  DFQD1BWP12T30P140 lpc_dat_i_reg_9_ ( .D(n295), .CP(n244), .Q(wbs_dat_o[9])
         );
  DFQD1BWP12T30P140 state_reg_5_ ( .D(n254), .CP(n243), .Q(state[5]) );
  DFQD1BWP12T30P140 state_reg_12_ ( .D(n261), .CP(n244), .Q(state[12]) );
  INVD0BWP12T30P140 U3 ( .I(nrst_i), .ZN(n241) );
  NR3D0BWP12T30P140 U4 ( .A1(state[10]), .A2(state[7]), .A3(state[11]), .ZN(
        n11) );
  INVD0BWP12T30P140 U5 ( .I(state[6]), .ZN(n49) );
  ND2D0BWP12T30P140 U6 ( .A1(n11), .A2(n49), .ZN(n2) );
  NR3D0BWP12T30P140 U7 ( .A1(state[8]), .A2(state[9]), .A3(n2), .ZN(n27) );
  NR3D0BWP12T30P140 U8 ( .A1(state[5]), .A2(state[0]), .A3(state[2]), .ZN(n36)
         );
  INVD0BWP12T30P140 U9 ( .I(state[4]), .ZN(n51) );
  ND2D0BWP12T30P140 U10 ( .A1(n36), .A2(n51), .ZN(n26) );
  NR3D0BWP12T30P140 U11 ( .A1(state[3]), .A2(state[1]), .A3(n26), .ZN(n3) );
  ND2D0BWP12T30P140 U12 ( .A1(n27), .A2(n3), .ZN(n220) );
  INR3D1BWP12T30P140 U13 ( .A1(n3), .B1(state[8]), .B2(state[9]), .ZN(n10) );
  ND2D0BWP12T30P140 U14 ( .A1(n49), .A2(n10), .ZN(n30) );
  NR2D0BWP12T30P140 U15 ( .A1(state[7]), .A2(state[11]), .ZN(n1) );
  IND3D1BWP12T30P140 U16 ( .A1(n30), .B1(state[10]), .B2(n1), .ZN(n237) );
  ND2D0BWP12T30P140 U17 ( .A1(n220), .A2(n237), .ZN(n34) );
  INVD0BWP12T30P140 U18 ( .I(n34), .ZN(n6) );
  INVD0BWP12T30P140 U19 ( .I(state[8]), .ZN(n193) );
  INR2D1BWP12T30P140 U20 ( .A1(n3), .B1(n2), .ZN(n32) );
  ND3D0BWP12T30P140 U21 ( .A1(n193), .A2(n32), .A3(state[9]), .ZN(n146) );
  INVD0BWP12T30P140 U22 ( .I(xfr_len[1]), .ZN(n169) );
  INVD0BWP12T30P140 U23 ( .I(byte_cnt[1]), .ZN(n16) );
  AOI22D0BWP12T30P140 U24 ( .A1(byte_cnt[1]), .A2(xfr_len[1]), .B1(n169), .B2(
        n16), .ZN(n38) );
  INVD0BWP12T30P140 U25 ( .I(byte_cnt[2]), .ZN(n4) );
  NR2D0BWP12T30P140 U26 ( .A1(xfr_len[2]), .A2(n4), .ZN(n43) );
  INVD0BWP12T30P140 U27 ( .I(xfr_len[0]), .ZN(n212) );
  ND2D0BWP12T30P140 U28 ( .A1(byte_cnt[0]), .A2(n212), .ZN(n39) );
  INVD0BWP12T30P140 U29 ( .I(byte_cnt[0]), .ZN(n210) );
  ND2D0BWP12T30P140 U30 ( .A1(xfr_len[0]), .A2(n210), .ZN(n40) );
  ND2D0BWP12T30P140 U31 ( .A1(xfr_len[2]), .A2(n4), .ZN(n45) );
  IND4D1BWP12T30P140 U32 ( .A1(n43), .B1(n39), .B2(n40), .B3(n45), .ZN(n5) );
  NR2D0BWP12T30P140 U33 ( .A1(n38), .A2(n5), .ZN(n147) );
  IND2D1BWP12T30P140 U34 ( .A1(n146), .B1(n147), .ZN(n54) );
  AOI21D0BWP12T30P140 U35 ( .A1(n6), .A2(n54), .B(state[12]), .ZN(n8) );
  ND2D0BWP12T30P140 U36 ( .A1(wbs_cyc_i), .A2(wbs_stb_i), .ZN(n219) );
  OAI21D0BWP12T30P140 U37 ( .A1(n146), .A2(n219), .B(n8), .ZN(n7) );
  OAI21D0BWP12T30P140 U38 ( .A1(n8), .A2(wbs_ack_o), .B(n7), .ZN(n9) );
  NR2D0BWP12T30P140 U39 ( .A1(n241), .A2(n9), .ZN(n264) );
  ND2D0BWP12T30P140 U40 ( .A1(nrst_i), .A2(lad_i[0]), .ZN(n21) );
  INVD0BWP12T30P140 U41 ( .I(dat_cnt_0_), .ZN(n227) );
  NR3D0BWP12T30P140 U42 ( .A1(byte_cnt[0]), .A2(byte_cnt[1]), .A3(n227), .ZN(
        n122) );
  ND3D0BWP12T30P140 U43 ( .A1(state[6]), .A2(n11), .A3(n10), .ZN(n184) );
  NR3D0BWP12T30P140 U44 ( .A1(state[12]), .A2(byte_cnt[2]), .A3(n184), .ZN(n20) );
  AO21D0BWP12T30P140 U45 ( .A1(n122), .A2(n20), .B(n241), .Z(n12) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n21), .A2(n12), .B1(n12), .B2(wbs_dat_o[4]), 
        .ZN(n302) );
  ND2D0BWP12T30P140 U47 ( .A1(nrst_i), .A2(lad_i[3]), .ZN(n22) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n22), .A2(n12), .B1(n12), .B2(wbs_dat_o[7]), 
        .ZN(n301) );
  ND2D0BWP12T30P140 U49 ( .A1(nrst_i), .A2(lad_i[2]), .ZN(n23) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n23), .A2(n12), .B1(n12), .B2(wbs_dat_o[6]), 
        .ZN(n300) );
  ND2D0BWP12T30P140 U51 ( .A1(nrst_i), .A2(lad_i[1]), .ZN(n25) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n25), .A2(n12), .B1(n12), .B2(wbs_dat_o[5]), 
        .ZN(n299) );
  NR3D0BWP12T30P140 U53 ( .A1(byte_cnt[1]), .A2(n227), .A3(n210), .ZN(n231) );
  AO21D0BWP12T30P140 U54 ( .A1(n231), .A2(n20), .B(n241), .Z(n13) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n21), .A2(n13), .B1(n13), .B2(wbs_dat_o[12]), 
        .ZN(n294) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n22), .A2(n13), .B1(n13), .B2(wbs_dat_o[15]), 
        .ZN(n293) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n23), .A2(n13), .B1(n13), .B2(wbs_dat_o[14]), 
        .ZN(n292) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n25), .A2(n13), .B1(n13), .B2(wbs_dat_o[13]), 
        .ZN(n291) );
  ND2D0BWP12T30P140 U59 ( .A1(byte_cnt[1]), .A2(n210), .ZN(n235) );
  NR2D0BWP12T30P140 U60 ( .A1(n227), .A2(n235), .ZN(n119) );
  AO21D0BWP12T30P140 U61 ( .A1(n119), .A2(n20), .B(n241), .Z(n14) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n21), .A2(n14), .B1(n14), .B2(wbs_dat_o[20]), 
        .ZN(n286) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n22), .A2(n14), .B1(n14), .B2(wbs_dat_o[23]), 
        .ZN(n285) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n23), .A2(n14), .B1(n14), .B2(wbs_dat_o[22]), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n25), .A2(n14), .B1(n14), .B2(wbs_dat_o[21]), 
        .ZN(n283) );
  NR3D0BWP12T30P140 U66 ( .A1(n210), .A2(n16), .A3(n227), .ZN(n174) );
  AO21D0BWP12T30P140 U67 ( .A1(n174), .A2(n20), .B(n241), .Z(n15) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n21), .A2(n15), .B1(n15), .B2(wbs_dat_o[28]), 
        .ZN(n278) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n22), .A2(n15), .B1(n15), .B2(wbs_dat_o[31]), 
        .ZN(n277) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n23), .A2(n15), .B1(n15), .B2(wbs_dat_o[30]), 
        .ZN(n276) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n25), .A2(n15), .B1(n15), .B2(wbs_dat_o[29]), 
        .ZN(n275) );
  NR3D0BWP12T30P140 U72 ( .A1(dat_cnt_0_), .A2(n16), .A3(n210), .ZN(n117) );
  AO21D0BWP12T30P140 U73 ( .A1(n117), .A2(n20), .B(n241), .Z(n17) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n21), .A2(n17), .B1(n17), .B2(wbs_dat_o[24]), 
        .ZN(n282) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n22), .A2(n17), .B1(n17), .B2(wbs_dat_o[27]), 
        .ZN(n281) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n23), .A2(n17), .B1(n17), .B2(wbs_dat_o[26]), 
        .ZN(n280) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n25), .A2(n17), .B1(n17), .B2(wbs_dat_o[25]), 
        .ZN(n279) );
  NR2D0BWP12T30P140 U78 ( .A1(dat_cnt_0_), .A2(n235), .ZN(n118) );
  AO21D0BWP12T30P140 U79 ( .A1(n118), .A2(n20), .B(n241), .Z(n18) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n21), .A2(n18), .B1(n18), .B2(wbs_dat_o[16]), 
        .ZN(n290) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n22), .A2(n18), .B1(n18), .B2(wbs_dat_o[19]), 
        .ZN(n289) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n23), .A2(n18), .B1(n18), .B2(wbs_dat_o[18]), 
        .ZN(n288) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n25), .A2(n18), .B1(n18), .B2(wbs_dat_o[17]), 
        .ZN(n287) );
  NR3D0BWP12T30P140 U84 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .A3(n210), .ZN(
        n120) );
  AO21D0BWP12T30P140 U85 ( .A1(n120), .A2(n20), .B(n241), .Z(n19) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n21), .A2(n19), .B1(n19), .B2(wbs_dat_o[8]), 
        .ZN(n298) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n22), .A2(n19), .B1(n19), .B2(wbs_dat_o[11]), 
        .ZN(n297) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n23), .A2(n19), .B1(n19), .B2(wbs_dat_o[10]), 
        .ZN(n296) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n25), .A2(n19), .B1(n19), .B2(wbs_dat_o[9]), 
        .ZN(n295) );
  NR3D0BWP12T30P140 U90 ( .A1(byte_cnt[0]), .A2(byte_cnt[1]), .A3(dat_cnt_0_), 
        .ZN(n121) );
  AO21D0BWP12T30P140 U91 ( .A1(n121), .A2(n20), .B(n241), .Z(n24) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n21), .A2(n24), .B1(n24), .B2(wbs_dat_o[0]), 
        .ZN(n306) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n22), .A2(n24), .B1(n24), .B2(wbs_dat_o[3]), 
        .ZN(n305) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n23), .A2(n24), .B1(n24), .B2(wbs_dat_o[2]), 
        .ZN(n304) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n25), .A2(n24), .B1(n24), .B2(wbs_dat_o[1]), 
        .ZN(n303) );
  INVD0BWP12T30P140 U96 ( .I(state[12]), .ZN(n221) );
  NR2D0BWP12T30P140 U97 ( .A1(n241), .A2(n221), .ZN(n261) );
  INVD0BWP12T30P140 U98 ( .I(state[3]), .ZN(n191) );
  IND2D1BWP12T30P140 U99 ( .A1(n26), .B1(n27), .ZN(n29) );
  NR3D0BWP12T30P140 U100 ( .A1(state[1]), .A2(n191), .A3(n29), .ZN(n127) );
  INVD0BWP12T30P140 U101 ( .I(n184), .ZN(n170) );
  INVD0BWP12T30P140 U102 ( .I(state[2]), .ZN(n156) );
  INR3D1BWP12T30P140 U103 ( .A1(n27), .B1(state[3]), .B2(state[1]), .ZN(n35)
         );
  ND2D0BWP12T30P140 U104 ( .A1(n35), .A2(n51), .ZN(n28) );
  NR4D0BWP12T30P140 U105 ( .A1(state[5]), .A2(state[0]), .A3(n156), .A4(n28), 
        .ZN(n163) );
  NR2D0BWP12T30P140 U106 ( .A1(state[2]), .A2(n28), .ZN(n31) );
  INVD0BWP12T30P140 U107 ( .I(state[5]), .ZN(n151) );
  INR3D1BWP12T30P140 U108 ( .A1(n31), .B1(state[0]), .B2(n151), .ZN(n181) );
  NR2D0BWP12T30P140 U109 ( .A1(state[3]), .A2(n29), .ZN(n139) );
  ND2D0BWP12T30P140 U110 ( .A1(state[1]), .A2(n139), .ZN(n96) );
  INVD0BWP12T30P140 U111 ( .I(state[11]), .ZN(n189) );
  NR2D0BWP12T30P140 U112 ( .A1(state[10]), .A2(n30), .ZN(n33) );
  ND3D0BWP12T30P140 U113 ( .A1(n189), .A2(n33), .A3(state[7]), .ZN(n192) );
  ND3D0BWP12T30P140 U114 ( .A1(n151), .A2(n31), .A3(state[0]), .ZN(n214) );
  IND4D1BWP12T30P140 U115 ( .A1(n181), .B1(n96), .B2(n192), .B3(n214), .ZN(n57) );
  NR2D0BWP12T30P140 U116 ( .A1(n163), .A2(n57), .ZN(n223) );
  INVD0BWP12T30P140 U117 ( .I(state[9]), .ZN(n202) );
  ND3D0BWP12T30P140 U118 ( .A1(n202), .A2(n32), .A3(state[8]), .ZN(n185) );
  INVD0BWP12T30P140 U119 ( .I(state[7]), .ZN(n183) );
  ND3D0BWP12T30P140 U120 ( .A1(n183), .A2(n33), .A3(state[11]), .ZN(n239) );
  ND4D0BWP12T30P140 U121 ( .A1(n223), .A2(n185), .A3(n239), .A4(n146), .ZN(
        n222) );
  NR4D0BWP12T30P140 U122 ( .A1(n127), .A2(n170), .A3(n34), .A4(n222), .ZN(n37)
         );
  ND3D0BWP12T30P140 U123 ( .A1(state[4]), .A2(n36), .A3(n35), .ZN(n142) );
  AOI31D0BWP12T30P140 U124 ( .A1(nrst_i), .A2(n37), .A3(n142), .B(n261), .ZN(
        n203) );
  INVD0BWP12T30P140 U125 ( .I(wbs_tga_i[1]), .ZN(n94) );
  NR2D0BWP12T30P140 U126 ( .A1(wbs_tga_i[0]), .A2(n94), .ZN(n215) );
  INVD0BWP12T30P140 U127 ( .I(n215), .ZN(n144) );
  NR2D0BWP12T30P140 U128 ( .A1(xfr_len[0]), .A2(xfr_len[1]), .ZN(n44) );
  MUX2ND0BWP12T30P140 U129 ( .I0(n40), .I1(n39), .S(n38), .ZN(n41) );
  OAI21D0BWP12T30P140 U130 ( .A1(n45), .A2(n44), .B(n41), .ZN(n42) );
  AOI211D0BWP12T30P140 U131 ( .A1(n45), .A2(n44), .B(n43), .C(n42), .ZN(n198)
         );
  OAI21D0BWP12T30P140 U132 ( .A1(n144), .A2(n198), .B(dat_cnt_0_), .ZN(n178)
         );
  INVD0BWP12T30P140 U133 ( .I(lad_i[0]), .ZN(n171) );
  AOI211D0BWP12T30P140 U134 ( .A1(lad_i[3]), .A2(n171), .B(lad_i[1]), .C(
        lad_i[2]), .ZN(n46) );
  OAI21D0BWP12T30P140 U135 ( .A1(lad_i[3]), .A2(n171), .B(n46), .ZN(n196) );
  NR2D0BWP12T30P140 U136 ( .A1(n239), .A2(n196), .ZN(n47) );
  INR2D1BWP12T30P140 U137 ( .A1(wbs_we_i), .B1(n219), .ZN(n149) );
  INVD0BWP12T30P140 U138 ( .I(n149), .ZN(n195) );
  AOI22D0BWP12T30P140 U139 ( .A1(n170), .A2(n178), .B1(n47), .B2(n195), .ZN(
        n48) );
  ND2D0BWP12T30P140 U140 ( .A1(nrst_i), .A2(n203), .ZN(n218) );
  OAI22D0BWP12T30P140 U141 ( .A1(n203), .A2(n49), .B1(n48), .B2(n218), .ZN(
        n255) );
  ND2D0BWP12T30P140 U142 ( .A1(n163), .A2(adr_cnt[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U143 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n154) );
  NR2D0BWP12T30P140 U144 ( .A1(n105), .A2(n154), .ZN(n143) );
  AOI21D0BWP12T30P140 U145 ( .A1(n215), .A2(n143), .B(n127), .ZN(n50) );
  OAI22D0BWP12T30P140 U146 ( .A1(n203), .A2(n51), .B1(n50), .B2(n218), .ZN(
        n253) );
  INVD0BWP12T30P140 U147 ( .I(n163), .ZN(n56) );
  AOI32D0BWP12T30P140 U148 ( .A1(n214), .A2(nrst_i), .A3(n56), .B1(state[12]), 
        .B2(nrst_i), .ZN(n205) );
  INVD0BWP12T30P140 U149 ( .I(n205), .ZN(n53) );
  INVD0BWP12T30P140 U150 ( .I(adr_cnt[0]), .ZN(n52) );
  ND2D0BWP12T30P140 U151 ( .A1(n52), .A2(n163), .ZN(n108) );
  INVD0BWP12T30P140 U152 ( .I(n108), .ZN(n153) );
  AOI21D0BWP12T30P140 U153 ( .A1(n153), .A2(nrst_i), .B(n53), .ZN(n208) );
  AOI21D0BWP12T30P140 U154 ( .A1(n53), .A2(n52), .B(n208), .ZN(n268) );
  OA21D0BWP12T30P140 U155 ( .A1(n237), .A2(n219), .B(n54), .Z(n55) );
  INVD0BWP12T30P140 U156 ( .I(n203), .ZN(n216) );
  MOAI22D0BWP12T30P140 U157 ( .A1(n218), .A2(n55), .B1(state[10]), .B2(n216), 
        .ZN(n259) );
  AOI32D0BWP12T30P140 U158 ( .A1(n142), .A2(nrst_i), .A3(n56), .B1(state[12]), 
        .B2(nrst_i), .ZN(n168) );
  AOI221D0BWP12T30P140 U159 ( .A1(n127), .A2(n221), .B1(n57), .B2(n221), .C(
        n168), .ZN(n133) );
  NR2D0BWP12T30P140 U160 ( .A1(n133), .A2(n241), .ZN(n132) );
  INVD0BWP12T30P140 U161 ( .I(adr_cnt[2]), .ZN(n164) );
  NR2D0BWP12T30P140 U162 ( .A1(adr_cnt[1]), .A2(n164), .ZN(n162) );
  INVD0BWP12T30P140 U163 ( .I(adr_cnt[1]), .ZN(n206) );
  NR2D0BWP12T30P140 U164 ( .A1(adr_cnt[2]), .A2(n206), .ZN(n159) );
  NR2D0BWP12T30P140 U165 ( .A1(adr_cnt[1]), .A2(adr_cnt[2]), .ZN(n107) );
  AOI222D0BWP12T30P140 U166 ( .A1(n162), .A2(wbs_adr_i[11]), .B1(n159), .B2(
        wbs_adr_i[19]), .C1(n107), .C2(wbs_adr_i[27]), .ZN(n69) );
  AOI22D0BWP12T30P140 U167 ( .A1(n174), .A2(wbs_dat_i[31]), .B1(n117), .B2(
        wbs_dat_i[27]), .ZN(n61) );
  AOI22D0BWP12T30P140 U168 ( .A1(n119), .A2(wbs_dat_i[23]), .B1(n118), .B2(
        wbs_dat_i[19]), .ZN(n60) );
  AOI22D0BWP12T30P140 U169 ( .A1(n231), .A2(wbs_dat_i[15]), .B1(n120), .B2(
        wbs_dat_i[11]), .ZN(n59) );
  AOI22D0BWP12T30P140 U170 ( .A1(n122), .A2(wbs_dat_i[7]), .B1(n121), .B2(
        wbs_dat_i[3]), .ZN(n58) );
  ND4D0BWP12T30P140 U171 ( .A1(n61), .A2(n60), .A3(n59), .A4(n58), .ZN(n62) );
  AOI22D0BWP12T30P140 U172 ( .A1(n181), .A2(n62), .B1(n127), .B2(dma_tc_i), 
        .ZN(n63) );
  INVD0BWP12T30P140 U173 ( .I(wbs_tga_i[0]), .ZN(n160) );
  NR3D0BWP12T30P140 U174 ( .A1(n96), .A2(n160), .A3(n94), .ZN(n93) );
  INVD0BWP12T30P140 U175 ( .I(n93), .ZN(n190) );
  NR2D0BWP12T30P140 U176 ( .A1(n144), .A2(n214), .ZN(n111) );
  INVD0BWP12T30P140 U177 ( .I(n111), .ZN(n95) );
  ND4D0BWP12T30P140 U178 ( .A1(n63), .A2(n192), .A3(n190), .A4(n95), .ZN(n64)
         );
  AOI21D0BWP12T30P140 U179 ( .A1(n143), .A2(wbs_adr_i[3]), .B(n64), .ZN(n68)
         );
  INVD0BWP12T30P140 U180 ( .I(n154), .ZN(n106) );
  AOI22D0BWP12T30P140 U181 ( .A1(n106), .A2(wbs_adr_i[7]), .B1(n159), .B2(
        wbs_adr_i[23]), .ZN(n66) );
  AOI22D0BWP12T30P140 U182 ( .A1(n162), .A2(wbs_adr_i[15]), .B1(n107), .B2(
        wbs_adr_i[31]), .ZN(n65) );
  AO21D0BWP12T30P140 U183 ( .A1(n66), .A2(n65), .B(n108), .Z(n67) );
  OAI211D0BWP12T30P140 U184 ( .A1(n69), .A2(n105), .B(n68), .C(n67), .ZN(n70)
         );
  AO22D0BWP12T30P140 U185 ( .A1(n133), .A2(lad_o[3]), .B1(n132), .B2(n70), .Z(
        n249) );
  AOI222D0BWP12T30P140 U186 ( .A1(n162), .A2(wbs_adr_i[10]), .B1(n159), .B2(
        wbs_adr_i[18]), .C1(n107), .C2(wbs_adr_i[26]), .ZN(n83) );
  ND2D0BWP12T30P140 U187 ( .A1(n192), .A2(n95), .ZN(n78) );
  AOI22D0BWP12T30P140 U188 ( .A1(n174), .A2(wbs_dat_i[30]), .B1(n117), .B2(
        wbs_dat_i[26]), .ZN(n74) );
  AOI22D0BWP12T30P140 U189 ( .A1(n119), .A2(wbs_dat_i[22]), .B1(n118), .B2(
        wbs_dat_i[18]), .ZN(n73) );
  AOI22D0BWP12T30P140 U190 ( .A1(n231), .A2(wbs_dat_i[14]), .B1(n120), .B2(
        wbs_dat_i[10]), .ZN(n72) );
  AOI22D0BWP12T30P140 U191 ( .A1(n122), .A2(wbs_dat_i[6]), .B1(n121), .B2(
        wbs_dat_i[2]), .ZN(n71) );
  ND4D0BWP12T30P140 U192 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .ZN(n75) );
  AOI22D0BWP12T30P140 U193 ( .A1(n181), .A2(n75), .B1(n127), .B2(dma_chan_i[2]), .ZN(n76) );
  OAI31D0BWP12T30P140 U194 ( .A1(wbs_tga_i[0]), .A2(wbs_tga_i[1]), .A3(n96), 
        .B(n76), .ZN(n77) );
  AOI211D0BWP12T30P140 U195 ( .A1(n143), .A2(wbs_adr_i[2]), .B(n78), .C(n77), 
        .ZN(n82) );
  AOI22D0BWP12T30P140 U196 ( .A1(n106), .A2(wbs_adr_i[6]), .B1(n159), .B2(
        wbs_adr_i[22]), .ZN(n80) );
  AOI22D0BWP12T30P140 U197 ( .A1(n162), .A2(wbs_adr_i[14]), .B1(n107), .B2(
        wbs_adr_i[30]), .ZN(n79) );
  AO21D0BWP12T30P140 U198 ( .A1(n80), .A2(n79), .B(n108), .Z(n81) );
  OAI211D0BWP12T30P140 U199 ( .A1(n83), .A2(n105), .B(n82), .C(n81), .ZN(n84)
         );
  AO22D0BWP12T30P140 U200 ( .A1(n133), .A2(lad_o[2]), .B1(n132), .B2(n84), .Z(
        n248) );
  AOI22D0BWP12T30P140 U201 ( .A1(n174), .A2(wbs_dat_i[29]), .B1(n117), .B2(
        wbs_dat_i[25]), .ZN(n88) );
  AOI22D0BWP12T30P140 U202 ( .A1(n119), .A2(wbs_dat_i[21]), .B1(n118), .B2(
        wbs_dat_i[17]), .ZN(n87) );
  AOI22D0BWP12T30P140 U203 ( .A1(n231), .A2(wbs_dat_i[13]), .B1(n120), .B2(
        wbs_dat_i[9]), .ZN(n86) );
  AOI22D0BWP12T30P140 U204 ( .A1(n122), .A2(wbs_dat_i[5]), .B1(n121), .B2(
        wbs_dat_i[1]), .ZN(n85) );
  ND4D0BWP12T30P140 U205 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .ZN(n92) );
  AOI22D0BWP12T30P140 U206 ( .A1(n106), .A2(wbs_adr_i[5]), .B1(n159), .B2(
        wbs_adr_i[21]), .ZN(n90) );
  AOI22D0BWP12T30P140 U207 ( .A1(n162), .A2(wbs_adr_i[13]), .B1(n107), .B2(
        wbs_adr_i[29]), .ZN(n89) );
  ND2D0BWP12T30P140 U208 ( .A1(n90), .A2(n89), .ZN(n91) );
  AOI22D0BWP12T30P140 U209 ( .A1(n181), .A2(n92), .B1(n153), .B2(n91), .ZN(
        n103) );
  AOI22D0BWP12T30P140 U210 ( .A1(wbs_adr_i[1]), .A2(n143), .B1(n93), .B2(n195), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U211 ( .A1(n160), .A2(n94), .ZN(n97) );
  OAI21D0BWP12T30P140 U212 ( .A1(n97), .A2(n96), .B(n95), .ZN(n152) );
  INVD0BWP12T30P140 U213 ( .I(n192), .ZN(n100) );
  AOI222D0BWP12T30P140 U214 ( .A1(n162), .A2(wbs_adr_i[9]), .B1(n159), .B2(
        wbs_adr_i[17]), .C1(n107), .C2(wbs_adr_i[25]), .ZN(n98) );
  MOAI22D0BWP12T30P140 U215 ( .A1(n98), .A2(n105), .B1(n127), .B2(
        dma_chan_i[1]), .ZN(n99) );
  AOI211D0BWP12T30P140 U216 ( .A1(n149), .A2(n152), .B(n100), .C(n99), .ZN(
        n101) );
  ND2D0BWP12T30P140 U217 ( .A1(wbs_sel_i[1]), .A2(wbs_sel_i[0]), .ZN(n135) );
  NR2D0BWP12T30P140 U218 ( .A1(n142), .A2(n135), .ZN(n112) );
  ND3D0BWP12T30P140 U219 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .A3(n112), 
        .ZN(n157) );
  ND4D0BWP12T30P140 U220 ( .A1(n103), .A2(n102), .A3(n101), .A4(n157), .ZN(
        n104) );
  AO22D0BWP12T30P140 U221 ( .A1(n133), .A2(lad_o[1]), .B1(n132), .B2(n104), 
        .Z(n247) );
  INVD0BWP12T30P140 U222 ( .I(n105), .ZN(n204) );
  AO222D0BWP12T30P140 U223 ( .A1(n162), .A2(wbs_adr_i[8]), .B1(n107), .B2(
        wbs_adr_i[24]), .C1(wbs_adr_i[16]), .C2(n159), .Z(n116) );
  AOI22D0BWP12T30P140 U224 ( .A1(n106), .A2(wbs_adr_i[4]), .B1(n159), .B2(
        wbs_adr_i[20]), .ZN(n110) );
  AOI22D0BWP12T30P140 U225 ( .A1(n162), .A2(wbs_adr_i[12]), .B1(n107), .B2(
        wbs_adr_i[28]), .ZN(n109) );
  AOI21D0BWP12T30P140 U226 ( .A1(n110), .A2(n109), .B(n108), .ZN(n115) );
  AOI22D0BWP12T30P140 U227 ( .A1(wbs_adr_i[0]), .A2(n143), .B1(n111), .B2(n195), .ZN(n113) );
  NR2D0BWP12T30P140 U228 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .ZN(n134) );
  ND2D0BWP12T30P140 U229 ( .A1(n112), .A2(n134), .ZN(n167) );
  OAI211D0BWP12T30P140 U230 ( .A1(n215), .A2(n157), .B(n113), .C(n167), .ZN(
        n114) );
  AOI211D0BWP12T30P140 U231 ( .A1(n204), .A2(n116), .B(n115), .C(n114), .ZN(
        n130) );
  AOI22D0BWP12T30P140 U232 ( .A1(n174), .A2(wbs_dat_i[28]), .B1(n117), .B2(
        wbs_dat_i[24]), .ZN(n126) );
  AOI22D0BWP12T30P140 U233 ( .A1(n119), .A2(wbs_dat_i[20]), .B1(n118), .B2(
        wbs_dat_i[16]), .ZN(n125) );
  AOI22D0BWP12T30P140 U234 ( .A1(n231), .A2(wbs_dat_i[12]), .B1(n120), .B2(
        wbs_dat_i[8]), .ZN(n124) );
  AOI22D0BWP12T30P140 U235 ( .A1(n122), .A2(wbs_dat_i[4]), .B1(n121), .B2(
        wbs_dat_i[0]), .ZN(n123) );
  ND4D0BWP12T30P140 U236 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U237 ( .A1(n181), .A2(n128), .B1(n127), .B2(
        dma_chan_i[0]), .ZN(n129) );
  ND3D0BWP12T30P140 U238 ( .A1(n192), .A2(n130), .A3(n129), .ZN(n131) );
  AO22D0BWP12T30P140 U239 ( .A1(n133), .A2(lad_o[0]), .B1(n132), .B2(n131), 
        .Z(n246) );
  ND2D0BWP12T30P140 U240 ( .A1(wbs_sel_i[3]), .A2(wbs_sel_i[2]), .ZN(n137) );
  INVD0BWP12T30P140 U241 ( .I(n134), .ZN(n136) );
  AOI211D0BWP12T30P140 U242 ( .A1(n137), .A2(n136), .B(n163), .C(n135), .ZN(
        n138) );
  ND2D0BWP12T30P140 U243 ( .A1(nrst_i), .A2(n168), .ZN(n166) );
  OAI22D0BWP12T30P140 U244 ( .A1(n138), .A2(n166), .B1(n212), .B2(n168), .ZN(
        n274) );
  AOI21D0BWP12T30P140 U245 ( .A1(n139), .A2(n221), .B(n205), .ZN(n141) );
  ND2D0BWP12T30P140 U246 ( .A1(n141), .A2(lframe_o), .ZN(n140) );
  OAI31D0BWP12T30P140 U247 ( .A1(n241), .A2(n141), .A3(n214), .B(n140), .ZN(
        n263) );
  IOA21D0BWP12T30P140 U248 ( .A1(n144), .A2(n143), .B(n142), .ZN(n179) );
  INVD0BWP12T30P140 U249 ( .I(n179), .ZN(n145) );
  OAI21D0BWP12T30P140 U250 ( .A1(n147), .A2(n146), .B(n145), .ZN(n148) );
  AOI22D0BWP12T30P140 U251 ( .A1(n181), .A2(n178), .B1(n149), .B2(n148), .ZN(
        n150) );
  OAI22D0BWP12T30P140 U252 ( .A1(n203), .A2(n151), .B1(n150), .B2(n218), .ZN(
        n254) );
  AOI211D0BWP12T30P140 U253 ( .A1(n163), .A2(n154), .B(n153), .C(n152), .ZN(
        n155) );
  OAI22D0BWP12T30P140 U254 ( .A1(n203), .A2(n156), .B1(n155), .B2(n218), .ZN(
        n251) );
  INVD0BWP12T30P140 U255 ( .I(xfr_len[2]), .ZN(n158) );
  OAI22D0BWP12T30P140 U256 ( .A1(n158), .A2(n168), .B1(n157), .B2(n166), .ZN(
        n273) );
  MOAI22D0BWP12T30P140 U257 ( .A1(n214), .A2(n160), .B1(n204), .B2(n159), .ZN(
        n161) );
  AOI22D0BWP12T30P140 U258 ( .A1(n163), .A2(n162), .B1(n205), .B2(n161), .ZN(
        n165) );
  OAI22D0BWP12T30P140 U259 ( .A1(n165), .A2(n241), .B1(n208), .B2(n164), .ZN(
        n266) );
  OAI22D0BWP12T30P140 U260 ( .A1(n169), .A2(n168), .B1(n167), .B2(n166), .ZN(
        n272) );
  OAI21D0BWP12T30P140 U261 ( .A1(n181), .A2(n170), .B(n221), .ZN(n173) );
  NR2D0BWP12T30P140 U262 ( .A1(n241), .A2(n173), .ZN(n209) );
  INVD0BWP12T30P140 U263 ( .I(n209), .ZN(n232) );
  INVD0BWP12T30P140 U264 ( .I(n174), .ZN(n177) );
  IND4D1BWP12T30P140 U265 ( .A1(lad_i[2]), .B1(lad_i[3]), .B2(lad_i[1]), .B3(
        n171), .ZN(n194) );
  OAI21D0BWP12T30P140 U266 ( .A1(n239), .A2(n194), .B(n220), .ZN(n172) );
  AOI21D0BWP12T30P140 U267 ( .A1(n221), .A2(n172), .B(n241), .ZN(n236) );
  ND2D0BWP12T30P140 U268 ( .A1(n236), .A2(n173), .ZN(n228) );
  INVD0BWP12T30P140 U269 ( .I(n239), .ZN(n200) );
  ND3D0BWP12T30P140 U270 ( .A1(n228), .A2(nrst_i), .A3(n200), .ZN(n225) );
  INVD0BWP12T30P140 U271 ( .I(n225), .ZN(n229) );
  OAI21D0BWP12T30P140 U272 ( .A1(n174), .A2(n232), .B(n228), .ZN(n175) );
  AOI22D0BWP12T30P140 U273 ( .A1(xfr_len[2]), .A2(n229), .B1(byte_cnt[2]), 
        .B2(n175), .ZN(n176) );
  OAI31D0BWP12T30P140 U274 ( .A1(byte_cnt[2]), .A2(n232), .A3(n177), .B(n176), 
        .ZN(n269) );
  INVD0BWP12T30P140 U275 ( .I(n178), .ZN(n180) );
  AOI22D0BWP12T30P140 U276 ( .A1(n181), .A2(n180), .B1(n195), .B2(n179), .ZN(
        n182) );
  OAI22D0BWP12T30P140 U277 ( .A1(n203), .A2(n183), .B1(n182), .B2(n218), .ZN(
        n256) );
  NR2D0BWP12T30P140 U278 ( .A1(n184), .A2(n227), .ZN(n197) );
  INVD0BWP12T30P140 U279 ( .I(n197), .ZN(n186) );
  OAI31D0BWP12T30P140 U280 ( .A1(n215), .A2(n198), .A3(n186), .B(n185), .ZN(
        n187) );
  AOI31D0BWP12T30P140 U281 ( .A1(n200), .A2(n196), .A3(n194), .B(n187), .ZN(
        n188) );
  OAI22D0BWP12T30P140 U282 ( .A1(n203), .A2(n189), .B1(n188), .B2(n218), .ZN(
        n260) );
  OAI22D0BWP12T30P140 U283 ( .A1(n203), .A2(n191), .B1(n218), .B2(n190), .ZN(
        n252) );
  OAI22D0BWP12T30P140 U284 ( .A1(n203), .A2(n193), .B1(n192), .B2(n218), .ZN(
        n257) );
  OAI21D0BWP12T30P140 U285 ( .A1(n196), .A2(n195), .B(n194), .ZN(n199) );
  AOI22D0BWP12T30P140 U286 ( .A1(n200), .A2(n199), .B1(n198), .B2(n197), .ZN(
        n201) );
  OAI22D0BWP12T30P140 U287 ( .A1(n203), .A2(n202), .B1(n201), .B2(n218), .ZN(
        n258) );
  ND3D0BWP12T30P140 U288 ( .A1(n205), .A2(nrst_i), .A3(n204), .ZN(n207) );
  AOI22D0BWP12T30P140 U289 ( .A1(adr_cnt[1]), .A2(n208), .B1(n207), .B2(n206), 
        .ZN(n267) );
  ND2D0BWP12T30P140 U290 ( .A1(n209), .A2(n227), .ZN(n226) );
  ND2D0BWP12T30P140 U291 ( .A1(n228), .A2(n226), .ZN(n230) );
  AOI32D0BWP12T30P140 U292 ( .A1(dat_cnt_0_), .A2(n210), .A3(n209), .B1(
        byte_cnt[0]), .B2(n230), .ZN(n211) );
  OAI21D0BWP12T30P140 U293 ( .A1(n212), .A2(n225), .B(n211), .ZN(n271) );
  ND2D0BWP12T30P140 U294 ( .A1(state[1]), .A2(n216), .ZN(n213) );
  OAI31D0BWP12T30P140 U295 ( .A1(n215), .A2(n218), .A3(n214), .B(n213), .ZN(
        n250) );
  ND2D0BWP12T30P140 U296 ( .A1(state[0]), .A2(n216), .ZN(n217) );
  OAI31D0BWP12T30P140 U297 ( .A1(n220), .A2(n219), .A3(n218), .B(n217), .ZN(
        n262) );
  IOA21D0BWP12T30P140 U298 ( .A1(n222), .A2(n221), .B(lad_oe), .ZN(n224) );
  AOI221D0BWP12T30P140 U299 ( .A1(state[12]), .A2(n224), .B1(n223), .B2(n224), 
        .C(n241), .ZN(n245) );
  OAI211D0BWP12T30P140 U300 ( .A1(n228), .A2(n227), .B(n226), .C(n225), .ZN(
        n307) );
  AOI22D0BWP12T30P140 U301 ( .A1(byte_cnt[1]), .A2(n230), .B1(xfr_len[1]), 
        .B2(n229), .ZN(n234) );
  INVD0BWP12T30P140 U302 ( .I(n231), .ZN(n233) );
  AOI32D0BWP12T30P140 U303 ( .A1(n235), .A2(n234), .A3(n233), .B1(n232), .B2(
        n234), .ZN(n270) );
  OA21D0BWP12T30P140 U304 ( .A1(state[12]), .A2(n237), .B(n236), .Z(n240) );
  ND2D0BWP12T30P140 U305 ( .A1(n240), .A2(wbs_err_o), .ZN(n238) );
  OAI31D0BWP12T30P140 U306 ( .A1(n241), .A2(n240), .A3(n239), .B(n238), .ZN(
        n265) );
  CKBD0BWP12T30P140 U307 ( .I(clk_i), .Z(n243) );
  CKBD0BWP12T30P140 U308 ( .I(clk_i), .Z(n244) );
  CKBD0BWP12T30P140 U309 ( .I(clk_i), .Z(n242) );
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
  wire   dat_cnt_0_, lpc_write, fw_xfr, dma_xfr, got_ack, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
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
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n469, n470, n471, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484;
  wire   [2:0] byte_cnt;
  wire   [13:0] state;
  wire   [2:0] adr_cnt;
  wire   [2:0] xfr_len;
  wire   [31:0] lpc_dat_i;
  wire   [31:0] lpc_adr_reg;
  wire   [31:0] lpc_dat_o;
  wire   [1:0] lpc_tga_o;

  DFQD2BWP12T30P140 wbm_tga_o_reg_0_ ( .D(n330), .CP(n483), .Q(wbm_tga_o[0])
         );
  DFQD2BWP12T30P140 wbm_tga_o_reg_1_ ( .D(n331), .CP(n484), .Q(wbm_tga_o[1])
         );
  DFQD2BWP12T30P140 dma_tc_reg ( .D(n433), .CP(n482), .Q(dma_tc_o) );
  DFQD2BWP12T30P140 dma_chan_reg_2_ ( .D(n432), .CP(n482), .Q(dma_chan_o[2])
         );
  DFQD2BWP12T30P140 dma_chan_reg_1_ ( .D(n431), .CP(n482), .Q(dma_chan_o[1])
         );
  DFQD2BWP12T30P140 dma_chan_reg_0_ ( .D(n430), .CP(n482), .Q(dma_chan_o[0])
         );
  DFQD2BWP12T30P140 lpc_tga_o_reg_1_ ( .D(n418), .CP(n483), .Q(lpc_tga_o[1])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_3_ ( .D(n360), .CP(n483), .Q(
        lpc_adr_reg[3]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_18_ ( .D(n398), .CP(n483), .Q(lpc_dat_o[18])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_24_ ( .D(n392), .CP(n483), .Q(lpc_dat_o[24])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_6_ ( .D(n367), .CP(n483), .Q(
        lpc_adr_reg[6]) );
  DFQD2BWP12T30P140 state_reg_8_ ( .D(n344), .CP(n484), .Q(state[8]) );
  DFQD2BWP12T30P140 lpc_tga_o_reg_0_ ( .D(n419), .CP(n484), .Q(lpc_tga_o[0])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_2_ ( .D(n368), .CP(n484), .Q(
        lpc_adr_reg[2]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_14_ ( .D(n402), .CP(n484), .Q(lpc_dat_o[14])
         );
  DFQD2BWP12T30P140 state_reg_4_ ( .D(n348), .CP(n484), .Q(state[4]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_15_ ( .D(n313), .CP(n480), .Q(wbm_dat_o[15])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_14_ ( .D(n312), .CP(n480), .Q(wbm_dat_o[14])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_13_ ( .D(n311), .CP(n480), .Q(wbm_dat_o[13])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_12_ ( .D(n310), .CP(n480), .Q(wbm_dat_o[12])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_9_ ( .D(n307), .CP(n480), .Q(wbm_dat_o[9])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_0_ ( .D(n384), .CP(n482), .Q(
        lpc_adr_reg[0]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_1_ ( .D(n376), .CP(n482), .Q(
        lpc_adr_reg[1]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_0_ ( .D(n416), .CP(n481), .Q(lpc_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_1_ ( .D(n415), .CP(n481), .Q(lpc_dat_o[1])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_3_ ( .D(n413), .CP(n481), .Q(lpc_dat_o[3])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_4_ ( .D(n412), .CP(n481), .Q(lpc_dat_o[4])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_5_ ( .D(n411), .CP(n481), .Q(lpc_dat_o[5])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_6_ ( .D(n410), .CP(n481), .Q(lpc_dat_o[6])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_7_ ( .D(n409), .CP(n481), .Q(lpc_dat_o[7])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_16_ ( .D(n400), .CP(n481), .Q(lpc_dat_o[16])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_17_ ( .D(n399), .CP(n481), .Q(lpc_dat_o[17])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_23_ ( .D(n393), .CP(n481), .Q(lpc_dat_o[23])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_8_ ( .D(n408), .CP(n480), .Q(lpc_dat_o[8])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_9_ ( .D(n407), .CP(n482), .Q(lpc_dat_o[9])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_13_ ( .D(n403), .CP(n480), .Q(lpc_dat_o[13])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_29_ ( .D(n387), .CP(n482), .Q(lpc_dat_o[29])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_30_ ( .D(n386), .CP(n481), .Q(lpc_dat_o[30])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_16_ ( .D(n380), .CP(n482), .Q(
        lpc_adr_reg[16]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_4_ ( .D(n383), .CP(n484), .Q(
        lpc_adr_reg[4]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_7_ ( .D(n359), .CP(n484), .Q(
        lpc_adr_reg[7]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_13_ ( .D(n373), .CP(n484), .Q(
        lpc_adr_reg[13]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_14_ ( .D(n365), .CP(n484), .Q(
        lpc_adr_reg[14]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_26_ ( .D(n362), .CP(n484), .Q(
        lpc_adr_reg[26]) );
  DFQD2BWP12T30P140 dma_xfr_reg ( .D(n420), .CP(n483), .Q(dma_xfr) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_7_ ( .D(n305), .CP(n482), .Q(wbm_dat_o[7])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_23_ ( .D(n321), .CP(n480), .Q(wbm_dat_o[23])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_22_ ( .D(n320), .CP(n480), .Q(wbm_dat_o[22])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_21_ ( .D(n319), .CP(n480), .Q(wbm_dat_o[21])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_20_ ( .D(n318), .CP(n480), .Q(wbm_dat_o[20])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_19_ ( .D(n317), .CP(n480), .Q(wbm_dat_o[19])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_18_ ( .D(n316), .CP(n480), .Q(wbm_dat_o[18])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_17_ ( .D(n315), .CP(n480), .Q(wbm_dat_o[17])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_8_ ( .D(n306), .CP(n481), .Q(wbm_dat_o[8])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_27_ ( .D(n325), .CP(clk_i), .Q(wbm_dat_o[27]) );
  DFQD2BWP12T30P140 lpc_dat_o_reg_15_ ( .D(n401), .CP(clk_i), .Q(lpc_dat_o[15]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_17_ ( .D(n372), .CP(clk_i), .Q(
        lpc_adr_reg[17]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_19_ ( .D(n356), .CP(clk_i), .Q(
        lpc_adr_reg[19]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_6_ ( .D(n304), .CP(clk_i), .Q(wbm_dat_o[6])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_15_ ( .D(n357), .CP(n480), .Q(
        lpc_adr_reg[15]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_30_ ( .D(n361), .CP(n480), .Q(
        lpc_adr_reg[30]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_31_ ( .D(n353), .CP(n481), .Q(
        lpc_adr_reg[31]) );
  DFQD2BWP12T30P140 lpc_dat_i_reg_0_ ( .D(n467), .CP(n479), .Q(lpc_dat_i[0])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_27_ ( .D(n462), .CP(n479), .Q(lpc_dat_i[27])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_26_ ( .D(n461), .CP(n479), .Q(lpc_dat_i[26])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_25_ ( .D(n460), .CP(n479), .Q(lpc_dat_i[25])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_24_ ( .D(n459), .CP(n479), .Q(lpc_dat_i[24])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_18_ ( .D(n453), .CP(n478), .Q(lpc_dat_i[18])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_17_ ( .D(n452), .CP(n478), .Q(lpc_dat_i[17])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_16_ ( .D(n451), .CP(n478), .Q(lpc_dat_i[16])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_11_ ( .D(n446), .CP(n478), .Q(lpc_dat_i[11])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_10_ ( .D(n445), .CP(n478), .Q(lpc_dat_i[10])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_9_ ( .D(n444), .CP(n477), .Q(lpc_dat_i[9])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_8_ ( .D(n443), .CP(n477), .Q(lpc_dat_i[8])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_1_ ( .D(n442), .CP(n477), .Q(lpc_dat_i[1])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_3_ ( .D(n437), .CP(n477), .Q(lpc_dat_i[3])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_2_ ( .D(n436), .CP(n477), .Q(lpc_dat_i[2])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_31_ ( .D(n329), .CP(n474), .Q(wbm_dat_o[31])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_30_ ( .D(n328), .CP(n477), .Q(wbm_dat_o[30])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_29_ ( .D(n327), .CP(n476), .Q(wbm_dat_o[29])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_28_ ( .D(n326), .CP(n476), .Q(wbm_dat_o[28])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_25_ ( .D(n323), .CP(n478), .Q(wbm_dat_o[25])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_11_ ( .D(n309), .CP(n478), .Q(wbm_dat_o[11])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_10_ ( .D(n308), .CP(n479), .Q(wbm_dat_o[10])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_31_ ( .D(n466), .CP(n479), .Q(lpc_dat_i[31])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_30_ ( .D(n465), .CP(n479), .Q(lpc_dat_i[30])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_29_ ( .D(n464), .CP(n479), .Q(lpc_dat_i[29])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_28_ ( .D(n463), .CP(n479), .Q(lpc_dat_i[28])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_23_ ( .D(n458), .CP(n479), .Q(lpc_dat_i[23])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_22_ ( .D(n457), .CP(n479), .Q(lpc_dat_i[22])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_21_ ( .D(n456), .CP(n478), .Q(lpc_dat_i[21])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_20_ ( .D(n455), .CP(n478), .Q(lpc_dat_i[20])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_15_ ( .D(n450), .CP(n478), .Q(lpc_dat_i[15])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_14_ ( .D(n449), .CP(n478), .Q(lpc_dat_i[14])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_13_ ( .D(n448), .CP(n478), .Q(lpc_dat_i[13])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_7_ ( .D(n441), .CP(n477), .Q(lpc_dat_i[7])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_6_ ( .D(n440), .CP(n477), .Q(lpc_dat_i[6])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_5_ ( .D(n439), .CP(n477), .Q(lpc_dat_i[5])
         );
  DFQD2BWP12T30P140 lpc_dat_i_reg_4_ ( .D(n438), .CP(n477), .Q(lpc_dat_i[4])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_19_ ( .D(n397), .CP(n474), .Q(lpc_dat_o[19])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_20_ ( .D(n396), .CP(n477), .Q(lpc_dat_o[20])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_21_ ( .D(n395), .CP(n476), .Q(lpc_dat_o[21])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_22_ ( .D(n394), .CP(n474), .Q(lpc_dat_o[22])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_10_ ( .D(n406), .CP(n475), .Q(lpc_dat_o[10])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_11_ ( .D(n405), .CP(n478), .Q(lpc_dat_o[11])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_12_ ( .D(n404), .CP(n479), .Q(lpc_dat_o[12])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_25_ ( .D(n391), .CP(n474), .Q(lpc_dat_o[25])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_26_ ( .D(n390), .CP(n477), .Q(lpc_dat_o[26])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_27_ ( .D(n389), .CP(n476), .Q(lpc_dat_o[27])
         );
  DFQD2BWP12T30P140 lpc_dat_o_reg_31_ ( .D(n385), .CP(n475), .Q(lpc_dat_o[31])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_0_ ( .D(n298), .CP(n479), .Q(wbm_dat_o[0])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_5_ ( .D(n375), .CP(clk_i), .Q(
        lpc_adr_reg[5]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_8_ ( .D(n382), .CP(clk_i), .Q(
        lpc_adr_reg[8]) );
  DFQD2BWP12T30P140 wbm_dat_o_reg_5_ ( .D(n303), .CP(n474), .Q(wbm_dat_o[5])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_4_ ( .D(n302), .CP(n477), .Q(wbm_dat_o[4])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_3_ ( .D(n301), .CP(n476), .Q(wbm_dat_o[3])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_2_ ( .D(n300), .CP(n475), .Q(wbm_dat_o[2])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_1_ ( .D(n299), .CP(n478), .Q(wbm_dat_o[1])
         );
  DFQD2BWP12T30P140 wbm_dat_o_reg_24_ ( .D(n322), .CP(n479), .Q(wbm_dat_o[24])
         );
  DFQD2BWP12T30P140 lad_o_reg_1_ ( .D(n424), .CP(n477), .Q(lad_o[1]) );
  DFQD2BWP12T30P140 lad_o_reg_3_ ( .D(n422), .CP(n477), .Q(lad_o[3]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_3_ ( .D(n266), .CP(n474), .Q(wbm_adr_o[3])
         );
  DFQD2BWP12T30P140 lad_o_reg_0_ ( .D(n425), .CP(n477), .Q(lad_o[0]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n294), .CP(n476), .Q(wbm_adr_o[31])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n293), .CP(n476), .Q(wbm_adr_o[30])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n292), .CP(n476), .Q(wbm_adr_o[29])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n291), .CP(n476), .Q(wbm_adr_o[28])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_27_ ( .D(n290), .CP(n476), .Q(wbm_adr_o[27])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_26_ ( .D(n289), .CP(n476), .Q(wbm_adr_o[26])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_25_ ( .D(n288), .CP(n476), .Q(wbm_adr_o[25])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_24_ ( .D(n287), .CP(n476), .Q(wbm_adr_o[24])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_23_ ( .D(n286), .CP(n475), .Q(wbm_adr_o[23])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n285), .CP(n475), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n284), .CP(n475), .Q(wbm_adr_o[21])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n283), .CP(n475), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_19_ ( .D(n282), .CP(n475), .Q(wbm_adr_o[19])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n281), .CP(n475), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n279), .CP(n475), .Q(wbm_adr_o[16])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_15_ ( .D(n278), .CP(n475), .Q(wbm_adr_o[15])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n277), .CP(n475), .Q(wbm_adr_o[14])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_13_ ( .D(n276), .CP(n475), .Q(wbm_adr_o[13])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_12_ ( .D(n275), .CP(n475), .Q(wbm_adr_o[12])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_11_ ( .D(n274), .CP(n474), .Q(wbm_adr_o[11])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_10_ ( .D(n273), .CP(n474), .Q(wbm_adr_o[10])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_9_ ( .D(n272), .CP(n474), .Q(wbm_adr_o[9])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_8_ ( .D(n271), .CP(n474), .Q(wbm_adr_o[8])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_7_ ( .D(n270), .CP(n474), .Q(wbm_adr_o[7])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_6_ ( .D(n269), .CP(n474), .Q(wbm_adr_o[6])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_5_ ( .D(n268), .CP(n474), .Q(wbm_adr_o[5])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_4_ ( .D(n267), .CP(n474), .Q(wbm_adr_o[4])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_2_ ( .D(n265), .CP(n474), .Q(wbm_adr_o[2])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n263), .CP(n474), .Q(wbm_adr_o[0])
         );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_10_ ( .D(n366), .CP(n474), .Q(
        lpc_adr_reg[10]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_11_ ( .D(n358), .CP(n477), .Q(
        lpc_adr_reg[11]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_12_ ( .D(n381), .CP(n476), .Q(
        lpc_adr_reg[12]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_24_ ( .D(n378), .CP(n478), .Q(
        lpc_adr_reg[24]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_25_ ( .D(n370), .CP(n479), .Q(
        lpc_adr_reg[25]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_27_ ( .D(n354), .CP(n474), .Q(
        lpc_adr_reg[27]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_20_ ( .D(n379), .CP(n477), .Q(
        lpc_adr_reg[20]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_21_ ( .D(n371), .CP(n476), .Q(
        lpc_adr_reg[21]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_22_ ( .D(n363), .CP(n475), .Q(
        lpc_adr_reg[22]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_23_ ( .D(n355), .CP(n475), .Q(
        lpc_adr_reg[23]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_28_ ( .D(n377), .CP(n478), .Q(
        lpc_adr_reg[28]) );
  DFQD2BWP12T30P140 lpc_adr_reg_reg_29_ ( .D(n369), .CP(n479), .Q(
        lpc_adr_reg[29]) );
  DFQD2BWP12T30P140 got_ack_reg ( .D(n434), .CP(n484), .Q(got_ack) );
  DFQD2BWP12T30P140 lad_oe_reg ( .D(n421), .CP(n481), .Q(lad_oe) );
  DFQD2BWP12T30P140 dat_cnt_reg_3_ ( .D(n335), .CP(n483), .Q(byte_cnt[2]) );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n349), .CP(n482), .Q(state[3]) );
  DFQD2BWP12T30P140 state_reg_5_ ( .D(n347), .CP(n481), .Q(state[5]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_0_ ( .D(n295), .CP(n476), .Q(wbm_sel_o[0])
         );
  DFQD2BWP12T30P140 state_reg_11_ ( .D(n341), .CP(n483), .Q(state[11]) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n334), .CP(n482), .Q(adr_cnt[0]) );
  DFQD2BWP12T30P140 fw_xfr_reg ( .D(n426), .CP(n483), .Q(fw_xfr) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n350), .CP(n482), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n351), .CP(n482), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_9_ ( .D(n343), .CP(n480), .Q(state[9]) );
  DFQD2BWP12T30P140 state_reg_13_ ( .D(n339), .CP(n481), .Q(state[13]) );
  DFQD2BWP12T30P140 state_reg_10_ ( .D(n342), .CP(n482), .Q(state[10]) );
  DFQD2BWP12T30P140 state_reg_12_ ( .D(n340), .CP(clk_i), .Q(state[12]) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_1_ ( .D(n296), .CP(n476), .Q(wbm_sel_o[1])
         );
  DFQD2BWP12T30P140 adr_cnt_reg_2_ ( .D(n332), .CP(n484), .Q(adr_cnt[2]) );
  DFQD2BWP12T30P140 state_reg_7_ ( .D(n345), .CP(n483), .Q(state[7]) );
  DFQD2BWP12T30P140 xfr_len_reg_0_ ( .D(n429), .CP(n481), .Q(xfr_len[0]) );
  DFQD2BWP12T30P140 xfr_len_reg_1_ ( .D(n428), .CP(n475), .Q(xfr_len[1]) );
  DFQD2BWP12T30P140 adr_cnt_reg_1_ ( .D(n333), .CP(n482), .Q(adr_cnt[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n352), .CP(n483), .Q(state[0]) );
  DFQD2BWP12T30P140 xfr_len_reg_2_ ( .D(n427), .CP(n479), .Q(xfr_len[2]) );
  DFQD2BWP12T30P140 dat_cnt_reg_2_ ( .D(n336), .CP(n478), .Q(byte_cnt[1]) );
  DFQD2BWP12T30P140 lpc_write_reg ( .D(n417), .CP(n484), .Q(lpc_write) );
  DFQD2BWP12T30P140 wbm_sel_o_reg_2_ ( .D(n297), .CP(n476), .Q(wbm_sel_o[3])
         );
  DFQD2BWP12T30P140 dat_cnt_reg_1_ ( .D(n337), .CP(n484), .Q(byte_cnt[0]) );
  DFQD2BWP12T30P140 wbm_cyc_o_reg ( .D(n435), .CP(n483), .Q(wbm_stb_o) );
  DFQD2BWP12T30P140 dat_cnt_reg_0_ ( .D(n338), .CP(n482), .Q(dat_cnt_0_) );
  DFQD1BWP12T30P140 lpc_adr_reg_reg_9_ ( .D(n374), .CP(n483), .Q(
        lpc_adr_reg[9]) );
  DFQD1BWP12T30P140 lpc_dat_o_reg_2_ ( .D(n414), .CP(n481), .Q(lpc_dat_o[2])
         );
  DFQD1BWP12T30P140 lpc_adr_reg_reg_18_ ( .D(n364), .CP(n482), .Q(
        lpc_adr_reg[18]) );
  DFQD1BWP12T30P140 wbm_dat_o_reg_16_ ( .D(n314), .CP(n480), .Q(wbm_dat_o[16])
         );
  DFQD1BWP12T30P140 lpc_dat_i_reg_19_ ( .D(n454), .CP(n478), .Q(lpc_dat_i[19])
         );
  DFQD1BWP12T30P140 wbm_dat_o_reg_26_ ( .D(n324), .CP(n475), .Q(wbm_dat_o[26])
         );
  DFQD1BWP12T30P140 lpc_dat_i_reg_12_ ( .D(n447), .CP(n478), .Q(lpc_dat_i[12])
         );
  DFQD1BWP12T30P140 lpc_dat_o_reg_28_ ( .D(n388), .CP(n477), .Q(lpc_dat_o[28])
         );
  DFQD1BWP12T30P140 lad_o_reg_2_ ( .D(n423), .CP(n476), .Q(lad_o[2]) );
  DFQD1BWP12T30P140 wbm_adr_o_reg_17_ ( .D(n280), .CP(n475), .Q(wbm_adr_o[17])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_1_ ( .D(n264), .CP(n474), .Q(wbm_adr_o[1])
         );
  DFQD1BWP12T30P140 state_reg_6_ ( .D(n346), .CP(n484), .Q(state[6]) );
  DFQD1BWP12T30P140 wbm_we_o_reg ( .D(n468), .CP(n479), .Q(wbm_we_o) );
  INVD0BWP12T30P140 U3 ( .I(nrst_i), .ZN(n201) );
  CKBD0BWP12T30P140 U4 ( .I(wbm_stb_o), .Z(wbm_cyc_o) );
  CKBD0BWP12T30P140 U5 ( .I(wbm_sel_o[3]), .Z(wbm_sel_o[2]) );
  INVD0BWP12T30P140 U6 ( .I(xfr_len[0]), .ZN(n211) );
  INVD0BWP12T30P140 U7 ( .I(byte_cnt[0]), .ZN(n235) );
  INVD0BWP12T30P140 U8 ( .I(byte_cnt[2]), .ZN(n29) );
  INVD0BWP12T30P140 U9 ( .I(xfr_len[1]), .ZN(n219) );
  INVD0BWP12T30P140 U10 ( .I(byte_cnt[1]), .ZN(n228) );
  AOI22D0BWP12T30P140 U11 ( .A1(byte_cnt[1]), .A2(n219), .B1(xfr_len[1]), .B2(
        n228), .ZN(n37) );
  ND2D0BWP12T30P140 U12 ( .A1(xfr_len[2]), .A2(n29), .ZN(n33) );
  OAI211D0BWP12T30P140 U13 ( .A1(xfr_len[2]), .A2(n29), .B(n37), .C(n33), .ZN(
        n1) );
  AOI221D0BWP12T30P140 U14 ( .A1(byte_cnt[0]), .A2(n211), .B1(n235), .B2(
        xfr_len[0]), .C(n1), .ZN(n144) );
  NR4D0BWP12T30P140 U15 ( .A1(byte_cnt[2]), .A2(byte_cnt[1]), .A3(byte_cnt[0]), 
        .A4(lpc_write), .ZN(n85) );
  AOI21D0BWP12T30P140 U16 ( .A1(lpc_write), .A2(n144), .B(n85), .ZN(n47) );
  INVD0BWP12T30P140 U17 ( .I(state[8]), .ZN(n156) );
  NR2D0BWP12T30P140 U18 ( .A1(state[13]), .A2(state[12]), .ZN(n3) );
  NR2D0BWP12T30P140 U19 ( .A1(state[1]), .A2(state[11]), .ZN(n2) );
  AN2D0BWP12T30P140 U20 ( .A1(n3), .A2(n2), .Z(n16) );
  ND2D0BWP12T30P140 U21 ( .A1(n156), .A2(n16), .ZN(n14) );
  NR2D0BWP12T30P140 U22 ( .A1(state[9]), .A2(state[10]), .ZN(n4) );
  IND2D1BWP12T30P140 U23 ( .A1(n14), .B1(n4), .ZN(n70) );
  NR2D0BWP12T30P140 U24 ( .A1(state[3]), .A2(state[6]), .ZN(n74) );
  NR2D0BWP12T30P140 U25 ( .A1(state[2]), .A2(state[4]), .ZN(n13) );
  IND3D1BWP12T30P140 U26 ( .A1(n70), .B1(n74), .B2(n13), .ZN(n8) );
  INVD0BWP12T30P140 U27 ( .I(state[5]), .ZN(n107) );
  IND3D1BWP12T30P140 U28 ( .A1(n8), .B1(n107), .B2(state[7]), .ZN(n155) );
  NR2D0BWP12T30P140 U29 ( .A1(n47), .A2(n155), .ZN(n5) );
  INVD0BWP12T30P140 U30 ( .I(state[0]), .ZN(n244) );
  AOI21D0BWP12T30P140 U31 ( .A1(n5), .A2(n244), .B(n201), .ZN(n182) );
  CKBD0BWP12T30P140 U32 ( .I(n182), .Z(n243) );
  ND3D0BWP12T30P140 U33 ( .A1(n243), .A2(wbm_stb_o), .A3(wbm_ack_i), .ZN(n254)
         );
  NR2D0BWP12T30P140 U34 ( .A1(wbm_we_o), .A2(n254), .ZN(n7) );
  CKBD0BWP12T30P140 U35 ( .I(n7), .Z(n192) );
  INVD0BWP12T30P140 U36 ( .I(nrst_i), .ZN(n246) );
  NR2D0BWP12T30P140 U37 ( .A1(n192), .A2(n246), .ZN(n6) );
  CKBD0BWP12T30P140 U38 ( .I(n6), .Z(n193) );
  AO22D0BWP12T30P140 U39 ( .A1(lpc_dat_i[0]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[0]), .Z(n467) );
  AO22D0BWP12T30P140 U40 ( .A1(lpc_dat_i[27]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[27]), .Z(n462) );
  AO22D0BWP12T30P140 U41 ( .A1(lpc_dat_i[26]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[26]), .Z(n461) );
  AO22D0BWP12T30P140 U42 ( .A1(lpc_dat_i[25]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[25]), .Z(n460) );
  AO22D0BWP12T30P140 U43 ( .A1(lpc_dat_i[24]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[24]), .Z(n459) );
  AO22D0BWP12T30P140 U44 ( .A1(lpc_dat_i[18]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[18]), .Z(n453) );
  AO22D0BWP12T30P140 U45 ( .A1(lpc_dat_i[17]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[17]), .Z(n452) );
  AO22D0BWP12T30P140 U46 ( .A1(lpc_dat_i[16]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[16]), .Z(n451) );
  AO22D0BWP12T30P140 U47 ( .A1(lpc_dat_i[11]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[11]), .Z(n446) );
  AO22D0BWP12T30P140 U48 ( .A1(lpc_dat_i[10]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[10]), .Z(n445) );
  AO22D0BWP12T30P140 U49 ( .A1(lpc_dat_i[9]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[9]), .Z(n444) );
  AO22D0BWP12T30P140 U50 ( .A1(lpc_dat_i[8]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[8]), .Z(n443) );
  AO22D0BWP12T30P140 U51 ( .A1(lpc_dat_i[1]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[1]), .Z(n442) );
  AO22D0BWP12T30P140 U52 ( .A1(lpc_dat_i[3]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[3]), .Z(n437) );
  AO22D0BWP12T30P140 U53 ( .A1(lpc_dat_i[2]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[2]), .Z(n436) );
  NR2D0BWP12T30P140 U54 ( .A1(n246), .A2(state[0]), .ZN(n115) );
  ND2D0BWP12T30P140 U55 ( .A1(n115), .A2(n5), .ZN(n146) );
  INVD0BWP12T30P140 U56 ( .I(n146), .ZN(n180) );
  CKBD0BWP12T30P140 U57 ( .I(n180), .Z(n253) );
  AO22D0BWP12T30P140 U58 ( .A1(lpc_dat_o[31]), .A2(n253), .B1(wbm_dat_o[31]), 
        .B2(n243), .Z(n329) );
  CKBD0BWP12T30P140 U59 ( .I(n180), .Z(n181) );
  AO22D0BWP12T30P140 U60 ( .A1(lpc_dat_o[30]), .A2(n181), .B1(wbm_dat_o[30]), 
        .B2(n243), .Z(n328) );
  AO22D0BWP12T30P140 U61 ( .A1(lpc_dat_o[29]), .A2(n253), .B1(wbm_dat_o[29]), 
        .B2(n243), .Z(n327) );
  AO22D0BWP12T30P140 U62 ( .A1(lpc_dat_o[28]), .A2(n253), .B1(wbm_dat_o[28]), 
        .B2(n243), .Z(n326) );
  CKBD0BWP12T30P140 U63 ( .I(n180), .Z(n178) );
  AO22D0BWP12T30P140 U64 ( .A1(lpc_dat_o[26]), .A2(n178), .B1(wbm_dat_o[26]), 
        .B2(n182), .Z(n324) );
  AO22D0BWP12T30P140 U65 ( .A1(lpc_dat_o[25]), .A2(n253), .B1(wbm_dat_o[25]), 
        .B2(n182), .Z(n323) );
  CKBD0BWP12T30P140 U66 ( .I(n182), .Z(n187) );
  AO22D0BWP12T30P140 U67 ( .A1(lpc_dat_o[11]), .A2(n178), .B1(wbm_dat_o[11]), 
        .B2(n187), .Z(n309) );
  AO22D0BWP12T30P140 U68 ( .A1(lpc_dat_o[10]), .A2(n180), .B1(wbm_dat_o[10]), 
        .B2(n187), .Z(n308) );
  AO22D0BWP12T30P140 U69 ( .A1(lpc_dat_i[31]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[31]), .Z(n466) );
  AO22D0BWP12T30P140 U70 ( .A1(lpc_dat_i[30]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[30]), .Z(n465) );
  AO22D0BWP12T30P140 U71 ( .A1(lpc_dat_i[29]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[29]), .Z(n464) );
  AO22D0BWP12T30P140 U72 ( .A1(lpc_dat_i[28]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[28]), .Z(n463) );
  AO22D0BWP12T30P140 U73 ( .A1(lpc_dat_i[23]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[23]), .Z(n458) );
  AO22D0BWP12T30P140 U74 ( .A1(lpc_dat_i[22]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[22]), .Z(n457) );
  AO22D0BWP12T30P140 U75 ( .A1(lpc_dat_i[21]), .A2(n6), .B1(n192), .B2(
        wbm_dat_i[21]), .Z(n456) );
  AO22D0BWP12T30P140 U76 ( .A1(lpc_dat_i[20]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[20]), .Z(n455) );
  AO22D0BWP12T30P140 U77 ( .A1(lpc_dat_i[15]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[15]), .Z(n450) );
  AO22D0BWP12T30P140 U78 ( .A1(lpc_dat_i[14]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[14]), .Z(n449) );
  AO22D0BWP12T30P140 U79 ( .A1(lpc_dat_i[13]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[13]), .Z(n448) );
  AO22D0BWP12T30P140 U80 ( .A1(lpc_dat_i[12]), .A2(n6), .B1(n7), .B2(
        wbm_dat_i[12]), .Z(n447) );
  AO22D0BWP12T30P140 U81 ( .A1(lpc_dat_i[7]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[7]), .Z(n441) );
  AO22D0BWP12T30P140 U82 ( .A1(lpc_dat_i[6]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[6]), .Z(n440) );
  AO22D0BWP12T30P140 U83 ( .A1(lpc_dat_i[5]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[5]), .Z(n439) );
  AO22D0BWP12T30P140 U84 ( .A1(lpc_dat_i[4]), .A2(n193), .B1(n7), .B2(
        wbm_dat_i[4]), .Z(n438) );
  ND2D0BWP12T30P140 U85 ( .A1(nrst_i), .A2(lad_i[3]), .ZN(n184) );
  NR2D0BWP12T30P140 U86 ( .A1(dat_cnt_0_), .A2(n228), .ZN(n224) );
  NR3D0BWP12T30P140 U87 ( .A1(state[7]), .A2(n8), .A3(n107), .ZN(n105) );
  ND3D0BWP12T30P140 U88 ( .A1(n29), .A2(n244), .A3(n105), .ZN(n9) );
  NR2D0BWP12T30P140 U89 ( .A1(byte_cnt[0]), .A2(n9), .ZN(n166) );
  AO21D0BWP12T30P140 U90 ( .A1(n224), .A2(n166), .B(n201), .Z(n168) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n184), .A2(n168), .B1(n168), .B2(
        lpc_dat_o[19]), .ZN(n397) );
  ND2D0BWP12T30P140 U92 ( .A1(nrst_i), .A2(lad_i[0]), .ZN(n170) );
  ND2D0BWP12T30P140 U93 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .ZN(n100) );
  INVD0BWP12T30P140 U94 ( .I(n100), .ZN(n97) );
  AO21D0BWP12T30P140 U95 ( .A1(n97), .A2(n166), .B(n201), .Z(n169) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n170), .A2(n169), .B1(n169), .B2(
        lpc_dat_o[20]), .ZN(n396) );
  ND2D0BWP12T30P140 U97 ( .A1(nrst_i), .A2(lad_i[1]), .ZN(n258) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n258), .A2(n169), .B1(n169), .B2(
        lpc_dat_o[21]), .ZN(n395) );
  ND2D0BWP12T30P140 U99 ( .A1(nrst_i), .A2(lad_i[2]), .ZN(n213) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n213), .A2(n169), .B1(n169), .B2(
        lpc_dat_o[22]), .ZN(n394) );
  NR2D0BWP12T30P140 U101 ( .A1(byte_cnt[1]), .A2(dat_cnt_0_), .ZN(n164) );
  NR2D0BWP12T30P140 U102 ( .A1(n235), .A2(n9), .ZN(n10) );
  AO21D0BWP12T30P140 U103 ( .A1(n164), .A2(n10), .B(n201), .Z(n171) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n213), .A2(n171), .B1(n171), .B2(
        lpc_dat_o[10]), .ZN(n406) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n184), .A2(n171), .B1(n171), .B2(
        lpc_dat_o[11]), .ZN(n405) );
  INR2D1BWP12T30P140 U106 ( .A1(dat_cnt_0_), .B1(byte_cnt[1]), .ZN(n225) );
  AO21D0BWP12T30P140 U107 ( .A1(n225), .A2(n10), .B(n201), .Z(n183) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n170), .A2(n183), .B1(n183), .B2(
        lpc_dat_o[12]), .ZN(n404) );
  AO21D0BWP12T30P140 U109 ( .A1(n224), .A2(n10), .B(n201), .Z(n153) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n258), .A2(n153), .B1(n153), .B2(
        lpc_dat_o[25]), .ZN(n391) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n213), .A2(n153), .B1(n153), .B2(
        lpc_dat_o[26]), .ZN(n390) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n184), .A2(n153), .B1(n153), .B2(
        lpc_dat_o[27]), .ZN(n389) );
  AO21D0BWP12T30P140 U113 ( .A1(n97), .A2(n10), .B(n201), .Z(n172) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n170), .A2(n172), .B1(n172), .B2(
        lpc_dat_o[28]), .ZN(n388) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n184), .A2(n172), .B1(n172), .B2(
        lpc_dat_o[31]), .ZN(n385) );
  CKBD0BWP12T30P140 U116 ( .I(n182), .Z(n179) );
  AO22D0BWP12T30P140 U117 ( .A1(lpc_dat_o[0]), .A2(n178), .B1(wbm_dat_o[0]), 
        .B2(n179), .Z(n298) );
  NR3D0BWP12T30P140 U118 ( .A1(state[5]), .A2(state[7]), .A3(n70), .ZN(n73) );
  INVD0BWP12T30P140 U119 ( .I(state[4]), .ZN(n161) );
  ND4D0BWP12T30P140 U120 ( .A1(state[2]), .A2(n74), .A3(n73), .A4(n161), .ZN(
        n196) );
  OR2D0BWP12T30P140 U121 ( .A1(n258), .A2(n196), .Z(n185) );
  INVD0BWP12T30P140 U122 ( .I(adr_cnt[1]), .ZN(n197) );
  INVD0BWP12T30P140 U123 ( .I(adr_cnt[2]), .ZN(n199) );
  NR2D0BWP12T30P140 U124 ( .A1(state[0]), .A2(n196), .ZN(n149) );
  INVD0BWP12T30P140 U125 ( .I(adr_cnt[0]), .ZN(n118) );
  ND2D0BWP12T30P140 U126 ( .A1(n149), .A2(n118), .ZN(n117) );
  INVD0BWP12T30P140 U127 ( .I(state[3]), .ZN(n102) );
  ND2D0BWP12T30P140 U128 ( .A1(n13), .A2(n73), .ZN(n11) );
  NR3D0BWP12T30P140 U129 ( .A1(state[6]), .A2(n102), .A3(n11), .ZN(n157) );
  AOI21D0BWP12T30P140 U130 ( .A1(n244), .A2(n157), .B(n201), .ZN(n150) );
  OAI31D0BWP12T30P140 U131 ( .A1(n197), .A2(n199), .A3(n117), .B(n150), .ZN(
        n176) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n185), .A2(n176), .B1(n176), .B2(
        lpc_adr_reg[5]), .ZN(n375) );
  INVD0BWP12T30P140 U133 ( .I(n196), .ZN(n198) );
  INVD0BWP12T30P140 U134 ( .I(n170), .ZN(n217) );
  ND2D0BWP12T30P140 U135 ( .A1(n198), .A2(n217), .ZN(n175) );
  ND2D0BWP12T30P140 U136 ( .A1(adr_cnt[0]), .A2(n149), .ZN(n173) );
  NR2D0BWP12T30P140 U137 ( .A1(adr_cnt[1]), .A2(n173), .ZN(n221) );
  INVD0BWP12T30P140 U138 ( .I(n150), .ZN(n174) );
  AO21D0BWP12T30P140 U139 ( .A1(adr_cnt[2]), .A2(n221), .B(n174), .Z(n154) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n175), .A2(n154), .B1(n154), .B2(
        lpc_adr_reg[8]), .ZN(n382) );
  AO22D0BWP12T30P140 U141 ( .A1(lpc_dat_o[5]), .A2(n180), .B1(wbm_dat_o[5]), 
        .B2(n187), .Z(n303) );
  AO22D0BWP12T30P140 U142 ( .A1(lpc_dat_o[4]), .A2(n178), .B1(wbm_dat_o[4]), 
        .B2(n187), .Z(n302) );
  AO22D0BWP12T30P140 U143 ( .A1(lpc_dat_o[3]), .A2(n178), .B1(wbm_dat_o[3]), 
        .B2(n179), .Z(n301) );
  AO22D0BWP12T30P140 U144 ( .A1(lpc_dat_o[2]), .A2(n178), .B1(wbm_dat_o[2]), 
        .B2(n179), .Z(n300) );
  AO22D0BWP12T30P140 U145 ( .A1(lpc_dat_o[1]), .A2(n180), .B1(wbm_dat_o[1]), 
        .B2(n179), .Z(n299) );
  AO22D0BWP12T30P140 U146 ( .A1(lpc_dat_o[24]), .A2(n180), .B1(wbm_dat_o[24]), 
        .B2(n182), .Z(n322) );
  AOI22D0BWP12T30P140 U147 ( .A1(n224), .A2(lpc_dat_i[17]), .B1(n97), .B2(
        lpc_dat_i[21]), .ZN(n25) );
  INVD0BWP12T30P140 U148 ( .I(state[6]), .ZN(n90) );
  NR3D0BWP12T30P140 U149 ( .A1(state[3]), .A2(n90), .A3(n11), .ZN(n110) );
  INVD0BWP12T30P140 U150 ( .I(state[12]), .ZN(n142) );
  NR2D0BWP12T30P140 U151 ( .A1(state[5]), .A2(state[7]), .ZN(n12) );
  ND3D0BWP12T30P140 U152 ( .A1(n74), .A2(n13), .A3(n12), .ZN(n71) );
  NR3D0BWP12T30P140 U153 ( .A1(state[9]), .A2(state[10]), .A3(n71), .ZN(n17)
         );
  ND2D0BWP12T30P140 U154 ( .A1(n17), .A2(n156), .ZN(n15) );
  NR3D0BWP12T30P140 U155 ( .A1(state[1]), .A2(state[11]), .A3(n15), .ZN(n81)
         );
  ND3D0BWP12T30P140 U156 ( .A1(n142), .A2(n81), .A3(state[13]), .ZN(n79) );
  INVD0BWP12T30P140 U157 ( .I(state[10]), .ZN(n139) );
  NR2D0BWP12T30P140 U158 ( .A1(n71), .A2(n14), .ZN(n78) );
  ND3D0BWP12T30P140 U159 ( .A1(n139), .A2(n78), .A3(state[9]), .ZN(n77) );
  ND2D0BWP12T30P140 U160 ( .A1(n79), .A2(n77), .ZN(n19) );
  INVD0BWP12T30P140 U161 ( .I(state[1]), .ZN(n126) );
  NR3D0BWP12T30P140 U162 ( .A1(state[13]), .A2(state[12]), .A3(n15), .ZN(n72)
         );
  ND3D0BWP12T30P140 U163 ( .A1(n126), .A2(n72), .A3(state[11]), .ZN(n128) );
  ND3D0BWP12T30P140 U164 ( .A1(state[8]), .A2(n17), .A3(n16), .ZN(n137) );
  ND2D0BWP12T30P140 U165 ( .A1(n128), .A2(n137), .ZN(n76) );
  AOI211D0BWP12T30P140 U166 ( .A1(n110), .A2(n29), .B(n19), .C(n76), .ZN(n18)
         );
  OAI21D0BWP12T30P140 U167 ( .A1(state[0]), .A2(n18), .B(nrst_i), .ZN(n60) );
  INVD0BWP12T30P140 U168 ( .I(n19), .ZN(n140) );
  ND2D0BWP12T30P140 U169 ( .A1(nrst_i), .A2(n140), .ZN(n62) );
  AOI22D0BWP12T30P140 U170 ( .A1(n224), .A2(lpc_dat_i[25]), .B1(n97), .B2(
        lpc_dat_i[29]), .ZN(n21) );
  INVD0BWP12T30P140 U171 ( .I(n60), .ZN(n63) );
  INVD0BWP12T30P140 U172 ( .I(fw_xfr), .ZN(n120) );
  ND2D0BWP12T30P140 U173 ( .A1(wbm_err_i), .A2(n120), .ZN(n49) );
  NR3D0BWP12T30P140 U174 ( .A1(n47), .A2(n128), .A3(n49), .ZN(n131) );
  NR2D0BWP12T30P140 U175 ( .A1(n63), .A2(n131), .ZN(n39) );
  AOI22D0BWP12T30P140 U176 ( .A1(n164), .A2(lpc_dat_i[9]), .B1(n225), .B2(
        lpc_dat_i[13]), .ZN(n20) );
  ND2D0BWP12T30P140 U177 ( .A1(n110), .A2(byte_cnt[0]), .ZN(n57) );
  AOI32D0BWP12T30P140 U178 ( .A1(n21), .A2(n39), .A3(n20), .B1(n57), .B2(n39), 
        .ZN(n22) );
  OAI22D0BWP12T30P140 U179 ( .A1(lad_o[1]), .A2(n60), .B1(n62), .B2(n22), .ZN(
        n24) );
  AOI22D0BWP12T30P140 U180 ( .A1(n164), .A2(lpc_dat_i[1]), .B1(n225), .B2(
        lpc_dat_i[5]), .ZN(n23) );
  ND3D0BWP12T30P140 U181 ( .A1(n235), .A2(n60), .A3(n110), .ZN(n64) );
  AOI32D0BWP12T30P140 U182 ( .A1(n25), .A2(n24), .A3(n23), .B1(n64), .B2(n24), 
        .ZN(n424) );
  AOI22D0BWP12T30P140 U183 ( .A1(n224), .A2(lpc_dat_i[19]), .B1(n97), .B2(
        lpc_dat_i[23]), .ZN(n44) );
  AOI22D0BWP12T30P140 U184 ( .A1(n224), .A2(lpc_dat_i[27]), .B1(n97), .B2(
        lpc_dat_i[31]), .ZN(n27) );
  AOI22D0BWP12T30P140 U185 ( .A1(n164), .A2(lpc_dat_i[11]), .B1(n225), .B2(
        lpc_dat_i[15]), .ZN(n26) );
  AOI21D0BWP12T30P140 U186 ( .A1(n27), .A2(n26), .B(n57), .ZN(n41) );
  INVD0BWP12T30P140 U187 ( .I(got_ack), .ZN(n84) );
  INVD0BWP12T30P140 U188 ( .I(n128), .ZN(n88) );
  INVD0BWP12T30P140 U189 ( .I(xfr_len[2]), .ZN(n233) );
  ND3D0BWP12T30P140 U190 ( .A1(n233), .A2(n219), .A3(xfr_len[0]), .ZN(n28) );
  ND4D0BWP12T30P140 U191 ( .A1(n85), .A2(n88), .A3(dma_xfr), .A4(n28), .ZN(n51) );
  INVD0BWP12T30P140 U192 ( .I(n37), .ZN(n36) );
  NR2D0BWP12T30P140 U193 ( .A1(xfr_len[1]), .A2(n228), .ZN(n34) );
  ND2D0BWP12T30P140 U194 ( .A1(byte_cnt[0]), .A2(xfr_len[0]), .ZN(n32) );
  NR2D0BWP12T30P140 U195 ( .A1(xfr_len[2]), .A2(n29), .ZN(n30) );
  AOI21D0BWP12T30P140 U196 ( .A1(n34), .A2(n33), .B(n30), .ZN(n31) );
  OAI211D0BWP12T30P140 U197 ( .A1(n34), .A2(n33), .B(n32), .C(n31), .ZN(n35)
         );
  AOI221D0BWP12T30P140 U198 ( .A1(n37), .A2(n211), .B1(n36), .B2(n235), .C(n35), .ZN(n133) );
  INVD0BWP12T30P140 U199 ( .I(lpc_write), .ZN(n470) );
  AOI21D0BWP12T30P140 U200 ( .A1(n133), .A2(n470), .B(n128), .ZN(n38) );
  AOI31D0BWP12T30P140 U201 ( .A1(n47), .A2(dma_xfr), .A3(n38), .B(n62), .ZN(
        n50) );
  OAI211D0BWP12T30P140 U202 ( .A1(n84), .A2(n51), .B(n50), .C(n39), .ZN(n40)
         );
  OAI22D0BWP12T30P140 U203 ( .A1(lad_o[3]), .A2(n60), .B1(n41), .B2(n40), .ZN(
        n43) );
  AOI22D0BWP12T30P140 U204 ( .A1(n164), .A2(lpc_dat_i[3]), .B1(n225), .B2(
        lpc_dat_i[7]), .ZN(n42) );
  AOI32D0BWP12T30P140 U205 ( .A1(n44), .A2(n43), .A3(n42), .B1(n64), .B2(n43), 
        .ZN(n422) );
  INVD0BWP12T30P140 U206 ( .I(n184), .ZN(n259) );
  ND2D0BWP12T30P140 U207 ( .A1(n198), .A2(n259), .ZN(n189) );
  NR2D0BWP12T30P140 U208 ( .A1(adr_cnt[2]), .A2(n117), .ZN(n68) );
  AO21D0BWP12T30P140 U209 ( .A1(n68), .A2(n197), .B(n174), .Z(n190) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n189), .A2(n190), .B1(n190), .B2(
        lpc_adr_reg[31]), .ZN(n353) );
  AO22D0BWP12T30P140 U211 ( .A1(lpc_adr_reg[3]), .A2(n180), .B1(wbm_adr_o[3]), 
        .B2(n179), .Z(n266) );
  AOI22D0BWP12T30P140 U212 ( .A1(n224), .A2(lpc_dat_i[16]), .B1(n97), .B2(
        lpc_dat_i[20]), .ZN(n56) );
  AOI22D0BWP12T30P140 U213 ( .A1(n224), .A2(lpc_dat_i[24]), .B1(n97), .B2(
        lpc_dat_i[28]), .ZN(n46) );
  AOI22D0BWP12T30P140 U214 ( .A1(n164), .A2(lpc_dat_i[8]), .B1(n225), .B2(
        lpc_dat_i[12]), .ZN(n45) );
  AOI21D0BWP12T30P140 U215 ( .A1(n46), .A2(n45), .B(n57), .ZN(n53) );
  INVD0BWP12T30P140 U216 ( .I(n49), .ZN(n86) );
  NR2D0BWP12T30P140 U217 ( .A1(n47), .A2(got_ack), .ZN(n129) );
  AOI21D0BWP12T30P140 U218 ( .A1(lpc_write), .A2(fw_xfr), .B(n137), .ZN(n48)
         );
  AOI31D0BWP12T30P140 U219 ( .A1(n88), .A2(n129), .A3(n49), .B(n48), .ZN(n111)
         );
  OAI211D0BWP12T30P140 U220 ( .A1(n86), .A2(n51), .B(n50), .C(n111), .ZN(n52)
         );
  OAI32D0BWP12T30P140 U221 ( .A1(n63), .A2(n53), .A3(n52), .B1(lad_o[0]), .B2(
        n60), .ZN(n55) );
  AOI22D0BWP12T30P140 U222 ( .A1(n164), .A2(lpc_dat_i[0]), .B1(n225), .B2(
        lpc_dat_i[4]), .ZN(n54) );
  AOI32D0BWP12T30P140 U223 ( .A1(n56), .A2(n55), .A3(n54), .B1(n64), .B2(n55), 
        .ZN(n425) );
  AOI22D0BWP12T30P140 U224 ( .A1(n224), .A2(lpc_dat_i[18]), .B1(n97), .B2(
        lpc_dat_i[22]), .ZN(n67) );
  AOI22D0BWP12T30P140 U225 ( .A1(n224), .A2(lpc_dat_i[26]), .B1(n97), .B2(
        lpc_dat_i[30]), .ZN(n59) );
  AOI22D0BWP12T30P140 U226 ( .A1(n164), .A2(lpc_dat_i[10]), .B1(n225), .B2(
        lpc_dat_i[14]), .ZN(n58) );
  AOI32D0BWP12T30P140 U227 ( .A1(n59), .A2(n111), .A3(n58), .B1(n57), .B2(n111), .ZN(n61) );
  OAI32D0BWP12T30P140 U228 ( .A1(n63), .A2(n62), .A3(n61), .B1(lad_o[2]), .B2(
        n60), .ZN(n66) );
  AOI22D0BWP12T30P140 U229 ( .A1(n164), .A2(lpc_dat_i[2]), .B1(n225), .B2(
        lpc_dat_i[6]), .ZN(n65) );
  AOI32D0BWP12T30P140 U230 ( .A1(n67), .A2(n66), .A3(n65), .B1(n64), .B2(n66), 
        .ZN(n423) );
  AO22D0BWP12T30P140 U231 ( .A1(n253), .A2(lpc_adr_reg[31]), .B1(wbm_adr_o[31]), .B2(n179), .Z(n294) );
  AO22D0BWP12T30P140 U232 ( .A1(n253), .A2(lpc_adr_reg[30]), .B1(wbm_adr_o[30]), .B2(n179), .Z(n293) );
  AO22D0BWP12T30P140 U233 ( .A1(n253), .A2(lpc_adr_reg[29]), .B1(wbm_adr_o[29]), .B2(n179), .Z(n292) );
  AO22D0BWP12T30P140 U234 ( .A1(n181), .A2(lpc_adr_reg[28]), .B1(wbm_adr_o[28]), .B2(n179), .Z(n291) );
  AO22D0BWP12T30P140 U235 ( .A1(n181), .A2(lpc_adr_reg[27]), .B1(wbm_adr_o[27]), .B2(n179), .Z(n290) );
  AO22D0BWP12T30P140 U236 ( .A1(n253), .A2(lpc_adr_reg[26]), .B1(wbm_adr_o[26]), .B2(n179), .Z(n289) );
  AO22D0BWP12T30P140 U237 ( .A1(n253), .A2(lpc_adr_reg[25]), .B1(wbm_adr_o[25]), .B2(n179), .Z(n288) );
  AO22D0BWP12T30P140 U238 ( .A1(n181), .A2(lpc_adr_reg[24]), .B1(wbm_adr_o[24]), .B2(n182), .Z(n287) );
  AO22D0BWP12T30P140 U239 ( .A1(n253), .A2(lpc_adr_reg[23]), .B1(wbm_adr_o[23]), .B2(n187), .Z(n286) );
  AO22D0BWP12T30P140 U240 ( .A1(n181), .A2(lpc_adr_reg[22]), .B1(wbm_adr_o[22]), .B2(n182), .Z(n285) );
  AO22D0BWP12T30P140 U241 ( .A1(n181), .A2(lpc_adr_reg[21]), .B1(wbm_adr_o[21]), .B2(n182), .Z(n284) );
  AO22D0BWP12T30P140 U242 ( .A1(n178), .A2(lpc_adr_reg[20]), .B1(wbm_adr_o[20]), .B2(n243), .Z(n283) );
  AO22D0BWP12T30P140 U243 ( .A1(lpc_adr_reg[19]), .A2(n180), .B1(wbm_adr_o[19]), .B2(n179), .Z(n282) );
  AO22D0BWP12T30P140 U244 ( .A1(lpc_adr_reg[18]), .A2(n178), .B1(wbm_adr_o[18]), .B2(n187), .Z(n281) );
  AO22D0BWP12T30P140 U245 ( .A1(lpc_adr_reg[17]), .A2(n180), .B1(wbm_adr_o[17]), .B2(n182), .Z(n280) );
  AO22D0BWP12T30P140 U246 ( .A1(lpc_adr_reg[16]), .A2(n178), .B1(wbm_adr_o[16]), .B2(n182), .Z(n279) );
  AO22D0BWP12T30P140 U247 ( .A1(n181), .A2(lpc_adr_reg[15]), .B1(wbm_adr_o[15]), .B2(n243), .Z(n278) );
  AO22D0BWP12T30P140 U248 ( .A1(n181), .A2(lpc_adr_reg[14]), .B1(wbm_adr_o[14]), .B2(n179), .Z(n277) );
  AO22D0BWP12T30P140 U249 ( .A1(n181), .A2(lpc_adr_reg[13]), .B1(wbm_adr_o[13]), .B2(n187), .Z(n276) );
  AO22D0BWP12T30P140 U250 ( .A1(n181), .A2(lpc_adr_reg[12]), .B1(wbm_adr_o[12]), .B2(n243), .Z(n275) );
  AO22D0BWP12T30P140 U251 ( .A1(n181), .A2(lpc_adr_reg[11]), .B1(wbm_adr_o[11]), .B2(n179), .Z(n274) );
  AO22D0BWP12T30P140 U252 ( .A1(n181), .A2(lpc_adr_reg[10]), .B1(wbm_adr_o[10]), .B2(n187), .Z(n273) );
  AO22D0BWP12T30P140 U253 ( .A1(n181), .A2(lpc_adr_reg[9]), .B1(wbm_adr_o[9]), 
        .B2(n182), .Z(n272) );
  AO22D0BWP12T30P140 U254 ( .A1(n181), .A2(lpc_adr_reg[8]), .B1(wbm_adr_o[8]), 
        .B2(n243), .Z(n271) );
  AO22D0BWP12T30P140 U255 ( .A1(n181), .A2(lpc_adr_reg[7]), .B1(wbm_adr_o[7]), 
        .B2(n179), .Z(n270) );
  AO22D0BWP12T30P140 U256 ( .A1(n181), .A2(lpc_adr_reg[6]), .B1(wbm_adr_o[6]), 
        .B2(n187), .Z(n269) );
  AO22D0BWP12T30P140 U257 ( .A1(n178), .A2(lpc_adr_reg[5]), .B1(wbm_adr_o[5]), 
        .B2(n182), .Z(n268) );
  AO22D0BWP12T30P140 U258 ( .A1(n178), .A2(lpc_adr_reg[4]), .B1(wbm_adr_o[4]), 
        .B2(n243), .Z(n267) );
  AO22D0BWP12T30P140 U259 ( .A1(lpc_adr_reg[2]), .A2(n178), .B1(wbm_adr_o[2]), 
        .B2(n187), .Z(n265) );
  AO22D0BWP12T30P140 U260 ( .A1(lpc_adr_reg[1]), .A2(n180), .B1(wbm_adr_o[1]), 
        .B2(n182), .Z(n264) );
  AO22D0BWP12T30P140 U261 ( .A1(lpc_adr_reg[0]), .A2(n180), .B1(wbm_adr_o[0]), 
        .B2(n179), .Z(n263) );
  OR2D0BWP12T30P140 U262 ( .A1(n213), .A2(n196), .Z(n191) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n191), .A2(n154), .B1(n154), .B2(
        lpc_adr_reg[10]), .ZN(n366) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n189), .A2(n154), .B1(n154), .B2(
        lpc_adr_reg[11]), .ZN(n358) );
  OAI31D0BWP12T30P140 U265 ( .A1(n199), .A2(n117), .A3(adr_cnt[1]), .B(n150), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n175), .A2(n188), .B1(n188), .B2(
        lpc_adr_reg[12]), .ZN(n381) );
  AO21D0BWP12T30P140 U267 ( .A1(n221), .A2(n199), .B(n174), .Z(n177) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n175), .A2(n177), .B1(n177), .B2(
        lpc_adr_reg[24]), .ZN(n378) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n185), .A2(n177), .B1(n177), .B2(
        lpc_adr_reg[25]), .ZN(n370) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n189), .A2(n177), .B1(n177), .B2(
        lpc_adr_reg[27]), .ZN(n354) );
  AO21D0BWP12T30P140 U271 ( .A1(adr_cnt[1]), .A2(n68), .B(n174), .Z(n69) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n175), .A2(n69), .B1(n69), .B2(
        lpc_adr_reg[20]), .ZN(n379) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n185), .A2(n69), .B1(n69), .B2(
        lpc_adr_reg[21]), .ZN(n371) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n191), .A2(n69), .B1(n69), .B2(
        lpc_adr_reg[22]), .ZN(n363) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n189), .A2(n69), .B1(n69), .B2(
        lpc_adr_reg[23]), .ZN(n355) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n175), .A2(n190), .B1(n190), .B2(
        lpc_adr_reg[28]), .ZN(n377) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n185), .A2(n190), .B1(n190), .B2(
        lpc_adr_reg[29]), .ZN(n369) );
  NR2D0BWP12T30P140 U278 ( .A1(n246), .A2(n244), .ZN(n352) );
  NR2D0BWP12T30P140 U279 ( .A1(n71), .A2(n70), .ZN(n255) );
  INVD0BWP12T30P140 U280 ( .I(state[11]), .ZN(n113) );
  ND3D0BWP12T30P140 U281 ( .A1(n113), .A2(n72), .A3(state[1]), .ZN(n257) );
  ND2D0BWP12T30P140 U282 ( .A1(n257), .A2(n196), .ZN(n116) );
  NR3D0BWP12T30P140 U283 ( .A1(n255), .A2(n201), .A3(n116), .ZN(n83) );
  ND2D0BWP12T30P140 U284 ( .A1(n74), .A2(n73), .ZN(n75) );
  NR3D0BWP12T30P140 U285 ( .A1(state[2]), .A2(n161), .A3(n75), .ZN(n215) );
  INR3D1BWP12T30P140 U286 ( .A1(n77), .B1(n76), .B2(n110), .ZN(n95) );
  INVD0BWP12T30P140 U287 ( .I(n95), .ZN(n92) );
  INVD0BWP12T30P140 U288 ( .I(n105), .ZN(n203) );
  INVD0BWP12T30P140 U289 ( .I(state[9]), .ZN(n135) );
  ND3D0BWP12T30P140 U290 ( .A1(n135), .A2(n78), .A3(state[10]), .ZN(n91) );
  ND4D0BWP12T30P140 U291 ( .A1(n79), .A2(n155), .A3(n203), .A4(n91), .ZN(n80)
         );
  NR4D0BWP12T30P140 U292 ( .A1(n157), .A2(n215), .A3(n92), .A4(n80), .ZN(n82)
         );
  INVD0BWP12T30P140 U293 ( .I(state[13]), .ZN(n138) );
  ND3D0BWP12T30P140 U294 ( .A1(n138), .A2(n81), .A3(state[12]), .ZN(n103) );
  AOI31D0BWP12T30P140 U295 ( .A1(n83), .A2(n82), .A3(n103), .B(n352), .ZN(n162) );
  AOI221D0BWP12T30P140 U296 ( .A1(n86), .A2(n85), .B1(n84), .B2(n85), .C(
        lpc_write), .ZN(n87) );
  OAI21D0BWP12T30P140 U297 ( .A1(n133), .A2(n120), .B(dat_cnt_0_), .ZN(n204)
         );
  AOI22D0BWP12T30P140 U298 ( .A1(n88), .A2(n87), .B1(n110), .B2(n204), .ZN(n89) );
  ND2D0BWP12T30P140 U299 ( .A1(nrst_i), .A2(n162), .ZN(n159) );
  OAI22D0BWP12T30P140 U300 ( .A1(n162), .A2(n90), .B1(n89), .B2(n159), .ZN(
        n346) );
  INVD0BWP12T30P140 U301 ( .I(n91), .ZN(n141) );
  ND2D0BWP12T30P140 U302 ( .A1(n255), .A2(lframe_i), .ZN(n114) );
  OAI21D0BWP12T30P140 U303 ( .A1(state[0]), .A2(n114), .B(nrst_i), .ZN(n210)
         );
  AOI221D0BWP12T30P140 U304 ( .A1(n141), .A2(n244), .B1(n92), .B2(n244), .C(
        n210), .ZN(n94) );
  ND2D0BWP12T30P140 U305 ( .A1(n94), .A2(lad_oe), .ZN(n93) );
  OAI31D0BWP12T30P140 U306 ( .A1(n95), .A2(n94), .A3(n246), .B(n93), .ZN(n421)
         );
  OAI21D0BWP12T30P140 U307 ( .A1(n110), .A2(n105), .B(n115), .ZN(n242) );
  INVD0BWP12T30P140 U308 ( .I(n242), .ZN(n234) );
  ND2D0BWP12T30P140 U309 ( .A1(byte_cnt[0]), .A2(n234), .ZN(n238) );
  IND2D1BWP12T30P140 U310 ( .A1(n110), .B1(n203), .ZN(n96) );
  OAI31D0BWP12T30P140 U311 ( .A1(n131), .A2(n255), .A3(n96), .B(n115), .ZN(
        n240) );
  AOI21D0BWP12T30P140 U312 ( .A1(n234), .A2(n235), .B(n240), .ZN(n229) );
  OAI21D0BWP12T30P140 U313 ( .A1(n97), .A2(n242), .B(n229), .ZN(n98) );
  NR2D0BWP12T30P140 U314 ( .A1(n128), .A2(n240), .ZN(n239) );
  AOI22D0BWP12T30P140 U315 ( .A1(byte_cnt[2]), .A2(n98), .B1(xfr_len[2]), .B2(
        n239), .ZN(n99) );
  OAI31D0BWP12T30P140 U316 ( .A1(byte_cnt[2]), .A2(n100), .A3(n238), .B(n99), 
        .ZN(n335) );
  INVD0BWP12T30P140 U317 ( .I(n159), .ZN(n207) );
  ND2D0BWP12T30P140 U318 ( .A1(n207), .A2(lad_i[3]), .ZN(n101) );
  OAI22D0BWP12T30P140 U319 ( .A1(n162), .A2(n102), .B1(n257), .B2(n101), .ZN(
        n349) );
  ND3D0BWP12T30P140 U320 ( .A1(adr_cnt[0]), .A2(adr_cnt[1]), .A3(adr_cnt[2]), 
        .ZN(n152) );
  NR2D0BWP12T30P140 U321 ( .A1(n196), .A2(n152), .ZN(n158) );
  AOI21D0BWP12T30P140 U322 ( .A1(n158), .A2(n120), .B(n215), .ZN(n205) );
  OAI21D0BWP12T30P140 U323 ( .A1(n205), .A2(n470), .B(n103), .ZN(n104) );
  AOI21D0BWP12T30P140 U324 ( .A1(n105), .A2(n204), .B(n104), .ZN(n106) );
  OAI22D0BWP12T30P140 U325 ( .A1(n162), .A2(n107), .B1(n106), .B2(n159), .ZN(
        n347) );
  OAI21D0BWP12T30P140 U326 ( .A1(n219), .A2(n233), .B(n211), .ZN(n108) );
  OAI21D0BWP12T30P140 U327 ( .A1(n146), .A2(n108), .B(nrst_i), .ZN(n231) );
  INVD0BWP12T30P140 U328 ( .I(wbm_sel_o[0]), .ZN(n109) );
  ND2D0BWP12T30P140 U329 ( .A1(n253), .A2(n231), .ZN(n232) );
  OAI21D0BWP12T30P140 U330 ( .A1(n231), .A2(n109), .B(n232), .ZN(n295) );
  ND2D0BWP12T30P140 U331 ( .A1(n110), .A2(dat_cnt_0_), .ZN(n127) );
  OA31D0BWP12T30P140 U332 ( .A1(n127), .A2(fw_xfr), .A3(n133), .B(n111), .Z(
        n112) );
  OAI22D0BWP12T30P140 U333 ( .A1(n162), .A2(n113), .B1(n112), .B2(n159), .ZN(
        n341) );
  NR2D0BWP12T30P140 U334 ( .A1(lad_i[0]), .A2(lad_i[1]), .ZN(n209) );
  IND3D1BWP12T30P140 U335 ( .A1(n209), .B1(lad_i[3]), .B2(lad_i[2]), .ZN(n121)
         );
  AOI211D0BWP12T30P140 U336 ( .A1(lad_i[0]), .A2(lad_i[1]), .B(n114), .C(n121), 
        .ZN(n245) );
  OA21D0BWP12T30P140 U337 ( .A1(n245), .A2(n116), .B(n115), .Z(n195) );
  OAI22D0BWP12T30P140 U338 ( .A1(n195), .A2(n118), .B1(n201), .B2(n117), .ZN(
        n334) );
  NR2D0BWP12T30P140 U339 ( .A1(lad_i[2]), .A2(lad_i[3]), .ZN(n216) );
  ND4D0BWP12T30P140 U340 ( .A1(n255), .A2(n209), .A3(lframe_i), .A4(n216), 
        .ZN(n125) );
  AOI21D0BWP12T30P140 U341 ( .A1(n245), .A2(n244), .B(n201), .ZN(n119) );
  OAI21D0BWP12T30P140 U342 ( .A1(state[0]), .A2(n125), .B(n119), .ZN(n261) );
  INVD0BWP12T30P140 U343 ( .I(n261), .ZN(n122) );
  OAI32D0BWP12T30P140 U344 ( .A1(n122), .A2(n246), .A3(n121), .B1(n120), .B2(
        n261), .ZN(n426) );
  NR2D0BWP12T30P140 U345 ( .A1(lad_i[3]), .A2(n257), .ZN(n123) );
  AOI211D0BWP12T30P140 U346 ( .A1(n198), .A2(n152), .B(n245), .C(n123), .ZN(
        n124) );
  INVD0BWP12T30P140 U347 ( .I(n162), .ZN(n208) );
  MOAI22D0BWP12T30P140 U348 ( .A1(n124), .A2(n159), .B1(n208), .B2(state[2]), 
        .ZN(n350) );
  OAI22D0BWP12T30P140 U349 ( .A1(n162), .A2(n126), .B1(n159), .B2(n125), .ZN(
        n351) );
  INVD0BWP12T30P140 U350 ( .I(n127), .ZN(n132) );
  NR3D0BWP12T30P140 U351 ( .A1(n129), .A2(n470), .A3(n128), .ZN(n130) );
  AOI211D0BWP12T30P140 U352 ( .A1(n133), .A2(n132), .B(n131), .C(n130), .ZN(
        n134) );
  OAI22D0BWP12T30P140 U353 ( .A1(n162), .A2(n135), .B1(n134), .B2(n159), .ZN(
        n343) );
  ND3D0BWP12T30P140 U354 ( .A1(lpc_write), .A2(fw_xfr), .A3(n207), .ZN(n136)
         );
  OAI22D0BWP12T30P140 U355 ( .A1(n162), .A2(n138), .B1(n137), .B2(n136), .ZN(
        n339) );
  OAI22D0BWP12T30P140 U356 ( .A1(n140), .A2(n159), .B1(n162), .B2(n139), .ZN(
        n342) );
  ND3D0BWP12T30P140 U357 ( .A1(lpc_write), .A2(n141), .A3(n207), .ZN(n143) );
  OAI22D0BWP12T30P140 U358 ( .A1(n144), .A2(n143), .B1(n162), .B2(n142), .ZN(
        n340) );
  ND3D0BWP12T30P140 U359 ( .A1(n254), .A2(n243), .A3(wbm_we_o), .ZN(n145) );
  OAI21D0BWP12T30P140 U360 ( .A1(n146), .A2(n470), .B(n145), .ZN(n468) );
  NR2D0BWP12T30P140 U361 ( .A1(xfr_len[1]), .A2(xfr_len[2]), .ZN(n148) );
  INVD0BWP12T30P140 U362 ( .I(wbm_sel_o[1]), .ZN(n147) );
  OAI22D0BWP12T30P140 U363 ( .A1(n148), .A2(n232), .B1(n147), .B2(n231), .ZN(
        n296) );
  AO22D0BWP12T30P140 U364 ( .A1(lpc_tga_o[0]), .A2(n253), .B1(wbm_tga_o[0]), 
        .B2(n243), .Z(n330) );
  AO22D0BWP12T30P140 U365 ( .A1(lpc_tga_o[1]), .A2(n253), .B1(wbm_tga_o[1]), 
        .B2(n243), .Z(n331) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n184), .A2(n174), .B1(n174), .B2(dma_tc_o), 
        .ZN(n433) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n213), .A2(n174), .B1(n174), .B2(
        dma_chan_o[2]), .ZN(n432) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n258), .A2(n174), .B1(n174), .B2(
        dma_chan_o[1]), .ZN(n431) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n170), .A2(n174), .B1(n174), .B2(
        dma_chan_o[0]), .ZN(n430) );
  INVD0BWP12T30P140 U370 ( .I(n149), .ZN(n151) );
  OAI21D0BWP12T30P140 U371 ( .A1(n152), .A2(n151), .B(n150), .ZN(n163) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n189), .A2(n163), .B1(n163), .B2(
        lpc_adr_reg[3]), .ZN(n360) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n213), .A2(n168), .B1(n168), .B2(
        lpc_dat_o[18]), .ZN(n398) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n170), .A2(n153), .B1(n153), .B2(
        lpc_dat_o[24]), .ZN(n392) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n191), .A2(n176), .B1(n176), .B2(
        lpc_adr_reg[6]), .ZN(n367) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n185), .A2(n154), .B1(n154), .B2(
        lpc_adr_reg[9]), .ZN(n374) );
  OAI22D0BWP12T30P140 U377 ( .A1(n162), .A2(n156), .B1(n155), .B2(n159), .ZN(
        n344) );
  MAOI22D0BWP12T30P140 U378 ( .A1(n191), .A2(n163), .B1(n163), .B2(
        lpc_adr_reg[2]), .ZN(n368) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n213), .A2(n183), .B1(n183), .B2(
        lpc_dat_o[14]), .ZN(n402) );
  AOI21D0BWP12T30P140 U380 ( .A1(fw_xfr), .A2(n158), .B(n157), .ZN(n160) );
  OAI22D0BWP12T30P140 U381 ( .A1(n162), .A2(n161), .B1(n160), .B2(n159), .ZN(
        n348) );
  AO22D0BWP12T30P140 U382 ( .A1(lpc_dat_o[15]), .A2(n180), .B1(wbm_dat_o[15]), 
        .B2(n187), .Z(n313) );
  AO22D0BWP12T30P140 U383 ( .A1(lpc_dat_o[14]), .A2(n178), .B1(wbm_dat_o[14]), 
        .B2(n187), .Z(n312) );
  AO22D0BWP12T30P140 U384 ( .A1(lpc_dat_o[13]), .A2(n178), .B1(wbm_dat_o[13]), 
        .B2(n187), .Z(n311) );
  AO22D0BWP12T30P140 U385 ( .A1(lpc_dat_o[12]), .A2(n180), .B1(wbm_dat_o[12]), 
        .B2(n187), .Z(n310) );
  AO22D0BWP12T30P140 U386 ( .A1(lpc_dat_o[9]), .A2(n180), .B1(wbm_dat_o[9]), 
        .B2(n187), .Z(n307) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n175), .A2(n163), .B1(n163), .B2(
        lpc_adr_reg[0]), .ZN(n384) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n185), .A2(n163), .B1(n163), .B2(
        lpc_adr_reg[1]), .ZN(n376) );
  AO21D0BWP12T30P140 U389 ( .A1(n164), .A2(n166), .B(n201), .Z(n165) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n170), .A2(n165), .B1(n165), .B2(
        lpc_dat_o[0]), .ZN(n416) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n258), .A2(n165), .B1(n165), .B2(
        lpc_dat_o[1]), .ZN(n415) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n213), .A2(n165), .B1(n165), .B2(
        lpc_dat_o[2]), .ZN(n414) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n184), .A2(n165), .B1(n165), .B2(
        lpc_dat_o[3]), .ZN(n413) );
  AO21D0BWP12T30P140 U394 ( .A1(n225), .A2(n166), .B(n201), .Z(n167) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n170), .A2(n167), .B1(n167), .B2(
        lpc_dat_o[4]), .ZN(n412) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n258), .A2(n167), .B1(n167), .B2(
        lpc_dat_o[5]), .ZN(n411) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n213), .A2(n167), .B1(n167), .B2(
        lpc_dat_o[6]), .ZN(n410) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n184), .A2(n167), .B1(n167), .B2(
        lpc_dat_o[7]), .ZN(n409) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n170), .A2(n168), .B1(n168), .B2(
        lpc_dat_o[16]), .ZN(n400) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n258), .A2(n168), .B1(n168), .B2(
        lpc_dat_o[17]), .ZN(n399) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n184), .A2(n169), .B1(n169), .B2(
        lpc_dat_o[23]), .ZN(n393) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n170), .A2(n171), .B1(n171), .B2(
        lpc_dat_o[8]), .ZN(n408) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n258), .A2(n171), .B1(n171), .B2(
        lpc_dat_o[9]), .ZN(n407) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n258), .A2(n183), .B1(n183), .B2(
        lpc_dat_o[13]), .ZN(n403) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n258), .A2(n172), .B1(n172), .B2(
        lpc_dat_o[29]), .ZN(n387) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n213), .A2(n172), .B1(n172), .B2(
        lpc_dat_o[30]), .ZN(n386) );
  NR3D0BWP12T30P140 U407 ( .A1(adr_cnt[2]), .A2(n197), .A3(n173), .ZN(n194) );
  OR2D0BWP12T30P140 U408 ( .A1(n194), .A2(n174), .Z(n186) );
  MAOI22D0BWP12T30P140 U409 ( .A1(n175), .A2(n186), .B1(n186), .B2(
        lpc_adr_reg[16]), .ZN(n380) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n191), .A2(n186), .B1(n186), .B2(
        lpc_adr_reg[18]), .ZN(n364) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n175), .A2(n176), .B1(n176), .B2(
        lpc_adr_reg[4]), .ZN(n383) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n189), .A2(n176), .B1(n176), .B2(
        lpc_adr_reg[7]), .ZN(n359) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n185), .A2(n188), .B1(n188), .B2(
        lpc_adr_reg[13]), .ZN(n373) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n191), .A2(n188), .B1(n188), .B2(
        lpc_adr_reg[14]), .ZN(n365) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n191), .A2(n177), .B1(n177), .B2(
        lpc_adr_reg[26]), .ZN(n362) );
  AO22D0BWP12T30P140 U416 ( .A1(lpc_dat_o[7]), .A2(n178), .B1(wbm_dat_o[7]), 
        .B2(n187), .Z(n305) );
  AO22D0BWP12T30P140 U417 ( .A1(lpc_dat_o[23]), .A2(n181), .B1(wbm_dat_o[23]), 
        .B2(n243), .Z(n321) );
  AO22D0BWP12T30P140 U418 ( .A1(lpc_dat_o[22]), .A2(n178), .B1(wbm_dat_o[22]), 
        .B2(n182), .Z(n320) );
  AO22D0BWP12T30P140 U419 ( .A1(lpc_dat_o[21]), .A2(n253), .B1(wbm_dat_o[21]), 
        .B2(n243), .Z(n319) );
  AO22D0BWP12T30P140 U420 ( .A1(lpc_dat_o[20]), .A2(n180), .B1(wbm_dat_o[20]), 
        .B2(n182), .Z(n318) );
  AO22D0BWP12T30P140 U421 ( .A1(lpc_dat_o[19]), .A2(n181), .B1(wbm_dat_o[19]), 
        .B2(n243), .Z(n317) );
  AO22D0BWP12T30P140 U422 ( .A1(lpc_dat_o[18]), .A2(n178), .B1(wbm_dat_o[18]), 
        .B2(n182), .Z(n316) );
  AO22D0BWP12T30P140 U423 ( .A1(lpc_dat_o[17]), .A2(n253), .B1(wbm_dat_o[17]), 
        .B2(n243), .Z(n315) );
  AO22D0BWP12T30P140 U424 ( .A1(lpc_dat_o[16]), .A2(n180), .B1(wbm_dat_o[16]), 
        .B2(n179), .Z(n314) );
  AO22D0BWP12T30P140 U425 ( .A1(lpc_dat_o[8]), .A2(n181), .B1(wbm_dat_o[8]), 
        .B2(n187), .Z(n306) );
  AO22D0BWP12T30P140 U426 ( .A1(lpc_dat_o[27]), .A2(n253), .B1(wbm_dat_o[27]), 
        .B2(n182), .Z(n325) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n184), .A2(n183), .B1(n183), .B2(
        lpc_dat_o[15]), .ZN(n401) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n185), .A2(n186), .B1(n186), .B2(
        lpc_adr_reg[17]), .ZN(n372) );
  MAOI22D0BWP12T30P140 U429 ( .A1(n189), .A2(n186), .B1(n186), .B2(
        lpc_adr_reg[19]), .ZN(n356) );
  AO22D0BWP12T30P140 U430 ( .A1(lpc_dat_o[6]), .A2(n253), .B1(wbm_dat_o[6]), 
        .B2(n187), .Z(n304) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n189), .A2(n188), .B1(n188), .B2(
        lpc_adr_reg[15]), .ZN(n357) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n191), .A2(n190), .B1(n190), .B2(
        lpc_adr_reg[30]), .ZN(n361) );
  AO22D0BWP12T30P140 U433 ( .A1(lpc_dat_i[19]), .A2(n193), .B1(n192), .B2(
        wbm_dat_i[19]), .Z(n454) );
  NR2D0BWP12T30P140 U434 ( .A1(state[0]), .A2(n257), .ZN(n262) );
  INVD0BWP12T30P140 U435 ( .I(lad_i[2]), .ZN(n248) );
  AOI21D0BWP12T30P140 U436 ( .A1(n262), .A2(n248), .B(n194), .ZN(n202) );
  OAI21D0BWP12T30P140 U437 ( .A1(adr_cnt[0]), .A2(n196), .B(n195), .ZN(n220)
         );
  AOI21D0BWP12T30P140 U438 ( .A1(n198), .A2(n197), .B(n220), .ZN(n200) );
  OAI22D0BWP12T30P140 U439 ( .A1(n202), .A2(n201), .B1(n200), .B2(n199), .ZN(
        n332) );
  OAI22D0BWP12T30P140 U440 ( .A1(lpc_write), .A2(n205), .B1(n204), .B2(n203), 
        .ZN(n206) );
  AO22D0BWP12T30P140 U441 ( .A1(n208), .A2(state[7]), .B1(n207), .B2(n206), 
        .Z(n345) );
  OAI31D0BWP12T30P140 U442 ( .A1(n255), .A2(n209), .A3(lad_i[3]), .B(nrst_i), 
        .ZN(n214) );
  AOI21D0BWP12T30P140 U443 ( .A1(n215), .A2(n244), .B(n210), .ZN(n212) );
  INVD0BWP12T30P140 U444 ( .I(n212), .ZN(n223) );
  AOI32D0BWP12T30P140 U445 ( .A1(n214), .A2(n223), .A3(n213), .B1(n212), .B2(
        n211), .ZN(n429) );
  IND3D1BWP12T30P140 U446 ( .A1(n352), .B1(n216), .B2(n215), .ZN(n222) );
  INVD0BWP12T30P140 U447 ( .I(lad_i[1]), .ZN(n256) );
  ND2D0BWP12T30P140 U448 ( .A1(n217), .A2(n256), .ZN(n218) );
  OAI22D0BWP12T30P140 U449 ( .A1(n219), .A2(n223), .B1(n222), .B2(n218), .ZN(
        n428) );
  AO22D0BWP12T30P140 U450 ( .A1(nrst_i), .A2(n221), .B1(adr_cnt[1]), .B2(n220), 
        .Z(n333) );
  OAI22D0BWP12T30P140 U451 ( .A1(n233), .A2(n223), .B1(n258), .B2(n222), .ZN(
        n427) );
  AOI32D0BWP12T30P140 U452 ( .A1(n225), .A2(n234), .A3(byte_cnt[0]), .B1(n224), 
        .B2(n234), .ZN(n227) );
  ND2D0BWP12T30P140 U453 ( .A1(xfr_len[1]), .A2(n239), .ZN(n226) );
  OAI211D0BWP12T30P140 U454 ( .A1(n229), .A2(n228), .B(n227), .C(n226), .ZN(
        n336) );
  INVD0BWP12T30P140 U455 ( .I(wbm_sel_o[3]), .ZN(n230) );
  OAI22D0BWP12T30P140 U456 ( .A1(n233), .A2(n232), .B1(n231), .B2(n230), .ZN(
        n297) );
  AOI32D0BWP12T30P140 U457 ( .A1(dat_cnt_0_), .A2(n235), .A3(n234), .B1(
        byte_cnt[0]), .B2(n240), .ZN(n237) );
  ND2D0BWP12T30P140 U458 ( .A1(xfr_len[0]), .A2(n239), .ZN(n236) );
  OAI211D0BWP12T30P140 U459 ( .A1(dat_cnt_0_), .A2(n238), .B(n237), .C(n236), 
        .ZN(n337) );
  AOI21D0BWP12T30P140 U460 ( .A1(dat_cnt_0_), .A2(n240), .B(n239), .ZN(n241)
         );
  OAI21D0BWP12T30P140 U461 ( .A1(dat_cnt_0_), .A2(n242), .B(n241), .ZN(n338)
         );
  CKBD0BWP12T30P140 U462 ( .I(clk_i), .Z(n484) );
  CKBD0BWP12T30P140 U463 ( .I(n484), .Z(n483) );
  CKBD0BWP12T30P140 U464 ( .I(n483), .Z(n482) );
  CKBD0BWP12T30P140 U465 ( .I(n483), .Z(n480) );
  CKBD0BWP12T30P140 U466 ( .I(n483), .Z(n481) );
  CKBD0BWP12T30P140 U467 ( .I(n484), .Z(n476) );
  CKBD0BWP12T30P140 U468 ( .I(n483), .Z(n475) );
  CKBD0BWP12T30P140 U469 ( .I(n484), .Z(n474) );
  CKBD0BWP12T30P140 U470 ( .I(n484), .Z(n477) );
  CKBD0BWP12T30P140 U471 ( .I(n483), .Z(n479) );
  CKBD0BWP12T30P140 U472 ( .I(n483), .Z(n478) );
  IOA21D0BWP12T30P140 U473 ( .A1(n243), .A2(got_ack), .B(n254), .ZN(n434) );
  AOI211D0BWP12T30P140 U474 ( .A1(n245), .A2(n244), .B(n262), .C(n246), .ZN(
        n252) );
  NR2D0BWP12T30P140 U475 ( .A1(n252), .A2(n246), .ZN(n249) );
  AOI22D0BWP12T30P140 U476 ( .A1(n255), .A2(n249), .B1(n252), .B2(lpc_tga_o[1]), .ZN(n247) );
  ND2D0BWP12T30P140 U477 ( .A1(n259), .A2(n262), .ZN(n251) );
  ND2D0BWP12T30P140 U478 ( .A1(n247), .A2(n251), .ZN(n418) );
  AOI22D0BWP12T30P140 U479 ( .A1(lpc_tga_o[0]), .A2(n252), .B1(n249), .B2(n248), .ZN(n250) );
  ND2D0BWP12T30P140 U480 ( .A1(n250), .A2(n251), .ZN(n419) );
  IOA21D0BWP12T30P140 U481 ( .A1(dma_xfr), .A2(n252), .B(n251), .ZN(n420) );
  AO31D0BWP12T30P140 U482 ( .A1(wbm_stb_o), .A2(nrst_i), .A3(n254), .B(n253), 
        .Z(n435) );
  MAOI22D0BWP12T30P140 U483 ( .A1(n257), .A2(n256), .B1(n256), .B2(n255), .ZN(
        n260) );
  MAOI22D0BWP12T30P140 U484 ( .A1(n260), .A2(n259), .B1(n258), .B2(lad_i[3]), 
        .ZN(n471) );
  NR2D0BWP12T30P140 U485 ( .A1(n262), .A2(n261), .ZN(n469) );
  MUX2ND0BWP12T30P140 U486 ( .I0(n471), .I1(n470), .S(n469), .ZN(n417) );
endmodule


module wb_dreq_periph ( clk_i, nrst_i, dma_chan_i, dma_req_i, ldrq_o );
  input [2:0] dma_chan_i;
  input clk_i, nrst_i, dma_req_i;
  output ldrq_o;
  wire   n30, n31, n32, n33, n34, n35, n36, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28;
  wire   [3:0] state;
  wire   [1:0] adr_cnt;

  DFQD2BWP12T30P140 state_reg_2_ ( .D(n31), .CP(clk_i), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n32), .CP(clk_i), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n36), .CP(clk_i), .Q(state[0]) );
  DFQD2BWP12T30P140 ldrq_o_reg ( .D(n33), .CP(clk_i), .Q(ldrq_o) );
  DFQD2BWP12T30P140 adr_cnt_reg_1_ ( .D(n34), .CP(clk_i), .Q(adr_cnt[1]) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n35), .CP(clk_i), .Q(adr_cnt[0]) );
  DFQD1BWP12T30P140 state_reg_3_ ( .D(n30), .CP(clk_i), .Q(state[3]) );
  NR2D0BWP12T30P140 U3 ( .A1(state[1]), .A2(state[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(n7), .ZN(n26) );
  INVD0BWP12T30P140 U5 ( .I(state[0]), .ZN(n27) );
  NR2D0BWP12T30P140 U6 ( .A1(n26), .A2(n27), .ZN(n12) );
  NR2D0BWP12T30P140 U7 ( .A1(adr_cnt[1]), .A2(adr_cnt[0]), .ZN(n16) );
  INVD0BWP12T30P140 U8 ( .I(state[2]), .ZN(n4) );
  AOI21D0BWP12T30P140 U9 ( .A1(state[2]), .A2(state[1]), .B(n7), .ZN(n20) );
  AOI21D0BWP12T30P140 U10 ( .A1(dma_req_i), .A2(n4), .B(n20), .ZN(n1) );
  MAOI22D0BWP12T30P140 U11 ( .A1(n12), .A2(n16), .B1(state[0]), .B2(n1), .ZN(
        n2) );
  OAI21D0BWP12T30P140 U12 ( .A1(state[3]), .A2(n2), .B(nrst_i), .ZN(n28) );
  INVD0BWP12T30P140 U13 ( .I(state[1]), .ZN(n6) );
  INVD0BWP12T30P140 U14 ( .I(nrst_i), .ZN(n21) );
  INVD0BWP12T30P140 U15 ( .I(n28), .ZN(n3) );
  NR2D0BWP12T30P140 U16 ( .A1(n21), .A2(n3), .ZN(n5) );
  ND2D0BWP12T30P140 U17 ( .A1(n5), .A2(n27), .ZN(n25) );
  OAI22D0BWP12T30P140 U18 ( .A1(n28), .A2(n4), .B1(n6), .B2(n25), .ZN(n31) );
  INVD0BWP12T30P140 U19 ( .I(state[3]), .ZN(n19) );
  NR2D0BWP12T30P140 U20 ( .A1(n21), .A2(n19), .ZN(n30) );
  MOAI22D0BWP12T30P140 U21 ( .A1(n6), .A2(n28), .B1(n12), .B2(n5), .ZN(n32) );
  OA21D0BWP12T30P140 U22 ( .A1(state[0]), .A2(dma_req_i), .B(n7), .Z(n18) );
  OAI211D0BWP12T30P140 U23 ( .A1(n16), .A2(n27), .B(n18), .C(n19), .ZN(n9) );
  ND2D0BWP12T30P140 U24 ( .A1(n18), .A2(n19), .ZN(n10) );
  OAI21D0BWP12T30P140 U25 ( .A1(adr_cnt[0]), .A2(n10), .B(adr_cnt[1]), .ZN(n8)
         );
  AOI21D0BWP12T30P140 U26 ( .A1(n9), .A2(n8), .B(n21), .ZN(n34) );
  INVD0BWP12T30P140 U27 ( .I(adr_cnt[0]), .ZN(n11) );
  AOI32D0BWP12T30P140 U28 ( .A1(n12), .A2(n11), .A3(n19), .B1(adr_cnt[0]), 
        .B2(n10), .ZN(n13) );
  NR2D0BWP12T30P140 U29 ( .A1(n21), .A2(n13), .ZN(n35) );
  INVD0BWP12T30P140 U30 ( .I(adr_cnt[1]), .ZN(n14) );
  AOI32D0BWP12T30P140 U31 ( .A1(adr_cnt[0]), .A2(n14), .A3(dma_chan_i[1]), 
        .B1(dma_chan_i[2]), .B2(adr_cnt[1]), .ZN(n15) );
  IOA21D0BWP12T30P140 U32 ( .A1(n16), .A2(dma_chan_i[0]), .B(n15), .ZN(n17) );
  AOI21D0BWP12T30P140 U33 ( .A1(state[0]), .A2(n17), .B(n26), .ZN(n24) );
  AOI32D0BWP12T30P140 U34 ( .A1(n20), .A2(n19), .A3(n27), .B1(n18), .B2(n19), 
        .ZN(n23) );
  AOI21D0BWP12T30P140 U35 ( .A1(ldrq_o), .A2(n23), .B(n21), .ZN(n22) );
  OAI21D0BWP12T30P140 U36 ( .A1(n24), .A2(n23), .B(n22), .ZN(n33) );
  OAI22D0BWP12T30P140 U37 ( .A1(n28), .A2(n27), .B1(n26), .B2(n25), .ZN(n36)
         );
endmodule


module wb_dreq_host ( clk_i, nrst_i, dma_chan_o, dma_req_o, ldrq_i );
  output [2:0] dma_chan_o;
  input clk_i, nrst_i, ldrq_i;
  output dma_req_o;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29;
  wire   [3:0] state;
  wire   [1:0] adr_cnt;

  DFQD2BWP12T30P140 dma_req_o_reg ( .D(n39), .CP(clk_i), .Q(dma_req_o) );
  DFQD2BWP12T30P140 dma_chan_o_reg_2_ ( .D(n35), .CP(clk_i), .Q(dma_chan_o[2])
         );
  DFQD2BWP12T30P140 dma_chan_o_reg_1_ ( .D(n34), .CP(clk_i), .Q(dma_chan_o[1])
         );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n36), .CP(clk_i), .Q(state[3]) );
  DFQD2BWP12T30P140 dma_chan_o_reg_0_ ( .D(n33), .CP(clk_i), .Q(dma_chan_o[0])
         );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n37), .CP(clk_i), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n38), .CP(clk_i), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n42), .CP(clk_i), .Q(state[0]) );
  DFQD2BWP12T30P140 adr_cnt_reg_0_ ( .D(n41), .CP(clk_i), .Q(adr_cnt[0]) );
  DFQD1BWP12T30P140 adr_cnt_reg_1_ ( .D(n40), .CP(clk_i), .Q(adr_cnt[1]) );
  INVD0BWP12T30P140 U3 ( .I(state[3]), .ZN(n17) );
  NR2D0BWP12T30P140 U4 ( .A1(state[2]), .A2(state[1]), .ZN(n8) );
  ND3D0BWP12T30P140 U5 ( .A1(n17), .A2(state[0]), .A3(n8), .ZN(n25) );
  INVD0BWP12T30P140 U6 ( .I(ldrq_i), .ZN(n29) );
  INVD0BWP12T30P140 U7 ( .I(nrst_i), .ZN(n26) );
  AOI31D0BWP12T30P140 U8 ( .A1(n8), .A2(n17), .A3(n29), .B(n26), .ZN(n1) );
  ND2D0BWP12T30P140 U9 ( .A1(n25), .A2(n1), .ZN(n5) );
  INVD0BWP12T30P140 U10 ( .I(n5), .ZN(n3) );
  ND2D0BWP12T30P140 U11 ( .A1(nrst_i), .A2(state[0]), .ZN(n2) );
  INVD0BWP12T30P140 U12 ( .I(adr_cnt[0]), .ZN(n18) );
  OAI32D0BWP12T30P140 U13 ( .A1(n3), .A2(adr_cnt[0]), .A3(n2), .B1(n18), .B2(
        n5), .ZN(n41) );
  OAI21D0BWP12T30P140 U14 ( .A1(adr_cnt[1]), .A2(adr_cnt[0]), .B(state[0]), 
        .ZN(n4) );
  AOI22D0BWP12T30P140 U15 ( .A1(adr_cnt[0]), .A2(adr_cnt[1]), .B1(n5), .B2(n4), 
        .ZN(n6) );
  INVD0BWP12T30P140 U16 ( .I(adr_cnt[1]), .ZN(n24) );
  OAI22D0BWP12T30P140 U17 ( .A1(n6), .A2(n26), .B1(n5), .B2(n24), .ZN(n40) );
  INVD0BWP12T30P140 U18 ( .I(state[0]), .ZN(n10) );
  OAI31D0BWP12T30P140 U19 ( .A1(adr_cnt[0]), .A2(adr_cnt[1]), .A3(n25), .B(
        nrst_i), .ZN(n15) );
  INVD0BWP12T30P140 U20 ( .I(n15), .ZN(n7) );
  INVD0BWP12T30P140 U21 ( .I(state[1]), .ZN(n13) );
  INVD0BWP12T30P140 U22 ( .I(state[2]), .ZN(n12) );
  OAI211D0BWP12T30P140 U23 ( .A1(n13), .A2(n12), .B(n17), .C(n10), .ZN(n23) );
  AOI32D0BWP12T30P140 U24 ( .A1(ldrq_i), .A2(n7), .A3(n8), .B1(n23), .B2(n7), 
        .ZN(n11) );
  ND2D0BWP12T30P140 U25 ( .A1(n8), .A2(n11), .ZN(n9) );
  AOI21D0BWP12T30P140 U26 ( .A1(n10), .A2(n9), .B(n15), .ZN(n42) );
  INVD0BWP12T30P140 U27 ( .I(n11), .ZN(n14) );
  OAI32D0BWP12T30P140 U28 ( .A1(n14), .A2(n26), .A3(n10), .B1(n13), .B2(n11), 
        .ZN(n38) );
  OAI32D0BWP12T30P140 U29 ( .A1(n14), .A2(n26), .A3(n13), .B1(n12), .B2(n11), 
        .ZN(n37) );
  ND2D0BWP12T30P140 U30 ( .A1(nrst_i), .A2(ldrq_i), .ZN(n16) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n16), .A2(n15), .B1(n15), .B2(dma_chan_o[0]), 
        .ZN(n33) );
  NR2D0BWP12T30P140 U32 ( .A1(n26), .A2(n17), .ZN(n36) );
  NR3D0BWP12T30P140 U33 ( .A1(adr_cnt[1]), .A2(n18), .A3(n25), .ZN(n20) );
  NR2D0BWP12T30P140 U34 ( .A1(n20), .A2(dma_chan_o[1]), .ZN(n19) );
  AOI211D0BWP12T30P140 U35 ( .A1(n29), .A2(n20), .B(n19), .C(n26), .ZN(n34) );
  ND2D0BWP12T30P140 U36 ( .A1(nrst_i), .A2(state[1]), .ZN(n22) );
  ND3D0BWP12T30P140 U37 ( .A1(n23), .A2(dma_req_o), .A3(nrst_i), .ZN(n21) );
  OAI31D0BWP12T30P140 U38 ( .A1(n23), .A2(n29), .A3(n22), .B(n21), .ZN(n39) );
  NR3D0BWP12T30P140 U39 ( .A1(adr_cnt[0]), .A2(n25), .A3(n24), .ZN(n28) );
  NR2D0BWP12T30P140 U40 ( .A1(n28), .A2(dma_chan_o[2]), .ZN(n27) );
  AOI211D0BWP12T30P140 U41 ( .A1(n29), .A2(n28), .B(n27), .C(n26), .ZN(n35) );
endmodule


module wb_regfile ( clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, 
        wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_err_o, ws_i, datareg0, 
        datareg1 );
  input [31:0] wb_adr_i;
  output [31:0] wb_dat_o;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  input [7:0] ws_i;
  output [31:0] datareg0;
  output [31:0] datareg1;
  input clk_i, nrst_i, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, wb_err_o;
  wire   n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319;
  wire   [7:0] waitstate;

  DFQD2BWP12T30P140 wb_dat_o_reg_2_ ( .D(n201), .CP(clk_i), .Q(wb_dat_o[2]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_1_ ( .D(n202), .CP(clk_i), .Q(wb_dat_o[1]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_0_ ( .D(n203), .CP(clk_i), .Q(wb_dat_o[0]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_14_ ( .D(n189), .CP(clk_i), .Q(wb_dat_o[14])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_11_ ( .D(n192), .CP(clk_i), .Q(wb_dat_o[11])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_10_ ( .D(n193), .CP(clk_i), .Q(wb_dat_o[10])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_6_ ( .D(n218), .CP(n318), .Q(datareg1[6])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_5_ ( .D(n223), .CP(n318), .Q(datareg1[5])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_4_ ( .D(n271), .CP(n318), .Q(datareg1[4])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_3_ ( .D(n229), .CP(n318), .Q(datareg1[3])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_2_ ( .D(n234), .CP(n318), .Q(datareg1[2])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_1_ ( .D(n239), .CP(n318), .Q(datareg1[1])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_0_ ( .D(n242), .CP(n318), .Q(datareg1[0])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_6_ ( .D(n219), .CP(n317), .Q(datareg1[14])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_5_ ( .D(n224), .CP(n317), .Q(datareg1[13])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_4_ ( .D(n268), .CP(n317), .Q(datareg1[12])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_3_ ( .D(n230), .CP(n317), .Q(datareg1[11])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_2_ ( .D(n235), .CP(n317), .Q(datareg1[10])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_1_ ( .D(n240), .CP(n317), .Q(datareg1[9])
         );
  DFQD2BWP12T30P140 datareg1_1_reg_0_ ( .D(n273), .CP(n317), .Q(datareg1[8])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_7_ ( .D(n215), .CP(n319), .Q(datareg1[23])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_6_ ( .D(n220), .CP(n319), .Q(datareg1[22])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_5_ ( .D(n225), .CP(n319), .Q(datareg1[21])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_4_ ( .D(n269), .CP(n319), .Q(datareg1[20])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_3_ ( .D(n231), .CP(n319), .Q(datareg1[19])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_2_ ( .D(n236), .CP(n319), .Q(datareg1[18])
         );
  DFQD2BWP12T30P140 datareg1_2_reg_1_ ( .D(n275), .CP(n319), .Q(datareg1[17])
         );
  DFQD2BWP12T30P140 datareg1_0_reg_7_ ( .D(n213), .CP(n319), .Q(datareg1[7])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_7_ ( .D(n217), .CP(n315), .Q(datareg0[7])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_6_ ( .D(n222), .CP(n315), .Q(datareg0[6])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_4_ ( .D(n228), .CP(n318), .Q(datareg0[4])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_3_ ( .D(n233), .CP(n317), .Q(datareg0[3])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_2_ ( .D(n238), .CP(n316), .Q(datareg0[2])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_1_ ( .D(n241), .CP(n315), .Q(datareg0[1])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_0_ ( .D(n272), .CP(n315), .Q(datareg1[24])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_1_ ( .D(n274), .CP(n315), .Q(datareg1[25])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_7_ ( .D(n216), .CP(n315), .Q(datareg1[31])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_6_ ( .D(n221), .CP(n315), .Q(datareg1[30])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_5_ ( .D(n226), .CP(n315), .Q(datareg1[29])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_4_ ( .D(n270), .CP(n315), .Q(datareg1[28])
         );
  DFQD2BWP12T30P140 datareg1_3_reg_3_ ( .D(n232), .CP(n315), .Q(datareg1[27])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_7_ ( .D(n196), .CP(n317), .Q(wb_dat_o[7]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_6_ ( .D(n197), .CP(n316), .Q(wb_dat_o[6]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_5_ ( .D(n198), .CP(n315), .Q(wb_dat_o[5]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_4_ ( .D(n199), .CP(n318), .Q(wb_dat_o[4]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_8_ ( .D(n195), .CP(n318), .Q(wb_dat_o[8]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_31_ ( .D(n172), .CP(n318), .Q(wb_dat_o[31])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_30_ ( .D(n173), .CP(n317), .Q(wb_dat_o[30])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_29_ ( .D(n174), .CP(n316), .Q(wb_dat_o[29])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_28_ ( .D(n175), .CP(n315), .Q(wb_dat_o[28])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_26_ ( .D(n177), .CP(n318), .Q(wb_dat_o[26])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_25_ ( .D(n178), .CP(n317), .Q(wb_dat_o[25])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_24_ ( .D(n179), .CP(n316), .Q(wb_dat_o[24])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_23_ ( .D(n180), .CP(n315), .Q(wb_dat_o[23])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_22_ ( .D(n181), .CP(n317), .Q(wb_dat_o[22])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_19_ ( .D(n184), .CP(n317), .Q(wb_dat_o[19])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_18_ ( .D(n185), .CP(n316), .Q(wb_dat_o[18])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_17_ ( .D(n186), .CP(n315), .Q(wb_dat_o[17])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_16_ ( .D(n187), .CP(n316), .Q(wb_dat_o[16])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_13_ ( .D(n190), .CP(n316), .Q(wb_dat_o[13])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_12_ ( .D(n191), .CP(n315), .Q(wb_dat_o[12])
         );
  DFQD2BWP12T30P140 waitstate_reg_0_ ( .D(n212), .CP(clk_i), .Q(waitstate[0])
         );
  DFQD2BWP12T30P140 waitstate_reg_1_ ( .D(n211), .CP(clk_i), .Q(waitstate[1])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_5_ ( .D(n227), .CP(n319), .Q(datareg0[5])
         );
  DFQD2BWP12T30P140 datareg0_0_reg_0_ ( .D(n276), .CP(n319), .Q(datareg0[0])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_3_ ( .D(n200), .CP(n319), .Q(wb_dat_o[3]) );
  DFQD2BWP12T30P140 waitstate_reg_6_ ( .D(n206), .CP(n319), .Q(waitstate[6])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_27_ ( .D(n176), .CP(n319), .Q(wb_dat_o[27])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_21_ ( .D(n182), .CP(n319), .Q(wb_dat_o[21])
         );
  DFQD2BWP12T30P140 wb_dat_o_reg_9_ ( .D(n194), .CP(n319), .Q(wb_dat_o[9]) );
  DFQD2BWP12T30P140 datareg0_1_reg_0_ ( .D(n251), .CP(n316), .Q(datareg0[8])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_0_ ( .D(n267), .CP(n315), .Q(datareg0[24])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_7_ ( .D(n244), .CP(n317), .Q(datareg0[15])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_6_ ( .D(n245), .CP(n316), .Q(datareg0[14])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_5_ ( .D(n246), .CP(n316), .Q(datareg0[13])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_4_ ( .D(n247), .CP(n316), .Q(datareg0[12])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_3_ ( .D(n248), .CP(n316), .Q(datareg0[11])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_2_ ( .D(n249), .CP(n316), .Q(datareg0[10])
         );
  DFQD2BWP12T30P140 datareg0_1_reg_1_ ( .D(n250), .CP(n316), .Q(datareg0[9])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_7_ ( .D(n252), .CP(n318), .Q(datareg0[23])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_6_ ( .D(n253), .CP(n318), .Q(datareg0[22])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_5_ ( .D(n254), .CP(n318), .Q(datareg0[21])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_3_ ( .D(n256), .CP(n318), .Q(datareg0[19])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_1_ ( .D(n258), .CP(n317), .Q(datareg0[17])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_7_ ( .D(n260), .CP(n316), .Q(datareg0[31])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_6_ ( .D(n261), .CP(n316), .Q(datareg0[30])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_5_ ( .D(n262), .CP(n316), .Q(datareg0[29])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_4_ ( .D(n263), .CP(n316), .Q(datareg0[28])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_3_ ( .D(n264), .CP(n316), .Q(datareg0[27])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_2_ ( .D(n265), .CP(n315), .Q(datareg0[26])
         );
  DFQD2BWP12T30P140 datareg0_3_reg_1_ ( .D(n266), .CP(n315), .Q(datareg0[25])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_4_ ( .D(n255), .CP(n318), .Q(datareg0[20])
         );
  DFQD2BWP12T30P140 datareg0_2_reg_0_ ( .D(n259), .CP(n317), .Q(datareg0[16])
         );
  DFQD2BWP12T30P140 waitstate_reg_7_ ( .D(n205), .CP(n318), .Q(waitstate[7])
         );
  DFQD2BWP12T30P140 waitstate_reg_3_ ( .D(n209), .CP(clk_i), .Q(waitstate[3])
         );
  DFQD2BWP12T30P140 waitstate_reg_2_ ( .D(n210), .CP(n319), .Q(waitstate[2])
         );
  DFQD2BWP12T30P140 waitstate_reg_4_ ( .D(n208), .CP(n319), .Q(waitstate[4])
         );
  DFQD1BWP12T30P140 datareg1_1_reg_7_ ( .D(n214), .CP(n317), .Q(datareg1[15])
         );
  DFQD1BWP12T30P140 datareg1_2_reg_0_ ( .D(n243), .CP(n319), .Q(datareg1[16])
         );
  DFQD1BWP12T30P140 datareg1_3_reg_2_ ( .D(n237), .CP(n315), .Q(datareg1[26])
         );
  DFQD1BWP12T30P140 wb_dat_o_reg_20_ ( .D(n183), .CP(n318), .Q(wb_dat_o[20])
         );
  DFQD1BWP12T30P140 wb_dat_o_reg_15_ ( .D(n188), .CP(n319), .Q(wb_dat_o[15])
         );
  DFQD1BWP12T30P140 datareg0_2_reg_2_ ( .D(n257), .CP(n317), .Q(datareg0[18])
         );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(n204), .CP(n317), .Q(wb_ack_o) );
  DFQD1BWP12T30P140 waitstate_reg_5_ ( .D(n207), .CP(n319), .Q(waitstate[5])
         );
  ND2D0BWP12T30P140 U3 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[1]), .ZN(n1) );
  NR3D0BWP12T30P140 U4 ( .A1(wb_sel_i[2]), .A2(wb_sel_i[3]), .A3(n1), .ZN(n2)
         );
  INVD0BWP12T30P140 U5 ( .I(nrst_i), .ZN(n94) );
  INVD0BWP12T30P140 U6 ( .I(n94), .ZN(n290) );
  ND4D0BWP12T30P140 U7 ( .A1(wb_sel_i[2]), .A2(wb_sel_i[0]), .A3(wb_sel_i[1]), 
        .A4(wb_sel_i[3]), .ZN(n39) );
  ND2D0BWP12T30P140 U8 ( .A1(n290), .A2(n39), .ZN(n84) );
  NR2D0BWP12T30P140 U9 ( .A1(n2), .A2(n84), .ZN(n122) );
  NR3D0BWP12T30P140 U10 ( .A1(wb_sel_i[2]), .A2(wb_sel_i[1]), .A3(wb_sel_i[3]), 
        .ZN(n86) );
  INVD0BWP12T30P140 U11 ( .I(wb_adr_i[0]), .ZN(n5) );
  INVD0BWP12T30P140 U12 ( .I(wb_adr_i[2]), .ZN(n6) );
  INVD0BWP12T30P140 U13 ( .I(wb_adr_i[1]), .ZN(n4) );
  ND4D0BWP12T30P140 U14 ( .A1(n86), .A2(n5), .A3(n6), .A4(n4), .ZN(n3) );
  AOI31D0BWP12T30P140 U15 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_we_i), .B(n94), .ZN(n83) );
  AOI21D0BWP12T30P140 U16 ( .A1(n122), .A2(n3), .B(n83), .ZN(n302) );
  ND4D0BWP12T30P140 U17 ( .A1(n290), .A2(wb_stb_i), .A3(wb_cyc_i), .A4(wb_we_i), .ZN(n38) );
  INVD0BWP12T30P140 U18 ( .I(n38), .ZN(n28) );
  ND2D0BWP12T30P140 U19 ( .A1(n28), .A2(wb_dat_i[5]), .ZN(n306) );
  MAOI22D0BWP12T30P140 U20 ( .A1(n302), .A2(n306), .B1(datareg0[5]), .B2(n302), 
        .ZN(n227) );
  ND2D0BWP12T30P140 U21 ( .A1(wb_dat_i[0]), .A2(n28), .ZN(n41) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n302), .A2(n41), .B1(datareg0[0]), .B2(n302), 
        .ZN(n276) );
  INVD0BWP12T30P140 U23 ( .I(n86), .ZN(n87) );
  NR2D0BWP12T30P140 U24 ( .A1(n87), .A2(n83), .ZN(n93) );
  INVD0BWP12T30P140 U25 ( .I(n93), .ZN(n31) );
  ND3D0BWP12T30P140 U26 ( .A1(n4), .A2(wb_adr_i[2]), .A3(wb_adr_i[0]), .ZN(
        n279) );
  OAI21D0BWP12T30P140 U27 ( .A1(n31), .A2(n279), .B(n290), .ZN(n29) );
  INVD0BWP12T30P140 U28 ( .I(n29), .ZN(n30) );
  INVD0BWP12T30P140 U29 ( .I(datareg1[8]), .ZN(n53) );
  AOI32D0BWP12T30P140 U30 ( .A1(n290), .A2(n29), .A3(n41), .B1(n30), .B2(n53), 
        .ZN(n273) );
  ND3D0BWP12T30P140 U31 ( .A1(n5), .A2(wb_adr_i[1]), .A3(wb_adr_i[2]), .ZN(
        n281) );
  OAI21D0BWP12T30P140 U32 ( .A1(n281), .A2(n31), .B(n290), .ZN(n90) );
  INVD0BWP12T30P140 U33 ( .I(n90), .ZN(n91) );
  INVD0BWP12T30P140 U34 ( .I(datareg1[22]), .ZN(n158) );
  ND2D0BWP12T30P140 U35 ( .A1(n28), .A2(wb_dat_i[6]), .ZN(n314) );
  AOI22D0BWP12T30P140 U36 ( .A1(n91), .A2(n158), .B1(n314), .B2(n90), .ZN(n220) );
  INVD0BWP12T30P140 U37 ( .I(datareg1[9]), .ZN(n63) );
  ND2D0BWP12T30P140 U38 ( .A1(n28), .A2(wb_dat_i[1]), .ZN(n301) );
  AOI22D0BWP12T30P140 U39 ( .A1(n30), .A2(n63), .B1(n301), .B2(n29), .ZN(n240)
         );
  NR3D0BWP12T30P140 U40 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(n5), .ZN(
        n166) );
  NR3D0BWP12T30P140 U41 ( .A1(wb_adr_i[2]), .A2(wb_adr_i[0]), .A3(n4), .ZN(
        n165) );
  AOI22D0BWP12T30P140 U42 ( .A1(n166), .A2(datareg0[11]), .B1(n165), .B2(
        datareg0[19]), .ZN(n12) );
  ND2D0BWP12T30P140 U43 ( .A1(n122), .A2(n87), .ZN(n33) );
  INVD0BWP12T30P140 U44 ( .I(n33), .ZN(n168) );
  INR2D1BWP12T30P140 U45 ( .A1(n39), .B1(n2), .ZN(n34) );
  AOI21D0BWP12T30P140 U46 ( .A1(n34), .A2(n3), .B(n94), .ZN(n167) );
  AOI22D0BWP12T30P140 U47 ( .A1(n168), .A2(wb_dat_o[3]), .B1(datareg0[3]), 
        .B2(n167), .ZN(n11) );
  NR3D0BWP12T30P140 U48 ( .A1(n6), .A2(n5), .A3(n4), .ZN(n284) );
  ND3D0BWP12T30P140 U49 ( .A1(n5), .A2(n4), .A3(wb_adr_i[2]), .ZN(n277) );
  INVD0BWP12T30P140 U50 ( .I(datareg1[3]), .ZN(n42) );
  ND3D0BWP12T30P140 U51 ( .A1(n6), .A2(wb_adr_i[1]), .A3(wb_adr_i[0]), .ZN(
        n170) );
  INVD0BWP12T30P140 U52 ( .I(datareg0[27]), .ZN(n7) );
  OAI22D0BWP12T30P140 U53 ( .A1(n277), .A2(n42), .B1(n170), .B2(n7), .ZN(n9)
         );
  INVD0BWP12T30P140 U54 ( .I(datareg1[19]), .ZN(n27) );
  INVD0BWP12T30P140 U55 ( .I(datareg1[11]), .ZN(n26) );
  OAI22D0BWP12T30P140 U56 ( .A1(n281), .A2(n27), .B1(n279), .B2(n26), .ZN(n8)
         );
  AOI211D0BWP12T30P140 U57 ( .A1(n284), .A2(datareg1[27]), .B(n9), .C(n8), 
        .ZN(n10) );
  ND2D0BWP12T30P140 U58 ( .A1(n290), .A2(n86), .ZN(n285) );
  AOI32D0BWP12T30P140 U59 ( .A1(n12), .A2(n11), .A3(n10), .B1(n285), .B2(n11), 
        .ZN(n200) );
  INVD0BWP12T30P140 U60 ( .I(waitstate[0]), .ZN(n132) );
  NR4D0BWP12T30P140 U61 ( .A1(ws_i[6]), .A2(ws_i[5]), .A3(ws_i[4]), .A4(
        ws_i[7]), .ZN(n14) );
  NR4D0BWP12T30P140 U62 ( .A1(ws_i[3]), .A2(ws_i[2]), .A3(ws_i[1]), .A4(
        ws_i[0]), .ZN(n13) );
  ND2D0BWP12T30P140 U63 ( .A1(n14), .A2(n13), .ZN(n118) );
  INVD0BWP12T30P140 U64 ( .I(waitstate[6]), .ZN(n154) );
  INVD0BWP12T30P140 U65 ( .I(ws_i[5]), .ZN(n16) );
  OAI22D0BWP12T30P140 U66 ( .A1(n154), .A2(ws_i[6]), .B1(n16), .B2(
        waitstate[5]), .ZN(n15) );
  AOI221D0BWP12T30P140 U67 ( .A1(n154), .A2(ws_i[6]), .B1(waitstate[5]), .B2(
        n16), .C(n15), .ZN(n23) );
  INVD0BWP12T30P140 U68 ( .I(waitstate[4]), .ZN(n127) );
  INVD0BWP12T30P140 U69 ( .I(waitstate[3]), .ZN(n126) );
  OAI22D0BWP12T30P140 U70 ( .A1(ws_i[3]), .A2(n126), .B1(ws_i[4]), .B2(n127), 
        .ZN(n17) );
  AOI221D0BWP12T30P140 U71 ( .A1(n127), .A2(ws_i[4]), .B1(n126), .B2(ws_i[3]), 
        .C(n17), .ZN(n22) );
  INVD0BWP12T30P140 U72 ( .I(waitstate[2]), .ZN(n133) );
  INVD0BWP12T30P140 U73 ( .I(waitstate[1]), .ZN(n131) );
  OAI22D0BWP12T30P140 U74 ( .A1(ws_i[1]), .A2(n131), .B1(ws_i[2]), .B2(n133), 
        .ZN(n18) );
  AOI221D0BWP12T30P140 U75 ( .A1(n133), .A2(ws_i[2]), .B1(n131), .B2(ws_i[1]), 
        .C(n18), .ZN(n21) );
  INVD0BWP12T30P140 U76 ( .I(waitstate[7]), .ZN(n151) );
  OAI22D0BWP12T30P140 U77 ( .A1(n151), .A2(ws_i[7]), .B1(n132), .B2(ws_i[0]), 
        .ZN(n19) );
  AOI221D0BWP12T30P140 U78 ( .A1(n151), .A2(ws_i[7]), .B1(ws_i[0]), .B2(n132), 
        .C(n19), .ZN(n20) );
  ND4D0BWP12T30P140 U79 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .ZN(n115) );
  ND2D0BWP12T30P140 U80 ( .A1(n290), .A2(n115), .ZN(n125) );
  AOI31D0BWP12T30P140 U81 ( .A1(wb_stb_i), .A2(wb_cyc_i), .A3(n118), .B(n125), 
        .ZN(n130) );
  NR2D0BWP12T30P140 U82 ( .A1(n130), .A2(n125), .ZN(n150) );
  INVD0BWP12T30P140 U83 ( .I(n150), .ZN(n145) );
  AOI21D0BWP12T30P140 U84 ( .A1(n150), .A2(n132), .B(n130), .ZN(n24) );
  OAI32D0BWP12T30P140 U85 ( .A1(waitstate[1]), .A2(n132), .A3(n145), .B1(n24), 
        .B2(n131), .ZN(n211) );
  INVD0BWP12T30P140 U86 ( .I(datareg1[21]), .ZN(n139) );
  AOI22D0BWP12T30P140 U87 ( .A1(n91), .A2(n139), .B1(n306), .B2(n90), .ZN(n225) );
  INVD0BWP12T30P140 U88 ( .I(datareg1[10]), .ZN(n76) );
  ND2D0BWP12T30P140 U89 ( .A1(n28), .A2(wb_dat_i[2]), .ZN(n292) );
  AOI22D0BWP12T30P140 U90 ( .A1(n30), .A2(n76), .B1(n292), .B2(n29), .ZN(n235)
         );
  ND2D0BWP12T30P140 U91 ( .A1(waitstate[1]), .A2(waitstate[0]), .ZN(n135) );
  NR2D0BWP12T30P140 U92 ( .A1(n133), .A2(n135), .ZN(n147) );
  ND2D0BWP12T30P140 U93 ( .A1(waitstate[3]), .A2(n147), .ZN(n129) );
  NR2D0BWP12T30P140 U94 ( .A1(n127), .A2(n129), .ZN(n25) );
  ND3D0BWP12T30P140 U95 ( .A1(waitstate[5]), .A2(n150), .A3(n25), .ZN(n153) );
  INVD0BWP12T30P140 U96 ( .I(n25), .ZN(n101) );
  AOI21D0BWP12T30P140 U97 ( .A1(n150), .A2(n101), .B(n130), .ZN(n104) );
  INVD0BWP12T30P140 U98 ( .I(waitstate[5]), .ZN(n103) );
  ND2D0BWP12T30P140 U99 ( .A1(n150), .A2(n103), .ZN(n102) );
  ND2D0BWP12T30P140 U100 ( .A1(n104), .A2(n102), .ZN(n149) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n153), .A2(n154), .B1(n154), .B2(n149), .ZN(
        n206) );
  ND2D0BWP12T30P140 U102 ( .A1(n28), .A2(wb_dat_i[3]), .ZN(n294) );
  AOI22D0BWP12T30P140 U103 ( .A1(n30), .A2(n26), .B1(n294), .B2(n29), .ZN(n230) );
  INVD0BWP12T30P140 U104 ( .I(datareg1[20]), .ZN(n108) );
  ND2D0BWP12T30P140 U105 ( .A1(n28), .A2(wb_dat_i[4]), .ZN(n297) );
  INVD0BWP12T30P140 U106 ( .I(n297), .ZN(n299) );
  NR2D0BWP12T30P140 U107 ( .A1(n299), .A2(n94), .ZN(n295) );
  AOI22D0BWP12T30P140 U108 ( .A1(n91), .A2(n108), .B1(n295), .B2(n90), .ZN(
        n269) );
  INVD0BWP12T30P140 U109 ( .I(n84), .ZN(n304) );
  NR2D0BWP12T30P140 U110 ( .A1(n94), .A2(n39), .ZN(n303) );
  AO22D0BWP12T30P140 U111 ( .A1(n304), .A2(wb_dat_o[27]), .B1(datareg0[27]), 
        .B2(n303), .Z(n176) );
  INVD0BWP12T30P140 U112 ( .I(datareg1[12]), .ZN(n107) );
  AOI22D0BWP12T30P140 U113 ( .A1(n30), .A2(n107), .B1(n295), .B2(n29), .ZN(
        n268) );
  INVD0BWP12T30P140 U114 ( .I(n130), .ZN(n124) );
  AOI22D0BWP12T30P140 U115 ( .A1(waitstate[0]), .A2(n124), .B1(n145), .B2(n132), .ZN(n212) );
  INVD0BWP12T30P140 U116 ( .I(datareg1[13]), .ZN(n138) );
  AOI22D0BWP12T30P140 U117 ( .A1(n30), .A2(n138), .B1(n306), .B2(n29), .ZN(
        n224) );
  AO22D0BWP12T30P140 U118 ( .A1(n304), .A2(wb_dat_o[21]), .B1(datareg0[21]), 
        .B2(n303), .Z(n182) );
  AOI22D0BWP12T30P140 U119 ( .A1(n91), .A2(n27), .B1(n294), .B2(n90), .ZN(n231) );
  INVD0BWP12T30P140 U120 ( .I(datareg1[14]), .ZN(n157) );
  AOI22D0BWP12T30P140 U121 ( .A1(n30), .A2(n157), .B1(n314), .B2(n29), .ZN(
        n219) );
  NR2D0BWP12T30P140 U122 ( .A1(n122), .A2(n94), .ZN(n123) );
  AO22D0BWP12T30P140 U123 ( .A1(n122), .A2(wb_dat_o[12]), .B1(datareg0[12]), 
        .B2(n123), .Z(n191) );
  AO22D0BWP12T30P140 U124 ( .A1(n122), .A2(wb_dat_o[15]), .B1(datareg0[15]), 
        .B2(n123), .Z(n188) );
  INVD0BWP12T30P140 U125 ( .I(datareg1[15]), .ZN(n278) );
  ND2D0BWP12T30P140 U126 ( .A1(n28), .A2(wb_dat_i[7]), .ZN(n308) );
  AOI22D0BWP12T30P140 U127 ( .A1(n30), .A2(n278), .B1(n308), .B2(n29), .ZN(
        n214) );
  INVD0BWP12T30P140 U128 ( .I(datareg1[18]), .ZN(n77) );
  AOI22D0BWP12T30P140 U129 ( .A1(n91), .A2(n77), .B1(n292), .B2(n90), .ZN(n236) );
  AO22D0BWP12T30P140 U130 ( .A1(n122), .A2(wb_dat_o[9]), .B1(datareg0[9]), 
        .B2(n123), .Z(n194) );
  OAI21D0BWP12T30P140 U131 ( .A1(n31), .A2(n277), .B(n290), .ZN(n46) );
  INVD0BWP12T30P140 U132 ( .I(n46), .ZN(n47) );
  INVD0BWP12T30P140 U133 ( .I(datareg1[0]), .ZN(n52) );
  AOI22D0BWP12T30P140 U134 ( .A1(n47), .A2(n52), .B1(n41), .B2(n46), .ZN(n242)
         );
  AO22D0BWP12T30P140 U135 ( .A1(n122), .A2(wb_dat_o[13]), .B1(datareg0[13]), 
        .B2(n123), .Z(n190) );
  INVD0BWP12T30P140 U136 ( .I(datareg1[17]), .ZN(n64) );
  AOI32D0BWP12T30P140 U137 ( .A1(n290), .A2(n90), .A3(n301), .B1(n91), .B2(n64), .ZN(n275) );
  INVD0BWP12T30P140 U138 ( .I(datareg1[1]), .ZN(n62) );
  AOI22D0BWP12T30P140 U139 ( .A1(n47), .A2(n62), .B1(n301), .B2(n46), .ZN(n239) );
  INVD0BWP12T30P140 U140 ( .I(n41), .ZN(n164) );
  AOI21D0BWP12T30P140 U141 ( .A1(n86), .A2(n164), .B(n94), .ZN(n36) );
  INVD0BWP12T30P140 U142 ( .I(n166), .ZN(n32) );
  AOI21D0BWP12T30P140 U143 ( .A1(n122), .A2(n32), .B(n83), .ZN(n43) );
  ND2D0BWP12T30P140 U144 ( .A1(n43), .A2(n33), .ZN(n70) );
  NR2D0BWP12T30P140 U145 ( .A1(n34), .A2(n38), .ZN(n71) );
  AOI22D0BWP12T30P140 U146 ( .A1(datareg0[8]), .A2(n70), .B1(n71), .B2(
        wb_dat_i[8]), .ZN(n35) );
  OAI21D0BWP12T30P140 U147 ( .A1(n36), .A2(n70), .B(n35), .ZN(n251) );
  INVD0BWP12T30P140 U148 ( .I(datareg1[2]), .ZN(n75) );
  AOI22D0BWP12T30P140 U149 ( .A1(n47), .A2(n75), .B1(n292), .B2(n46), .ZN(n234) );
  AOI221D0BWP12T30P140 U150 ( .A1(n87), .A2(n304), .B1(n170), .B2(n304), .C(
        n83), .ZN(n37) );
  ND2D0BWP12T30P140 U151 ( .A1(n86), .A2(n37), .ZN(n313) );
  INVD0BWP12T30P140 U152 ( .I(n37), .ZN(n310) );
  NR2D0BWP12T30P140 U153 ( .A1(n39), .A2(n38), .ZN(n311) );
  AOI22D0BWP12T30P140 U154 ( .A1(datareg0[24]), .A2(n310), .B1(n311), .B2(
        wb_dat_i[24]), .ZN(n40) );
  OAI211D0BWP12T30P140 U155 ( .A1(n313), .A2(n41), .B(n290), .C(n40), .ZN(n267) );
  INVD0BWP12T30P140 U156 ( .I(datareg1[16]), .ZN(n54) );
  AOI22D0BWP12T30P140 U157 ( .A1(n91), .A2(n54), .B1(n41), .B2(n90), .ZN(n243)
         );
  AOI22D0BWP12T30P140 U158 ( .A1(n47), .A2(n42), .B1(n294), .B2(n46), .ZN(n229) );
  AO22D0BWP12T30P140 U159 ( .A1(n304), .A2(wb_dat_o[16]), .B1(datareg0[16]), 
        .B2(n303), .Z(n187) );
  ND2D0BWP12T30P140 U160 ( .A1(n86), .A2(n43), .ZN(n73) );
  AOI22D0BWP12T30P140 U161 ( .A1(wb_dat_i[15]), .A2(n71), .B1(datareg0[15]), 
        .B2(n70), .ZN(n44) );
  OAI21D0BWP12T30P140 U162 ( .A1(n73), .A2(n308), .B(n44), .ZN(n244) );
  INVD0BWP12T30P140 U163 ( .I(datareg1[4]), .ZN(n106) );
  AOI22D0BWP12T30P140 U164 ( .A1(n47), .A2(n106), .B1(n295), .B2(n46), .ZN(
        n271) );
  INVD0BWP12T30P140 U165 ( .I(datareg1[7]), .ZN(n171) );
  AOI22D0BWP12T30P140 U166 ( .A1(n47), .A2(n171), .B1(n308), .B2(n46), .ZN(
        n213) );
  INVD0BWP12T30P140 U167 ( .I(datareg1[5]), .ZN(n137) );
  AOI22D0BWP12T30P140 U168 ( .A1(n47), .A2(n137), .B1(n306), .B2(n46), .ZN(
        n223) );
  AOI22D0BWP12T30P140 U169 ( .A1(wb_dat_i[14]), .A2(n71), .B1(datareg0[14]), 
        .B2(n70), .ZN(n45) );
  OAI21D0BWP12T30P140 U170 ( .A1(n73), .A2(n314), .B(n45), .ZN(n245) );
  AO22D0BWP12T30P140 U171 ( .A1(n304), .A2(wb_dat_o[17]), .B1(datareg0[17]), 
        .B2(n303), .Z(n186) );
  INVD0BWP12T30P140 U172 ( .I(datareg1[6]), .ZN(n156) );
  AOI22D0BWP12T30P140 U173 ( .A1(n47), .A2(n156), .B1(n314), .B2(n46), .ZN(
        n218) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n302), .A2(n308), .B1(datareg0[7]), .B2(n302), .ZN(n217) );
  AOI22D0BWP12T30P140 U175 ( .A1(wb_dat_i[13]), .A2(n71), .B1(datareg0[13]), 
        .B2(n70), .ZN(n48) );
  OAI21D0BWP12T30P140 U176 ( .A1(n73), .A2(n306), .B(n48), .ZN(n246) );
  AO22D0BWP12T30P140 U177 ( .A1(n122), .A2(wb_dat_o[10]), .B1(datareg0[10]), 
        .B2(n123), .Z(n193) );
  AO22D0BWP12T30P140 U178 ( .A1(n304), .A2(wb_dat_o[18]), .B1(datareg0[18]), 
        .B2(n303), .Z(n185) );
  AOI22D0BWP12T30P140 U179 ( .A1(wb_dat_i[12]), .A2(n71), .B1(datareg0[12]), 
        .B2(n70), .ZN(n49) );
  OAI21D0BWP12T30P140 U180 ( .A1(n73), .A2(n297), .B(n49), .ZN(n247) );
  AO22D0BWP12T30P140 U181 ( .A1(n122), .A2(wb_dat_o[11]), .B1(datareg0[11]), 
        .B2(n123), .Z(n192) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n302), .A2(n314), .B1(datareg0[6]), .B2(n302), .ZN(n222) );
  AO22D0BWP12T30P140 U183 ( .A1(n122), .A2(wb_dat_o[14]), .B1(datareg0[14]), 
        .B2(n123), .Z(n189) );
  AOI22D0BWP12T30P140 U184 ( .A1(wb_dat_i[11]), .A2(n71), .B1(datareg0[11]), 
        .B2(n70), .ZN(n50) );
  OAI21D0BWP12T30P140 U185 ( .A1(n73), .A2(n294), .B(n50), .ZN(n248) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n302), .A2(n297), .B1(datareg0[4]), .B2(n302), .ZN(n228) );
  AOI22D0BWP12T30P140 U187 ( .A1(datareg0[8]), .A2(n166), .B1(n165), .B2(
        datareg0[16]), .ZN(n59) );
  AOI22D0BWP12T30P140 U188 ( .A1(n168), .A2(wb_dat_o[0]), .B1(datareg0[0]), 
        .B2(n167), .ZN(n58) );
  INVD0BWP12T30P140 U189 ( .I(datareg0[24]), .ZN(n51) );
  OAI22D0BWP12T30P140 U190 ( .A1(n277), .A2(n52), .B1(n51), .B2(n170), .ZN(n56) );
  OAI22D0BWP12T30P140 U191 ( .A1(n281), .A2(n54), .B1(n279), .B2(n53), .ZN(n55) );
  AOI211D0BWP12T30P140 U192 ( .A1(n284), .A2(datareg1[24]), .B(n56), .C(n55), 
        .ZN(n57) );
  AOI32D0BWP12T30P140 U193 ( .A1(n59), .A2(n58), .A3(n57), .B1(n285), .B2(n58), 
        .ZN(n203) );
  AO22D0BWP12T30P140 U194 ( .A1(n304), .A2(wb_dat_o[19]), .B1(datareg0[19]), 
        .B2(n303), .Z(n184) );
  AOI22D0BWP12T30P140 U195 ( .A1(wb_dat_i[10]), .A2(n71), .B1(datareg0[10]), 
        .B2(n70), .ZN(n60) );
  OAI21D0BWP12T30P140 U196 ( .A1(n73), .A2(n292), .B(n60), .ZN(n249) );
  AOI22D0BWP12T30P140 U197 ( .A1(n166), .A2(datareg0[9]), .B1(n165), .B2(
        datareg0[17]), .ZN(n69) );
  AOI22D0BWP12T30P140 U198 ( .A1(n168), .A2(wb_dat_o[1]), .B1(datareg0[1]), 
        .B2(n167), .ZN(n68) );
  INVD0BWP12T30P140 U199 ( .I(datareg0[25]), .ZN(n61) );
  OAI22D0BWP12T30P140 U200 ( .A1(n277), .A2(n62), .B1(n170), .B2(n61), .ZN(n66) );
  OAI22D0BWP12T30P140 U201 ( .A1(n281), .A2(n64), .B1(n279), .B2(n63), .ZN(n65) );
  AOI211D0BWP12T30P140 U202 ( .A1(n284), .A2(datareg1[25]), .B(n66), .C(n65), 
        .ZN(n67) );
  AOI32D0BWP12T30P140 U203 ( .A1(n69), .A2(n68), .A3(n67), .B1(n285), .B2(n68), 
        .ZN(n202) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n302), .A2(n294), .B1(datareg0[3]), .B2(n302), .ZN(n233) );
  AOI22D0BWP12T30P140 U205 ( .A1(wb_dat_i[9]), .A2(n71), .B1(datareg0[9]), 
        .B2(n70), .ZN(n72) );
  OAI21D0BWP12T30P140 U206 ( .A1(n301), .A2(n73), .B(n72), .ZN(n250) );
  AOI22D0BWP12T30P140 U207 ( .A1(n166), .A2(datareg0[10]), .B1(n165), .B2(
        datareg0[18]), .ZN(n82) );
  AOI22D0BWP12T30P140 U208 ( .A1(n168), .A2(wb_dat_o[2]), .B1(datareg0[2]), 
        .B2(n167), .ZN(n81) );
  INVD0BWP12T30P140 U209 ( .I(datareg0[26]), .ZN(n74) );
  OAI22D0BWP12T30P140 U210 ( .A1(n277), .A2(n75), .B1(n170), .B2(n74), .ZN(n79) );
  OAI22D0BWP12T30P140 U211 ( .A1(n281), .A2(n77), .B1(n279), .B2(n76), .ZN(n78) );
  AOI211D0BWP12T30P140 U212 ( .A1(n284), .A2(datareg1[26]), .B(n79), .C(n78), 
        .ZN(n80) );
  AOI32D0BWP12T30P140 U213 ( .A1(n82), .A2(n81), .A3(n80), .B1(n285), .B2(n81), 
        .ZN(n201) );
  AO22D0BWP12T30P140 U214 ( .A1(n304), .A2(wb_dat_o[20]), .B1(datareg0[20]), 
        .B2(n303), .Z(n183) );
  INVD0BWP12T30P140 U215 ( .I(n83), .ZN(n85) );
  AOI32D0BWP12T30P140 U216 ( .A1(n86), .A2(n85), .A3(n165), .B1(n84), .B2(n85), 
        .ZN(n300) );
  NR2D0BWP12T30P140 U217 ( .A1(n87), .A2(n300), .ZN(n298) );
  INVD0BWP12T30P140 U218 ( .I(n298), .ZN(n100) );
  AOI22D0BWP12T30P140 U219 ( .A1(n311), .A2(wb_dat_i[23]), .B1(datareg0[23]), 
        .B2(n300), .ZN(n88) );
  OAI21D0BWP12T30P140 U220 ( .A1(n308), .A2(n100), .B(n88), .ZN(n252) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n302), .A2(n292), .B1(datareg0[2]), .B2(n302), .ZN(n238) );
  AOI22D0BWP12T30P140 U222 ( .A1(n311), .A2(wb_dat_i[22]), .B1(datareg0[22]), 
        .B2(n300), .ZN(n89) );
  OAI21D0BWP12T30P140 U223 ( .A1(n314), .A2(n100), .B(n89), .ZN(n253) );
  AO22D0BWP12T30P140 U224 ( .A1(n304), .A2(wb_dat_o[22]), .B1(datareg0[22]), 
        .B2(n303), .Z(n181) );
  INVD0BWP12T30P140 U225 ( .I(datareg1[23]), .ZN(n280) );
  AOI22D0BWP12T30P140 U226 ( .A1(n91), .A2(n280), .B1(n308), .B2(n90), .ZN(
        n215) );
  AOI22D0BWP12T30P140 U227 ( .A1(n311), .A2(wb_dat_i[21]), .B1(datareg0[21]), 
        .B2(n300), .ZN(n92) );
  OAI21D0BWP12T30P140 U228 ( .A1(n306), .A2(n100), .B(n92), .ZN(n254) );
  AOI21D0BWP12T30P140 U229 ( .A1(n93), .A2(n284), .B(n94), .ZN(n98) );
  INVD0BWP12T30P140 U230 ( .I(n98), .ZN(n309) );
  OA32D0BWP12T30P140 U231 ( .A1(n94), .A2(n98), .A3(n164), .B1(n309), .B2(
        datareg1[24]), .Z(n272) );
  AOI22D0BWP12T30P140 U232 ( .A1(n311), .A2(wb_dat_i[19]), .B1(datareg0[19]), 
        .B2(n300), .ZN(n95) );
  OAI21D0BWP12T30P140 U233 ( .A1(n294), .A2(n100), .B(n95), .ZN(n256) );
  AO22D0BWP12T30P140 U234 ( .A1(n304), .A2(wb_dat_o[23]), .B1(datareg0[23]), 
        .B2(n303), .Z(n180) );
  AOI22D0BWP12T30P140 U235 ( .A1(n311), .A2(wb_dat_i[18]), .B1(datareg0[18]), 
        .B2(n300), .ZN(n96) );
  OAI21D0BWP12T30P140 U236 ( .A1(n292), .A2(n100), .B(n96), .ZN(n257) );
  INVD0BWP12T30P140 U237 ( .I(datareg1[25]), .ZN(n97) );
  AOI32D0BWP12T30P140 U238 ( .A1(n290), .A2(n309), .A3(n301), .B1(n98), .B2(
        n97), .ZN(n274) );
  AO22D0BWP12T30P140 U239 ( .A1(n304), .A2(wb_dat_o[24]), .B1(datareg0[24]), 
        .B2(n303), .Z(n179) );
  AOI22D0BWP12T30P140 U240 ( .A1(n311), .A2(wb_dat_i[17]), .B1(datareg0[17]), 
        .B2(n300), .ZN(n99) );
  OAI211D0BWP12T30P140 U241 ( .A1(n100), .A2(n301), .B(n290), .C(n99), .ZN(
        n258) );
  OAI22D0BWP12T30P140 U242 ( .A1(n104), .A2(n103), .B1(n102), .B2(n101), .ZN(
        n207) );
  AOI22D0BWP12T30P140 U243 ( .A1(n166), .A2(datareg0[12]), .B1(n165), .B2(
        datareg0[20]), .ZN(n113) );
  AOI22D0BWP12T30P140 U244 ( .A1(n168), .A2(wb_dat_o[4]), .B1(datareg0[4]), 
        .B2(n167), .ZN(n112) );
  INVD0BWP12T30P140 U245 ( .I(datareg0[28]), .ZN(n105) );
  OAI22D0BWP12T30P140 U246 ( .A1(n277), .A2(n106), .B1(n170), .B2(n105), .ZN(
        n110) );
  OAI22D0BWP12T30P140 U247 ( .A1(n281), .A2(n108), .B1(n279), .B2(n107), .ZN(
        n109) );
  AOI211D0BWP12T30P140 U248 ( .A1(n284), .A2(datareg1[28]), .B(n110), .C(n109), 
        .ZN(n111) );
  AOI32D0BWP12T30P140 U249 ( .A1(n113), .A2(n112), .A3(n111), .B1(n285), .B2(
        n112), .ZN(n199) );
  ND2D0BWP12T30P140 U250 ( .A1(wb_stb_i), .A2(wb_cyc_i), .ZN(n114) );
  AOI21D0BWP12T30P140 U251 ( .A1(n115), .A2(n118), .B(n114), .ZN(n121) );
  NR4D0BWP12T30P140 U252 ( .A1(waitstate[6]), .A2(waitstate[5]), .A3(
        waitstate[4]), .A4(waitstate[3]), .ZN(n119) );
  NR4D0BWP12T30P140 U253 ( .A1(waitstate[7]), .A2(waitstate[2]), .A3(
        waitstate[1]), .A4(waitstate[0]), .ZN(n117) );
  INVD0BWP12T30P140 U254 ( .I(n118), .ZN(n116) );
  AOI32D0BWP12T30P140 U255 ( .A1(n119), .A2(n118), .A3(n117), .B1(wb_ack_o), 
        .B2(n116), .ZN(n120) );
  OA211D0BWP12T30P140 U256 ( .A1(wb_ack_o), .A2(n121), .B(n290), .C(n120), .Z(
        n204) );
  AO22D0BWP12T30P140 U257 ( .A1(datareg0[8]), .A2(n123), .B1(n122), .B2(
        wb_dat_o[8]), .Z(n195) );
  OAI21D0BWP12T30P140 U258 ( .A1(n147), .A2(n125), .B(n124), .ZN(n148) );
  AOI21D0BWP12T30P140 U259 ( .A1(n150), .A2(n126), .B(n148), .ZN(n128) );
  OAI32D0BWP12T30P140 U260 ( .A1(waitstate[4]), .A2(n145), .A3(n129), .B1(n128), .B2(n127), .ZN(n208) );
  AOI221D0BWP12T30P140 U261 ( .A1(n132), .A2(n150), .B1(n131), .B2(n150), .C(
        n130), .ZN(n134) );
  OAI32D0BWP12T30P140 U262 ( .A1(waitstate[2]), .A2(n145), .A3(n135), .B1(n134), .B2(n133), .ZN(n210) );
  AOI22D0BWP12T30P140 U263 ( .A1(n166), .A2(datareg0[13]), .B1(n165), .B2(
        datareg0[21]), .ZN(n144) );
  AOI22D0BWP12T30P140 U264 ( .A1(n168), .A2(wb_dat_o[5]), .B1(datareg0[5]), 
        .B2(n167), .ZN(n143) );
  INVD0BWP12T30P140 U265 ( .I(datareg0[29]), .ZN(n136) );
  OAI22D0BWP12T30P140 U266 ( .A1(n277), .A2(n137), .B1(n170), .B2(n136), .ZN(
        n141) );
  OAI22D0BWP12T30P140 U267 ( .A1(n281), .A2(n139), .B1(n279), .B2(n138), .ZN(
        n140) );
  AOI211D0BWP12T30P140 U268 ( .A1(n284), .A2(datareg1[29]), .B(n141), .C(n140), 
        .ZN(n142) );
  AOI32D0BWP12T30P140 U269 ( .A1(n144), .A2(n143), .A3(n142), .B1(n285), .B2(
        n143), .ZN(n198) );
  NR2D0BWP12T30P140 U270 ( .A1(waitstate[3]), .A2(n145), .ZN(n146) );
  AO22D0BWP12T30P140 U271 ( .A1(waitstate[3]), .A2(n148), .B1(n147), .B2(n146), 
        .Z(n209) );
  AO22D0BWP12T30P140 U272 ( .A1(n304), .A2(wb_dat_o[31]), .B1(datareg0[31]), 
        .B2(n303), .Z(n172) );
  AOI21D0BWP12T30P140 U273 ( .A1(n150), .A2(n154), .B(n149), .ZN(n152) );
  OAI32D0BWP12T30P140 U274 ( .A1(waitstate[7]), .A2(n154), .A3(n153), .B1(n152), .B2(n151), .ZN(n205) );
  AOI22D0BWP12T30P140 U275 ( .A1(n166), .A2(datareg0[14]), .B1(n165), .B2(
        datareg0[22]), .ZN(n163) );
  AOI22D0BWP12T30P140 U276 ( .A1(n168), .A2(wb_dat_o[6]), .B1(datareg0[6]), 
        .B2(n167), .ZN(n162) );
  INVD0BWP12T30P140 U277 ( .I(datareg0[30]), .ZN(n155) );
  OAI22D0BWP12T30P140 U278 ( .A1(n277), .A2(n156), .B1(n170), .B2(n155), .ZN(
        n160) );
  OAI22D0BWP12T30P140 U279 ( .A1(n281), .A2(n158), .B1(n279), .B2(n157), .ZN(
        n159) );
  AOI211D0BWP12T30P140 U280 ( .A1(n284), .A2(datareg1[30]), .B(n160), .C(n159), 
        .ZN(n161) );
  AOI32D0BWP12T30P140 U281 ( .A1(n163), .A2(n162), .A3(n161), .B1(n285), .B2(
        n162), .ZN(n197) );
  AO222D0BWP12T30P140 U282 ( .A1(n300), .A2(datareg0[16]), .B1(n311), .B2(
        wb_dat_i[16]), .C1(n164), .C2(n298), .Z(n259) );
  AO22D0BWP12T30P140 U283 ( .A1(n304), .A2(wb_dat_o[30]), .B1(datareg0[30]), 
        .B2(n303), .Z(n173) );
  AOI22D0BWP12T30P140 U284 ( .A1(n166), .A2(datareg0[15]), .B1(n165), .B2(
        datareg0[23]), .ZN(n288) );
  AOI22D0BWP12T30P140 U285 ( .A1(n168), .A2(wb_dat_o[7]), .B1(datareg0[7]), 
        .B2(n167), .ZN(n287) );
  INVD0BWP12T30P140 U286 ( .I(datareg0[31]), .ZN(n169) );
  OAI22D0BWP12T30P140 U287 ( .A1(n277), .A2(n171), .B1(n170), .B2(n169), .ZN(
        n283) );
  OAI22D0BWP12T30P140 U288 ( .A1(n281), .A2(n280), .B1(n279), .B2(n278), .ZN(
        n282) );
  AOI211D0BWP12T30P140 U289 ( .A1(n284), .A2(datareg1[31]), .B(n283), .C(n282), 
        .ZN(n286) );
  AOI32D0BWP12T30P140 U290 ( .A1(n288), .A2(n287), .A3(n286), .B1(n285), .B2(
        n287), .ZN(n196) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n292), .A2(n309), .B1(n309), .B2(
        datareg1[26]), .ZN(n237) );
  AOI22D0BWP12T30P140 U292 ( .A1(wb_dat_i[25]), .A2(n311), .B1(datareg0[25]), 
        .B2(n310), .ZN(n289) );
  OAI211D0BWP12T30P140 U293 ( .A1(n313), .A2(n301), .B(n290), .C(n289), .ZN(
        n266) );
  AO22D0BWP12T30P140 U294 ( .A1(n304), .A2(wb_dat_o[29]), .B1(datareg0[29]), 
        .B2(n303), .Z(n174) );
  AOI22D0BWP12T30P140 U295 ( .A1(wb_dat_i[26]), .A2(n311), .B1(datareg0[26]), 
        .B2(n310), .ZN(n291) );
  OAI21D0BWP12T30P140 U296 ( .A1(n292), .A2(n313), .B(n291), .ZN(n265) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n294), .A2(n309), .B1(n309), .B2(
        datareg1[27]), .ZN(n232) );
  AO22D0BWP12T30P140 U298 ( .A1(n304), .A2(wb_dat_o[28]), .B1(datareg0[28]), 
        .B2(n303), .Z(n175) );
  AOI22D0BWP12T30P140 U299 ( .A1(wb_dat_i[27]), .A2(n311), .B1(datareg0[27]), 
        .B2(n310), .ZN(n293) );
  OAI21D0BWP12T30P140 U300 ( .A1(n294), .A2(n313), .B(n293), .ZN(n264) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n295), .A2(n309), .B1(n309), .B2(
        datareg1[28]), .ZN(n270) );
  AN2D0BWP12T30P140 U302 ( .A1(wb_ack_o), .A2(wb_adr_i[3]), .Z(wb_err_o) );
  AOI22D0BWP12T30P140 U303 ( .A1(wb_dat_i[28]), .A2(n311), .B1(datareg0[28]), 
        .B2(n310), .ZN(n296) );
  OAI21D0BWP12T30P140 U304 ( .A1(n297), .A2(n313), .B(n296), .ZN(n263) );
  AO222D0BWP12T30P140 U305 ( .A1(n300), .A2(datareg0[20]), .B1(n311), .B2(
        wb_dat_i[20]), .C1(n299), .C2(n298), .Z(n255) );
  AO22D0BWP12T30P140 U306 ( .A1(n304), .A2(wb_dat_o[26]), .B1(datareg0[26]), 
        .B2(n303), .Z(n177) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n302), .A2(n301), .B1(datareg0[1]), .B2(n302), .ZN(n241) );
  AO22D0BWP12T30P140 U308 ( .A1(n304), .A2(wb_dat_o[25]), .B1(datareg0[25]), 
        .B2(n303), .Z(n178) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n308), .A2(n309), .B1(n309), .B2(
        datareg1[31]), .ZN(n216) );
  AOI22D0BWP12T30P140 U310 ( .A1(wb_dat_i[29]), .A2(n311), .B1(datareg0[29]), 
        .B2(n310), .ZN(n305) );
  OAI21D0BWP12T30P140 U311 ( .A1(n306), .A2(n313), .B(n305), .ZN(n262) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n306), .A2(n309), .B1(n309), .B2(
        datareg1[29]), .ZN(n226) );
  AOI22D0BWP12T30P140 U313 ( .A1(wb_dat_i[31]), .A2(n311), .B1(datareg0[31]), 
        .B2(n310), .ZN(n307) );
  OAI21D0BWP12T30P140 U314 ( .A1(n308), .A2(n313), .B(n307), .ZN(n260) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n314), .A2(n309), .B1(n309), .B2(
        datareg1[30]), .ZN(n221) );
  AOI22D0BWP12T30P140 U316 ( .A1(wb_dat_i[30]), .A2(n311), .B1(datareg0[30]), 
        .B2(n310), .ZN(n312) );
  OAI21D0BWP12T30P140 U317 ( .A1(n314), .A2(n313), .B(n312), .ZN(n261) );
  CKBD0BWP12T30P140 U318 ( .I(clk_i), .Z(n316) );
  CKBD0BWP12T30P140 U319 ( .I(clk_i), .Z(n315) );
  CKBD0BWP12T30P140 U320 ( .I(clk_i), .Z(n319) );
  CKBD0BWP12T30P140 U321 ( .I(clk_i), .Z(n317) );
  CKBD0BWP12T30P140 U322 ( .I(clk_i), .Z(n318) );
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
         SYNOPSYS_UNCONNECTED_72;
  wire   [31:0] regfile_adr;
  wire   [31:0] wbm_adr_o;
  wire   [3:0] lad_bus;
  wire   [3:0] lad_o_host;
  wire   [31:0] wbm_dat_o;
  wire   [31:0] wbm_dat_i;
  wire   [3:0] wbm_sel_o;
  wire   [3:0] lad_o_periph;

  wb_lpc_host UUT_Host ( .clk_i(n16), .nrst_i(n14), .wbs_adr_i(wbs_adr_i), 
        .wbs_dat_o(wbs_dat_o), .wbs_dat_i(wbs_dat_i), .wbs_sel_i(wbs_sel_i), 
        .wbs_tga_i(wbs_tga_i), .wbs_we_i(wbs_we_i), .wbs_stb_i(wbs_stb_i), 
        .wbs_cyc_i(wbs_cyc_i), .wbs_ack_o(wbs_ack_o), .wbs_err_o(wbs_err_o), 
        .dma_chan_i(dma_chan_i), .dma_tc_i(dma_tc_i), .lframe_o(lframe_o), 
        .lad_i(lad_bus), .lad_o(lad_o_host), .lad_oe(lad_oe_host) );
  wb_lpc_periph UUT_Periph ( .clk_i(n17), .nrst_i(n15), .wbm_adr_o(wbm_adr_o), 
        .wbm_dat_o(wbm_dat_o), .wbm_dat_i(wbm_dat_i), .wbm_sel_o(wbm_sel_o), 
        .wbm_tga_o({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), 
        .wbm_we_o(wbm_we_o), .wbm_stb_o(wbm_stb_o), .wbm_cyc_o(wbm_cyc_o), 
        .wbm_ack_i(wbm_ack_i), .wbm_err_i(wbm_err_i), .dma_chan_o({
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5}), .lframe_i(lframe_o), .lad_i(lad_bus), .lad_o(lad_o_periph), .lad_oe(
        lad_oe_periph) );
  wb_dreq_periph UUT_DREQ_Periph ( .clk_i(clk_i), .nrst_i(nrst_i), 
        .dma_chan_i(dma_chan_i), .dma_req_i(dma_req_i), .ldrq_o(ldrq_o) );
  wb_dreq_host UUT_DREQ_Host ( .clk_i(n17), .nrst_i(nrst_i), .dma_chan_o({
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}), .ldrq_i(ldrq_o) );
  wb_regfile regfile ( .clk_i(n16), .nrst_i(nrst_i), .wb_adr_i(regfile_adr), 
        .wb_dat_o(wbm_dat_i), .wb_dat_i(wbm_dat_o), .wb_sel_i(wbm_sel_o), 
        .wb_we_i(wbm_we_o), .wb_stb_i(wbm_stb_o), .wb_cyc_i(wbm_cyc_o), 
        .wb_ack_o(wbm_ack_i), .wb_err_o(wbm_err_i), .ws_i(regfile_ws_i), 
        .datareg0({SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
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
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40}), .datareg1({
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
        SYNOPSYS_UNCONNECTED_71, SYNOPSYS_UNCONNECTED_72}) );
  BUFTD4BWP12T30P140 lad_bus_tri_0_ ( .I(N9), .OE(n2), .Z(lad_bus[0]) );
  BUFTD4BWP12T30P140 lad_bus_tri_1_ ( .I(N11), .OE(n2), .Z(lad_bus[1]) );
  BUFTD4BWP12T30P140 lad_bus_tri_2_ ( .I(N13), .OE(n2), .Z(lad_bus[2]) );
  BUFTD4BWP12T30P140 lad_bus_tri_3_ ( .I(N15), .OE(n2), .Z(lad_bus[3]) );
  OR2D0BWP12T30P140 U43 ( .A1(lad_oe_periph), .A2(lad_oe_host), .Z(n2) );
  INR2D1BWP12T30P140 U44 ( .A1(lad_oe_periph), .B1(lad_oe_host), .ZN(n11) );
  AO22D0BWP12T30P140 U45 ( .A1(lad_oe_host), .A2(lad_o_host[1]), .B1(n11), 
        .B2(lad_o_periph[1]), .Z(N11) );
  AO22D0BWP12T30P140 U46 ( .A1(lad_oe_host), .A2(lad_o_host[2]), .B1(n11), 
        .B2(lad_o_periph[2]), .Z(N13) );
  AO22D0BWP12T30P140 U47 ( .A1(lad_oe_host), .A2(lad_o_host[3]), .B1(n11), 
        .B2(lad_o_periph[3]), .Z(N15) );
  AO22D0BWP12T30P140 U48 ( .A1(lad_oe_host), .A2(lad_o_host[0]), .B1(n11), 
        .B2(lad_o_periph[0]), .Z(N9) );
  CKBD0BWP12T30P140 U49 ( .I(nrst_i), .Z(n14) );
  INR3D1BWP12T30P140 U50 ( .A1(dma_chan_i[1]), .B1(dma_chan_i[0]), .B2(
        dma_chan_i[2]), .ZN(n13) );
  CKBD0BWP12T30P140 U51 ( .I(n13), .Z(n12) );
  OR2D0BWP12T30P140 U52 ( .A1(n12), .A2(wbm_adr_o[3]), .Z(regfile_adr[3]) );
  CKBD0BWP12T30P140 U53 ( .I(nrst_i), .Z(n15) );
  CKBD0BWP12T30P140 U54 ( .I(clk_i), .Z(n17) );
  INR2D1BWP12T30P140 U55 ( .A1(wbm_adr_o[0]), .B1(n13), .ZN(regfile_adr[0]) );
  INR2D1BWP12T30P140 U56 ( .A1(wbm_adr_o[1]), .B1(n12), .ZN(regfile_adr[1]) );
  INR2D1BWP12T30P140 U57 ( .A1(wbm_adr_o[2]), .B1(n12), .ZN(regfile_adr[2]) );
  CKBD0BWP12T30P140 U58 ( .I(clk_i), .Z(n16) );
  INR2D1BWP12T30P140 U59 ( .A1(wbm_adr_o[4]), .B1(n12), .ZN(regfile_adr[4]) );
  INR2D1BWP12T30P140 U60 ( .A1(wbm_adr_o[5]), .B1(n12), .ZN(regfile_adr[5]) );
  INR2D1BWP12T30P140 U61 ( .A1(wbm_adr_o[6]), .B1(n12), .ZN(regfile_adr[6]) );
  INR2D1BWP12T30P140 U62 ( .A1(wbm_adr_o[7]), .B1(n12), .ZN(regfile_adr[7]) );
  INR2D1BWP12T30P140 U63 ( .A1(wbm_adr_o[8]), .B1(n13), .ZN(regfile_adr[8]) );
  INR2D1BWP12T30P140 U64 ( .A1(wbm_adr_o[9]), .B1(n12), .ZN(regfile_adr[9]) );
  INR2D1BWP12T30P140 U65 ( .A1(wbm_adr_o[10]), .B1(n13), .ZN(regfile_adr[10])
         );
  INR2D1BWP12T30P140 U66 ( .A1(wbm_adr_o[11]), .B1(n12), .ZN(regfile_adr[11])
         );
  INR2D1BWP12T30P140 U67 ( .A1(wbm_adr_o[12]), .B1(n13), .ZN(regfile_adr[12])
         );
  INR2D1BWP12T30P140 U68 ( .A1(wbm_adr_o[13]), .B1(n12), .ZN(regfile_adr[13])
         );
  INR2D1BWP12T30P140 U69 ( .A1(wbm_adr_o[14]), .B1(n13), .ZN(regfile_adr[14])
         );
  INR2D1BWP12T30P140 U70 ( .A1(wbm_adr_o[15]), .B1(n12), .ZN(regfile_adr[15])
         );
  INR2D1BWP12T30P140 U71 ( .A1(wbm_adr_o[16]), .B1(n12), .ZN(regfile_adr[16])
         );
  INR2D1BWP12T30P140 U72 ( .A1(wbm_adr_o[17]), .B1(n13), .ZN(regfile_adr[17])
         );
  INR2D1BWP12T30P140 U73 ( .A1(wbm_adr_o[18]), .B1(n12), .ZN(regfile_adr[18])
         );
  INR2D1BWP12T30P140 U74 ( .A1(wbm_adr_o[19]), .B1(n13), .ZN(regfile_adr[19])
         );
  INR2D1BWP12T30P140 U75 ( .A1(wbm_adr_o[20]), .B1(n13), .ZN(regfile_adr[20])
         );
  INR2D1BWP12T30P140 U76 ( .A1(wbm_adr_o[21]), .B1(n13), .ZN(regfile_adr[21])
         );
  INR2D1BWP12T30P140 U77 ( .A1(wbm_adr_o[22]), .B1(n13), .ZN(regfile_adr[22])
         );
  INR2D1BWP12T30P140 U78 ( .A1(wbm_adr_o[23]), .B1(n13), .ZN(regfile_adr[23])
         );
  INR2D1BWP12T30P140 U79 ( .A1(wbm_adr_o[24]), .B1(n12), .ZN(regfile_adr[24])
         );
  INR2D1BWP12T30P140 U80 ( .A1(wbm_adr_o[25]), .B1(n13), .ZN(regfile_adr[25])
         );
  INR2D1BWP12T30P140 U81 ( .A1(wbm_adr_o[26]), .B1(n12), .ZN(regfile_adr[26])
         );
  INR2D1BWP12T30P140 U82 ( .A1(wbm_adr_o[27]), .B1(n13), .ZN(regfile_adr[27])
         );
  INR2D1BWP12T30P140 U83 ( .A1(wbm_adr_o[28]), .B1(n12), .ZN(regfile_adr[28])
         );
  INR2D1BWP12T30P140 U84 ( .A1(wbm_adr_o[29]), .B1(n13), .ZN(regfile_adr[29])
         );
  INR2D1BWP12T30P140 U85 ( .A1(wbm_adr_o[30]), .B1(n12), .ZN(regfile_adr[30])
         );
  INR2D1BWP12T30P140 U86 ( .A1(wbm_adr_o[31]), .B1(n13), .ZN(regfile_adr[31])
         );
endmodule

