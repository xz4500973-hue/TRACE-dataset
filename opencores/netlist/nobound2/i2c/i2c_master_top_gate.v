/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 17:07:01 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, sSCL, slave_wait, N13, dSCL, clk_en, N54, N55, N56, N57,
         N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         dSDA, sSDA, N106, N107, N108, N109, sta_condition, sto_condition,
         N112, N113, N115, cmd_stop, sda_chk, N122, N172, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171;
  wire   [15:0] cnt;
  wire   [1:0] cSCL;
  wire   [1:0] cSDA;
  wire   [13:0] filter_cnt;
  wire   [2:0] fSCL;
  wire   [2:0] fSDA;
  wire   [4:0] c_state;

  DFSNQD1BWP12T30P140 fSCL_reg_0_ ( .D(n67), .CP(n170), .SDN(n166), .Q(fSCL[0]) );
  DFSNQD1BWP12T30P140 fSCL_reg_1_ ( .D(n66), .CP(n170), .SDN(n167), .Q(fSCL[1]) );
  DFSNQD1BWP12T30P140 fSCL_reg_2_ ( .D(n65), .CP(n170), .SDN(n168), .Q(fSCL[2]) );
  DFSNQD1BWP12T30P140 fSDA_reg_0_ ( .D(n70), .CP(n170), .SDN(n166), .Q(fSDA[0]) );
  DFSNQD1BWP12T30P140 fSDA_reg_1_ ( .D(n69), .CP(n170), .SDN(n167), .Q(fSDA[1]) );
  DFSNQD1BWP12T30P140 fSDA_reg_2_ ( .D(n68), .CP(n170), .SDN(n168), .Q(fSDA[2]) );
  DFSNQD1BWP12T30P140 sSCL_reg ( .D(N106), .CP(n171), .SDN(n166), .Q(sSCL) );
  DFSNQD1BWP12T30P140 dSCL_reg ( .D(N108), .CP(n171), .SDN(n167), .Q(dSCL) );
  DFSNQD1BWP12T30P140 sSDA_reg ( .D(N107), .CP(n171), .SDN(nReset), .Q(sSDA)
         );
  DFSNQD1BWP12T30P140 dSDA_reg ( .D(N109), .CP(n171), .SDN(n168), .Q(dSDA) );
  DFSNQD1BWP12T30P140 scl_oen_reg ( .D(n88), .CP(n171), .SDN(nReset), .Q(
        scl_oen) );
  DFSNQD1BWP12T30P140 clk_en_reg ( .D(n165), .CP(n171), .SDN(n168), .Q(clk_en)
         );
  DFSNQD1BWP12T30P140 sda_oen_reg ( .D(n89), .CP(n171), .SDN(n168), .Q(sda_oen) );
  DFCNQD1BWP12T30P140 cSCL_reg_1_ ( .D(N55), .CP(n171), .CDN(n168), .Q(cSCL[1]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_3_ ( .D(N79), .CP(n171), .CDN(n168), .Q(
        filter_cnt[3]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_5_ ( .D(N81), .CP(n171), .CDN(n168), .Q(
        filter_cnt[5]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_7_ ( .D(N83), .CP(n171), .CDN(n168), .Q(
        filter_cnt[7]) );
  DFCNQD1BWP12T30P140 cSCL_reg_0_ ( .D(N54), .CP(n171), .CDN(n168), .Q(cSCL[0]) );
  DFCNQD1BWP12T30P140 sta_condition_reg ( .D(N112), .CP(n170), .CDN(n166), .Q(
        sta_condition) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_4_ ( .D(N80), .CP(n171), .CDN(n168), .Q(
        filter_cnt[4]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_6_ ( .D(N82), .CP(n171), .CDN(n168), .Q(
        filter_cnt[6]) );
  DFCNQD1BWP12T30P140 cmd_stop_reg ( .D(n87), .CP(n171), .CDN(n166), .Q(
        cmd_stop) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_11_ ( .D(N87), .CP(clk), .CDN(n166), .Q(
        filter_cnt[11]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_2_ ( .D(N78), .CP(n171), .CDN(n168), .Q(
        filter_cnt[2]) );
  DFCNQD1BWP12T30P140 busy_reg ( .D(N115), .CP(n171), .CDN(n166), .Q(busy) );
  DFCNQD1BWP12T30P140 cnt_reg_13_ ( .D(n72), .CP(n170), .CDN(n166), .Q(cnt[13]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n79), .CP(n170), .CDN(n167), .Q(cnt[6])
         );
  DFCNQD1BWP12T30P140 cnt_reg_8_ ( .D(n77), .CP(n170), .CDN(n167), .Q(cnt[8])
         );
  DFCNQD1BWP12T30P140 cnt_reg_10_ ( .D(n75), .CP(n170), .CDN(n166), .Q(cnt[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_12_ ( .D(n73), .CP(n170), .CDN(n168), .Q(cnt[12]) );
  DFCNQD1BWP12T30P140 cSDA_reg_1_ ( .D(N57), .CP(n169), .CDN(n168), .Q(cSDA[1]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_9_ ( .D(N85), .CP(n169), .CDN(n166), .Q(
        filter_cnt[9]) );
  DFCNQD1BWP12T30P140 cSDA_reg_0_ ( .D(N56), .CP(n169), .CDN(n168), .Q(cSDA[0]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_13_ ( .D(N89), .CP(clk), .CDN(n166), .Q(
        filter_cnt[13]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_1_ ( .D(N77), .CP(n171), .CDN(n168), .Q(
        filter_cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_15_ ( .D(n71), .CP(n170), .CDN(n167), .Q(cnt[15]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_8_ ( .D(N84), .CP(n169), .CDN(n168), .Q(
        filter_cnt[8]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_10_ ( .D(N86), .CP(n169), .CDN(n166), .Q(
        filter_cnt[10]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_12_ ( .D(N88), .CP(n169), .CDN(n166), .Q(
        filter_cnt[12]) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n93), .CP(n169), .CDN(n166), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n91), .CP(n169), .CDN(n167), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n92), .CP(n169), .CDN(n167), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 sda_chk_reg ( .D(n90), .CP(n169), .CDN(n167), .Q(sda_chk) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n81), .CP(n169), .CDN(n167), .Q(cnt[4])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n83), .CP(n169), .CDN(n167), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 sto_condition_reg ( .D(N113), .CP(n169), .CDN(n166), .Q(
        sto_condition) );
  DFCNQD1BWP12T30P140 al_reg ( .D(N122), .CP(n170), .CDN(n166), .Q(al) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n80), .CP(n170), .CDN(n167), .Q(cnt[5])
         );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n78), .CP(n170), .CDN(n166), .Q(cnt[7])
         );
  DFCNQD1BWP12T30P140 cnt_reg_9_ ( .D(n76), .CP(n170), .CDN(n168), .Q(cnt[9])
         );
  DFCNQD1BWP12T30P140 cnt_reg_11_ ( .D(n74), .CP(n170), .CDN(n167), .Q(cnt[11]) );
  DFCNQD1BWP12T30P140 filter_cnt_reg_0_ ( .D(N76), .CP(n170), .CDN(n168), .Q(
        filter_cnt[0]) );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N172), .CP(n169), .CDN(n167), .Q(
        cmd_ack) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n85), .CP(n169), .CDN(n167), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n82), .CP(n169), .CDN(n167), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n84), .CP(n169), .CDN(n167), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_14_ ( .D(n86), .CP(n169), .CDN(n167), .Q(cnt[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n94), .CP(n169), .CDN(n167), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n95), .CP(n170), .CDN(n166), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 slave_wait_reg ( .D(N13), .CP(n169), .CDN(n166), .Q(
        slave_wait) );
  DFQD1BWP12T30P140 dscl_oen_reg ( .D(scl_oen), .CP(n171), .Q(dscl_oen) );
  DFQD1BWP12T30P140 dout_reg ( .D(n64), .CP(n171), .Q(dout) );
  INVD0BWP12T30P140 U3 ( .I(rst), .ZN(n156) );
  INVD0BWP12T30P140 U4 ( .I(n156), .ZN(n160) );
  INVD0BWP12T30P140 U5 ( .I(filter_cnt[11]), .ZN(n26) );
  INVD0BWP12T30P140 U6 ( .I(filter_cnt[9]), .ZN(n45) );
  INVD0BWP12T30P140 U7 ( .I(filter_cnt[7]), .ZN(n16) );
  INVD0BWP12T30P140 U8 ( .I(filter_cnt[5]), .ZN(n14) );
  INVD0BWP12T30P140 U9 ( .I(filter_cnt[3]), .ZN(n12) );
  NR3D0BWP12T30P140 U10 ( .A1(filter_cnt[2]), .A2(filter_cnt[1]), .A3(
        filter_cnt[0]), .ZN(n28) );
  ND2D0BWP12T30P140 U11 ( .A1(n12), .A2(n28), .ZN(n19) );
  NR2D0BWP12T30P140 U12 ( .A1(filter_cnt[4]), .A2(n19), .ZN(n18) );
  ND2D0BWP12T30P140 U13 ( .A1(n14), .A2(n18), .ZN(n22) );
  NR2D0BWP12T30P140 U14 ( .A1(filter_cnt[6]), .A2(n22), .ZN(n21) );
  ND2D0BWP12T30P140 U15 ( .A1(n16), .A2(n21), .ZN(n110) );
  NR2D0BWP12T30P140 U16 ( .A1(filter_cnt[8]), .A2(n110), .ZN(n109) );
  ND2D0BWP12T30P140 U17 ( .A1(n45), .A2(n109), .ZN(n113) );
  NR2D0BWP12T30P140 U18 ( .A1(filter_cnt[10]), .A2(n113), .ZN(n112) );
  ND2D0BWP12T30P140 U19 ( .A1(n26), .A2(n112), .ZN(n43) );
  NR2D0BWP12T30P140 U20 ( .A1(filter_cnt[12]), .A2(n43), .ZN(n62) );
  IND2D1BWP12T30P140 U21 ( .A1(filter_cnt[13]), .B1(n62), .ZN(n11) );
  NR2D0BWP12T30P140 U22 ( .A1(n160), .A2(n11), .ZN(n10) );
  INVD0BWP12T30P140 U23 ( .I(n10), .ZN(n3) );
  AO221D0BWP12T30P140 U24 ( .A1(n10), .A2(cSCL[1]), .B1(n3), .B2(fSCL[0]), .C(
        n160), .Z(n67) );
  INVD0BWP12T30P140 U25 ( .I(fSCL[0]), .ZN(n2) );
  AOI21D0BWP12T30P140 U26 ( .A1(fSCL[1]), .A2(n11), .B(n160), .ZN(n1) );
  OAI21D0BWP12T30P140 U27 ( .A1(n2), .A2(n11), .B(n1), .ZN(n66) );
  AO221D0BWP12T30P140 U28 ( .A1(n10), .A2(fSCL[1]), .B1(n3), .B2(fSCL[2]), .C(
        n160), .Z(n65) );
  AO221D0BWP12T30P140 U29 ( .A1(n10), .A2(fSDA[0]), .B1(n3), .B2(fSDA[1]), .C(
        n160), .Z(n69) );
  AO221D0BWP12T30P140 U30 ( .A1(n10), .A2(fSDA[1]), .B1(n3), .B2(fSDA[2]), .C(
        n160), .Z(n68) );
  AO221D0BWP12T30P140 U31 ( .A1(n10), .A2(cSDA[1]), .B1(n3), .B2(fSDA[0]), .C(
        n160), .Z(n70) );
  NR2D0BWP12T30P140 U32 ( .A1(n160), .A2(al), .ZN(n56) );
  INVD0BWP12T30P140 U33 ( .I(c_state[1]), .ZN(n59) );
  INVD0BWP12T30P140 U34 ( .I(c_state[2]), .ZN(n161) );
  ND2D0BWP12T30P140 U35 ( .A1(n59), .A2(n161), .ZN(n48) );
  INVD0BWP12T30P140 U36 ( .I(n48), .ZN(n133) );
  INVD0BWP12T30P140 U37 ( .I(clk_en), .ZN(n25) );
  OAI21D0BWP12T30P140 U38 ( .A1(n133), .A2(n25), .B(n56), .ZN(n5) );
  INVD0BWP12T30P140 U39 ( .I(c_state[0]), .ZN(n162) );
  AOI21D0BWP12T30P140 U40 ( .A1(n59), .A2(n162), .B(n161), .ZN(n4) );
  INVD0BWP12T30P140 U41 ( .I(scl_oen), .ZN(n42) );
  INVD0BWP12T30P140 U42 ( .I(n5), .ZN(n8) );
  AOI32D0BWP12T30P140 U43 ( .A1(n56), .A2(n5), .A3(n4), .B1(n42), .B2(n8), 
        .ZN(n88) );
  ND2D0BWP12T30P140 U44 ( .A1(n56), .A2(n25), .ZN(n164) );
  INVD0BWP12T30P140 U45 ( .I(n164), .ZN(n54) );
  ND2D0BWP12T30P140 U46 ( .A1(clk_en), .A2(n56), .ZN(n163) );
  INVD0BWP12T30P140 U47 ( .I(n163), .ZN(n51) );
  ND2D0BWP12T30P140 U48 ( .A1(n51), .A2(n133), .ZN(n7) );
  OAI21D0BWP12T30P140 U49 ( .A1(c_state[0]), .A2(c_state[2]), .B(n56), .ZN(n6)
         );
  AOI22D0BWP12T30P140 U50 ( .A1(c_state[0]), .A2(n133), .B1(n7), .B2(n6), .ZN(
        n9) );
  MOAI22D0BWP12T30P140 U51 ( .A1(n54), .A2(n9), .B1(n8), .B2(sda_oen), .ZN(n89) );
  ND2D0BWP12T30P140 U52 ( .A1(n10), .A2(ena), .ZN(n60) );
  INVD0BWP12T30P140 U53 ( .I(n60), .ZN(n138) );
  ND3D0BWP12T30P140 U54 ( .A1(n11), .A2(n156), .A3(ena), .ZN(n139) );
  INVD0BWP12T30P140 U55 ( .I(n139), .ZN(n47) );
  OAI21D0BWP12T30P140 U56 ( .A1(n28), .A2(n12), .B(n19), .ZN(n13) );
  AO22D0BWP12T30P140 U57 ( .A1(n138), .A2(clk_cnt[5]), .B1(n47), .B2(n13), .Z(
        N79) );
  OAI21D0BWP12T30P140 U58 ( .A1(n18), .A2(n14), .B(n22), .ZN(n15) );
  AO22D0BWP12T30P140 U59 ( .A1(n138), .A2(clk_cnt[7]), .B1(n47), .B2(n15), .Z(
        N81) );
  OAI21D0BWP12T30P140 U60 ( .A1(n21), .A2(n16), .B(n110), .ZN(n17) );
  AO22D0BWP12T30P140 U61 ( .A1(n138), .A2(clk_cnt[9]), .B1(n47), .B2(n17), .Z(
        N83) );
  NR2D0BWP12T30P140 U62 ( .A1(n160), .A2(sSDA), .ZN(n135) );
  INVD0BWP12T30P140 U63 ( .I(n135), .ZN(N109) );
  AOI21D0BWP12T30P140 U64 ( .A1(filter_cnt[4]), .A2(n19), .B(n18), .ZN(n20) );
  MOAI22D0BWP12T30P140 U65 ( .A1(n20), .A2(n139), .B1(n138), .B2(clk_cnt[6]), 
        .ZN(N80) );
  AOI21D0BWP12T30P140 U66 ( .A1(filter_cnt[6]), .A2(n22), .B(n21), .ZN(n23) );
  MOAI22D0BWP12T30P140 U67 ( .A1(n23), .A2(n139), .B1(n138), .B2(clk_cnt[8]), 
        .ZN(N82) );
  NR2D0BWP12T30P140 U68 ( .A1(cmd[3]), .A2(cmd[2]), .ZN(n50) );
  IND3D1BWP12T30P140 U69 ( .A1(cmd[0]), .B1(n50), .B2(cmd[1]), .ZN(n124) );
  INVD0BWP12T30P140 U70 ( .I(cmd_stop), .ZN(n24) );
  AOI221D0BWP12T30P140 U71 ( .A1(clk_en), .A2(n124), .B1(n25), .B2(n24), .C(
        n160), .ZN(n87) );
  OAI21D0BWP12T30P140 U72 ( .A1(n112), .A2(n26), .B(n43), .ZN(n27) );
  AO22D0BWP12T30P140 U73 ( .A1(n138), .A2(clk_cnt[13]), .B1(n47), .B2(n27), 
        .Z(N87) );
  NR2D0BWP12T30P140 U74 ( .A1(filter_cnt[1]), .A2(filter_cnt[0]), .ZN(n99) );
  INVD0BWP12T30P140 U75 ( .I(n99), .ZN(n29) );
  AOI21D0BWP12T30P140 U76 ( .A1(filter_cnt[2]), .A2(n29), .B(n28), .ZN(n30) );
  MOAI22D0BWP12T30P140 U77 ( .A1(n30), .A2(n139), .B1(n138), .B2(clk_cnt[4]), 
        .ZN(N78) );
  NR3D0BWP12T30P140 U78 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n106) );
  INVD0BWP12T30P140 U79 ( .I(n106), .ZN(n132) );
  NR3D0BWP12T30P140 U80 ( .A1(cnt[4]), .A2(cnt[3]), .A3(n132), .ZN(n140) );
  INVD0BWP12T30P140 U81 ( .I(n140), .ZN(n143) );
  NR3D0BWP12T30P140 U82 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n143), .ZN(n150) );
  INVD0BWP12T30P140 U83 ( .I(n150), .ZN(n154) );
  NR3D0BWP12T30P140 U84 ( .A1(cnt[8]), .A2(cnt[7]), .A3(n154), .ZN(n119) );
  INVD0BWP12T30P140 U85 ( .I(n119), .ZN(n122) );
  NR3D0BWP12T30P140 U86 ( .A1(cnt[10]), .A2(cnt[9]), .A3(n122), .ZN(n144) );
  INVD0BWP12T30P140 U87 ( .I(n144), .ZN(n147) );
  NR3D0BWP12T30P140 U88 ( .A1(cnt[12]), .A2(cnt[11]), .A3(n147), .ZN(n96) );
  INVD0BWP12T30P140 U89 ( .I(cnt[13]), .ZN(n63) );
  ND2D0BWP12T30P140 U90 ( .A1(n96), .A2(n63), .ZN(n98) );
  INVD0BWP12T30P140 U91 ( .I(sSCL), .ZN(n159) );
  ND2D0BWP12T30P140 U92 ( .A1(ena), .A2(n156), .ZN(n31) );
  AOI31D0BWP12T30P140 U93 ( .A1(scl_oen), .A2(dSCL), .A3(n159), .B(n31), .ZN(
        n32) );
  OA31D0BWP12T30P140 U94 ( .A1(cnt[15]), .A2(cnt[14]), .A3(n98), .B(n32), .Z(
        n129) );
  INVD0BWP12T30P140 U95 ( .I(n129), .ZN(n165) );
  INVD0BWP12T30P140 U96 ( .I(slave_wait), .ZN(n149) );
  ND2D0BWP12T30P140 U97 ( .A1(n149), .A2(n129), .ZN(n153) );
  ND2D0BWP12T30P140 U98 ( .A1(slave_wait), .A2(n129), .ZN(n117) );
  OAI21D0BWP12T30P140 U99 ( .A1(n96), .A2(n153), .B(n117), .ZN(n33) );
  AOI22D0BWP12T30P140 U100 ( .A1(clk_cnt[13]), .A2(n165), .B1(cnt[13]), .B2(
        n33), .ZN(n34) );
  OAI21D0BWP12T30P140 U101 ( .A1(n98), .A2(n153), .B(n34), .ZN(n72) );
  OA31D0BWP12T30P140 U102 ( .A1(slave_wait), .A2(cnt[5]), .A3(n143), .B(n129), 
        .Z(n35) );
  AOI22D0BWP12T30P140 U103 ( .A1(clk_cnt[6]), .A2(n165), .B1(cnt[6]), .B2(n35), 
        .ZN(n36) );
  OAI21D0BWP12T30P140 U104 ( .A1(n154), .A2(n153), .B(n36), .ZN(n79) );
  OA31D0BWP12T30P140 U105 ( .A1(slave_wait), .A2(cnt[7]), .A3(n154), .B(n129), 
        .Z(n37) );
  AOI22D0BWP12T30P140 U106 ( .A1(clk_cnt[8]), .A2(n165), .B1(cnt[8]), .B2(n37), 
        .ZN(n38) );
  OAI21D0BWP12T30P140 U107 ( .A1(n122), .A2(n153), .B(n38), .ZN(n77) );
  OA31D0BWP12T30P140 U108 ( .A1(slave_wait), .A2(cnt[9]), .A3(n122), .B(n129), 
        .Z(n39) );
  AOI22D0BWP12T30P140 U109 ( .A1(clk_cnt[10]), .A2(n165), .B1(cnt[10]), .B2(
        n39), .ZN(n40) );
  OAI21D0BWP12T30P140 U110 ( .A1(n147), .A2(n153), .B(n40), .ZN(n75) );
  INVD0BWP12T30P140 U111 ( .I(n153), .ZN(n115) );
  OA31D0BWP12T30P140 U112 ( .A1(slave_wait), .A2(cnt[11]), .A3(n147), .B(n129), 
        .Z(n41) );
  AO222D0BWP12T30P140 U113 ( .A1(n115), .A2(n96), .B1(clk_cnt[12]), .B2(n165), 
        .C1(cnt[12]), .C2(n41), .Z(n73) );
  AOI221D0BWP12T30P140 U114 ( .A1(dscl_oen), .A2(n149), .B1(n42), .B2(n149), 
        .C(sSCL), .ZN(N13) );
  AOI21D0BWP12T30P140 U115 ( .A1(filter_cnt[12]), .A2(n43), .B(n62), .ZN(n44)
         );
  MOAI22D0BWP12T30P140 U116 ( .A1(n44), .A2(n139), .B1(n138), .B2(clk_cnt[14]), 
        .ZN(N88) );
  OAI21D0BWP12T30P140 U117 ( .A1(n109), .A2(n45), .B(n113), .ZN(n46) );
  AO22D0BWP12T30P140 U118 ( .A1(n138), .A2(clk_cnt[11]), .B1(n47), .B2(n46), 
        .Z(N85) );
  INVD0BWP12T30P140 U119 ( .I(cmd[1]), .ZN(n49) );
  AOI31D0BWP12T30P140 U120 ( .A1(n50), .A2(cmd[0]), .A3(n49), .B(n48), .ZN(n53) );
  OAI21D0BWP12T30P140 U121 ( .A1(n59), .A2(n161), .B(n51), .ZN(n52) );
  OAI32D0BWP12T30P140 U122 ( .A1(c_state[0]), .A2(n53), .A3(n52), .B1(n164), 
        .B2(n162), .ZN(n95) );
  AO21D0BWP12T30P140 U123 ( .A1(n162), .A2(n124), .B(n54), .Z(n58) );
  ND2D0BWP12T30P140 U124 ( .A1(c_state[1]), .A2(c_state[0]), .ZN(n55) );
  AOI31D0BWP12T30P140 U125 ( .A1(n56), .A2(n161), .A3(n55), .B(n54), .ZN(n57)
         );
  AOI21D0BWP12T30P140 U126 ( .A1(n59), .A2(n58), .B(n57), .ZN(n94) );
  ND3D0BWP12T30P140 U127 ( .A1(n156), .A2(ena), .A3(filter_cnt[13]), .ZN(n61)
         );
  INVD0BWP12T30P140 U128 ( .I(clk_cnt[15]), .ZN(n105) );
  OAI22D0BWP12T30P140 U129 ( .A1(n62), .A2(n61), .B1(n105), .B2(n60), .ZN(N89)
         );
  AOI31D0BWP12T30P140 U130 ( .A1(n96), .A2(n149), .A3(n63), .B(n165), .ZN(n103) );
  AOI22D0BWP12T30P140 U131 ( .A1(clk_cnt[14]), .A2(n165), .B1(cnt[14]), .B2(
        n103), .ZN(n97) );
  OAI31D0BWP12T30P140 U132 ( .A1(cnt[14]), .A2(n98), .A3(n153), .B(n97), .ZN(
        n86) );
  AOI21D0BWP12T30P140 U133 ( .A1(filter_cnt[0]), .A2(filter_cnt[1]), .B(n99), 
        .ZN(n100) );
  MOAI22D0BWP12T30P140 U134 ( .A1(n100), .A2(n139), .B1(n138), .B2(clk_cnt[3]), 
        .ZN(N77) );
  INVD0BWP12T30P140 U135 ( .I(cnt[0]), .ZN(n118) );
  INVD0BWP12T30P140 U136 ( .I(n129), .ZN(n148) );
  AOI21D0BWP12T30P140 U137 ( .A1(n149), .A2(n118), .B(n148), .ZN(n101) );
  AOI22D0BWP12T30P140 U138 ( .A1(cnt[1]), .A2(n101), .B1(clk_cnt[1]), .B2(n165), .ZN(n102) );
  OAI31D0BWP12T30P140 U139 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n153), .B(n102), 
        .ZN(n84) );
  AOI32D0BWP12T30P140 U140 ( .A1(cnt[14]), .A2(cnt[15]), .A3(n115), .B1(n103), 
        .B2(cnt[15]), .ZN(n104) );
  OAI21D0BWP12T30P140 U141 ( .A1(n129), .A2(n105), .B(n104), .ZN(n71) );
  AOI21D0BWP12T30P140 U142 ( .A1(n106), .A2(n149), .B(n148), .ZN(n107) );
  AOI22D0BWP12T30P140 U143 ( .A1(clk_cnt[3]), .A2(n165), .B1(cnt[3]), .B2(n107), .ZN(n108) );
  OAI31D0BWP12T30P140 U144 ( .A1(cnt[3]), .A2(n132), .A3(n153), .B(n108), .ZN(
        n82) );
  AOI21D0BWP12T30P140 U145 ( .A1(filter_cnt[8]), .A2(n110), .B(n109), .ZN(n111) );
  MOAI22D0BWP12T30P140 U146 ( .A1(n111), .A2(n139), .B1(n138), .B2(clk_cnt[10]), .ZN(N84) );
  AOI21D0BWP12T30P140 U147 ( .A1(filter_cnt[10]), .A2(n113), .B(n112), .ZN(
        n114) );
  MOAI22D0BWP12T30P140 U148 ( .A1(n114), .A2(n139), .B1(n138), .B2(clk_cnt[12]), .ZN(N86) );
  AOI22D0BWP12T30P140 U149 ( .A1(clk_cnt[0]), .A2(n165), .B1(n115), .B2(n118), 
        .ZN(n116) );
  OAI21D0BWP12T30P140 U150 ( .A1(n118), .A2(n117), .B(n116), .ZN(n85) );
  AOI21D0BWP12T30P140 U151 ( .A1(n119), .A2(n149), .B(n148), .ZN(n120) );
  AOI22D0BWP12T30P140 U152 ( .A1(clk_cnt[9]), .A2(n165), .B1(cnt[9]), .B2(n120), .ZN(n121) );
  OAI31D0BWP12T30P140 U153 ( .A1(cnt[9]), .A2(n122), .A3(n153), .B(n121), .ZN(
        n76) );
  NR2D0BWP12T30P140 U154 ( .A1(dSCL), .A2(n159), .ZN(n123) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(dout), .I1(sSDA), .S(n123), .Z(n64) );
  AOI211D0BWP12T30P140 U156 ( .A1(n124), .A2(n161), .B(c_state[1]), .C(
        c_state[0]), .ZN(n125) );
  AOI31D0BWP12T30P140 U157 ( .A1(c_state[0]), .A2(c_state[1]), .A3(n161), .B(
        n125), .ZN(n126) );
  OAI22D0BWP12T30P140 U158 ( .A1(n126), .A2(n163), .B1(n161), .B2(n164), .ZN(
        n93) );
  OA31D0BWP12T30P140 U159 ( .A1(slave_wait), .A2(cnt[3]), .A3(n132), .B(n129), 
        .Z(n127) );
  AOI22D0BWP12T30P140 U160 ( .A1(clk_cnt[4]), .A2(n165), .B1(cnt[4]), .B2(n127), .ZN(n128) );
  OAI21D0BWP12T30P140 U161 ( .A1(n143), .A2(n153), .B(n128), .ZN(n81) );
  OA31D0BWP12T30P140 U162 ( .A1(slave_wait), .A2(cnt[0]), .A3(cnt[1]), .B(n129), .Z(n130) );
  AOI22D0BWP12T30P140 U163 ( .A1(clk_cnt[2]), .A2(n165), .B1(cnt[2]), .B2(n130), .ZN(n131) );
  OAI21D0BWP12T30P140 U164 ( .A1(n132), .A2(n153), .B(n131), .ZN(n83) );
  ND2D0BWP12T30P140 U165 ( .A1(n133), .A2(n162), .ZN(n134) );
  OAI31D0BWP12T30P140 U166 ( .A1(c_state[4]), .A2(c_state[3]), .A3(n134), .B(
        sto_condition), .ZN(n137) );
  ND3D0BWP12T30P140 U167 ( .A1(sda_oen), .A2(sda_chk), .A3(n135), .ZN(n136) );
  OAI31D0BWP12T30P140 U168 ( .A1(n160), .A2(cmd_stop), .A3(n137), .B(n136), 
        .ZN(N122) );
  MOAI22D0BWP12T30P140 U169 ( .A1(filter_cnt[0]), .A2(n139), .B1(clk_cnt[2]), 
        .B2(n138), .ZN(N76) );
  AOI21D0BWP12T30P140 U170 ( .A1(n140), .A2(n149), .B(n148), .ZN(n141) );
  AOI22D0BWP12T30P140 U171 ( .A1(clk_cnt[5]), .A2(n165), .B1(cnt[5]), .B2(n141), .ZN(n142) );
  OAI31D0BWP12T30P140 U172 ( .A1(cnt[5]), .A2(n143), .A3(n153), .B(n142), .ZN(
        n80) );
  AOI21D0BWP12T30P140 U173 ( .A1(n144), .A2(n149), .B(n148), .ZN(n145) );
  AOI22D0BWP12T30P140 U174 ( .A1(clk_cnt[11]), .A2(n165), .B1(cnt[11]), .B2(
        n145), .ZN(n146) );
  OAI31D0BWP12T30P140 U175 ( .A1(cnt[11]), .A2(n147), .A3(n153), .B(n146), 
        .ZN(n74) );
  AOI21D0BWP12T30P140 U176 ( .A1(n150), .A2(n149), .B(n148), .ZN(n151) );
  AOI22D0BWP12T30P140 U177 ( .A1(clk_cnt[7]), .A2(n165), .B1(cnt[7]), .B2(n151), .ZN(n152) );
  OAI31D0BWP12T30P140 U178 ( .A1(cnt[7]), .A2(n154), .A3(n153), .B(n152), .ZN(
        n78) );
  CKBD0BWP12T30P140 U179 ( .I(clk), .Z(n170) );
  CKBD0BWP12T30P140 U180 ( .I(clk), .Z(n171) );
  CKBD0BWP12T30P140 U181 ( .I(clk), .Z(n169) );
  CKBD0BWP12T30P140 U182 ( .I(nReset), .Z(n167) );
  CKBD0BWP12T30P140 U183 ( .I(nReset), .Z(n166) );
  CKBD0BWP12T30P140 U184 ( .I(nReset), .Z(n168) );
  MAOI222D0BWP12T30P140 U185 ( .A(fSCL[0]), .B(fSCL[1]), .C(fSCL[2]), .ZN(n155) );
  ND2D0BWP12T30P140 U186 ( .A1(n155), .A2(n156), .ZN(N106) );
  ND2D0BWP12T30P140 U187 ( .A1(n156), .A2(n159), .ZN(N108) );
  MAOI222D0BWP12T30P140 U188 ( .A(fSDA[0]), .B(fSDA[2]), .C(fSDA[1]), .ZN(n157) );
  ND2D0BWP12T30P140 U189 ( .A1(n157), .A2(n156), .ZN(N107) );
  NR2D0BWP12T30P140 U190 ( .A1(busy), .A2(sta_condition), .ZN(n158) );
  NR3D0BWP12T30P140 U191 ( .A1(n158), .A2(n160), .A3(sto_condition), .ZN(N115)
         );
  INR4D0BWP12T30P140 U192 ( .A1(sSDA), .B1(n160), .B2(dSDA), .B3(n159), .ZN(
        N113) );
  INR3D1BWP12T30P140 U193 ( .A1(dSDA), .B1(n159), .B2(N109), .ZN(N112) );
  INR2D1BWP12T30P140 U194 ( .A1(sda_i), .B1(n160), .ZN(N56) );
  INR2D1BWP12T30P140 U195 ( .A1(cSDA[0]), .B1(n160), .ZN(N57) );
  INR2D1BWP12T30P140 U196 ( .A1(scl_i), .B1(n160), .ZN(N54) );
  INR2D1BWP12T30P140 U197 ( .A1(cSCL[0]), .B1(n160), .ZN(N55) );
  NR4D0BWP12T30P140 U198 ( .A1(c_state[1]), .A2(n163), .A3(n162), .A4(n161), 
        .ZN(N172) );
  INR2D1BWP12T30P140 U199 ( .A1(c_state[3]), .B1(n164), .ZN(n92) );
  INR2D1BWP12T30P140 U200 ( .A1(c_state[4]), .B1(n164), .ZN(n91) );
  INR2D1BWP12T30P140 U201 ( .A1(sda_chk), .B1(n164), .ZN(n90) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   core_ack, core_rxd, ld, shift, N111, N112, N113, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n72, n73, n74, n75, n76,
         n77, n78, n79;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [2:0] c_state;

  i2c_master_bit_ctrl bit_controller ( .clk(n78), .rst(rst), .nReset(n76), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .dout(core_rxd), .scl_i(scl_i), 
        .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen) );
  DFCNQD1BWP12T30P140 core_cmd_reg_3_ ( .D(n61), .CP(n79), .CDN(n76), .Q(
        core_cmd[3]) );
  DFCNQD1BWP12T30P140 ack_out_reg ( .D(n70), .CP(n79), .CDN(n76), .Q(ack_out)
         );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n68), .CP(n79), .CDN(n76), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 dcnt_reg_0_ ( .D(n65), .CP(n79), .CDN(n76), .Q(dcnt[0])
         );
  DFCNQD1BWP12T30P140 ld_reg ( .D(N112), .CP(n79), .CDN(n76), .Q(ld) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n69), .CP(n79), .CDN(n76), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n67), .CP(n79), .CDN(n76), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 sr_reg_7_ ( .D(n53), .CP(n78), .CDN(n77), .Q(dout[7]) );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N113), .CP(n78), .CDN(n76), .Q(cmd_ack)
         );
  DFCNQD1BWP12T30P140 core_cmd_reg_2_ ( .D(n62), .CP(n78), .CDN(n76), .Q(
        core_cmd[2]) );
  DFCNQD1BWP12T30P140 shift_reg ( .D(N111), .CP(n78), .CDN(n76), .Q(shift) );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(n60), .CP(n78), .CDN(n76), .Q(dout[0]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(n59), .CP(n78), .CDN(n77), .Q(dout[1]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(n58), .CP(n78), .CDN(n77), .Q(dout[2]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(n57), .CP(n78), .CDN(n77), .Q(dout[3]) );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(n56), .CP(n78), .CDN(n77), .Q(dout[4]) );
  DFCNQD1BWP12T30P140 sr_reg_5_ ( .D(n55), .CP(n78), .CDN(n77), .Q(dout[5]) );
  DFCNQD1BWP12T30P140 sr_reg_6_ ( .D(n54), .CP(n78), .CDN(n77), .Q(dout[6]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_0_ ( .D(n64), .CP(n78), .CDN(n76), .Q(
        core_cmd[0]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_1_ ( .D(n63), .CP(n78), .CDN(n76), .Q(
        core_cmd[1]) );
  DFCNQD1BWP12T30P140 dcnt_reg_2_ ( .D(n71), .CP(n78), .CDN(n76), .Q(dcnt[2])
         );
  DFCNQD1BWP12T30P140 dcnt_reg_1_ ( .D(n66), .CP(n78), .CDN(n76), .Q(dcnt[1])
         );
  NR3D0BWP12T30P140 U3 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(dcnt[2]), .ZN(n7) );
  INVD0BWP12T30P140 U4 ( .I(n7), .ZN(n33) );
  NR2D0BWP12T30P140 U5 ( .A1(rst), .A2(ld), .ZN(n1) );
  ND2D0BWP12T30P140 U6 ( .A1(shift), .A2(n1), .ZN(n18) );
  INR2D1BWP12T30P140 U7 ( .A1(ld), .B1(rst), .ZN(n50) );
  INVD0BWP12T30P140 U8 ( .I(n50), .ZN(n10) );
  INVD0BWP12T30P140 U9 ( .I(n18), .ZN(n49) );
  INVD0BWP12T30P140 U10 ( .I(dcnt[0]), .ZN(n12) );
  NR3D0BWP12T30P140 U11 ( .A1(rst), .A2(ld), .A3(shift), .ZN(n48) );
  INVD0BWP12T30P140 U12 ( .I(n48), .ZN(n11) );
  OAI21D0BWP12T30P140 U13 ( .A1(n12), .A2(n18), .B(n11), .ZN(n16) );
  AOI32D0BWP12T30P140 U14 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(n49), .B1(n16), 
        .B2(dcnt[2]), .ZN(n2) );
  OAI211D0BWP12T30P140 U15 ( .A1(n33), .A2(n18), .B(n10), .C(n2), .ZN(n71) );
  AO222D0BWP12T30P140 U16 ( .A1(n50), .A2(din[3]), .B1(n49), .B2(dout[2]), 
        .C1(dout[3]), .C2(n48), .Z(n57) );
  AO222D0BWP12T30P140 U17 ( .A1(n50), .A2(din[4]), .B1(n49), .B2(dout[3]), 
        .C1(dout[4]), .C2(n48), .Z(n56) );
  INVD0BWP12T30P140 U18 ( .I(start), .ZN(n47) );
  INVD0BWP12T30P140 U19 ( .I(read), .ZN(n14) );
  INVD0BWP12T30P140 U20 ( .I(c_state[1]), .ZN(n23) );
  INVD0BWP12T30P140 U21 ( .I(c_state[2]), .ZN(n39) );
  INVD0BWP12T30P140 U22 ( .I(c_state[0]), .ZN(n72) );
  ND3D0BWP12T30P140 U23 ( .A1(n23), .A2(n39), .A3(n72), .ZN(n5) );
  NR2D0BWP12T30P140 U24 ( .A1(rst), .A2(i2c_al), .ZN(n19) );
  INVD0BWP12T30P140 U25 ( .I(n19), .ZN(n40) );
  NR2D0BWP12T30P140 U26 ( .A1(n5), .A2(n40), .ZN(n44) );
  ND3D0BWP12T30P140 U27 ( .A1(n47), .A2(n14), .A3(n44), .ZN(n25) );
  INVD0BWP12T30P140 U28 ( .I(n25), .ZN(n3) );
  NR3D0BWP12T30P140 U29 ( .A1(c_state[2]), .A2(n40), .A3(n23), .ZN(n34) );
  INVD0BWP12T30P140 U30 ( .I(n34), .ZN(n74) );
  NR2D0BWP12T30P140 U31 ( .A1(n33), .A2(n74), .ZN(n28) );
  AO22D0BWP12T30P140 U32 ( .A1(n3), .A2(write), .B1(n28), .B2(n72), .Z(n8) );
  NR2D0BWP12T30P140 U33 ( .A1(read), .A2(write), .ZN(n20) );
  INVD0BWP12T30P140 U34 ( .I(stop), .ZN(n4) );
  AOI21D0BWP12T30P140 U35 ( .A1(n20), .A2(n4), .B(cmd_ack), .ZN(n45) );
  MUX2ND0BWP12T30P140 U36 ( .I0(n45), .I1(core_ack), .S(n5), .ZN(n30) );
  ND2D0BWP12T30P140 U37 ( .A1(n30), .A2(n19), .ZN(n37) );
  INVD0BWP12T30P140 U38 ( .I(n37), .ZN(n46) );
  OAI211D0BWP12T30P140 U39 ( .A1(c_state[1]), .A2(n14), .B(c_state[0]), .C(n39), .ZN(n6) );
  AOI211D0BWP12T30P140 U40 ( .A1(c_state[1]), .A2(n7), .B(n40), .C(n6), .ZN(
        n13) );
  OA32D0BWP12T30P140 U41 ( .A1(n8), .A2(n46), .A3(n13), .B1(n37), .B2(
        core_cmd[2]), .Z(n62) );
  ND2D0BWP12T30P140 U42 ( .A1(n49), .A2(n12), .ZN(n9) );
  OAI211D0BWP12T30P140 U43 ( .A1(n12), .A2(n11), .B(n10), .C(n9), .ZN(n65) );
  AOI221D0BWP12T30P140 U44 ( .A1(start), .A2(n44), .B1(n14), .B2(n44), .C(n13), 
        .ZN(n15) );
  ND4D0BWP12T30P140 U45 ( .A1(c_state[2]), .A2(stop), .A3(n19), .A4(n72), .ZN(
        n24) );
  AOI32D0BWP12T30P140 U46 ( .A1(n15), .A2(n37), .A3(n24), .B1(n46), .B2(n72), 
        .ZN(n69) );
  AOI21D0BWP12T30P140 U47 ( .A1(dcnt[1]), .A2(n16), .B(n50), .ZN(n17) );
  OAI31D0BWP12T30P140 U48 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(n18), .B(n17), 
        .ZN(n66) );
  AO222D0BWP12T30P140 U49 ( .A1(n50), .A2(din[2]), .B1(n49), .B2(dout[1]), 
        .C1(dout[2]), .C2(n48), .Z(n58) );
  ND3D0BWP12T30P140 U50 ( .A1(n23), .A2(n39), .A3(n19), .ZN(n52) );
  INVD0BWP12T30P140 U51 ( .I(n52), .ZN(n32) );
  OAI21D0BWP12T30P140 U52 ( .A1(n20), .A2(start), .B(n72), .ZN(n21) );
  AOI22D0BWP12T30P140 U53 ( .A1(n32), .A2(n21), .B1(n34), .B2(n33), .ZN(n22)
         );
  AOI22D0BWP12T30P140 U54 ( .A1(n46), .A2(n23), .B1(n22), .B2(n37), .ZN(n68)
         );
  AO222D0BWP12T30P140 U55 ( .A1(n50), .A2(din[5]), .B1(n49), .B2(dout[4]), 
        .C1(dout[5]), .C2(n48), .Z(n55) );
  OAI21D0BWP12T30P140 U56 ( .A1(write), .A2(n25), .B(n24), .ZN(n27) );
  INVD0BWP12T30P140 U57 ( .I(n27), .ZN(n26) );
  MOAI22D0BWP12T30P140 U58 ( .A1(n30), .A2(n26), .B1(core_cmd[1]), .B2(n46), 
        .ZN(n63) );
  NR2D0BWP12T30P140 U59 ( .A1(n28), .A2(n27), .ZN(n29) );
  OAI22D0BWP12T30P140 U60 ( .A1(n30), .A2(n29), .B1(n39), .B2(n37), .ZN(n67)
         );
  ND2D0BWP12T30P140 U61 ( .A1(core_ack), .A2(c_state[2]), .ZN(n31) );
  AOI211D0BWP12T30P140 U62 ( .A1(stop), .A2(n72), .B(n40), .C(n31), .ZN(N113)
         );
  AO222D0BWP12T30P140 U63 ( .A1(n50), .A2(din[1]), .B1(n49), .B2(dout[0]), 
        .C1(dout[1]), .C2(n48), .Z(n59) );
  OAI211D0BWP12T30P140 U64 ( .A1(c_state[0]), .A2(n47), .B(read), .C(n32), 
        .ZN(n38) );
  NR2D0BWP12T30P140 U65 ( .A1(n72), .A2(n33), .ZN(n75) );
  AOI32D0BWP12T30P140 U66 ( .A1(n72), .A2(n34), .A3(n33), .B1(n75), .B2(n34), 
        .ZN(n36) );
  INVD0BWP12T30P140 U67 ( .I(core_cmd[3]), .ZN(n35) );
  AOI32D0BWP12T30P140 U68 ( .A1(n38), .A2(n37), .A3(n36), .B1(n46), .B2(n35), 
        .ZN(n61) );
  AO222D0BWP12T30P140 U69 ( .A1(n50), .A2(din[0]), .B1(n49), .B2(core_rxd), 
        .C1(dout[0]), .C2(n48), .Z(n60) );
  INVD0BWP12T30P140 U70 ( .I(core_rxd), .ZN(n43) );
  INVD0BWP12T30P140 U71 ( .I(core_ack), .ZN(n73) );
  NR3D0BWP12T30P140 U72 ( .A1(c_state[0]), .A2(n39), .A3(n73), .ZN(n42) );
  NR2D0BWP12T30P140 U73 ( .A1(n42), .A2(ack_out), .ZN(n41) );
  AOI211D0BWP12T30P140 U74 ( .A1(n43), .A2(n42), .B(n41), .C(n40), .ZN(n70) );
  AO222D0BWP12T30P140 U75 ( .A1(n50), .A2(din[6]), .B1(n49), .B2(dout[5]), 
        .C1(dout[6]), .C2(n48), .Z(n54) );
  ND2D0BWP12T30P140 U76 ( .A1(n45), .A2(n44), .ZN(n51) );
  MOAI22D0BWP12T30P140 U77 ( .A1(n47), .A2(n51), .B1(n46), .B2(core_cmd[0]), 
        .ZN(n64) );
  AO222D0BWP12T30P140 U78 ( .A1(n50), .A2(din[7]), .B1(n49), .B2(dout[6]), 
        .C1(dout[7]), .C2(n48), .Z(n53) );
  OAI31D0BWP12T30P140 U79 ( .A1(n72), .A2(n73), .A3(n52), .B(n51), .ZN(N112)
         );
  CKBD0BWP12T30P140 U80 ( .I(clk), .Z(n79) );
  CKBD0BWP12T30P140 U81 ( .I(clk), .Z(n78) );
  CKBD0BWP12T30P140 U82 ( .I(nReset), .Z(n76) );
  CKBD0BWP12T30P140 U83 ( .I(nReset), .Z(n77) );
  NR3D0BWP12T30P140 U84 ( .A1(n75), .A2(n74), .A3(n73), .ZN(N111) );
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
  DFCNQD1BWP12T30P140 cr_reg_3_ ( .D(n117), .CP(n262), .CDN(n259), .Q(cr[3])
         );
  DFCNQD1BWP12T30P140 irq_flag_reg ( .D(N117), .CP(n262), .CDN(n259), .Q(sr_0)
         );
  DFCNQD1BWP12T30P140 txr_reg_7_ ( .D(n141), .CP(n261), .CDN(n259), .Q(txr[7])
         );
  DFCNQD1BWP12T30P140 txr_reg_6_ ( .D(n140), .CP(n261), .CDN(n260), .Q(txr[6])
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
  DFCNQD1BWP12T30P140 cr_reg_6_ ( .D(n114), .CP(n262), .CDN(n259), .Q(cr[6])
         );
  DFCNQD1BWP12T30P140 cr_reg_7_ ( .D(n113), .CP(n262), .CDN(n259), .Q(cr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_5_ ( .D(n115), .CP(n262), .CDN(n259), .Q(cr[5])
         );
  DFCNQD1BWP12T30P140 cr_reg_4_ ( .D(n116), .CP(n262), .CDN(n259), .Q(cr[4])
         );
  DFCNQD1BWP12T30P140 ctr_reg_7_ ( .D(n149), .CP(n261), .CDN(n260), .Q(ctr[7])
         );
  DFQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(N43), .CP(n261), .Q(wb_dat_o[0]) );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(N20), .CP(n261), .Q(wb_ack_o) );
  TIEHBWP12T30P140 U166 ( .Z(n155) );
  INVD0BWP12T30P140 U167 ( .I(n155), .ZN(sda_pad_o) );
  INVD0BWP12T30P140 U168 ( .I(n155), .ZN(scl_pad_o) );
  INVD0BWP12T30P140 U169 ( .I(wb_dat_i[7]), .ZN(n195) );
  INVD0BWP12T30P140 U170 ( .I(wb_adr_i[0]), .ZN(n157) );
  NR2D0BWP12T30P140 U171 ( .A1(wb_adr_i[1]), .A2(n157), .ZN(n243) );
  ND2D0BWP12T30P140 U172 ( .A1(wb_ack_o), .A2(wb_we_i), .ZN(n159) );
  INVD0BWP12T30P140 U173 ( .I(wb_rst_i), .ZN(n169) );
  OAI21D0BWP12T30P140 U174 ( .A1(n159), .A2(wb_adr_i[2]), .B(n169), .ZN(n193)
         );
  ND2D0BWP12T30P140 U175 ( .A1(n243), .A2(n193), .ZN(n214) );
  INVD0BWP12T30P140 U176 ( .I(n169), .ZN(n253) );
  AOI21D0BWP12T30P140 U177 ( .A1(prer[15]), .A2(n214), .B(n253), .ZN(n156) );
  OAI21D0BWP12T30P140 U178 ( .A1(n195), .A2(n214), .B(n156), .ZN(n133) );
  ND2D0BWP12T30P140 U179 ( .A1(wb_adr_i[1]), .A2(n157), .ZN(n232) );
  INVD0BWP12T30P140 U180 ( .I(n193), .ZN(n164) );
  AOI21D0BWP12T30P140 U181 ( .A1(n169), .A2(n232), .B(n164), .ZN(n212) );
  INVD0BWP12T30P140 U182 ( .I(ctr[7]), .ZN(n158) );
  ND2D0BWP12T30P140 U183 ( .A1(n212), .A2(n169), .ZN(n210) );
  OAI22D0BWP12T30P140 U184 ( .A1(n212), .A2(n158), .B1(n195), .B2(n210), .ZN(
        n149) );
  INVD0BWP12T30P140 U185 ( .I(wb_dat_i[4]), .ZN(n238) );
  NR2D0BWP12T30P140 U186 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n242) );
  ND3D0BWP12T30P140 U187 ( .A1(wb_adr_i[2]), .A2(ctr[7]), .A3(n242), .ZN(n170)
         );
  NR2D0BWP12T30P140 U188 ( .A1(n159), .A2(n170), .ZN(n160) );
  ND2D0BWP12T30P140 U189 ( .A1(n160), .A2(n169), .ZN(n192) );
  INVD0BWP12T30P140 U190 ( .I(n159), .ZN(n168) );
  NR2D0BWP12T30P140 U191 ( .A1(done), .A2(i2c_al), .ZN(n179) );
  NR2D0BWP12T30P140 U192 ( .A1(n253), .A2(n160), .ZN(n180) );
  OAI21D0BWP12T30P140 U193 ( .A1(n168), .A2(n179), .B(n180), .ZN(n162) );
  INVD0BWP12T30P140 U194 ( .I(cr[4]), .ZN(n231) );
  OAI22D0BWP12T30P140 U195 ( .A1(n238), .A2(n192), .B1(n162), .B2(n231), .ZN(
        n116) );
  INVD0BWP12T30P140 U196 ( .I(wb_dat_i[5]), .ZN(n229) );
  INVD0BWP12T30P140 U197 ( .I(cr[5]), .ZN(n230) );
  OAI22D0BWP12T30P140 U198 ( .A1(n229), .A2(n192), .B1(n162), .B2(n230), .ZN(
        n115) );
  INVD0BWP12T30P140 U199 ( .I(cr[7]), .ZN(n183) );
  OAI22D0BWP12T30P140 U200 ( .A1(n195), .A2(n192), .B1(n162), .B2(n183), .ZN(
        n113) );
  INVD0BWP12T30P140 U201 ( .I(wb_dat_i[6]), .ZN(n211) );
  INVD0BWP12T30P140 U202 ( .I(cr[6]), .ZN(n161) );
  OAI22D0BWP12T30P140 U203 ( .A1(n211), .A2(n192), .B1(n162), .B2(n161), .ZN(
        n114) );
  IND3D1BWP12T30P140 U204 ( .A1(wb_ack_o), .B1(wb_stb_i), .B2(wb_cyc_i), .ZN(
        n163) );
  INVD0BWP12T30P140 U205 ( .I(n163), .ZN(N20) );
  ND2D0BWP12T30P140 U206 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n185) );
  AOI21D0BWP12T30P140 U207 ( .A1(n169), .A2(n185), .B(n164), .ZN(n178) );
  INVD0BWP12T30P140 U208 ( .I(txr[0]), .ZN(n165) );
  INVD0BWP12T30P140 U209 ( .I(wb_dat_i[0]), .ZN(n216) );
  ND2D0BWP12T30P140 U210 ( .A1(n178), .A2(n169), .ZN(n176) );
  OAI22D0BWP12T30P140 U211 ( .A1(n178), .A2(n165), .B1(n216), .B2(n176), .ZN(
        n134) );
  INVD0BWP12T30P140 U212 ( .I(txr[1]), .ZN(n166) );
  INVD0BWP12T30P140 U213 ( .I(wb_dat_i[1]), .ZN(n256) );
  OAI22D0BWP12T30P140 U214 ( .A1(n178), .A2(n166), .B1(n256), .B2(n176), .ZN(
        n135) );
  INVD0BWP12T30P140 U215 ( .I(txr[5]), .ZN(n167) );
  OAI22D0BWP12T30P140 U216 ( .A1(n178), .A2(n167), .B1(n229), .B2(n176), .ZN(
        n139) );
  INVD0BWP12T30P140 U217 ( .I(cr[0]), .ZN(n171) );
  ND3D0BWP12T30P140 U218 ( .A1(n170), .A2(n169), .A3(n168), .ZN(n190) );
  OAI22D0BWP12T30P140 U219 ( .A1(n216), .A2(n192), .B1(n171), .B2(n190), .ZN(
        n110) );
  INVD0BWP12T30P140 U220 ( .I(txr[2]), .ZN(n172) );
  INVD0BWP12T30P140 U221 ( .I(wb_dat_i[2]), .ZN(n224) );
  OAI22D0BWP12T30P140 U222 ( .A1(n178), .A2(n172), .B1(n224), .B2(n176), .ZN(
        n136) );
  INVD0BWP12T30P140 U223 ( .I(txr[3]), .ZN(n173) );
  INVD0BWP12T30P140 U224 ( .I(wb_dat_i[3]), .ZN(n252) );
  OAI22D0BWP12T30P140 U225 ( .A1(n178), .A2(n173), .B1(n252), .B2(n176), .ZN(
        n137) );
  INVD0BWP12T30P140 U226 ( .I(txr[4]), .ZN(n174) );
  OAI22D0BWP12T30P140 U227 ( .A1(n178), .A2(n174), .B1(n238), .B2(n176), .ZN(
        n138) );
  INVD0BWP12T30P140 U228 ( .I(txr[6]), .ZN(n175) );
  OAI22D0BWP12T30P140 U229 ( .A1(n178), .A2(n175), .B1(n211), .B2(n176), .ZN(
        n140) );
  INVD0BWP12T30P140 U230 ( .I(txr[7]), .ZN(n177) );
  OAI22D0BWP12T30P140 U231 ( .A1(n178), .A2(n177), .B1(n195), .B2(n176), .ZN(
        n141) );
  INVD0BWP12T30P140 U232 ( .I(sr_0), .ZN(n257) );
  AOI211D0BWP12T30P140 U233 ( .A1(n179), .A2(n257), .B(n253), .C(cr[0]), .ZN(
        N117) );
  MOAI22D0BWP12T30P140 U234 ( .A1(n252), .A2(n192), .B1(n180), .B2(cr[3]), 
        .ZN(n117) );
  INVD0BWP12T30P140 U235 ( .I(ctr[1]), .ZN(n181) );
  OAI22D0BWP12T30P140 U236 ( .A1(n212), .A2(n181), .B1(n256), .B2(n210), .ZN(
        n143) );
  INVD0BWP12T30P140 U237 ( .I(cr[2]), .ZN(n182) );
  OAI22D0BWP12T30P140 U238 ( .A1(n224), .A2(n192), .B1(n182), .B2(n190), .ZN(
        n112) );
  AOI21D0BWP12T30P140 U239 ( .A1(sr[5]), .A2(n183), .B(i2c_al), .ZN(n184) );
  NR2D0BWP12T30P140 U240 ( .A1(n253), .A2(n184), .ZN(N114) );
  AOI22D0BWP12T30P140 U241 ( .A1(n243), .A2(prer[8]), .B1(n242), .B2(prer[0]), 
        .ZN(n188) );
  INVD0BWP12T30P140 U242 ( .I(wb_adr_i[2]), .ZN(n233) );
  INVD0BWP12T30P140 U243 ( .I(n232), .ZN(n247) );
  INVD0BWP12T30P140 U244 ( .I(n185), .ZN(n246) );
  AOI22D0BWP12T30P140 U245 ( .A1(n247), .A2(ctr[0]), .B1(n246), .B2(rxr[0]), 
        .ZN(n187) );
  AOI222D0BWP12T30P140 U246 ( .A1(n247), .A2(cr[0]), .B1(txr[0]), .B2(n243), 
        .C1(n242), .C2(sr_0), .ZN(n186) );
  AOI32D0BWP12T30P140 U247 ( .A1(n188), .A2(n233), .A3(n187), .B1(wb_adr_i[2]), 
        .B2(n186), .ZN(N43) );
  AOI21D0BWP12T30P140 U248 ( .A1(prer[14]), .A2(n214), .B(n253), .ZN(n189) );
  OAI21D0BWP12T30P140 U249 ( .A1(n211), .A2(n214), .B(n189), .ZN(n132) );
  INVD0BWP12T30P140 U250 ( .I(cr[1]), .ZN(n191) );
  OAI22D0BWP12T30P140 U251 ( .A1(n256), .A2(n192), .B1(n191), .B2(n190), .ZN(
        n111) );
  ND2D0BWP12T30P140 U252 ( .A1(n242), .A2(n193), .ZN(n255) );
  AOI21D0BWP12T30P140 U253 ( .A1(prer[7]), .A2(n255), .B(n253), .ZN(n194) );
  OAI21D0BWP12T30P140 U254 ( .A1(n195), .A2(n255), .B(n194), .ZN(n125) );
  INVD0BWP12T30P140 U255 ( .I(ctr[0]), .ZN(n196) );
  OAI22D0BWP12T30P140 U256 ( .A1(n212), .A2(n196), .B1(n216), .B2(n210), .ZN(
        n142) );
  AOI21D0BWP12T30P140 U257 ( .A1(prer[13]), .A2(n214), .B(n253), .ZN(n197) );
  OAI21D0BWP12T30P140 U258 ( .A1(n229), .A2(n214), .B(n197), .ZN(n131) );
  AOI21D0BWP12T30P140 U259 ( .A1(prer[6]), .A2(n255), .B(wb_rst_i), .ZN(n198)
         );
  OAI21D0BWP12T30P140 U260 ( .A1(n211), .A2(n255), .B(n198), .ZN(n124) );
  INVD0BWP12T30P140 U261 ( .I(ctr[2]), .ZN(n199) );
  OAI22D0BWP12T30P140 U262 ( .A1(n212), .A2(n199), .B1(n224), .B2(n210), .ZN(
        n144) );
  AOI21D0BWP12T30P140 U263 ( .A1(prer[12]), .A2(n214), .B(wb_rst_i), .ZN(n200)
         );
  OAI21D0BWP12T30P140 U264 ( .A1(n238), .A2(n214), .B(n200), .ZN(n130) );
  INVD0BWP12T30P140 U265 ( .I(ctr[3]), .ZN(n201) );
  OAI22D0BWP12T30P140 U266 ( .A1(n212), .A2(n201), .B1(n252), .B2(n210), .ZN(
        n145) );
  AOI21D0BWP12T30P140 U267 ( .A1(prer[11]), .A2(n214), .B(wb_rst_i), .ZN(n202)
         );
  OAI21D0BWP12T30P140 U268 ( .A1(n252), .A2(n214), .B(n202), .ZN(n129) );
  INVD0BWP12T30P140 U269 ( .I(ctr[4]), .ZN(n203) );
  OAI22D0BWP12T30P140 U270 ( .A1(n212), .A2(n203), .B1(n238), .B2(n210), .ZN(
        n146) );
  AOI22D0BWP12T30P140 U271 ( .A1(n243), .A2(prer[14]), .B1(n242), .B2(prer[6]), 
        .ZN(n206) );
  AOI22D0BWP12T30P140 U272 ( .A1(n247), .A2(ctr[6]), .B1(n246), .B2(rxr[6]), 
        .ZN(n205) );
  AOI222D0BWP12T30P140 U273 ( .A1(n247), .A2(cr[6]), .B1(txr[6]), .B2(n243), 
        .C1(n242), .C2(sr[6]), .ZN(n204) );
  AOI32D0BWP12T30P140 U274 ( .A1(n206), .A2(n233), .A3(n205), .B1(wb_adr_i[2]), 
        .B2(n204), .ZN(N49) );
  AOI21D0BWP12T30P140 U275 ( .A1(prer[10]), .A2(n214), .B(wb_rst_i), .ZN(n207)
         );
  OAI21D0BWP12T30P140 U276 ( .A1(n224), .A2(n214), .B(n207), .ZN(n128) );
  INVD0BWP12T30P140 U277 ( .I(ctr[5]), .ZN(n208) );
  OAI22D0BWP12T30P140 U278 ( .A1(n212), .A2(n208), .B1(n229), .B2(n210), .ZN(
        n147) );
  AOI21D0BWP12T30P140 U279 ( .A1(prer[9]), .A2(n214), .B(n253), .ZN(n209) );
  OAI21D0BWP12T30P140 U280 ( .A1(n256), .A2(n214), .B(n209), .ZN(n127) );
  INVD0BWP12T30P140 U281 ( .I(ctr[6]), .ZN(n258) );
  OAI22D0BWP12T30P140 U282 ( .A1(n212), .A2(n258), .B1(n211), .B2(n210), .ZN(
        n148) );
  AOI21D0BWP12T30P140 U283 ( .A1(prer[8]), .A2(n214), .B(wb_rst_i), .ZN(n213)
         );
  OAI21D0BWP12T30P140 U284 ( .A1(n216), .A2(n214), .B(n213), .ZN(n126) );
  AOI21D0BWP12T30P140 U285 ( .A1(prer[0]), .A2(n255), .B(n253), .ZN(n215) );
  OAI21D0BWP12T30P140 U286 ( .A1(n216), .A2(n255), .B(n215), .ZN(n118) );
  AOI22D0BWP12T30P140 U287 ( .A1(n243), .A2(prer[9]), .B1(n242), .B2(prer[1]), 
        .ZN(n219) );
  AOI22D0BWP12T30P140 U288 ( .A1(n247), .A2(ctr[1]), .B1(n246), .B2(rxr[1]), 
        .ZN(n218) );
  AOI222D0BWP12T30P140 U289 ( .A1(n247), .A2(cr[1]), .B1(txr[1]), .B2(n243), 
        .C1(n242), .C2(sr_1), .ZN(n217) );
  AOI32D0BWP12T30P140 U290 ( .A1(n219), .A2(n233), .A3(n218), .B1(wb_adr_i[2]), 
        .B2(n217), .ZN(N44) );
  AOI22D0BWP12T30P140 U291 ( .A1(n243), .A2(prer[15]), .B1(n242), .B2(prer[7]), 
        .ZN(n222) );
  AOI22D0BWP12T30P140 U292 ( .A1(n247), .A2(ctr[7]), .B1(n246), .B2(rxr[7]), 
        .ZN(n221) );
  AOI222D0BWP12T30P140 U293 ( .A1(n247), .A2(cr[7]), .B1(txr[7]), .B2(n243), 
        .C1(n242), .C2(sr[7]), .ZN(n220) );
  AOI32D0BWP12T30P140 U294 ( .A1(n222), .A2(n233), .A3(n221), .B1(wb_adr_i[2]), 
        .B2(n220), .ZN(N50) );
  AOI21D0BWP12T30P140 U295 ( .A1(prer[2]), .A2(n255), .B(wb_rst_i), .ZN(n223)
         );
  OAI21D0BWP12T30P140 U296 ( .A1(n224), .A2(n255), .B(n223), .ZN(n120) );
  AOI22D0BWP12T30P140 U297 ( .A1(n243), .A2(prer[13]), .B1(n242), .B2(prer[5]), 
        .ZN(n227) );
  AOI22D0BWP12T30P140 U298 ( .A1(n247), .A2(ctr[5]), .B1(n246), .B2(rxr[5]), 
        .ZN(n226) );
  AOI222D0BWP12T30P140 U299 ( .A1(n247), .A2(cr[5]), .B1(txr[5]), .B2(n243), 
        .C1(n242), .C2(sr[5]), .ZN(n225) );
  AOI32D0BWP12T30P140 U300 ( .A1(n227), .A2(n233), .A3(n226), .B1(wb_adr_i[2]), 
        .B2(n225), .ZN(N48) );
  AOI21D0BWP12T30P140 U301 ( .A1(prer[5]), .A2(n255), .B(n253), .ZN(n228) );
  OAI21D0BWP12T30P140 U302 ( .A1(n229), .A2(n255), .B(n228), .ZN(n123) );
  AOI21D0BWP12T30P140 U303 ( .A1(n231), .A2(n230), .B(n253), .ZN(N116) );
  AOI22D0BWP12T30P140 U304 ( .A1(n243), .A2(prer[10]), .B1(n242), .B2(prer[2]), 
        .ZN(n236) );
  AN2D0BWP12T30P140 U305 ( .A1(n243), .A2(wb_adr_i[2]), .Z(n245) );
  NR2D0BWP12T30P140 U306 ( .A1(n233), .A2(n232), .ZN(n244) );
  AOI22D0BWP12T30P140 U307 ( .A1(txr[2]), .A2(n245), .B1(cr[2]), .B2(n244), 
        .ZN(n235) );
  AOI22D0BWP12T30P140 U308 ( .A1(n247), .A2(ctr[2]), .B1(n246), .B2(rxr[2]), 
        .ZN(n234) );
  AOI32D0BWP12T30P140 U309 ( .A1(n236), .A2(n235), .A3(n234), .B1(wb_adr_i[2]), 
        .B2(n235), .ZN(n152) );
  AOI21D0BWP12T30P140 U310 ( .A1(prer[4]), .A2(n255), .B(wb_rst_i), .ZN(n237)
         );
  OAI21D0BWP12T30P140 U311 ( .A1(n238), .A2(n255), .B(n237), .ZN(n122) );
  AOI22D0BWP12T30P140 U312 ( .A1(n243), .A2(prer[11]), .B1(n242), .B2(prer[3]), 
        .ZN(n241) );
  AOI22D0BWP12T30P140 U313 ( .A1(txr[3]), .A2(n245), .B1(n244), .B2(cr[3]), 
        .ZN(n240) );
  AOI22D0BWP12T30P140 U314 ( .A1(n247), .A2(ctr[3]), .B1(n246), .B2(rxr[3]), 
        .ZN(n239) );
  AOI32D0BWP12T30P140 U315 ( .A1(n241), .A2(n240), .A3(n239), .B1(wb_adr_i[2]), 
        .B2(n240), .ZN(n151) );
  AOI22D0BWP12T30P140 U316 ( .A1(n243), .A2(prer[12]), .B1(n242), .B2(prer[4]), 
        .ZN(n250) );
  AOI22D0BWP12T30P140 U317 ( .A1(txr[4]), .A2(n245), .B1(cr[4]), .B2(n244), 
        .ZN(n249) );
  AOI22D0BWP12T30P140 U318 ( .A1(n247), .A2(ctr[4]), .B1(n246), .B2(rxr[4]), 
        .ZN(n248) );
  AOI32D0BWP12T30P140 U319 ( .A1(n250), .A2(n249), .A3(n248), .B1(wb_adr_i[2]), 
        .B2(n249), .ZN(n150) );
  AOI21D0BWP12T30P140 U320 ( .A1(prer[3]), .A2(n255), .B(wb_rst_i), .ZN(n251)
         );
  OAI21D0BWP12T30P140 U321 ( .A1(n252), .A2(n255), .B(n251), .ZN(n121) );
  AOI21D0BWP12T30P140 U322 ( .A1(prer[1]), .A2(n255), .B(n253), .ZN(n254) );
  OAI21D0BWP12T30P140 U323 ( .A1(n256), .A2(n255), .B(n254), .ZN(n119) );
  CKBD0BWP12T30P140 U324 ( .I(wb_clk_i), .Z(n262) );
  CKBD0BWP12T30P140 U325 ( .I(wb_clk_i), .Z(n261) );
  CKBD0BWP12T30P140 U326 ( .I(arst_i), .Z(n260) );
  CKBD0BWP12T30P140 U327 ( .I(arst_i), .Z(n259) );
  INR2D1BWP12T30P140 U328 ( .A1(irxack), .B1(wb_rst_i), .ZN(N115) );
  NR3D0BWP12T30P140 U329 ( .A1(wb_rst_i), .A2(n258), .A3(n257), .ZN(N121) );
endmodule

