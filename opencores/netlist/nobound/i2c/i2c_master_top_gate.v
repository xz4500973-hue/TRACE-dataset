/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:21:55 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, sSCL, slave_wait, N30, dSCL, clk_en, N71, N72, N73, N74,
         N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, dSDA, sSDA, N123, N124, N125, N126, sta_condition,
         sto_condition, N129, N130, N132, cmd_stop, sda_chk, N139, N228, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202;
  wire   [15:0] cnt;
  wire   [1:0] cSCL;
  wire   [1:0] cSDA;
  wire   [13:0] filter_cnt;
  wire   [2:0] fSCL;
  wire   [2:0] fSDA;
  wire   [17:0] c_state;

  DFSNQD1BWP12T30P140 fSCL_reg_0_ ( .D(n73), .CP(n201), .SDN(n197), .Q(fSCL[0]) );
  DFSNQD1BWP12T30P140 fSCL_reg_1_ ( .D(n72), .CP(n201), .SDN(n197), .Q(fSCL[1]) );
  DFSNQD1BWP12T30P140 fSCL_reg_2_ ( .D(n71), .CP(n201), .SDN(n197), .Q(fSCL[2]) );
  DFSNQD1BWP12T30P140 fSDA_reg_0_ ( .D(n76), .CP(n201), .SDN(n197), .Q(fSDA[0]) );
  DFSNQD1BWP12T30P140 fSDA_reg_1_ ( .D(n75), .CP(n201), .SDN(n197), .Q(fSDA[1]) );
  DFSNQD1BWP12T30P140 fSDA_reg_2_ ( .D(n74), .CP(n201), .SDN(n197), .Q(fSDA[2]) );
  DFSNQD1BWP12T30P140 sSCL_reg ( .D(N123), .CP(n202), .SDN(n197), .Q(sSCL) );
  DFSNQD1BWP12T30P140 dSCL_reg ( .D(N125), .CP(n202), .SDN(n197), .Q(dSCL) );
  DFSNQD1BWP12T30P140 sSDA_reg ( .D(N124), .CP(n202), .SDN(n197), .Q(sSDA) );
  DFSNQD1BWP12T30P140 dSDA_reg ( .D(N126), .CP(n202), .SDN(n197), .Q(dSDA) );
  DFSNQD1BWP12T30P140 scl_oen_reg ( .D(n94), .CP(n202), .SDN(n197), .Q(scl_oen) );
  DFSNQD1BWP12T30P140 clk_en_reg ( .D(n194), .CP(n202), .SDN(n197), .Q(clk_en)
         );
  DFSNQD1BWP12T30P140 sda_oen_reg ( .D(n95), .CP(n202), .SDN(n198), .Q(sda_oen) );
  DFCNQD1BWP12T30P140 cSCL_reg_1_ ( .D(N72), .CP(n202), .CDN(n198), .Q(cSCL[1]) );
  DFCNQD1BWP12T30P140 sta_condition_reg ( .D(N129), .CP(n202), .CDN(n196), .Q(
        sta_condition) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_3_ ( .D(N96), .CP(n202), .CDN(n198), .Q(
        filter_cnt[3]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_5_ ( .D(N98), .CP(n202), .CDN(n198), .Q(
        filter_cnt[5]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_7_ ( .D(N100), .CP(n202), .CDN(n198), .Q(
        filter_cnt[7]) );
  DFCNQD1BWP12T30P140 cSCL_reg_0_ ( .D(N71), .CP(n202), .CDN(n198), .Q(cSCL[0]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_11_ ( .D(N104), .CP(clk), .CDN(nReset), 
        .Q(filter_cnt[11]) );
  DFCNQD1BWP12T30P140 cSDA_reg_1_ ( .D(N74), .CP(n200), .CDN(n198), .Q(cSDA[1]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_9_ ( .D(N102), .CP(n199), .CDN(n195), .Q(
        filter_cnt[9]) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n113), .CP(n199), .CDN(n195), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n112), .CP(n199), .CDN(n195), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n111), .CP(n199), .CDN(n195), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 c_state_reg_6_ ( .D(n108), .CP(n199), .CDN(n195), .Q(
        c_state[6]) );
  DFCNQD1BWP12T30P140 c_state_reg_7_ ( .D(n107), .CP(n199), .CDN(n195), .Q(
        c_state[7]) );
  DFCNQD1BWP12T30P140 c_state_reg_10_ ( .D(n104), .CP(n199), .CDN(n195), .Q(
        c_state[10]) );
  DFCNQD1BWP12T30P140 c_state_reg_11_ ( .D(n103), .CP(n199), .CDN(n195), .Q(
        c_state[11]) );
  DFCNQD1BWP12T30P140 c_state_reg_13_ ( .D(n101), .CP(n200), .CDN(n195), .Q(
        c_state[13]) );
  DFCNQD1BWP12T30P140 c_state_reg_16_ ( .D(n98), .CP(n200), .CDN(n196), .Q(
        c_state[16]) );
  DFCNQD1BWP12T30P140 cSDA_reg_0_ ( .D(N73), .CP(n199), .CDN(n198), .Q(cSDA[0]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_4_ ( .D(N97), .CP(n202), .CDN(n198), .Q(
        filter_cnt[4]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_6_ ( .D(N99), .CP(n202), .CDN(n198), .Q(
        filter_cnt[6]) );
  DFCNQD1BWP12T30P140 cmd_stop_reg ( .D(n93), .CP(n201), .CDN(n198), .Q(
        cmd_stop) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_2_ ( .D(N95), .CP(n202), .CDN(n198), .Q(
        filter_cnt[2]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_10_ ( .D(N103), .CP(n201), .CDN(n196), 
        .Q(filter_cnt[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_13_ ( .D(n78), .CP(n201), .CDN(n197), .Q(cnt[13]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n85), .CP(n201), .CDN(n196), .Q(cnt[6])
         );
  DFCNQD1BWP12T30P140 cnt_reg_8_ ( .D(n83), .CP(n201), .CDN(n197), .Q(cnt[8])
         );
  DFCNQD1BWP12T30P140 cnt_reg_10_ ( .D(n81), .CP(n201), .CDN(n197), .Q(cnt[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_12_ ( .D(n79), .CP(n201), .CDN(n197), .Q(cnt[12]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n110), .CP(n199), .CDN(n195), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 sto_condition_reg ( .D(N130), .CP(n201), .CDN(nReset), 
        .Q(sto_condition) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_8_ ( .D(N101), .CP(n200), .CDN(n198), .Q(
        filter_cnt[8]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_12_ ( .D(N105), .CP(n200), .CDN(n198), 
        .Q(filter_cnt[12]) );
  DFCNQD1BWP12T30P140 c_state_reg_17_ ( .D(n97), .CP(n199), .CDN(n196), .Q(
        c_state[17]) );
  DFCNQD1BWP12T30P140 c_state_reg_8_ ( .D(n106), .CP(n199), .CDN(n195), .Q(
        c_state[8]) );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N228), .CP(n200), .CDN(n196), .Q(
        cmd_ack) );
  DFCNQD1BWP12T30P140 sda_chk_reg ( .D(n96), .CP(n200), .CDN(n196), .Q(sda_chk) );
  DFCNQD1BWP12T30P140 busy_reg ( .D(N132), .CP(n200), .CDN(n198), .Q(busy) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n87), .CP(n200), .CDN(n196), .Q(cnt[4])
         );
  DFCNQD1BWP12T30P140 filter_cnt_reg_13_ ( .D(N106), .CP(n199), .CDN(n195), 
        .Q(filter_cnt[13]) );
  DFCNQD1BWP12T30P140 c_state_reg_5_ ( .D(n109), .CP(n199), .CDN(n195), .Q(
        c_state[5]) );
  DFCNQD1BWP12T30P140 c_state_reg_14_ ( .D(n100), .CP(n200), .CDN(n196), .Q(
        c_state[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_15_ ( .D(n99), .CP(n200), .CDN(n196), .Q(
        c_state[15]) );
  DFCNQD1BWP12T30P140 c_state_reg_9_ ( .D(n105), .CP(n199), .CDN(n195), .Q(
        c_state[9]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n89), .CP(n200), .CDN(n196), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 c_state_reg_12_ ( .D(n102), .CP(n200), .CDN(n195), .Q(
        c_state[12]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_1_ ( .D(N94), .CP(n202), .CDN(n198), .Q(
        filter_cnt[1]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n114), .CP(n199), .CDN(n195), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_15_ ( .D(n77), .CP(n201), .CDN(n197), .Q(cnt[15]) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n86), .CP(n201), .CDN(n196), .Q(cnt[5])
         );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n84), .CP(n201), .CDN(n197), .Q(cnt[7])
         );
  DFCNQD1BWP12T30P140 cnt_reg_9_ ( .D(n82), .CP(n201), .CDN(n197), .Q(cnt[9])
         );
  DFCNQD1BWP12T30P140 cnt_reg_11_ ( .D(n80), .CP(n201), .CDN(n197), .Q(cnt[11]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_0_ ( .D(N93), .CP(n201), .CDN(n198), .Q(
        filter_cnt[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n91), .CP(n200), .CDN(n196), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n90), .CP(n200), .CDN(n196), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n88), .CP(n200), .CDN(n196), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 al_reg ( .D(N139), .CP(n199), .CDN(n195), .Q(al) );
  DFCNQD1BWP12T30P140 cnt_reg_14_ ( .D(n92), .CP(n200), .CDN(n196), .Q(cnt[14]) );
  DFCNQD1BWP12T30P140 slave_wait_reg ( .D(N30), .CP(n202), .CDN(n196), .Q(
        slave_wait) );
  DFQD1BWP12T30P140 dscl_oen_reg ( .D(scl_oen), .CP(n202), .Q(dscl_oen) );
  DFQD1BWP12T30P140 dout_reg ( .D(n70), .CP(n202), .Q(dout) );
  NR3D0BWP12T30P140 U3 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n69) );
  INVD0BWP12T30P140 U4 ( .I(n69), .ZN(n143) );
  NR3D0BWP12T30P140 U5 ( .A1(cnt[4]), .A2(cnt[3]), .A3(n143), .ZN(n154) );
  INVD0BWP12T30P140 U6 ( .I(n154), .ZN(n158) );
  NR3D0BWP12T30P140 U7 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n158), .ZN(n146) );
  INVD0BWP12T30P140 U8 ( .I(n146), .ZN(n149) );
  NR3D0BWP12T30P140 U9 ( .A1(cnt[8]), .A2(cnt[7]), .A3(n149), .ZN(n139) );
  INVD0BWP12T30P140 U10 ( .I(n139), .ZN(n142) );
  NR3D0BWP12T30P140 U11 ( .A1(cnt[10]), .A2(cnt[9]), .A3(n142), .ZN(n134) );
  INVD0BWP12T30P140 U12 ( .I(n134), .ZN(n137) );
  NR3D0BWP12T30P140 U13 ( .A1(cnt[12]), .A2(cnt[11]), .A3(n137), .ZN(n59) );
  INVD0BWP12T30P140 U14 ( .I(cnt[13]), .ZN(n58) );
  ND2D0BWP12T30P140 U15 ( .A1(n59), .A2(n58), .ZN(n61) );
  INVD0BWP12T30P140 U16 ( .I(sSCL), .ZN(n182) );
  INVD0BWP12T30P140 U17 ( .I(rst), .ZN(n178) );
  ND2D0BWP12T30P140 U18 ( .A1(ena), .A2(n178), .ZN(n1) );
  AOI31D0BWP12T30P140 U19 ( .A1(scl_oen), .A2(dSCL), .A3(n182), .B(n1), .ZN(n2) );
  OA31D0BWP12T30P140 U20 ( .A1(cnt[15]), .A2(cnt[14]), .A3(n61), .B(n2), .Z(
        n166) );
  INVD0BWP12T30P140 U21 ( .I(n166), .ZN(n194) );
  INVD0BWP12T30P140 U22 ( .I(slave_wait), .ZN(n153) );
  ND2D0BWP12T30P140 U23 ( .A1(n153), .A2(n166), .ZN(n157) );
  OA31D0BWP12T30P140 U24 ( .A1(slave_wait), .A2(cnt[5]), .A3(n158), .B(n166), 
        .Z(n3) );
  AOI22D0BWP12T30P140 U25 ( .A1(clk_cnt[6]), .A2(n194), .B1(cnt[6]), .B2(n3), 
        .ZN(n4) );
  OAI21D0BWP12T30P140 U26 ( .A1(n149), .A2(n157), .B(n4), .ZN(n85) );
  ND2D0BWP12T30P140 U27 ( .A1(slave_wait), .A2(n166), .ZN(n124) );
  OAI21D0BWP12T30P140 U28 ( .A1(n59), .A2(n157), .B(n124), .ZN(n5) );
  AOI22D0BWP12T30P140 U29 ( .A1(clk_cnt[13]), .A2(n194), .B1(cnt[13]), .B2(n5), 
        .ZN(n6) );
  OAI21D0BWP12T30P140 U30 ( .A1(n61), .A2(n157), .B(n6), .ZN(n78) );
  INVD0BWP12T30P140 U31 ( .I(filter_cnt[9]), .ZN(n20) );
  INVD0BWP12T30P140 U32 ( .I(filter_cnt[7]), .ZN(n27) );
  INVD0BWP12T30P140 U33 ( .I(filter_cnt[5]), .ZN(n31) );
  INVD0BWP12T30P140 U34 ( .I(filter_cnt[3]), .ZN(n35) );
  NR3D0BWP12T30P140 U35 ( .A1(filter_cnt[2]), .A2(filter_cnt[1]), .A3(
        filter_cnt[0]), .ZN(n36) );
  ND2D0BWP12T30P140 U36 ( .A1(n35), .A2(n36), .ZN(n34) );
  NR2D0BWP12T30P140 U37 ( .A1(filter_cnt[4]), .A2(n34), .ZN(n32) );
  ND2D0BWP12T30P140 U38 ( .A1(n31), .A2(n32), .ZN(n30) );
  NR2D0BWP12T30P140 U39 ( .A1(filter_cnt[6]), .A2(n30), .ZN(n28) );
  ND2D0BWP12T30P140 U40 ( .A1(n27), .A2(n28), .ZN(n67) );
  NR2D0BWP12T30P140 U41 ( .A1(filter_cnt[8]), .A2(n67), .ZN(n66) );
  ND2D0BWP12T30P140 U42 ( .A1(n20), .A2(n66), .ZN(n19) );
  NR2D0BWP12T30P140 U43 ( .A1(filter_cnt[10]), .A2(n19), .ZN(n25) );
  AOI21D0BWP12T30P140 U44 ( .A1(filter_cnt[10]), .A2(n19), .B(n25), .ZN(n7) );
  INVD0BWP12T30P140 U45 ( .I(filter_cnt[11]), .ZN(n24) );
  ND2D0BWP12T30P140 U46 ( .A1(n24), .A2(n25), .ZN(n118) );
  NR2D0BWP12T30P140 U47 ( .A1(filter_cnt[12]), .A2(n118), .ZN(n117) );
  IND2D1BWP12T30P140 U48 ( .A1(filter_cnt[13]), .B1(n117), .ZN(n47) );
  ND3D0BWP12T30P140 U49 ( .A1(n47), .A2(n178), .A3(ena), .ZN(n130) );
  INVD0BWP12T30P140 U50 ( .I(n178), .ZN(n183) );
  NR2D0BWP12T30P140 U51 ( .A1(n183), .A2(n47), .ZN(n50) );
  ND2D0BWP12T30P140 U52 ( .A1(n50), .A2(ena), .ZN(n64) );
  INVD0BWP12T30P140 U53 ( .I(n64), .ZN(n129) );
  MOAI22D0BWP12T30P140 U54 ( .A1(n7), .A2(n130), .B1(n129), .B2(clk_cnt[12]), 
        .ZN(N103) );
  AOI21D0BWP12T30P140 U55 ( .A1(filter_cnt[6]), .A2(n30), .B(n28), .ZN(n8) );
  MOAI22D0BWP12T30P140 U56 ( .A1(n8), .A2(n130), .B1(n129), .B2(clk_cnt[8]), 
        .ZN(N99) );
  INVD0BWP12T30P140 U57 ( .I(c_state[15]), .ZN(n151) );
  NR2D0BWP12T30P140 U58 ( .A1(n183), .A2(al), .ZN(n188) );
  ND2D0BWP12T30P140 U59 ( .A1(clk_en), .A2(n188), .ZN(n167) );
  INVD0BWP12T30P140 U60 ( .I(c_state[16]), .ZN(n51) );
  INVD0BWP12T30P140 U61 ( .I(clk_en), .ZN(n189) );
  ND2D0BWP12T30P140 U62 ( .A1(n188), .A2(n189), .ZN(n184) );
  OAI22D0BWP12T30P140 U63 ( .A1(n151), .A2(n167), .B1(n51), .B2(n184), .ZN(n98) );
  NR2D0BWP12T30P140 U64 ( .A1(filter_cnt[1]), .A2(filter_cnt[0]), .ZN(n128) );
  INVD0BWP12T30P140 U65 ( .I(n128), .ZN(n9) );
  AOI21D0BWP12T30P140 U66 ( .A1(filter_cnt[2]), .A2(n9), .B(n36), .ZN(n10) );
  MOAI22D0BWP12T30P140 U67 ( .A1(n10), .A2(n130), .B1(n129), .B2(clk_cnt[4]), 
        .ZN(N95) );
  INVD0BWP12T30P140 U68 ( .I(c_state[14]), .ZN(n150) );
  INVD0BWP12T30P140 U69 ( .I(c_state[13]), .ZN(n122) );
  ND4D0BWP12T30P140 U70 ( .A1(n151), .A2(n150), .A3(n122), .A4(n51), .ZN(n40)
         );
  NR3D0BWP12T30P140 U71 ( .A1(c_state[0]), .A2(c_state[9]), .A3(c_state[12]), 
        .ZN(n45) );
  NR2D0BWP12T30P140 U72 ( .A1(c_state[4]), .A2(c_state[8]), .ZN(n52) );
  INVD0BWP12T30P140 U73 ( .I(c_state[7]), .ZN(n127) );
  INVD0BWP12T30P140 U74 ( .I(c_state[6]), .ZN(n16) );
  INVD0BWP12T30P140 U75 ( .I(c_state[3]), .ZN(n57) );
  INVD0BWP12T30P140 U76 ( .I(c_state[2]), .ZN(n17) );
  ND4D0BWP12T30P140 U77 ( .A1(n127), .A2(n16), .A3(n57), .A4(n17), .ZN(n186)
         );
  INVD0BWP12T30P140 U78 ( .I(c_state[11]), .ZN(n168) );
  INVD0BWP12T30P140 U79 ( .I(c_state[10]), .ZN(n14) );
  INVD0BWP12T30P140 U80 ( .I(c_state[1]), .ZN(n18) );
  ND3D0BWP12T30P140 U81 ( .A1(n168), .A2(n14), .A3(n18), .ZN(n39) );
  NR3D0BWP12T30P140 U82 ( .A1(c_state[5]), .A2(n186), .A3(n39), .ZN(n11) );
  IND4D1BWP12T30P140 U83 ( .A1(n40), .B1(n45), .B2(n52), .B3(n11), .ZN(n187)
         );
  NR2D0BWP12T30P140 U84 ( .A1(n187), .A2(n167), .ZN(n174) );
  IND2D1BWP12T30P140 U85 ( .A1(cmd[3]), .B1(n174), .ZN(n160) );
  NR2D0BWP12T30P140 U86 ( .A1(cmd[1]), .A2(n160), .ZN(n170) );
  ND2D0BWP12T30P140 U87 ( .A1(cmd[2]), .A2(n170), .ZN(n12) );
  OAI22D0BWP12T30P140 U88 ( .A1(cmd[0]), .A2(n12), .B1(n184), .B2(n122), .ZN(
        n101) );
  AOI21D0BWP12T30P140 U89 ( .A1(filter_cnt[4]), .A2(n34), .B(n32), .ZN(n13) );
  MOAI22D0BWP12T30P140 U90 ( .A1(n13), .A2(n130), .B1(n129), .B2(clk_cnt[6]), 
        .ZN(N97) );
  OAI22D0BWP12T30P140 U91 ( .A1(n168), .A2(n184), .B1(n14), .B2(n167), .ZN(
        n103) );
  INVD0BWP12T30P140 U92 ( .I(c_state[9]), .ZN(n175) );
  OAI22D0BWP12T30P140 U93 ( .A1(n175), .A2(n167), .B1(n14), .B2(n184), .ZN(
        n104) );
  NR2D0BWP12T30P140 U94 ( .A1(cmd[2]), .A2(cmd[0]), .ZN(n173) );
  ND2D0BWP12T30P140 U95 ( .A1(cmd[1]), .A2(n173), .ZN(n159) );
  OAI21D0BWP12T30P140 U96 ( .A1(cmd[3]), .A2(n159), .B(clk_en), .ZN(n15) );
  OA211D0BWP12T30P140 U97 ( .A1(clk_en), .A2(cmd_stop), .B(n178), .C(n15), .Z(
        n93) );
  OAI22D0BWP12T30P140 U98 ( .A1(n127), .A2(n184), .B1(n16), .B2(n167), .ZN(
        n107) );
  INVD0BWP12T30P140 U99 ( .I(c_state[5]), .ZN(n161) );
  OAI22D0BWP12T30P140 U100 ( .A1(n16), .A2(n184), .B1(n161), .B2(n167), .ZN(
        n108) );
  OAI22D0BWP12T30P140 U101 ( .A1(n57), .A2(n184), .B1(n17), .B2(n167), .ZN(
        n111) );
  OAI22D0BWP12T30P140 U102 ( .A1(n17), .A2(n184), .B1(n18), .B2(n167), .ZN(
        n112) );
  INVD0BWP12T30P140 U103 ( .I(c_state[0]), .ZN(n171) );
  OAI22D0BWP12T30P140 U104 ( .A1(n171), .A2(n167), .B1(n18), .B2(n184), .ZN(
        n113) );
  INVD0BWP12T30P140 U105 ( .I(n130), .ZN(n38) );
  OAI21D0BWP12T30P140 U106 ( .A1(n66), .A2(n20), .B(n19), .ZN(n21) );
  AO22D0BWP12T30P140 U107 ( .A1(n129), .A2(clk_cnt[11]), .B1(n38), .B2(n21), 
        .Z(N102) );
  OA31D0BWP12T30P140 U108 ( .A1(slave_wait), .A2(cnt[7]), .A3(n149), .B(n166), 
        .Z(n22) );
  AOI22D0BWP12T30P140 U109 ( .A1(clk_cnt[8]), .A2(n194), .B1(cnt[8]), .B2(n22), 
        .ZN(n23) );
  OAI21D0BWP12T30P140 U110 ( .A1(n142), .A2(n157), .B(n23), .ZN(n83) );
  OAI21D0BWP12T30P140 U111 ( .A1(n25), .A2(n24), .B(n118), .ZN(n26) );
  AO22D0BWP12T30P140 U112 ( .A1(n129), .A2(clk_cnt[13]), .B1(n38), .B2(n26), 
        .Z(N104) );
  OAI21D0BWP12T30P140 U113 ( .A1(n28), .A2(n27), .B(n67), .ZN(n29) );
  AO22D0BWP12T30P140 U114 ( .A1(n129), .A2(clk_cnt[9]), .B1(n38), .B2(n29), 
        .Z(N100) );
  OAI21D0BWP12T30P140 U115 ( .A1(n32), .A2(n31), .B(n30), .ZN(n33) );
  AO22D0BWP12T30P140 U116 ( .A1(n129), .A2(clk_cnt[7]), .B1(n38), .B2(n33), 
        .Z(N98) );
  OAI21D0BWP12T30P140 U117 ( .A1(n36), .A2(n35), .B(n34), .ZN(n37) );
  AO22D0BWP12T30P140 U118 ( .A1(n129), .A2(clk_cnt[5]), .B1(n38), .B2(n37), 
        .Z(N96) );
  INVD0BWP12T30P140 U119 ( .I(n184), .ZN(n138) );
  NR2D0BWP12T30P140 U120 ( .A1(n174), .A2(n138), .ZN(n44) );
  INVD0BWP12T30P140 U121 ( .I(c_state[8]), .ZN(n126) );
  IND3D1BWP12T30P140 U122 ( .A1(n39), .B1(n188), .B2(n126), .ZN(n185) );
  AOI21D0BWP12T30P140 U123 ( .A1(din), .A2(n40), .B(n185), .ZN(n43) );
  INVD0BWP12T30P140 U124 ( .I(sda_oen), .ZN(n42) );
  INVD0BWP12T30P140 U125 ( .I(n44), .ZN(n41) );
  AOI32D0BWP12T30P140 U126 ( .A1(n45), .A2(n44), .A3(n43), .B1(n42), .B2(n41), 
        .ZN(n95) );
  INVD0BWP12T30P140 U127 ( .I(n50), .ZN(n49) );
  AO221D0BWP12T30P140 U128 ( .A1(n50), .A2(fSDA[1]), .B1(n49), .B2(fSDA[2]), 
        .C(n183), .Z(n74) );
  AO221D0BWP12T30P140 U129 ( .A1(n50), .A2(fSDA[0]), .B1(n49), .B2(fSDA[1]), 
        .C(n183), .Z(n75) );
  AO221D0BWP12T30P140 U130 ( .A1(n50), .A2(cSDA[1]), .B1(n49), .B2(fSDA[0]), 
        .C(n183), .Z(n76) );
  AO221D0BWP12T30P140 U131 ( .A1(n50), .A2(fSCL[1]), .B1(n49), .B2(fSCL[2]), 
        .C(n183), .Z(n71) );
  INVD0BWP12T30P140 U132 ( .I(fSCL[0]), .ZN(n48) );
  AOI21D0BWP12T30P140 U133 ( .A1(fSCL[1]), .A2(n47), .B(n183), .ZN(n46) );
  OAI21D0BWP12T30P140 U134 ( .A1(n48), .A2(n47), .B(n46), .ZN(n72) );
  AO221D0BWP12T30P140 U135 ( .A1(n50), .A2(cSCL[1]), .B1(n49), .B2(fSCL[0]), 
        .C(n183), .Z(n73) );
  INVD0BWP12T30P140 U136 ( .I(c_state[12]), .ZN(n169) );
  AOI31D0BWP12T30P140 U137 ( .A1(n52), .A2(n169), .A3(n51), .B(n167), .ZN(N228) );
  OA31D0BWP12T30P140 U138 ( .A1(slave_wait), .A2(cnt[9]), .A3(n142), .B(n166), 
        .Z(n53) );
  AOI22D0BWP12T30P140 U139 ( .A1(clk_cnt[10]), .A2(n194), .B1(cnt[10]), .B2(
        n53), .ZN(n54) );
  OAI21D0BWP12T30P140 U140 ( .A1(n137), .A2(n157), .B(n54), .ZN(n81) );
  NR2D0BWP12T30P140 U141 ( .A1(dSCL), .A2(n182), .ZN(n55) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(dout), .I1(sSDA), .S(n55), .Z(n70) );
  INVD0BWP12T30P140 U143 ( .I(n157), .ZN(n163) );
  OA31D0BWP12T30P140 U144 ( .A1(slave_wait), .A2(cnt[11]), .A3(n137), .B(n166), 
        .Z(n56) );
  AO222D0BWP12T30P140 U145 ( .A1(n163), .A2(n59), .B1(clk_cnt[12]), .B2(n194), 
        .C1(cnt[12]), .C2(n56), .Z(n79) );
  MOAI22D0BWP12T30P140 U146 ( .A1(n57), .A2(n167), .B1(c_state[4]), .B2(n138), 
        .ZN(n110) );
  AOI31D0BWP12T30P140 U147 ( .A1(n59), .A2(n153), .A3(n58), .B(n194), .ZN(n162) );
  AOI22D0BWP12T30P140 U148 ( .A1(clk_cnt[14]), .A2(n194), .B1(cnt[14]), .B2(
        n162), .ZN(n60) );
  OAI31D0BWP12T30P140 U149 ( .A1(cnt[14]), .A2(n61), .A3(n157), .B(n60), .ZN(
        n92) );
  INVD0BWP12T30P140 U150 ( .I(sSDA), .ZN(n181) );
  ND2D0BWP12T30P140 U151 ( .A1(n178), .A2(n181), .ZN(N126) );
  OAI211D0BWP12T30P140 U152 ( .A1(c_state[17]), .A2(n187), .B(sto_condition), 
        .C(n178), .ZN(n63) );
  ND2D0BWP12T30P140 U153 ( .A1(sda_oen), .A2(sda_chk), .ZN(n62) );
  OAI22D0BWP12T30P140 U154 ( .A1(cmd_stop), .A2(n63), .B1(n62), .B2(N126), 
        .ZN(N139) );
  ND3D0BWP12T30P140 U155 ( .A1(n178), .A2(ena), .A3(filter_cnt[13]), .ZN(n65)
         );
  INVD0BWP12T30P140 U156 ( .I(clk_cnt[15]), .ZN(n165) );
  OAI22D0BWP12T30P140 U157 ( .A1(n117), .A2(n65), .B1(n165), .B2(n64), .ZN(
        N106) );
  AOI21D0BWP12T30P140 U158 ( .A1(filter_cnt[8]), .A2(n67), .B(n66), .ZN(n68)
         );
  MOAI22D0BWP12T30P140 U159 ( .A1(n68), .A2(n130), .B1(n129), .B2(clk_cnt[10]), 
        .ZN(N101) );
  INVD0BWP12T30P140 U160 ( .I(n166), .ZN(n152) );
  AOI21D0BWP12T30P140 U161 ( .A1(n69), .A2(n153), .B(n152), .ZN(n115) );
  AOI22D0BWP12T30P140 U162 ( .A1(clk_cnt[3]), .A2(n194), .B1(cnt[3]), .B2(n115), .ZN(n116) );
  OAI31D0BWP12T30P140 U163 ( .A1(cnt[3]), .A2(n143), .A3(n157), .B(n116), .ZN(
        n88) );
  AOI21D0BWP12T30P140 U164 ( .A1(filter_cnt[12]), .A2(n118), .B(n117), .ZN(
        n119) );
  MOAI22D0BWP12T30P140 U165 ( .A1(n119), .A2(n130), .B1(n129), .B2(clk_cnt[14]), .ZN(N105) );
  INVD0BWP12T30P140 U166 ( .I(cnt[0]), .ZN(n125) );
  AOI21D0BWP12T30P140 U167 ( .A1(n153), .A2(n125), .B(n152), .ZN(n120) );
  AOI22D0BWP12T30P140 U168 ( .A1(cnt[1]), .A2(n120), .B1(clk_cnt[1]), .B2(n194), .ZN(n121) );
  OAI31D0BWP12T30P140 U169 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n157), .B(n121), 
        .ZN(n90) );
  OAI22D0BWP12T30P140 U170 ( .A1(n150), .A2(n184), .B1(n122), .B2(n167), .ZN(
        n100) );
  INVD0BWP12T30P140 U171 ( .I(scl_oen), .ZN(n193) );
  AOI221D0BWP12T30P140 U172 ( .A1(dscl_oen), .A2(n153), .B1(n193), .B2(n153), 
        .C(sSCL), .ZN(N30) );
  AOI22D0BWP12T30P140 U173 ( .A1(clk_cnt[0]), .A2(n194), .B1(n163), .B2(n125), 
        .ZN(n123) );
  OAI21D0BWP12T30P140 U174 ( .A1(n125), .A2(n124), .B(n123), .ZN(n91) );
  OAI22D0BWP12T30P140 U175 ( .A1(n127), .A2(n167), .B1(n126), .B2(n184), .ZN(
        n106) );
  MOAI22D0BWP12T30P140 U176 ( .A1(filter_cnt[0]), .A2(n130), .B1(clk_cnt[2]), 
        .B2(n129), .ZN(N93) );
  AOI21D0BWP12T30P140 U177 ( .A1(filter_cnt[0]), .A2(filter_cnt[1]), .B(n128), 
        .ZN(n131) );
  MOAI22D0BWP12T30P140 U178 ( .A1(n131), .A2(n130), .B1(n129), .B2(clk_cnt[3]), 
        .ZN(N94) );
  OA31D0BWP12T30P140 U179 ( .A1(slave_wait), .A2(cnt[0]), .A3(cnt[1]), .B(n166), .Z(n132) );
  AOI22D0BWP12T30P140 U180 ( .A1(clk_cnt[2]), .A2(n194), .B1(cnt[2]), .B2(n132), .ZN(n133) );
  OAI21D0BWP12T30P140 U181 ( .A1(n143), .A2(n157), .B(n133), .ZN(n89) );
  AOI21D0BWP12T30P140 U182 ( .A1(n134), .A2(n153), .B(n152), .ZN(n135) );
  AOI22D0BWP12T30P140 U183 ( .A1(clk_cnt[11]), .A2(n194), .B1(cnt[11]), .B2(
        n135), .ZN(n136) );
  OAI31D0BWP12T30P140 U184 ( .A1(cnt[11]), .A2(n137), .A3(n157), .B(n136), 
        .ZN(n80) );
  MOAI22D0BWP12T30P140 U185 ( .A1(n151), .A2(n167), .B1(n138), .B2(sda_chk), 
        .ZN(n96) );
  AOI21D0BWP12T30P140 U186 ( .A1(n139), .A2(n153), .B(n152), .ZN(n140) );
  AOI22D0BWP12T30P140 U187 ( .A1(clk_cnt[9]), .A2(n194), .B1(cnt[9]), .B2(n140), .ZN(n141) );
  OAI31D0BWP12T30P140 U188 ( .A1(cnt[9]), .A2(n142), .A3(n157), .B(n141), .ZN(
        n82) );
  OA31D0BWP12T30P140 U189 ( .A1(slave_wait), .A2(cnt[3]), .A3(n143), .B(n166), 
        .Z(n144) );
  AOI22D0BWP12T30P140 U190 ( .A1(clk_cnt[4]), .A2(n194), .B1(cnt[4]), .B2(n144), .ZN(n145) );
  OAI21D0BWP12T30P140 U191 ( .A1(n158), .A2(n157), .B(n145), .ZN(n87) );
  AOI21D0BWP12T30P140 U192 ( .A1(n146), .A2(n153), .B(n152), .ZN(n147) );
  AOI22D0BWP12T30P140 U193 ( .A1(clk_cnt[7]), .A2(n194), .B1(cnt[7]), .B2(n147), .ZN(n148) );
  OAI31D0BWP12T30P140 U194 ( .A1(cnt[7]), .A2(n149), .A3(n157), .B(n148), .ZN(
        n84) );
  OAI22D0BWP12T30P140 U195 ( .A1(n151), .A2(n184), .B1(n150), .B2(n167), .ZN(
        n99) );
  AOI21D0BWP12T30P140 U196 ( .A1(n154), .A2(n153), .B(n152), .ZN(n155) );
  AOI22D0BWP12T30P140 U197 ( .A1(clk_cnt[5]), .A2(n194), .B1(cnt[5]), .B2(n155), .ZN(n156) );
  OAI31D0BWP12T30P140 U198 ( .A1(cnt[5]), .A2(n158), .A3(n157), .B(n156), .ZN(
        n86) );
  OAI22D0BWP12T30P140 U199 ( .A1(n161), .A2(n184), .B1(n160), .B2(n159), .ZN(
        n109) );
  AOI32D0BWP12T30P140 U200 ( .A1(cnt[14]), .A2(cnt[15]), .A3(n163), .B1(n162), 
        .B2(cnt[15]), .ZN(n164) );
  OAI21D0BWP12T30P140 U201 ( .A1(n166), .A2(n165), .B(n164), .ZN(n77) );
  OAI22D0BWP12T30P140 U202 ( .A1(n169), .A2(n184), .B1(n168), .B2(n167), .ZN(
        n102) );
  ND2D0BWP12T30P140 U203 ( .A1(cmd[0]), .A2(n170), .ZN(n172) );
  OAI22D0BWP12T30P140 U204 ( .A1(cmd[2]), .A2(n172), .B1(n184), .B2(n171), 
        .ZN(n114) );
  ND3D0BWP12T30P140 U205 ( .A1(cmd[3]), .A2(n174), .A3(n173), .ZN(n176) );
  OAI22D0BWP12T30P140 U206 ( .A1(cmd[1]), .A2(n176), .B1(n184), .B2(n175), 
        .ZN(n105) );
  CKBD0BWP12T30P140 U207 ( .I(clk), .Z(n199) );
  CKBD0BWP12T30P140 U208 ( .I(clk), .Z(n201) );
  CKBD0BWP12T30P140 U209 ( .I(clk), .Z(n200) );
  CKBD0BWP12T30P140 U210 ( .I(clk), .Z(n202) );
  CKBD0BWP12T30P140 U211 ( .I(nReset), .Z(n197) );
  CKBD0BWP12T30P140 U212 ( .I(nReset), .Z(n195) );
  CKBD0BWP12T30P140 U213 ( .I(nReset), .Z(n196) );
  CKBD0BWP12T30P140 U214 ( .I(nReset), .Z(n198) );
  MAOI222D0BWP12T30P140 U215 ( .A(fSDA[0]), .B(fSDA[2]), .C(fSDA[1]), .ZN(n177) );
  ND2D0BWP12T30P140 U216 ( .A1(n177), .A2(n178), .ZN(N124) );
  ND2D0BWP12T30P140 U217 ( .A1(n178), .A2(n182), .ZN(N125) );
  MAOI222D0BWP12T30P140 U218 ( .A(fSCL[0]), .B(fSCL[1]), .C(fSCL[2]), .ZN(n179) );
  ND2D0BWP12T30P140 U219 ( .A1(n179), .A2(n178), .ZN(N123) );
  NR2D0BWP12T30P140 U220 ( .A1(busy), .A2(sta_condition), .ZN(n180) );
  NR3D0BWP12T30P140 U221 ( .A1(n180), .A2(n183), .A3(sto_condition), .ZN(N132)
         );
  NR4D0BWP12T30P140 U222 ( .A1(n183), .A2(dSDA), .A3(n182), .A4(n181), .ZN(
        N130) );
  INR3D1BWP12T30P140 U223 ( .A1(dSDA), .B1(n182), .B2(N126), .ZN(N129) );
  INR2D1BWP12T30P140 U224 ( .A1(sda_i), .B1(n183), .ZN(N73) );
  INR2D1BWP12T30P140 U225 ( .A1(cSDA[0]), .B1(n183), .ZN(N74) );
  INR2D1BWP12T30P140 U226 ( .A1(scl_i), .B1(n183), .ZN(N71) );
  INR2D1BWP12T30P140 U227 ( .A1(cSCL[0]), .B1(n183), .ZN(N72) );
  INR2D1BWP12T30P140 U228 ( .A1(c_state[17]), .B1(n184), .ZN(n97) );
  NR4D0BWP12T30P140 U229 ( .A1(c_state[14]), .A2(c_state[15]), .A3(n186), .A4(
        n185), .ZN(n192) );
  INVD0BWP12T30P140 U230 ( .I(n187), .ZN(n190) );
  OAI31D0BWP12T30P140 U231 ( .A1(c_state[0]), .A2(n190), .A3(n189), .B(n188), 
        .ZN(n191) );
  MUX2ND0BWP12T30P140 U232 ( .I0(n193), .I1(n192), .S(n191), .ZN(n94) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   core_ack, core_txd, core_rxd, ld, shift, N104, N105, N106, N107, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n73,
         n74, n75, n76, n77, n78, n79, n80;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;

  i2c_master_bit_ctrl bit_controller ( .clk(n79), .rst(rst), .nReset(n77), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen) );
  DFCNQD1BWP12T30P140 core_txd_reg ( .D(N104), .CP(n80), .CDN(n77), .Q(
        core_txd) );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N107), .CP(n80), .CDN(n77), .Q(cmd_ack)
         );
  DFCNQD1BWP12T30P140 ack_out_reg ( .D(n71), .CP(n80), .CDN(n77), .Q(ack_out)
         );
  DFCNQD1BWP12T30P140 shift_reg ( .D(N105), .CP(n80), .CDN(n77), .Q(shift) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n69), .CP(n80), .CDN(n77), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 sr_reg_7_ ( .D(n52), .CP(n80), .CDN(n77), .Q(dout[7]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n66), .CP(n80), .CDN(n77), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 ld_reg ( .D(N106), .CP(n80), .CDN(n77), .Q(ld) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n68), .CP(n79), .CDN(n77), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_1_ ( .D(n62), .CP(n80), .CDN(n77), .Q(
        core_cmd[1]) );
  DFCNQD1BWP12T30P140 sr_reg_6_ ( .D(n53), .CP(n79), .CDN(n78), .Q(dout[6]) );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(n59), .CP(n79), .CDN(n78), .Q(dout[0]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(n58), .CP(n79), .CDN(n78), .Q(dout[1]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(n57), .CP(n79), .CDN(n78), .Q(dout[2]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(n56), .CP(n79), .CDN(n78), .Q(dout[3]) );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(n55), .CP(n79), .CDN(n78), .Q(dout[4]) );
  DFCNQD1BWP12T30P140 sr_reg_5_ ( .D(n54), .CP(n79), .CDN(n78), .Q(dout[5]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n70), .CP(n80), .CDN(n77), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 dcnt_reg_0_ ( .D(n64), .CP(n79), .CDN(n77), .Q(dcnt[0])
         );
  DFCNQD1BWP12T30P140 dcnt_reg_2_ ( .D(n72), .CP(n79), .CDN(n78), .Q(dcnt[2])
         );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n67), .CP(n80), .CDN(n77), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_3_ ( .D(n60), .CP(n79), .CDN(n78), .Q(
        core_cmd[3]) );
  DFCNQD1BWP12T30P140 dcnt_reg_1_ ( .D(n65), .CP(n79), .CDN(n77), .Q(dcnt[1])
         );
  DFCNQD1BWP12T30P140 core_cmd_reg_2_ ( .D(n61), .CP(n79), .CDN(n78), .Q(
        core_cmd[2]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_0_ ( .D(n63), .CP(n79), .CDN(n78), .Q(
        core_cmd[0]) );
  NR2D0BWP12T30P140 U3 ( .A1(rst), .A2(i2c_al), .ZN(n10) );
  ND2D0BWP12T30P140 U4 ( .A1(n10), .A2(core_ack), .ZN(n45) );
  INVD0BWP12T30P140 U5 ( .I(n45), .ZN(n12) );
  ND2D0BWP12T30P140 U6 ( .A1(c_state[3]), .A2(n12), .ZN(n51) );
  INVD0BWP12T30P140 U7 ( .I(c_state[4]), .ZN(n9) );
  OAI22D0BWP12T30P140 U8 ( .A1(stop), .A2(n51), .B1(n9), .B2(n45), .ZN(N107)
         );
  INVD0BWP12T30P140 U9 ( .I(core_rxd), .ZN(n2) );
  INVD0BWP12T30P140 U10 ( .I(core_ack), .ZN(n41) );
  INVD0BWP12T30P140 U11 ( .I(c_state[3]), .ZN(n47) );
  OAI211D0BWP12T30P140 U12 ( .A1(n41), .A2(n47), .B(n10), .C(ack_out), .ZN(n1)
         );
  OAI21D0BWP12T30P140 U13 ( .A1(n51), .A2(n2), .B(n1), .ZN(n71) );
  INVD0BWP12T30P140 U14 ( .I(c_state[1]), .ZN(n46) );
  NR3D0BWP12T30P140 U15 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(dcnt[2]), .ZN(n37)
         );
  INVD0BWP12T30P140 U16 ( .I(n37), .ZN(n36) );
  ND2D0BWP12T30P140 U17 ( .A1(c_state[2]), .A2(n36), .ZN(n27) );
  AOI21D0BWP12T30P140 U18 ( .A1(n46), .A2(n27), .B(n45), .ZN(N105) );
  INVD0BWP12T30P140 U19 ( .I(c_state[2]), .ZN(n43) );
  ND2D0BWP12T30P140 U20 ( .A1(n46), .A2(n43), .ZN(n28) );
  NR4D0BWP12T30P140 U21 ( .A1(c_state[4]), .A2(c_state[0]), .A3(c_state[3]), 
        .A4(n28), .ZN(n40) );
  NR2D0BWP12T30P140 U22 ( .A1(read), .A2(write), .ZN(n6) );
  INVD0BWP12T30P140 U23 ( .I(n6), .ZN(n4) );
  INVD0BWP12T30P140 U24 ( .I(cmd_ack), .ZN(n3) );
  OAI211D0BWP12T30P140 U25 ( .A1(stop), .A2(n4), .B(n40), .C(n3), .ZN(n11) );
  OAI211D0BWP12T30P140 U26 ( .A1(n40), .A2(n41), .B(n10), .C(n11), .ZN(n17) );
  INVD0BWP12T30P140 U27 ( .I(n17), .ZN(n76) );
  AOI21D0BWP12T30P140 U28 ( .A1(n10), .A2(n36), .B(n76), .ZN(n15) );
  INR2D1BWP12T30P140 U29 ( .A1(n40), .B1(start), .ZN(n13) );
  ND2D0BWP12T30P140 U30 ( .A1(n10), .A2(n17), .ZN(n35) );
  INVD0BWP12T30P140 U31 ( .I(n35), .ZN(n8) );
  OAI211D0BWP12T30P140 U32 ( .A1(c_state[0]), .A2(n13), .B(read), .C(n8), .ZN(
        n34) );
  OAI21D0BWP12T30P140 U33 ( .A1(n15), .A2(n46), .B(n34), .ZN(n69) );
  NR3D0BWP12T30P140 U34 ( .A1(rst), .A2(ld), .A3(shift), .ZN(n18) );
  IND2D1BWP12T30P140 U35 ( .A1(rst), .B1(ld), .ZN(n24) );
  INVD0BWP12T30P140 U36 ( .I(n24), .ZN(n30) );
  NR2D0BWP12T30P140 U37 ( .A1(rst), .A2(ld), .ZN(n5) );
  ND2D0BWP12T30P140 U38 ( .A1(shift), .A2(n5), .ZN(n33) );
  INVD0BWP12T30P140 U39 ( .I(n33), .ZN(n22) );
  AO222D0BWP12T30P140 U40 ( .A1(dout[7]), .A2(n18), .B1(n30), .B2(din[7]), 
        .C1(dout[6]), .C2(n22), .Z(n52) );
  AO22D0BWP12T30P140 U41 ( .A1(n6), .A2(n13), .B1(c_state[3]), .B2(stop), .Z(
        n7) );
  ND2D0BWP12T30P140 U42 ( .A1(n8), .A2(n7), .ZN(n74) );
  OAI21D0BWP12T30P140 U43 ( .A1(n17), .A2(n9), .B(n74), .ZN(n66) );
  INVD0BWP12T30P140 U44 ( .I(n10), .ZN(n48) );
  NR2D0BWP12T30P140 U45 ( .A1(n48), .A2(n11), .ZN(n16) );
  AO21D0BWP12T30P140 U46 ( .A1(c_state[0]), .A2(n12), .B(n16), .Z(N106) );
  AOI21D0BWP12T30P140 U47 ( .A1(write), .A2(n13), .B(c_state[0]), .ZN(n14) );
  OR3D0BWP12T30P140 U48 ( .A1(read), .A2(n14), .A3(n35), .Z(n25) );
  OAI21D0BWP12T30P140 U49 ( .A1(n15), .A2(n43), .B(n25), .ZN(n68) );
  AO222D0BWP12T30P140 U50 ( .A1(n30), .A2(din[6]), .B1(n22), .B2(dout[5]), 
        .C1(dout[6]), .C2(n18), .Z(n53) );
  AO222D0BWP12T30P140 U51 ( .A1(n30), .A2(din[0]), .B1(n22), .B2(core_rxd), 
        .C1(dout[0]), .C2(n18), .Z(n59) );
  AO222D0BWP12T30P140 U52 ( .A1(n30), .A2(din[1]), .B1(n22), .B2(dout[0]), 
        .C1(dout[1]), .C2(n18), .Z(n58) );
  AO222D0BWP12T30P140 U53 ( .A1(n30), .A2(din[2]), .B1(n22), .B2(dout[1]), 
        .C1(dout[2]), .C2(n18), .Z(n57) );
  AO222D0BWP12T30P140 U54 ( .A1(n30), .A2(din[3]), .B1(n22), .B2(dout[2]), 
        .C1(dout[3]), .C2(n18), .Z(n56) );
  AO222D0BWP12T30P140 U55 ( .A1(n30), .A2(din[4]), .B1(n22), .B2(dout[3]), 
        .C1(dout[4]), .C2(n18), .Z(n55) );
  AO222D0BWP12T30P140 U56 ( .A1(n30), .A2(din[5]), .B1(n22), .B2(dout[4]), 
        .C1(dout[5]), .C2(n18), .Z(n54) );
  INVD0BWP12T30P140 U57 ( .I(c_state[0]), .ZN(n42) );
  ND2D0BWP12T30P140 U58 ( .A1(start), .A2(n16), .ZN(n75) );
  OAI21D0BWP12T30P140 U59 ( .A1(n17), .A2(n42), .B(n75), .ZN(n70) );
  INVD0BWP12T30P140 U60 ( .I(dcnt[0]), .ZN(n21) );
  INVD0BWP12T30P140 U61 ( .I(n18), .ZN(n20) );
  ND2D0BWP12T30P140 U62 ( .A1(n22), .A2(n21), .ZN(n19) );
  OAI211D0BWP12T30P140 U63 ( .A1(n21), .A2(n20), .B(n24), .C(n19), .ZN(n64) );
  OAI21D0BWP12T30P140 U64 ( .A1(n21), .A2(n33), .B(n20), .ZN(n31) );
  AOI32D0BWP12T30P140 U65 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(n22), .B1(n31), 
        .B2(dcnt[2]), .ZN(n23) );
  OAI211D0BWP12T30P140 U66 ( .A1(n36), .A2(n33), .B(n24), .C(n23), .ZN(n72) );
  NR2D0BWP12T30P140 U67 ( .A1(n35), .A2(n36), .ZN(n29) );
  AOI22D0BWP12T30P140 U68 ( .A1(c_state[1]), .A2(n29), .B1(n76), .B2(
        core_cmd[2]), .ZN(n26) );
  OAI211D0BWP12T30P140 U69 ( .A1(n27), .A2(n35), .B(n26), .C(n25), .ZN(n61) );
  AO22D0BWP12T30P140 U70 ( .A1(n76), .A2(c_state[3]), .B1(n29), .B2(n28), .Z(
        n67) );
  AOI21D0BWP12T30P140 U71 ( .A1(dcnt[1]), .A2(n31), .B(n30), .ZN(n32) );
  OAI31D0BWP12T30P140 U72 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(n33), .B(n32), 
        .ZN(n65) );
  INVD0BWP12T30P140 U73 ( .I(n34), .ZN(n39) );
  AOI221D0BWP12T30P140 U74 ( .A1(n37), .A2(n43), .B1(n36), .B2(n46), .C(n35), 
        .ZN(n38) );
  AO211D0BWP12T30P140 U75 ( .A1(n76), .A2(core_cmd[3]), .B(n39), .C(n38), .Z(
        n60) );
  CKBD0BWP12T30P140 U76 ( .I(clk), .Z(n80) );
  CKBD0BWP12T30P140 U77 ( .I(clk), .Z(n79) );
  CKBD0BWP12T30P140 U78 ( .I(nReset), .Z(n78) );
  CKBD0BWP12T30P140 U79 ( .I(nReset), .Z(n77) );
  AOI211D0BWP12T30P140 U80 ( .A1(c_state[1]), .A2(n41), .B(n40), .C(c_state[4]), .ZN(n44) );
  AOI31D0BWP12T30P140 U81 ( .A1(n44), .A2(n43), .A3(n42), .B(n48), .ZN(n50) );
  OAI22D0BWP12T30P140 U82 ( .A1(n48), .A2(n47), .B1(n46), .B2(n45), .ZN(n49)
         );
  AOI22D0BWP12T30P140 U83 ( .A1(n50), .A2(dout[7]), .B1(ack_in), .B2(n49), 
        .ZN(n73) );
  ND2D0BWP12T30P140 U84 ( .A1(n73), .A2(n51), .ZN(N104) );
  IOA21D0BWP12T30P140 U85 ( .A1(n76), .A2(core_cmd[1]), .B(n74), .ZN(n62) );
  IOA21D0BWP12T30P140 U86 ( .A1(n76), .A2(core_cmd[0]), .B(n75), .ZN(n63) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N20, sr_1, sr_0, N43, N44, N48, N49, N50, done, i2c_al, irxack, N114,
         N115, N116, N117, N121, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;

  i2c_master_byte_ctrl byte_controller ( .clk(n261), .rst(wb_rst_i), .nReset(
        n259), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(cr[6]), 
        .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), .cmd_ack(done), 
        .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), 
        .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(sda_pad_i), 
        .sda_oen(sda_padoen_o) );
  DFSNQD1BWP12T30P140 prer_reg_15_ ( .D(n133), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[15]) );
  DFSNQD1BWP12T30P140 prer_reg_14_ ( .D(n132), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[14]) );
  DFSNQD1BWP12T30P140 prer_reg_13_ ( .D(n131), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[13]) );
  DFSNQD1BWP12T30P140 prer_reg_12_ ( .D(n130), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[12]) );
  DFSNQD1BWP12T30P140 prer_reg_11_ ( .D(n129), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[11]) );
  DFSNQD1BWP12T30P140 prer_reg_10_ ( .D(n128), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[10]) );
  DFSNQD1BWP12T30P140 prer_reg_9_ ( .D(n127), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[9]) );
  DFSNQD1BWP12T30P140 prer_reg_8_ ( .D(n126), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[8]) );
  DFSNQD1BWP12T30P140 prer_reg_7_ ( .D(n125), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[7]) );
  DFSNQD1BWP12T30P140 prer_reg_6_ ( .D(n124), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[6]) );
  DFSNQD1BWP12T30P140 prer_reg_5_ ( .D(n123), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[5]) );
  DFSNQD1BWP12T30P140 prer_reg_4_ ( .D(n122), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[4]) );
  DFSNQD1BWP12T30P140 prer_reg_3_ ( .D(n121), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[3]) );
  DFSNQD1BWP12T30P140 prer_reg_2_ ( .D(n120), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[2]) );
  DFSNQD1BWP12T30P140 prer_reg_1_ ( .D(n119), .CP(wb_clk_i), .SDN(n260), .Q(
        prer[1]) );
  DFSNQD1BWP12T30P140 prer_reg_0_ ( .D(n118), .CP(wb_clk_i), .SDN(arst_i), .Q(
        prer[0]) );
  DFCNQD1BWP12T30P140 wb_inta_o_reg ( .D(N121), .CP(n262), .CDN(n259), .Q(
        wb_inta_o) );
  DFCNQD1BWP12T30P140 rxack_reg ( .D(N115), .CP(n262), .CDN(n259), .Q(sr[7])
         );
  DFCNQD1BWP12T30P140 tip_reg ( .D(N116), .CP(n262), .CDN(n259), .Q(sr_1) );
  DFQD2BWP12T30P140 wb_dat_o_reg_4_ ( .D(n150), .CP(n261), .Q(wb_dat_o[4]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_6_ ( .D(N49), .CP(n261), .Q(wb_dat_o[6]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_3_ ( .D(n151), .CP(n261), .Q(wb_dat_o[3]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_2_ ( .D(n152), .CP(n261), .Q(wb_dat_o[2]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_5_ ( .D(N48), .CP(n261), .Q(wb_dat_o[5]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_7_ ( .D(N50), .CP(n261), .Q(wb_dat_o[7]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_1_ ( .D(N44), .CP(n261), .Q(wb_dat_o[1]) );
  DFCNQD1BWP12T30P140 ctr_reg_6_ ( .D(n148), .CP(n261), .CDN(n260), .Q(ctr[6])
         );
  DFCNQD1BWP12T30P140 ctr_reg_5_ ( .D(n147), .CP(n261), .CDN(n260), .Q(ctr[5])
         );
  DFCNQD1BWP12T30P140 ctr_reg_4_ ( .D(n146), .CP(n261), .CDN(n260), .Q(ctr[4])
         );
  DFCNQD1BWP12T30P140 ctr_reg_3_ ( .D(n145), .CP(n261), .CDN(n260), .Q(ctr[3])
         );
  DFCNQD1BWP12T30P140 ctr_reg_2_ ( .D(n144), .CP(n261), .CDN(n260), .Q(ctr[2])
         );
  DFCNQD1BWP12T30P140 ctr_reg_0_ ( .D(n142), .CP(n261), .CDN(n260), .Q(ctr[0])
         );
  DFCNQD1BWP12T30P140 cr_reg_1_ ( .D(n111), .CP(n262), .CDN(n259), .Q(cr[1])
         );
  DFCNQD1BWP12T30P140 al_reg ( .D(N114), .CP(n262), .CDN(n259), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 cr_reg_2_ ( .D(n112), .CP(n262), .CDN(n259), .Q(cr[2])
         );
  DFCNQD1BWP12T30P140 ctr_reg_1_ ( .D(n143), .CP(n262), .CDN(n260), .Q(ctr[1])
         );
  DFCNQD1BWP12T30P140 irq_flag_reg ( .D(N117), .CP(n262), .CDN(n259), .Q(sr_0)
         );
  DFCNQD1BWP12T30P140 txr_reg_6_ ( .D(n140), .CP(n261), .CDN(n260), .Q(txr[6])
         );
  DFCNQD1BWP12T30P140 txr_reg_7_ ( .D(n141), .CP(n261), .CDN(n259), .Q(txr[7])
         );
  DFCNQD1BWP12T30P140 txr_reg_4_ ( .D(n138), .CP(n262), .CDN(n260), .Q(txr[4])
         );
  DFCNQD1BWP12T30P140 txr_reg_3_ ( .D(n137), .CP(n262), .CDN(n259), .Q(txr[3])
         );
  DFCNQD1BWP12T30P140 txr_reg_2_ ( .D(n136), .CP(n262), .CDN(n259), .Q(txr[2])
         );
  DFCNQD1BWP12T30P140 cr_reg_0_ ( .D(n110), .CP(n262), .CDN(n259), .Q(cr[0])
         );
  DFCNQD1BWP12T30P140 txr_reg_5_ ( .D(n139), .CP(n262), .CDN(n260), .Q(txr[5])
         );
  DFCNQD1BWP12T30P140 txr_reg_1_ ( .D(n135), .CP(n262), .CDN(n259), .Q(txr[1])
         );
  DFCNQD1BWP12T30P140 txr_reg_0_ ( .D(n134), .CP(n262), .CDN(n259), .Q(txr[0])
         );
  DFCNQD1BWP12T30P140 cr_reg_3_ ( .D(n117), .CP(n262), .CDN(n259), .Q(cr[3])
         );
  DFCNQD1BWP12T30P140 cr_reg_4_ ( .D(n116), .CP(n262), .CDN(n259), .Q(cr[4])
         );
  DFCNQD1BWP12T30P140 cr_reg_7_ ( .D(n113), .CP(n262), .CDN(n259), .Q(cr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_6_ ( .D(n114), .CP(n262), .CDN(n259), .Q(cr[6])
         );
  DFCNQD1BWP12T30P140 cr_reg_5_ ( .D(n115), .CP(n262), .CDN(n259), .Q(cr[5])
         );
  DFCNQD1BWP12T30P140 ctr_reg_7_ ( .D(n149), .CP(n261), .CDN(n260), .Q(ctr[7])
         );
  DFQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(N43), .CP(n261), .Q(wb_dat_o[0]) );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(N20), .CP(n261), .Q(wb_ack_o) );
  TIEHBWP12T30P140 U166 ( .Z(n155) );
  INVD0BWP12T30P140 U167 ( .I(n155), .ZN(sda_pad_o) );
  INVD0BWP12T30P140 U168 ( .I(n155), .ZN(scl_pad_o) );
  INVD0BWP12T30P140 U169 ( .I(wb_rst_i), .ZN(n175) );
  ND2D0BWP12T30P140 U170 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n202) );
  ND2D0BWP12T30P140 U171 ( .A1(wb_ack_o), .A2(wb_we_i), .ZN(n157) );
  OAI21D0BWP12T30P140 U172 ( .A1(n157), .A2(wb_adr_i[2]), .B(n175), .ZN(n206)
         );
  INVD0BWP12T30P140 U173 ( .I(n206), .ZN(n174) );
  AOI21D0BWP12T30P140 U174 ( .A1(n175), .A2(n202), .B(n174), .ZN(n179) );
  INVD0BWP12T30P140 U175 ( .I(txr[2]), .ZN(n156) );
  INVD0BWP12T30P140 U176 ( .I(wb_dat_i[2]), .ZN(n228) );
  ND2D0BWP12T30P140 U177 ( .A1(n179), .A2(n175), .ZN(n177) );
  OAI22D0BWP12T30P140 U178 ( .A1(n179), .A2(n156), .B1(n228), .B2(n177), .ZN(
        n136) );
  INVD0BWP12T30P140 U179 ( .I(wb_dat_i[0]), .ZN(n216) );
  NR2D0BWP12T30P140 U180 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n248) );
  ND3D0BWP12T30P140 U181 ( .A1(wb_adr_i[2]), .A2(ctr[7]), .A3(n248), .ZN(n158)
         );
  NR2D0BWP12T30P140 U182 ( .A1(n157), .A2(n158), .ZN(n166) );
  ND2D0BWP12T30P140 U183 ( .A1(n166), .A2(n175), .ZN(n194) );
  INVD0BWP12T30P140 U184 ( .I(cr[0]), .ZN(n159) );
  INVD0BWP12T30P140 U185 ( .I(n157), .ZN(n167) );
  ND3D0BWP12T30P140 U186 ( .A1(n158), .A2(n175), .A3(n167), .ZN(n192) );
  OAI22D0BWP12T30P140 U187 ( .A1(n216), .A2(n194), .B1(n159), .B2(n192), .ZN(
        n110) );
  INVD0BWP12T30P140 U188 ( .I(txr[4]), .ZN(n160) );
  INVD0BWP12T30P140 U189 ( .I(wb_dat_i[4]), .ZN(n221) );
  OAI22D0BWP12T30P140 U190 ( .A1(n179), .A2(n160), .B1(n221), .B2(n177), .ZN(
        n138) );
  INVD0BWP12T30P140 U191 ( .I(txr[7]), .ZN(n161) );
  INVD0BWP12T30P140 U192 ( .I(wb_dat_i[7]), .ZN(n208) );
  OAI22D0BWP12T30P140 U193 ( .A1(n179), .A2(n161), .B1(n208), .B2(n177), .ZN(
        n141) );
  INVD0BWP12T30P140 U194 ( .I(txr[1]), .ZN(n162) );
  INVD0BWP12T30P140 U195 ( .I(wb_dat_i[1]), .ZN(n234) );
  OAI22D0BWP12T30P140 U196 ( .A1(n179), .A2(n162), .B1(n234), .B2(n177), .ZN(
        n135) );
  INVD0BWP12T30P140 U197 ( .I(txr[5]), .ZN(n163) );
  INVD0BWP12T30P140 U198 ( .I(wb_dat_i[5]), .ZN(n211) );
  OAI22D0BWP12T30P140 U199 ( .A1(n179), .A2(n163), .B1(n211), .B2(n177), .ZN(
        n139) );
  INVD0BWP12T30P140 U200 ( .I(wb_adr_i[0]), .ZN(n173) );
  NR2D0BWP12T30P140 U201 ( .A1(wb_adr_i[1]), .A2(n173), .ZN(n249) );
  ND2D0BWP12T30P140 U202 ( .A1(n249), .A2(n206), .ZN(n199) );
  INVD0BWP12T30P140 U203 ( .I(n175), .ZN(n238) );
  AOI21D0BWP12T30P140 U204 ( .A1(prer[15]), .A2(n199), .B(n238), .ZN(n164) );
  OAI21D0BWP12T30P140 U205 ( .A1(n208), .A2(n199), .B(n164), .ZN(n133) );
  INVD0BWP12T30P140 U206 ( .I(txr[3]), .ZN(n165) );
  INVD0BWP12T30P140 U207 ( .I(wb_dat_i[3]), .ZN(n226) );
  OAI22D0BWP12T30P140 U208 ( .A1(n179), .A2(n165), .B1(n226), .B2(n177), .ZN(
        n137) );
  NR2D0BWP12T30P140 U209 ( .A1(done), .A2(i2c_al), .ZN(n182) );
  NR2D0BWP12T30P140 U210 ( .A1(n238), .A2(n166), .ZN(n169) );
  OAI21D0BWP12T30P140 U211 ( .A1(n167), .A2(n182), .B(n169), .ZN(n172) );
  INVD0BWP12T30P140 U212 ( .I(cr[4]), .ZN(n240) );
  OAI22D0BWP12T30P140 U213 ( .A1(n221), .A2(n194), .B1(n172), .B2(n240), .ZN(
        n116) );
  INVD0BWP12T30P140 U214 ( .I(txr[0]), .ZN(n168) );
  OAI22D0BWP12T30P140 U215 ( .A1(n179), .A2(n168), .B1(n216), .B2(n177), .ZN(
        n134) );
  INVD0BWP12T30P140 U216 ( .I(cr[7]), .ZN(n189) );
  OAI22D0BWP12T30P140 U217 ( .A1(n208), .A2(n194), .B1(n172), .B2(n189), .ZN(
        n113) );
  MOAI22D0BWP12T30P140 U218 ( .A1(n226), .A2(n194), .B1(n169), .B2(cr[3]), 
        .ZN(n117) );
  INVD0BWP12T30P140 U219 ( .I(wb_dat_i[6]), .ZN(n218) );
  INVD0BWP12T30P140 U220 ( .I(cr[6]), .ZN(n170) );
  OAI22D0BWP12T30P140 U221 ( .A1(n218), .A2(n194), .B1(n172), .B2(n170), .ZN(
        n114) );
  IND3D1BWP12T30P140 U222 ( .A1(wb_ack_o), .B1(wb_stb_i), .B2(wb_cyc_i), .ZN(
        n171) );
  INVD0BWP12T30P140 U223 ( .I(n171), .ZN(N20) );
  INVD0BWP12T30P140 U224 ( .I(cr[5]), .ZN(n239) );
  OAI22D0BWP12T30P140 U225 ( .A1(n211), .A2(n194), .B1(n172), .B2(n239), .ZN(
        n115) );
  ND2D0BWP12T30P140 U226 ( .A1(wb_adr_i[1]), .A2(n173), .ZN(n201) );
  AOI21D0BWP12T30P140 U227 ( .A1(n175), .A2(n201), .B(n174), .ZN(n219) );
  INVD0BWP12T30P140 U228 ( .I(ctr[7]), .ZN(n176) );
  ND2D0BWP12T30P140 U229 ( .A1(n219), .A2(n175), .ZN(n217) );
  OAI22D0BWP12T30P140 U230 ( .A1(n219), .A2(n176), .B1(n208), .B2(n217), .ZN(
        n149) );
  INVD0BWP12T30P140 U231 ( .I(txr[6]), .ZN(n178) );
  OAI22D0BWP12T30P140 U232 ( .A1(n179), .A2(n178), .B1(n218), .B2(n177), .ZN(
        n140) );
  INVD0BWP12T30P140 U233 ( .I(ctr[4]), .ZN(n180) );
  OAI22D0BWP12T30P140 U234 ( .A1(n219), .A2(n180), .B1(n221), .B2(n217), .ZN(
        n146) );
  AOI21D0BWP12T30P140 U235 ( .A1(prer[14]), .A2(n199), .B(n238), .ZN(n181) );
  OAI21D0BWP12T30P140 U236 ( .A1(n218), .A2(n199), .B(n181), .ZN(n132) );
  INVD0BWP12T30P140 U237 ( .I(sr_0), .ZN(n257) );
  AOI211D0BWP12T30P140 U238 ( .A1(n182), .A2(n257), .B(n238), .C(cr[0]), .ZN(
        N117) );
  INVD0BWP12T30P140 U239 ( .I(ctr[5]), .ZN(n183) );
  OAI22D0BWP12T30P140 U240 ( .A1(n219), .A2(n183), .B1(n211), .B2(n217), .ZN(
        n147) );
  AOI21D0BWP12T30P140 U241 ( .A1(prer[13]), .A2(n199), .B(n238), .ZN(n184) );
  OAI21D0BWP12T30P140 U242 ( .A1(n211), .A2(n199), .B(n184), .ZN(n131) );
  INVD0BWP12T30P140 U243 ( .I(ctr[1]), .ZN(n185) );
  OAI22D0BWP12T30P140 U244 ( .A1(n219), .A2(n185), .B1(n234), .B2(n217), .ZN(
        n143) );
  AOI21D0BWP12T30P140 U245 ( .A1(prer[9]), .A2(n199), .B(n238), .ZN(n186) );
  OAI21D0BWP12T30P140 U246 ( .A1(n234), .A2(n199), .B(n186), .ZN(n127) );
  INVD0BWP12T30P140 U247 ( .I(cr[2]), .ZN(n187) );
  OAI22D0BWP12T30P140 U248 ( .A1(n228), .A2(n194), .B1(n187), .B2(n192), .ZN(
        n112) );
  AOI21D0BWP12T30P140 U249 ( .A1(prer[12]), .A2(n199), .B(wb_rst_i), .ZN(n188)
         );
  OAI21D0BWP12T30P140 U250 ( .A1(n221), .A2(n199), .B(n188), .ZN(n130) );
  AOI21D0BWP12T30P140 U251 ( .A1(sr[5]), .A2(n189), .B(i2c_al), .ZN(n190) );
  NR2D0BWP12T30P140 U252 ( .A1(n238), .A2(n190), .ZN(N114) );
  AOI21D0BWP12T30P140 U253 ( .A1(prer[11]), .A2(n199), .B(wb_rst_i), .ZN(n191)
         );
  OAI21D0BWP12T30P140 U254 ( .A1(n226), .A2(n199), .B(n191), .ZN(n129) );
  INVD0BWP12T30P140 U255 ( .I(cr[1]), .ZN(n193) );
  OAI22D0BWP12T30P140 U256 ( .A1(n234), .A2(n194), .B1(n193), .B2(n192), .ZN(
        n111) );
  AOI21D0BWP12T30P140 U257 ( .A1(prer[10]), .A2(n199), .B(wb_rst_i), .ZN(n195)
         );
  OAI21D0BWP12T30P140 U258 ( .A1(n228), .A2(n199), .B(n195), .ZN(n128) );
  INVD0BWP12T30P140 U259 ( .I(ctr[0]), .ZN(n196) );
  OAI22D0BWP12T30P140 U260 ( .A1(n219), .A2(n196), .B1(n216), .B2(n217), .ZN(
        n142) );
  INVD0BWP12T30P140 U261 ( .I(ctr[2]), .ZN(n197) );
  OAI22D0BWP12T30P140 U262 ( .A1(n219), .A2(n197), .B1(n228), .B2(n217), .ZN(
        n144) );
  AOI21D0BWP12T30P140 U263 ( .A1(prer[8]), .A2(n199), .B(wb_rst_i), .ZN(n198)
         );
  OAI21D0BWP12T30P140 U264 ( .A1(n216), .A2(n199), .B(n198), .ZN(n126) );
  INVD0BWP12T30P140 U265 ( .I(ctr[3]), .ZN(n200) );
  OAI22D0BWP12T30P140 U266 ( .A1(n219), .A2(n200), .B1(n226), .B2(n217), .ZN(
        n145) );
  AOI22D0BWP12T30P140 U267 ( .A1(n249), .A2(prer[11]), .B1(n248), .B2(prer[3]), 
        .ZN(n205) );
  AN2D0BWP12T30P140 U268 ( .A1(n249), .A2(wb_adr_i[2]), .Z(n251) );
  INVD0BWP12T30P140 U269 ( .I(wb_adr_i[2]), .ZN(n246) );
  NR2D0BWP12T30P140 U270 ( .A1(n246), .A2(n201), .ZN(n250) );
  AOI22D0BWP12T30P140 U271 ( .A1(txr[3]), .A2(n251), .B1(n250), .B2(cr[3]), 
        .ZN(n204) );
  INVD0BWP12T30P140 U272 ( .I(n201), .ZN(n253) );
  INVD0BWP12T30P140 U273 ( .I(n202), .ZN(n252) );
  AOI22D0BWP12T30P140 U274 ( .A1(n253), .A2(ctr[3]), .B1(n252), .B2(rxr[3]), 
        .ZN(n203) );
  AOI32D0BWP12T30P140 U275 ( .A1(n205), .A2(n204), .A3(n203), .B1(wb_adr_i[2]), 
        .B2(n204), .ZN(n151) );
  ND2D0BWP12T30P140 U276 ( .A1(n248), .A2(n206), .ZN(n233) );
  AOI21D0BWP12T30P140 U277 ( .A1(prer[7]), .A2(n233), .B(n238), .ZN(n207) );
  OAI21D0BWP12T30P140 U278 ( .A1(n208), .A2(n233), .B(n207), .ZN(n125) );
  AOI21D0BWP12T30P140 U279 ( .A1(prer[6]), .A2(n233), .B(wb_rst_i), .ZN(n209)
         );
  OAI21D0BWP12T30P140 U280 ( .A1(n218), .A2(n233), .B(n209), .ZN(n124) );
  AOI21D0BWP12T30P140 U281 ( .A1(prer[5]), .A2(n233), .B(n238), .ZN(n210) );
  OAI21D0BWP12T30P140 U282 ( .A1(n211), .A2(n233), .B(n210), .ZN(n123) );
  AOI22D0BWP12T30P140 U283 ( .A1(n249), .A2(prer[14]), .B1(n248), .B2(prer[6]), 
        .ZN(n214) );
  AOI22D0BWP12T30P140 U284 ( .A1(n253), .A2(ctr[6]), .B1(n252), .B2(rxr[6]), 
        .ZN(n213) );
  AOI222D0BWP12T30P140 U285 ( .A1(n253), .A2(cr[6]), .B1(txr[6]), .B2(n249), 
        .C1(n248), .C2(sr[6]), .ZN(n212) );
  AOI32D0BWP12T30P140 U286 ( .A1(n214), .A2(n246), .A3(n213), .B1(wb_adr_i[2]), 
        .B2(n212), .ZN(N49) );
  AOI21D0BWP12T30P140 U287 ( .A1(prer[0]), .A2(n233), .B(n238), .ZN(n215) );
  OAI21D0BWP12T30P140 U288 ( .A1(n216), .A2(n233), .B(n215), .ZN(n118) );
  INVD0BWP12T30P140 U289 ( .I(ctr[6]), .ZN(n258) );
  OAI22D0BWP12T30P140 U290 ( .A1(n219), .A2(n258), .B1(n218), .B2(n217), .ZN(
        n148) );
  AOI21D0BWP12T30P140 U291 ( .A1(prer[4]), .A2(n233), .B(wb_rst_i), .ZN(n220)
         );
  OAI21D0BWP12T30P140 U292 ( .A1(n221), .A2(n233), .B(n220), .ZN(n122) );
  AOI22D0BWP12T30P140 U293 ( .A1(n249), .A2(prer[8]), .B1(n248), .B2(prer[0]), 
        .ZN(n224) );
  AOI22D0BWP12T30P140 U294 ( .A1(n253), .A2(ctr[0]), .B1(n252), .B2(rxr[0]), 
        .ZN(n223) );
  AOI222D0BWP12T30P140 U295 ( .A1(n253), .A2(cr[0]), .B1(txr[0]), .B2(n249), 
        .C1(n248), .C2(sr_0), .ZN(n222) );
  AOI32D0BWP12T30P140 U296 ( .A1(n224), .A2(n246), .A3(n223), .B1(wb_adr_i[2]), 
        .B2(n222), .ZN(N43) );
  AOI21D0BWP12T30P140 U297 ( .A1(prer[3]), .A2(n233), .B(wb_rst_i), .ZN(n225)
         );
  OAI21D0BWP12T30P140 U298 ( .A1(n226), .A2(n233), .B(n225), .ZN(n121) );
  AOI21D0BWP12T30P140 U299 ( .A1(prer[2]), .A2(n233), .B(wb_rst_i), .ZN(n227)
         );
  OAI21D0BWP12T30P140 U300 ( .A1(n228), .A2(n233), .B(n227), .ZN(n120) );
  AOI22D0BWP12T30P140 U301 ( .A1(n249), .A2(prer[9]), .B1(n248), .B2(prer[1]), 
        .ZN(n231) );
  AOI22D0BWP12T30P140 U302 ( .A1(n253), .A2(ctr[1]), .B1(n252), .B2(rxr[1]), 
        .ZN(n230) );
  AOI222D0BWP12T30P140 U303 ( .A1(n253), .A2(cr[1]), .B1(txr[1]), .B2(n249), 
        .C1(n248), .C2(sr_1), .ZN(n229) );
  AOI32D0BWP12T30P140 U304 ( .A1(n231), .A2(n246), .A3(n230), .B1(wb_adr_i[2]), 
        .B2(n229), .ZN(N44) );
  AOI21D0BWP12T30P140 U305 ( .A1(prer[1]), .A2(n233), .B(n238), .ZN(n232) );
  OAI21D0BWP12T30P140 U306 ( .A1(n234), .A2(n233), .B(n232), .ZN(n119) );
  AOI22D0BWP12T30P140 U307 ( .A1(n249), .A2(prer[15]), .B1(n248), .B2(prer[7]), 
        .ZN(n237) );
  AOI22D0BWP12T30P140 U308 ( .A1(n253), .A2(ctr[7]), .B1(n252), .B2(rxr[7]), 
        .ZN(n236) );
  AOI222D0BWP12T30P140 U309 ( .A1(n253), .A2(cr[7]), .B1(txr[7]), .B2(n249), 
        .C1(n248), .C2(sr[7]), .ZN(n235) );
  AOI32D0BWP12T30P140 U310 ( .A1(n237), .A2(n246), .A3(n236), .B1(wb_adr_i[2]), 
        .B2(n235), .ZN(N50) );
  AOI21D0BWP12T30P140 U311 ( .A1(n240), .A2(n239), .B(n238), .ZN(N116) );
  AOI22D0BWP12T30P140 U312 ( .A1(n249), .A2(prer[12]), .B1(n248), .B2(prer[4]), 
        .ZN(n243) );
  AOI22D0BWP12T30P140 U313 ( .A1(txr[4]), .A2(n251), .B1(cr[4]), .B2(n250), 
        .ZN(n242) );
  AOI22D0BWP12T30P140 U314 ( .A1(n253), .A2(ctr[4]), .B1(n252), .B2(rxr[4]), 
        .ZN(n241) );
  AOI32D0BWP12T30P140 U315 ( .A1(n243), .A2(n242), .A3(n241), .B1(wb_adr_i[2]), 
        .B2(n242), .ZN(n150) );
  AOI22D0BWP12T30P140 U316 ( .A1(n249), .A2(prer[13]), .B1(n248), .B2(prer[5]), 
        .ZN(n247) );
  AOI22D0BWP12T30P140 U317 ( .A1(n253), .A2(ctr[5]), .B1(n252), .B2(rxr[5]), 
        .ZN(n245) );
  AOI222D0BWP12T30P140 U318 ( .A1(n253), .A2(cr[5]), .B1(txr[5]), .B2(n249), 
        .C1(n248), .C2(sr[5]), .ZN(n244) );
  AOI32D0BWP12T30P140 U319 ( .A1(n247), .A2(n246), .A3(n245), .B1(wb_adr_i[2]), 
        .B2(n244), .ZN(N48) );
  AOI22D0BWP12T30P140 U320 ( .A1(n249), .A2(prer[10]), .B1(n248), .B2(prer[2]), 
        .ZN(n256) );
  AOI22D0BWP12T30P140 U321 ( .A1(txr[2]), .A2(n251), .B1(cr[2]), .B2(n250), 
        .ZN(n255) );
  AOI22D0BWP12T30P140 U322 ( .A1(n253), .A2(ctr[2]), .B1(n252), .B2(rxr[2]), 
        .ZN(n254) );
  AOI32D0BWP12T30P140 U323 ( .A1(n256), .A2(n255), .A3(n254), .B1(wb_adr_i[2]), 
        .B2(n255), .ZN(n152) );
  CKBD0BWP12T30P140 U324 ( .I(wb_clk_i), .Z(n262) );
  CKBD0BWP12T30P140 U325 ( .I(wb_clk_i), .Z(n261) );
  CKBD0BWP12T30P140 U326 ( .I(arst_i), .Z(n260) );
  CKBD0BWP12T30P140 U327 ( .I(arst_i), .Z(n259) );
  INR2D1BWP12T30P140 U328 ( .A1(irxack), .B1(wb_rst_i), .ZN(N115) );
  NR3D0BWP12T30P140 U329 ( .A1(wb_rst_i), .A2(n258), .A3(n257), .ZN(N121) );
endmodule

