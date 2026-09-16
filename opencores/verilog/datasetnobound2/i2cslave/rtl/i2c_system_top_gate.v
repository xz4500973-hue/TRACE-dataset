/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 18:07:56 2026
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl ( clk, rst, nReset, clk_cnt, ena, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, sSCL, clk_en, N64, dSCL, dSDA, sSDA, N70, N71, N72, N73,
         sta_condition, sto_condition, N76, N77, N79, cmd_stop, sda_chk, N87,
         N175, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152;
  wire   [15:0] cnt;
  wire   [16:0] c_state;

  DFSNQD1BWP12T30P140 sSDA_reg ( .D(N71), .CP(n152), .SDN(n149), .Q(sSDA) );
  DFSNQD1BWP12T30P140 dSDA_reg ( .D(N73), .CP(n152), .SDN(n149), .Q(dSDA) );
  DFSNQD1BWP12T30P140 sSCL_reg ( .D(N70), .CP(n152), .SDN(n149), .Q(sSCL) );
  DFSNQD1BWP12T30P140 dSCL_reg ( .D(N72), .CP(n152), .SDN(n149), .Q(dSCL) );
  DFSNQD1BWP12T30P140 scl_oen_reg ( .D(n57), .CP(n152), .SDN(n149), .Q(scl_oen) );
  DFSNQD1BWP12T30P140 clk_en_reg ( .D(N64), .CP(n152), .SDN(n149), .Q(clk_en)
         );
  DFSNQD1BWP12T30P140 sda_oen_reg ( .D(n56), .CP(n152), .SDN(n149), .Q(sda_oen) );
  DFCNQD1BWP12T30P140 sta_condition_reg ( .D(N76), .CP(n152), .CDN(n149), .Q(
        sta_condition) );
  DFCNQD1BWP12T30P140 sda_chk_reg ( .D(n92), .CP(n151), .CDN(n148), .Q(sda_chk) );
  DFCNQD1BWP12T30P140 cmd_stop_reg ( .D(n75), .CP(n151), .CDN(n148), .Q(
        cmd_stop) );
  DFCNQD1BWP12T30P140 cnt_reg_12_ ( .D(n78), .CP(n151), .CDN(n147), .Q(cnt[12]) );
  DFCNQD1BWP12T30P140 busy_reg ( .D(N79), .CP(n152), .CDN(n148), .Q(busy) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(n86), .CP(n152), .CDN(n149), .Q(cnt[4])
         );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(n84), .CP(n152), .CDN(n149), .Q(cnt[6])
         );
  DFCNQD1BWP12T30P140 cnt_reg_8_ ( .D(n82), .CP(n152), .CDN(n149), .Q(cnt[8])
         );
  DFCNQD1BWP12T30P140 c_state_reg_14_ ( .D(n60), .CP(n150), .CDN(n147), .Q(
        c_state[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_15_ ( .D(n59), .CP(n150), .CDN(n147), .Q(
        c_state[15]) );
  DFCNQD1BWP12T30P140 cmd_ack_reg ( .D(N175), .CP(n150), .CDN(n147), .Q(
        cmd_ack) );
  DFCNQD1BWP12T30P140 cnt_reg_10_ ( .D(n80), .CP(n150), .CDN(n149), .Q(cnt[10]) );
  DFCNQD1BWP12T30P140 cnt_reg_15_ ( .D(n91), .CP(n150), .CDN(n147), .Q(cnt[15]) );
  DFCNQD1BWP12T30P140 c_state_reg_1_ ( .D(n73), .CP(n151), .CDN(n148), .Q(
        c_state[1]) );
  DFCNQD1BWP12T30P140 c_state_reg_4_ ( .D(n70), .CP(n151), .CDN(n148), .Q(
        c_state[4]) );
  DFCNQD1BWP12T30P140 c_state_reg_2_ ( .D(n72), .CP(n151), .CDN(n148), .Q(
        c_state[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n88), .CP(n150), .CDN(n149), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 c_state_reg_3_ ( .D(n71), .CP(n151), .CDN(n148), .Q(
        c_state[3]) );
  DFCNQD1BWP12T30P140 c_state_reg_5_ ( .D(n69), .CP(n151), .CDN(n148), .Q(
        c_state[5]) );
  DFCNQD1BWP12T30P140 c_state_reg_11_ ( .D(n63), .CP(n150), .CDN(n147), .Q(
        c_state[11]) );
  DFCNQD1BWP12T30P140 cnt_reg_14_ ( .D(n76), .CP(n151), .CDN(n148), .Q(cnt[14]) );
  DFCNQD1BWP12T30P140 c_state_reg_7_ ( .D(n67), .CP(n151), .CDN(n147), .Q(
        c_state[7]) );
  DFCNQD1BWP12T30P140 c_state_reg_6_ ( .D(n68), .CP(n151), .CDN(n147), .Q(
        c_state[6]) );
  DFCNQD1BWP12T30P140 c_state_reg_9_ ( .D(n65), .CP(n150), .CDN(n147), .Q(
        c_state[9]) );
  DFCNQD1BWP12T30P140 c_state_reg_10_ ( .D(n64), .CP(n150), .CDN(n147), .Q(
        c_state[10]) );
  DFCNQD1BWP12T30P140 sto_condition_reg ( .D(N77), .CP(n152), .CDN(n148), .Q(
        sto_condition) );
  DFCNQD1BWP12T30P140 c_state_reg_12_ ( .D(n62), .CP(n150), .CDN(n147), .Q(
        c_state[12]) );
  DFCNQD1BWP12T30P140 c_state_reg_16_ ( .D(n58), .CP(n150), .CDN(n147), .Q(
        c_state[16]) );
  DFCNQD1BWP12T30P140 c_state_reg_13_ ( .D(n61), .CP(n151), .CDN(n148), .Q(
        c_state[13]) );
  DFCNQD1BWP12T30P140 c_state_reg_0_ ( .D(n74), .CP(n151), .CDN(n148), .Q(
        c_state[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_11_ ( .D(n79), .CP(n152), .CDN(n148), .Q(cnt[11]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n87), .CP(n152), .CDN(n149), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(n85), .CP(n152), .CDN(n149), .Q(cnt[5])
         );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(n83), .CP(n152), .CDN(n149), .Q(cnt[7])
         );
  DFCNQD1BWP12T30P140 cnt_reg_9_ ( .D(n81), .CP(n151), .CDN(n149), .Q(cnt[9])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n89), .CP(n150), .CDN(n149), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 c_state_reg_8_ ( .D(n66), .CP(n150), .CDN(n147), .Q(
        c_state[8]) );
  DFCNQD1BWP12T30P140 cnt_reg_13_ ( .D(n77), .CP(n150), .CDN(n149), .Q(cnt[13]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n90), .CP(n150), .CDN(n147), .Q(cnt[0])
         );
  DFQD2BWP12T30P140 dout_reg ( .D(n55), .CP(n152), .Q(dout) );
  DFCNQD1BWP12T30P140 al_reg ( .D(N87), .CP(n151), .CDN(n148), .Q(al) );
  DFQD1BWP12T30P140 dscl_oen_reg ( .D(scl_oen), .CP(n152), .Q(dscl_oen) );
  INVD0BWP12T30P140 U3 ( .I(c_state[11]), .ZN(n13) );
  NR2D0BWP12T30P140 U4 ( .A1(rst), .A2(al), .ZN(n130) );
  INR2D1BWP12T30P140 U5 ( .A1(n130), .B1(clk_en), .ZN(n142) );
  INVD0BWP12T30P140 U6 ( .I(n142), .ZN(n121) );
  INVD0BWP12T30P140 U7 ( .I(c_state[10]), .ZN(n11) );
  ND2D0BWP12T30P140 U8 ( .A1(n130), .A2(clk_en), .ZN(n123) );
  OAI22D0BWP12T30P140 U9 ( .A1(n13), .A2(n121), .B1(n11), .B2(n123), .ZN(n63)
         );
  NR3D0BWP12T30P140 U10 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n107) );
  INVD0BWP12T30P140 U11 ( .I(n107), .ZN(n25) );
  NR3D0BWP12T30P140 U12 ( .A1(cnt[4]), .A2(cnt[3]), .A3(n25), .ZN(n102) );
  INVD0BWP12T30P140 U13 ( .I(n102), .ZN(n110) );
  NR3D0BWP12T30P140 U14 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n110), .ZN(n97) );
  INVD0BWP12T30P140 U15 ( .I(n97), .ZN(n105) );
  NR3D0BWP12T30P140 U16 ( .A1(cnt[8]), .A2(cnt[7]), .A3(n105), .ZN(n50) );
  INVD0BWP12T30P140 U17 ( .I(n50), .ZN(n100) );
  NR3D0BWP12T30P140 U18 ( .A1(cnt[10]), .A2(cnt[9]), .A3(n100), .ZN(n113) );
  INVD0BWP12T30P140 U19 ( .I(n113), .ZN(n53) );
  OR3D0BWP12T30P140 U20 ( .A1(cnt[12]), .A2(cnt[11]), .A3(n53), .Z(n118) );
  NR4D0BWP12T30P140 U21 ( .A1(cnt[15]), .A2(cnt[13]), .A3(cnt[14]), .A4(n118), 
        .ZN(n1) );
  INR2D1BWP12T30P140 U22 ( .A1(ena), .B1(n1), .ZN(n3) );
  INVD0BWP12T30P140 U23 ( .I(rst), .ZN(n138) );
  ND2D0BWP12T30P140 U24 ( .A1(n3), .A2(n138), .ZN(N64) );
  INVD0BWP12T30P140 U25 ( .I(sSCL), .ZN(n133) );
  ND2D0BWP12T30P140 U26 ( .A1(dscl_oen), .A2(n133), .ZN(n111) );
  IND2D1BWP12T30P140 U27 ( .A1(N64), .B1(n111), .ZN(n117) );
  INVD0BWP12T30P140 U28 ( .I(cnt[0]), .ZN(n32) );
  INVD0BWP12T30P140 U29 ( .I(cnt[1]), .ZN(n2) );
  AOI31D0BWP12T30P140 U30 ( .A1(n32), .A2(n2), .A3(n111), .B(N64), .ZN(n4) );
  NR2D0BWP12T30P140 U31 ( .A1(rst), .A2(n3), .ZN(n114) );
  AOI22D0BWP12T30P140 U32 ( .A1(cnt[2]), .A2(n4), .B1(n114), .B2(clk_cnt[2]), 
        .ZN(n5) );
  OAI21D0BWP12T30P140 U33 ( .A1(n25), .A2(n117), .B(n5), .ZN(n88) );
  INVD0BWP12T30P140 U34 ( .I(c_state[1]), .ZN(n45) );
  INVD0BWP12T30P140 U35 ( .I(c_state[2]), .ZN(n6) );
  OAI22D0BWP12T30P140 U36 ( .A1(n45), .A2(n123), .B1(n6), .B2(n121), .ZN(n72)
         );
  INVD0BWP12T30P140 U37 ( .I(c_state[6]), .ZN(n14) );
  INVD0BWP12T30P140 U38 ( .I(c_state[5]), .ZN(n10) );
  OAI22D0BWP12T30P140 U39 ( .A1(n14), .A2(n121), .B1(n10), .B2(n123), .ZN(n68)
         );
  INVD0BWP12T30P140 U40 ( .I(c_state[3]), .ZN(n7) );
  OAI22D0BWP12T30P140 U41 ( .A1(n6), .A2(n123), .B1(n7), .B2(n121), .ZN(n71)
         );
  MOAI22D0BWP12T30P140 U42 ( .A1(n7), .A2(n123), .B1(c_state[4]), .B2(n142), 
        .ZN(n70) );
  NR2D0BWP12T30P140 U43 ( .A1(c_state[15]), .A2(c_state[14]), .ZN(n134) );
  NR3D0BWP12T30P140 U44 ( .A1(c_state[1]), .A2(c_state[11]), .A3(c_state[10]), 
        .ZN(n139) );
  NR4D0BWP12T30P140 U45 ( .A1(c_state[2]), .A2(c_state[3]), .A3(c_state[7]), 
        .A4(c_state[6]), .ZN(n8) );
  AN3D0BWP12T30P140 U46 ( .A1(n134), .A2(n139), .A3(n8), .Z(n126) );
  NR4D0BWP12T30P140 U47 ( .A1(c_state[12]), .A2(c_state[8]), .A3(c_state[16]), 
        .A4(c_state[4]), .ZN(n54) );
  NR4D0BWP12T30P140 U48 ( .A1(c_state[0]), .A2(c_state[5]), .A3(c_state[13]), 
        .A4(c_state[9]), .ZN(n9) );
  ND3D0BWP12T30P140 U49 ( .A1(n126), .A2(n54), .A3(n9), .ZN(n124) );
  NR2D0BWP12T30P140 U50 ( .A1(n124), .A2(n123), .ZN(n143) );
  IND2D1BWP12T30P140 U51 ( .A1(cmd[3]), .B1(n143), .ZN(n15) );
  NR2D0BWP12T30P140 U52 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n17) );
  ND2D0BWP12T30P140 U53 ( .A1(cmd[1]), .A2(n17), .ZN(n119) );
  OAI22D0BWP12T30P140 U54 ( .A1(n10), .A2(n121), .B1(n15), .B2(n119), .ZN(n69)
         );
  INVD0BWP12T30P140 U55 ( .I(c_state[9]), .ZN(n137) );
  OAI22D0BWP12T30P140 U56 ( .A1(n11), .A2(n121), .B1(n137), .B2(n123), .ZN(n64) );
  INVD0BWP12T30P140 U57 ( .I(c_state[15]), .ZN(n93) );
  MOAI22D0BWP12T30P140 U58 ( .A1(n93), .A2(n123), .B1(c_state[16]), .B2(n142), 
        .ZN(n58) );
  INVD0BWP12T30P140 U59 ( .I(n117), .ZN(n36) );
  NR2D0BWP12T30P140 U60 ( .A1(N64), .A2(n111), .ZN(n41) );
  AOI221D0BWP12T30P140 U61 ( .A1(cnt[13]), .A2(n36), .B1(n118), .B2(n36), .C(
        n41), .ZN(n46) );
  INVD0BWP12T30P140 U62 ( .I(cnt[14]), .ZN(n47) );
  NR3D0BWP12T30P140 U63 ( .A1(cnt[13]), .A2(n118), .A3(n117), .ZN(n37) );
  AOI22D0BWP12T30P140 U64 ( .A1(clk_cnt[14]), .A2(n114), .B1(n37), .B2(n47), 
        .ZN(n12) );
  OAI21D0BWP12T30P140 U65 ( .A1(n46), .A2(n47), .B(n12), .ZN(n76) );
  MOAI22D0BWP12T30P140 U66 ( .A1(n13), .A2(n123), .B1(c_state[12]), .B2(n142), 
        .ZN(n62) );
  INVD0BWP12T30P140 U67 ( .I(c_state[7]), .ZN(n35) );
  OAI22D0BWP12T30P140 U68 ( .A1(n35), .A2(n121), .B1(n14), .B2(n123), .ZN(n67)
         );
  NR2D0BWP12T30P140 U69 ( .A1(cmd[1]), .A2(n15), .ZN(n19) );
  ND2D0BWP12T30P140 U70 ( .A1(cmd[2]), .A2(n19), .ZN(n16) );
  INVD0BWP12T30P140 U71 ( .I(c_state[13]), .ZN(n94) );
  OAI22D0BWP12T30P140 U72 ( .A1(cmd[0]), .A2(n16), .B1(n94), .B2(n121), .ZN(
        n61) );
  ND3D0BWP12T30P140 U73 ( .A1(n143), .A2(cmd[3]), .A3(n17), .ZN(n18) );
  OAI22D0BWP12T30P140 U74 ( .A1(cmd[1]), .A2(n18), .B1(n137), .B2(n121), .ZN(
        n65) );
  ND2D0BWP12T30P140 U75 ( .A1(cmd[0]), .A2(n19), .ZN(n20) );
  INVD0BWP12T30P140 U76 ( .I(c_state[0]), .ZN(n125) );
  OAI22D0BWP12T30P140 U77 ( .A1(cmd[2]), .A2(n20), .B1(n125), .B2(n121), .ZN(
        n74) );
  AOI21D0BWP12T30P140 U78 ( .A1(n113), .A2(n111), .B(N64), .ZN(n21) );
  AOI22D0BWP12T30P140 U79 ( .A1(cnt[11]), .A2(n21), .B1(n114), .B2(clk_cnt[11]), .ZN(n22) );
  OAI31D0BWP12T30P140 U80 ( .A1(cnt[11]), .A2(n53), .A3(n117), .B(n22), .ZN(
        n79) );
  AOI21D0BWP12T30P140 U81 ( .A1(n107), .A2(n111), .B(N64), .ZN(n23) );
  AOI22D0BWP12T30P140 U82 ( .A1(cnt[3]), .A2(n23), .B1(n114), .B2(clk_cnt[3]), 
        .ZN(n24) );
  OAI31D0BWP12T30P140 U83 ( .A1(cnt[3]), .A2(n25), .A3(n117), .B(n24), .ZN(n87) );
  AOI21D0BWP12T30P140 U84 ( .A1(n102), .A2(n111), .B(N64), .ZN(n26) );
  AOI22D0BWP12T30P140 U85 ( .A1(cnt[5]), .A2(n26), .B1(n114), .B2(clk_cnt[5]), 
        .ZN(n27) );
  OAI31D0BWP12T30P140 U86 ( .A1(cnt[5]), .A2(n110), .A3(n117), .B(n27), .ZN(
        n85) );
  AOI21D0BWP12T30P140 U87 ( .A1(n97), .A2(n111), .B(N64), .ZN(n28) );
  AOI22D0BWP12T30P140 U88 ( .A1(cnt[7]), .A2(n28), .B1(n114), .B2(clk_cnt[7]), 
        .ZN(n29) );
  OAI31D0BWP12T30P140 U89 ( .A1(cnt[7]), .A2(n105), .A3(n117), .B(n29), .ZN(
        n83) );
  AOI21D0BWP12T30P140 U90 ( .A1(n50), .A2(n111), .B(N64), .ZN(n30) );
  AOI22D0BWP12T30P140 U91 ( .A1(cnt[9]), .A2(n30), .B1(n114), .B2(clk_cnt[9]), 
        .ZN(n31) );
  OAI31D0BWP12T30P140 U92 ( .A1(cnt[9]), .A2(n100), .A3(n117), .B(n31), .ZN(
        n81) );
  AOI21D0BWP12T30P140 U93 ( .A1(n32), .A2(n111), .B(N64), .ZN(n33) );
  AOI22D0BWP12T30P140 U94 ( .A1(cnt[1]), .A2(n33), .B1(n114), .B2(clk_cnt[1]), 
        .ZN(n34) );
  OAI31D0BWP12T30P140 U95 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n117), .B(n34), .ZN(
        n89) );
  MOAI22D0BWP12T30P140 U96 ( .A1(n35), .A2(n123), .B1(c_state[8]), .B2(n142), 
        .ZN(n66) );
  AOI21D0BWP12T30P140 U97 ( .A1(n36), .A2(n118), .B(n41), .ZN(n40) );
  INVD0BWP12T30P140 U98 ( .I(cnt[13]), .ZN(n39) );
  AOI21D0BWP12T30P140 U99 ( .A1(n114), .A2(clk_cnt[13]), .B(n37), .ZN(n38) );
  OAI21D0BWP12T30P140 U100 ( .A1(n40), .A2(n39), .B(n38), .ZN(n77) );
  AOI22D0BWP12T30P140 U101 ( .A1(cnt[0]), .A2(n41), .B1(n114), .B2(clk_cnt[0]), 
        .ZN(n42) );
  OAI21D0BWP12T30P140 U102 ( .A1(cnt[0]), .A2(n117), .B(n42), .ZN(n90) );
  NR2D0BWP12T30P140 U103 ( .A1(dSCL), .A2(n133), .ZN(n43) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(dout), .I1(sSDA), .S(n43), .Z(n55) );
  INVD0BWP12T30P140 U105 ( .I(sSDA), .ZN(n132) );
  ND2D0BWP12T30P140 U106 ( .A1(n138), .A2(n132), .ZN(N73) );
  INVD0BWP12T30P140 U107 ( .I(sda_oen), .ZN(n146) );
  INVD0BWP12T30P140 U108 ( .I(sda_chk), .ZN(n122) );
  IND4D1BWP12T30P140 U109 ( .A1(cmd_stop), .B1(sto_condition), .B2(n138), .B3(
        n124), .ZN(n44) );
  OAI31D0BWP12T30P140 U110 ( .A1(n146), .A2(n122), .A3(N73), .B(n44), .ZN(N87)
         );
  OAI22D0BWP12T30P140 U111 ( .A1(n45), .A2(n121), .B1(n125), .B2(n123), .ZN(
        n73) );
  OAI21D0BWP12T30P140 U112 ( .A1(n47), .A2(n117), .B(n46), .ZN(n48) );
  AO22D0BWP12T30P140 U113 ( .A1(cnt[15]), .A2(n48), .B1(n114), .B2(clk_cnt[15]), .Z(n91) );
  INVD0BWP12T30P140 U114 ( .I(cnt[9]), .ZN(n49) );
  AOI31D0BWP12T30P140 U115 ( .A1(n50), .A2(n49), .A3(n111), .B(N64), .ZN(n51)
         );
  AOI22D0BWP12T30P140 U116 ( .A1(cnt[10]), .A2(n51), .B1(n114), .B2(
        clk_cnt[10]), .ZN(n52) );
  OAI21D0BWP12T30P140 U117 ( .A1(n53), .A2(n117), .B(n52), .ZN(n80) );
  NR2D0BWP12T30P140 U118 ( .A1(n54), .A2(n123), .ZN(N175) );
  INVD0BWP12T30P140 U119 ( .I(c_state[14]), .ZN(n95) );
  OAI22D0BWP12T30P140 U120 ( .A1(n93), .A2(n121), .B1(n95), .B2(n123), .ZN(n59) );
  OAI22D0BWP12T30P140 U121 ( .A1(n95), .A2(n121), .B1(n94), .B2(n123), .ZN(n60) );
  INVD0BWP12T30P140 U122 ( .I(cnt[7]), .ZN(n96) );
  AOI31D0BWP12T30P140 U123 ( .A1(n97), .A2(n96), .A3(n111), .B(N64), .ZN(n98)
         );
  AOI22D0BWP12T30P140 U124 ( .A1(cnt[8]), .A2(n98), .B1(n114), .B2(clk_cnt[8]), 
        .ZN(n99) );
  OAI21D0BWP12T30P140 U125 ( .A1(n100), .A2(n117), .B(n99), .ZN(n82) );
  INVD0BWP12T30P140 U126 ( .I(cnt[5]), .ZN(n101) );
  AOI31D0BWP12T30P140 U127 ( .A1(n102), .A2(n101), .A3(n111), .B(N64), .ZN(
        n103) );
  AOI22D0BWP12T30P140 U128 ( .A1(cnt[6]), .A2(n103), .B1(n114), .B2(clk_cnt[6]), .ZN(n104) );
  OAI21D0BWP12T30P140 U129 ( .A1(n105), .A2(n117), .B(n104), .ZN(n84) );
  INVD0BWP12T30P140 U130 ( .I(cnt[3]), .ZN(n106) );
  AOI31D0BWP12T30P140 U131 ( .A1(n107), .A2(n106), .A3(n111), .B(N64), .ZN(
        n108) );
  AOI22D0BWP12T30P140 U132 ( .A1(cnt[4]), .A2(n108), .B1(n114), .B2(clk_cnt[4]), .ZN(n109) );
  OAI21D0BWP12T30P140 U133 ( .A1(n110), .A2(n117), .B(n109), .ZN(n86) );
  INVD0BWP12T30P140 U134 ( .I(cnt[11]), .ZN(n112) );
  AOI31D0BWP12T30P140 U135 ( .A1(n113), .A2(n112), .A3(n111), .B(N64), .ZN(
        n115) );
  AOI22D0BWP12T30P140 U136 ( .A1(cnt[12]), .A2(n115), .B1(n114), .B2(
        clk_cnt[12]), .ZN(n116) );
  OAI21D0BWP12T30P140 U137 ( .A1(n118), .A2(n117), .B(n116), .ZN(n78) );
  OAI21D0BWP12T30P140 U138 ( .A1(cmd[3]), .A2(n119), .B(clk_en), .ZN(n120) );
  OA211D0BWP12T30P140 U139 ( .A1(clk_en), .A2(cmd_stop), .B(n138), .C(n120), 
        .Z(n75) );
  OAI22D0BWP12T30P140 U140 ( .A1(n134), .A2(n123), .B1(n122), .B2(n121), .ZN(
        n92) );
  CKBD0BWP12T30P140 U141 ( .I(clk), .Z(n150) );
  CKBD0BWP12T30P140 U142 ( .I(clk), .Z(n151) );
  CKBD0BWP12T30P140 U143 ( .I(clk), .Z(n152) );
  CKBD0BWP12T30P140 U144 ( .I(nReset), .Z(n149) );
  CKBD0BWP12T30P140 U145 ( .I(nReset), .Z(n147) );
  CKBD0BWP12T30P140 U146 ( .I(nReset), .Z(n148) );
  AN3D0BWP12T30P140 U147 ( .A1(n125), .A2(n124), .A3(clk_en), .Z(n127) );
  ND2D0BWP12T30P140 U148 ( .A1(n127), .A2(n126), .ZN(n128) );
  OAI22D0BWP12T30P140 U149 ( .A1(n128), .A2(c_state[8]), .B1(n127), .B2(
        scl_oen), .ZN(n129) );
  ND2D0BWP12T30P140 U150 ( .A1(n130), .A2(n129), .ZN(n57) );
  ND2D0BWP12T30P140 U151 ( .A1(n138), .A2(n133), .ZN(N72) );
  NR2D0BWP12T30P140 U152 ( .A1(busy), .A2(sta_condition), .ZN(n131) );
  NR3D0BWP12T30P140 U153 ( .A1(n131), .A2(rst), .A3(sto_condition), .ZN(N79)
         );
  NR4D0BWP12T30P140 U154 ( .A1(rst), .A2(dSDA), .A3(n133), .A4(n132), .ZN(N77)
         );
  INR3D1BWP12T30P140 U155 ( .A1(dSDA), .B1(n133), .B2(N73), .ZN(N76) );
  IND2D1BWP12T30P140 U156 ( .A1(sda_i), .B1(n138), .ZN(N71) );
  IND2D1BWP12T30P140 U157 ( .A1(scl_i), .B1(n138), .ZN(N70) );
  OR2D0BWP12T30P140 U158 ( .A1(c_state[12]), .A2(c_state[8]), .Z(n141) );
  INVD0BWP12T30P140 U159 ( .I(n134), .ZN(n135) );
  OAI31D0BWP12T30P140 U160 ( .A1(c_state[16]), .A2(c_state[13]), .A3(n135), 
        .B(din), .ZN(n136) );
  ND4D0BWP12T30P140 U161 ( .A1(n139), .A2(n138), .A3(n137), .A4(n136), .ZN(
        n140) );
  NR4D0BWP12T30P140 U162 ( .A1(al), .A2(c_state[0]), .A3(n141), .A4(n140), 
        .ZN(n145) );
  NR2D0BWP12T30P140 U163 ( .A1(n143), .A2(n142), .ZN(n144) );
  MUX2ND0BWP12T30P140 U164 ( .I0(n146), .I1(n145), .S(n144), .ZN(n56) );
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
  DFCNQD1BWP12T30P140 ld_reg ( .D(N106), .CP(n80), .CDN(n77), .Q(ld) );
  DFCNQD1BWP12T30P140 core_cmd_reg_1_ ( .D(n62), .CP(n80), .CDN(n77), .Q(
        core_cmd[1]) );
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
  DFCNQD1BWP12T30P140 core_cmd_reg_3_ ( .D(n60), .CP(n79), .CDN(n78), .Q(
        core_cmd[3]) );
  DFCNQD1BWP12T30P140 core_cmd_reg_0_ ( .D(n63), .CP(n79), .CDN(n78), .Q(
        core_cmd[0]) );
  IND2D1BWP12T30P140 U3 ( .A1(rst), .B1(ld), .ZN(n25) );
  INVD0BWP12T30P140 U4 ( .I(n25), .ZN(n26) );
  NR2D0BWP12T30P140 U5 ( .A1(rst), .A2(ld), .ZN(n1) );
  ND2D0BWP12T30P140 U6 ( .A1(shift), .A2(n1), .ZN(n29) );
  INVD0BWP12T30P140 U7 ( .I(n29), .ZN(n23) );
  NR3D0BWP12T30P140 U8 ( .A1(rst), .A2(ld), .A3(shift), .ZN(n19) );
  AO222D0BWP12T30P140 U9 ( .A1(n26), .A2(din[6]), .B1(n23), .B2(dout[5]), .C1(
        dout[6]), .C2(n19), .Z(n53) );
  INVD0BWP12T30P140 U10 ( .I(c_state[1]), .ZN(n46) );
  INVD0BWP12T30P140 U11 ( .I(c_state[2]), .ZN(n43) );
  ND2D0BWP12T30P140 U12 ( .A1(n46), .A2(n43), .ZN(n4) );
  NR4D0BWP12T30P140 U13 ( .A1(c_state[4]), .A2(c_state[0]), .A3(c_state[3]), 
        .A4(n4), .ZN(n40) );
  INVD0BWP12T30P140 U14 ( .I(core_ack), .ZN(n41) );
  NR2D0BWP12T30P140 U15 ( .A1(rst), .A2(i2c_al), .ZN(n8) );
  NR2D0BWP12T30P140 U16 ( .A1(read), .A2(write), .ZN(n11) );
  INVD0BWP12T30P140 U17 ( .I(n11), .ZN(n3) );
  INVD0BWP12T30P140 U18 ( .I(cmd_ack), .ZN(n2) );
  OAI211D0BWP12T30P140 U19 ( .A1(stop), .A2(n3), .B(n40), .C(n2), .ZN(n6) );
  OAI211D0BWP12T30P140 U20 ( .A1(n40), .A2(n41), .B(n8), .C(n6), .ZN(n15) );
  INVD0BWP12T30P140 U21 ( .I(n15), .ZN(n76) );
  ND2D0BWP12T30P140 U22 ( .A1(n8), .A2(n15), .ZN(n35) );
  NR3D0BWP12T30P140 U23 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(dcnt[2]), .ZN(n37)
         );
  INVD0BWP12T30P140 U24 ( .I(n37), .ZN(n36) );
  NR2D0BWP12T30P140 U25 ( .A1(n35), .A2(n36), .ZN(n30) );
  AO22D0BWP12T30P140 U26 ( .A1(n76), .A2(c_state[3]), .B1(n30), .B2(n4), .Z(
        n67) );
  AOI21D0BWP12T30P140 U27 ( .A1(n8), .A2(n36), .B(n76), .ZN(n18) );
  INR2D1BWP12T30P140 U28 ( .A1(n40), .B1(start), .ZN(n17) );
  AOI21D0BWP12T30P140 U29 ( .A1(write), .A2(n17), .B(c_state[0]), .ZN(n5) );
  OR3D0BWP12T30P140 U30 ( .A1(read), .A2(n5), .A3(n35), .Z(n31) );
  OAI21D0BWP12T30P140 U31 ( .A1(n18), .A2(n43), .B(n31), .ZN(n68) );
  ND2D0BWP12T30P140 U32 ( .A1(n8), .A2(core_ack), .ZN(n45) );
  INVD0BWP12T30P140 U33 ( .I(n45), .ZN(n7) );
  INVD0BWP12T30P140 U34 ( .I(n8), .ZN(n48) );
  NR2D0BWP12T30P140 U35 ( .A1(n48), .A2(n6), .ZN(n14) );
  AO21D0BWP12T30P140 U36 ( .A1(c_state[0]), .A2(n7), .B(n14), .Z(N106) );
  ND2D0BWP12T30P140 U37 ( .A1(c_state[3]), .A2(n7), .ZN(n51) );
  INVD0BWP12T30P140 U38 ( .I(core_rxd), .ZN(n10) );
  INVD0BWP12T30P140 U39 ( .I(c_state[3]), .ZN(n47) );
  OAI211D0BWP12T30P140 U40 ( .A1(n41), .A2(n47), .B(n8), .C(ack_out), .ZN(n9)
         );
  OAI21D0BWP12T30P140 U41 ( .A1(n51), .A2(n10), .B(n9), .ZN(n71) );
  INVD0BWP12T30P140 U42 ( .I(c_state[4]), .ZN(n13) );
  INVD0BWP12T30P140 U43 ( .I(n35), .ZN(n16) );
  AO22D0BWP12T30P140 U44 ( .A1(n11), .A2(n17), .B1(c_state[3]), .B2(stop), .Z(
        n12) );
  ND2D0BWP12T30P140 U45 ( .A1(n16), .A2(n12), .ZN(n74) );
  OAI21D0BWP12T30P140 U46 ( .A1(n15), .A2(n13), .B(n74), .ZN(n66) );
  ND2D0BWP12T30P140 U47 ( .A1(c_state[2]), .A2(n36), .ZN(n33) );
  AOI21D0BWP12T30P140 U48 ( .A1(n46), .A2(n33), .B(n45), .ZN(N105) );
  OAI22D0BWP12T30P140 U49 ( .A1(stop), .A2(n51), .B1(n13), .B2(n45), .ZN(N107)
         );
  INVD0BWP12T30P140 U50 ( .I(c_state[0]), .ZN(n42) );
  ND2D0BWP12T30P140 U51 ( .A1(start), .A2(n14), .ZN(n75) );
  OAI21D0BWP12T30P140 U52 ( .A1(n15), .A2(n42), .B(n75), .ZN(n70) );
  AO222D0BWP12T30P140 U53 ( .A1(dout[7]), .A2(n19), .B1(n26), .B2(din[7]), 
        .C1(dout[6]), .C2(n23), .Z(n52) );
  OAI211D0BWP12T30P140 U54 ( .A1(c_state[0]), .A2(n17), .B(read), .C(n16), 
        .ZN(n34) );
  OAI21D0BWP12T30P140 U55 ( .A1(n18), .A2(n46), .B(n34), .ZN(n69) );
  AO222D0BWP12T30P140 U56 ( .A1(n26), .A2(din[2]), .B1(n23), .B2(dout[1]), 
        .C1(dout[2]), .C2(n19), .Z(n57) );
  AO222D0BWP12T30P140 U57 ( .A1(n26), .A2(din[3]), .B1(n23), .B2(dout[2]), 
        .C1(dout[3]), .C2(n19), .Z(n56) );
  AO222D0BWP12T30P140 U58 ( .A1(n26), .A2(din[4]), .B1(n23), .B2(dout[3]), 
        .C1(dout[4]), .C2(n19), .Z(n55) );
  AO222D0BWP12T30P140 U59 ( .A1(n26), .A2(din[0]), .B1(n23), .B2(core_rxd), 
        .C1(dout[0]), .C2(n19), .Z(n59) );
  AO222D0BWP12T30P140 U60 ( .A1(n26), .A2(din[1]), .B1(n23), .B2(dout[0]), 
        .C1(dout[1]), .C2(n19), .Z(n58) );
  AO222D0BWP12T30P140 U61 ( .A1(n26), .A2(din[5]), .B1(n23), .B2(dout[4]), 
        .C1(dout[5]), .C2(n19), .Z(n54) );
  INVD0BWP12T30P140 U62 ( .I(dcnt[0]), .ZN(n22) );
  INVD0BWP12T30P140 U63 ( .I(n19), .ZN(n21) );
  ND2D0BWP12T30P140 U64 ( .A1(n23), .A2(n22), .ZN(n20) );
  OAI211D0BWP12T30P140 U65 ( .A1(n22), .A2(n21), .B(n25), .C(n20), .ZN(n64) );
  OAI21D0BWP12T30P140 U66 ( .A1(n22), .A2(n29), .B(n21), .ZN(n27) );
  AOI32D0BWP12T30P140 U67 ( .A1(dcnt[1]), .A2(dcnt[2]), .A3(n23), .B1(n27), 
        .B2(dcnt[2]), .ZN(n24) );
  OAI211D0BWP12T30P140 U68 ( .A1(n36), .A2(n29), .B(n25), .C(n24), .ZN(n72) );
  AOI21D0BWP12T30P140 U69 ( .A1(dcnt[1]), .A2(n27), .B(n26), .ZN(n28) );
  OAI31D0BWP12T30P140 U70 ( .A1(dcnt[1]), .A2(dcnt[0]), .A3(n29), .B(n28), 
        .ZN(n65) );
  AOI22D0BWP12T30P140 U71 ( .A1(c_state[1]), .A2(n30), .B1(n76), .B2(
        core_cmd[2]), .ZN(n32) );
  OAI211D0BWP12T30P140 U72 ( .A1(n33), .A2(n35), .B(n32), .C(n31), .ZN(n61) );
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
         n152, n153, n154;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;

  i2c_master_byte_ctrl byte_controller ( .clk(n152), .rst(n151), .nReset(n148), 
        .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), .cmd_ack(done), .ack_out(irxack), 
        .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), .scl_i(scl_pad_i), 
        .scl_oen(scl_padoen_o), .sda_i(sda_pad_i), .sda_oen(sda_padoen_o) );
  DFSNQD1BWP12T30P140 prer_reg_15_ ( .D(n94), .CP(n154), .SDN(n149), .Q(
        prer[15]) );
  DFSNQD1BWP12T30P140 prer_reg_14_ ( .D(n93), .CP(n154), .SDN(n149), .Q(
        prer[14]) );
  DFSNQD1BWP12T30P140 prer_reg_13_ ( .D(n92), .CP(n154), .SDN(n149), .Q(
        prer[13]) );
  DFSNQD1BWP12T30P140 prer_reg_12_ ( .D(n91), .CP(n154), .SDN(n149), .Q(
        prer[12]) );
  DFSNQD1BWP12T30P140 prer_reg_11_ ( .D(n90), .CP(n154), .SDN(n149), .Q(
        prer[11]) );
  DFSNQD1BWP12T30P140 prer_reg_10_ ( .D(n89), .CP(n154), .SDN(n149), .Q(
        prer[10]) );
  DFSNQD1BWP12T30P140 prer_reg_9_ ( .D(n88), .CP(n154), .SDN(n149), .Q(prer[9]) );
  DFSNQD1BWP12T30P140 prer_reg_8_ ( .D(n87), .CP(n154), .SDN(n149), .Q(prer[8]) );
  DFSNQD1BWP12T30P140 prer_reg_7_ ( .D(n86), .CP(n154), .SDN(n150), .Q(prer[7]) );
  DFSNQD1BWP12T30P140 prer_reg_6_ ( .D(n85), .CP(n154), .SDN(n150), .Q(prer[6]) );
  DFSNQD1BWP12T30P140 prer_reg_5_ ( .D(n84), .CP(n154), .SDN(n150), .Q(prer[5]) );
  DFSNQD1BWP12T30P140 prer_reg_4_ ( .D(n83), .CP(n154), .SDN(n150), .Q(prer[4]) );
  DFSNQD1BWP12T30P140 prer_reg_3_ ( .D(n82), .CP(n154), .SDN(n150), .Q(prer[3]) );
  DFSNQD1BWP12T30P140 prer_reg_2_ ( .D(n81), .CP(n154), .SDN(n150), .Q(prer[2]) );
  DFSNQD1BWP12T30P140 prer_reg_1_ ( .D(n80), .CP(n154), .SDN(n149), .Q(prer[1]) );
  DFSNQD1BWP12T30P140 prer_reg_0_ ( .D(n79), .CP(n154), .SDN(n150), .Q(prer[0]) );
  DFCNQD1BWP12T30P140 wb_inta_o_reg ( .D(N121), .CP(n153), .CDN(n148), .Q(
        wb_inta_o) );
  DFCNQD1BWP12T30P140 ctr_reg_4_ ( .D(n107), .CP(n152), .CDN(n149), .Q(ctr[4])
         );
  DFCNQD1BWP12T30P140 ctr_reg_3_ ( .D(n106), .CP(n152), .CDN(n149), .Q(ctr[3])
         );
  DFCNQD1BWP12T30P140 ctr_reg_2_ ( .D(n105), .CP(n153), .CDN(n149), .Q(ctr[2])
         );
  DFCNQD1BWP12T30P140 cr_reg_2_ ( .D(n73), .CP(n153), .CDN(n148), .Q(cr[2]) );
  DFCNQD1BWP12T30P140 rxack_reg ( .D(N115), .CP(n153), .CDN(n148), .Q(sr[7])
         );
  DFCNQD1BWP12T30P140 tip_reg ( .D(N116), .CP(n153), .CDN(n148), .Q(sr_1) );
  DFQD2BWP12T30P140 wb_dat_o_reg_4_ ( .D(n111), .CP(n152), .Q(wb_dat_o[4]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_6_ ( .D(N49), .CP(n152), .Q(wb_dat_o[6]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_3_ ( .D(n112), .CP(n152), .Q(wb_dat_o[3]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_2_ ( .D(n113), .CP(n152), .Q(wb_dat_o[2]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_5_ ( .D(N48), .CP(n152), .Q(wb_dat_o[5]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_7_ ( .D(N50), .CP(n152), .Q(wb_dat_o[7]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_0_ ( .D(N43), .CP(n152), .Q(wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 ctr_reg_6_ ( .D(n109), .CP(n152), .CDN(n149), .Q(ctr[6])
         );
  DFCNQD1BWP12T30P140 ctr_reg_5_ ( .D(n108), .CP(n152), .CDN(n149), .Q(ctr[5])
         );
  DFCNQD1BWP12T30P140 ctr_reg_1_ ( .D(n104), .CP(n152), .CDN(n149), .Q(ctr[1])
         );
  DFCNQD1BWP12T30P140 ctr_reg_0_ ( .D(n103), .CP(n152), .CDN(n148), .Q(ctr[0])
         );
  DFCNQD1BWP12T30P140 cr_reg_1_ ( .D(n72), .CP(n153), .CDN(n148), .Q(cr[1]) );
  DFCNQD1BWP12T30P140 al_reg ( .D(N114), .CP(n153), .CDN(n148), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 cr_reg_3_ ( .D(n78), .CP(n153), .CDN(n148), .Q(cr[3]) );
  DFCNQD1BWP12T30P140 txr_reg_4_ ( .D(n99), .CP(n153), .CDN(n149), .Q(txr[4])
         );
  DFCNQD1BWP12T30P140 txr_reg_3_ ( .D(n98), .CP(n153), .CDN(n148), .Q(txr[3])
         );
  DFCNQD1BWP12T30P140 txr_reg_2_ ( .D(n97), .CP(n153), .CDN(n148), .Q(txr[2])
         );
  DFCNQD1BWP12T30P140 irq_flag_reg ( .D(N117), .CP(n153), .CDN(n148), .Q(sr_0)
         );
  DFCNQD1BWP12T30P140 txr_reg_0_ ( .D(n95), .CP(n152), .CDN(n148), .Q(txr[0])
         );
  DFCNQD1BWP12T30P140 txr_reg_7_ ( .D(n102), .CP(n152), .CDN(n149), .Q(txr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_4_ ( .D(n77), .CP(n153), .CDN(n148), .Q(cr[4]) );
  DFCNQD1BWP12T30P140 cr_reg_0_ ( .D(n71), .CP(n153), .CDN(n148), .Q(cr[0]) );
  DFCNQD1BWP12T30P140 txr_reg_6_ ( .D(n101), .CP(n153), .CDN(n149), .Q(txr[6])
         );
  DFCNQD1BWP12T30P140 txr_reg_5_ ( .D(n100), .CP(n153), .CDN(n149), .Q(txr[5])
         );
  DFCNQD1BWP12T30P140 txr_reg_1_ ( .D(n96), .CP(n153), .CDN(n148), .Q(txr[1])
         );
  DFCNQD1BWP12T30P140 ctr_reg_7_ ( .D(n110), .CP(n152), .CDN(n149), .Q(ctr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_7_ ( .D(n74), .CP(n153), .CDN(n148), .Q(cr[7]) );
  DFCNQD1BWP12T30P140 cr_reg_6_ ( .D(n75), .CP(n153), .CDN(n148), .Q(cr[6]) );
  DFCNQD1BWP12T30P140 cr_reg_5_ ( .D(n76), .CP(n153), .CDN(n148), .Q(cr[5]) );
  DFQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(N44), .CP(n152), .Q(wb_dat_o[1]) );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(N20), .CP(n152), .Q(wb_ack_o) );
  CKBD0BWP12T30P140 U3 ( .I(arst_i), .Z(n150) );
  INVD0BWP12T30P140 U4 ( .I(wb_dat_i[5]), .ZN(n53) );
  INVD0BWP12T30P140 U5 ( .I(wb_rst_i), .ZN(n142) );
  INVD0BWP12T30P140 U6 ( .I(n142), .ZN(n143) );
  ND3D0BWP12T30P140 U7 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_we_i), .ZN(n3)
         );
  NR2D0BWP12T30P140 U8 ( .A1(n143), .A2(n3), .ZN(n10) );
  NR2D0BWP12T30P140 U9 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n131) );
  ND3D0BWP12T30P140 U10 ( .A1(wb_adr_i[2]), .A2(ctr[7]), .A3(n131), .ZN(n9) );
  OAI21D0BWP12T30P140 U11 ( .A1(n3), .A2(n9), .B(n142), .ZN(n19) );
  ND2D0BWP12T30P140 U12 ( .A1(n10), .A2(n19), .ZN(n49) );
  NR2D0BWP12T30P140 U13 ( .A1(done), .A2(i2c_al), .ZN(n16) );
  INVD0BWP12T30P140 U14 ( .I(n16), .ZN(n1) );
  AO21D0BWP12T30P140 U15 ( .A1(n3), .A2(n1), .B(n19), .Z(n12) );
  INVD0BWP12T30P140 U16 ( .I(cr[5]), .ZN(n144) );
  OAI22D0BWP12T30P140 U17 ( .A1(n53), .A2(n49), .B1(n12), .B2(n144), .ZN(n76)
         );
  INVD0BWP12T30P140 U18 ( .I(wb_dat_i[6]), .ZN(n56) );
  INVD0BWP12T30P140 U19 ( .I(cr[6]), .ZN(n2) );
  OAI22D0BWP12T30P140 U20 ( .A1(n56), .A2(n49), .B1(n12), .B2(n2), .ZN(n75) );
  INVD0BWP12T30P140 U21 ( .I(wb_dat_i[7]), .ZN(n36) );
  INVD0BWP12T30P140 U22 ( .I(cr[7]), .ZN(n20) );
  OAI22D0BWP12T30P140 U23 ( .A1(n36), .A2(n49), .B1(n12), .B2(n20), .ZN(n74)
         );
  INVD0BWP12T30P140 U24 ( .I(wb_adr_i[0]), .ZN(n24) );
  ND2D0BWP12T30P140 U25 ( .A1(wb_adr_i[1]), .A2(n24), .ZN(n135) );
  OAI21D0BWP12T30P140 U26 ( .A1(n3), .A2(wb_adr_i[2]), .B(n142), .ZN(n34) );
  INVD0BWP12T30P140 U27 ( .I(n34), .ZN(n5) );
  AOI21D0BWP12T30P140 U28 ( .A1(n142), .A2(n135), .B(n5), .ZN(n57) );
  INVD0BWP12T30P140 U29 ( .I(ctr[7]), .ZN(n4) );
  ND2D0BWP12T30P140 U30 ( .A1(n10), .A2(n57), .ZN(n55) );
  OAI22D0BWP12T30P140 U31 ( .A1(n57), .A2(n4), .B1(n36), .B2(n55), .ZN(n110)
         );
  ND2D0BWP12T30P140 U32 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n58) );
  AOI21D0BWP12T30P140 U33 ( .A1(n142), .A2(n58), .B(n5), .ZN(n18) );
  INVD0BWP12T30P140 U34 ( .I(txr[1]), .ZN(n6) );
  INVD0BWP12T30P140 U35 ( .I(wb_dat_i[1]), .ZN(n51) );
  ND2D0BWP12T30P140 U36 ( .A1(n10), .A2(n18), .ZN(n17) );
  OAI22D0BWP12T30P140 U37 ( .A1(n18), .A2(n6), .B1(n51), .B2(n17), .ZN(n96) );
  INVD0BWP12T30P140 U38 ( .I(txr[5]), .ZN(n7) );
  OAI22D0BWP12T30P140 U39 ( .A1(n18), .A2(n7), .B1(n53), .B2(n17), .ZN(n100)
         );
  INVD0BWP12T30P140 U40 ( .I(txr[6]), .ZN(n8) );
  OAI22D0BWP12T30P140 U41 ( .A1(n18), .A2(n8), .B1(n56), .B2(n17), .ZN(n101)
         );
  INVD0BWP12T30P140 U42 ( .I(wb_dat_i[0]), .ZN(n45) );
  ND2D0BWP12T30P140 U43 ( .A1(n10), .A2(n9), .ZN(n48) );
  INVD0BWP12T30P140 U44 ( .I(cr[0]), .ZN(n11) );
  OAI22D0BWP12T30P140 U45 ( .A1(n45), .A2(n49), .B1(n48), .B2(n11), .ZN(n71)
         );
  INVD0BWP12T30P140 U46 ( .I(wb_dat_i[4]), .ZN(n46) );
  INVD0BWP12T30P140 U47 ( .I(cr[4]), .ZN(n145) );
  OAI22D0BWP12T30P140 U48 ( .A1(n46), .A2(n49), .B1(n12), .B2(n145), .ZN(n77)
         );
  INVD0BWP12T30P140 U49 ( .I(txr[7]), .ZN(n13) );
  OAI22D0BWP12T30P140 U50 ( .A1(n18), .A2(n13), .B1(n36), .B2(n17), .ZN(n102)
         );
  INVD0BWP12T30P140 U51 ( .I(txr[0]), .ZN(n14) );
  OAI22D0BWP12T30P140 U52 ( .A1(n18), .A2(n14), .B1(n45), .B2(n17), .ZN(n95)
         );
  ND2D0BWP12T30P140 U53 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(n15) );
  NR2D0BWP12T30P140 U54 ( .A1(wb_ack_o), .A2(n15), .ZN(N20) );
  INVD0BWP12T30P140 U55 ( .I(sr_0), .ZN(n146) );
  AOI211D0BWP12T30P140 U56 ( .A1(n16), .A2(n146), .B(n143), .C(cr[0]), .ZN(
        N117) );
  INVD0BWP12T30P140 U57 ( .I(txr[2]), .ZN(n119) );
  INVD0BWP12T30P140 U58 ( .I(wb_dat_i[2]), .ZN(n50) );
  OAI22D0BWP12T30P140 U59 ( .A1(n18), .A2(n119), .B1(n50), .B2(n17), .ZN(n97)
         );
  INVD0BWP12T30P140 U60 ( .I(txr[3]), .ZN(n125) );
  INVD0BWP12T30P140 U61 ( .I(wb_dat_i[3]), .ZN(n47) );
  OAI22D0BWP12T30P140 U62 ( .A1(n18), .A2(n125), .B1(n47), .B2(n17), .ZN(n98)
         );
  INVD0BWP12T30P140 U63 ( .I(txr[4]), .ZN(n140) );
  OAI22D0BWP12T30P140 U64 ( .A1(n18), .A2(n140), .B1(n46), .B2(n17), .ZN(n99)
         );
  INVD0BWP12T30P140 U65 ( .I(cr[3]), .ZN(n123) );
  OAI22D0BWP12T30P140 U66 ( .A1(n47), .A2(n49), .B1(n19), .B2(n123), .ZN(n78)
         );
  AOI21D0BWP12T30P140 U67 ( .A1(sr[5]), .A2(n20), .B(i2c_al), .ZN(n21) );
  NR2D0BWP12T30P140 U68 ( .A1(n143), .A2(n21), .ZN(N114) );
  INVD0BWP12T30P140 U69 ( .I(cr[1]), .ZN(n22) );
  OAI22D0BWP12T30P140 U70 ( .A1(n51), .A2(n49), .B1(n48), .B2(n22), .ZN(n72)
         );
  INVD0BWP12T30P140 U71 ( .I(ctr[0]), .ZN(n23) );
  OAI22D0BWP12T30P140 U72 ( .A1(n57), .A2(n23), .B1(n45), .B2(n55), .ZN(n103)
         );
  NR2D0BWP12T30P140 U73 ( .A1(wb_adr_i[1]), .A2(n24), .ZN(n132) );
  ND2D0BWP12T30P140 U74 ( .A1(n132), .A2(n34), .ZN(n33) );
  AOI21D0BWP12T30P140 U75 ( .A1(prer[15]), .A2(n33), .B(n143), .ZN(n25) );
  OAI21D0BWP12T30P140 U76 ( .A1(n36), .A2(n33), .B(n25), .ZN(n94) );
  AOI21D0BWP12T30P140 U77 ( .A1(prer[14]), .A2(n33), .B(n143), .ZN(n26) );
  OAI21D0BWP12T30P140 U78 ( .A1(n56), .A2(n33), .B(n26), .ZN(n93) );
  AOI21D0BWP12T30P140 U79 ( .A1(prer[13]), .A2(n33), .B(n143), .ZN(n27) );
  OAI21D0BWP12T30P140 U80 ( .A1(n53), .A2(n33), .B(n27), .ZN(n92) );
  AOI21D0BWP12T30P140 U81 ( .A1(prer[12]), .A2(n33), .B(n143), .ZN(n28) );
  OAI21D0BWP12T30P140 U82 ( .A1(n46), .A2(n33), .B(n28), .ZN(n91) );
  AOI21D0BWP12T30P140 U83 ( .A1(prer[11]), .A2(n33), .B(n143), .ZN(n29) );
  OAI21D0BWP12T30P140 U84 ( .A1(n47), .A2(n33), .B(n29), .ZN(n90) );
  AOI21D0BWP12T30P140 U85 ( .A1(prer[10]), .A2(n33), .B(n143), .ZN(n30) );
  OAI21D0BWP12T30P140 U86 ( .A1(n50), .A2(n33), .B(n30), .ZN(n89) );
  INVD0BWP12T30P140 U87 ( .I(n142), .ZN(n151) );
  AOI21D0BWP12T30P140 U88 ( .A1(prer[9]), .A2(n33), .B(n151), .ZN(n31) );
  OAI21D0BWP12T30P140 U89 ( .A1(n51), .A2(n33), .B(n31), .ZN(n88) );
  AOI21D0BWP12T30P140 U90 ( .A1(prer[8]), .A2(n33), .B(n151), .ZN(n32) );
  OAI21D0BWP12T30P140 U91 ( .A1(n45), .A2(n33), .B(n32), .ZN(n87) );
  ND2D0BWP12T30P140 U92 ( .A1(n131), .A2(n34), .ZN(n44) );
  AOI21D0BWP12T30P140 U93 ( .A1(prer[7]), .A2(n44), .B(n151), .ZN(n35) );
  OAI21D0BWP12T30P140 U94 ( .A1(n36), .A2(n44), .B(n35), .ZN(n86) );
  AOI21D0BWP12T30P140 U95 ( .A1(prer[6]), .A2(n44), .B(n151), .ZN(n37) );
  OAI21D0BWP12T30P140 U96 ( .A1(n56), .A2(n44), .B(n37), .ZN(n85) );
  AOI21D0BWP12T30P140 U97 ( .A1(prer[5]), .A2(n44), .B(n151), .ZN(n38) );
  OAI21D0BWP12T30P140 U98 ( .A1(n53), .A2(n44), .B(n38), .ZN(n84) );
  AOI21D0BWP12T30P140 U99 ( .A1(prer[4]), .A2(n44), .B(n151), .ZN(n39) );
  OAI21D0BWP12T30P140 U100 ( .A1(n46), .A2(n44), .B(n39), .ZN(n83) );
  AOI21D0BWP12T30P140 U101 ( .A1(prer[3]), .A2(n44), .B(n151), .ZN(n40) );
  OAI21D0BWP12T30P140 U102 ( .A1(n47), .A2(n44), .B(n40), .ZN(n82) );
  AOI21D0BWP12T30P140 U103 ( .A1(prer[2]), .A2(n44), .B(n151), .ZN(n41) );
  OAI21D0BWP12T30P140 U104 ( .A1(n50), .A2(n44), .B(n41), .ZN(n81) );
  AOI21D0BWP12T30P140 U105 ( .A1(prer[1]), .A2(n44), .B(n151), .ZN(n42) );
  OAI21D0BWP12T30P140 U106 ( .A1(n51), .A2(n44), .B(n42), .ZN(n80) );
  AOI21D0BWP12T30P140 U107 ( .A1(prer[0]), .A2(n44), .B(n151), .ZN(n43) );
  OAI21D0BWP12T30P140 U108 ( .A1(n45), .A2(n44), .B(n43), .ZN(n79) );
  INVD0BWP12T30P140 U109 ( .I(ctr[4]), .ZN(n134) );
  OAI22D0BWP12T30P140 U110 ( .A1(n57), .A2(n134), .B1(n46), .B2(n55), .ZN(n107) );
  INVD0BWP12T30P140 U111 ( .I(ctr[3]), .ZN(n121) );
  OAI22D0BWP12T30P140 U112 ( .A1(n57), .A2(n121), .B1(n47), .B2(n55), .ZN(n106) );
  INVD0BWP12T30P140 U113 ( .I(ctr[2]), .ZN(n115) );
  OAI22D0BWP12T30P140 U114 ( .A1(n57), .A2(n115), .B1(n50), .B2(n55), .ZN(n105) );
  INVD0BWP12T30P140 U115 ( .I(cr[2]), .ZN(n117) );
  OAI22D0BWP12T30P140 U116 ( .A1(n50), .A2(n49), .B1(n48), .B2(n117), .ZN(n73)
         );
  INVD0BWP12T30P140 U117 ( .I(ctr[1]), .ZN(n52) );
  OAI22D0BWP12T30P140 U118 ( .A1(n57), .A2(n52), .B1(n51), .B2(n55), .ZN(n104)
         );
  INVD0BWP12T30P140 U119 ( .I(ctr[5]), .ZN(n54) );
  OAI22D0BWP12T30P140 U120 ( .A1(n57), .A2(n54), .B1(n53), .B2(n55), .ZN(n108)
         );
  INVD0BWP12T30P140 U121 ( .I(ctr[6]), .ZN(n147) );
  OAI22D0BWP12T30P140 U122 ( .A1(n57), .A2(n147), .B1(n56), .B2(n55), .ZN(n109) );
  INVD0BWP12T30P140 U123 ( .I(n135), .ZN(n126) );
  AOI22D0BWP12T30P140 U124 ( .A1(n126), .A2(ctr[0]), .B1(n131), .B2(prer[0]), 
        .ZN(n61) );
  INVD0BWP12T30P140 U125 ( .I(wb_adr_i[2]), .ZN(n129) );
  INVD0BWP12T30P140 U126 ( .I(n58), .ZN(n137) );
  AOI22D0BWP12T30P140 U127 ( .A1(n137), .A2(rxr[0]), .B1(n132), .B2(prer[8]), 
        .ZN(n60) );
  AOI222D0BWP12T30P140 U128 ( .A1(n126), .A2(cr[0]), .B1(txr[0]), .B2(n132), 
        .C1(n131), .C2(sr_0), .ZN(n59) );
  AOI32D0BWP12T30P140 U129 ( .A1(n61), .A2(n129), .A3(n60), .B1(wb_adr_i[2]), 
        .B2(n59), .ZN(N43) );
  AOI22D0BWP12T30P140 U130 ( .A1(n126), .A2(ctr[1]), .B1(n131), .B2(prer[1]), 
        .ZN(n64) );
  AOI22D0BWP12T30P140 U131 ( .A1(n137), .A2(rxr[1]), .B1(n132), .B2(prer[9]), 
        .ZN(n63) );
  AOI222D0BWP12T30P140 U132 ( .A1(n126), .A2(cr[1]), .B1(txr[1]), .B2(n132), 
        .C1(n131), .C2(sr_1), .ZN(n62) );
  AOI32D0BWP12T30P140 U133 ( .A1(n64), .A2(n129), .A3(n63), .B1(wb_adr_i[2]), 
        .B2(n62), .ZN(N44) );
  AOI22D0BWP12T30P140 U134 ( .A1(n132), .A2(prer[15]), .B1(n131), .B2(prer[7]), 
        .ZN(n67) );
  AOI22D0BWP12T30P140 U135 ( .A1(n126), .A2(ctr[7]), .B1(n137), .B2(rxr[7]), 
        .ZN(n66) );
  AOI222D0BWP12T30P140 U136 ( .A1(n126), .A2(cr[7]), .B1(txr[7]), .B2(n132), 
        .C1(n131), .C2(sr[7]), .ZN(n65) );
  AOI32D0BWP12T30P140 U137 ( .A1(n67), .A2(n129), .A3(n66), .B1(wb_adr_i[2]), 
        .B2(n65), .ZN(N50) );
  AOI22D0BWP12T30P140 U138 ( .A1(n126), .A2(ctr[5]), .B1(n131), .B2(prer[5]), 
        .ZN(n70) );
  AOI22D0BWP12T30P140 U139 ( .A1(n137), .A2(rxr[5]), .B1(n132), .B2(prer[13]), 
        .ZN(n69) );
  AOI222D0BWP12T30P140 U140 ( .A1(n126), .A2(cr[5]), .B1(txr[5]), .B2(n132), 
        .C1(n131), .C2(sr[5]), .ZN(n68) );
  AOI32D0BWP12T30P140 U141 ( .A1(n70), .A2(n129), .A3(n69), .B1(wb_adr_i[2]), 
        .B2(n68), .ZN(N48) );
  ND2D0BWP12T30P140 U142 ( .A1(wb_adr_i[2]), .A2(n132), .ZN(n141) );
  AOI22D0BWP12T30P140 U143 ( .A1(n132), .A2(prer[10]), .B1(n131), .B2(prer[2]), 
        .ZN(n114) );
  OAI21D0BWP12T30P140 U144 ( .A1(n135), .A2(n115), .B(n114), .ZN(n116) );
  AOI21D0BWP12T30P140 U145 ( .A1(n137), .A2(rxr[2]), .B(n116), .ZN(n118) );
  ND2D0BWP12T30P140 U146 ( .A1(wb_adr_i[2]), .A2(n126), .ZN(n138) );
  OAI222D0BWP12T30P140 U147 ( .A1(n141), .A2(n119), .B1(wb_adr_i[2]), .B2(n118), .C1(n138), .C2(n117), .ZN(n113) );
  AOI22D0BWP12T30P140 U148 ( .A1(n132), .A2(prer[11]), .B1(n131), .B2(prer[3]), 
        .ZN(n120) );
  OAI21D0BWP12T30P140 U149 ( .A1(n135), .A2(n121), .B(n120), .ZN(n122) );
  AOI21D0BWP12T30P140 U150 ( .A1(n137), .A2(rxr[3]), .B(n122), .ZN(n124) );
  OAI222D0BWP12T30P140 U151 ( .A1(n141), .A2(n125), .B1(wb_adr_i[2]), .B2(n124), .C1(n138), .C2(n123), .ZN(n112) );
  AOI22D0BWP12T30P140 U152 ( .A1(n132), .A2(prer[14]), .B1(n131), .B2(prer[6]), 
        .ZN(n130) );
  AOI22D0BWP12T30P140 U153 ( .A1(n126), .A2(ctr[6]), .B1(n137), .B2(rxr[6]), 
        .ZN(n128) );
  AOI222D0BWP12T30P140 U154 ( .A1(n126), .A2(cr[6]), .B1(txr[6]), .B2(n132), 
        .C1(n131), .C2(sr[6]), .ZN(n127) );
  AOI32D0BWP12T30P140 U155 ( .A1(n130), .A2(n129), .A3(n128), .B1(wb_adr_i[2]), 
        .B2(n127), .ZN(N49) );
  AOI22D0BWP12T30P140 U156 ( .A1(n132), .A2(prer[12]), .B1(n131), .B2(prer[4]), 
        .ZN(n133) );
  OAI21D0BWP12T30P140 U157 ( .A1(n135), .A2(n134), .B(n133), .ZN(n136) );
  AOI21D0BWP12T30P140 U158 ( .A1(n137), .A2(rxr[4]), .B(n136), .ZN(n139) );
  OAI222D0BWP12T30P140 U159 ( .A1(n141), .A2(n140), .B1(wb_adr_i[2]), .B2(n139), .C1(n138), .C2(n145), .ZN(n111) );
  AN2D0BWP12T30P140 U160 ( .A1(irxack), .A2(n142), .Z(N115) );
  AOI21D0BWP12T30P140 U161 ( .A1(n145), .A2(n144), .B(n143), .ZN(N116) );
  CKBD0BWP12T30P140 U162 ( .I(wb_clk_i), .Z(n154) );
  CKBD0BWP12T30P140 U163 ( .I(wb_clk_i), .Z(n153) );
  CKBD0BWP12T30P140 U164 ( .I(wb_clk_i), .Z(n152) );
  CKBD0BWP12T30P140 U165 ( .I(arst_i), .Z(n148) );
  CKBD0BWP12T30P140 U166 ( .I(arst_i), .Z(n149) );
  NR3D0BWP12T30P140 U167 ( .A1(n151), .A2(n147), .A3(n146), .ZN(N121) );
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
  wire   N25, N26, N27, N28, N29, N30, N31, N32, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115;

  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(N25), .CP(n115), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(N26), .CP(n114), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 myReg2_reg_5_ ( .D(n67), .CP(clk), .Q(myReg2[5]) );
  DFQD2BWP12T30P140 myReg2_reg_2_ ( .D(n64), .CP(clk), .Q(myReg2[2]) );
  DFQD2BWP12T30P140 myReg1_reg_6_ ( .D(n84), .CP(n115), .Q(myReg1[6]) );
  DFQD2BWP12T30P140 myReg1_reg_5_ ( .D(n83), .CP(n115), .Q(myReg1[5]) );
  DFQD2BWP12T30P140 myReg1_reg_4_ ( .D(n82), .CP(n115), .Q(myReg1[4]) );
  DFQD2BWP12T30P140 myReg1_reg_3_ ( .D(n81), .CP(n114), .Q(myReg1[3]) );
  DFQD2BWP12T30P140 myReg1_reg_1_ ( .D(n79), .CP(n114), .Q(myReg1[1]) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(N32), .CP(n114), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(N30), .CP(n115), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_4_ ( .D(N29), .CP(n115), .Q(dataOut[4]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(N28), .CP(n115), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(N27), .CP(n115), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 myReg0_reg_1_ ( .D(n71), .CP(n114), .Q(myReg0[1]) );
  DFQD2BWP12T30P140 myReg0_reg_4_ ( .D(n74), .CP(n114), .Q(myReg0[4]) );
  DFQD2BWP12T30P140 myReg2_reg_6_ ( .D(n68), .CP(n114), .Q(myReg2[6]) );
  DFQD2BWP12T30P140 myReg1_reg_7_ ( .D(n85), .CP(n115), .Q(myReg1[7]) );
  DFQD2BWP12T30P140 myReg1_reg_2_ ( .D(n80), .CP(n114), .Q(myReg1[2]) );
  DFQD2BWP12T30P140 myReg1_reg_0_ ( .D(n78), .CP(n114), .Q(myReg1[0]) );
  DFQD2BWP12T30P140 myReg2_reg_7_ ( .D(n69), .CP(n115), .Q(myReg2[7]) );
  DFQD2BWP12T30P140 myReg2_reg_4_ ( .D(n66), .CP(n115), .Q(myReg2[4]) );
  DFQD2BWP12T30P140 myReg2_reg_3_ ( .D(n65), .CP(n114), .Q(myReg2[3]) );
  DFQD2BWP12T30P140 myReg2_reg_1_ ( .D(n63), .CP(n115), .Q(myReg2[1]) );
  DFQD2BWP12T30P140 myReg3_reg_6_ ( .D(n60), .CP(n115), .Q(myReg3[6]) );
  DFQD2BWP12T30P140 myReg3_reg_2_ ( .D(n56), .CP(n115), .Q(myReg3[2]) );
  DFQD2BWP12T30P140 myReg0_reg_7_ ( .D(n77), .CP(n114), .Q(myReg0[7]) );
  DFQD2BWP12T30P140 myReg0_reg_6_ ( .D(n76), .CP(n114), .Q(myReg0[6]) );
  DFQD2BWP12T30P140 myReg0_reg_5_ ( .D(n75), .CP(n114), .Q(myReg0[5]) );
  DFQD2BWP12T30P140 myReg0_reg_3_ ( .D(n73), .CP(n114), .Q(myReg0[3]) );
  DFQD2BWP12T30P140 myReg0_reg_2_ ( .D(n72), .CP(n114), .Q(myReg0[2]) );
  DFQD2BWP12T30P140 myReg0_reg_0_ ( .D(n70), .CP(n114), .Q(myReg0[0]) );
  DFQD2BWP12T30P140 myReg3_reg_7_ ( .D(n61), .CP(n115), .Q(myReg3[7]) );
  DFQD2BWP12T30P140 myReg3_reg_5_ ( .D(n59), .CP(n115), .Q(myReg3[5]) );
  DFQD2BWP12T30P140 myReg3_reg_4_ ( .D(n58), .CP(n115), .Q(myReg3[4]) );
  DFQD2BWP12T30P140 myReg3_reg_3_ ( .D(n57), .CP(n115), .Q(myReg3[3]) );
  DFQD2BWP12T30P140 myReg3_reg_1_ ( .D(n55), .CP(n115), .Q(myReg3[1]) );
  DFQD2BWP12T30P140 myReg3_reg_0_ ( .D(n54), .CP(n114), .Q(myReg3[0]) );
  DFQD1BWP12T30P140 dataOut_reg_6_ ( .D(N31), .CP(n114), .Q(dataOut[6]) );
  DFQD1BWP12T30P140 myReg2_reg_0_ ( .D(n62), .CP(n114), .Q(myReg2[0]) );
  INVD0BWP12T30P140 U3 ( .I(addr[0]), .ZN(n87) );
  INVD0BWP12T30P140 U4 ( .I(addr[1]), .ZN(n89) );
  OR4D0BWP12T30P140 U5 ( .A1(addr[5]), .A2(addr[3]), .A3(addr[7]), .A4(addr[6]), .Z(n33) );
  NR2D0BWP12T30P140 U6 ( .A1(addr[4]), .A2(n33), .ZN(n35) );
  INR2D1BWP12T30P140 U7 ( .A1(n35), .B1(addr[2]), .ZN(n36) );
  ND2D0BWP12T30P140 U8 ( .A1(n89), .A2(n36), .ZN(n34) );
  NR2D0BWP12T30P140 U9 ( .A1(n87), .A2(n34), .ZN(n111) );
  INVD0BWP12T30P140 U10 ( .I(n111), .ZN(n86) );
  INVD0BWP12T30P140 U11 ( .I(myReg1[1]), .ZN(n41) );
  NR2D0BWP12T30P140 U12 ( .A1(addr[0]), .A2(n34), .ZN(n110) );
  AN2D0BWP12T30P140 U13 ( .A1(addr[2]), .A2(n35), .Z(n90) );
  AOI22D0BWP12T30P140 U14 ( .A1(myReg0[1]), .A2(n110), .B1(n90), .B2(n87), 
        .ZN(n39) );
  ND2D0BWP12T30P140 U15 ( .A1(n36), .A2(addr[1]), .ZN(n37) );
  NR2D0BWP12T30P140 U16 ( .A1(addr[0]), .A2(n37), .ZN(n109) );
  NR2D0BWP12T30P140 U17 ( .A1(n87), .A2(n37), .ZN(n108) );
  AOI22D0BWP12T30P140 U18 ( .A1(n109), .A2(myReg2[1]), .B1(n108), .B2(
        myReg3[1]), .ZN(n38) );
  OAI211D0BWP12T30P140 U19 ( .A1(n86), .A2(n41), .B(n39), .C(n38), .ZN(N26) );
  AN2D0BWP12T30P140 U20 ( .A1(n109), .A2(writeEn), .Z(n96) );
  INVD0BWP12T30P140 U21 ( .I(dataIn[5]), .ZN(n101) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n96), .A2(n101), .B1(myReg2[5]), .B2(n96), 
        .ZN(n67) );
  INVD0BWP12T30P140 U23 ( .I(dataIn[2]), .ZN(n99) );
  MAOI22D0BWP12T30P140 U24 ( .A1(n96), .A2(n99), .B1(myReg2[2]), .B2(n96), 
        .ZN(n64) );
  ND2D0BWP12T30P140 U25 ( .A1(n111), .A2(writeEn), .ZN(n40) );
  INVD0BWP12T30P140 U26 ( .I(n40), .ZN(n94) );
  INVD0BWP12T30P140 U27 ( .I(dataIn[6]), .ZN(n98) );
  INVD0BWP12T30P140 U28 ( .I(myReg1[6]), .ZN(n44) );
  AOI22D0BWP12T30P140 U29 ( .A1(n94), .A2(n98), .B1(n44), .B2(n40), .ZN(n84)
         );
  INVD0BWP12T30P140 U30 ( .I(myReg1[5]), .ZN(n47) );
  AOI22D0BWP12T30P140 U31 ( .A1(n94), .A2(n101), .B1(n47), .B2(n40), .ZN(n83)
         );
  INVD0BWP12T30P140 U32 ( .I(dataIn[4]), .ZN(n100) );
  INVD0BWP12T30P140 U33 ( .I(myReg1[4]), .ZN(n50) );
  AOI22D0BWP12T30P140 U34 ( .A1(n94), .A2(n100), .B1(n50), .B2(n40), .ZN(n82)
         );
  INVD0BWP12T30P140 U35 ( .I(dataIn[3]), .ZN(n97) );
  INVD0BWP12T30P140 U36 ( .I(myReg1[3]), .ZN(n53) );
  AOI22D0BWP12T30P140 U37 ( .A1(n94), .A2(n97), .B1(n53), .B2(n40), .ZN(n81)
         );
  INVD0BWP12T30P140 U38 ( .I(dataIn[1]), .ZN(n95) );
  AOI22D0BWP12T30P140 U39 ( .A1(n94), .A2(n95), .B1(n41), .B2(n40), .ZN(n79)
         );
  AN2D0BWP12T30P140 U40 ( .A1(n90), .A2(addr[1]), .Z(n88) );
  AOI21D0BWP12T30P140 U41 ( .A1(n109), .A2(myReg2[6]), .B(n88), .ZN(n43) );
  AOI22D0BWP12T30P140 U42 ( .A1(n108), .A2(myReg3[6]), .B1(n110), .B2(
        myReg0[6]), .ZN(n42) );
  OAI211D0BWP12T30P140 U43 ( .A1(n86), .A2(n44), .B(n43), .C(n42), .ZN(N31) );
  AN2D0BWP12T30P140 U44 ( .A1(n108), .A2(writeEn), .Z(n103) );
  INVD0BWP12T30P140 U45 ( .I(dataIn[0]), .ZN(n104) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n103), .A2(n104), .B1(myReg3[0]), .B2(n103), 
        .ZN(n54) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n103), .A2(n95), .B1(myReg3[1]), .B2(n103), 
        .ZN(n55) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n103), .A2(n97), .B1(myReg3[3]), .B2(n103), 
        .ZN(n57) );
  AOI22D0BWP12T30P140 U49 ( .A1(addr[0]), .A2(n90), .B1(n110), .B2(myReg0[5]), 
        .ZN(n46) );
  AOI22D0BWP12T30P140 U50 ( .A1(n109), .A2(myReg2[5]), .B1(n108), .B2(
        myReg3[5]), .ZN(n45) );
  OAI211D0BWP12T30P140 U51 ( .A1(n86), .A2(n47), .B(n46), .C(n45), .ZN(N30) );
  AOI21D0BWP12T30P140 U52 ( .A1(n110), .A2(myReg0[4]), .B(n90), .ZN(n49) );
  AOI22D0BWP12T30P140 U53 ( .A1(n109), .A2(myReg2[4]), .B1(n108), .B2(
        myReg3[4]), .ZN(n48) );
  OAI211D0BWP12T30P140 U54 ( .A1(n86), .A2(n50), .B(n49), .C(n48), .ZN(N29) );
  AOI22D0BWP12T30P140 U55 ( .A1(addr[0]), .A2(n88), .B1(n110), .B2(myReg0[3]), 
        .ZN(n52) );
  AOI22D0BWP12T30P140 U56 ( .A1(n109), .A2(myReg2[3]), .B1(n108), .B2(
        myReg3[3]), .ZN(n51) );
  OAI211D0BWP12T30P140 U57 ( .A1(n86), .A2(n53), .B(n52), .C(n51), .ZN(N28) );
  AOI32D0BWP12T30P140 U58 ( .A1(n90), .A2(addr[0]), .A3(n89), .B1(n88), .B2(
        n87), .ZN(n93) );
  AOI22D0BWP12T30P140 U59 ( .A1(n111), .A2(myReg1[2]), .B1(n109), .B2(
        myReg2[2]), .ZN(n92) );
  AOI22D0BWP12T30P140 U60 ( .A1(n108), .A2(myReg3[2]), .B1(n110), .B2(
        myReg0[2]), .ZN(n91) );
  ND3D0BWP12T30P140 U61 ( .A1(n93), .A2(n92), .A3(n91), .ZN(N27) );
  AN2D0BWP12T30P140 U62 ( .A1(n110), .A2(writeEn), .Z(n105) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n105), .A2(n95), .B1(myReg0[1]), .B2(n105), 
        .ZN(n71) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n105), .A2(n100), .B1(myReg0[4]), .B2(n105), 
        .ZN(n74) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n96), .A2(n98), .B1(myReg2[6]), .B2(n96), 
        .ZN(n68) );
  INVD0BWP12T30P140 U66 ( .I(dataIn[7]), .ZN(n102) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n94), .A2(n102), .B1(myReg1[7]), .B2(n94), 
        .ZN(n85) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n94), .A2(n99), .B1(myReg1[2]), .B2(n94), 
        .ZN(n80) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n94), .A2(n104), .B1(myReg1[0]), .B2(n94), 
        .ZN(n78) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n96), .A2(n102), .B1(myReg2[7]), .B2(n96), 
        .ZN(n69) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n96), .A2(n100), .B1(myReg2[4]), .B2(n96), 
        .ZN(n66) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n96), .A2(n97), .B1(myReg2[3]), .B2(n96), 
        .ZN(n65) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n96), .A2(n95), .B1(myReg2[1]), .B2(n96), 
        .ZN(n63) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n96), .A2(n104), .B1(myReg2[0]), .B2(n96), 
        .ZN(n62) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n103), .A2(n99), .B1(myReg3[2]), .B2(n103), 
        .ZN(n56) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n105), .A2(n102), .B1(myReg0[7]), .B2(n105), 
        .ZN(n77) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n105), .A2(n98), .B1(myReg0[6]), .B2(n105), 
        .ZN(n76) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n105), .A2(n101), .B1(myReg0[5]), .B2(n105), 
        .ZN(n75) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n105), .A2(n97), .B1(myReg0[3]), .B2(n105), 
        .ZN(n73) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n103), .A2(n98), .B1(myReg3[6]), .B2(n103), 
        .ZN(n60) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n105), .A2(n99), .B1(myReg0[2]), .B2(n105), 
        .ZN(n72) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n103), .A2(n100), .B1(myReg3[4]), .B2(n103), 
        .ZN(n58) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n103), .A2(n101), .B1(myReg3[5]), .B2(n103), 
        .ZN(n59) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n103), .A2(n102), .B1(myReg3[7]), .B2(n103), 
        .ZN(n61) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n105), .A2(n104), .B1(myReg0[0]), .B2(n105), 
        .ZN(n70) );
  CKBD0BWP12T30P140 U86 ( .I(clk), .Z(n115) );
  CKBD0BWP12T30P140 U87 ( .I(clk), .Z(n114) );
  AOI22D0BWP12T30P140 U88 ( .A1(n109), .A2(myReg2[0]), .B1(n108), .B2(
        myReg3[0]), .ZN(n107) );
  AOI22D0BWP12T30P140 U89 ( .A1(n111), .A2(myReg1[0]), .B1(n110), .B2(
        myReg0[0]), .ZN(n106) );
  ND2D0BWP12T30P140 U90 ( .A1(n107), .A2(n106), .ZN(N25) );
  AOI22D0BWP12T30P140 U91 ( .A1(n109), .A2(myReg2[7]), .B1(n108), .B2(
        myReg3[7]), .ZN(n113) );
  AOI22D0BWP12T30P140 U92 ( .A1(n111), .A2(myReg1[7]), .B1(n110), .B2(
        myReg0[7]), .ZN(n112) );
  ND2D0BWP12T30P140 U93 ( .A1(n113), .A2(n112), .ZN(N32) );
endmodule


module serialInterface ( clearStartStopDet, clk, dataIn, dataOut, regAddr, rst, 
        scl, sdaIn, sdaOut, startStopDetState, writeEn );
  input [7:0] dataIn;
  output [7:0] dataOut;
  output [7:0] regAddr;
  input [1:0] startStopDetState;
  input clk, rst, scl, sdaIn;
  output clearStartStopDet, sdaOut, writeEn;
  wire   n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204;
  wire   [15:0] CurrState_SISt;
  wire   [1:0] streamSt;
  wire   [7:0] txData;
  wire   [7:0] rxData;
  wire   [2:0] bitCnt;

  DFQD2BWP12T30P140 CurrState_SISt_reg_8_ ( .D(n162), .CP(n203), .Q(
        CurrState_SISt[8]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_11_ ( .D(n159), .CP(n203), .Q(
        CurrState_SISt[11]) );
  DFQD2BWP12T30P140 sdaOut_reg ( .D(n151), .CP(n204), .Q(sdaOut) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(n149), .CP(n204), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 txData_reg_1_ ( .D(n139), .CP(n202), .Q(txData[1]) );
  DFQD2BWP12T30P140 txData_reg_2_ ( .D(n138), .CP(n203), .Q(txData[2]) );
  DFQD2BWP12T30P140 txData_reg_3_ ( .D(n137), .CP(n202), .Q(txData[3]) );
  DFQD2BWP12T30P140 txData_reg_5_ ( .D(n135), .CP(n204), .Q(txData[5]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_4_ ( .D(n166), .CP(n202), .Q(
        CurrState_SISt[4]) );
  DFQD2BWP12T30P140 txData_reg_7_ ( .D(n141), .CP(n202), .Q(txData[7]) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n148), .CP(n203), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n147), .CP(n202), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n146), .CP(n204), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(n145), .CP(n203), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(n143), .CP(n204), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_6_ ( .D(n142), .CP(n204), .Q(dataOut[6]) );
  DFQD2BWP12T30P140 txData_reg_0_ ( .D(n140), .CP(n202), .Q(txData[0]) );
  DFQD2BWP12T30P140 txData_reg_6_ ( .D(n134), .CP(n203), .Q(txData[6]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_0_ ( .D(n170), .CP(n203), .Q(
        CurrState_SISt[0]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_6_ ( .D(n164), .CP(n202), .Q(
        CurrState_SISt[6]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_1_ ( .D(n169), .CP(n202), .Q(
        CurrState_SISt[1]) );
  DFQD2BWP12T30P140 regAddr_reg_7_ ( .D(n119), .CP(n204), .Q(regAddr[7]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_2_ ( .D(n168), .CP(n202), .Q(
        CurrState_SISt[2]) );
  DFQD2BWP12T30P140 rxData_reg_5_ ( .D(n128), .CP(n204), .Q(rxData[5]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_14_ ( .D(n156), .CP(n203), .Q(
        CurrState_SISt[14]) );
  DFQD2BWP12T30P140 clearStartStopDet_reg ( .D(n155), .CP(n202), .Q(
        clearStartStopDet) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_12_ ( .D(n158), .CP(n203), .Q(
        CurrState_SISt[12]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_5_ ( .D(n165), .CP(n202), .Q(
        CurrState_SISt[5]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_9_ ( .D(n161), .CP(n202), .Q(
        CurrState_SISt[9]) );
  DFQD2BWP12T30P140 rxData_reg_2_ ( .D(n131), .CP(n204), .Q(rxData[2]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_10_ ( .D(n160), .CP(n203), .Q(
        CurrState_SISt[10]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_7_ ( .D(n163), .CP(n203), .Q(
        CurrState_SISt[7]) );
  DFQD2BWP12T30P140 regAddr_reg_4_ ( .D(n122), .CP(clk), .Q(regAddr[4]) );
  DFQD2BWP12T30P140 rxData_reg_6_ ( .D(n127), .CP(n204), .Q(rxData[6]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_3_ ( .D(n167), .CP(n202), .Q(
        CurrState_SISt[3]) );
  DFQD2BWP12T30P140 regAddr_reg_6_ ( .D(n120), .CP(n203), .Q(regAddr[6]) );
  DFQD2BWP12T30P140 rxData_reg_4_ ( .D(n129), .CP(n204), .Q(rxData[4]) );
  DFQD2BWP12T30P140 streamSt_reg_0_ ( .D(n171), .CP(n203), .Q(streamSt[0]) );
  DFQD2BWP12T30P140 rxData_reg_3_ ( .D(n130), .CP(n204), .Q(rxData[3]) );
  DFQD2BWP12T30P140 regAddr_reg_5_ ( .D(n121), .CP(n202), .Q(regAddr[5]) );
  DFQD2BWP12T30P140 streamSt_reg_1_ ( .D(n172), .CP(n203), .Q(streamSt[1]) );
  DFQD2BWP12T30P140 bitCnt_reg_1_ ( .D(n153), .CP(n202), .Q(bitCnt[1]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_13_ ( .D(n157), .CP(n203), .Q(
        CurrState_SISt[13]) );
  DFQD2BWP12T30P140 bitCnt_reg_0_ ( .D(n152), .CP(n203), .Q(bitCnt[0]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_15_ ( .D(n173), .CP(n203), .Q(
        CurrState_SISt[15]) );
  DFQD2BWP12T30P140 regAddr_reg_2_ ( .D(n124), .CP(n203), .Q(regAddr[2]) );
  DFQD2BWP12T30P140 rxData_reg_1_ ( .D(n132), .CP(n204), .Q(rxData[1]) );
  DFQD2BWP12T30P140 regAddr_reg_3_ ( .D(n123), .CP(n204), .Q(regAddr[3]) );
  DFQD2BWP12T30P140 rxData_reg_0_ ( .D(n174), .CP(n204), .Q(rxData[0]) );
  DFQD2BWP12T30P140 writeEn_reg ( .D(n150), .CP(n204), .Q(writeEn) );
  DFQD2BWP12T30P140 regAddr_reg_1_ ( .D(n125), .CP(n202), .Q(regAddr[1]) );
  DFQD1BWP12T30P140 txData_reg_4_ ( .D(n136), .CP(clk), .Q(txData[4]) );
  DFQD1BWP12T30P140 dataOut_reg_4_ ( .D(n144), .CP(n202), .Q(dataOut[4]) );
  DFQD1BWP12T30P140 rxData_reg_7_ ( .D(n133), .CP(n204), .Q(rxData[7]) );
  DFQD1BWP12T30P140 bitCnt_reg_2_ ( .D(n154), .CP(n202), .Q(bitCnt[2]) );
  DFQD1BWP12T30P140 regAddr_reg_0_ ( .D(n126), .CP(n204), .Q(regAddr[0]) );
  INVD0BWP12T30P140 U3 ( .I(streamSt[1]), .ZN(n14) );
  INVD0BWP12T30P140 U4 ( .I(rst), .ZN(n196) );
  ND2D0BWP12T30P140 U5 ( .A1(CurrState_SISt[1]), .A2(n196), .ZN(n115) );
  AOI21D0BWP12T30P140 U6 ( .A1(streamSt[0]), .A2(n14), .B(n115), .ZN(n187) );
  NR3D0BWP12T30P140 U7 ( .A1(CurrState_SISt[15]), .A2(CurrState_SISt[10]), 
        .A3(CurrState_SISt[7]), .ZN(n1) );
  INVD0BWP12T30P140 U8 ( .I(CurrState_SISt[11]), .ZN(n183) );
  INVD0BWP12T30P140 U9 ( .I(CurrState_SISt[8]), .ZN(n188) );
  AOI21D0BWP12T30P140 U10 ( .A1(n183), .A2(n188), .B(rst), .ZN(n16) );
  OA21D0BWP12T30P140 U11 ( .A1(CurrState_SISt[3]), .A2(CurrState_SISt[6]), .B(
        n196), .Z(n5) );
  AOI211D0BWP12T30P140 U12 ( .A1(CurrState_SISt[13]), .A2(n196), .B(n16), .C(
        n5), .ZN(n194) );
  ND2D0BWP12T30P140 U13 ( .A1(CurrState_SISt[4]), .A2(n196), .ZN(n85) );
  OAI211D0BWP12T30P140 U14 ( .A1(rst), .A2(n1), .B(n194), .C(n85), .ZN(n111)
         );
  NR2D0BWP12T30P140 U15 ( .A1(CurrState_SISt[12]), .A2(CurrState_SISt[5]), 
        .ZN(n118) );
  INVD0BWP12T30P140 U16 ( .I(CurrState_SISt[2]), .ZN(n99) );
  AOI21D0BWP12T30P140 U17 ( .A1(n118), .A2(n99), .B(rst), .ZN(n112) );
  ND2D0BWP12T30P140 U18 ( .A1(CurrState_SISt[14]), .A2(n196), .ZN(n116) );
  NR2D0BWP12T30P140 U19 ( .A1(rst), .A2(CurrState_SISt[0]), .ZN(n179) );
  ND3D0BWP12T30P140 U20 ( .A1(bitCnt[0]), .A2(bitCnt[1]), .A3(bitCnt[2]), .ZN(
        n113) );
  INVD0BWP12T30P140 U21 ( .I(n113), .ZN(n39) );
  ND2D0BWP12T30P140 U22 ( .A1(n39), .A2(streamSt[1]), .ZN(n8) );
  ND2D0BWP12T30P140 U23 ( .A1(n196), .A2(CurrState_SISt[9]), .ZN(n101) );
  INVD0BWP12T30P140 U24 ( .I(n101), .ZN(n114) );
  OAI21D0BWP12T30P140 U25 ( .A1(streamSt[0]), .A2(n8), .B(n114), .ZN(n2) );
  OAI211D0BWP12T30P140 U26 ( .A1(writeEn), .A2(n116), .B(n179), .C(n2), .ZN(n3) );
  NR4D0BWP12T30P140 U27 ( .A1(n187), .A2(n111), .A3(n112), .A4(n3), .ZN(n103)
         );
  OAI21D0BWP12T30P140 U28 ( .A1(CurrState_SISt[1]), .A2(CurrState_SISt[14]), 
        .B(n103), .ZN(n108) );
  ND2D0BWP12T30P140 U29 ( .A1(CurrState_SISt[9]), .A2(n103), .ZN(n49) );
  INVD0BWP12T30P140 U30 ( .I(n49), .ZN(n104) );
  INVD0BWP12T30P140 U31 ( .I(regAddr[0]), .ZN(n107) );
  MAOI22D0BWP12T30P140 U32 ( .A1(rxData[0]), .A2(n104), .B1(n107), .B2(n103), 
        .ZN(n4) );
  OAI21D0BWP12T30P140 U33 ( .A1(regAddr[0]), .A2(n108), .B(n4), .ZN(n126) );
  INVD0BWP12T30P140 U34 ( .I(streamSt[0]), .ZN(n51) );
  NR2D0BWP12T30P140 U35 ( .A1(CurrState_SISt[13]), .A2(CurrState_SISt[15]), 
        .ZN(n6) );
  INVD0BWP12T30P140 U36 ( .I(n85), .ZN(n25) );
  INVD0BWP12T30P140 U37 ( .I(n115), .ZN(n28) );
  NR3D0BWP12T30P140 U38 ( .A1(n16), .A2(n25), .A3(n28), .ZN(n37) );
  AOI21D0BWP12T30P140 U39 ( .A1(CurrState_SISt[10]), .A2(n196), .B(n112), .ZN(
        n32) );
  INVD0BWP12T30P140 U40 ( .I(n32), .ZN(n11) );
  INR3D1BWP12T30P140 U41 ( .A1(n37), .B1(n5), .B2(n11), .ZN(n75) );
  ND2D0BWP12T30P140 U42 ( .A1(n196), .A2(CurrState_SISt[7]), .ZN(n76) );
  OAI211D0BWP12T30P140 U43 ( .A1(rst), .A2(n6), .B(n75), .C(n76), .ZN(n7) );
  AOI221D0BWP12T30P140 U44 ( .A1(n8), .A2(n114), .B1(n51), .B2(n114), .C(n7), 
        .ZN(n100) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n100), .A2(n101), .B1(writeEn), .B2(n100), 
        .ZN(n150) );
  INVD0BWP12T30P140 U46 ( .I(scl), .ZN(n31) );
  INVD0BWP12T30P140 U47 ( .I(startStopDetState[1]), .ZN(n12) );
  ND2D0BWP12T30P140 U48 ( .A1(n51), .A2(n14), .ZN(n175) );
  AOI211D0BWP12T30P140 U49 ( .A1(n12), .A2(n175), .B(scl), .C(
        startStopDetState[0]), .ZN(n192) );
  NR2D0BWP12T30P140 U50 ( .A1(n192), .A2(n76), .ZN(n74) );
  OAI31D0BWP12T30P140 U51 ( .A1(CurrState_SISt[3]), .A2(CurrState_SISt[13]), 
        .A3(CurrState_SISt[15]), .B(n196), .ZN(n9) );
  OAI211D0BWP12T30P140 U52 ( .A1(n31), .A2(n76), .B(n116), .C(n9), .ZN(n10) );
  AOI211D0BWP12T30P140 U53 ( .A1(startStopDetState[1]), .A2(n74), .B(n11), .C(
        n10), .ZN(n38) );
  ND2D0BWP12T30P140 U54 ( .A1(CurrState_SISt[6]), .A2(n196), .ZN(n95) );
  OAI211D0BWP12T30P140 U55 ( .A1(n12), .A2(n76), .B(n38), .C(n95), .ZN(n24) );
  ND2D0BWP12T30P140 U56 ( .A1(n101), .A2(n85), .ZN(n13) );
  AOI211D0BWP12T30P140 U57 ( .A1(n16), .A2(n31), .B(n24), .C(n13), .ZN(n15) );
  ND3D0BWP12T30P140 U58 ( .A1(n14), .A2(n28), .A3(streamSt[0]), .ZN(n84) );
  OAI211D0BWP12T30P140 U59 ( .A1(startStopDetState[0]), .A2(n76), .B(n15), .C(
        n84), .ZN(n19) );
  INVD0BWP12T30P140 U60 ( .I(n19), .ZN(n83) );
  ND2D0BWP12T30P140 U61 ( .A1(n16), .A2(n83), .ZN(n80) );
  INVD0BWP12T30P140 U62 ( .I(n80), .ZN(n66) );
  AO22D0BWP12T30P140 U63 ( .A1(sdaIn), .A2(n66), .B1(rxData[0]), .B2(n19), .Z(
        n174) );
  INVD0BWP12T30P140 U64 ( .I(n108), .ZN(n58) );
  AN3D0BWP12T30P140 U65 ( .A1(regAddr[1]), .A2(regAddr[0]), .A3(regAddr[2]), 
        .Z(n61) );
  ND2D0BWP12T30P140 U66 ( .A1(n58), .A2(n61), .ZN(n64) );
  OAI21D0BWP12T30P140 U67 ( .A1(n61), .A2(n108), .B(n103), .ZN(n17) );
  AOI22D0BWP12T30P140 U68 ( .A1(regAddr[3]), .A2(n17), .B1(n104), .B2(
        rxData[3]), .ZN(n18) );
  OAI21D0BWP12T30P140 U69 ( .A1(regAddr[3]), .A2(n64), .B(n18), .ZN(n123) );
  AO22D0BWP12T30P140 U70 ( .A1(n19), .A2(rxData[1]), .B1(n66), .B2(rxData[0]), 
        .Z(n132) );
  ND2D0BWP12T30P140 U71 ( .A1(regAddr[1]), .A2(regAddr[0]), .ZN(n22) );
  AOI32D0BWP12T30P140 U72 ( .A1(regAddr[1]), .A2(n103), .A3(regAddr[0]), .B1(
        n108), .B2(n103), .ZN(n20) );
  AOI22D0BWP12T30P140 U73 ( .A1(regAddr[2]), .A2(n20), .B1(n104), .B2(
        rxData[2]), .ZN(n21) );
  OAI31D0BWP12T30P140 U74 ( .A1(regAddr[2]), .A2(n108), .A3(n22), .B(n21), 
        .ZN(n124) );
  NR2D0BWP12T30P140 U75 ( .A1(rst), .A2(scl), .ZN(n23) );
  INVD0BWP12T30P140 U76 ( .I(n76), .ZN(n193) );
  AOI22D0BWP12T30P140 U77 ( .A1(CurrState_SISt[8]), .A2(n23), .B1(
        startStopDetState[0]), .B2(n193), .ZN(n27) );
  AOI211D0BWP12T30P140 U78 ( .A1(CurrState_SISt[11]), .A2(n196), .B(n187), .C(
        n24), .ZN(n26) );
  ND2D0BWP12T30P140 U79 ( .A1(n39), .A2(n114), .ZN(n79) );
  NR3D0BWP12T30P140 U80 ( .A1(bitCnt[0]), .A2(bitCnt[1]), .A3(bitCnt[2]), .ZN(
        n86) );
  ND2D0BWP12T30P140 U81 ( .A1(n25), .A2(n86), .ZN(n72) );
  ND4D0BWP12T30P140 U82 ( .A1(n27), .A2(n26), .A3(n79), .A4(n72), .ZN(n35) );
  INVD0BWP12T30P140 U83 ( .I(n35), .ZN(n198) );
  INVD0BWP12T30P140 U84 ( .I(bitCnt[0]), .ZN(n29) );
  ND3D0BWP12T30P140 U85 ( .A1(n76), .A2(n85), .A3(n101), .ZN(n34) );
  AOI21D0BWP12T30P140 U86 ( .A1(n29), .A2(n34), .B(n28), .ZN(n30) );
  AOI22D0BWP12T30P140 U87 ( .A1(n198), .A2(n30), .B1(n29), .B2(n35), .ZN(n152)
         );
  AOI32D0BWP12T30P140 U88 ( .A1(n32), .A2(scl), .A3(n76), .B1(n194), .B2(n31), 
        .ZN(n197) );
  INVD0BWP12T30P140 U89 ( .I(n197), .ZN(n185) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n116), .A2(n185), .B1(n185), .B2(
        CurrState_SISt[13]), .ZN(n157) );
  ND2D0BWP12T30P140 U91 ( .A1(bitCnt[0]), .A2(bitCnt[1]), .ZN(n33) );
  NR2D0BWP12T30P140 U92 ( .A1(n33), .A2(n35), .ZN(n200) );
  NR2D0BWP12T30P140 U93 ( .A1(n35), .A2(n34), .ZN(n201) );
  NR2D0BWP12T30P140 U94 ( .A1(bitCnt[2]), .A2(n200), .ZN(n36) );
  AOI211D0BWP12T30P140 U95 ( .A1(bitCnt[2]), .A2(n200), .B(n201), .C(n36), 
        .ZN(n154) );
  INVD0BWP12T30P140 U96 ( .I(startStopDetState[0]), .ZN(n42) );
  AOI32D0BWP12T30P140 U97 ( .A1(scl), .A2(n37), .A3(sdaIn), .B1(n95), .B2(n37), 
        .ZN(n41) );
  AOI32D0BWP12T30P140 U98 ( .A1(n39), .A2(n38), .A3(n51), .B1(n101), .B2(n38), 
        .ZN(n40) );
  AOI211D0BWP12T30P140 U99 ( .A1(n74), .A2(n42), .B(n41), .C(n40), .ZN(n52) );
  INVD0BWP12T30P140 U100 ( .I(rxData[2]), .ZN(n67) );
  ND4D0BWP12T30P140 U101 ( .A1(rxData[4]), .A2(rxData[3]), .A3(rxData[5]), 
        .A4(n67), .ZN(n43) );
  NR3D0BWP12T30P140 U102 ( .A1(startStopDetState[1]), .A2(rxData[1]), .A3(n43), 
        .ZN(n44) );
  INVD0BWP12T30P140 U103 ( .I(rxData[7]), .ZN(n71) );
  ND4D0BWP12T30P140 U104 ( .A1(rxData[6]), .A2(startStopDetState[0]), .A3(n44), 
        .A4(n71), .ZN(n50) );
  NR2D0BWP12T30P140 U105 ( .A1(rxData[0]), .A2(n50), .ZN(n45) );
  AOI21D0BWP12T30P140 U106 ( .A1(n45), .A2(n52), .B(streamSt[1]), .ZN(n46) );
  AOI21D0BWP12T30P140 U107 ( .A1(n101), .A2(n52), .B(n46), .ZN(n172) );
  INVD0BWP12T30P140 U108 ( .I(rxData[5]), .ZN(n82) );
  ND3D0BWP12T30P140 U109 ( .A1(n61), .A2(regAddr[4]), .A3(regAddr[3]), .ZN(n47) );
  IOA21D0BWP12T30P140 U110 ( .A1(n47), .A2(n58), .B(n103), .ZN(n56) );
  NR2D0BWP12T30P140 U111 ( .A1(n108), .A2(n47), .ZN(n59) );
  INVD0BWP12T30P140 U112 ( .I(regAddr[5]), .ZN(n57) );
  AOI22D0BWP12T30P140 U113 ( .A1(regAddr[5]), .A2(n56), .B1(n59), .B2(n57), 
        .ZN(n48) );
  OAI21D0BWP12T30P140 U114 ( .A1(n49), .A2(n82), .B(n48), .ZN(n121) );
  INVD0BWP12T30P140 U115 ( .I(rxData[3]), .ZN(n55) );
  OAI22D0BWP12T30P140 U116 ( .A1(n83), .A2(n55), .B1(n67), .B2(n80), .ZN(n130)
         );
  INVD0BWP12T30P140 U117 ( .I(n52), .ZN(n54) );
  INVD0BWP12T30P140 U118 ( .I(n50), .ZN(n177) );
  AOI21D0BWP12T30P140 U119 ( .A1(rxData[0]), .A2(n177), .B(streamSt[1]), .ZN(
        n53) );
  OAI32D0BWP12T30P140 U120 ( .A1(n54), .A2(n53), .A3(n101), .B1(n52), .B2(n51), 
        .ZN(n171) );
  INVD0BWP12T30P140 U121 ( .I(rxData[4]), .ZN(n81) );
  OAI22D0BWP12T30P140 U122 ( .A1(n83), .A2(n81), .B1(n55), .B2(n80), .ZN(n129)
         );
  AOI21D0BWP12T30P140 U123 ( .A1(n58), .A2(n57), .B(n56), .ZN(n88) );
  INVD0BWP12T30P140 U124 ( .I(regAddr[6]), .ZN(n92) );
  ND2D0BWP12T30P140 U125 ( .A1(regAddr[5]), .A2(n59), .ZN(n91) );
  MAOI22D0BWP12T30P140 U126 ( .A1(rxData[6]), .A2(n104), .B1(regAddr[6]), .B2(
        n91), .ZN(n60) );
  OAI21D0BWP12T30P140 U127 ( .A1(n88), .A2(n92), .B(n60), .ZN(n120) );
  ND2D0BWP12T30P140 U128 ( .A1(n196), .A2(n185), .ZN(n68) );
  INVD0BWP12T30P140 U129 ( .I(n68), .ZN(n102) );
  AO22D0BWP12T30P140 U130 ( .A1(CurrState_SISt[2]), .A2(n102), .B1(
        CurrState_SISt[3]), .B2(n197), .Z(n167) );
  INVD0BWP12T30P140 U131 ( .I(rxData[6]), .ZN(n70) );
  OAI22D0BWP12T30P140 U132 ( .A1(n83), .A2(n70), .B1(n82), .B2(n80), .ZN(n127)
         );
  INVD0BWP12T30P140 U133 ( .I(regAddr[3]), .ZN(n65) );
  AOI32D0BWP12T30P140 U134 ( .A1(n61), .A2(n103), .A3(regAddr[3]), .B1(n108), 
        .B2(n103), .ZN(n62) );
  AOI22D0BWP12T30P140 U135 ( .A1(regAddr[4]), .A2(n62), .B1(n104), .B2(
        rxData[4]), .ZN(n63) );
  OAI31D0BWP12T30P140 U136 ( .A1(regAddr[4]), .A2(n65), .A3(n64), .B(n63), 
        .ZN(n122) );
  MOAI22D0BWP12T30P140 U137 ( .A1(n188), .A2(n68), .B1(CurrState_SISt[7]), 
        .B2(n197), .ZN(n163) );
  INVD0BWP12T30P140 U138 ( .I(CurrState_SISt[10]), .ZN(n69) );
  OAI22D0BWP12T30P140 U139 ( .A1(n183), .A2(n68), .B1(n69), .B2(n185), .ZN(
        n160) );
  MOAI22D0BWP12T30P140 U140 ( .A1(n83), .A2(n67), .B1(rxData[1]), .B2(n66), 
        .ZN(n131) );
  INVD0BWP12T30P140 U141 ( .I(CurrState_SISt[9]), .ZN(n176) );
  OAI22D0BWP12T30P140 U142 ( .A1(n176), .A2(n185), .B1(n69), .B2(n68), .ZN(
        n161) );
  OAI22D0BWP12T30P140 U143 ( .A1(n83), .A2(n71), .B1(n70), .B2(n80), .ZN(n133)
         );
  MAOI22D0BWP12T30P140 U144 ( .A1(n72), .A2(n185), .B1(n185), .B2(
        CurrState_SISt[5]), .ZN(n165) );
  ND2D0BWP12T30P140 U145 ( .A1(CurrState_SISt[13]), .A2(n196), .ZN(n73) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n73), .A2(n185), .B1(n185), .B2(
        CurrState_SISt[12]), .ZN(n158) );
  INVD0BWP12T30P140 U147 ( .I(n74), .ZN(n186) );
  ND3D0BWP12T30P140 U148 ( .A1(n186), .A2(n101), .A3(n75), .ZN(n78) );
  AOI21D0BWP12T30P140 U149 ( .A1(n76), .A2(n116), .B(n78), .ZN(n77) );
  AO21D0BWP12T30P140 U150 ( .A1(n78), .A2(clearStartStopDet), .B(n77), .Z(n155) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n79), .A2(n185), .B1(n185), .B2(
        CurrState_SISt[14]), .ZN(n156) );
  OAI22D0BWP12T30P140 U152 ( .A1(n83), .A2(n82), .B1(n81), .B2(n80), .ZN(n128)
         );
  OA21D0BWP12T30P140 U153 ( .A1(n86), .A2(n85), .B(n84), .Z(n87) );
  AOI22D0BWP12T30P140 U154 ( .A1(n197), .A2(n99), .B1(n87), .B2(n185), .ZN(
        n168) );
  OAI21D0BWP12T30P140 U155 ( .A1(regAddr[6]), .A2(n108), .B(n88), .ZN(n89) );
  AOI22D0BWP12T30P140 U156 ( .A1(rxData[7]), .A2(n104), .B1(regAddr[7]), .B2(
        n89), .ZN(n90) );
  OAI31D0BWP12T30P140 U157 ( .A1(regAddr[7]), .A2(n92), .A3(n91), .B(n90), 
        .ZN(n119) );
  OAI31D0BWP12T30P140 U158 ( .A1(CurrState_SISt[15]), .A2(CurrState_SISt[0]), 
        .A3(CurrState_SISt[12]), .B(n102), .ZN(n94) );
  ND2D0BWP12T30P140 U159 ( .A1(n197), .A2(CurrState_SISt[1]), .ZN(n93) );
  OAI211D0BWP12T30P140 U160 ( .A1(n197), .A2(n95), .B(n94), .C(n93), .ZN(n169)
         );
  AO22D0BWP12T30P140 U161 ( .A1(CurrState_SISt[5]), .A2(n102), .B1(
        CurrState_SISt[6]), .B2(n197), .Z(n164) );
  NR2D0BWP12T30P140 U162 ( .A1(rst), .A2(n99), .ZN(n97) );
  NR2D0BWP12T30P140 U163 ( .A1(rst), .A2(n118), .ZN(n96) );
  AOI211D0BWP12T30P140 U164 ( .A1(n97), .A2(scl), .B(n187), .C(n96), .ZN(n98)
         );
  IND4D1BWP12T30P140 U165 ( .A1(n111), .B1(n98), .B2(n101), .B3(n116), .ZN(
        n191) );
  NR2D0BWP12T30P140 U166 ( .A1(n115), .A2(n191), .ZN(n190) );
  NR3D0BWP12T30P140 U167 ( .A1(rst), .A2(n99), .A3(n191), .ZN(n189) );
  AO222D0BWP12T30P140 U168 ( .A1(n191), .A2(txData[6]), .B1(n190), .B2(
        dataIn[6]), .C1(txData[5]), .C2(n189), .Z(n134) );
  AO22D0BWP12T30P140 U169 ( .A1(dataIn[0]), .A2(n190), .B1(txData[0]), .B2(
        n191), .Z(n140) );
  ND2D0BWP12T30P140 U170 ( .A1(n100), .A2(n116), .ZN(n110) );
  NR2D0BWP12T30P140 U171 ( .A1(n101), .A2(n110), .ZN(n109) );
  AO22D0BWP12T30P140 U172 ( .A1(rxData[6]), .A2(n109), .B1(dataOut[6]), .B2(
        n110), .Z(n142) );
  AO22D0BWP12T30P140 U173 ( .A1(rxData[5]), .A2(n109), .B1(dataOut[5]), .B2(
        n110), .Z(n143) );
  AO22D0BWP12T30P140 U174 ( .A1(rxData[4]), .A2(n109), .B1(dataOut[4]), .B2(
        n110), .Z(n144) );
  AO22D0BWP12T30P140 U175 ( .A1(rxData[3]), .A2(n109), .B1(dataOut[3]), .B2(
        n110), .Z(n145) );
  AO22D0BWP12T30P140 U176 ( .A1(rxData[2]), .A2(n109), .B1(dataOut[2]), .B2(
        n110), .Z(n146) );
  AO22D0BWP12T30P140 U177 ( .A1(rxData[1]), .A2(n109), .B1(dataOut[1]), .B2(
        n110), .Z(n147) );
  AO22D0BWP12T30P140 U178 ( .A1(rxData[0]), .A2(n109), .B1(dataOut[0]), .B2(
        n110), .Z(n148) );
  AO222D0BWP12T30P140 U179 ( .A1(n191), .A2(txData[7]), .B1(n190), .B2(
        dataIn[7]), .C1(n189), .C2(txData[6]), .Z(n141) );
  AO22D0BWP12T30P140 U180 ( .A1(CurrState_SISt[3]), .A2(n102), .B1(
        CurrState_SISt[4]), .B2(n197), .Z(n166) );
  AO222D0BWP12T30P140 U181 ( .A1(n191), .A2(txData[5]), .B1(n190), .B2(
        dataIn[5]), .C1(txData[4]), .C2(n189), .Z(n135) );
  AO222D0BWP12T30P140 U182 ( .A1(n191), .A2(txData[3]), .B1(n190), .B2(
        dataIn[3]), .C1(txData[2]), .C2(n189), .Z(n137) );
  AO222D0BWP12T30P140 U183 ( .A1(n191), .A2(txData[2]), .B1(n190), .B2(
        dataIn[2]), .C1(txData[1]), .C2(n189), .Z(n138) );
  OAI21D0BWP12T30P140 U184 ( .A1(regAddr[0]), .A2(n108), .B(n103), .ZN(n105)
         );
  AOI22D0BWP12T30P140 U185 ( .A1(regAddr[1]), .A2(n105), .B1(n104), .B2(
        rxData[1]), .ZN(n106) );
  OAI31D0BWP12T30P140 U186 ( .A1(regAddr[1]), .A2(n108), .A3(n107), .B(n106), 
        .ZN(n125) );
  AO222D0BWP12T30P140 U187 ( .A1(n191), .A2(txData[1]), .B1(n189), .B2(
        txData[0]), .C1(dataIn[1]), .C2(n190), .Z(n139) );
  AO22D0BWP12T30P140 U188 ( .A1(dataOut[7]), .A2(n110), .B1(rxData[7]), .B2(
        n109), .Z(n149) );
  AOI21D0BWP12T30P140 U189 ( .A1(scl), .A2(n112), .B(n111), .ZN(n117) );
  ND2D0BWP12T30P140 U190 ( .A1(n114), .A2(n113), .ZN(n184) );
  ND4D0BWP12T30P140 U191 ( .A1(n117), .A2(n116), .A3(n115), .A4(n184), .ZN(
        n182) );
  OAI31D0BWP12T30P140 U192 ( .A1(n177), .A2(n176), .A3(n175), .B(n118), .ZN(
        n178) );
  AOI21D0BWP12T30P140 U193 ( .A1(CurrState_SISt[2]), .A2(txData[7]), .B(n178), 
        .ZN(n180) );
  AOI21D0BWP12T30P140 U194 ( .A1(n180), .A2(n179), .B(n182), .ZN(n181) );
  AO21D0BWP12T30P140 U195 ( .A1(n182), .A2(sdaOut), .B(n181), .Z(n151) );
  AOI32D0BWP12T30P140 U196 ( .A1(n186), .A2(n185), .A3(n184), .B1(n197), .B2(
        n183), .ZN(n159) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n197), .A2(n188), .B1(n187), .B2(n197), .ZN(
        n162) );
  AO222D0BWP12T30P140 U198 ( .A1(n191), .A2(txData[4]), .B1(n190), .B2(
        dataIn[4]), .C1(txData[3]), .C2(n189), .Z(n136) );
  CKBD0BWP12T30P140 U199 ( .I(clk), .Z(n203) );
  CKBD0BWP12T30P140 U200 ( .I(clk), .Z(n202) );
  CKBD0BWP12T30P140 U201 ( .I(clk), .Z(n204) );
  ND3D0BWP12T30P140 U202 ( .A1(n194), .A2(n193), .A3(n192), .ZN(n195) );
  IOA21D0BWP12T30P140 U203 ( .A1(n197), .A2(CurrState_SISt[15]), .B(n195), 
        .ZN(n173) );
  IOA21D0BWP12T30P140 U204 ( .A1(CurrState_SISt[0]), .A2(n197), .B(n196), .ZN(
        n170) );
  AOI21D0BWP12T30P140 U205 ( .A1(bitCnt[0]), .A2(n198), .B(bitCnt[1]), .ZN(
        n199) );
  NR3D0BWP12T30P140 U206 ( .A1(n201), .A2(n200), .A3(n199), .ZN(n153) );
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
  wire   n_Logic0_, sdaOut, sdaDeb, sclDeb, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         startEdgeDet, clearStartStopDet, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N78, writeEn, n_0_net_, n3, n27,
         n28, n29, n30, n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [9:0] sdaPipe;
  wire   [9:0] sclPipe;
  wire   [1:0] rstPipe;
  wire   [3:0] sdaDelayed;
  wire   [9:0] sclDelayed;
  wire   [1:0] startStopDetState;
  wire   [7:0] regAddr;
  wire   [7:0] dataToRegIF;
  wire   [7:0] dataFromRegIF;

  registerInterface u_registerInterface ( .clk(n63), .addr(regAddr), .dataIn(
        dataToRegIF), .writeEn(writeEn), .dataOut(dataFromRegIF), .myReg0(
        myReg0), .myReg1(myReg1), .myReg2(myReg2), .myReg3(myReg3), .myReg4({
        n_Logic0_, n_Logic0_, n_Logic0_, n28, n_Logic0_, n_Logic0_, n28, 
        n_Logic0_}), .myReg5({n_Logic0_, n_Logic0_, n28, n28, n_Logic0_, n28, 
        n_Logic0_, n_Logic0_}), .myReg6({n_Logic0_, n28, n_Logic0_, n28, 
        n_Logic0_, n28, n28, n_Logic0_}), .myReg7({n_Logic0_, n28, n28, n28, 
        n28, n_Logic0_, n_Logic0_, n_Logic0_}) );
  serialInterface u_serialInterface ( .clearStartStopDet(clearStartStopDet), 
        .clk(n63), .dataIn(dataFromRegIF), .dataOut(dataToRegIF), .regAddr(
        regAddr), .rst(n_0_net_), .scl(sclDelayed[9]), .sdaIn(sdaDeb), 
        .sdaOut(sdaOut), .startStopDetState(startStopDetState), .writeEn(
        writeEn) );
  OR2D0BWP12T30P140 U59 ( .A1(sda), .A2(rst), .Z(N25) );
  DFQD2BWP12T30P140 sclPipe_reg_2_ ( .D(N39), .CP(clk), .Q(sclPipe[2]) );
  DFQD2BWP12T30P140 sclPipe_reg_3_ ( .D(N40), .CP(clk), .Q(sclPipe[3]) );
  DFQD2BWP12T30P140 sclPipe_reg_4_ ( .D(N41), .CP(clk), .Q(sclPipe[4]) );
  DFQD2BWP12T30P140 sclPipe_reg_5_ ( .D(N42), .CP(clk), .Q(sclPipe[5]) );
  DFQD2BWP12T30P140 sclPipe_reg_0_ ( .D(N37), .CP(clk), .Q(sclPipe[0]) );
  DFQD2BWP12T30P140 sclPipe_reg_9_ ( .D(N46), .CP(clk), .Q(sclPipe[9]) );
  DFQD2BWP12T30P140 sclPipe_reg_8_ ( .D(N45), .CP(clk), .Q(sclPipe[8]) );
  DFQD2BWP12T30P140 sclPipe_reg_6_ ( .D(N43), .CP(clk), .Q(sclPipe[6]) );
  DFQD2BWP12T30P140 sclPipe_reg_1_ ( .D(N38), .CP(clk), .Q(sclPipe[1]) );
  DFQD2BWP12T30P140 sclPipe_reg_7_ ( .D(N44), .CP(clk), .Q(sclPipe[7]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_0_ ( .D(N71), .CP(n63), .Q(sdaDelayed[0])
         );
  DFQD2BWP12T30P140 sdaDelayed_reg_1_ ( .D(N72), .CP(n63), .Q(sdaDelayed[1])
         );
  DFQD2BWP12T30P140 startEdgeDet_reg ( .D(N78), .CP(n63), .Q(startEdgeDet) );
  DFQD2BWP12T30P140 sdaPipe_reg_9_ ( .D(N34), .CP(n63), .Q(sdaPipe[9]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_3_ ( .D(N74), .CP(n63), .Q(sdaDelayed[3])
         );
  DFQD2BWP12T30P140 sdaPipe_reg_2_ ( .D(N27), .CP(n64), .Q(sdaPipe[2]) );
  DFQD2BWP12T30P140 sdaPipe_reg_3_ ( .D(N28), .CP(n64), .Q(sdaPipe[3]) );
  DFQD2BWP12T30P140 sdaPipe_reg_4_ ( .D(N29), .CP(n64), .Q(sdaPipe[4]) );
  DFQD2BWP12T30P140 sdaPipe_reg_5_ ( .D(N30), .CP(n64), .Q(sdaPipe[5]) );
  DFQD2BWP12T30P140 sclDelayed_reg_0_ ( .D(N61), .CP(n64), .Q(sclDelayed[0])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_1_ ( .D(N62), .CP(n64), .Q(sclDelayed[1])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_2_ ( .D(N63), .CP(n64), .Q(sclDelayed[2])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_3_ ( .D(N64), .CP(n64), .Q(sclDelayed[3])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_4_ ( .D(N65), .CP(n64), .Q(sclDelayed[4])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_6_ ( .D(N67), .CP(n64), .Q(sclDelayed[6])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_7_ ( .D(N68), .CP(n64), .Q(sclDelayed[7])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_8_ ( .D(N69), .CP(n64), .Q(sclDelayed[8])
         );
  DFQD2BWP12T30P140 sdaPipe_reg_0_ ( .D(N25), .CP(n64), .Q(sdaPipe[0]) );
  BUFTD4BWP12T30P140 sda_tri ( .I(n_Logic0_), .OE(n3), .Z(sda) );
  DFQD2BWP12T30P140 sdaPipe_reg_8_ ( .D(N33), .CP(n63), .Q(sdaPipe[8]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_2_ ( .D(N73), .CP(n63), .Q(sdaDelayed[2])
         );
  DFQD2BWP12T30P140 sdaDeb_reg ( .D(n27), .CP(n63), .Q(sdaDeb) );
  DFQD2BWP12T30P140 startStopDetState_reg_1_ ( .D(n30), .CP(n63), .Q(
        startStopDetState[1]) );
  DFQD2BWP12T30P140 sdaPipe_reg_6_ ( .D(N31), .CP(n64), .Q(sdaPipe[6]) );
  DFQD2BWP12T30P140 sdaPipe_reg_7_ ( .D(N32), .CP(n64), .Q(sdaPipe[7]) );
  DFQD2BWP12T30P140 sdaPipe_reg_1_ ( .D(N26), .CP(n64), .Q(sdaPipe[1]) );
  DFQD2BWP12T30P140 rstPipe_reg_1_ ( .D(N24), .CP(n64), .Q(rstPipe[1]) );
  DFQD2BWP12T30P140 startStopDetState_reg_0_ ( .D(n31), .CP(n63), .Q(
        startStopDetState[0]) );
  DFQD2BWP12T30P140 sclDeb_reg ( .D(n29), .CP(n64), .Q(sclDeb) );
  DFQD1BWP12T30P140 rstPipe_reg_0_ ( .D(rst), .CP(n63), .Q(rstPipe[0]) );
  DFQD1BWP12T30P140 sclDelayed_reg_5_ ( .D(N66), .CP(n64), .Q(sclDelayed[5])
         );
  DFQD1BWP12T30P140 sclDelayed_reg_9_ ( .D(N70), .CP(n64), .Q(sclDelayed[9])
         );
  TIELBWP12T30P140 U3 ( .ZN(n_Logic0_) );
  TIEHBWP12T30P140 U4 ( .Z(n28) );
  INVD0BWP12T30P140 U5 ( .I(sdaOut), .ZN(n3) );
  OR2D0BWP12T30P140 U6 ( .A1(sclPipe[1]), .A2(rst), .Z(N39) );
  OR2D0BWP12T30P140 U7 ( .A1(sclPipe[8]), .A2(rst), .Z(N46) );
  OR2D0BWP12T30P140 U8 ( .A1(sclPipe[7]), .A2(rst), .Z(N45) );
  OR2D0BWP12T30P140 U9 ( .A1(sclPipe[6]), .A2(rst), .Z(N44) );
  ND2D0BWP12T30P140 U10 ( .A1(sclPipe[8]), .A2(sclPipe[6]), .ZN(n38) );
  INVD0BWP12T30P140 U11 ( .I(sclPipe[5]), .ZN(n56) );
  INVD0BWP12T30P140 U12 ( .I(sclPipe[4]), .ZN(n55) );
  INVD0BWP12T30P140 U13 ( .I(sclPipe[3]), .ZN(n54) );
  INVD0BWP12T30P140 U14 ( .I(sclPipe[2]), .ZN(n53) );
  NR4D0BWP12T30P140 U15 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n33) );
  ND4D0BWP12T30P140 U16 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n33), .ZN(n37) );
  INVD0BWP12T30P140 U17 ( .I(rst), .ZN(n61) );
  ND4D0BWP12T30P140 U18 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .ZN(n34) );
  OR4D0BWP12T30P140 U19 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n34), .Z(n35) );
  OAI31D0BWP12T30P140 U20 ( .A1(sclPipe[8]), .A2(sclPipe[6]), .A3(n35), .B(
        sclDeb), .ZN(n36) );
  OAI211D0BWP12T30P140 U21 ( .A1(n38), .A2(n37), .B(n61), .C(n36), .ZN(n29) );
  INVD0BWP12T30P140 U22 ( .I(rstPipe[1]), .ZN(n62) );
  IND2D1BWP12T30P140 U23 ( .A1(sdaDelayed[2]), .B1(n62), .ZN(N74) );
  ND2D0BWP12T30P140 U24 ( .A1(sclDeb), .A2(sdaDelayed[3]), .ZN(n39) );
  NR2D0BWP12T30P140 U25 ( .A1(n39), .A2(N74), .ZN(N78) );
  INVD0BWP12T30P140 U26 ( .I(N78), .ZN(n41) );
  INVD0BWP12T30P140 U27 ( .I(startStopDetState[0]), .ZN(n40) );
  NR2D0BWP12T30P140 U28 ( .A1(clearStartStopDet), .A2(rstPipe[1]), .ZN(n42) );
  IND3D1BWP12T30P140 U29 ( .A1(sdaDelayed[3]), .B1(sclDeb), .B2(sdaDelayed[2]), 
        .ZN(n45) );
  OAI211D0BWP12T30P140 U30 ( .A1(sdaDelayed[2]), .A2(n39), .B(n42), .C(n45), 
        .ZN(n44) );
  OAI22D0BWP12T30P140 U31 ( .A1(clearStartStopDet), .A2(n41), .B1(n40), .B2(
        n44), .ZN(n31) );
  OR2D0BWP12T30P140 U32 ( .A1(sdaDeb), .A2(rstPipe[1]), .Z(N71) );
  OR2D0BWP12T30P140 U33 ( .A1(sdaPipe[6]), .A2(rst), .Z(N32) );
  INVD0BWP12T30P140 U34 ( .I(n42), .ZN(n46) );
  INVD0BWP12T30P140 U35 ( .I(startStopDetState[1]), .ZN(n43) );
  OAI22D0BWP12T30P140 U36 ( .A1(n46), .A2(n45), .B1(n44), .B2(n43), .ZN(n30)
         );
  ND2D0BWP12T30P140 U37 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .ZN(n52) );
  INVD0BWP12T30P140 U38 ( .I(sdaPipe[5]), .ZN(n57) );
  INVD0BWP12T30P140 U39 ( .I(sdaPipe[4]), .ZN(n60) );
  INVD0BWP12T30P140 U40 ( .I(sdaPipe[3]), .ZN(n59) );
  INVD0BWP12T30P140 U41 ( .I(sdaPipe[2]), .ZN(n58) );
  NR4D0BWP12T30P140 U42 ( .A1(n57), .A2(n60), .A3(n59), .A4(n58), .ZN(n47) );
  ND4D0BWP12T30P140 U43 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n47), .ZN(n51) );
  ND4D0BWP12T30P140 U44 ( .A1(n57), .A2(n60), .A3(n59), .A4(n58), .ZN(n48) );
  OR4D0BWP12T30P140 U45 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n48), .Z(n49) );
  OAI31D0BWP12T30P140 U46 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .A3(n49), .B(
        sdaDeb), .ZN(n50) );
  OAI211D0BWP12T30P140 U47 ( .A1(n52), .A2(n51), .B(n61), .C(n50), .ZN(n27) );
  OR2D0BWP12T30P140 U48 ( .A1(sdaPipe[8]), .A2(rst), .Z(N34) );
  OR2D0BWP12T30P140 U49 ( .A1(sdaPipe[7]), .A2(rst), .Z(N33) );
  OR2D0BWP12T30P140 U50 ( .A1(sdaPipe[1]), .A2(rst), .Z(N27) );
  IND2D1BWP12T30P140 U51 ( .A1(startEdgeDet), .B1(n62), .ZN(n_0_net_) );
  CKBD0BWP12T30P140 U52 ( .I(clk), .Z(n63) );
  CKBD0BWP12T30P140 U53 ( .I(clk), .Z(n64) );
  ND2D0BWP12T30P140 U54 ( .A1(n61), .A2(n53), .ZN(N40) );
  ND2D0BWP12T30P140 U55 ( .A1(n61), .A2(n54), .ZN(N41) );
  ND2D0BWP12T30P140 U56 ( .A1(n61), .A2(n55), .ZN(N42) );
  ND2D0BWP12T30P140 U57 ( .A1(n61), .A2(n56), .ZN(N43) );
  ND2D0BWP12T30P140 U58 ( .A1(n61), .A2(n57), .ZN(N31) );
  ND2D0BWP12T30P140 U60 ( .A1(n61), .A2(n58), .ZN(N28) );
  ND2D0BWP12T30P140 U61 ( .A1(n61), .A2(n59), .ZN(N29) );
  ND2D0BWP12T30P140 U62 ( .A1(n61), .A2(n60), .ZN(N30) );
  IND2D1BWP12T30P140 U63 ( .A1(scl), .B1(n61), .ZN(N37) );
  IND2D1BWP12T30P140 U64 ( .A1(sclPipe[0]), .B1(n61), .ZN(N38) );
  IND2D1BWP12T30P140 U65 ( .A1(sdaPipe[0]), .B1(n61), .ZN(N26) );
  IND2D1BWP12T30P140 U66 ( .A1(rstPipe[0]), .B1(n61), .ZN(N24) );
  IND2D1BWP12T30P140 U67 ( .A1(sdaDelayed[0]), .B1(n62), .ZN(N72) );
  IND2D1BWP12T30P140 U68 ( .A1(sdaDelayed[1]), .B1(n62), .ZN(N73) );
  IND2D1BWP12T30P140 U69 ( .A1(sclDeb), .B1(n62), .ZN(N61) );
  IND2D1BWP12T30P140 U70 ( .A1(sclDelayed[0]), .B1(n62), .ZN(N62) );
  IND2D1BWP12T30P140 U71 ( .A1(sclDelayed[1]), .B1(n62), .ZN(N63) );
  IND2D1BWP12T30P140 U72 ( .A1(sclDelayed[2]), .B1(n62), .ZN(N64) );
  IND2D1BWP12T30P140 U73 ( .A1(sclDelayed[3]), .B1(n62), .ZN(N65) );
  IND2D1BWP12T30P140 U74 ( .A1(sclDelayed[4]), .B1(n62), .ZN(N66) );
  IND2D1BWP12T30P140 U75 ( .A1(sclDelayed[5]), .B1(n62), .ZN(N67) );
  IND2D1BWP12T30P140 U76 ( .A1(sclDelayed[6]), .B1(n62), .ZN(N68) );
  IND2D1BWP12T30P140 U77 ( .A1(sclDelayed[7]), .B1(n62), .ZN(N69) );
  IND2D1BWP12T30P140 U78 ( .A1(sclDelayed[8]), .B1(n62), .ZN(N70) );
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
  wire   scl_padoen_o, sda_padoen_o, sda, scl, n3, n5, n37, n41, n42;

  i2c_master_top_0 u_i2c_master ( .wb_clk_i(clk), .wb_rst_i(n42), .arst_i(n42), 
        .wb_adr_i(wb_adr_i), .wb_dat_i(wb_dat_i), .wb_dat_o(wb_dat_o), 
        .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), .wb_cyc_i(wb_cyc_i), 
        .wb_ack_o(wb_ack_o), .wb_inta_o(wb_inta_o), .scl_pad_i(scl), 
        .scl_padoen_o(scl_padoen_o), .sda_pad_i(sda), .sda_padoen_o(
        sda_padoen_o) );
  i2cSlaveTop u_i2c_slave ( .clk(clk), .rst(n42), .sda(sda), .scl(scl), 
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
  INVD0BWP12T30P140 U44 ( .I(rst_n), .ZN(n42) );
  INVD0BWP12T30P140 U45 ( .I(sda_padoen_o), .ZN(n5) );
  INVD0BWP12T30P140 U46 ( .I(scl_padoen_o), .ZN(n3) );
endmodule

