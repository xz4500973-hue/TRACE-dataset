/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:22:27 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl ( clk, rst, nReset, clk_cnt, ena, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, sSCL, clk_en, N64, dSCL, dSDA, sSDA, N70, N71, N72, N73,
         sta_condition, sto_condition, N76, N77, N79, cmd_stop, sda_chk, N87,
         N175, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155;
  wire   [15:0] cnt;
  wire   [16:0] c_state;

  DFSNQD1BWP12T30P140 sSDA_reg ( .D(N71), .CP(n155), .SDN(n152), .Q(sSDA) );
  DFSNQD1BWP12T30P140 dSDA_reg ( .D(N73), .CP(n155), .SDN(n152), .Q(dSDA) );
  DFSNQD1BWP12T30P140 sSCL_reg ( .D(N70), .CP(n155), .SDN(n152), .Q(sSCL) );
  DFSNQD1BWP12T30P140 dSCL_reg ( .D(N72), .CP(n155), .SDN(n152), .Q(dSCL) );
  DFSNQD1BWP12T30P140 scl_oen_reg ( .D(n53), .CP(n155), .SDN(n152), .Q(scl_oen) );
  DFSNQD1BWP12T30P140 clk_en_reg ( .D(N64), .CP(n155), .SDN(n152), .Q(clk_en)
         );
  DFSNQD1BWP12T30P140 sda_oen_reg ( .D(n52), .CP(n155), .SDN(n152), .Q(sda_oen) );
  DFCNQD1BWP12T30P140 sta_condition_reg ( .D(N76), .CP(n155), .CDN(n152), .Q(
        sta_condition) );
  DFCNQD1BWP12T30P140 sda_chk_reg ( .D(n88), .CP(n154), .CDN(n151), .Q(sda_chk) );
  DFCNQD1BWP12T30P140 cmd_stop_reg ( .D(n71), .CP(n154), .CDN(n151), .Q(
        cmd_stop) );
  DFCNQD1BWP12T30P140 c_state_reg_14_ ( .D(n56), .CP(n153), .CDN(n150), .Q(
        c_state[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_15_ ( .D(n55), .CP(n153), .CDN(n150), .Q(
        c_state[15]) );
  DFCNQD1BWP12T30P140 busy_reg ( .D(N79), .CP(n155), .CDN(n151), .Q(busy) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n82), .CP(n155), .CDN(n152), .Q(cnt[4])
         );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n80), .CP(n155), .CDN(n152), .Q(cnt[6])
         );
  DFCNQD1BWP12T30P140 cnt_reg_8_ ( .D(n78), .CP(n155), .CDN(n152), .Q(cnt[8])
         );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N175), .CP(n153), .CDN(n150), .Q(
        cmd_ack) );
  DFCNQD1BWP12T30P140 cnt_reg_10_ ( .D(n76), .CP(n153), .CDN(n152), .Q(cnt[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_12_ ( .D(n74), .CP(n154), .CDN(n150), .Q(cnt[12]) );
  DFCNQD1BWP12T30P140 cnt_reg_15_ ( .D(n87), .CP(n153), .CDN(n150), .Q(cnt[15]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n66), .CP(n154), .CDN(n151), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 sto_condition_reg ( .D(N77), .CP(n155), .CDN(n151), .Q(
        sto_condition) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n84), .CP(n153), .CDN(n152), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 c_state_reg_5_ ( .D(n65), .CP(n154), .CDN(n151), .Q(
        c_state[5]) );
  DFCNQD1BWP12T30P140 c_state_reg_7_ ( .D(n63), .CP(n154), .CDN(n150), .Q(
        c_state[7]) );
  DFCNQD1BWP12T30P140 cnt_reg_14_ ( .D(n72), .CP(n154), .CDN(n151), .Q(cnt[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n68), .CP(n154), .CDN(n151), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 c_state_reg_6_ ( .D(n64), .CP(n154), .CDN(n150), .Q(
        c_state[6]) );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n67), .CP(n154), .CDN(n151), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 c_state_reg_9_ ( .D(n61), .CP(n153), .CDN(n150), .Q(
        c_state[9]) );
  DFCNQD1BWP12T30P140 cnt_reg_11_ ( .D(n75), .CP(n155), .CDN(n151), .Q(cnt[11]) );
  DFCNQD1BWP12T30P140 c_state_reg_16_ ( .D(n54), .CP(n153), .CDN(n150), .Q(
        c_state[16]) );
  DFCNQD1BWP12T30P140 c_state_reg_13_ ( .D(n57), .CP(n154), .CDN(n151), .Q(
        c_state[13]) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n69), .CP(n154), .CDN(n151), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n70), .CP(n154), .CDN(n151), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 c_state_reg_12_ ( .D(n58), .CP(n153), .CDN(n150), .Q(
        c_state[12]) );
  DFCNQD1BWP12T30P140 c_state_reg_11_ ( .D(n59), .CP(n153), .CDN(n150), .Q(
        c_state[11]) );
  DFCNQD1BWP12T30P140 c_state_reg_10_ ( .D(n60), .CP(n153), .CDN(n150), .Q(
        c_state[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n83), .CP(n155), .CDN(n152), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n81), .CP(n155), .CDN(n152), .Q(cnt[5])
         );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n79), .CP(n155), .CDN(n152), .Q(cnt[7])
         );
  DFCNQD1BWP12T30P140 al_reg ( .D(N87), .CP(n154), .CDN(n151), .Q(al) );
  DFCNQD1BWP12T30P140 cnt_reg_9_ ( .D(n77), .CP(n154), .CDN(n152), .Q(cnt[9])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n85), .CP(n153), .CDN(n152), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 c_state_reg_8_ ( .D(n62), .CP(n153), .CDN(n150), .Q(
        c_state[8]) );
  DFCNQD1BWP12T30P140 cnt_reg_13_ ( .D(n73), .CP(n153), .CDN(n152), .Q(cnt[13]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n86), .CP(n153), .CDN(n150), .Q(cnt[0])
         );
  DFQD2BWP12T30P140 dout_reg ( .D(n51), .CP(n155), .Q(dout) );
  DFQD1BWP12T30P140 dscl_oen_reg ( .D(scl_oen), .CP(n155), .Q(dscl_oen) );
  INVD0BWP12T30P140 U3 ( .I(rst), .ZN(n128) );
  INVD0BWP12T30P140 U4 ( .I(n128), .ZN(n138) );
  OR2D0BWP12T30P140 U5 ( .A1(scl_i), .A2(n138), .Z(N70) );
  INVD0BWP12T30P140 U6 ( .I(c_state[15]), .ZN(n41) );
  INVD0BWP12T30P140 U7 ( .I(c_state[14]), .ZN(n2) );
  ND2D0BWP12T30P140 U8 ( .A1(n41), .A2(n2), .ZN(n139) );
  INVD0BWP12T30P140 U9 ( .I(n139), .ZN(n31) );
  NR2D0BWP12T30P140 U10 ( .A1(n138), .A2(al), .ZN(n143) );
  ND2D0BWP12T30P140 U11 ( .A1(n143), .A2(clk_en), .ZN(n109) );
  INVD0BWP12T30P140 U12 ( .I(clk_en), .ZN(n1) );
  ND2D0BWP12T30P140 U13 ( .A1(n143), .A2(n1), .ZN(n105) );
  INVD0BWP12T30P140 U14 ( .I(sda_chk), .ZN(n102) );
  OAI22D0BWP12T30P140 U15 ( .A1(n31), .A2(n109), .B1(n105), .B2(n102), .ZN(n88) );
  NR2D0BWP12T30P140 U16 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n35) );
  IND3D1BWP12T30P140 U17 ( .A1(cmd[3]), .B1(n35), .B2(cmd[1]), .ZN(n103) );
  INVD0BWP12T30P140 U18 ( .I(cmd_stop), .ZN(n100) );
  AOI221D0BWP12T30P140 U19 ( .A1(clk_en), .A2(n103), .B1(n1), .B2(n100), .C(
        n138), .ZN(n71) );
  INVD0BWP12T30P140 U20 ( .I(c_state[13]), .ZN(n43) );
  OAI22D0BWP12T30P140 U21 ( .A1(n109), .A2(n43), .B1(n2), .B2(n105), .ZN(n56)
         );
  OAI22D0BWP12T30P140 U22 ( .A1(n109), .A2(n2), .B1(n41), .B2(n105), .ZN(n55)
         );
  INVD0BWP12T30P140 U23 ( .I(cnt[11]), .ZN(n17) );
  NR3D0BWP12T30P140 U24 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n50) );
  INVD0BWP12T30P140 U25 ( .I(n50), .ZN(n91) );
  NR3D0BWP12T30P140 U26 ( .A1(cnt[4]), .A2(cnt[3]), .A3(n91), .ZN(n92) );
  INVD0BWP12T30P140 U27 ( .I(n92), .ZN(n95) );
  NR3D0BWP12T30P140 U28 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n95), .ZN(n96) );
  INVD0BWP12T30P140 U29 ( .I(n96), .ZN(n99) );
  NR3D0BWP12T30P140 U30 ( .A1(cnt[8]), .A2(cnt[7]), .A3(n99), .ZN(n122) );
  INVD0BWP12T30P140 U31 ( .I(n122), .ZN(n127) );
  NR3D0BWP12T30P140 U32 ( .A1(cnt[10]), .A2(cnt[9]), .A3(n127), .ZN(n37) );
  IND3D1BWP12T30P140 U33 ( .A1(cnt[12]), .B1(n17), .B2(n37), .ZN(n115) );
  NR4D0BWP12T30P140 U34 ( .A1(cnt[15]), .A2(cnt[13]), .A3(cnt[14]), .A4(n115), 
        .ZN(n3) );
  INR2D1BWP12T30P140 U35 ( .A1(ena), .B1(n3), .ZN(n5) );
  ND2D0BWP12T30P140 U36 ( .A1(n5), .A2(n128), .ZN(N64) );
  INVD0BWP12T30P140 U37 ( .I(sSCL), .ZN(n137) );
  ND2D0BWP12T30P140 U38 ( .A1(dscl_oen), .A2(n137), .ZN(n121) );
  INR2D1BWP12T30P140 U39 ( .A1(n121), .B1(N64), .ZN(n116) );
  INVD0BWP12T30P140 U40 ( .I(n116), .ZN(n126) );
  INVD0BWP12T30P140 U41 ( .I(cnt[3]), .ZN(n4) );
  AOI31D0BWP12T30P140 U42 ( .A1(n50), .A2(n4), .A3(n121), .B(N64), .ZN(n6) );
  NR2D0BWP12T30P140 U43 ( .A1(n138), .A2(n5), .ZN(n123) );
  AOI22D0BWP12T30P140 U44 ( .A1(cnt[4]), .A2(n6), .B1(n123), .B2(clk_cnt[4]), 
        .ZN(n7) );
  OAI21D0BWP12T30P140 U45 ( .A1(n95), .A2(n126), .B(n7), .ZN(n82) );
  INVD0BWP12T30P140 U46 ( .I(cnt[5]), .ZN(n8) );
  AOI31D0BWP12T30P140 U47 ( .A1(n92), .A2(n8), .A3(n121), .B(N64), .ZN(n9) );
  AOI22D0BWP12T30P140 U48 ( .A1(cnt[6]), .A2(n9), .B1(n123), .B2(clk_cnt[6]), 
        .ZN(n10) );
  OAI21D0BWP12T30P140 U49 ( .A1(n99), .A2(n126), .B(n10), .ZN(n80) );
  INVD0BWP12T30P140 U50 ( .I(cnt[7]), .ZN(n11) );
  AOI31D0BWP12T30P140 U51 ( .A1(n96), .A2(n11), .A3(n121), .B(N64), .ZN(n12)
         );
  AOI22D0BWP12T30P140 U52 ( .A1(cnt[8]), .A2(n12), .B1(n123), .B2(clk_cnt[8]), 
        .ZN(n13) );
  OAI21D0BWP12T30P140 U53 ( .A1(n127), .A2(n126), .B(n13), .ZN(n78) );
  NR4D0BWP12T30P140 U54 ( .A1(c_state[16]), .A2(c_state[12]), .A3(c_state[8]), 
        .A4(c_state[4]), .ZN(n34) );
  NR2D0BWP12T30P140 U55 ( .A1(n34), .A2(n109), .ZN(N175) );
  INVD0BWP12T30P140 U56 ( .I(n37), .ZN(n40) );
  INVD0BWP12T30P140 U57 ( .I(cnt[9]), .ZN(n14) );
  AOI31D0BWP12T30P140 U58 ( .A1(n122), .A2(n14), .A3(n121), .B(N64), .ZN(n15)
         );
  AOI22D0BWP12T30P140 U59 ( .A1(cnt[10]), .A2(n15), .B1(n123), .B2(clk_cnt[10]), .ZN(n16) );
  OAI21D0BWP12T30P140 U60 ( .A1(n40), .A2(n126), .B(n16), .ZN(n76) );
  AOI31D0BWP12T30P140 U61 ( .A1(n37), .A2(n17), .A3(n121), .B(N64), .ZN(n18)
         );
  AOI22D0BWP12T30P140 U62 ( .A1(cnt[12]), .A2(n18), .B1(n123), .B2(clk_cnt[12]), .ZN(n19) );
  OAI21D0BWP12T30P140 U63 ( .A1(n115), .A2(n126), .B(n19), .ZN(n74) );
  INVD0BWP12T30P140 U64 ( .I(cnt[14]), .ZN(n25) );
  NR2D0BWP12T30P140 U65 ( .A1(N64), .A2(n121), .ZN(n114) );
  AOI221D0BWP12T30P140 U66 ( .A1(cnt[13]), .A2(n116), .B1(n115), .B2(n116), 
        .C(n114), .ZN(n26) );
  OAI21D0BWP12T30P140 U67 ( .A1(n25), .A2(n126), .B(n26), .ZN(n20) );
  AO22D0BWP12T30P140 U68 ( .A1(cnt[15]), .A2(n20), .B1(n123), .B2(clk_cnt[15]), 
        .Z(n87) );
  INVD0BWP12T30P140 U69 ( .I(c_state[3]), .ZN(n28) );
  INVD0BWP12T30P140 U70 ( .I(n105), .ZN(n145) );
  MOAI22D0BWP12T30P140 U71 ( .A1(n109), .A2(n28), .B1(c_state[4]), .B2(n145), 
        .ZN(n66) );
  INVD0BWP12T30P140 U72 ( .I(cnt[0]), .ZN(n111) );
  INVD0BWP12T30P140 U73 ( .I(cnt[1]), .ZN(n21) );
  AOI31D0BWP12T30P140 U74 ( .A1(n111), .A2(n21), .A3(n121), .B(N64), .ZN(n22)
         );
  AOI22D0BWP12T30P140 U75 ( .A1(cnt[2]), .A2(n22), .B1(n123), .B2(clk_cnt[2]), 
        .ZN(n23) );
  OAI21D0BWP12T30P140 U76 ( .A1(n91), .A2(n126), .B(n23), .ZN(n84) );
  INVD0BWP12T30P140 U77 ( .I(c_state[6]), .ZN(n27) );
  INVD0BWP12T30P140 U78 ( .I(c_state[7]), .ZN(n108) );
  OAI22D0BWP12T30P140 U79 ( .A1(n109), .A2(n27), .B1(n108), .B2(n105), .ZN(n63) );
  NR3D0BWP12T30P140 U80 ( .A1(cnt[13]), .A2(n115), .A3(n126), .ZN(n117) );
  AOI22D0BWP12T30P140 U81 ( .A1(clk_cnt[14]), .A2(n123), .B1(n117), .B2(n25), 
        .ZN(n24) );
  OAI21D0BWP12T30P140 U82 ( .A1(n26), .A2(n25), .B(n24), .ZN(n72) );
  INVD0BWP12T30P140 U83 ( .I(c_state[1]), .ZN(n45) );
  INVD0BWP12T30P140 U84 ( .I(c_state[2]), .ZN(n29) );
  OAI22D0BWP12T30P140 U85 ( .A1(n109), .A2(n45), .B1(n29), .B2(n105), .ZN(n68)
         );
  INVD0BWP12T30P140 U86 ( .I(c_state[5]), .ZN(n106) );
  OAI22D0BWP12T30P140 U87 ( .A1(n109), .A2(n106), .B1(n27), .B2(n105), .ZN(n64) );
  OAI22D0BWP12T30P140 U88 ( .A1(n109), .A2(n29), .B1(n28), .B2(n105), .ZN(n67)
         );
  INVD0BWP12T30P140 U89 ( .I(c_state[9]), .ZN(n140) );
  NR4D0BWP12T30P140 U90 ( .A1(c_state[1]), .A2(c_state[7]), .A3(c_state[6]), 
        .A4(c_state[3]), .ZN(n30) );
  ND2D0BWP12T30P140 U91 ( .A1(n31), .A2(n30), .ZN(n32) );
  NR4D0BWP12T30P140 U92 ( .A1(c_state[11]), .A2(c_state[10]), .A3(c_state[2]), 
        .A4(n32), .ZN(n131) );
  NR4D0BWP12T30P140 U93 ( .A1(c_state[0]), .A2(c_state[5]), .A3(c_state[13]), 
        .A4(c_state[9]), .ZN(n33) );
  ND3D0BWP12T30P140 U94 ( .A1(n131), .A2(n34), .A3(n33), .ZN(n130) );
  NR2D0BWP12T30P140 U95 ( .A1(n109), .A2(n130), .ZN(n146) );
  INVD0BWP12T30P140 U96 ( .I(n146), .ZN(n104) );
  OR2D0BWP12T30P140 U97 ( .A1(cmd[1]), .A2(n104), .Z(n42) );
  ND2D0BWP12T30P140 U98 ( .A1(cmd[3]), .A2(n35), .ZN(n36) );
  OAI22D0BWP12T30P140 U99 ( .A1(n140), .A2(n105), .B1(n42), .B2(n36), .ZN(n61)
         );
  AOI21D0BWP12T30P140 U100 ( .A1(n37), .A2(n121), .B(N64), .ZN(n38) );
  AOI22D0BWP12T30P140 U101 ( .A1(cnt[11]), .A2(n38), .B1(n123), .B2(
        clk_cnt[11]), .ZN(n39) );
  OAI31D0BWP12T30P140 U102 ( .A1(cnt[11]), .A2(n40), .A3(n126), .B(n39), .ZN(
        n75) );
  MOAI22D0BWP12T30P140 U103 ( .A1(n109), .A2(n41), .B1(c_state[16]), .B2(n145), 
        .ZN(n54) );
  NR2D0BWP12T30P140 U104 ( .A1(cmd[3]), .A2(n42), .ZN(n46) );
  ND2D0BWP12T30P140 U105 ( .A1(n46), .A2(cmd[2]), .ZN(n44) );
  OAI22D0BWP12T30P140 U106 ( .A1(cmd[0]), .A2(n44), .B1(n43), .B2(n105), .ZN(
        n57) );
  INVD0BWP12T30P140 U107 ( .I(c_state[0]), .ZN(n129) );
  OAI22D0BWP12T30P140 U108 ( .A1(n109), .A2(n129), .B1(n45), .B2(n105), .ZN(
        n69) );
  ND2D0BWP12T30P140 U109 ( .A1(n46), .A2(cmd[0]), .ZN(n47) );
  OAI22D0BWP12T30P140 U110 ( .A1(cmd[2]), .A2(n47), .B1(n129), .B2(n105), .ZN(
        n70) );
  INVD0BWP12T30P140 U111 ( .I(c_state[11]), .ZN(n48) );
  MOAI22D0BWP12T30P140 U112 ( .A1(n109), .A2(n48), .B1(c_state[12]), .B2(n145), 
        .ZN(n58) );
  INVD0BWP12T30P140 U113 ( .I(c_state[10]), .ZN(n49) );
  OAI22D0BWP12T30P140 U114 ( .A1(n109), .A2(n49), .B1(n48), .B2(n105), .ZN(n59) );
  OAI22D0BWP12T30P140 U115 ( .A1(n109), .A2(n140), .B1(n49), .B2(n105), .ZN(
        n60) );
  AOI21D0BWP12T30P140 U116 ( .A1(n50), .A2(n121), .B(N64), .ZN(n89) );
  AOI22D0BWP12T30P140 U117 ( .A1(cnt[3]), .A2(n89), .B1(n123), .B2(clk_cnt[3]), 
        .ZN(n90) );
  OAI31D0BWP12T30P140 U118 ( .A1(cnt[3]), .A2(n91), .A3(n126), .B(n90), .ZN(
        n83) );
  AOI21D0BWP12T30P140 U119 ( .A1(n92), .A2(n121), .B(N64), .ZN(n93) );
  AOI22D0BWP12T30P140 U120 ( .A1(cnt[5]), .A2(n93), .B1(n123), .B2(clk_cnt[5]), 
        .ZN(n94) );
  OAI31D0BWP12T30P140 U121 ( .A1(cnt[5]), .A2(n95), .A3(n126), .B(n94), .ZN(
        n81) );
  AOI21D0BWP12T30P140 U122 ( .A1(n96), .A2(n121), .B(N64), .ZN(n97) );
  AOI22D0BWP12T30P140 U123 ( .A1(cnt[7]), .A2(n97), .B1(n123), .B2(clk_cnt[7]), 
        .ZN(n98) );
  OAI31D0BWP12T30P140 U124 ( .A1(cnt[7]), .A2(n99), .A3(n126), .B(n98), .ZN(
        n79) );
  INVD0BWP12T30P140 U125 ( .I(sSDA), .ZN(n136) );
  ND2D0BWP12T30P140 U126 ( .A1(n128), .A2(n136), .ZN(N73) );
  INVD0BWP12T30P140 U127 ( .I(sda_oen), .ZN(n149) );
  ND4D0BWP12T30P140 U128 ( .A1(n100), .A2(sto_condition), .A3(n128), .A4(n130), 
        .ZN(n101) );
  OAI31D0BWP12T30P140 U129 ( .A1(n149), .A2(n102), .A3(N73), .B(n101), .ZN(N87) );
  OAI22D0BWP12T30P140 U130 ( .A1(n106), .A2(n105), .B1(n104), .B2(n103), .ZN(
        n65) );
  NR2D0BWP12T30P140 U131 ( .A1(dSCL), .A2(n137), .ZN(n107) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(dout), .I1(sSDA), .S(n107), .Z(n51) );
  MOAI22D0BWP12T30P140 U133 ( .A1(n109), .A2(n108), .B1(c_state[8]), .B2(n145), 
        .ZN(n62) );
  AOI22D0BWP12T30P140 U134 ( .A1(cnt[0]), .A2(n114), .B1(n123), .B2(clk_cnt[0]), .ZN(n110) );
  OAI21D0BWP12T30P140 U135 ( .A1(cnt[0]), .A2(n126), .B(n110), .ZN(n86) );
  AOI21D0BWP12T30P140 U136 ( .A1(n111), .A2(n121), .B(N64), .ZN(n112) );
  AOI22D0BWP12T30P140 U137 ( .A1(cnt[1]), .A2(n112), .B1(n123), .B2(clk_cnt[1]), .ZN(n113) );
  OAI31D0BWP12T30P140 U138 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n126), .B(n113), 
        .ZN(n85) );
  AOI21D0BWP12T30P140 U139 ( .A1(n116), .A2(n115), .B(n114), .ZN(n120) );
  INVD0BWP12T30P140 U140 ( .I(cnt[13]), .ZN(n119) );
  AOI21D0BWP12T30P140 U141 ( .A1(n123), .A2(clk_cnt[13]), .B(n117), .ZN(n118)
         );
  OAI21D0BWP12T30P140 U142 ( .A1(n120), .A2(n119), .B(n118), .ZN(n73) );
  AOI21D0BWP12T30P140 U143 ( .A1(n122), .A2(n121), .B(N64), .ZN(n124) );
  AOI22D0BWP12T30P140 U144 ( .A1(cnt[9]), .A2(n124), .B1(n123), .B2(clk_cnt[9]), .ZN(n125) );
  OAI31D0BWP12T30P140 U145 ( .A1(cnt[9]), .A2(n127), .A3(n126), .B(n125), .ZN(
        n77) );
  CKBD0BWP12T30P140 U146 ( .I(clk), .Z(n153) );
  CKBD0BWP12T30P140 U147 ( .I(clk), .Z(n155) );
  CKBD0BWP12T30P140 U148 ( .I(clk), .Z(n154) );
  CKBD0BWP12T30P140 U149 ( .I(nReset), .Z(n150) );
  CKBD0BWP12T30P140 U150 ( .I(nReset), .Z(n151) );
  CKBD0BWP12T30P140 U151 ( .I(nReset), .Z(n152) );
  ND2D0BWP12T30P140 U152 ( .A1(n128), .A2(n137), .ZN(N72) );
  AN3D0BWP12T30P140 U153 ( .A1(n130), .A2(n129), .A3(clk_en), .Z(n132) );
  ND2D0BWP12T30P140 U154 ( .A1(n132), .A2(n131), .ZN(n133) );
  OAI22D0BWP12T30P140 U155 ( .A1(n133), .A2(c_state[8]), .B1(n132), .B2(
        scl_oen), .ZN(n134) );
  ND2D0BWP12T30P140 U156 ( .A1(n143), .A2(n134), .ZN(n53) );
  NR2D0BWP12T30P140 U157 ( .A1(busy), .A2(sta_condition), .ZN(n135) );
  NR3D0BWP12T30P140 U158 ( .A1(n135), .A2(n138), .A3(sto_condition), .ZN(N79)
         );
  NR4D0BWP12T30P140 U159 ( .A1(n138), .A2(dSDA), .A3(n137), .A4(n136), .ZN(N77) );
  INR3D1BWP12T30P140 U160 ( .A1(dSDA), .B1(n137), .B2(N73), .ZN(N76) );
  OR2D0BWP12T30P140 U161 ( .A1(sda_i), .A2(n138), .Z(N71) );
  NR4D0BWP12T30P140 U162 ( .A1(c_state[1]), .A2(c_state[11]), .A3(c_state[10]), 
        .A4(c_state[12]), .ZN(n142) );
  OAI31D0BWP12T30P140 U163 ( .A1(c_state[16]), .A2(c_state[13]), .A3(n139), 
        .B(din), .ZN(n141) );
  ND4D0BWP12T30P140 U164 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .ZN(
        n144) );
  NR3D0BWP12T30P140 U165 ( .A1(c_state[8]), .A2(c_state[0]), .A3(n144), .ZN(
        n148) );
  NR2D0BWP12T30P140 U166 ( .A1(n146), .A2(n145), .ZN(n147) );
  MUX2ND0BWP12T30P140 U167 ( .I0(n149), .I1(n148), .S(n147), .ZN(n52) );
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
        .clk_cnt(clk_cnt), .ena(ena), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen) );
  DFCNQD1BWP12T30P140 core_txd_reg ( .D(N104), .CP(n80), .CDN(n77), .Q(
        core_txd) );
  DFCNQD1BWP12T30P140 ack_out_reg ( .D(n71), .CP(n80), .CDN(n77), .Q(ack_out)
         );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N107), .CP(n80), .CDN(n77), .Q(cmd_ack)
         );
  DFCNQD1BWP12T30P140 sr_reg_7_ ( .D(n52), .CP(n80), .CDN(n77), .Q(dout[7]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n66), .CP(n80), .CDN(n77), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_1_ ( .D(n62), .CP(n80), .CDN(n77), .Q(
        core_cmd[1]) );
  DFCNQD1BWP12T30P140 ld_reg ( .D(N106), .CP(n80), .CDN(n77), .Q(ld) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n68), .CP(n79), .CDN(n77), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n70), .CP(n80), .CDN(n77), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 shift_reg ( .D(N105), .CP(n79), .CDN(n77), .Q(shift) );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n67), .CP(n80), .CDN(n77), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n69), .CP(n79), .CDN(n77), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 sr_reg_6_ ( .D(n53), .CP(n79), .CDN(n78), .Q(dout[6]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(n57), .CP(n79), .CDN(n78), .Q(dout[2]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(n56), .CP(n79), .CDN(n78), .Q(dout[3]) );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(n55), .CP(n79), .CDN(n78), .Q(dout[4]) );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(n59), .CP(n79), .CDN(n77), .Q(dout[0]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(n58), .CP(n79), .CDN(n78), .Q(dout[1]) );
  DFCNQD1BWP12T30P140 sr_reg_5_ ( .D(n54), .CP(n79), .CDN(n78), .Q(dout[5]) );
  DFCNQD1BWP12T30P140 dcnt_reg_0_ ( .D(n64), .CP(n79), .CDN(n77), .Q(dcnt[0])
         );
  DFCNQD1BWP12T30P140 dcnt_reg_2_ ( .D(n72), .CP(n79), .CDN(n77), .Q(dcnt[2])
         );
  DFCNQD1BWP12T30P140 dcnt_reg_1_ ( .D(n65), .CP(n79), .CDN(n77), .Q(dcnt[1])
         );
  DFCNQD1BWP12T30P140 core_cmd_reg_2_ ( .D(n61), .CP(n79), .CDN(n78), .Q(
        core_cmd[2]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_0_ ( .D(n63), .CP(n79), .CDN(n78), .Q(
        core_cmd[0]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_3_ ( .D(n60), .CP(n79), .CDN(n78), .Q(
        core_cmd[3]) );
  INVD0BWP12T30P140 U3 ( .I(c_state[1]), .ZN(n49) );
  INVD0BWP12T30P140 U4 ( .I(c_state[2]), .ZN(n46) );
  ND2D0BWP12T30P140 U5 ( .A1(n49), .A2(n46), .ZN(n20) );
  NR4D0BWP12T30P140 U6 ( .A1(c_state[4]), .A2(c_state[0]), .A3(c_state[3]), 
        .A4(n20), .ZN(n43) );
  INVD0BWP12T30P140 U7 ( .I(core_ack), .ZN(n44) );
  NR2D0BWP12T30P140 U8 ( .A1(rst), .A2(i2c_al), .ZN(n37) );
  NR2D0BWP12T30P140 U9 ( .A1(read), .A2(write), .ZN(n28) );
  INVD0BWP12T30P140 U10 ( .I(n28), .ZN(n2) );
  INVD0BWP12T30P140 U11 ( .I(cmd_ack), .ZN(n1) );
  OAI211D0BWP12T30P140 U12 ( .A1(stop), .A2(n2), .B(n43), .C(n1), .ZN(n23) );
  OAI211D0BWP12T30P140 U13 ( .A1(n43), .A2(n44), .B(n37), .C(n23), .ZN(n31) );
  INVD0BWP12T30P140 U14 ( .I(n31), .ZN(n42) );
  INR2D1BWP12T30P140 U15 ( .A1(n43), .B1(start), .ZN(n27) );
  ND2D0BWP12T30P140 U16 ( .A1(n37), .A2(n31), .ZN(n8) );
  INVD0BWP12T30P140 U17 ( .I(n8), .ZN(n30) );
  OAI211D0BWP12T30P140 U18 ( .A1(c_state[0]), .A2(n27), .B(read), .C(n30), 
        .ZN(n19) );
  INVD0BWP12T30P140 U19 ( .I(n19), .ZN(n5) );
  NR3D0BWP12T30P140 U20 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(dcnt[2]), .ZN(n3) );
  INVD0BWP12T30P140 U21 ( .I(n3), .ZN(n18) );
  AOI221D0BWP12T30P140 U22 ( .A1(n3), .A2(n46), .B1(n18), .B2(n49), .C(n8), 
        .ZN(n4) );
  AO211D0BWP12T30P140 U23 ( .A1(n42), .A2(core_cmd[3]), .B(n5), .C(n4), .Z(n60) );
  ND2D0BWP12T30P140 U24 ( .A1(c_state[2]), .A2(n18), .ZN(n22) );
  NR2D0BWP12T30P140 U25 ( .A1(n8), .A2(n18), .ZN(n21) );
  AOI22D0BWP12T30P140 U26 ( .A1(c_state[1]), .A2(n21), .B1(n42), .B2(
        core_cmd[2]), .ZN(n7) );
  AOI21D0BWP12T30P140 U27 ( .A1(write), .A2(n27), .B(c_state[0]), .ZN(n6) );
  OR3D0BWP12T30P140 U28 ( .A1(read), .A2(n6), .A3(n8), .Z(n24) );
  OAI211D0BWP12T30P140 U29 ( .A1(n22), .A2(n8), .B(n7), .C(n24), .ZN(n61) );
  NR2D0BWP12T30P140 U30 ( .A1(rst), .A2(ld), .ZN(n9) );
  ND2D0BWP12T30P140 U31 ( .A1(shift), .A2(n9), .ZN(n13) );
  INVD0BWP12T30P140 U32 ( .I(dcnt[0]), .ZN(n17) );
  NR3D0BWP12T30P140 U33 ( .A1(rst), .A2(ld), .A3(shift), .ZN(n34) );
  INVD0BWP12T30P140 U34 ( .I(n34), .ZN(n16) );
  OAI21D0BWP12T30P140 U35 ( .A1(n17), .A2(n13), .B(n16), .ZN(n11) );
  IND2D1BWP12T30P140 U36 ( .A1(rst), .B1(ld), .ZN(n15) );
  INVD0BWP12T30P140 U37 ( .I(n15), .ZN(n33) );
  AOI21D0BWP12T30P140 U38 ( .A1(dcnt[1]), .A2(n11), .B(n33), .ZN(n10) );
  OAI31D0BWP12T30P140 U39 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(n13), .B(n10), 
        .ZN(n65) );
  INVD0BWP12T30P140 U40 ( .I(n13), .ZN(n32) );
  AOI32D0BWP12T30P140 U41 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(n32), .B1(n11), 
        .B2(dcnt[2]), .ZN(n12) );
  OAI211D0BWP12T30P140 U42 ( .A1(n18), .A2(n13), .B(n15), .C(n12), .ZN(n72) );
  ND2D0BWP12T30P140 U43 ( .A1(n32), .A2(n17), .ZN(n14) );
  OAI211D0BWP12T30P140 U44 ( .A1(n17), .A2(n16), .B(n15), .C(n14), .ZN(n64) );
  AO222D0BWP12T30P140 U45 ( .A1(n33), .A2(din[5]), .B1(n32), .B2(dout[4]), 
        .C1(dout[5]), .C2(n34), .Z(n54) );
  AO222D0BWP12T30P140 U46 ( .A1(n33), .A2(din[1]), .B1(n32), .B2(dout[0]), 
        .C1(dout[1]), .C2(n34), .Z(n58) );
  AO222D0BWP12T30P140 U47 ( .A1(n33), .A2(din[0]), .B1(n32), .B2(core_rxd), 
        .C1(dout[0]), .C2(n34), .Z(n59) );
  AO222D0BWP12T30P140 U48 ( .A1(n33), .A2(din[4]), .B1(n32), .B2(dout[3]), 
        .C1(dout[4]), .C2(n34), .Z(n55) );
  AO222D0BWP12T30P140 U49 ( .A1(n33), .A2(din[3]), .B1(n32), .B2(dout[2]), 
        .C1(dout[3]), .C2(n34), .Z(n56) );
  AO222D0BWP12T30P140 U50 ( .A1(n33), .A2(din[2]), .B1(n32), .B2(dout[1]), 
        .C1(dout[2]), .C2(n34), .Z(n57) );
  AO222D0BWP12T30P140 U51 ( .A1(n33), .A2(din[6]), .B1(n32), .B2(dout[5]), 
        .C1(dout[6]), .C2(n34), .Z(n53) );
  AOI21D0BWP12T30P140 U52 ( .A1(n37), .A2(n18), .B(n42), .ZN(n25) );
  OAI21D0BWP12T30P140 U53 ( .A1(n25), .A2(n49), .B(n19), .ZN(n69) );
  AO22D0BWP12T30P140 U54 ( .A1(n42), .A2(c_state[3]), .B1(n21), .B2(n20), .Z(
        n67) );
  ND2D0BWP12T30P140 U55 ( .A1(n37), .A2(core_ack), .ZN(n48) );
  AOI21D0BWP12T30P140 U56 ( .A1(n49), .A2(n22), .B(n48), .ZN(N105) );
  INVD0BWP12T30P140 U57 ( .I(c_state[0]), .ZN(n45) );
  INVD0BWP12T30P140 U58 ( .I(n37), .ZN(n51) );
  NR2D0BWP12T30P140 U59 ( .A1(n51), .A2(n23), .ZN(n26) );
  ND2D0BWP12T30P140 U60 ( .A1(start), .A2(n26), .ZN(n40) );
  OAI21D0BWP12T30P140 U61 ( .A1(n31), .A2(n45), .B(n40), .ZN(n70) );
  OAI21D0BWP12T30P140 U62 ( .A1(n25), .A2(n46), .B(n24), .ZN(n68) );
  INVD0BWP12T30P140 U63 ( .I(n48), .ZN(n35) );
  AO21D0BWP12T30P140 U64 ( .A1(c_state[0]), .A2(n35), .B(n26), .Z(N106) );
  INVD0BWP12T30P140 U65 ( .I(c_state[4]), .ZN(n36) );
  AO22D0BWP12T30P140 U66 ( .A1(n28), .A2(n27), .B1(c_state[3]), .B2(stop), .Z(
        n29) );
  ND2D0BWP12T30P140 U67 ( .A1(n30), .A2(n29), .ZN(n41) );
  OAI21D0BWP12T30P140 U68 ( .A1(n31), .A2(n36), .B(n41), .ZN(n66) );
  AO222D0BWP12T30P140 U69 ( .A1(dout[7]), .A2(n34), .B1(n33), .B2(din[7]), 
        .C1(dout[6]), .C2(n32), .Z(n52) );
  ND2D0BWP12T30P140 U70 ( .A1(c_state[3]), .A2(n35), .ZN(n75) );
  OAI22D0BWP12T30P140 U71 ( .A1(stop), .A2(n75), .B1(n36), .B2(n48), .ZN(N107)
         );
  INVD0BWP12T30P140 U72 ( .I(core_rxd), .ZN(n39) );
  INVD0BWP12T30P140 U73 ( .I(c_state[3]), .ZN(n50) );
  OAI211D0BWP12T30P140 U74 ( .A1(n44), .A2(n50), .B(n37), .C(ack_out), .ZN(n38) );
  OAI21D0BWP12T30P140 U75 ( .A1(n75), .A2(n39), .B(n38), .ZN(n71) );
  CKBD0BWP12T30P140 U76 ( .I(clk), .Z(n80) );
  CKBD0BWP12T30P140 U77 ( .I(clk), .Z(n79) );
  CKBD0BWP12T30P140 U78 ( .I(nReset), .Z(n77) );
  CKBD0BWP12T30P140 U79 ( .I(nReset), .Z(n78) );
  IOA21D0BWP12T30P140 U80 ( .A1(n42), .A2(core_cmd[0]), .B(n40), .ZN(n63) );
  IOA21D0BWP12T30P140 U81 ( .A1(n42), .A2(core_cmd[1]), .B(n41), .ZN(n62) );
  AOI211D0BWP12T30P140 U82 ( .A1(c_state[1]), .A2(n44), .B(n43), .C(c_state[4]), .ZN(n47) );
  AOI31D0BWP12T30P140 U83 ( .A1(n47), .A2(n46), .A3(n45), .B(n51), .ZN(n74) );
  OAI22D0BWP12T30P140 U84 ( .A1(n51), .A2(n50), .B1(n49), .B2(n48), .ZN(n73)
         );
  AOI22D0BWP12T30P140 U85 ( .A1(n74), .A2(dout[7]), .B1(ack_in), .B2(n73), 
        .ZN(n76) );
  ND2D0BWP12T30P140 U86 ( .A1(n76), .A2(n75), .ZN(N104) );
endmodule


module i2c_master_top_0 ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N20, sr_1, sr_0, N43, N44, N48, N49, N50, done, i2c_al, irxack, N114,
         N115, N116, N117, N121, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;

  i2c_master_byte_ctrl byte_controller ( .clk(n151), .rst(wb_rst_i), .nReset(
        n148), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(cr[6]), 
        .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), .cmd_ack(done), 
        .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), 
        .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(sda_pad_i), 
        .sda_oen(sda_padoen_o) );
  DFSNQD1BWP12T30P140 prer_reg_15_ ( .D(n94), .CP(n153), .SDN(n149), .Q(
        prer[15]) );
  DFSNQD1BWP12T30P140 prer_reg_14_ ( .D(n93), .CP(n153), .SDN(n149), .Q(
        prer[14]) );
  DFSNQD1BWP12T30P140 prer_reg_13_ ( .D(n92), .CP(n153), .SDN(n149), .Q(
        prer[13]) );
  DFSNQD1BWP12T30P140 prer_reg_12_ ( .D(n91), .CP(n153), .SDN(n149), .Q(
        prer[12]) );
  DFSNQD1BWP12T30P140 prer_reg_11_ ( .D(n90), .CP(n153), .SDN(n149), .Q(
        prer[11]) );
  DFSNQD1BWP12T30P140 prer_reg_10_ ( .D(n89), .CP(n153), .SDN(n149), .Q(
        prer[10]) );
  DFSNQD1BWP12T30P140 prer_reg_9_ ( .D(n88), .CP(n153), .SDN(n149), .Q(prer[9]) );
  DFSNQD1BWP12T30P140 prer_reg_8_ ( .D(n87), .CP(n153), .SDN(n149), .Q(prer[8]) );
  DFSNQD1BWP12T30P140 prer_reg_7_ ( .D(n86), .CP(n153), .SDN(n150), .Q(prer[7]) );
  DFSNQD1BWP12T30P140 prer_reg_6_ ( .D(n85), .CP(n153), .SDN(n150), .Q(prer[6]) );
  DFSNQD1BWP12T30P140 prer_reg_5_ ( .D(n84), .CP(n153), .SDN(n150), .Q(prer[5]) );
  DFSNQD1BWP12T30P140 prer_reg_4_ ( .D(n83), .CP(n153), .SDN(n150), .Q(prer[4]) );
  DFSNQD1BWP12T30P140 prer_reg_3_ ( .D(n82), .CP(n153), .SDN(n150), .Q(prer[3]) );
  DFSNQD1BWP12T30P140 prer_reg_2_ ( .D(n81), .CP(n153), .SDN(n150), .Q(prer[2]) );
  DFSNQD1BWP12T30P140 prer_reg_1_ ( .D(n80), .CP(n153), .SDN(n149), .Q(prer[1]) );
  DFSNQD1BWP12T30P140 prer_reg_0_ ( .D(n79), .CP(n153), .SDN(n150), .Q(prer[0]) );
  DFCNQD1BWP12T30P140 wb_inta_o_reg ( .D(N121), .CP(n152), .CDN(n148), .Q(
        wb_inta_o) );
  DFCNQD1BWP12T30P140 ctr_reg_4_ ( .D(n107), .CP(n151), .CDN(n149), .Q(ctr[4])
         );
  DFCNQD1BWP12T30P140 ctr_reg_3_ ( .D(n106), .CP(n151), .CDN(n149), .Q(ctr[3])
         );
  DFCNQD1BWP12T30P140 ctr_reg_2_ ( .D(n105), .CP(n152), .CDN(n149), .Q(ctr[2])
         );
  DFCNQD1BWP12T30P140 cr_reg_2_ ( .D(n73), .CP(n152), .CDN(n148), .Q(cr[2]) );
  DFCNQD1BWP12T30P140 rxack_reg ( .D(N115), .CP(n152), .CDN(n148), .Q(sr[7])
         );
  DFCNQD1BWP12T30P140 tip_reg ( .D(N116), .CP(n152), .CDN(n148), .Q(sr_1) );
  DFQD2BWP12T30P140 wb_dat_o_reg_4_ ( .D(n111), .CP(n151), .Q(wb_dat_o[4]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_6_ ( .D(N49), .CP(n151), .Q(wb_dat_o[6]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_3_ ( .D(n112), .CP(n151), .Q(wb_dat_o[3]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_2_ ( .D(n113), .CP(n151), .Q(wb_dat_o[2]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_5_ ( .D(N48), .CP(n151), .Q(wb_dat_o[5]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_7_ ( .D(N50), .CP(n151), .Q(wb_dat_o[7]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_0_ ( .D(N43), .CP(n151), .Q(wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 ctr_reg_6_ ( .D(n109), .CP(n151), .CDN(n149), .Q(ctr[6])
         );
  DFCNQD1BWP12T30P140 ctr_reg_5_ ( .D(n108), .CP(n151), .CDN(n149), .Q(ctr[5])
         );
  DFCNQD1BWP12T30P140 ctr_reg_1_ ( .D(n104), .CP(n151), .CDN(n149), .Q(ctr[1])
         );
  DFCNQD1BWP12T30P140 ctr_reg_0_ ( .D(n103), .CP(n151), .CDN(n148), .Q(ctr[0])
         );
  DFCNQD1BWP12T30P140 cr_reg_1_ ( .D(n72), .CP(n152), .CDN(n148), .Q(cr[1]) );
  DFCNQD1BWP12T30P140 al_reg ( .D(N114), .CP(n152), .CDN(n148), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 cr_reg_3_ ( .D(n78), .CP(n152), .CDN(n148), .Q(cr[3]) );
  DFCNQD1BWP12T30P140 txr_reg_4_ ( .D(n99), .CP(n152), .CDN(n149), .Q(txr[4])
         );
  DFCNQD1BWP12T30P140 txr_reg_3_ ( .D(n98), .CP(n152), .CDN(n148), .Q(txr[3])
         );
  DFCNQD1BWP12T30P140 txr_reg_2_ ( .D(n97), .CP(n152), .CDN(n148), .Q(txr[2])
         );
  DFCNQD1BWP12T30P140 irq_flag_reg ( .D(N117), .CP(n152), .CDN(n148), .Q(sr_0)
         );
  DFCNQD1BWP12T30P140 txr_reg_0_ ( .D(n95), .CP(n151), .CDN(n148), .Q(txr[0])
         );
  DFCNQD1BWP12T30P140 txr_reg_7_ ( .D(n102), .CP(n151), .CDN(n149), .Q(txr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_4_ ( .D(n77), .CP(n152), .CDN(n148), .Q(cr[4]) );
  DFCNQD1BWP12T30P140 cr_reg_0_ ( .D(n71), .CP(n152), .CDN(n148), .Q(cr[0]) );
  DFCNQD1BWP12T30P140 txr_reg_6_ ( .D(n101), .CP(n152), .CDN(n149), .Q(txr[6])
         );
  DFCNQD1BWP12T30P140 txr_reg_5_ ( .D(n100), .CP(n152), .CDN(n149), .Q(txr[5])
         );
  DFCNQD1BWP12T30P140 txr_reg_1_ ( .D(n96), .CP(n152), .CDN(n148), .Q(txr[1])
         );
  DFCNQD1BWP12T30P140 ctr_reg_7_ ( .D(n110), .CP(n151), .CDN(n149), .Q(ctr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_7_ ( .D(n74), .CP(n152), .CDN(n148), .Q(cr[7]) );
  DFCNQD1BWP12T30P140 cr_reg_6_ ( .D(n75), .CP(n152), .CDN(n148), .Q(cr[6]) );
  DFCNQD1BWP12T30P140 cr_reg_5_ ( .D(n76), .CP(n152), .CDN(n148), .Q(cr[5]) );
  DFQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(N44), .CP(n151), .Q(wb_dat_o[1]) );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(N20), .CP(n151), .Q(wb_ack_o) );
  CKBD0BWP12T30P140 U3 ( .I(arst_i), .Z(n150) );
  INVD0BWP12T30P140 U4 ( .I(wb_dat_i[7]), .ZN(n129) );
  INVD0BWP12T30P140 U5 ( .I(wb_adr_i[0]), .ZN(n5) );
  NR2D0BWP12T30P140 U6 ( .A1(wb_adr_i[1]), .A2(n5), .ZN(n55) );
  ND3D0BWP12T30P140 U7 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_we_i), .ZN(n3)
         );
  INVD0BWP12T30P140 U8 ( .I(wb_rst_i), .ZN(n66) );
  OAI21D0BWP12T30P140 U9 ( .A1(n3), .A2(wb_adr_i[2]), .B(n66), .ZN(n118) );
  ND2D0BWP12T30P140 U10 ( .A1(n55), .A2(n118), .ZN(n143) );
  INVD0BWP12T30P140 U11 ( .I(n66), .ZN(n147) );
  AOI21D0BWP12T30P140 U12 ( .A1(prer[15]), .A2(n143), .B(n147), .ZN(n1) );
  OAI21D0BWP12T30P140 U13 ( .A1(n129), .A2(n143), .B(n1), .ZN(n94) );
  INVD0BWP12T30P140 U14 ( .I(wb_dat_i[5]), .ZN(n141) );
  NR2D0BWP12T30P140 U15 ( .A1(n147), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U16 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n119) );
  ND3D0BWP12T30P140 U17 ( .A1(wb_adr_i[2]), .A2(ctr[7]), .A3(n119), .ZN(n11)
         );
  OAI21D0BWP12T30P140 U18 ( .A1(n3), .A2(n11), .B(n66), .ZN(n21) );
  ND2D0BWP12T30P140 U19 ( .A1(n12), .A2(n21), .ZN(n69) );
  NR2D0BWP12T30P140 U20 ( .A1(done), .A2(i2c_al), .ZN(n18) );
  INVD0BWP12T30P140 U21 ( .I(n18), .ZN(n2) );
  AO21D0BWP12T30P140 U22 ( .A1(n3), .A2(n2), .B(n21), .Z(n14) );
  INVD0BWP12T30P140 U23 ( .I(cr[5]), .ZN(n64) );
  OAI22D0BWP12T30P140 U24 ( .A1(n141), .A2(n69), .B1(n14), .B2(n64), .ZN(n76)
         );
  INVD0BWP12T30P140 U25 ( .I(wb_dat_i[6]), .ZN(n144) );
  INVD0BWP12T30P140 U26 ( .I(cr[6]), .ZN(n4) );
  OAI22D0BWP12T30P140 U27 ( .A1(n144), .A2(n69), .B1(n14), .B2(n4), .ZN(n75)
         );
  INVD0BWP12T30P140 U28 ( .I(cr[7]), .ZN(n22) );
  OAI22D0BWP12T30P140 U29 ( .A1(n129), .A2(n69), .B1(n14), .B2(n22), .ZN(n74)
         );
  ND2D0BWP12T30P140 U30 ( .A1(wb_adr_i[1]), .A2(n5), .ZN(n57) );
  INVD0BWP12T30P140 U31 ( .I(n118), .ZN(n7) );
  AOI21D0BWP12T30P140 U32 ( .A1(n66), .A2(n57), .B(n7), .ZN(n117) );
  INVD0BWP12T30P140 U33 ( .I(ctr[7]), .ZN(n6) );
  ND2D0BWP12T30P140 U34 ( .A1(n12), .A2(n117), .ZN(n115) );
  OAI22D0BWP12T30P140 U35 ( .A1(n117), .A2(n6), .B1(n129), .B2(n115), .ZN(n110) );
  ND2D0BWP12T30P140 U36 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n28) );
  AOI21D0BWP12T30P140 U37 ( .A1(n66), .A2(n28), .B(n7), .ZN(n20) );
  INVD0BWP12T30P140 U38 ( .I(txr[1]), .ZN(n8) );
  INVD0BWP12T30P140 U39 ( .I(wb_dat_i[1]), .ZN(n133) );
  ND2D0BWP12T30P140 U40 ( .A1(n12), .A2(n20), .ZN(n19) );
  OAI22D0BWP12T30P140 U41 ( .A1(n20), .A2(n8), .B1(n133), .B2(n19), .ZN(n96)
         );
  INVD0BWP12T30P140 U42 ( .I(txr[5]), .ZN(n9) );
  OAI22D0BWP12T30P140 U43 ( .A1(n20), .A2(n9), .B1(n141), .B2(n19), .ZN(n100)
         );
  INVD0BWP12T30P140 U44 ( .I(txr[6]), .ZN(n10) );
  OAI22D0BWP12T30P140 U45 ( .A1(n20), .A2(n10), .B1(n144), .B2(n19), .ZN(n101)
         );
  INVD0BWP12T30P140 U46 ( .I(wb_dat_i[0]), .ZN(n131) );
  ND2D0BWP12T30P140 U47 ( .A1(n12), .A2(n11), .ZN(n68) );
  INVD0BWP12T30P140 U48 ( .I(cr[0]), .ZN(n13) );
  OAI22D0BWP12T30P140 U49 ( .A1(n131), .A2(n69), .B1(n68), .B2(n13), .ZN(n71)
         );
  INVD0BWP12T30P140 U50 ( .I(wb_dat_i[4]), .ZN(n139) );
  INVD0BWP12T30P140 U51 ( .I(cr[4]), .ZN(n65) );
  OAI22D0BWP12T30P140 U52 ( .A1(n139), .A2(n69), .B1(n14), .B2(n65), .ZN(n77)
         );
  INVD0BWP12T30P140 U53 ( .I(txr[7]), .ZN(n15) );
  OAI22D0BWP12T30P140 U54 ( .A1(n20), .A2(n15), .B1(n129), .B2(n19), .ZN(n102)
         );
  INVD0BWP12T30P140 U55 ( .I(txr[0]), .ZN(n16) );
  OAI22D0BWP12T30P140 U56 ( .A1(n20), .A2(n16), .B1(n131), .B2(n19), .ZN(n95)
         );
  ND2D0BWP12T30P140 U57 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(n17) );
  NR2D0BWP12T30P140 U58 ( .A1(wb_ack_o), .A2(n17), .ZN(N20) );
  INVD0BWP12T30P140 U59 ( .I(sr_0), .ZN(n145) );
  AOI211D0BWP12T30P140 U60 ( .A1(n18), .A2(n145), .B(n147), .C(cr[0]), .ZN(
        N117) );
  INVD0BWP12T30P140 U61 ( .I(txr[2]), .ZN(n44) );
  INVD0BWP12T30P140 U62 ( .I(wb_dat_i[2]), .ZN(n135) );
  OAI22D0BWP12T30P140 U63 ( .A1(n20), .A2(n44), .B1(n135), .B2(n19), .ZN(n97)
         );
  INVD0BWP12T30P140 U64 ( .I(txr[3]), .ZN(n49) );
  INVD0BWP12T30P140 U65 ( .I(wb_dat_i[3]), .ZN(n137) );
  OAI22D0BWP12T30P140 U66 ( .A1(n20), .A2(n49), .B1(n137), .B2(n19), .ZN(n98)
         );
  INVD0BWP12T30P140 U67 ( .I(txr[4]), .ZN(n62) );
  OAI22D0BWP12T30P140 U68 ( .A1(n20), .A2(n62), .B1(n139), .B2(n19), .ZN(n99)
         );
  INVD0BWP12T30P140 U69 ( .I(cr[3]), .ZN(n47) );
  OAI22D0BWP12T30P140 U70 ( .A1(n137), .A2(n69), .B1(n21), .B2(n47), .ZN(n78)
         );
  AOI21D0BWP12T30P140 U71 ( .A1(sr[5]), .A2(n22), .B(i2c_al), .ZN(n23) );
  NR2D0BWP12T30P140 U72 ( .A1(n147), .A2(n23), .ZN(N114) );
  INVD0BWP12T30P140 U73 ( .I(cr[1]), .ZN(n24) );
  OAI22D0BWP12T30P140 U74 ( .A1(n133), .A2(n69), .B1(n68), .B2(n24), .ZN(n72)
         );
  INVD0BWP12T30P140 U75 ( .I(ctr[0]), .ZN(n25) );
  OAI22D0BWP12T30P140 U76 ( .A1(n117), .A2(n25), .B1(n131), .B2(n115), .ZN(
        n103) );
  INVD0BWP12T30P140 U77 ( .I(ctr[1]), .ZN(n26) );
  OAI22D0BWP12T30P140 U78 ( .A1(n117), .A2(n26), .B1(n133), .B2(n115), .ZN(
        n104) );
  INVD0BWP12T30P140 U79 ( .I(ctr[5]), .ZN(n27) );
  OAI22D0BWP12T30P140 U80 ( .A1(n117), .A2(n27), .B1(n141), .B2(n115), .ZN(
        n108) );
  INVD0BWP12T30P140 U81 ( .I(ctr[6]), .ZN(n146) );
  OAI22D0BWP12T30P140 U82 ( .A1(n117), .A2(n146), .B1(n144), .B2(n115), .ZN(
        n109) );
  INVD0BWP12T30P140 U83 ( .I(n57), .ZN(n50) );
  AOI22D0BWP12T30P140 U84 ( .A1(n50), .A2(ctr[0]), .B1(n119), .B2(prer[0]), 
        .ZN(n31) );
  INVD0BWP12T30P140 U85 ( .I(wb_adr_i[2]), .ZN(n53) );
  INVD0BWP12T30P140 U86 ( .I(n28), .ZN(n59) );
  AOI22D0BWP12T30P140 U87 ( .A1(n59), .A2(rxr[0]), .B1(n55), .B2(prer[8]), 
        .ZN(n30) );
  AOI222D0BWP12T30P140 U88 ( .A1(n50), .A2(cr[0]), .B1(txr[0]), .B2(n55), .C1(
        n119), .C2(sr_0), .ZN(n29) );
  AOI32D0BWP12T30P140 U89 ( .A1(n31), .A2(n53), .A3(n30), .B1(wb_adr_i[2]), 
        .B2(n29), .ZN(N43) );
  AOI22D0BWP12T30P140 U90 ( .A1(n50), .A2(ctr[1]), .B1(n119), .B2(prer[1]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U91 ( .A1(n59), .A2(rxr[1]), .B1(n55), .B2(prer[9]), 
        .ZN(n33) );
  AOI222D0BWP12T30P140 U92 ( .A1(n50), .A2(cr[1]), .B1(txr[1]), .B2(n55), .C1(
        n119), .C2(sr_1), .ZN(n32) );
  AOI32D0BWP12T30P140 U93 ( .A1(n34), .A2(n53), .A3(n33), .B1(wb_adr_i[2]), 
        .B2(n32), .ZN(N44) );
  AOI22D0BWP12T30P140 U94 ( .A1(n55), .A2(prer[15]), .B1(n119), .B2(prer[7]), 
        .ZN(n37) );
  AOI22D0BWP12T30P140 U95 ( .A1(n50), .A2(ctr[7]), .B1(n59), .B2(rxr[7]), .ZN(
        n36) );
  AOI222D0BWP12T30P140 U96 ( .A1(n50), .A2(cr[7]), .B1(txr[7]), .B2(n55), .C1(
        n119), .C2(sr[7]), .ZN(n35) );
  AOI32D0BWP12T30P140 U97 ( .A1(n37), .A2(n53), .A3(n36), .B1(wb_adr_i[2]), 
        .B2(n35), .ZN(N50) );
  AOI22D0BWP12T30P140 U98 ( .A1(n50), .A2(ctr[5]), .B1(n119), .B2(prer[5]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U99 ( .A1(n59), .A2(rxr[5]), .B1(n55), .B2(prer[13]), 
        .ZN(n39) );
  AOI222D0BWP12T30P140 U100 ( .A1(n50), .A2(cr[5]), .B1(txr[5]), .B2(n55), 
        .C1(n119), .C2(sr[5]), .ZN(n38) );
  AOI32D0BWP12T30P140 U101 ( .A1(n40), .A2(n53), .A3(n39), .B1(wb_adr_i[2]), 
        .B2(n38), .ZN(N48) );
  ND2D0BWP12T30P140 U102 ( .A1(wb_adr_i[2]), .A2(n55), .ZN(n63) );
  INVD0BWP12T30P140 U103 ( .I(ctr[2]), .ZN(n70) );
  AOI22D0BWP12T30P140 U104 ( .A1(n55), .A2(prer[10]), .B1(n119), .B2(prer[2]), 
        .ZN(n41) );
  OAI21D0BWP12T30P140 U105 ( .A1(n57), .A2(n70), .B(n41), .ZN(n42) );
  AOI21D0BWP12T30P140 U106 ( .A1(n59), .A2(rxr[2]), .B(n42), .ZN(n43) );
  ND2D0BWP12T30P140 U107 ( .A1(wb_adr_i[2]), .A2(n50), .ZN(n60) );
  INVD0BWP12T30P140 U108 ( .I(cr[2]), .ZN(n67) );
  OAI222D0BWP12T30P140 U109 ( .A1(n63), .A2(n44), .B1(wb_adr_i[2]), .B2(n43), 
        .C1(n60), .C2(n67), .ZN(n113) );
  INVD0BWP12T30P140 U110 ( .I(ctr[3]), .ZN(n114) );
  AOI22D0BWP12T30P140 U111 ( .A1(n55), .A2(prer[11]), .B1(n119), .B2(prer[3]), 
        .ZN(n45) );
  OAI21D0BWP12T30P140 U112 ( .A1(n57), .A2(n114), .B(n45), .ZN(n46) );
  AOI21D0BWP12T30P140 U113 ( .A1(n59), .A2(rxr[3]), .B(n46), .ZN(n48) );
  OAI222D0BWP12T30P140 U114 ( .A1(n63), .A2(n49), .B1(wb_adr_i[2]), .B2(n48), 
        .C1(n60), .C2(n47), .ZN(n112) );
  AOI22D0BWP12T30P140 U115 ( .A1(n55), .A2(prer[14]), .B1(n119), .B2(prer[6]), 
        .ZN(n54) );
  AOI22D0BWP12T30P140 U116 ( .A1(n50), .A2(ctr[6]), .B1(n59), .B2(rxr[6]), 
        .ZN(n52) );
  AOI222D0BWP12T30P140 U117 ( .A1(n50), .A2(cr[6]), .B1(txr[6]), .B2(n55), 
        .C1(n119), .C2(sr[6]), .ZN(n51) );
  AOI32D0BWP12T30P140 U118 ( .A1(n54), .A2(n53), .A3(n52), .B1(wb_adr_i[2]), 
        .B2(n51), .ZN(N49) );
  INVD0BWP12T30P140 U119 ( .I(ctr[4]), .ZN(n116) );
  AOI22D0BWP12T30P140 U120 ( .A1(n55), .A2(prer[12]), .B1(n119), .B2(prer[4]), 
        .ZN(n56) );
  OAI21D0BWP12T30P140 U121 ( .A1(n57), .A2(n116), .B(n56), .ZN(n58) );
  AOI21D0BWP12T30P140 U122 ( .A1(n59), .A2(rxr[4]), .B(n58), .ZN(n61) );
  OAI222D0BWP12T30P140 U123 ( .A1(n63), .A2(n62), .B1(wb_adr_i[2]), .B2(n61), 
        .C1(n60), .C2(n65), .ZN(n111) );
  AOI21D0BWP12T30P140 U124 ( .A1(n65), .A2(n64), .B(n147), .ZN(N116) );
  AN2D0BWP12T30P140 U125 ( .A1(irxack), .A2(n66), .Z(N115) );
  OAI22D0BWP12T30P140 U126 ( .A1(n135), .A2(n69), .B1(n68), .B2(n67), .ZN(n73)
         );
  OAI22D0BWP12T30P140 U127 ( .A1(n117), .A2(n70), .B1(n135), .B2(n115), .ZN(
        n105) );
  OAI22D0BWP12T30P140 U128 ( .A1(n117), .A2(n114), .B1(n137), .B2(n115), .ZN(
        n106) );
  OAI22D0BWP12T30P140 U129 ( .A1(n117), .A2(n116), .B1(n139), .B2(n115), .ZN(
        n107) );
  ND2D0BWP12T30P140 U130 ( .A1(n119), .A2(n118), .ZN(n128) );
  AOI21D0BWP12T30P140 U131 ( .A1(prer[0]), .A2(n128), .B(wb_rst_i), .ZN(n120)
         );
  OAI21D0BWP12T30P140 U132 ( .A1(n131), .A2(n128), .B(n120), .ZN(n79) );
  AOI21D0BWP12T30P140 U133 ( .A1(prer[1]), .A2(n128), .B(n147), .ZN(n121) );
  OAI21D0BWP12T30P140 U134 ( .A1(n133), .A2(n128), .B(n121), .ZN(n80) );
  AOI21D0BWP12T30P140 U135 ( .A1(prer[2]), .A2(n128), .B(wb_rst_i), .ZN(n122)
         );
  OAI21D0BWP12T30P140 U136 ( .A1(n135), .A2(n128), .B(n122), .ZN(n81) );
  AOI21D0BWP12T30P140 U137 ( .A1(prer[3]), .A2(n128), .B(n147), .ZN(n123) );
  OAI21D0BWP12T30P140 U138 ( .A1(n137), .A2(n128), .B(n123), .ZN(n82) );
  AOI21D0BWP12T30P140 U139 ( .A1(prer[4]), .A2(n128), .B(wb_rst_i), .ZN(n124)
         );
  OAI21D0BWP12T30P140 U140 ( .A1(n139), .A2(n128), .B(n124), .ZN(n83) );
  AOI21D0BWP12T30P140 U141 ( .A1(prer[5]), .A2(n128), .B(n147), .ZN(n125) );
  OAI21D0BWP12T30P140 U142 ( .A1(n141), .A2(n128), .B(n125), .ZN(n84) );
  AOI21D0BWP12T30P140 U143 ( .A1(prer[6]), .A2(n128), .B(wb_rst_i), .ZN(n126)
         );
  OAI21D0BWP12T30P140 U144 ( .A1(n144), .A2(n128), .B(n126), .ZN(n85) );
  AOI21D0BWP12T30P140 U145 ( .A1(prer[7]), .A2(n128), .B(n147), .ZN(n127) );
  OAI21D0BWP12T30P140 U146 ( .A1(n129), .A2(n128), .B(n127), .ZN(n86) );
  AOI21D0BWP12T30P140 U147 ( .A1(prer[8]), .A2(n143), .B(wb_rst_i), .ZN(n130)
         );
  OAI21D0BWP12T30P140 U148 ( .A1(n131), .A2(n143), .B(n130), .ZN(n87) );
  AOI21D0BWP12T30P140 U149 ( .A1(prer[9]), .A2(n143), .B(n147), .ZN(n132) );
  OAI21D0BWP12T30P140 U150 ( .A1(n133), .A2(n143), .B(n132), .ZN(n88) );
  AOI21D0BWP12T30P140 U151 ( .A1(prer[10]), .A2(n143), .B(n147), .ZN(n134) );
  OAI21D0BWP12T30P140 U152 ( .A1(n135), .A2(n143), .B(n134), .ZN(n89) );
  AOI21D0BWP12T30P140 U153 ( .A1(prer[11]), .A2(n143), .B(n147), .ZN(n136) );
  OAI21D0BWP12T30P140 U154 ( .A1(n137), .A2(n143), .B(n136), .ZN(n90) );
  AOI21D0BWP12T30P140 U155 ( .A1(prer[12]), .A2(n143), .B(n147), .ZN(n138) );
  OAI21D0BWP12T30P140 U156 ( .A1(n139), .A2(n143), .B(n138), .ZN(n91) );
  AOI21D0BWP12T30P140 U157 ( .A1(prer[13]), .A2(n143), .B(n147), .ZN(n140) );
  OAI21D0BWP12T30P140 U158 ( .A1(n141), .A2(n143), .B(n140), .ZN(n92) );
  AOI21D0BWP12T30P140 U159 ( .A1(prer[14]), .A2(n143), .B(n147), .ZN(n142) );
  OAI21D0BWP12T30P140 U160 ( .A1(n144), .A2(n143), .B(n142), .ZN(n93) );
  CKBD0BWP12T30P140 U161 ( .I(wb_clk_i), .Z(n152) );
  CKBD0BWP12T30P140 U162 ( .I(wb_clk_i), .Z(n153) );
  CKBD0BWP12T30P140 U163 ( .I(wb_clk_i), .Z(n151) );
  CKBD0BWP12T30P140 U164 ( .I(arst_i), .Z(n149) );
  CKBD0BWP12T30P140 U165 ( .I(arst_i), .Z(n148) );
  NR3D0BWP12T30P140 U166 ( .A1(n147), .A2(n146), .A3(n145), .ZN(N121) );
endmodule


module registerInterface ( clk, addr, dataIn, writeEn, dataOut, myReg0, myReg1, 
        myReg2, myReg3, myReg4, myReg5, myReg6, myReg7 );
  input [7:0] addr;
  input [7:0] dataIn;
  output [7:0] dataOut;
  output [7:0] myReg0;
  output [7:0] myReg1;
  output [7:0] myReg2;
  output [7:0] myReg3;
  input [7:0] myReg4;
  input [7:0] myReg5;
  input [7:0] myReg6;
  input [7:0] myReg7;
  input clk, writeEn;
  wire   N57, N58, N59, N60, N61, N62, N63, N64, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123;

  DFQD2BWP12T30P140 myReg2_reg_6_ ( .D(n83), .CP(n122), .Q(myReg2[6]) );
  DFQD2BWP12T30P140 myReg2_reg_5_ ( .D(n82), .CP(n122), .Q(myReg2[5]) );
  DFQD2BWP12T30P140 myReg3_reg_5_ ( .D(n74), .CP(n122), .Q(myReg3[5]) );
  DFQD2BWP12T30P140 myReg3_reg_2_ ( .D(n71), .CP(n122), .Q(myReg3[2]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(N58), .CP(n122), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 myReg3_reg_7_ ( .D(n76), .CP(clk), .Q(myReg3[7]) );
  DFQD2BWP12T30P140 myReg3_reg_1_ ( .D(n70), .CP(clk), .Q(myReg3[1]) );
  DFQD2BWP12T30P140 myReg1_reg_6_ ( .D(n91), .CP(n123), .Q(myReg1[6]) );
  DFQD2BWP12T30P140 myReg1_reg_5_ ( .D(n90), .CP(n123), .Q(myReg1[5]) );
  DFQD2BWP12T30P140 myReg1_reg_4_ ( .D(n89), .CP(n123), .Q(myReg1[4]) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(N64), .CP(n123), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 dataOut_reg_6_ ( .D(N63), .CP(n123), .Q(dataOut[6]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(N62), .CP(n123), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_4_ ( .D(N61), .CP(n123), .Q(dataOut[4]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(N60), .CP(n123), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(N59), .CP(n123), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(N57), .CP(n123), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 myReg3_reg_4_ ( .D(n73), .CP(clk), .Q(myReg3[4]) );
  DFQD2BWP12T30P140 myReg1_reg_3_ ( .D(n88), .CP(n122), .Q(myReg1[3]) );
  DFQD2BWP12T30P140 myReg2_reg_4_ ( .D(n81), .CP(n122), .Q(myReg2[4]) );
  DFQD2BWP12T30P140 myReg2_reg_1_ ( .D(n78), .CP(n122), .Q(myReg2[1]) );
  DFQD2BWP12T30P140 myReg0_reg_6_ ( .D(n67), .CP(n122), .Q(myReg0[6]) );
  DFQD2BWP12T30P140 myReg1_reg_2_ ( .D(n87), .CP(n122), .Q(myReg1[2]) );
  DFQD2BWP12T30P140 myReg1_reg_1_ ( .D(n86), .CP(n122), .Q(myReg1[1]) );
  DFQD2BWP12T30P140 myReg2_reg_7_ ( .D(n84), .CP(n122), .Q(myReg2[7]) );
  DFQD2BWP12T30P140 myReg2_reg_3_ ( .D(n80), .CP(n122), .Q(myReg2[3]) );
  DFQD2BWP12T30P140 myReg2_reg_0_ ( .D(n77), .CP(n122), .Q(myReg2[0]) );
  DFQD2BWP12T30P140 myReg2_reg_2_ ( .D(n79), .CP(n122), .Q(myReg2[2]) );
  DFQD2BWP12T30P140 myReg0_reg_7_ ( .D(n68), .CP(n122), .Q(myReg0[7]) );
  DFQD2BWP12T30P140 myReg0_reg_0_ ( .D(n61), .CP(n122), .Q(myReg0[0]) );
  DFQD2BWP12T30P140 myReg3_reg_3_ ( .D(n72), .CP(n123), .Q(myReg3[3]) );
  DFQD2BWP12T30P140 myReg0_reg_5_ ( .D(n66), .CP(n123), .Q(myReg0[5]) );
  DFQD2BWP12T30P140 myReg0_reg_2_ ( .D(n63), .CP(n123), .Q(myReg0[2]) );
  DFQD2BWP12T30P140 myReg1_reg_7_ ( .D(n92), .CP(n123), .Q(myReg1[7]) );
  DFQD2BWP12T30P140 myReg0_reg_1_ ( .D(n62), .CP(n123), .Q(myReg0[1]) );
  DFQD2BWP12T30P140 myReg3_reg_0_ ( .D(n69), .CP(n123), .Q(myReg3[0]) );
  DFQD2BWP12T30P140 myReg0_reg_3_ ( .D(n64), .CP(n123), .Q(myReg0[3]) );
  DFQD2BWP12T30P140 myReg0_reg_4_ ( .D(n65), .CP(n123), .Q(myReg0[4]) );
  DFQD1BWP12T30P140 myReg3_reg_6_ ( .D(n75), .CP(n123), .Q(myReg3[6]) );
  DFQD1BWP12T30P140 myReg1_reg_0_ ( .D(n85), .CP(n122), .Q(myReg1[0]) );
  INVD0BWP12T30P140 U3 ( .I(addr[0]), .ZN(n54) );
  NR2D0BWP12T30P140 U4 ( .A1(n54), .A2(addr[1]), .ZN(n99) );
  INVD0BWP12T30P140 U5 ( .I(addr[1]), .ZN(n42) );
  NR2D0BWP12T30P140 U6 ( .A1(n42), .A2(addr[0]), .ZN(n98) );
  NR2D0BWP12T30P140 U7 ( .A1(addr[1]), .A2(addr[0]), .ZN(n53) );
  AOI222D0BWP12T30P140 U8 ( .A1(n99), .A2(myReg1[3]), .B1(n98), .B2(myReg2[3]), 
        .C1(n53), .C2(myReg0[3]), .ZN(n35) );
  INVD0BWP12T30P140 U9 ( .I(addr[2]), .ZN(n100) );
  NR4D0BWP12T30P140 U10 ( .A1(addr[5]), .A2(addr[6]), .A3(addr[3]), .A4(
        addr[4]), .ZN(n33) );
  INR2D1BWP12T30P140 U11 ( .A1(n33), .B1(addr[7]), .ZN(n106) );
  ND2D0BWP12T30P140 U12 ( .A1(n100), .A2(n106), .ZN(n110) );
  NR2D0BWP12T30P140 U13 ( .A1(n42), .A2(n54), .ZN(n52) );
  OAI211D0BWP12T30P140 U14 ( .A1(addr[2]), .A2(myReg3[3]), .B(n106), .C(n52), 
        .ZN(n34) );
  OAI21D0BWP12T30P140 U15 ( .A1(n35), .A2(n110), .B(n34), .ZN(N60) );
  INVD0BWP12T30P140 U16 ( .I(n99), .ZN(n102) );
  AO22D0BWP12T30P140 U17 ( .A1(n52), .A2(myReg3[4]), .B1(n53), .B2(myReg0[4]), 
        .Z(n36) );
  AOI211D0BWP12T30P140 U18 ( .A1(n98), .A2(myReg2[4]), .B(addr[2]), .C(n36), 
        .ZN(n37) );
  INVD0BWP12T30P140 U19 ( .I(myReg1[4]), .ZN(n48) );
  INVD0BWP12T30P140 U20 ( .I(n106), .ZN(n55) );
  AOI221D0BWP12T30P140 U21 ( .A1(n102), .A2(n37), .B1(n48), .B2(n37), .C(n55), 
        .ZN(N61) );
  AOI22D0BWP12T30P140 U22 ( .A1(n99), .A2(myReg1[0]), .B1(n53), .B2(myReg0[0]), 
        .ZN(n39) );
  AOI22D0BWP12T30P140 U23 ( .A1(n98), .A2(myReg2[0]), .B1(n52), .B2(myReg3[0]), 
        .ZN(n38) );
  AOI21D0BWP12T30P140 U24 ( .A1(n39), .A2(n38), .B(n110), .ZN(N57) );
  INVD0BWP12T30P140 U25 ( .I(n98), .ZN(n103) );
  INVD0BWP12T30P140 U26 ( .I(myReg2[5]), .ZN(n94) );
  INVD0BWP12T30P140 U27 ( .I(myReg1[5]), .ZN(n49) );
  INVD0BWP12T30P140 U28 ( .I(n52), .ZN(n109) );
  INVD0BWP12T30P140 U29 ( .I(myReg3[5]), .ZN(n93) );
  OAI222D0BWP12T30P140 U30 ( .A1(n49), .A2(n102), .B1(n54), .B2(n100), .C1(
        n109), .C2(n93), .ZN(n40) );
  INVD0BWP12T30P140 U31 ( .I(n53), .ZN(n58) );
  NR2D0BWP12T30P140 U32 ( .A1(n110), .A2(n58), .ZN(n104) );
  AOI22D0BWP12T30P140 U33 ( .A1(n106), .A2(n40), .B1(myReg0[5]), .B2(n104), 
        .ZN(n41) );
  OAI31D0BWP12T30P140 U34 ( .A1(n110), .A2(n103), .A3(n94), .B(n41), .ZN(N62)
         );
  INVD0BWP12T30P140 U35 ( .I(myReg1[6]), .ZN(n51) );
  INVD0BWP12T30P140 U36 ( .I(myReg2[6]), .ZN(n96) );
  INVD0BWP12T30P140 U37 ( .I(myReg3[6]), .ZN(n47) );
  OAI222D0BWP12T30P140 U38 ( .A1(n96), .A2(n103), .B1(n42), .B2(n100), .C1(
        n109), .C2(n47), .ZN(n43) );
  AOI22D0BWP12T30P140 U39 ( .A1(n106), .A2(n43), .B1(myReg0[6]), .B2(n104), 
        .ZN(n44) );
  OAI31D0BWP12T30P140 U40 ( .A1(n110), .A2(n102), .A3(n51), .B(n44), .ZN(N63)
         );
  IND2D1BWP12T30P140 U41 ( .A1(n110), .B1(writeEn), .ZN(n59) );
  NR2D0BWP12T30P140 U42 ( .A1(n59), .A2(n109), .ZN(n113) );
  INVD0BWP12T30P140 U43 ( .I(dataIn[4]), .ZN(n118) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n113), .A2(n118), .B1(myReg3[4]), .B2(n113), 
        .ZN(n73) );
  AOI22D0BWP12T30P140 U45 ( .A1(n99), .A2(myReg1[7]), .B1(n53), .B2(myReg0[7]), 
        .ZN(n46) );
  AOI22D0BWP12T30P140 U46 ( .A1(n98), .A2(myReg2[7]), .B1(n52), .B2(myReg3[7]), 
        .ZN(n45) );
  AOI21D0BWP12T30P140 U47 ( .A1(n46), .A2(n45), .B(n110), .ZN(N64) );
  INVD0BWP12T30P140 U48 ( .I(dataIn[6]), .ZN(n97) );
  INVD0BWP12T30P140 U49 ( .I(n113), .ZN(n60) );
  AOI22D0BWP12T30P140 U50 ( .A1(n113), .A2(n97), .B1(n47), .B2(n60), .ZN(n75)
         );
  NR2D0BWP12T30P140 U51 ( .A1(n59), .A2(n102), .ZN(n116) );
  INVD0BWP12T30P140 U52 ( .I(dataIn[3]), .ZN(n117) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n116), .A2(n117), .B1(myReg1[3]), .B2(n116), 
        .ZN(n88) );
  INVD0BWP12T30P140 U54 ( .I(n116), .ZN(n50) );
  AOI22D0BWP12T30P140 U55 ( .A1(n116), .A2(n118), .B1(n48), .B2(n50), .ZN(n89)
         );
  INVD0BWP12T30P140 U56 ( .I(dataIn[5]), .ZN(n119) );
  AOI22D0BWP12T30P140 U57 ( .A1(n116), .A2(n119), .B1(n49), .B2(n50), .ZN(n90)
         );
  AOI22D0BWP12T30P140 U58 ( .A1(n116), .A2(n97), .B1(n51), .B2(n50), .ZN(n91)
         );
  NR2D0BWP12T30P140 U59 ( .A1(n59), .A2(n103), .ZN(n111) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n111), .A2(n118), .B1(myReg2[4]), .B2(n111), 
        .ZN(n81) );
  INVD0BWP12T30P140 U61 ( .I(dataIn[1]), .ZN(n114) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n113), .A2(n114), .B1(myReg3[1]), .B2(n113), 
        .ZN(n70) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n111), .A2(n114), .B1(myReg2[1]), .B2(n111), 
        .ZN(n78) );
  INVD0BWP12T30P140 U64 ( .I(dataIn[7]), .ZN(n115) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n113), .A2(n115), .B1(myReg3[7]), .B2(n113), 
        .ZN(n76) );
  AOI22D0BWP12T30P140 U66 ( .A1(n99), .A2(myReg1[1]), .B1(n52), .B2(myReg3[1]), 
        .ZN(n57) );
  AOI222D0BWP12T30P140 U67 ( .A1(n54), .A2(addr[2]), .B1(n53), .B2(myReg0[1]), 
        .C1(myReg2[1]), .C2(n98), .ZN(n56) );
  OAI22D0BWP12T30P140 U68 ( .A1(n57), .A2(n110), .B1(n56), .B2(n55), .ZN(N58)
         );
  NR2D0BWP12T30P140 U69 ( .A1(n59), .A2(n58), .ZN(n121) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n121), .A2(n97), .B1(myReg0[6]), .B2(n121), 
        .ZN(n67) );
  INVD0BWP12T30P140 U71 ( .I(dataIn[2]), .ZN(n120) );
  INVD0BWP12T30P140 U72 ( .I(myReg3[2]), .ZN(n108) );
  AOI22D0BWP12T30P140 U73 ( .A1(n113), .A2(n120), .B1(n108), .B2(n60), .ZN(n71) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n116), .A2(n120), .B1(myReg1[2]), .B2(n116), 
        .ZN(n87) );
  AOI22D0BWP12T30P140 U75 ( .A1(n113), .A2(n119), .B1(n93), .B2(n60), .ZN(n74)
         );
  MAOI22D0BWP12T30P140 U76 ( .A1(n116), .A2(n114), .B1(myReg1[1]), .B2(n116), 
        .ZN(n86) );
  INVD0BWP12T30P140 U77 ( .I(n111), .ZN(n95) );
  AOI22D0BWP12T30P140 U78 ( .A1(n111), .A2(n119), .B1(n94), .B2(n95), .ZN(n82)
         );
  INVD0BWP12T30P140 U79 ( .I(dataIn[0]), .ZN(n112) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n116), .A2(n112), .B1(myReg1[0]), .B2(n116), 
        .ZN(n85) );
  AOI22D0BWP12T30P140 U81 ( .A1(n111), .A2(n97), .B1(n96), .B2(n95), .ZN(n83)
         );
  MAOI22D0BWP12T30P140 U82 ( .A1(n111), .A2(n115), .B1(myReg2[7]), .B2(n111), 
        .ZN(n84) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n111), .A2(n117), .B1(myReg2[3]), .B2(n111), 
        .ZN(n80) );
  AOI22D0BWP12T30P140 U84 ( .A1(n99), .A2(myReg1[2]), .B1(n98), .B2(myReg2[2]), 
        .ZN(n101) );
  AOI22D0BWP12T30P140 U85 ( .A1(n103), .A2(n102), .B1(n101), .B2(n100), .ZN(
        n105) );
  AOI22D0BWP12T30P140 U86 ( .A1(n106), .A2(n105), .B1(myReg0[2]), .B2(n104), 
        .ZN(n107) );
  OAI31D0BWP12T30P140 U87 ( .A1(n110), .A2(n109), .A3(n108), .B(n107), .ZN(N59) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n111), .A2(n112), .B1(myReg2[0]), .B2(n111), 
        .ZN(n77) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n121), .A2(n115), .B1(myReg0[7]), .B2(n121), 
        .ZN(n68) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n121), .A2(n112), .B1(myReg0[0]), .B2(n121), 
        .ZN(n61) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n111), .A2(n120), .B1(myReg2[2]), .B2(n111), 
        .ZN(n79) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n113), .A2(n117), .B1(myReg3[3]), .B2(n113), 
        .ZN(n72) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n113), .A2(n112), .B1(myReg3[0]), .B2(n113), 
        .ZN(n69) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n121), .A2(n114), .B1(myReg0[1]), .B2(n121), 
        .ZN(n62) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n116), .A2(n115), .B1(myReg1[7]), .B2(n116), 
        .ZN(n92) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n121), .A2(n117), .B1(myReg0[3]), .B2(n121), 
        .ZN(n64) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n121), .A2(n118), .B1(myReg0[4]), .B2(n121), 
        .ZN(n65) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n121), .A2(n119), .B1(myReg0[5]), .B2(n121), 
        .ZN(n66) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n121), .A2(n120), .B1(myReg0[2]), .B2(n121), 
        .ZN(n63) );
  CKBD0BWP12T30P140 U100 ( .I(clk), .Z(n123) );
  CKBD0BWP12T30P140 U101 ( .I(clk), .Z(n122) );
endmodule


module serialInterface ( clearStartStopDet, clk, dataIn, dataOut, regAddr, rst, 
        scl, sdaIn, sdaOut, startStopDetState, writeEn );
  input [7:0] dataIn;
  output [7:0] dataOut;
  output [7:0] regAddr;
  input [1:0] startStopDetState;
  input clk, rst, scl, sdaIn;
  output clearStartStopDet, sdaOut, writeEn;
  wire   n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221;
  wire   [3:0] CurrState_SISt;
  wire   [1:0] streamSt;
  wire   [7:0] txData;
  wire   [7:0] rxData;
  wire   [2:0] bitCnt;

  DFQD2BWP12T30P140 txData_reg_2_ ( .D(n181), .CP(n219), .Q(txData[2]) );
  DFQD2BWP12T30P140 txData_reg_3_ ( .D(n180), .CP(n219), .Q(txData[3]) );
  DFQD2BWP12T30P140 txData_reg_4_ ( .D(n179), .CP(n219), .Q(txData[4]) );
  DFQD2BWP12T30P140 txData_reg_0_ ( .D(n183), .CP(n219), .Q(txData[0]) );
  DFQD2BWP12T30P140 dataOut_reg_6_ ( .D(n193), .CP(n219), .Q(dataOut[6]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(n192), .CP(n219), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_4_ ( .D(n191), .CP(n219), .Q(dataOut[4]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n190), .CP(n219), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n189), .CP(n219), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n188), .CP(n219), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n187), .CP(n219), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 txData_reg_5_ ( .D(n178), .CP(n221), .Q(txData[5]) );
  DFQD2BWP12T30P140 txData_reg_6_ ( .D(n177), .CP(n221), .Q(txData[6]) );
  DFQD2BWP12T30P140 txData_reg_7_ ( .D(n184), .CP(n221), .Q(txData[7]) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(n194), .CP(n220), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 clearStartStopDet_reg ( .D(n199), .CP(n220), .Q(
        clearStartStopDet) );
  DFQD2BWP12T30P140 streamSt_reg_1_ ( .D(n186), .CP(n220), .Q(streamSt[1]) );
  DFQD2BWP12T30P140 rxData_reg_3_ ( .D(n172), .CP(n221), .Q(rxData[3]) );
  DFQD2BWP12T30P140 writeEn_reg ( .D(n200), .CP(n220), .Q(writeEn) );
  DFQD2BWP12T30P140 regAddr_reg_7_ ( .D(n162), .CP(n221), .Q(regAddr[7]) );
  DFQD2BWP12T30P140 regAddr_reg_5_ ( .D(n164), .CP(n219), .Q(regAddr[5]) );
  DFQD2BWP12T30P140 rxData_reg_6_ ( .D(n175), .CP(n221), .Q(rxData[6]) );
  DFQD2BWP12T30P140 rxData_reg_4_ ( .D(n173), .CP(n221), .Q(rxData[4]) );
  DFQD2BWP12T30P140 rxData_reg_7_ ( .D(n176), .CP(n221), .Q(rxData[7]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_1_ ( .D(n202), .CP(n220), .Q(
        CurrState_SISt[1]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_2_ ( .D(n203), .CP(n220), .Q(
        CurrState_SISt[2]) );
  DFQD2BWP12T30P140 regAddr_reg_4_ ( .D(n165), .CP(n221), .Q(regAddr[4]) );
  DFQD2BWP12T30P140 rxData_reg_5_ ( .D(n174), .CP(n221), .Q(rxData[5]) );
  DFQD2BWP12T30P140 rxData_reg_2_ ( .D(n171), .CP(n221), .Q(rxData[2]) );
  DFQD2BWP12T30P140 regAddr_reg_6_ ( .D(n163), .CP(n220), .Q(regAddr[6]) );
  DFQD2BWP12T30P140 bitCnt_reg_0_ ( .D(n196), .CP(n220), .Q(bitCnt[0]) );
  DFQD2BWP12T30P140 streamSt_reg_0_ ( .D(n185), .CP(n220), .Q(streamSt[0]) );
  DFQD2BWP12T30P140 bitCnt_reg_1_ ( .D(n197), .CP(n220), .Q(bitCnt[1]) );
  DFQD2BWP12T30P140 rxData_reg_1_ ( .D(n170), .CP(n221), .Q(rxData[1]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_3_ ( .D(n204), .CP(n220), .Q(
        CurrState_SISt[3]) );
  DFQD2BWP12T30P140 regAddr_reg_3_ ( .D(n166), .CP(n220), .Q(regAddr[3]) );
  DFQD2BWP12T30P140 rxData_reg_0_ ( .D(n205), .CP(n221), .Q(rxData[0]) );
  DFQD2BWP12T30P140 regAddr_reg_2_ ( .D(n167), .CP(n219), .Q(regAddr[2]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_0_ ( .D(n201), .CP(n220), .Q(
        CurrState_SISt[0]) );
  DFQD2BWP12T30P140 regAddr_reg_1_ ( .D(n168), .CP(n221), .Q(regAddr[1]) );
  DFQD1BWP12T30P140 txData_reg_1_ ( .D(n182), .CP(n219), .Q(txData[1]) );
  DFQD1BWP12T30P140 sdaOut_reg ( .D(n195), .CP(n221), .Q(sdaOut) );
  DFQD1BWP12T30P140 bitCnt_reg_2_ ( .D(n198), .CP(n220), .Q(bitCnt[2]) );
  DFQD1BWP12T30P140 regAddr_reg_0_ ( .D(n169), .CP(n220), .Q(regAddr[0]) );
  ND3D0BWP12T30P140 U3 ( .A1(bitCnt[1]), .A2(bitCnt[0]), .A3(bitCnt[2]), .ZN(
        n214) );
  INVD0BWP12T30P140 U4 ( .I(n214), .ZN(n75) );
  INVD0BWP12T30P140 U5 ( .I(CurrState_SISt[0]), .ZN(n89) );
  NR2D0BWP12T30P140 U6 ( .A1(CurrState_SISt[1]), .A2(n89), .ZN(n118) );
  INVD0BWP12T30P140 U7 ( .I(CurrState_SISt[2]), .ZN(n117) );
  ND2D0BWP12T30P140 U8 ( .A1(n117), .A2(CurrState_SISt[3]), .ZN(n114) );
  INVD0BWP12T30P140 U9 ( .I(n114), .ZN(n87) );
  ND2D0BWP12T30P140 U10 ( .A1(n118), .A2(n87), .ZN(n52) );
  NR2D0BWP12T30P140 U11 ( .A1(rst), .A2(n52), .ZN(n98) );
  ND4D0BWP12T30P140 U12 ( .A1(streamSt[1]), .A2(streamSt[0]), .A3(n75), .A4(
        n98), .ZN(n42) );
  INVD0BWP12T30P140 U13 ( .I(n42), .ZN(n61) );
  INVD0BWP12T30P140 U14 ( .I(streamSt[1]), .ZN(n51) );
  INVD0BWP12T30P140 U15 ( .I(streamSt[0]), .ZN(n147) );
  NR3D0BWP12T30P140 U16 ( .A1(n51), .A2(n147), .A3(n214), .ZN(n4) );
  INVD0BWP12T30P140 U17 ( .I(n98), .ZN(n155) );
  INVD0BWP12T30P140 U18 ( .I(CurrState_SISt[1]), .ZN(n112) );
  NR2D0BWP12T30P140 U19 ( .A1(rst), .A2(n112), .ZN(n7) );
  NR2D0BWP12T30P140 U20 ( .A1(CurrState_SISt[3]), .A2(n117), .ZN(n74) );
  ND2D0BWP12T30P140 U21 ( .A1(CurrState_SISt[3]), .A2(CurrState_SISt[2]), .ZN(
        n50) );
  NR2D0BWP12T30P140 U22 ( .A1(CurrState_SISt[3]), .A2(CurrState_SISt[2]), .ZN(
        n17) );
  ND2D0BWP12T30P140 U23 ( .A1(n118), .A2(n17), .ZN(n54) );
  NR2D0BWP12T30P140 U24 ( .A1(rst), .A2(n54), .ZN(n11) );
  INVD0BWP12T30P140 U25 ( .I(rst), .ZN(n77) );
  ND4D0BWP12T30P140 U26 ( .A1(n112), .A2(n89), .A3(n77), .A4(n87), .ZN(n34) );
  ND2D0BWP12T30P140 U27 ( .A1(CurrState_SISt[0]), .A2(n7), .ZN(n2) );
  IND2D1BWP12T30P140 U28 ( .A1(n2), .B1(n17), .ZN(n6) );
  ND2D0BWP12T30P140 U29 ( .A1(n34), .A2(n6), .ZN(n82) );
  INVD0BWP12T30P140 U30 ( .I(n7), .ZN(n33) );
  NR2D0BWP12T30P140 U31 ( .A1(CurrState_SISt[0]), .A2(n33), .ZN(n5) );
  INVD0BWP12T30P140 U32 ( .I(n5), .ZN(n119) );
  ND3D0BWP12T30P140 U33 ( .A1(n112), .A2(n89), .A3(n77), .ZN(n1) );
  INVD0BWP12T30P140 U34 ( .I(n74), .ZN(n67) );
  ND2D0BWP12T30P140 U35 ( .A1(n118), .A2(n77), .ZN(n76) );
  OAI22D0BWP12T30P140 U36 ( .A1(n50), .A2(n1), .B1(n67), .B2(n76), .ZN(n47) );
  INVD0BWP12T30P140 U37 ( .I(n47), .ZN(n19) );
  OAI21D0BWP12T30P140 U38 ( .A1(CurrState_SISt[2]), .A2(n119), .B(n19), .ZN(
        n65) );
  OR2D0BWP12T30P140 U39 ( .A1(n1), .A2(n67), .Z(n101) );
  NR2D0BWP12T30P140 U40 ( .A1(n2), .A2(n114), .ZN(n96) );
  INVD0BWP12T30P140 U41 ( .I(n96), .ZN(n37) );
  ND2D0BWP12T30P140 U42 ( .A1(n101), .A2(n37), .ZN(n3) );
  NR4D0BWP12T30P140 U43 ( .A1(n11), .A2(n82), .A3(n65), .A4(n3), .ZN(n157) );
  OAI31D0BWP12T30P140 U44 ( .A1(rst), .A2(n50), .A3(n89), .B(n157), .ZN(n29)
         );
  AOI21D0BWP12T30P140 U45 ( .A1(n7), .A2(n74), .B(n29), .ZN(n43) );
  NR2D0BWP12T30P140 U46 ( .A1(n50), .A2(n119), .ZN(n81) );
  INVD0BWP12T30P140 U47 ( .I(n81), .ZN(n161) );
  OAI211D0BWP12T30P140 U48 ( .A1(n4), .A2(n155), .B(n43), .C(n161), .ZN(n60)
         );
  AO22D0BWP12T30P140 U49 ( .A1(n61), .A2(rxData[0]), .B1(dataOut[0]), .B2(n60), 
        .Z(n187) );
  AO22D0BWP12T30P140 U50 ( .A1(rxData[1]), .A2(n61), .B1(dataOut[1]), .B2(n60), 
        .Z(n188) );
  ND2D0BWP12T30P140 U51 ( .A1(n17), .A2(n5), .ZN(n73) );
  INVD0BWP12T30P140 U52 ( .I(n73), .ZN(n9) );
  ND2D0BWP12T30P140 U53 ( .A1(n74), .A2(n5), .ZN(n156) );
  OAI211D0BWP12T30P140 U54 ( .A1(n50), .A2(n76), .B(n6), .C(n156), .ZN(n36) );
  IND2D1BWP12T30P140 U55 ( .A1(n36), .B1(n34), .ZN(n66) );
  OAI21D0BWP12T30P140 U56 ( .A1(CurrState_SISt[0]), .A2(n87), .B(n7), .ZN(n8)
         );
  IND3D1BWP12T30P140 U57 ( .A1(n66), .B1(n101), .B2(n8), .ZN(n48) );
  AOI211D0BWP12T30P140 U58 ( .A1(n9), .A2(scl), .B(n81), .C(n48), .ZN(n18) );
  ND2D0BWP12T30P140 U59 ( .A1(streamSt[0]), .A2(n51), .ZN(n116) );
  ND2D0BWP12T30P140 U60 ( .A1(n11), .A2(n116), .ZN(n10) );
  ND4D0BWP12T30P140 U61 ( .A1(n19), .A2(n18), .A3(n10), .A4(n155), .ZN(n125)
         );
  NR2D0BWP12T30P140 U62 ( .A1(scl), .A2(n73), .ZN(n124) );
  INVD0BWP12T30P140 U63 ( .I(n11), .ZN(n137) );
  NR2D0BWP12T30P140 U64 ( .A1(n116), .A2(n137), .ZN(n139) );
  AO222D0BWP12T30P140 U65 ( .A1(n125), .A2(txData[5]), .B1(txData[4]), .B2(
        n124), .C1(n139), .C2(dataIn[5]), .Z(n178) );
  AO222D0BWP12T30P140 U66 ( .A1(n125), .A2(txData[6]), .B1(txData[5]), .B2(
        n124), .C1(n139), .C2(dataIn[6]), .Z(n177) );
  AO22D0BWP12T30P140 U67 ( .A1(rxData[2]), .A2(n61), .B1(dataOut[2]), .B2(n60), 
        .Z(n189) );
  AO222D0BWP12T30P140 U68 ( .A1(n125), .A2(txData[7]), .B1(txData[6]), .B2(
        n124), .C1(n139), .C2(dataIn[7]), .Z(n184) );
  ND2D0BWP12T30P140 U69 ( .A1(n51), .A2(n147), .ZN(n24) );
  INVD0BWP12T30P140 U70 ( .I(rxData[6]), .ZN(n62) );
  NR2D0BWP12T30P140 U71 ( .A1(rxData[7]), .A2(n62), .ZN(n13) );
  INVD0BWP12T30P140 U72 ( .I(rxData[3]), .ZN(n63) );
  INVD0BWP12T30P140 U73 ( .I(startStopDetState[1]), .ZN(n25) );
  ND2D0BWP12T30P140 U74 ( .A1(startStopDetState[0]), .A2(n25), .ZN(n31) );
  NR4D0BWP12T30P140 U75 ( .A1(rxData[2]), .A2(rxData[1]), .A3(n63), .A4(n31), 
        .ZN(n12) );
  ND4D0BWP12T30P140 U76 ( .A1(rxData[4]), .A2(rxData[5]), .A3(n13), .A4(n12), 
        .ZN(n143) );
  ND2D0BWP12T30P140 U77 ( .A1(n75), .A2(n143), .ZN(n15) );
  NR2D0BWP12T30P140 U78 ( .A1(CurrState_SISt[1]), .A2(CurrState_SISt[0]), .ZN(
        n14) );
  NR2D0BWP12T30P140 U79 ( .A1(rst), .A2(n14), .ZN(n45) );
  OAI31D0BWP12T30P140 U80 ( .A1(n24), .A2(n52), .A3(n15), .B(n45), .ZN(n16) );
  AOI211D0BWP12T30P140 U81 ( .A1(n17), .A2(txData[7]), .B(n74), .C(n16), .ZN(
        n23) );
  INVD0BWP12T30P140 U82 ( .I(scl), .ZN(n64) );
  OAI211D0BWP12T30P140 U83 ( .A1(n19), .A2(n64), .B(n18), .C(n137), .ZN(n22)
         );
  NR2D0BWP12T30P140 U84 ( .A1(n75), .A2(n52), .ZN(n20) );
  OAI21D0BWP12T30P140 U85 ( .A1(n20), .A2(n22), .B(sdaOut), .ZN(n21) );
  OAI21D0BWP12T30P140 U86 ( .A1(n23), .A2(n22), .B(n21), .ZN(n195) );
  AO22D0BWP12T30P140 U87 ( .A1(rxData[3]), .A2(n61), .B1(dataOut[3]), .B2(n60), 
        .Z(n190) );
  AO22D0BWP12T30P140 U88 ( .A1(rxData[7]), .A2(n61), .B1(dataOut[7]), .B2(n60), 
        .Z(n194) );
  AO22D0BWP12T30P140 U89 ( .A1(rxData[4]), .A2(n61), .B1(dataOut[4]), .B2(n60), 
        .Z(n191) );
  AOI211D0BWP12T30P140 U90 ( .A1(n25), .A2(n24), .B(scl), .C(
        startStopDetState[0]), .ZN(n160) );
  INVD0BWP12T30P140 U91 ( .I(n160), .ZN(n26) );
  ND2D0BWP12T30P140 U92 ( .A1(CurrState_SISt[0]), .A2(n74), .ZN(n113) );
  NR2D0BWP12T30P140 U93 ( .A1(n112), .A2(n113), .ZN(n32) );
  ND2D0BWP12T30P140 U94 ( .A1(n32), .A2(n77), .ZN(n154) );
  INVD0BWP12T30P140 U95 ( .I(n154), .ZN(n159) );
  AOI32D0BWP12T30P140 U96 ( .A1(n26), .A2(n159), .A3(n31), .B1(scl), .B2(n159), 
        .ZN(n27) );
  AOI32D0BWP12T30P140 U97 ( .A1(scl), .A2(n27), .A3(sdaIn), .B1(n156), .B2(n27), .ZN(n28) );
  NR4D0BWP12T30P140 U98 ( .A1(n81), .A2(n98), .A3(n29), .A4(n28), .ZN(n148) );
  ND2D0BWP12T30P140 U99 ( .A1(n75), .A2(n98), .ZN(n145) );
  OR4D0BWP12T30P140 U100 ( .A1(streamSt[0]), .A2(rxData[0]), .A3(n145), .A4(
        n143), .Z(n30) );
  OAI21D0BWP12T30P140 U101 ( .A1(n148), .A2(n51), .B(n30), .ZN(n186) );
  AO22D0BWP12T30P140 U102 ( .A1(rxData[5]), .A2(n61), .B1(dataOut[5]), .B2(n60), .Z(n192) );
  NR2D0BWP12T30P140 U103 ( .A1(n54), .A2(n116), .ZN(n44) );
  AOI221D0BWP12T30P140 U104 ( .A1(scl), .A2(n32), .B1(n31), .B2(n32), .C(n44), 
        .ZN(n39) );
  OAI22D0BWP12T30P140 U105 ( .A1(scl), .A2(n34), .B1(n50), .B2(n33), .ZN(n35)
         );
  NR3D0BWP12T30P140 U106 ( .A1(n36), .A2(n65), .A3(n35), .ZN(n94) );
  OAI211D0BWP12T30P140 U107 ( .A1(scl), .A2(n37), .B(n94), .C(n101), .ZN(n38)
         );
  NR2D0BWP12T30P140 U108 ( .A1(n98), .A2(n38), .ZN(n40) );
  OAI21D0BWP12T30P140 U109 ( .A1(rst), .A2(n39), .B(n40), .ZN(n142) );
  INVD0BWP12T30P140 U110 ( .I(n142), .ZN(n129) );
  INVD0BWP12T30P140 U111 ( .I(rxData[2]), .ZN(n128) );
  ND3D0BWP12T30P140 U112 ( .A1(n77), .A2(n87), .A3(n40), .ZN(n126) );
  OAI22D0BWP12T30P140 U113 ( .A1(n129), .A2(n63), .B1(n128), .B2(n126), .ZN(
        n172) );
  INVD0BWP12T30P140 U114 ( .I(writeEn), .ZN(n41) );
  AOI22D0BWP12T30P140 U115 ( .A1(n155), .A2(n43), .B1(n42), .B2(n41), .ZN(n200) );
  INVD0BWP12T30P140 U116 ( .I(regAddr[6]), .ZN(n110) );
  INVD0BWP12T30P140 U117 ( .I(n44), .ZN(n49) );
  OAI211D0BWP12T30P140 U118 ( .A1(writeEn), .A2(n161), .B(n45), .C(n73), .ZN(
        n46) );
  OR3D0BWP12T30P140 U119 ( .A1(n48), .A2(n47), .A3(n46), .Z(n56) );
  AOI21D0BWP12T30P140 U120 ( .A1(n50), .A2(n49), .B(n56), .ZN(n104) );
  INVD0BWP12T30P140 U121 ( .I(n104), .ZN(n153) );
  AN3D0BWP12T30P140 U122 ( .A1(regAddr[1]), .A2(regAddr[0]), .A3(regAddr[2]), 
        .Z(n130) );
  ND3D0BWP12T30P140 U123 ( .A1(n130), .A2(regAddr[4]), .A3(regAddr[3]), .ZN(
        n57) );
  NR2D0BWP12T30P140 U124 ( .A1(n153), .A2(n57), .ZN(n208) );
  ND2D0BWP12T30P140 U125 ( .A1(regAddr[5]), .A2(n208), .ZN(n108) );
  NR3D0BWP12T30P140 U126 ( .A1(streamSt[0]), .A2(n214), .A3(n51), .ZN(n53) );
  INR3D1BWP12T30P140 U127 ( .A1(n53), .B1(n56), .B2(n52), .ZN(n211) );
  INVD0BWP12T30P140 U128 ( .I(regAddr[5]), .ZN(n207) );
  INVD0BWP12T30P140 U129 ( .I(n116), .ZN(n97) );
  OAI22D0BWP12T30P140 U130 ( .A1(n97), .A2(n54), .B1(n53), .B2(n52), .ZN(n55)
         );
  NR2D0BWP12T30P140 U131 ( .A1(n56), .A2(n55), .ZN(n149) );
  IOA21D0BWP12T30P140 U132 ( .A1(n57), .A2(n104), .B(n149), .ZN(n209) );
  AOI21D0BWP12T30P140 U133 ( .A1(n104), .A2(n207), .B(n209), .ZN(n111) );
  OAI21D0BWP12T30P140 U134 ( .A1(regAddr[6]), .A2(n153), .B(n111), .ZN(n58) );
  AOI22D0BWP12T30P140 U135 ( .A1(rxData[7]), .A2(n211), .B1(regAddr[7]), .B2(
        n58), .ZN(n59) );
  OAI31D0BWP12T30P140 U136 ( .A1(regAddr[7]), .A2(n110), .A3(n108), .B(n59), 
        .ZN(n162) );
  AO22D0BWP12T30P140 U137 ( .A1(rxData[6]), .A2(n61), .B1(dataOut[6]), .B2(n60), .Z(n193) );
  AO22D0BWP12T30P140 U138 ( .A1(n139), .A2(dataIn[0]), .B1(txData[0]), .B2(
        n125), .Z(n183) );
  INVD0BWP12T30P140 U139 ( .I(rxData[5]), .ZN(n107) );
  OAI22D0BWP12T30P140 U140 ( .A1(n129), .A2(n62), .B1(n107), .B2(n126), .ZN(
        n175) );
  INVD0BWP12T30P140 U141 ( .I(rxData[4]), .ZN(n106) );
  OAI22D0BWP12T30P140 U142 ( .A1(n129), .A2(n106), .B1(n63), .B2(n126), .ZN(
        n173) );
  AO222D0BWP12T30P140 U143 ( .A1(n125), .A2(txData[4]), .B1(txData[3]), .B2(
        n124), .C1(n139), .C2(dataIn[4]), .Z(n179) );
  INVD0BWP12T30P140 U144 ( .I(n126), .ZN(n141) );
  AO22D0BWP12T30P140 U145 ( .A1(rxData[6]), .A2(n141), .B1(rxData[7]), .B2(
        n142), .Z(n176) );
  OAI32D0BWP12T30P140 U146 ( .A1(scl), .A2(n96), .A3(n66), .B1(n65), .B2(n64), 
        .ZN(n88) );
  AOI21D0BWP12T30P140 U147 ( .A1(n114), .A2(n67), .B(n89), .ZN(n71) );
  INVD0BWP12T30P140 U148 ( .I(n118), .ZN(n69) );
  NR3D0BWP12T30P140 U149 ( .A1(bitCnt[1]), .A2(bitCnt[0]), .A3(bitCnt[2]), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U150 ( .A1(n102), .A2(n67), .ZN(n85) );
  OAI21D0BWP12T30P140 U151 ( .A1(n87), .A2(n85), .B(n112), .ZN(n68) );
  OAI31D0BWP12T30P140 U152 ( .A1(CurrState_SISt[3]), .A2(n69), .A3(n116), .B(
        n68), .ZN(n70) );
  ND2D0BWP12T30P140 U153 ( .A1(n77), .A2(n88), .ZN(n122) );
  INVD0BWP12T30P140 U154 ( .I(n122), .ZN(n78) );
  OAI21D0BWP12T30P140 U155 ( .A1(n71), .A2(n70), .B(n78), .ZN(n72) );
  OAI211D0BWP12T30P140 U156 ( .A1(n112), .A2(n88), .B(n73), .C(n72), .ZN(n202)
         );
  AOI22D0BWP12T30P140 U157 ( .A1(n87), .A2(n75), .B1(n74), .B2(n102), .ZN(n84)
         );
  AN2D0BWP12T30P140 U158 ( .A1(n76), .A2(n88), .Z(n120) );
  AOI22D0BWP12T30P140 U159 ( .A1(n160), .A2(n78), .B1(scl), .B2(n77), .ZN(n79)
         );
  OAI22D0BWP12T30P140 U160 ( .A1(n120), .A2(n117), .B1(n79), .B2(n113), .ZN(
        n80) );
  AOI211D0BWP12T30P140 U161 ( .A1(n88), .A2(n82), .B(n81), .C(n80), .ZN(n83)
         );
  OAI31D0BWP12T30P140 U162 ( .A1(CurrState_SISt[1]), .A2(n84), .A3(n122), .B(
        n83), .ZN(n203) );
  OAI22D0BWP12T30P140 U163 ( .A1(CurrState_SISt[0]), .A2(n85), .B1(n117), .B2(
        n112), .ZN(n86) );
  AOI31D0BWP12T30P140 U164 ( .A1(n87), .A2(n112), .A3(n214), .B(n86), .ZN(n90)
         );
  OAI22D0BWP12T30P140 U165 ( .A1(n90), .A2(n122), .B1(n89), .B2(n88), .ZN(n201) );
  AO222D0BWP12T30P140 U166 ( .A1(n125), .A2(txData[3]), .B1(txData[2]), .B2(
        n124), .C1(n139), .C2(dataIn[3]), .Z(n180) );
  INVD0BWP12T30P140 U167 ( .I(regAddr[3]), .ZN(n93) );
  ND2D0BWP12T30P140 U168 ( .A1(n104), .A2(n130), .ZN(n133) );
  AOI32D0BWP12T30P140 U169 ( .A1(n130), .A2(n149), .A3(regAddr[3]), .B1(n153), 
        .B2(n149), .ZN(n91) );
  AOI22D0BWP12T30P140 U170 ( .A1(regAddr[4]), .A2(n91), .B1(n211), .B2(
        rxData[4]), .ZN(n92) );
  OAI31D0BWP12T30P140 U171 ( .A1(regAddr[4]), .A2(n93), .A3(n133), .B(n92), 
        .ZN(n165) );
  NR3D0BWP12T30P140 U172 ( .A1(scl), .A2(startStopDetState[0]), .A3(
        startStopDetState[1]), .ZN(n99) );
  OAI211D0BWP12T30P140 U173 ( .A1(n99), .A2(n154), .B(n94), .C(n145), .ZN(n95)
         );
  NR2D0BWP12T30P140 U174 ( .A1(n96), .A2(n95), .ZN(n138) );
  OAI21D0BWP12T30P140 U175 ( .A1(n97), .A2(n137), .B(n138), .ZN(n218) );
  INVD0BWP12T30P140 U176 ( .I(bitCnt[1]), .ZN(n213) );
  INVD0BWP12T30P140 U177 ( .I(bitCnt[0]), .ZN(n212) );
  AOI22D0BWP12T30P140 U178 ( .A1(bitCnt[1]), .A2(bitCnt[0]), .B1(n213), .B2(
        n212), .ZN(n103) );
  AOI21D0BWP12T30P140 U179 ( .A1(n159), .A2(n99), .B(n98), .ZN(n100) );
  OAI21D0BWP12T30P140 U180 ( .A1(n102), .A2(n101), .B(n100), .ZN(n215) );
  AO22D0BWP12T30P140 U181 ( .A1(n218), .A2(bitCnt[1]), .B1(n103), .B2(n215), 
        .Z(n197) );
  INVD0BWP12T30P140 U182 ( .I(regAddr[0]), .ZN(n152) );
  AOI22D0BWP12T30P140 U183 ( .A1(n104), .A2(n152), .B1(n211), .B2(rxData[0]), 
        .ZN(n105) );
  OAI21D0BWP12T30P140 U184 ( .A1(n149), .A2(n152), .B(n105), .ZN(n169) );
  OAI22D0BWP12T30P140 U185 ( .A1(n129), .A2(n107), .B1(n106), .B2(n126), .ZN(
        n174) );
  MAOI22D0BWP12T30P140 U186 ( .A1(rxData[6]), .A2(n211), .B1(regAddr[6]), .B2(
        n108), .ZN(n109) );
  OAI21D0BWP12T30P140 U187 ( .A1(n111), .A2(n110), .B(n109), .ZN(n163) );
  AO22D0BWP12T30P140 U188 ( .A1(n142), .A2(rxData[1]), .B1(rxData[0]), .B2(
        n141), .Z(n170) );
  AOI221D0BWP12T30P140 U189 ( .A1(scl), .A2(n114), .B1(n113), .B2(n114), .C(
        n112), .ZN(n115) );
  AOI31D0BWP12T30P140 U190 ( .A1(n118), .A2(n117), .A3(n116), .B(n115), .ZN(
        n123) );
  IOA21D0BWP12T30P140 U191 ( .A1(n120), .A2(n119), .B(CurrState_SISt[3]), .ZN(
        n121) );
  OAI21D0BWP12T30P140 U192 ( .A1(n123), .A2(n122), .B(n121), .ZN(n204) );
  AO222D0BWP12T30P140 U193 ( .A1(n125), .A2(txData[2]), .B1(txData[1]), .B2(
        n124), .C1(n139), .C2(dataIn[2]), .Z(n181) );
  AO222D0BWP12T30P140 U194 ( .A1(n125), .A2(txData[1]), .B1(txData[0]), .B2(
        n124), .C1(n139), .C2(dataIn[1]), .Z(n182) );
  INVD0BWP12T30P140 U195 ( .I(rxData[1]), .ZN(n127) );
  OAI22D0BWP12T30P140 U196 ( .A1(n129), .A2(n128), .B1(n127), .B2(n126), .ZN(
        n171) );
  OAI21D0BWP12T30P140 U197 ( .A1(n130), .A2(n153), .B(n149), .ZN(n131) );
  AOI22D0BWP12T30P140 U198 ( .A1(regAddr[3]), .A2(n131), .B1(n211), .B2(
        rxData[3]), .ZN(n132) );
  OAI21D0BWP12T30P140 U199 ( .A1(regAddr[3]), .A2(n133), .B(n132), .ZN(n166)
         );
  ND2D0BWP12T30P140 U200 ( .A1(regAddr[1]), .A2(regAddr[0]), .ZN(n136) );
  AOI32D0BWP12T30P140 U201 ( .A1(regAddr[1]), .A2(n149), .A3(regAddr[0]), .B1(
        n153), .B2(n149), .ZN(n134) );
  AOI22D0BWP12T30P140 U202 ( .A1(regAddr[2]), .A2(n134), .B1(n211), .B2(
        rxData[2]), .ZN(n135) );
  OAI31D0BWP12T30P140 U203 ( .A1(regAddr[2]), .A2(n153), .A3(n136), .B(n135), 
        .ZN(n167) );
  AOI21D0BWP12T30P140 U204 ( .A1(n138), .A2(n137), .B(n212), .ZN(n140) );
  AO211D0BWP12T30P140 U205 ( .A1(n212), .A2(n215), .B(n140), .C(n139), .Z(n196) );
  AO22D0BWP12T30P140 U206 ( .A1(rxData[0]), .A2(n142), .B1(n141), .B2(sdaIn), 
        .Z(n205) );
  INVD0BWP12T30P140 U207 ( .I(n143), .ZN(n144) );
  AOI21D0BWP12T30P140 U208 ( .A1(n144), .A2(rxData[0]), .B(streamSt[1]), .ZN(
        n146) );
  OAI22D0BWP12T30P140 U209 ( .A1(n148), .A2(n147), .B1(n146), .B2(n145), .ZN(
        n185) );
  OAI21D0BWP12T30P140 U210 ( .A1(regAddr[0]), .A2(n153), .B(n149), .ZN(n150)
         );
  AOI22D0BWP12T30P140 U211 ( .A1(regAddr[1]), .A2(n150), .B1(n211), .B2(
        rxData[1]), .ZN(n151) );
  OAI31D0BWP12T30P140 U212 ( .A1(regAddr[1]), .A2(n153), .A3(n152), .B(n151), 
        .ZN(n168) );
  CKBD0BWP12T30P140 U213 ( .I(clk), .Z(n219) );
  CKBD0BWP12T30P140 U214 ( .I(clk), .Z(n220) );
  CKBD0BWP12T30P140 U215 ( .I(clk), .Z(n221) );
  ND4D0BWP12T30P140 U216 ( .A1(n157), .A2(n156), .A3(n155), .A4(n154), .ZN(
        n158) );
  AOI22D0BWP12T30P140 U217 ( .A1(n160), .A2(n159), .B1(clearStartStopDet), 
        .B2(n158), .ZN(n206) );
  ND2D0BWP12T30P140 U218 ( .A1(n206), .A2(n161), .ZN(n199) );
  AOI22D0BWP12T30P140 U219 ( .A1(regAddr[5]), .A2(n209), .B1(n208), .B2(n207), 
        .ZN(n210) );
  IOA21D0BWP12T30P140 U220 ( .A1(n211), .A2(rxData[5]), .B(n210), .ZN(n164) );
  NR2D0BWP12T30P140 U221 ( .A1(n213), .A2(n212), .ZN(n216) );
  OAI211D0BWP12T30P140 U222 ( .A1(n216), .A2(bitCnt[2]), .B(n215), .C(n214), 
        .ZN(n217) );
  IOA21D0BWP12T30P140 U223 ( .A1(bitCnt[2]), .A2(n218), .B(n217), .ZN(n198) );
endmodule


module i2cSlave ( clk, rst, sda, scl, myReg0, myReg1, myReg2, myReg3, myReg4, 
        myReg5, myReg6, myReg7 );
  output [7:0] myReg0;
  output [7:0] myReg1;
  output [7:0] myReg2;
  output [7:0] myReg3;
  input [7:0] myReg4;
  input [7:0] myReg5;
  input [7:0] myReg6;
  input [7:0] myReg7;
  input clk, rst, scl;
  inout sda;
  wire   n_Logic0_, sdaOut, N14, sdaDeb, sclDeb, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         startEdgeDet, clearStartStopDet, N78, writeEn, n_0_net_, n3, n26, n27,
         n28, n29, n30, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64;
  wire   [1:0] rstPipe;
  wire   [9:0] sdaPipe;
  wire   [9:0] sclPipe;
  wire   [9:0] sclDelayed;
  wire   [3:0] sdaDelayed;
  wire   [1:0] startStopDetState;
  wire   [7:0] regAddr;
  wire   [7:0] dataToRegIF;
  wire   [7:0] dataFromRegIF;

  registerInterface u_registerInterface ( .clk(n63), .addr(regAddr), .dataIn(
        dataToRegIF), .writeEn(writeEn), .dataOut(dataFromRegIF), .myReg0(
        myReg0), .myReg1(myReg1), .myReg2(myReg2), .myReg3(myReg3), .myReg4({
        n_Logic0_, n_Logic0_, n_Logic0_, n27, n_Logic0_, n_Logic0_, n27, 
        n_Logic0_}), .myReg5({n_Logic0_, n_Logic0_, n27, n27, n_Logic0_, n27, 
        n_Logic0_, n_Logic0_}), .myReg6({n_Logic0_, n27, n_Logic0_, n27, 
        n_Logic0_, n27, n27, n_Logic0_}), .myReg7({n_Logic0_, n27, n27, n27, 
        n27, n_Logic0_, n_Logic0_, n_Logic0_}) );
  serialInterface u_serialInterface ( .clearStartStopDet(clearStartStopDet), 
        .clk(n63), .dataIn(dataFromRegIF), .dataOut(dataToRegIF), .regAddr(
        regAddr), .rst(n_0_net_), .scl(sclDelayed[9]), .sdaIn(sdaDeb), 
        .sdaOut(sdaOut), .startStopDetState(startStopDetState), .writeEn(
        writeEn) );
  OR2D0BWP12T30P140 U45 ( .A1(sda), .A2(rstPipe[1]), .Z(N26) );
  DFQD2BWP12T30P140 sclPipe_reg_2_ ( .D(N40), .CP(clk), .Q(sclPipe[2]) );
  DFQD2BWP12T30P140 sclPipe_reg_3_ ( .D(N41), .CP(clk), .Q(sclPipe[3]) );
  DFQD2BWP12T30P140 sclPipe_reg_4_ ( .D(N42), .CP(clk), .Q(sclPipe[4]) );
  DFQD2BWP12T30P140 sclPipe_reg_5_ ( .D(N43), .CP(clk), .Q(sclPipe[5]) );
  DFQD2BWP12T30P140 sclPipe_reg_0_ ( .D(N38), .CP(clk), .Q(sclPipe[0]) );
  DFQD2BWP12T30P140 sclPipe_reg_6_ ( .D(N44), .CP(clk), .Q(sclPipe[6]) );
  DFQD2BWP12T30P140 sclPipe_reg_1_ ( .D(N39), .CP(clk), .Q(sclPipe[1]) );
  DFQD2BWP12T30P140 sclPipe_reg_7_ ( .D(N45), .CP(clk), .Q(sclPipe[7]) );
  DFQD2BWP12T30P140 rstPipe_reg_0_ ( .D(rst), .CP(n63), .Q(rstPipe[0]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_0_ ( .D(N60), .CP(n63), .Q(sdaDelayed[0])
         );
  DFQD2BWP12T30P140 sdaPipe_reg_9_ ( .D(N35), .CP(n63), .Q(sdaPipe[9]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_3_ ( .D(N63), .CP(n63), .Q(sdaDelayed[3])
         );
  BUFTD4BWP12T30P140 sda_tri ( .I(n_Logic0_), .OE(n3), .Z(sda) );
  DFQD2BWP12T30P140 sdaPipe_reg_2_ ( .D(N28), .CP(n64), .Q(sdaPipe[2]) );
  DFQD2BWP12T30P140 sdaPipe_reg_3_ ( .D(N29), .CP(n64), .Q(sdaPipe[3]) );
  DFQD2BWP12T30P140 sdaPipe_reg_4_ ( .D(N30), .CP(n64), .Q(sdaPipe[4]) );
  DFQD2BWP12T30P140 sdaPipe_reg_5_ ( .D(N31), .CP(n64), .Q(sdaPipe[5]) );
  DFQD2BWP12T30P140 sclDelayed_reg_0_ ( .D(N50), .CP(n64), .Q(sclDelayed[0])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_1_ ( .D(N51), .CP(n64), .Q(sclDelayed[1])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_2_ ( .D(N52), .CP(n64), .Q(sclDelayed[2])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_3_ ( .D(N53), .CP(n64), .Q(sclDelayed[3])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_4_ ( .D(N54), .CP(n64), .Q(sclDelayed[4])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_5_ ( .D(N55), .CP(n64), .Q(sclDelayed[5])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_6_ ( .D(N56), .CP(n64), .Q(sclDelayed[6])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_7_ ( .D(N57), .CP(n64), .Q(sclDelayed[7])
         );
  DFQD2BWP12T30P140 startEdgeDet_reg ( .D(N78), .CP(n64), .Q(startEdgeDet) );
  DFQD2BWP12T30P140 sdaPipe_reg_0_ ( .D(N26), .CP(n64), .Q(sdaPipe[0]) );
  DFQD2BWP12T30P140 sdaPipe_reg_8_ ( .D(N34), .CP(n63), .Q(sdaPipe[8]) );
  DFQD2BWP12T30P140 sdaPipe_reg_6_ ( .D(N32), .CP(n63), .Q(sdaPipe[6]) );
  DFQD2BWP12T30P140 sdaPipe_reg_7_ ( .D(N33), .CP(n63), .Q(sdaPipe[7]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_2_ ( .D(N62), .CP(n63), .Q(sdaDelayed[2])
         );
  DFQD2BWP12T30P140 startStopDetState_reg_1_ ( .D(n29), .CP(n63), .Q(
        startStopDetState[1]) );
  DFQD2BWP12T30P140 sclPipe_reg_9_ ( .D(N47), .CP(n64), .Q(sclPipe[9]) );
  DFQD2BWP12T30P140 sdaDeb_reg ( .D(n26), .CP(n63), .Q(sdaDeb) );
  DFQD2BWP12T30P140 startStopDetState_reg_0_ ( .D(n30), .CP(n63), .Q(
        startStopDetState[0]) );
  DFQD2BWP12T30P140 sclPipe_reg_8_ ( .D(N46), .CP(n64), .Q(sclPipe[8]) );
  DFQD2BWP12T30P140 sdaPipe_reg_1_ ( .D(N27), .CP(n64), .Q(sdaPipe[1]) );
  DFQD2BWP12T30P140 sclDeb_reg ( .D(n28), .CP(n64), .Q(sclDeb) );
  DFQD2BWP12T30P140 rstPipe_reg_1_ ( .D(N14), .CP(clk), .Q(rstPipe[1]) );
  DFQD1BWP12T30P140 sdaDelayed_reg_1_ ( .D(N61), .CP(n63), .Q(sdaDelayed[1])
         );
  DFQD1BWP12T30P140 sclDelayed_reg_8_ ( .D(N58), .CP(n64), .Q(sclDelayed[8])
         );
  DFQD1BWP12T30P140 sclDelayed_reg_9_ ( .D(N59), .CP(n64), .Q(sclDelayed[9])
         );
  TIELBWP12T30P140 U3 ( .ZN(n_Logic0_) );
  TIEHBWP12T30P140 U4 ( .Z(n27) );
  INVD0BWP12T30P140 U5 ( .I(sdaOut), .ZN(n3) );
  OR2D0BWP12T30P140 U6 ( .A1(sdaPipe[1]), .A2(rstPipe[1]), .Z(N28) );
  OR2D0BWP12T30P140 U7 ( .A1(sdaPipe[8]), .A2(rstPipe[1]), .Z(N35) );
  OR2D0BWP12T30P140 U8 ( .A1(sclPipe[6]), .A2(rstPipe[1]), .Z(N45) );
  OR2D0BWP12T30P140 U9 ( .A1(sdaDeb), .A2(rstPipe[1]), .Z(N60) );
  OR2D0BWP12T30P140 U10 ( .A1(sdaPipe[7]), .A2(rstPipe[1]), .Z(N34) );
  OR2D0BWP12T30P140 U11 ( .A1(sdaPipe[6]), .A2(rstPipe[1]), .Z(N33) );
  NR2D0BWP12T30P140 U12 ( .A1(rstPipe[1]), .A2(clearStartStopDet), .ZN(n33) );
  INVD0BWP12T30P140 U13 ( .I(n33), .ZN(n36) );
  IND3D1BWP12T30P140 U14 ( .A1(sdaDelayed[3]), .B1(sclDeb), .B2(sdaDelayed[2]), 
        .ZN(n35) );
  ND2D0BWP12T30P140 U15 ( .A1(sclDeb), .A2(sdaDelayed[3]), .ZN(n43) );
  OAI211D0BWP12T30P140 U16 ( .A1(sdaDelayed[2]), .A2(n43), .B(n33), .C(n35), 
        .ZN(n44) );
  INVD0BWP12T30P140 U17 ( .I(startStopDetState[1]), .ZN(n34) );
  OAI22D0BWP12T30P140 U18 ( .A1(n36), .A2(n35), .B1(n44), .B2(n34), .ZN(n29)
         );
  OR2D0BWP12T30P140 U19 ( .A1(sclPipe[8]), .A2(rstPipe[1]), .Z(N47) );
  ND2D0BWP12T30P140 U20 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .ZN(n42) );
  INVD0BWP12T30P140 U21 ( .I(sdaPipe[5]), .ZN(n56) );
  INVD0BWP12T30P140 U22 ( .I(sdaPipe[4]), .ZN(n55) );
  INVD0BWP12T30P140 U23 ( .I(sdaPipe[3]), .ZN(n54) );
  INVD0BWP12T30P140 U24 ( .I(sdaPipe[2]), .ZN(n53) );
  NR4D0BWP12T30P140 U25 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n37) );
  ND4D0BWP12T30P140 U26 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n37), .ZN(n41) );
  INVD0BWP12T30P140 U27 ( .I(rstPipe[1]), .ZN(n62) );
  CKBD0BWP12T30P140 U28 ( .I(n62), .Z(n61) );
  ND4D0BWP12T30P140 U29 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n38) );
  OR4D0BWP12T30P140 U30 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n38), .Z(n39) );
  OAI31D0BWP12T30P140 U31 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .A3(n39), .B(
        sdaDeb), .ZN(n40) );
  OAI211D0BWP12T30P140 U32 ( .A1(n42), .A2(n41), .B(n61), .C(n40), .ZN(n26) );
  IND2D1BWP12T30P140 U33 ( .A1(sdaDelayed[2]), .B1(n61), .ZN(N63) );
  NR2D0BWP12T30P140 U34 ( .A1(n43), .A2(N63), .ZN(N78) );
  INVD0BWP12T30P140 U35 ( .I(N78), .ZN(n46) );
  INVD0BWP12T30P140 U36 ( .I(startStopDetState[0]), .ZN(n45) );
  OAI22D0BWP12T30P140 U37 ( .A1(clearStartStopDet), .A2(n46), .B1(n45), .B2(
        n44), .ZN(n30) );
  OR2D0BWP12T30P140 U38 ( .A1(sclPipe[7]), .A2(rstPipe[1]), .Z(N46) );
  ND2D0BWP12T30P140 U39 ( .A1(sclPipe[8]), .A2(sclPipe[6]), .ZN(n52) );
  INVD0BWP12T30P140 U40 ( .I(sclPipe[5]), .ZN(n57) );
  INVD0BWP12T30P140 U41 ( .I(sclPipe[4]), .ZN(n58) );
  INVD0BWP12T30P140 U42 ( .I(sclPipe[3]), .ZN(n59) );
  INVD0BWP12T30P140 U43 ( .I(sclPipe[2]), .ZN(n60) );
  NR4D0BWP12T30P140 U44 ( .A1(n57), .A2(n58), .A3(n59), .A4(n60), .ZN(n47) );
  ND4D0BWP12T30P140 U46 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n47), .ZN(n51) );
  ND4D0BWP12T30P140 U47 ( .A1(n57), .A2(n58), .A3(n59), .A4(n60), .ZN(n48) );
  OR4D0BWP12T30P140 U48 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n48), .Z(n49) );
  OAI31D0BWP12T30P140 U49 ( .A1(sclPipe[8]), .A2(sclPipe[6]), .A3(n49), .B(
        sclDeb), .ZN(n50) );
  OAI211D0BWP12T30P140 U50 ( .A1(n52), .A2(n51), .B(n61), .C(n50), .ZN(n28) );
  OR2D0BWP12T30P140 U51 ( .A1(rst), .A2(rstPipe[0]), .Z(N14) );
  OR2D0BWP12T30P140 U52 ( .A1(sclPipe[1]), .A2(rstPipe[1]), .Z(N40) );
  CKBD0BWP12T30P140 U53 ( .I(clk), .Z(n64) );
  CKBD0BWP12T30P140 U54 ( .I(clk), .Z(n63) );
  IND2D1BWP12T30P140 U55 ( .A1(startEdgeDet), .B1(n62), .ZN(n_0_net_) );
  ND2D0BWP12T30P140 U56 ( .A1(n61), .A2(n53), .ZN(N29) );
  ND2D0BWP12T30P140 U57 ( .A1(n61), .A2(n54), .ZN(N30) );
  ND2D0BWP12T30P140 U58 ( .A1(n61), .A2(n55), .ZN(N31) );
  ND2D0BWP12T30P140 U59 ( .A1(n61), .A2(n56), .ZN(N32) );
  ND2D0BWP12T30P140 U60 ( .A1(n61), .A2(n57), .ZN(N44) );
  ND2D0BWP12T30P140 U61 ( .A1(n61), .A2(n58), .ZN(N43) );
  ND2D0BWP12T30P140 U62 ( .A1(n61), .A2(n59), .ZN(N42) );
  ND2D0BWP12T30P140 U63 ( .A1(n61), .A2(n60), .ZN(N41) );
  IND2D1BWP12T30P140 U64 ( .A1(sdaDelayed[0]), .B1(n61), .ZN(N61) );
  IND2D1BWP12T30P140 U65 ( .A1(sdaDelayed[1]), .B1(n61), .ZN(N62) );
  IND2D1BWP12T30P140 U66 ( .A1(sclDeb), .B1(n61), .ZN(N50) );
  IND2D1BWP12T30P140 U67 ( .A1(sclDelayed[0]), .B1(n61), .ZN(N51) );
  IND2D1BWP12T30P140 U68 ( .A1(sclDelayed[1]), .B1(n62), .ZN(N52) );
  IND2D1BWP12T30P140 U69 ( .A1(sclDelayed[2]), .B1(n62), .ZN(N53) );
  IND2D1BWP12T30P140 U70 ( .A1(sclDelayed[3]), .B1(n62), .ZN(N54) );
  IND2D1BWP12T30P140 U71 ( .A1(sclDelayed[4]), .B1(n62), .ZN(N55) );
  IND2D1BWP12T30P140 U72 ( .A1(sclDelayed[5]), .B1(n62), .ZN(N56) );
  IND2D1BWP12T30P140 U73 ( .A1(sclDelayed[6]), .B1(n62), .ZN(N57) );
  IND2D1BWP12T30P140 U74 ( .A1(sclDelayed[7]), .B1(n62), .ZN(N58) );
  IND2D1BWP12T30P140 U75 ( .A1(sclDelayed[8]), .B1(n62), .ZN(N59) );
  IND2D1BWP12T30P140 U76 ( .A1(scl), .B1(n62), .ZN(N38) );
  IND2D1BWP12T30P140 U77 ( .A1(sclPipe[0]), .B1(n61), .ZN(N39) );
  IND2D1BWP12T30P140 U78 ( .A1(sdaPipe[0]), .B1(n62), .ZN(N27) );
endmodule


module i2cSlaveTop ( clk, rst, sda, scl, myReg0 );
  output [7:0] myReg0;
  input clk, rst, scl;
  inout sda;
  wire   n_Logic1_, n_Logic0_, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24;

  i2cSlave u_i2cSlave ( .clk(clk), .rst(rst), .sda(sda), .scl(scl), .myReg0(
        myReg0), .myReg1({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}), .myReg2({SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}), .myReg3({
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24}), .myReg4({n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic1_, n_Logic0_, n_Logic0_, n_Logic1_, 
        n_Logic0_}), .myReg5({n_Logic0_, n_Logic0_, n_Logic1_, n_Logic1_, 
        n_Logic0_, n_Logic1_, n_Logic0_, n_Logic0_}), .myReg6({n_Logic0_, 
        n_Logic1_, n_Logic0_, n_Logic1_, n_Logic0_, n_Logic1_, n_Logic1_, 
        n_Logic0_}), .myReg7({n_Logic0_, n_Logic1_, n_Logic1_, n_Logic1_, 
        n_Logic1_, n_Logic0_, n_Logic0_, n_Logic0_}) );
  TIEHBWP12T30P140 U3 ( .Z(n_Logic1_) );
  TIELBWP12T30P140 U4 ( .ZN(n_Logic0_) );
endmodule


module i2c_system_top ( clk, rst_n, wb_adr_i, wb_dat_i, wb_dat_o, wb_we_i, 
        wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, slave_reg0, slave_reg4, 
        slave_reg5, slave_reg6, slave_reg7 );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  output [7:0] slave_reg0;
  output [7:0] slave_reg4;
  output [7:0] slave_reg5;
  output [7:0] slave_reg6;
  output [7:0] slave_reg7;
  input clk, rst_n, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, wb_inta_o;
  wire   scl_padoen_o, sda_padoen_o, sda, scl, n3, n5, n7, n37, n41;

  i2c_master_top_0 u_i2c_master ( .wb_clk_i(clk), .wb_rst_i(n7), .arst_i(n7), 
        .wb_adr_i(wb_adr_i), .wb_dat_i(wb_dat_i), .wb_dat_o(wb_dat_o), 
        .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), .wb_cyc_i(wb_cyc_i), 
        .wb_ack_o(wb_ack_o), .wb_inta_o(wb_inta_o), .scl_pad_i(scl), 
        .scl_padoen_o(scl_padoen_o), .sda_pad_i(sda), .sda_padoen_o(
        sda_padoen_o) );
  i2cSlaveTop u_i2c_slave ( .clk(clk), .rst(n7), .sda(sda), .scl(scl), 
        .myReg0(slave_reg0) );
  BUFTD4BWP12T30P140 scl_tri ( .I(n37), .OE(n3), .Z(scl) );
  BUFTD4BWP12T30P140 sda_tri ( .I(n37), .OE(n5), .Z(sda) );
  TIEHBWP12T30P140 U10 ( .Z(n41) );
  TIELBWP12T30P140 U11 ( .ZN(n37) );
  INVD0BWP12T30P140 U12 ( .I(n41), .ZN(slave_reg7[0]) );
  INVD0BWP12T30P140 U13 ( .I(n41), .ZN(slave_reg7[1]) );
  INVD0BWP12T30P140 U14 ( .I(n41), .ZN(slave_reg7[2]) );
  INVD0BWP12T30P140 U15 ( .I(n37), .ZN(slave_reg7[3]) );
  INVD0BWP12T30P140 U16 ( .I(n37), .ZN(slave_reg7[4]) );
  INVD0BWP12T30P140 U17 ( .I(n37), .ZN(slave_reg7[5]) );
  INVD0BWP12T30P140 U18 ( .I(n37), .ZN(slave_reg7[6]) );
  INVD0BWP12T30P140 U19 ( .I(n41), .ZN(slave_reg7[7]) );
  INVD0BWP12T30P140 U20 ( .I(n41), .ZN(slave_reg6[0]) );
  INVD0BWP12T30P140 U21 ( .I(n37), .ZN(slave_reg6[1]) );
  INVD0BWP12T30P140 U22 ( .I(n37), .ZN(slave_reg6[2]) );
  INVD0BWP12T30P140 U23 ( .I(n41), .ZN(slave_reg6[3]) );
  INVD0BWP12T30P140 U24 ( .I(n37), .ZN(slave_reg6[4]) );
  INVD0BWP12T30P140 U25 ( .I(n41), .ZN(slave_reg6[5]) );
  INVD0BWP12T30P140 U26 ( .I(n37), .ZN(slave_reg6[6]) );
  INVD0BWP12T30P140 U27 ( .I(n41), .ZN(slave_reg6[7]) );
  INVD0BWP12T30P140 U28 ( .I(n41), .ZN(slave_reg5[0]) );
  INVD0BWP12T30P140 U29 ( .I(n41), .ZN(slave_reg5[1]) );
  INVD0BWP12T30P140 U30 ( .I(n37), .ZN(slave_reg5[2]) );
  INVD0BWP12T30P140 U31 ( .I(n41), .ZN(slave_reg5[3]) );
  INVD0BWP12T30P140 U32 ( .I(n37), .ZN(slave_reg5[4]) );
  INVD0BWP12T30P140 U33 ( .I(n37), .ZN(slave_reg5[5]) );
  INVD0BWP12T30P140 U34 ( .I(n41), .ZN(slave_reg5[6]) );
  INVD0BWP12T30P140 U35 ( .I(n41), .ZN(slave_reg5[7]) );
  INVD0BWP12T30P140 U36 ( .I(n41), .ZN(slave_reg4[0]) );
  INVD0BWP12T30P140 U37 ( .I(n37), .ZN(slave_reg4[1]) );
  INVD0BWP12T30P140 U38 ( .I(n41), .ZN(slave_reg4[2]) );
  INVD0BWP12T30P140 U39 ( .I(n41), .ZN(slave_reg4[3]) );
  INVD0BWP12T30P140 U40 ( .I(n37), .ZN(slave_reg4[4]) );
  INVD0BWP12T30P140 U41 ( .I(n41), .ZN(slave_reg4[5]) );
  INVD0BWP12T30P140 U42 ( .I(n41), .ZN(slave_reg4[6]) );
  INVD0BWP12T30P140 U43 ( .I(n41), .ZN(slave_reg4[7]) );
  INVD0BWP12T30P140 U44 ( .I(scl_padoen_o), .ZN(n3) );
  INVD0BWP12T30P140 U45 ( .I(sda_padoen_o), .ZN(n5) );
  INVD0BWP12T30P140 U46 ( .I(rst_n), .ZN(n7) );
endmodule

