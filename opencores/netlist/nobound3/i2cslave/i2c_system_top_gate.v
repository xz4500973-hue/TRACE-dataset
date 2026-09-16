/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 20:18:33 2026
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
  NR2D0BWP12T30P140 U3 ( .A1(c_state[15]), .A2(c_state[14]), .ZN(n134) );
  NR2D0BWP12T30P140 U4 ( .A1(rst), .A2(al), .ZN(n130) );
  ND2D0BWP12T30P140 U5 ( .A1(n130), .A2(clk_en), .ZN(n122) );
  INVD0BWP12T30P140 U6 ( .I(sda_chk), .ZN(n121) );
  INR2D1BWP12T30P140 U7 ( .A1(n130), .B1(clk_en), .ZN(n142) );
  INVD0BWP12T30P140 U8 ( .I(n142), .ZN(n42) );
  OAI22D0BWP12T30P140 U9 ( .A1(n134), .A2(n122), .B1(n121), .B2(n42), .ZN(n92)
         );
  INVD0BWP12T30P140 U10 ( .I(rst), .ZN(n138) );
  NR2D0BWP12T30P140 U11 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n33) );
  ND2D0BWP12T30P140 U12 ( .A1(cmd[1]), .A2(n33), .ZN(n27) );
  OAI21D0BWP12T30P140 U13 ( .A1(cmd[3]), .A2(n27), .B(clk_en), .ZN(n1) );
  OA211D0BWP12T30P140 U14 ( .A1(clk_en), .A2(cmd_stop), .B(n138), .C(n1), .Z(
        n75) );
  NR3D0BWP12T30P140 U15 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n48) );
  INVD0BWP12T30P140 U16 ( .I(n48), .ZN(n104) );
  NR3D0BWP12T30P140 U17 ( .A1(cnt[4]), .A2(cnt[3]), .A3(n104), .ZN(n51) );
  INVD0BWP12T30P140 U18 ( .I(n51), .ZN(n54) );
  NR3D0BWP12T30P140 U19 ( .A1(cnt[6]), .A2(cnt[5]), .A3(n54), .ZN(n93) );
  INVD0BWP12T30P140 U20 ( .I(n93), .ZN(n96) );
  NR3D0BWP12T30P140 U21 ( .A1(cnt[8]), .A2(cnt[7]), .A3(n96), .ZN(n97) );
  INVD0BWP12T30P140 U22 ( .I(n97), .ZN(n100) );
  NR3D0BWP12T30P140 U23 ( .A1(cnt[10]), .A2(cnt[9]), .A3(n100), .ZN(n44) );
  INVD0BWP12T30P140 U24 ( .I(n44), .ZN(n47) );
  OR3D0BWP12T30P140 U25 ( .A1(cnt[12]), .A2(cnt[11]), .A3(n47), .Z(n109) );
  NR4D0BWP12T30P140 U26 ( .A1(cnt[15]), .A2(cnt[13]), .A3(cnt[14]), .A4(n109), 
        .ZN(n2) );
  INR2D1BWP12T30P140 U27 ( .A1(ena), .B1(n2), .ZN(n4) );
  ND2D0BWP12T30P140 U28 ( .A1(n4), .A2(n138), .ZN(N64) );
  INVD0BWP12T30P140 U29 ( .I(sSCL), .ZN(n133) );
  ND2D0BWP12T30P140 U30 ( .A1(dscl_oen), .A2(n133), .ZN(n105) );
  IND2D1BWP12T30P140 U31 ( .A1(N64), .B1(n105), .ZN(n118) );
  INVD0BWP12T30P140 U32 ( .I(cnt[11]), .ZN(n3) );
  AOI31D0BWP12T30P140 U33 ( .A1(n44), .A2(n3), .A3(n105), .B(N64), .ZN(n5) );
  NR2D0BWP12T30P140 U34 ( .A1(rst), .A2(n4), .ZN(n115) );
  AOI22D0BWP12T30P140 U35 ( .A1(cnt[12]), .A2(n5), .B1(n115), .B2(clk_cnt[12]), 
        .ZN(n6) );
  OAI21D0BWP12T30P140 U36 ( .A1(n109), .A2(n118), .B(n6), .ZN(n78) );
  INVD0BWP12T30P140 U37 ( .I(cnt[3]), .ZN(n7) );
  AOI31D0BWP12T30P140 U38 ( .A1(n48), .A2(n7), .A3(n105), .B(N64), .ZN(n8) );
  AOI22D0BWP12T30P140 U39 ( .A1(cnt[4]), .A2(n8), .B1(n115), .B2(clk_cnt[4]), 
        .ZN(n9) );
  OAI21D0BWP12T30P140 U40 ( .A1(n54), .A2(n118), .B(n9), .ZN(n86) );
  INVD0BWP12T30P140 U41 ( .I(cnt[5]), .ZN(n10) );
  AOI31D0BWP12T30P140 U42 ( .A1(n51), .A2(n10), .A3(n105), .B(N64), .ZN(n11)
         );
  AOI22D0BWP12T30P140 U43 ( .A1(cnt[6]), .A2(n11), .B1(n115), .B2(clk_cnt[6]), 
        .ZN(n12) );
  OAI21D0BWP12T30P140 U44 ( .A1(n96), .A2(n118), .B(n12), .ZN(n84) );
  INVD0BWP12T30P140 U45 ( .I(cnt[7]), .ZN(n13) );
  AOI31D0BWP12T30P140 U46 ( .A1(n93), .A2(n13), .A3(n105), .B(N64), .ZN(n14)
         );
  AOI22D0BWP12T30P140 U47 ( .A1(cnt[8]), .A2(n14), .B1(n115), .B2(clk_cnt[8]), 
        .ZN(n15) );
  OAI21D0BWP12T30P140 U48 ( .A1(n100), .A2(n118), .B(n15), .ZN(n82) );
  INVD0BWP12T30P140 U49 ( .I(c_state[14]), .ZN(n16) );
  INVD0BWP12T30P140 U50 ( .I(c_state[13]), .ZN(n39) );
  OAI22D0BWP12T30P140 U51 ( .A1(n16), .A2(n42), .B1(n39), .B2(n122), .ZN(n60)
         );
  INVD0BWP12T30P140 U52 ( .I(c_state[15]), .ZN(n37) );
  OAI22D0BWP12T30P140 U53 ( .A1(n37), .A2(n42), .B1(n16), .B2(n122), .ZN(n59)
         );
  NR4D0BWP12T30P140 U54 ( .A1(c_state[12]), .A2(c_state[8]), .A3(c_state[16]), 
        .A4(c_state[4]), .ZN(n26) );
  NR2D0BWP12T30P140 U55 ( .A1(n26), .A2(n122), .ZN(N175) );
  INVD0BWP12T30P140 U56 ( .I(cnt[9]), .ZN(n17) );
  AOI31D0BWP12T30P140 U57 ( .A1(n97), .A2(n17), .A3(n105), .B(N64), .ZN(n18)
         );
  AOI22D0BWP12T30P140 U58 ( .A1(cnt[10]), .A2(n18), .B1(n115), .B2(clk_cnt[10]), .ZN(n19) );
  OAI21D0BWP12T30P140 U59 ( .A1(n47), .A2(n118), .B(n19), .ZN(n80) );
  INVD0BWP12T30P140 U60 ( .I(cnt[14]), .ZN(n29) );
  INVD0BWP12T30P140 U61 ( .I(n118), .ZN(n110) );
  NR2D0BWP12T30P140 U62 ( .A1(N64), .A2(n105), .ZN(n116) );
  AOI221D0BWP12T30P140 U63 ( .A1(cnt[13]), .A2(n110), .B1(n109), .B2(n110), 
        .C(n116), .ZN(n30) );
  OAI21D0BWP12T30P140 U64 ( .A1(n29), .A2(n118), .B(n30), .ZN(n20) );
  AO22D0BWP12T30P140 U65 ( .A1(cnt[15]), .A2(n20), .B1(n115), .B2(clk_cnt[15]), 
        .Z(n91) );
  INVD0BWP12T30P140 U66 ( .I(c_state[1]), .ZN(n21) );
  INVD0BWP12T30P140 U67 ( .I(c_state[0]), .ZN(n125) );
  OAI22D0BWP12T30P140 U68 ( .A1(n21), .A2(n42), .B1(n125), .B2(n122), .ZN(n73)
         );
  INVD0BWP12T30P140 U69 ( .I(c_state[3]), .ZN(n22) );
  MOAI22D0BWP12T30P140 U70 ( .A1(n22), .A2(n122), .B1(c_state[4]), .B2(n142), 
        .ZN(n70) );
  INVD0BWP12T30P140 U71 ( .I(c_state[2]), .ZN(n23) );
  OAI22D0BWP12T30P140 U72 ( .A1(n21), .A2(n122), .B1(n23), .B2(n42), .ZN(n72)
         );
  OAI22D0BWP12T30P140 U73 ( .A1(n23), .A2(n122), .B1(n22), .B2(n42), .ZN(n71)
         );
  INVD0BWP12T30P140 U74 ( .I(c_state[5]), .ZN(n31) );
  NR3D0BWP12T30P140 U75 ( .A1(c_state[1]), .A2(c_state[11]), .A3(c_state[10]), 
        .ZN(n139) );
  NR4D0BWP12T30P140 U76 ( .A1(c_state[2]), .A2(c_state[3]), .A3(c_state[7]), 
        .A4(c_state[6]), .ZN(n24) );
  AN3D0BWP12T30P140 U77 ( .A1(n134), .A2(n139), .A3(n24), .Z(n126) );
  NR4D0BWP12T30P140 U78 ( .A1(c_state[0]), .A2(c_state[5]), .A3(c_state[13]), 
        .A4(c_state[9]), .ZN(n25) );
  ND3D0BWP12T30P140 U79 ( .A1(n126), .A2(n26), .A3(n25), .ZN(n124) );
  NR2D0BWP12T30P140 U80 ( .A1(n124), .A2(n122), .ZN(n143) );
  IND2D1BWP12T30P140 U81 ( .A1(cmd[3]), .B1(n143), .ZN(n38) );
  OAI22D0BWP12T30P140 U82 ( .A1(n31), .A2(n42), .B1(n38), .B2(n27), .ZN(n69)
         );
  INVD0BWP12T30P140 U83 ( .I(c_state[11]), .ZN(n36) );
  INVD0BWP12T30P140 U84 ( .I(c_state[10]), .ZN(n35) );
  OAI22D0BWP12T30P140 U85 ( .A1(n36), .A2(n42), .B1(n35), .B2(n122), .ZN(n63)
         );
  NR3D0BWP12T30P140 U86 ( .A1(cnt[13]), .A2(n109), .A3(n118), .ZN(n111) );
  AOI22D0BWP12T30P140 U87 ( .A1(clk_cnt[14]), .A2(n115), .B1(n111), .B2(n29), 
        .ZN(n28) );
  OAI21D0BWP12T30P140 U88 ( .A1(n30), .A2(n29), .B(n28), .ZN(n76) );
  INVD0BWP12T30P140 U89 ( .I(c_state[7]), .ZN(n123) );
  INVD0BWP12T30P140 U90 ( .I(c_state[6]), .ZN(n32) );
  OAI22D0BWP12T30P140 U91 ( .A1(n123), .A2(n42), .B1(n32), .B2(n122), .ZN(n67)
         );
  OAI22D0BWP12T30P140 U92 ( .A1(n32), .A2(n42), .B1(n31), .B2(n122), .ZN(n68)
         );
  ND3D0BWP12T30P140 U93 ( .A1(n143), .A2(cmd[3]), .A3(n33), .ZN(n34) );
  INVD0BWP12T30P140 U94 ( .I(c_state[9]), .ZN(n137) );
  OAI22D0BWP12T30P140 U95 ( .A1(cmd[1]), .A2(n34), .B1(n137), .B2(n42), .ZN(
        n65) );
  OAI22D0BWP12T30P140 U96 ( .A1(n35), .A2(n42), .B1(n137), .B2(n122), .ZN(n64)
         );
  MOAI22D0BWP12T30P140 U97 ( .A1(n36), .A2(n122), .B1(c_state[12]), .B2(n142), 
        .ZN(n62) );
  MOAI22D0BWP12T30P140 U98 ( .A1(n37), .A2(n122), .B1(c_state[16]), .B2(n142), 
        .ZN(n58) );
  NR2D0BWP12T30P140 U99 ( .A1(cmd[1]), .A2(n38), .ZN(n41) );
  ND2D0BWP12T30P140 U100 ( .A1(cmd[2]), .A2(n41), .ZN(n40) );
  OAI22D0BWP12T30P140 U101 ( .A1(cmd[0]), .A2(n40), .B1(n39), .B2(n42), .ZN(
        n61) );
  ND2D0BWP12T30P140 U102 ( .A1(cmd[0]), .A2(n41), .ZN(n43) );
  OAI22D0BWP12T30P140 U103 ( .A1(cmd[2]), .A2(n43), .B1(n125), .B2(n42), .ZN(
        n74) );
  AOI21D0BWP12T30P140 U104 ( .A1(n44), .A2(n105), .B(N64), .ZN(n45) );
  AOI22D0BWP12T30P140 U105 ( .A1(cnt[11]), .A2(n45), .B1(n115), .B2(
        clk_cnt[11]), .ZN(n46) );
  OAI31D0BWP12T30P140 U106 ( .A1(cnt[11]), .A2(n47), .A3(n118), .B(n46), .ZN(
        n79) );
  AOI21D0BWP12T30P140 U107 ( .A1(n48), .A2(n105), .B(N64), .ZN(n49) );
  AOI22D0BWP12T30P140 U108 ( .A1(cnt[3]), .A2(n49), .B1(n115), .B2(clk_cnt[3]), 
        .ZN(n50) );
  OAI31D0BWP12T30P140 U109 ( .A1(cnt[3]), .A2(n104), .A3(n118), .B(n50), .ZN(
        n87) );
  AOI21D0BWP12T30P140 U110 ( .A1(n51), .A2(n105), .B(N64), .ZN(n52) );
  AOI22D0BWP12T30P140 U111 ( .A1(cnt[5]), .A2(n52), .B1(n115), .B2(clk_cnt[5]), 
        .ZN(n53) );
  OAI31D0BWP12T30P140 U112 ( .A1(cnt[5]), .A2(n54), .A3(n118), .B(n53), .ZN(
        n85) );
  AOI21D0BWP12T30P140 U113 ( .A1(n93), .A2(n105), .B(N64), .ZN(n94) );
  AOI22D0BWP12T30P140 U114 ( .A1(cnt[7]), .A2(n94), .B1(n115), .B2(clk_cnt[7]), 
        .ZN(n95) );
  OAI31D0BWP12T30P140 U115 ( .A1(cnt[7]), .A2(n96), .A3(n118), .B(n95), .ZN(
        n83) );
  AOI21D0BWP12T30P140 U116 ( .A1(n97), .A2(n105), .B(N64), .ZN(n98) );
  AOI22D0BWP12T30P140 U117 ( .A1(cnt[9]), .A2(n98), .B1(n115), .B2(clk_cnt[9]), 
        .ZN(n99) );
  OAI31D0BWP12T30P140 U118 ( .A1(cnt[9]), .A2(n100), .A3(n118), .B(n99), .ZN(
        n81) );
  INVD0BWP12T30P140 U119 ( .I(cnt[0]), .ZN(n106) );
  INVD0BWP12T30P140 U120 ( .I(cnt[1]), .ZN(n101) );
  AOI31D0BWP12T30P140 U121 ( .A1(n106), .A2(n101), .A3(n105), .B(N64), .ZN(
        n102) );
  AOI22D0BWP12T30P140 U122 ( .A1(cnt[2]), .A2(n102), .B1(n115), .B2(clk_cnt[2]), .ZN(n103) );
  OAI21D0BWP12T30P140 U123 ( .A1(n104), .A2(n118), .B(n103), .ZN(n88) );
  AOI21D0BWP12T30P140 U124 ( .A1(n106), .A2(n105), .B(N64), .ZN(n107) );
  AOI22D0BWP12T30P140 U125 ( .A1(cnt[1]), .A2(n107), .B1(n115), .B2(clk_cnt[1]), .ZN(n108) );
  OAI31D0BWP12T30P140 U126 ( .A1(cnt[0]), .A2(cnt[1]), .A3(n118), .B(n108), 
        .ZN(n89) );
  AOI21D0BWP12T30P140 U127 ( .A1(n110), .A2(n109), .B(n116), .ZN(n114) );
  INVD0BWP12T30P140 U128 ( .I(cnt[13]), .ZN(n113) );
  AOI21D0BWP12T30P140 U129 ( .A1(n115), .A2(clk_cnt[13]), .B(n111), .ZN(n112)
         );
  OAI21D0BWP12T30P140 U130 ( .A1(n114), .A2(n113), .B(n112), .ZN(n77) );
  AOI22D0BWP12T30P140 U131 ( .A1(cnt[0]), .A2(n116), .B1(n115), .B2(clk_cnt[0]), .ZN(n117) );
  OAI21D0BWP12T30P140 U132 ( .A1(cnt[0]), .A2(n118), .B(n117), .ZN(n90) );
  NR2D0BWP12T30P140 U133 ( .A1(dSCL), .A2(n133), .ZN(n119) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(dout), .I1(sSDA), .S(n119), .Z(n55) );
  INVD0BWP12T30P140 U135 ( .I(sSDA), .ZN(n132) );
  ND2D0BWP12T30P140 U136 ( .A1(n138), .A2(n132), .ZN(N73) );
  INVD0BWP12T30P140 U137 ( .I(sda_oen), .ZN(n146) );
  IND4D1BWP12T30P140 U138 ( .A1(cmd_stop), .B1(sto_condition), .B2(n138), .B3(
        n124), .ZN(n120) );
  OAI31D0BWP12T30P140 U139 ( .A1(n146), .A2(n121), .A3(N73), .B(n120), .ZN(N87) );
  MOAI22D0BWP12T30P140 U140 ( .A1(n123), .A2(n122), .B1(c_state[8]), .B2(n142), 
        .ZN(n66) );
  CKBD0BWP12T30P140 U141 ( .I(clk), .Z(n150) );
  CKBD0BWP12T30P140 U142 ( .I(clk), .Z(n151) );
  CKBD0BWP12T30P140 U143 ( .I(clk), .Z(n152) );
  CKBD0BWP12T30P140 U144 ( .I(nReset), .Z(n147) );
  CKBD0BWP12T30P140 U145 ( .I(nReset), .Z(n148) );
  CKBD0BWP12T30P140 U146 ( .I(nReset), .Z(n149) );
  ND2D0BWP12T30P140 U147 ( .A1(n138), .A2(n133), .ZN(N72) );
  AN3D0BWP12T30P140 U148 ( .A1(n125), .A2(n124), .A3(clk_en), .Z(n127) );
  ND2D0BWP12T30P140 U149 ( .A1(n127), .A2(n126), .ZN(n128) );
  OAI22D0BWP12T30P140 U150 ( .A1(n128), .A2(c_state[8]), .B1(n127), .B2(
        scl_oen), .ZN(n129) );
  ND2D0BWP12T30P140 U151 ( .A1(n130), .A2(n129), .ZN(n57) );
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

  i2c_master_byte_ctrl byte_controller ( .clk(n151), .rst(n150), .nReset(
        arst_i), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(cr[6]), 
        .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), .cmd_ack(done), 
        .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), .i2c_al(i2c_al), 
        .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(sda_pad_i), 
        .sda_oen(sda_padoen_o) );
  DFSNQD1BWP12T30P140 prer_reg_15_ ( .D(n94), .CP(n153), .SDN(n148), .Q(
        prer[15]) );
  DFSNQD1BWP12T30P140 prer_reg_14_ ( .D(n93), .CP(n153), .SDN(n148), .Q(
        prer[14]) );
  DFSNQD1BWP12T30P140 prer_reg_13_ ( .D(n92), .CP(n153), .SDN(n148), .Q(
        prer[13]) );
  DFSNQD1BWP12T30P140 prer_reg_12_ ( .D(n91), .CP(n153), .SDN(n148), .Q(
        prer[12]) );
  DFSNQD1BWP12T30P140 prer_reg_11_ ( .D(n90), .CP(n153), .SDN(n148), .Q(
        prer[11]) );
  DFSNQD1BWP12T30P140 prer_reg_10_ ( .D(n89), .CP(n153), .SDN(n148), .Q(
        prer[10]) );
  DFSNQD1BWP12T30P140 prer_reg_9_ ( .D(n88), .CP(n153), .SDN(n148), .Q(prer[9]) );
  DFSNQD1BWP12T30P140 prer_reg_8_ ( .D(n87), .CP(n153), .SDN(n148), .Q(prer[8]) );
  DFSNQD1BWP12T30P140 prer_reg_7_ ( .D(n86), .CP(n153), .SDN(n149), .Q(prer[7]) );
  DFSNQD1BWP12T30P140 prer_reg_6_ ( .D(n85), .CP(n153), .SDN(n149), .Q(prer[6]) );
  DFSNQD1BWP12T30P140 prer_reg_5_ ( .D(n84), .CP(n153), .SDN(n149), .Q(prer[5]) );
  DFSNQD1BWP12T30P140 prer_reg_4_ ( .D(n83), .CP(n153), .SDN(n149), .Q(prer[4]) );
  DFSNQD1BWP12T30P140 prer_reg_3_ ( .D(n82), .CP(n153), .SDN(n149), .Q(prer[3]) );
  DFSNQD1BWP12T30P140 prer_reg_2_ ( .D(n81), .CP(n153), .SDN(n149), .Q(prer[2]) );
  DFSNQD1BWP12T30P140 prer_reg_1_ ( .D(n80), .CP(n153), .SDN(n148), .Q(prer[1]) );
  DFSNQD1BWP12T30P140 prer_reg_0_ ( .D(n79), .CP(n153), .SDN(n149), .Q(prer[0]) );
  DFCNQD1BWP12T30P140 wb_inta_o_reg ( .D(N121), .CP(n152), .CDN(n149), .Q(
        wb_inta_o) );
  DFCNQD1BWP12T30P140 ctr_reg_4_ ( .D(n107), .CP(n151), .CDN(n148), .Q(ctr[4])
         );
  DFCNQD1BWP12T30P140 ctr_reg_3_ ( .D(n106), .CP(n151), .CDN(n148), .Q(ctr[3])
         );
  DFCNQD1BWP12T30P140 ctr_reg_2_ ( .D(n105), .CP(n152), .CDN(n148), .Q(ctr[2])
         );
  DFCNQD1BWP12T30P140 cr_reg_2_ ( .D(n73), .CP(n152), .CDN(arst_i), .Q(cr[2])
         );
  DFCNQD1BWP12T30P140 rxack_reg ( .D(N115), .CP(n152), .CDN(arst_i), .Q(sr[7])
         );
  DFCNQD1BWP12T30P140 tip_reg ( .D(N116), .CP(n152), .CDN(n149), .Q(sr_1) );
  DFQD2BWP12T30P140 wb_dat_o_reg_4_ ( .D(n111), .CP(n151), .Q(wb_dat_o[4]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_6_ ( .D(N49), .CP(n151), .Q(wb_dat_o[6]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_3_ ( .D(n112), .CP(n151), .Q(wb_dat_o[3]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_2_ ( .D(n113), .CP(n151), .Q(wb_dat_o[2]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_5_ ( .D(N48), .CP(n151), .Q(wb_dat_o[5]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_7_ ( .D(N50), .CP(n151), .Q(wb_dat_o[7]) );
  DFQD2BWP12T30P140 wb_dat_o_reg_0_ ( .D(N43), .CP(n151), .Q(wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 ctr_reg_6_ ( .D(n109), .CP(n151), .CDN(n148), .Q(ctr[6])
         );
  DFCNQD1BWP12T30P140 ctr_reg_5_ ( .D(n108), .CP(n151), .CDN(n148), .Q(ctr[5])
         );
  DFCNQD1BWP12T30P140 ctr_reg_1_ ( .D(n104), .CP(n151), .CDN(n148), .Q(ctr[1])
         );
  DFCNQD1BWP12T30P140 ctr_reg_0_ ( .D(n103), .CP(n151), .CDN(n149), .Q(ctr[0])
         );
  DFCNQD1BWP12T30P140 cr_reg_1_ ( .D(n72), .CP(n152), .CDN(n149), .Q(cr[1]) );
  DFCNQD1BWP12T30P140 al_reg ( .D(N114), .CP(n152), .CDN(n149), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 cr_reg_3_ ( .D(n78), .CP(n152), .CDN(n149), .Q(cr[3]) );
  DFCNQD1BWP12T30P140 txr_reg_4_ ( .D(n99), .CP(n152), .CDN(n148), .Q(txr[4])
         );
  DFCNQD1BWP12T30P140 txr_reg_3_ ( .D(n98), .CP(n152), .CDN(n149), .Q(txr[3])
         );
  DFCNQD1BWP12T30P140 txr_reg_2_ ( .D(n97), .CP(n152), .CDN(arst_i), .Q(txr[2]) );
  DFCNQD1BWP12T30P140 irq_flag_reg ( .D(N117), .CP(n152), .CDN(arst_i), .Q(
        sr_0) );
  DFCNQD1BWP12T30P140 txr_reg_0_ ( .D(n95), .CP(n151), .CDN(arst_i), .Q(txr[0]) );
  DFCNQD1BWP12T30P140 txr_reg_7_ ( .D(n102), .CP(n151), .CDN(n148), .Q(txr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_4_ ( .D(n77), .CP(n152), .CDN(arst_i), .Q(cr[4])
         );
  DFCNQD1BWP12T30P140 cr_reg_0_ ( .D(n71), .CP(n152), .CDN(arst_i), .Q(cr[0])
         );
  DFCNQD1BWP12T30P140 txr_reg_6_ ( .D(n101), .CP(n152), .CDN(n148), .Q(txr[6])
         );
  DFCNQD1BWP12T30P140 txr_reg_5_ ( .D(n100), .CP(n152), .CDN(n148), .Q(txr[5])
         );
  DFCNQD1BWP12T30P140 txr_reg_1_ ( .D(n96), .CP(n152), .CDN(arst_i), .Q(txr[1]) );
  DFCNQD1BWP12T30P140 ctr_reg_7_ ( .D(n110), .CP(n151), .CDN(n148), .Q(ctr[7])
         );
  DFCNQD1BWP12T30P140 cr_reg_7_ ( .D(n74), .CP(n152), .CDN(n149), .Q(cr[7]) );
  DFCNQD1BWP12T30P140 cr_reg_6_ ( .D(n75), .CP(n152), .CDN(arst_i), .Q(cr[6])
         );
  DFCNQD1BWP12T30P140 cr_reg_5_ ( .D(n76), .CP(n152), .CDN(n149), .Q(cr[5]) );
  DFQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(N44), .CP(n151), .Q(wb_dat_o[1]) );
  DFQD1BWP12T30P140 wb_ack_o_reg ( .D(N20), .CP(n151), .Q(wb_ack_o) );
  INVD0BWP12T30P140 U3 ( .I(wb_dat_i[7]), .ZN(n129) );
  INVD0BWP12T30P140 U4 ( .I(wb_adr_i[0]), .ZN(n5) );
  NR2D0BWP12T30P140 U5 ( .A1(wb_adr_i[1]), .A2(n5), .ZN(n55) );
  ND3D0BWP12T30P140 U6 ( .A1(wb_cyc_i), .A2(wb_stb_i), .A3(wb_we_i), .ZN(n3)
         );
  INVD0BWP12T30P140 U7 ( .I(wb_rst_i), .ZN(n117) );
  OAI21D0BWP12T30P140 U8 ( .A1(n3), .A2(wb_adr_i[2]), .B(n117), .ZN(n118) );
  ND2D0BWP12T30P140 U9 ( .A1(n55), .A2(n118), .ZN(n144) );
  INVD0BWP12T30P140 U10 ( .I(n117), .ZN(n142) );
  AOI21D0BWP12T30P140 U11 ( .A1(prer[15]), .A2(n144), .B(n142), .ZN(n1) );
  OAI21D0BWP12T30P140 U12 ( .A1(n129), .A2(n144), .B(n1), .ZN(n94) );
  INVD0BWP12T30P140 U13 ( .I(wb_dat_i[5]), .ZN(n141) );
  NR2D0BWP12T30P140 U14 ( .A1(n142), .A2(n3), .ZN(n12) );
  NR2D0BWP12T30P140 U15 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n119) );
  ND3D0BWP12T30P140 U16 ( .A1(wb_adr_i[2]), .A2(ctr[7]), .A3(n119), .ZN(n11)
         );
  OAI21D0BWP12T30P140 U17 ( .A1(n3), .A2(n11), .B(n117), .ZN(n21) );
  ND2D0BWP12T30P140 U18 ( .A1(n12), .A2(n21), .ZN(n68) );
  NR2D0BWP12T30P140 U19 ( .A1(done), .A2(i2c_al), .ZN(n18) );
  INVD0BWP12T30P140 U20 ( .I(n18), .ZN(n2) );
  AO21D0BWP12T30P140 U21 ( .A1(n3), .A2(n2), .B(n21), .Z(n14) );
  INVD0BWP12T30P140 U22 ( .I(cr[5]), .ZN(n64) );
  OAI22D0BWP12T30P140 U23 ( .A1(n141), .A2(n68), .B1(n14), .B2(n64), .ZN(n76)
         );
  INVD0BWP12T30P140 U24 ( .I(wb_dat_i[6]), .ZN(n145) );
  INVD0BWP12T30P140 U25 ( .I(cr[6]), .ZN(n4) );
  OAI22D0BWP12T30P140 U26 ( .A1(n145), .A2(n68), .B1(n14), .B2(n4), .ZN(n75)
         );
  INVD0BWP12T30P140 U27 ( .I(cr[7]), .ZN(n22) );
  OAI22D0BWP12T30P140 U28 ( .A1(n129), .A2(n68), .B1(n14), .B2(n22), .ZN(n74)
         );
  ND2D0BWP12T30P140 U29 ( .A1(wb_adr_i[1]), .A2(n5), .ZN(n57) );
  INVD0BWP12T30P140 U30 ( .I(n118), .ZN(n7) );
  AOI21D0BWP12T30P140 U31 ( .A1(n117), .A2(n57), .B(n7), .ZN(n116) );
  INVD0BWP12T30P140 U32 ( .I(ctr[7]), .ZN(n6) );
  ND2D0BWP12T30P140 U33 ( .A1(n12), .A2(n116), .ZN(n114) );
  OAI22D0BWP12T30P140 U34 ( .A1(n116), .A2(n6), .B1(n129), .B2(n114), .ZN(n110) );
  ND2D0BWP12T30P140 U35 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .ZN(n28) );
  AOI21D0BWP12T30P140 U36 ( .A1(n117), .A2(n28), .B(n7), .ZN(n20) );
  INVD0BWP12T30P140 U37 ( .I(txr[1]), .ZN(n8) );
  INVD0BWP12T30P140 U38 ( .I(wb_dat_i[1]), .ZN(n133) );
  ND2D0BWP12T30P140 U39 ( .A1(n12), .A2(n20), .ZN(n19) );
  OAI22D0BWP12T30P140 U40 ( .A1(n20), .A2(n8), .B1(n133), .B2(n19), .ZN(n96)
         );
  INVD0BWP12T30P140 U41 ( .I(txr[5]), .ZN(n9) );
  OAI22D0BWP12T30P140 U42 ( .A1(n20), .A2(n9), .B1(n141), .B2(n19), .ZN(n100)
         );
  INVD0BWP12T30P140 U43 ( .I(txr[6]), .ZN(n10) );
  OAI22D0BWP12T30P140 U44 ( .A1(n20), .A2(n10), .B1(n145), .B2(n19), .ZN(n101)
         );
  INVD0BWP12T30P140 U45 ( .I(wb_dat_i[0]), .ZN(n131) );
  ND2D0BWP12T30P140 U46 ( .A1(n12), .A2(n11), .ZN(n67) );
  INVD0BWP12T30P140 U47 ( .I(cr[0]), .ZN(n13) );
  OAI22D0BWP12T30P140 U48 ( .A1(n131), .A2(n68), .B1(n67), .B2(n13), .ZN(n71)
         );
  INVD0BWP12T30P140 U49 ( .I(wb_dat_i[4]), .ZN(n139) );
  INVD0BWP12T30P140 U50 ( .I(cr[4]), .ZN(n65) );
  OAI22D0BWP12T30P140 U51 ( .A1(n139), .A2(n68), .B1(n14), .B2(n65), .ZN(n77)
         );
  INVD0BWP12T30P140 U52 ( .I(txr[7]), .ZN(n15) );
  OAI22D0BWP12T30P140 U53 ( .A1(n20), .A2(n15), .B1(n129), .B2(n19), .ZN(n102)
         );
  INVD0BWP12T30P140 U54 ( .I(txr[0]), .ZN(n16) );
  OAI22D0BWP12T30P140 U55 ( .A1(n20), .A2(n16), .B1(n131), .B2(n19), .ZN(n95)
         );
  ND2D0BWP12T30P140 U56 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(n17) );
  NR2D0BWP12T30P140 U57 ( .A1(wb_ack_o), .A2(n17), .ZN(N20) );
  INVD0BWP12T30P140 U58 ( .I(sr_0), .ZN(n146) );
  AOI211D0BWP12T30P140 U59 ( .A1(n18), .A2(n146), .B(n142), .C(cr[0]), .ZN(
        N117) );
  INVD0BWP12T30P140 U60 ( .I(txr[2]), .ZN(n44) );
  INVD0BWP12T30P140 U61 ( .I(wb_dat_i[2]), .ZN(n135) );
  OAI22D0BWP12T30P140 U62 ( .A1(n20), .A2(n44), .B1(n135), .B2(n19), .ZN(n97)
         );
  INVD0BWP12T30P140 U63 ( .I(txr[3]), .ZN(n49) );
  INVD0BWP12T30P140 U64 ( .I(wb_dat_i[3]), .ZN(n137) );
  OAI22D0BWP12T30P140 U65 ( .A1(n20), .A2(n49), .B1(n137), .B2(n19), .ZN(n98)
         );
  INVD0BWP12T30P140 U66 ( .I(txr[4]), .ZN(n62) );
  OAI22D0BWP12T30P140 U67 ( .A1(n20), .A2(n62), .B1(n139), .B2(n19), .ZN(n99)
         );
  INVD0BWP12T30P140 U68 ( .I(cr[3]), .ZN(n47) );
  OAI22D0BWP12T30P140 U69 ( .A1(n137), .A2(n68), .B1(n21), .B2(n47), .ZN(n78)
         );
  AOI21D0BWP12T30P140 U70 ( .A1(sr[5]), .A2(n22), .B(i2c_al), .ZN(n23) );
  NR2D0BWP12T30P140 U71 ( .A1(n142), .A2(n23), .ZN(N114) );
  INVD0BWP12T30P140 U72 ( .I(cr[1]), .ZN(n24) );
  OAI22D0BWP12T30P140 U73 ( .A1(n133), .A2(n68), .B1(n67), .B2(n24), .ZN(n72)
         );
  INVD0BWP12T30P140 U74 ( .I(ctr[0]), .ZN(n25) );
  OAI22D0BWP12T30P140 U75 ( .A1(n116), .A2(n25), .B1(n131), .B2(n114), .ZN(
        n103) );
  INVD0BWP12T30P140 U76 ( .I(ctr[1]), .ZN(n26) );
  OAI22D0BWP12T30P140 U77 ( .A1(n116), .A2(n26), .B1(n133), .B2(n114), .ZN(
        n104) );
  INVD0BWP12T30P140 U78 ( .I(ctr[5]), .ZN(n27) );
  OAI22D0BWP12T30P140 U79 ( .A1(n116), .A2(n27), .B1(n141), .B2(n114), .ZN(
        n108) );
  INVD0BWP12T30P140 U80 ( .I(ctr[6]), .ZN(n147) );
  OAI22D0BWP12T30P140 U81 ( .A1(n116), .A2(n147), .B1(n145), .B2(n114), .ZN(
        n109) );
  INVD0BWP12T30P140 U82 ( .I(n57), .ZN(n50) );
  AOI22D0BWP12T30P140 U83 ( .A1(n50), .A2(ctr[0]), .B1(n119), .B2(prer[0]), 
        .ZN(n31) );
  INVD0BWP12T30P140 U84 ( .I(wb_adr_i[2]), .ZN(n53) );
  INVD0BWP12T30P140 U85 ( .I(n28), .ZN(n59) );
  AOI22D0BWP12T30P140 U86 ( .A1(n59), .A2(rxr[0]), .B1(n55), .B2(prer[8]), 
        .ZN(n30) );
  AOI222D0BWP12T30P140 U87 ( .A1(n50), .A2(cr[0]), .B1(txr[0]), .B2(n55), .C1(
        n119), .C2(sr_0), .ZN(n29) );
  AOI32D0BWP12T30P140 U88 ( .A1(n31), .A2(n53), .A3(n30), .B1(wb_adr_i[2]), 
        .B2(n29), .ZN(N43) );
  AOI22D0BWP12T30P140 U89 ( .A1(n50), .A2(ctr[1]), .B1(n119), .B2(prer[1]), 
        .ZN(n34) );
  AOI22D0BWP12T30P140 U90 ( .A1(n59), .A2(rxr[1]), .B1(n55), .B2(prer[9]), 
        .ZN(n33) );
  AOI222D0BWP12T30P140 U91 ( .A1(n50), .A2(cr[1]), .B1(txr[1]), .B2(n55), .C1(
        n119), .C2(sr_1), .ZN(n32) );
  AOI32D0BWP12T30P140 U92 ( .A1(n34), .A2(n53), .A3(n33), .B1(wb_adr_i[2]), 
        .B2(n32), .ZN(N44) );
  AOI22D0BWP12T30P140 U93 ( .A1(n55), .A2(prer[15]), .B1(n119), .B2(prer[7]), 
        .ZN(n37) );
  AOI22D0BWP12T30P140 U94 ( .A1(n50), .A2(ctr[7]), .B1(n59), .B2(rxr[7]), .ZN(
        n36) );
  AOI222D0BWP12T30P140 U95 ( .A1(n50), .A2(cr[7]), .B1(txr[7]), .B2(n55), .C1(
        n119), .C2(sr[7]), .ZN(n35) );
  AOI32D0BWP12T30P140 U96 ( .A1(n37), .A2(n53), .A3(n36), .B1(wb_adr_i[2]), 
        .B2(n35), .ZN(N50) );
  AOI22D0BWP12T30P140 U97 ( .A1(n50), .A2(ctr[5]), .B1(n119), .B2(prer[5]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U98 ( .A1(n59), .A2(rxr[5]), .B1(n55), .B2(prer[13]), 
        .ZN(n39) );
  AOI222D0BWP12T30P140 U99 ( .A1(n50), .A2(cr[5]), .B1(txr[5]), .B2(n55), .C1(
        n119), .C2(sr[5]), .ZN(n38) );
  AOI32D0BWP12T30P140 U100 ( .A1(n40), .A2(n53), .A3(n39), .B1(wb_adr_i[2]), 
        .B2(n38), .ZN(N48) );
  ND2D0BWP12T30P140 U101 ( .A1(wb_adr_i[2]), .A2(n55), .ZN(n63) );
  INVD0BWP12T30P140 U102 ( .I(ctr[2]), .ZN(n69) );
  AOI22D0BWP12T30P140 U103 ( .A1(n55), .A2(prer[10]), .B1(n119), .B2(prer[2]), 
        .ZN(n41) );
  OAI21D0BWP12T30P140 U104 ( .A1(n57), .A2(n69), .B(n41), .ZN(n42) );
  AOI21D0BWP12T30P140 U105 ( .A1(n59), .A2(rxr[2]), .B(n42), .ZN(n43) );
  ND2D0BWP12T30P140 U106 ( .A1(wb_adr_i[2]), .A2(n50), .ZN(n60) );
  INVD0BWP12T30P140 U107 ( .I(cr[2]), .ZN(n66) );
  OAI222D0BWP12T30P140 U108 ( .A1(n63), .A2(n44), .B1(wb_adr_i[2]), .B2(n43), 
        .C1(n60), .C2(n66), .ZN(n113) );
  INVD0BWP12T30P140 U109 ( .I(ctr[3]), .ZN(n70) );
  AOI22D0BWP12T30P140 U110 ( .A1(n55), .A2(prer[11]), .B1(n119), .B2(prer[3]), 
        .ZN(n45) );
  OAI21D0BWP12T30P140 U111 ( .A1(n57), .A2(n70), .B(n45), .ZN(n46) );
  AOI21D0BWP12T30P140 U112 ( .A1(n59), .A2(rxr[3]), .B(n46), .ZN(n48) );
  OAI222D0BWP12T30P140 U113 ( .A1(n63), .A2(n49), .B1(wb_adr_i[2]), .B2(n48), 
        .C1(n60), .C2(n47), .ZN(n112) );
  AOI22D0BWP12T30P140 U114 ( .A1(n55), .A2(prer[14]), .B1(n119), .B2(prer[6]), 
        .ZN(n54) );
  AOI22D0BWP12T30P140 U115 ( .A1(n50), .A2(ctr[6]), .B1(n59), .B2(rxr[6]), 
        .ZN(n52) );
  AOI222D0BWP12T30P140 U116 ( .A1(n50), .A2(cr[6]), .B1(txr[6]), .B2(n55), 
        .C1(n119), .C2(sr[6]), .ZN(n51) );
  AOI32D0BWP12T30P140 U117 ( .A1(n54), .A2(n53), .A3(n52), .B1(wb_adr_i[2]), 
        .B2(n51), .ZN(N49) );
  INVD0BWP12T30P140 U118 ( .I(ctr[4]), .ZN(n115) );
  AOI22D0BWP12T30P140 U119 ( .A1(n55), .A2(prer[12]), .B1(n119), .B2(prer[4]), 
        .ZN(n56) );
  OAI21D0BWP12T30P140 U120 ( .A1(n57), .A2(n115), .B(n56), .ZN(n58) );
  AOI21D0BWP12T30P140 U121 ( .A1(n59), .A2(rxr[4]), .B(n58), .ZN(n61) );
  OAI222D0BWP12T30P140 U122 ( .A1(n63), .A2(n62), .B1(wb_adr_i[2]), .B2(n61), 
        .C1(n60), .C2(n65), .ZN(n111) );
  AOI21D0BWP12T30P140 U123 ( .A1(n65), .A2(n64), .B(n142), .ZN(N116) );
  AN2D0BWP12T30P140 U124 ( .A1(irxack), .A2(n117), .Z(N115) );
  OAI22D0BWP12T30P140 U125 ( .A1(n135), .A2(n68), .B1(n67), .B2(n66), .ZN(n73)
         );
  OAI22D0BWP12T30P140 U126 ( .A1(n116), .A2(n69), .B1(n135), .B2(n114), .ZN(
        n105) );
  OAI22D0BWP12T30P140 U127 ( .A1(n116), .A2(n70), .B1(n137), .B2(n114), .ZN(
        n106) );
  OAI22D0BWP12T30P140 U128 ( .A1(n116), .A2(n115), .B1(n139), .B2(n114), .ZN(
        n107) );
  INVD0BWP12T30P140 U129 ( .I(n117), .ZN(n150) );
  ND2D0BWP12T30P140 U130 ( .A1(n119), .A2(n118), .ZN(n128) );
  AOI21D0BWP12T30P140 U131 ( .A1(prer[0]), .A2(n128), .B(n150), .ZN(n120) );
  OAI21D0BWP12T30P140 U132 ( .A1(n131), .A2(n128), .B(n120), .ZN(n79) );
  AOI21D0BWP12T30P140 U133 ( .A1(prer[1]), .A2(n128), .B(n150), .ZN(n121) );
  OAI21D0BWP12T30P140 U134 ( .A1(n133), .A2(n128), .B(n121), .ZN(n80) );
  AOI21D0BWP12T30P140 U135 ( .A1(prer[2]), .A2(n128), .B(n150), .ZN(n122) );
  OAI21D0BWP12T30P140 U136 ( .A1(n135), .A2(n128), .B(n122), .ZN(n81) );
  AOI21D0BWP12T30P140 U137 ( .A1(prer[3]), .A2(n128), .B(n150), .ZN(n123) );
  OAI21D0BWP12T30P140 U138 ( .A1(n137), .A2(n128), .B(n123), .ZN(n82) );
  AOI21D0BWP12T30P140 U139 ( .A1(prer[4]), .A2(n128), .B(n150), .ZN(n124) );
  OAI21D0BWP12T30P140 U140 ( .A1(n139), .A2(n128), .B(n124), .ZN(n83) );
  AOI21D0BWP12T30P140 U141 ( .A1(prer[5]), .A2(n128), .B(n150), .ZN(n125) );
  OAI21D0BWP12T30P140 U142 ( .A1(n141), .A2(n128), .B(n125), .ZN(n84) );
  AOI21D0BWP12T30P140 U143 ( .A1(prer[6]), .A2(n128), .B(n150), .ZN(n126) );
  OAI21D0BWP12T30P140 U144 ( .A1(n145), .A2(n128), .B(n126), .ZN(n85) );
  AOI21D0BWP12T30P140 U145 ( .A1(prer[7]), .A2(n128), .B(n150), .ZN(n127) );
  OAI21D0BWP12T30P140 U146 ( .A1(n129), .A2(n128), .B(n127), .ZN(n86) );
  AOI21D0BWP12T30P140 U147 ( .A1(prer[8]), .A2(n144), .B(n150), .ZN(n130) );
  OAI21D0BWP12T30P140 U148 ( .A1(n131), .A2(n144), .B(n130), .ZN(n87) );
  AOI21D0BWP12T30P140 U149 ( .A1(prer[9]), .A2(n144), .B(n150), .ZN(n132) );
  OAI21D0BWP12T30P140 U150 ( .A1(n133), .A2(n144), .B(n132), .ZN(n88) );
  AOI21D0BWP12T30P140 U151 ( .A1(prer[10]), .A2(n144), .B(n142), .ZN(n134) );
  OAI21D0BWP12T30P140 U152 ( .A1(n135), .A2(n144), .B(n134), .ZN(n89) );
  AOI21D0BWP12T30P140 U153 ( .A1(prer[11]), .A2(n144), .B(n142), .ZN(n136) );
  OAI21D0BWP12T30P140 U154 ( .A1(n137), .A2(n144), .B(n136), .ZN(n90) );
  AOI21D0BWP12T30P140 U155 ( .A1(prer[12]), .A2(n144), .B(n142), .ZN(n138) );
  OAI21D0BWP12T30P140 U156 ( .A1(n139), .A2(n144), .B(n138), .ZN(n91) );
  AOI21D0BWP12T30P140 U157 ( .A1(prer[13]), .A2(n144), .B(n142), .ZN(n140) );
  OAI21D0BWP12T30P140 U158 ( .A1(n141), .A2(n144), .B(n140), .ZN(n92) );
  AOI21D0BWP12T30P140 U159 ( .A1(prer[14]), .A2(n144), .B(n142), .ZN(n143) );
  OAI21D0BWP12T30P140 U160 ( .A1(n145), .A2(n144), .B(n143), .ZN(n93) );
  CKBD0BWP12T30P140 U161 ( .I(wb_clk_i), .Z(n152) );
  CKBD0BWP12T30P140 U162 ( .I(wb_clk_i), .Z(n153) );
  CKBD0BWP12T30P140 U163 ( .I(wb_clk_i), .Z(n151) );
  CKBD0BWP12T30P140 U164 ( .I(arst_i), .Z(n148) );
  CKBD0BWP12T30P140 U165 ( .I(arst_i), .Z(n149) );
  NR3D0BWP12T30P140 U166 ( .A1(n150), .A2(n147), .A3(n146), .ZN(N121) );
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
  wire   N52, N53, N54, N55, N56, N57, N58, N59, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114;

  DFQD2BWP12T30P140 myReg0_reg_3_ ( .D(n86), .CP(n113), .Q(myReg0[3]) );
  DFQD2BWP12T30P140 myReg1_reg_4_ ( .D(n79), .CP(n113), .Q(myReg1[4]) );
  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(N54), .CP(n113), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(N53), .CP(n113), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 myReg2_reg_4_ ( .D(n71), .CP(clk), .Q(myReg2[4]) );
  DFQD2BWP12T30P140 myReg2_reg_1_ ( .D(n68), .CP(clk), .Q(myReg2[1]) );
  DFQD2BWP12T30P140 myReg2_reg_7_ ( .D(n74), .CP(clk), .Q(myReg2[7]) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(N59), .CP(n114), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 dataOut_reg_6_ ( .D(N58), .CP(n114), .Q(dataOut[6]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(N57), .CP(n114), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_3_ ( .D(N55), .CP(n114), .Q(dataOut[3]) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(N52), .CP(n114), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 myReg1_reg_2_ ( .D(n77), .CP(n113), .Q(myReg1[2]) );
  DFQD2BWP12T30P140 myReg2_reg_2_ ( .D(n69), .CP(n113), .Q(myReg2[2]) );
  DFQD2BWP12T30P140 myReg1_reg_7_ ( .D(n82), .CP(n113), .Q(myReg1[7]) );
  DFQD2BWP12T30P140 myReg1_reg_6_ ( .D(n81), .CP(n113), .Q(myReg1[6]) );
  DFQD2BWP12T30P140 myReg1_reg_3_ ( .D(n78), .CP(n113), .Q(myReg1[3]) );
  DFQD2BWP12T30P140 myReg1_reg_0_ ( .D(n75), .CP(n113), .Q(myReg1[0]) );
  DFQD2BWP12T30P140 myReg2_reg_5_ ( .D(n72), .CP(n113), .Q(myReg2[5]) );
  DFQD2BWP12T30P140 myReg3_reg_7_ ( .D(n66), .CP(n113), .Q(myReg3[7]) );
  DFQD2BWP12T30P140 myReg3_reg_5_ ( .D(n64), .CP(n113), .Q(myReg3[5]) );
  DFQD2BWP12T30P140 myReg0_reg_2_ ( .D(n85), .CP(n113), .Q(myReg0[2]) );
  DFQD2BWP12T30P140 myReg0_reg_1_ ( .D(n84), .CP(n113), .Q(myReg0[1]) );
  DFQD2BWP12T30P140 myReg0_reg_0_ ( .D(n83), .CP(n113), .Q(myReg0[0]) );
  DFQD2BWP12T30P140 myReg1_reg_1_ ( .D(n76), .CP(n113), .Q(myReg1[1]) );
  DFQD2BWP12T30P140 myReg3_reg_3_ ( .D(n62), .CP(n114), .Q(myReg3[3]) );
  DFQD2BWP12T30P140 myReg0_reg_4_ ( .D(n87), .CP(n114), .Q(myReg0[4]) );
  DFQD2BWP12T30P140 myReg2_reg_6_ ( .D(n73), .CP(n114), .Q(myReg2[6]) );
  DFQD2BWP12T30P140 myReg3_reg_6_ ( .D(n65), .CP(n114), .Q(myReg3[6]) );
  DFQD2BWP12T30P140 myReg3_reg_2_ ( .D(n61), .CP(n114), .Q(myReg3[2]) );
  DFQD2BWP12T30P140 myReg3_reg_1_ ( .D(n60), .CP(n114), .Q(myReg3[1]) );
  DFQD2BWP12T30P140 myReg3_reg_0_ ( .D(n59), .CP(n114), .Q(myReg3[0]) );
  DFQD2BWP12T30P140 myReg0_reg_7_ ( .D(n90), .CP(n114), .Q(myReg0[7]) );
  DFQD2BWP12T30P140 myReg0_reg_6_ ( .D(n89), .CP(n114), .Q(myReg0[6]) );
  DFQD2BWP12T30P140 myReg0_reg_5_ ( .D(n88), .CP(n114), .Q(myReg0[5]) );
  DFQD2BWP12T30P140 myReg2_reg_3_ ( .D(n70), .CP(n114), .Q(myReg2[3]) );
  DFQD2BWP12T30P140 myReg2_reg_0_ ( .D(n67), .CP(n114), .Q(myReg2[0]) );
  DFQD2BWP12T30P140 myReg3_reg_4_ ( .D(n63), .CP(n114), .Q(myReg3[4]) );
  DFQD1BWP12T30P140 dataOut_reg_4_ ( .D(N56), .CP(n114), .Q(dataOut[4]) );
  DFQD1BWP12T30P140 myReg1_reg_5_ ( .D(n80), .CP(n113), .Q(myReg1[5]) );
  INVD0BWP12T30P140 U3 ( .I(addr[1]), .ZN(n42) );
  NR4D0BWP12T30P140 U4 ( .A1(addr[5]), .A2(addr[6]), .A3(addr[3]), .A4(addr[4]), .ZN(n33) );
  INR2D1BWP12T30P140 U5 ( .A1(n33), .B1(addr[7]), .ZN(n44) );
  ND2D0BWP12T30P140 U6 ( .A1(n42), .A2(n44), .ZN(n47) );
  NR3D0BWP12T30P140 U7 ( .A1(addr[0]), .A2(addr[2]), .A3(n47), .ZN(n109) );
  ND2D0BWP12T30P140 U8 ( .A1(n109), .A2(writeEn), .ZN(n101) );
  INVD0BWP12T30P140 U9 ( .I(n101), .ZN(n104) );
  INVD0BWP12T30P140 U10 ( .I(dataIn[5]), .ZN(n35) );
  MAOI22D0BWP12T30P140 U11 ( .A1(n104), .A2(n35), .B1(myReg0[5]), .B2(n104), 
        .ZN(n88) );
  ND2D0BWP12T30P140 U12 ( .A1(n44), .A2(addr[1]), .ZN(n51) );
  NR3D0BWP12T30P140 U13 ( .A1(addr[0]), .A2(addr[2]), .A3(n51), .ZN(n107) );
  AN2D0BWP12T30P140 U14 ( .A1(n107), .A2(writeEn), .Z(n55) );
  INVD0BWP12T30P140 U15 ( .I(dataIn[3]), .ZN(n103) );
  MAOI22D0BWP12T30P140 U16 ( .A1(n55), .A2(n103), .B1(myReg2[3]), .B2(n55), 
        .ZN(n70) );
  INVD0BWP12T30P140 U17 ( .I(dataIn[0]), .ZN(n36) );
  MAOI22D0BWP12T30P140 U18 ( .A1(n55), .A2(n36), .B1(myReg2[0]), .B2(n55), 
        .ZN(n67) );
  INVD0BWP12T30P140 U19 ( .I(dataIn[6]), .ZN(n37) );
  MAOI22D0BWP12T30P140 U20 ( .A1(n104), .A2(n37), .B1(myReg0[6]), .B2(n104), 
        .ZN(n89) );
  INVD0BWP12T30P140 U21 ( .I(addr[0]), .ZN(n91) );
  NR3D0BWP12T30P140 U22 ( .A1(addr[2]), .A2(n91), .A3(n51), .ZN(n108) );
  AN2D0BWP12T30P140 U23 ( .A1(n108), .A2(writeEn), .Z(n34) );
  INVD0BWP12T30P140 U24 ( .I(dataIn[4]), .ZN(n99) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n34), .A2(n99), .B1(myReg3[4]), .B2(n34), 
        .ZN(n63) );
  INVD0BWP12T30P140 U26 ( .I(dataIn[7]), .ZN(n53) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n104), .A2(n53), .B1(myReg0[7]), .B2(n104), 
        .ZN(n90) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n34), .A2(n36), .B1(myReg3[0]), .B2(n34), 
        .ZN(n59) );
  INVD0BWP12T30P140 U29 ( .I(dataIn[1]), .ZN(n54) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n34), .A2(n54), .B1(myReg3[1]), .B2(n34), 
        .ZN(n60) );
  INVD0BWP12T30P140 U31 ( .I(dataIn[2]), .ZN(n38) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n34), .A2(n38), .B1(myReg3[2]), .B2(n34), 
        .ZN(n61) );
  MAOI22D0BWP12T30P140 U33 ( .A1(n34), .A2(n37), .B1(myReg3[6]), .B2(n34), 
        .ZN(n65) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n55), .A2(n37), .B1(myReg2[6]), .B2(n55), 
        .ZN(n73) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n104), .A2(n99), .B1(myReg0[4]), .B2(n104), 
        .ZN(n87) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n34), .A2(n103), .B1(myReg3[3]), .B2(n34), 
        .ZN(n62) );
  NR3D0BWP12T30P140 U37 ( .A1(addr[2]), .A2(n91), .A3(n47), .ZN(n110) );
  ND2D0BWP12T30P140 U38 ( .A1(n110), .A2(writeEn), .ZN(n97) );
  INVD0BWP12T30P140 U39 ( .I(n97), .ZN(n100) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n100), .A2(n54), .B1(myReg1[1]), .B2(n100), 
        .ZN(n76) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n100), .A2(n35), .B1(myReg1[5]), .B2(n100), 
        .ZN(n80) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n104), .A2(n36), .B1(myReg0[0]), .B2(n104), 
        .ZN(n83) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n104), .A2(n54), .B1(myReg0[1]), .B2(n104), 
        .ZN(n84) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n104), .A2(n38), .B1(myReg0[2]), .B2(n104), 
        .ZN(n85) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n34), .A2(n35), .B1(myReg3[5]), .B2(n34), 
        .ZN(n64) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n34), .A2(n53), .B1(myReg3[7]), .B2(n34), 
        .ZN(n66) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n55), .A2(n35), .B1(myReg2[5]), .B2(n55), 
        .ZN(n72) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n100), .A2(n36), .B1(myReg1[0]), .B2(n100), 
        .ZN(n75) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n100), .A2(n103), .B1(myReg1[3]), .B2(n100), 
        .ZN(n78) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n100), .A2(n37), .B1(myReg1[6]), .B2(n100), 
        .ZN(n81) );
  MAOI22D0BWP12T30P140 U51 ( .A1(n100), .A2(n53), .B1(myReg1[7]), .B2(n100), 
        .ZN(n82) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n55), .A2(n38), .B1(myReg2[2]), .B2(n55), 
        .ZN(n69) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n100), .A2(n38), .B1(myReg1[2]), .B2(n100), 
        .ZN(n77) );
  INVD0BWP12T30P140 U54 ( .I(n109), .ZN(n41) );
  INVD0BWP12T30P140 U55 ( .I(myReg0[3]), .ZN(n102) );
  AOI22D0BWP12T30P140 U56 ( .A1(n110), .A2(myReg1[3]), .B1(n107), .B2(
        myReg2[3]), .ZN(n40) );
  INVD0BWP12T30P140 U57 ( .I(n51), .ZN(n92) );
  OAI211D0BWP12T30P140 U58 ( .A1(addr[2]), .A2(myReg3[3]), .B(addr[0]), .C(n92), .ZN(n39) );
  OAI211D0BWP12T30P140 U59 ( .A1(n41), .A2(n102), .B(n40), .C(n39), .ZN(N55)
         );
  AOI221D0BWP12T30P140 U60 ( .A1(myReg2[4]), .A2(addr[1]), .B1(myReg0[4]), 
        .B2(n42), .C(addr[0]), .ZN(n46) );
  INVD0BWP12T30P140 U61 ( .I(myReg1[4]), .ZN(n98) );
  OAI21D0BWP12T30P140 U62 ( .A1(addr[1]), .A2(n98), .B(addr[0]), .ZN(n43) );
  AOI22D0BWP12T30P140 U63 ( .A1(n44), .A2(n43), .B1(n92), .B2(myReg3[4]), .ZN(
        n45) );
  ND2D0BWP12T30P140 U64 ( .A1(addr[2]), .A2(n44), .ZN(n56) );
  OAI21D0BWP12T30P140 U65 ( .A1(n46), .A2(n45), .B(n56), .ZN(N56) );
  INVD0BWP12T30P140 U66 ( .I(n47), .ZN(n93) );
  AOI22D0BWP12T30P140 U67 ( .A1(n92), .A2(myReg3[5]), .B1(n93), .B2(myReg1[5]), 
        .ZN(n49) );
  AOI22D0BWP12T30P140 U68 ( .A1(n107), .A2(myReg2[5]), .B1(n109), .B2(
        myReg0[5]), .ZN(n48) );
  AOI32D0BWP12T30P140 U69 ( .A1(n49), .A2(n48), .A3(n56), .B1(n91), .B2(n48), 
        .ZN(N57) );
  AOI221D0BWP12T30P140 U70 ( .A1(myReg3[6]), .A2(addr[0]), .B1(myReg2[6]), 
        .B2(n91), .C(addr[2]), .ZN(n52) );
  AOI22D0BWP12T30P140 U71 ( .A1(n110), .A2(myReg1[6]), .B1(n109), .B2(
        myReg0[6]), .ZN(n50) );
  OAI21D0BWP12T30P140 U72 ( .A1(n52), .A2(n51), .B(n50), .ZN(N58) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n55), .A2(n53), .B1(myReg2[7]), .B2(n55), 
        .ZN(n74) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n55), .A2(n54), .B1(myReg2[1]), .B2(n55), 
        .ZN(n68) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n55), .A2(n99), .B1(myReg2[4]), .B2(n55), 
        .ZN(n71) );
  AOI22D0BWP12T30P140 U76 ( .A1(n92), .A2(myReg2[1]), .B1(n93), .B2(myReg0[1]), 
        .ZN(n58) );
  AOI22D0BWP12T30P140 U77 ( .A1(n108), .A2(myReg3[1]), .B1(n110), .B2(
        myReg1[1]), .ZN(n57) );
  AOI32D0BWP12T30P140 U78 ( .A1(n58), .A2(n57), .A3(n56), .B1(addr[0]), .B2(
        n57), .ZN(N53) );
  OAI211D0BWP12T30P140 U79 ( .A1(addr[2]), .A2(myReg2[2]), .B(n92), .C(n91), 
        .ZN(n96) );
  OAI211D0BWP12T30P140 U80 ( .A1(addr[2]), .A2(myReg1[2]), .B(addr[0]), .C(n93), .ZN(n95) );
  AOI22D0BWP12T30P140 U81 ( .A1(n108), .A2(myReg3[2]), .B1(n109), .B2(
        myReg0[2]), .ZN(n94) );
  ND3D0BWP12T30P140 U82 ( .A1(n96), .A2(n95), .A3(n94), .ZN(N54) );
  AOI22D0BWP12T30P140 U83 ( .A1(n100), .A2(n99), .B1(n98), .B2(n97), .ZN(n79)
         );
  AOI22D0BWP12T30P140 U84 ( .A1(n104), .A2(n103), .B1(n102), .B2(n101), .ZN(
        n86) );
  CKBD0BWP12T30P140 U85 ( .I(clk), .Z(n113) );
  CKBD0BWP12T30P140 U86 ( .I(clk), .Z(n114) );
  AOI22D0BWP12T30P140 U87 ( .A1(n108), .A2(myReg3[0]), .B1(n107), .B2(
        myReg2[0]), .ZN(n106) );
  AOI22D0BWP12T30P140 U88 ( .A1(n110), .A2(myReg1[0]), .B1(n109), .B2(
        myReg0[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U89 ( .A1(n106), .A2(n105), .ZN(N52) );
  AOI22D0BWP12T30P140 U90 ( .A1(n108), .A2(myReg3[7]), .B1(n107), .B2(
        myReg2[7]), .ZN(n112) );
  AOI22D0BWP12T30P140 U91 ( .A1(n110), .A2(myReg1[7]), .B1(n109), .B2(
        myReg0[7]), .ZN(n111) );
  ND2D0BWP12T30P140 U92 ( .A1(n112), .A2(n111), .ZN(N59) );
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
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223;
  wire   [3:0] CurrState_SISt;
  wire   [1:0] streamSt;
  wire   [7:0] txData;
  wire   [7:0] rxData;
  wire   [2:0] bitCnt;

  DFQD2BWP12T30P140 dataOut_reg_2_ ( .D(n189), .CP(n221), .Q(dataOut[2]) );
  DFQD2BWP12T30P140 dataOut_reg_1_ ( .D(n188), .CP(n221), .Q(dataOut[1]) );
  DFQD2BWP12T30P140 bitCnt_reg_1_ ( .D(n198), .CP(n221), .Q(bitCnt[1]) );
  DFQD2BWP12T30P140 dataOut_reg_0_ ( .D(n187), .CP(n221), .Q(dataOut[0]) );
  DFQD2BWP12T30P140 txData_reg_1_ ( .D(n182), .CP(n221), .Q(txData[1]) );
  DFQD2BWP12T30P140 txData_reg_2_ ( .D(n181), .CP(n221), .Q(txData[2]) );
  DFQD2BWP12T30P140 txData_reg_3_ ( .D(n180), .CP(n221), .Q(txData[3]) );
  DFQD2BWP12T30P140 txData_reg_4_ ( .D(n179), .CP(n221), .Q(txData[4]) );
  DFQD2BWP12T30P140 txData_reg_0_ ( .D(n183), .CP(n221), .Q(txData[0]) );
  DFQD2BWP12T30P140 rxData_reg_6_ ( .D(n175), .CP(n223), .Q(rxData[6]) );
  DFQD2BWP12T30P140 dataOut_reg_6_ ( .D(n193), .CP(n222), .Q(dataOut[6]) );
  DFQD2BWP12T30P140 dataOut_reg_5_ ( .D(n192), .CP(n222), .Q(dataOut[5]) );
  DFQD2BWP12T30P140 dataOut_reg_4_ ( .D(n191), .CP(n222), .Q(dataOut[4]) );
  DFQD2BWP12T30P140 txData_reg_7_ ( .D(n184), .CP(n223), .Q(txData[7]) );
  DFQD2BWP12T30P140 sdaOut_reg ( .D(n196), .CP(n223), .Q(sdaOut) );
  DFQD2BWP12T30P140 dataOut_reg_7_ ( .D(n194), .CP(n222), .Q(dataOut[7]) );
  DFQD2BWP12T30P140 txData_reg_5_ ( .D(n178), .CP(n223), .Q(txData[5]) );
  DFQD2BWP12T30P140 txData_reg_6_ ( .D(n177), .CP(n223), .Q(txData[6]) );
  DFQD2BWP12T30P140 bitCnt_reg_2_ ( .D(n199), .CP(n221), .Q(bitCnt[2]) );
  DFQD2BWP12T30P140 rxData_reg_4_ ( .D(n173), .CP(n223), .Q(rxData[4]) );
  DFQD2BWP12T30P140 bitCnt_reg_0_ ( .D(n197), .CP(n222), .Q(bitCnt[0]) );
  DFQD2BWP12T30P140 rxData_reg_5_ ( .D(n174), .CP(n223), .Q(rxData[5]) );
  DFQD2BWP12T30P140 rxData_reg_1_ ( .D(n170), .CP(n223), .Q(rxData[1]) );
  DFQD2BWP12T30P140 rxData_reg_2_ ( .D(n171), .CP(n223), .Q(rxData[2]) );
  DFQD2BWP12T30P140 regAddr_reg_7_ ( .D(n162), .CP(n223), .Q(regAddr[7]) );
  DFQD2BWP12T30P140 clearStartStopDet_reg ( .D(n200), .CP(n221), .Q(
        clearStartStopDet) );
  DFQD2BWP12T30P140 regAddr_reg_5_ ( .D(n164), .CP(n221), .Q(regAddr[5]) );
  DFQD2BWP12T30P140 regAddr_reg_4_ ( .D(n165), .CP(n223), .Q(regAddr[4]) );
  DFQD2BWP12T30P140 regAddr_reg_6_ ( .D(n163), .CP(n222), .Q(regAddr[6]) );
  DFQD2BWP12T30P140 writeEn_reg ( .D(n195), .CP(n222), .Q(writeEn) );
  DFQD2BWP12T30P140 streamSt_reg_0_ ( .D(n185), .CP(n222), .Q(streamSt[0]) );
  DFQD2BWP12T30P140 rxData_reg_0_ ( .D(n205), .CP(n223), .Q(rxData[0]) );
  DFQD2BWP12T30P140 regAddr_reg_3_ ( .D(n166), .CP(n222), .Q(regAddr[3]) );
  DFQD2BWP12T30P140 streamSt_reg_1_ ( .D(n186), .CP(n222), .Q(streamSt[1]) );
  DFQD2BWP12T30P140 regAddr_reg_1_ ( .D(n168), .CP(n223), .Q(regAddr[1]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_0_ ( .D(n203), .CP(n222), .Q(
        CurrState_SISt[0]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_1_ ( .D(n202), .CP(n222), .Q(
        CurrState_SISt[1]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_2_ ( .D(n201), .CP(n222), .Q(
        CurrState_SISt[2]) );
  DFQD2BWP12T30P140 regAddr_reg_2_ ( .D(n167), .CP(n221), .Q(regAddr[2]) );
  DFQD2BWP12T30P140 CurrState_SISt_reg_3_ ( .D(n204), .CP(n222), .Q(
        CurrState_SISt[3]) );
  DFQD1BWP12T30P140 dataOut_reg_3_ ( .D(n190), .CP(n221), .Q(dataOut[3]) );
  DFQD1BWP12T30P140 rxData_reg_3_ ( .D(n172), .CP(n223), .Q(rxData[3]) );
  DFQD1BWP12T30P140 rxData_reg_7_ ( .D(n176), .CP(n223), .Q(rxData[7]) );
  DFQD1BWP12T30P140 regAddr_reg_0_ ( .D(n169), .CP(n222), .Q(regAddr[0]) );
  INVD0BWP12T30P140 U3 ( .I(rxData[3]), .ZN(n52) );
  INVD0BWP12T30P140 U4 ( .I(bitCnt[1]), .ZN(n14) );
  INVD0BWP12T30P140 U5 ( .I(bitCnt[0]), .ZN(n213) );
  NR2D0BWP12T30P140 U6 ( .A1(n14), .A2(n213), .ZN(n48) );
  ND2D0BWP12T30P140 U7 ( .A1(n48), .A2(bitCnt[2]), .ZN(n98) );
  INVD0BWP12T30P140 U8 ( .I(n98), .ZN(n83) );
  INVD0BWP12T30P140 U9 ( .I(CurrState_SISt[0]), .ZN(n110) );
  NR2D0BWP12T30P140 U10 ( .A1(n110), .A2(CurrState_SISt[1]), .ZN(n99) );
  ND3D0BWP12T30P140 U11 ( .A1(CurrState_SISt[2]), .A2(n99), .A3(
        CurrState_SISt[3]), .ZN(n66) );
  NR2D0BWP12T30P140 U12 ( .A1(rst), .A2(n66), .ZN(n132) );
  ND4D0BWP12T30P140 U13 ( .A1(streamSt[1]), .A2(streamSt[0]), .A3(n83), .A4(
        n132), .ZN(n136) );
  INVD0BWP12T30P140 U14 ( .I(rst), .ZN(n70) );
  ND2D0BWP12T30P140 U15 ( .A1(CurrState_SISt[3]), .A2(n70), .ZN(n122) );
  INVD0BWP12T30P140 U16 ( .I(CurrState_SISt[2]), .ZN(n102) );
  ND2D0BWP12T30P140 U17 ( .A1(n102), .A2(n99), .ZN(n65) );
  OR2D0BWP12T30P140 U18 ( .A1(n122), .A2(n65), .Z(n153) );
  ND3D0BWP12T30P140 U19 ( .A1(streamSt[1]), .A2(streamSt[0]), .A3(n83), .ZN(n1) );
  ND2D0BWP12T30P140 U20 ( .A1(n70), .A2(CurrState_SISt[2]), .ZN(n92) );
  INR3D1BWP12T30P140 U21 ( .A1(n99), .B1(CurrState_SISt[3]), .B2(n92), .ZN(
        n134) );
  INVD0BWP12T30P140 U22 ( .I(CurrState_SISt[1]), .ZN(n104) );
  INVD0BWP12T30P140 U23 ( .I(CurrState_SISt[3]), .ZN(n94) );
  ND4D0BWP12T30P140 U24 ( .A1(CurrState_SISt[2]), .A2(n110), .A3(n104), .A4(
        n94), .ZN(n25) );
  NR2D0BWP12T30P140 U25 ( .A1(rst), .A2(n25), .ZN(n133) );
  AOI211D0BWP12T30P140 U26 ( .A1(n132), .A2(n1), .B(n134), .C(n133), .ZN(n6)
         );
  NR2D0BWP12T30P140 U27 ( .A1(n104), .A2(n110), .ZN(n88) );
  INVD0BWP12T30P140 U28 ( .I(n88), .ZN(n4) );
  OR2D0BWP12T30P140 U29 ( .A1(n92), .A2(n94), .Z(n32) );
  NR2D0BWP12T30P140 U30 ( .A1(n4), .A2(n32), .ZN(n20) );
  NR2D0BWP12T30P140 U31 ( .A1(CurrState_SISt[2]), .A2(CurrState_SISt[0]), .ZN(
        n108) );
  INVD0BWP12T30P140 U32 ( .I(n108), .ZN(n2) );
  NR2D0BWP12T30P140 U33 ( .A1(n2), .A2(n122), .ZN(n5) );
  ND2D0BWP12T30P140 U34 ( .A1(CurrState_SISt[1]), .A2(n5), .ZN(n21) );
  ND2D0BWP12T30P140 U35 ( .A1(n94), .A2(CurrState_SISt[0]), .ZN(n105) );
  INVD0BWP12T30P140 U36 ( .I(n105), .ZN(n35) );
  ND3D0BWP12T30P140 U37 ( .A1(n70), .A2(n35), .A3(CurrState_SISt[1]), .ZN(n24)
         );
  ND2D0BWP12T30P140 U38 ( .A1(n21), .A2(n24), .ZN(n38) );
  NR2D0BWP12T30P140 U39 ( .A1(n20), .A2(n38), .ZN(n62) );
  NR3D0BWP12T30P140 U40 ( .A1(CurrState_SISt[0]), .A2(n92), .A3(n104), .ZN(n9)
         );
  NR4D0BWP12T30P140 U41 ( .A1(rst), .A2(CurrState_SISt[3]), .A3(n104), .A4(n2), 
        .ZN(n90) );
  NR2D0BWP12T30P140 U42 ( .A1(n32), .A2(CurrState_SISt[0]), .ZN(n73) );
  INVD0BWP12T30P140 U43 ( .I(n65), .ZN(n71) );
  ND3D0BWP12T30P140 U44 ( .A1(n94), .A2(n70), .A3(n71), .ZN(n39) );
  INVD0BWP12T30P140 U45 ( .I(n39), .ZN(n212) );
  NR4D0BWP12T30P140 U46 ( .A1(n9), .A2(n90), .A3(n73), .A4(n212), .ZN(n3) );
  ND2D0BWP12T30P140 U47 ( .A1(n62), .A2(n3), .ZN(n151) );
  NR3D0BWP12T30P140 U48 ( .A1(CurrState_SISt[2]), .A2(n4), .A3(n122), .ZN(n8)
         );
  NR3D0BWP12T30P140 U49 ( .A1(n151), .A2(n5), .A3(n8), .ZN(n137) );
  ND3D0BWP12T30P140 U50 ( .A1(n153), .A2(n6), .A3(n137), .ZN(n46) );
  MOAI22D0BWP12T30P140 U51 ( .A1(n52), .A2(n136), .B1(dataOut[3]), .B2(n46), 
        .ZN(n190) );
  INVD0BWP12T30P140 U52 ( .I(rxData[2]), .ZN(n208) );
  MOAI22D0BWP12T30P140 U53 ( .A1(n208), .A2(n136), .B1(dataOut[2]), .B2(n46), 
        .ZN(n189) );
  INVD0BWP12T30P140 U54 ( .I(rxData[1]), .ZN(n207) );
  MOAI22D0BWP12T30P140 U55 ( .A1(n207), .A2(n136), .B1(dataOut[1]), .B2(n46), 
        .ZN(n188) );
  NR2D0BWP12T30P140 U56 ( .A1(bitCnt[1]), .A2(bitCnt[0]), .ZN(n16) );
  INVD0BWP12T30P140 U57 ( .I(n133), .ZN(n155) );
  NR2D0BWP12T30P140 U58 ( .A1(n155), .A2(scl), .ZN(n11) );
  INVD0BWP12T30P140 U59 ( .I(n11), .ZN(n76) );
  ND2D0BWP12T30P140 U60 ( .A1(n9), .A2(n94), .ZN(n27) );
  INVD0BWP12T30P140 U61 ( .I(n27), .ZN(n17) );
  INVD0BWP12T30P140 U62 ( .I(bitCnt[2]), .ZN(n50) );
  ND2D0BWP12T30P140 U63 ( .A1(n16), .A2(n50), .ZN(n86) );
  AOI21D0BWP12T30P140 U64 ( .A1(n17), .A2(n86), .B(n132), .ZN(n7) );
  OAI31D0BWP12T30P140 U65 ( .A1(startStopDetState[0]), .A2(
        startStopDetState[1]), .A3(n76), .B(n7), .ZN(n210) );
  IND2D1BWP12T30P140 U66 ( .A1(n48), .B1(n210), .ZN(n15) );
  INVD0BWP12T30P140 U67 ( .I(streamSt[0]), .ZN(n58) );
  NR2D0BWP12T30P140 U68 ( .A1(streamSt[1]), .A2(n58), .ZN(n79) );
  NR2D0BWP12T30P140 U69 ( .A1(n39), .A2(n79), .ZN(n89) );
  NR3D0BWP12T30P140 U70 ( .A1(n134), .A2(n8), .A3(n90), .ZN(n29) );
  IOA21D0BWP12T30P140 U71 ( .A1(CurrState_SISt[3]), .A2(n9), .B(n29), .ZN(n74)
         );
  ND2D0BWP12T30P140 U72 ( .A1(n83), .A2(n132), .ZN(n130) );
  INVD0BWP12T30P140 U73 ( .I(scl), .ZN(n116) );
  INVD0BWP12T30P140 U74 ( .I(n62), .ZN(n72) );
  NR3D0BWP12T30P140 U75 ( .A1(CurrState_SISt[1]), .A2(CurrState_SISt[2]), .A3(
        n122), .ZN(n19) );
  AOI211D0BWP12T30P140 U76 ( .A1(n73), .A2(n116), .B(n72), .C(n19), .ZN(n28)
         );
  IND3D1BWP12T30P140 U77 ( .A1(n74), .B1(n130), .B2(n28), .ZN(n10) );
  AOI21D0BWP12T30P140 U78 ( .A1(n133), .A2(scl), .B(n10), .ZN(n13) );
  OAI21D0BWP12T30P140 U79 ( .A1(startStopDetState[0]), .A2(
        startStopDetState[1]), .B(n11), .ZN(n12) );
  ND2D0BWP12T30P140 U80 ( .A1(n13), .A2(n12), .ZN(n211) );
  NR2D0BWP12T30P140 U81 ( .A1(n89), .A2(n211), .ZN(n51) );
  OAI22D0BWP12T30P140 U82 ( .A1(n16), .A2(n15), .B1(n51), .B2(n14), .ZN(n198)
         );
  INVD0BWP12T30P140 U83 ( .I(n136), .ZN(n47) );
  AO22D0BWP12T30P140 U84 ( .A1(rxData[0]), .A2(n47), .B1(dataOut[0]), .B2(n46), 
        .Z(n187) );
  INVD0BWP12T30P140 U85 ( .I(n24), .ZN(n22) );
  OR2D0BWP12T30P140 U86 ( .A1(n73), .A2(n17), .Z(n18) );
  NR2D0BWP12T30P140 U87 ( .A1(n74), .A2(n18), .ZN(n59) );
  INR4D0BWP12T30P140 U88 ( .A1(n59), .B1(n20), .B2(n133), .B3(n19), .ZN(n40)
         );
  ND3D0BWP12T30P140 U89 ( .A1(n40), .A2(n92), .A3(n21), .ZN(n23) );
  AO211D0BWP12T30P140 U90 ( .A1(scl), .A2(n22), .B(n23), .C(n89), .Z(n57) );
  ND2D0BWP12T30P140 U91 ( .A1(n79), .A2(n212), .ZN(n214) );
  INVD0BWP12T30P140 U92 ( .I(n214), .ZN(n56) );
  NR3D0BWP12T30P140 U93 ( .A1(scl), .A2(n24), .A3(n23), .ZN(n55) );
  AO222D0BWP12T30P140 U94 ( .A1(n57), .A2(txData[1]), .B1(n56), .B2(dataIn[1]), 
        .C1(n55), .C2(txData[0]), .Z(n182) );
  AO222D0BWP12T30P140 U95 ( .A1(n57), .A2(txData[3]), .B1(n56), .B2(dataIn[3]), 
        .C1(n55), .C2(txData[2]), .Z(n180) );
  AO222D0BWP12T30P140 U96 ( .A1(n57), .A2(txData[4]), .B1(n56), .B2(dataIn[4]), 
        .C1(n55), .C2(txData[3]), .Z(n179) );
  AO22D0BWP12T30P140 U97 ( .A1(n56), .A2(dataIn[0]), .B1(txData[0]), .B2(n57), 
        .Z(n183) );
  INVD0BWP12T30P140 U98 ( .I(startStopDetState[0]), .ZN(n84) );
  NR2D0BWP12T30P140 U99 ( .A1(startStopDetState[1]), .A2(n84), .ZN(n117) );
  AOI21D0BWP12T30P140 U100 ( .A1(n117), .A2(n116), .B(n25), .ZN(n26) );
  AOI21D0BWP12T30P140 U101 ( .A1(n79), .A2(n71), .B(n26), .ZN(n30) );
  IND4D1BWP12T30P140 U102 ( .A1(n132), .B1(n29), .B2(n28), .B3(n27), .ZN(n31)
         );
  IAO21D0BWP12T30P140 U103 ( .A1(rst), .A2(n30), .B(n31), .ZN(n209) );
  INVD0BWP12T30P140 U104 ( .I(rxData[6]), .ZN(n142) );
  INVD0BWP12T30P140 U105 ( .I(rxData[5]), .ZN(n54) );
  NR2D0BWP12T30P140 U106 ( .A1(n32), .A2(n31), .ZN(n126) );
  INVD0BWP12T30P140 U107 ( .I(n126), .ZN(n206) );
  OAI22D0BWP12T30P140 U108 ( .A1(n209), .A2(n142), .B1(n54), .B2(n206), .ZN(
        n175) );
  MOAI22D0BWP12T30P140 U109 ( .A1(n142), .A2(n136), .B1(dataOut[6]), .B2(n46), 
        .ZN(n193) );
  MOAI22D0BWP12T30P140 U110 ( .A1(n54), .A2(n136), .B1(dataOut[5]), .B2(n46), 
        .ZN(n192) );
  INVD0BWP12T30P140 U111 ( .I(rxData[4]), .ZN(n53) );
  MOAI22D0BWP12T30P140 U112 ( .A1(n53), .A2(n136), .B1(dataOut[4]), .B2(n46), 
        .ZN(n191) );
  AO222D0BWP12T30P140 U113 ( .A1(n57), .A2(txData[7]), .B1(n56), .B2(dataIn[7]), .C1(n55), .C2(txData[6]), .Z(n184) );
  OAI22D0BWP12T30P140 U114 ( .A1(n209), .A2(n52), .B1(n208), .B2(n206), .ZN(
        n172) );
  NR2D0BWP12T30P140 U115 ( .A1(rst), .A2(n108), .ZN(n61) );
  INVD0BWP12T30P140 U116 ( .I(n66), .ZN(n63) );
  NR2D0BWP12T30P140 U117 ( .A1(streamSt[1]), .A2(streamSt[0]), .ZN(n85) );
  NR3D0BWP12T30P140 U118 ( .A1(rxData[1]), .A2(startStopDetState[1]), .A3(n84), 
        .ZN(n34) );
  NR4D0BWP12T30P140 U119 ( .A1(rxData[7]), .A2(rxData[2]), .A3(n142), .A4(n52), 
        .ZN(n33) );
  ND4D0BWP12T30P140 U120 ( .A1(rxData[4]), .A2(rxData[5]), .A3(n34), .A4(n33), 
        .ZN(n127) );
  ND4D0BWP12T30P140 U121 ( .A1(n63), .A2(n83), .A3(n85), .A4(n127), .ZN(n37)
         );
  OAI21D0BWP12T30P140 U122 ( .A1(CurrState_SISt[2]), .A2(txData[7]), .B(n35), 
        .ZN(n36) );
  AN3D0BWP12T30P140 U123 ( .A1(n61), .A2(n37), .A3(n36), .Z(n45) );
  INVD0BWP12T30P140 U124 ( .I(n38), .ZN(n41) );
  OAI211D0BWP12T30P140 U125 ( .A1(n41), .A2(n116), .B(n40), .C(n39), .ZN(n44)
         );
  NR2D0BWP12T30P140 U126 ( .A1(n83), .A2(n66), .ZN(n42) );
  OAI21D0BWP12T30P140 U127 ( .A1(n42), .A2(n44), .B(sdaOut), .ZN(n43) );
  OAI21D0BWP12T30P140 U128 ( .A1(n45), .A2(n44), .B(n43), .ZN(n196) );
  AO22D0BWP12T30P140 U129 ( .A1(rxData[7]), .A2(n47), .B1(dataOut[7]), .B2(n46), .Z(n194) );
  AO222D0BWP12T30P140 U130 ( .A1(n57), .A2(txData[5]), .B1(n56), .B2(dataIn[5]), .C1(n55), .C2(txData[4]), .Z(n178) );
  AO222D0BWP12T30P140 U131 ( .A1(n57), .A2(txData[6]), .B1(n56), .B2(dataIn[6]), .C1(n55), .C2(txData[5]), .Z(n177) );
  OAI211D0BWP12T30P140 U132 ( .A1(n48), .A2(bitCnt[2]), .B(n210), .C(n98), 
        .ZN(n49) );
  OAI21D0BWP12T30P140 U133 ( .A1(n51), .A2(n50), .B(n49), .ZN(n199) );
  OAI22D0BWP12T30P140 U134 ( .A1(n209), .A2(n53), .B1(n52), .B2(n206), .ZN(
        n173) );
  OAI22D0BWP12T30P140 U135 ( .A1(n209), .A2(n54), .B1(n53), .B2(n206), .ZN(
        n174) );
  MOAI22D0BWP12T30P140 U136 ( .A1(n209), .A2(n207), .B1(rxData[0]), .B2(n126), 
        .ZN(n170) );
  AO222D0BWP12T30P140 U137 ( .A1(n57), .A2(txData[2]), .B1(n56), .B2(dataIn[2]), .C1(n55), .C2(txData[1]), .Z(n181) );
  ND3D0BWP12T30P140 U138 ( .A1(n58), .A2(n83), .A3(streamSt[1]), .ZN(n67) );
  INVD0BWP12T30P140 U139 ( .I(writeEn), .ZN(n135) );
  AOI31D0BWP12T30P140 U140 ( .A1(CurrState_SISt[3]), .A2(n71), .A3(n135), .B(
        n133), .ZN(n60) );
  ND4D0BWP12T30P140 U141 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .ZN(n68) );
  NR2D0BWP12T30P140 U142 ( .A1(CurrState_SISt[3]), .A2(n79), .ZN(n101) );
  OR2D0BWP12T30P140 U143 ( .A1(n68), .A2(n101), .Z(n64) );
  AOI21D0BWP12T30P140 U144 ( .A1(n63), .A2(n67), .B(n64), .ZN(n143) );
  INVD0BWP12T30P140 U145 ( .I(regAddr[0]), .ZN(n115) );
  NR2D0BWP12T30P140 U146 ( .A1(n65), .A2(n64), .ZN(n138) );
  NR3D0BWP12T30P140 U147 ( .A1(n68), .A2(n67), .A3(n66), .ZN(n220) );
  AOI22D0BWP12T30P140 U148 ( .A1(n138), .A2(n115), .B1(n220), .B2(rxData[0]), 
        .ZN(n69) );
  OAI21D0BWP12T30P140 U149 ( .A1(n143), .A2(n115), .B(n69), .ZN(n169) );
  ND2D0BWP12T30P140 U150 ( .A1(n71), .A2(n70), .ZN(n78) );
  OAI32D0BWP12T30P140 U151 ( .A1(n74), .A2(scl), .A3(n73), .B1(n72), .B2(n116), 
        .ZN(n109) );
  INVD0BWP12T30P140 U152 ( .I(n109), .ZN(n112) );
  OAI22D0BWP12T30P140 U153 ( .A1(rst), .A2(n110), .B1(n104), .B2(n92), .ZN(n75) );
  OAI21D0BWP12T30P140 U154 ( .A1(n112), .A2(n75), .B(CurrState_SISt[3]), .ZN(
        n77) );
  OAI211D0BWP12T30P140 U155 ( .A1(n79), .A2(n78), .B(n77), .C(n76), .ZN(n204)
         );
  INVD0BWP12T30P140 U156 ( .I(n138), .ZN(n157) );
  ND2D0BWP12T30P140 U157 ( .A1(regAddr[1]), .A2(regAddr[0]), .ZN(n82) );
  AOI32D0BWP12T30P140 U158 ( .A1(regAddr[1]), .A2(n143), .A3(regAddr[0]), .B1(
        n157), .B2(n143), .ZN(n80) );
  AOI22D0BWP12T30P140 U159 ( .A1(regAddr[2]), .A2(n80), .B1(n220), .B2(
        rxData[2]), .ZN(n81) );
  OAI31D0BWP12T30P140 U160 ( .A1(regAddr[2]), .A2(n157), .A3(n82), .B(n81), 
        .ZN(n167) );
  ND2D0BWP12T30P140 U161 ( .A1(CurrState_SISt[0]), .A2(n83), .ZN(n103) );
  OAI211D0BWP12T30P140 U162 ( .A1(startStopDetState[1]), .A2(n85), .B(n116), 
        .C(n84), .ZN(n154) );
  INVD0BWP12T30P140 U163 ( .I(n154), .ZN(n118) );
  OAI32D0BWP12T30P140 U164 ( .A1(CurrState_SISt[1]), .A2(CurrState_SISt[0]), 
        .A3(n118), .B1(n86), .B2(n104), .ZN(n87) );
  AOI211D0BWP12T30P140 U165 ( .A1(CurrState_SISt[3]), .A2(n103), .B(n88), .C(
        n87), .ZN(n93) );
  OAI32D0BWP12T30P140 U166 ( .A1(n112), .A2(n90), .A3(n89), .B1(
        CurrState_SISt[2]), .B2(n109), .ZN(n91) );
  OAI21D0BWP12T30P140 U167 ( .A1(n93), .A2(n92), .B(n91), .ZN(n201) );
  AOI21D0BWP12T30P140 U168 ( .A1(n116), .A2(n154), .B(CurrState_SISt[1]), .ZN(
        n96) );
  MAOI22D0BWP12T30P140 U169 ( .A1(CurrState_SISt[1]), .A2(n94), .B1(n110), 
        .B2(n101), .ZN(n95) );
  OAI32D0BWP12T30P140 U170 ( .A1(n102), .A2(CurrState_SISt[0]), .A3(n96), .B1(
        CurrState_SISt[2]), .B2(n95), .ZN(n97) );
  AOI31D0BWP12T30P140 U171 ( .A1(n99), .A2(CurrState_SISt[3]), .A3(n98), .B(
        n97), .ZN(n100) );
  OAI32D0BWP12T30P140 U172 ( .A1(n112), .A2(rst), .A3(n100), .B1(n104), .B2(
        n109), .ZN(n202) );
  AOI32D0BWP12T30P140 U173 ( .A1(CurrState_SISt[0]), .A2(n102), .A3(n101), 
        .B1(CurrState_SISt[1]), .B2(n102), .ZN(n107) );
  ND4D0BWP12T30P140 U174 ( .A1(CurrState_SISt[2]), .A2(n105), .A3(n104), .A4(
        n103), .ZN(n106) );
  AOI22D0BWP12T30P140 U175 ( .A1(CurrState_SISt[3]), .A2(n108), .B1(n107), 
        .B2(n106), .ZN(n111) );
  OAI32D0BWP12T30P140 U176 ( .A1(n112), .A2(rst), .A3(n111), .B1(n110), .B2(
        n109), .ZN(n203) );
  OAI21D0BWP12T30P140 U177 ( .A1(regAddr[0]), .A2(n157), .B(n143), .ZN(n113)
         );
  AOI22D0BWP12T30P140 U178 ( .A1(regAddr[1]), .A2(n113), .B1(n220), .B2(
        rxData[1]), .ZN(n114) );
  OAI31D0BWP12T30P140 U179 ( .A1(regAddr[1]), .A2(n157), .A3(n115), .B(n114), 
        .ZN(n168) );
  ND2D0BWP12T30P140 U180 ( .A1(scl), .A2(sdaIn), .ZN(n120) );
  OAI21D0BWP12T30P140 U181 ( .A1(n118), .A2(n117), .B(n116), .ZN(n119) );
  AOI22D0BWP12T30P140 U182 ( .A1(n134), .A2(n120), .B1(n133), .B2(n119), .ZN(
        n121) );
  ND3D0BWP12T30P140 U183 ( .A1(n122), .A2(n121), .A3(n137), .ZN(n129) );
  NR4D0BWP12T30P140 U184 ( .A1(streamSt[0]), .A2(rxData[0]), .A3(n130), .A4(
        n127), .ZN(n123) );
  AO21D0BWP12T30P140 U185 ( .A1(streamSt[1]), .A2(n129), .B(n123), .Z(n186) );
  AN3D0BWP12T30P140 U186 ( .A1(regAddr[1]), .A2(regAddr[0]), .A3(regAddr[2]), 
        .Z(n144) );
  ND2D0BWP12T30P140 U187 ( .A1(n138), .A2(n144), .ZN(n147) );
  OAI21D0BWP12T30P140 U188 ( .A1(n144), .A2(n157), .B(n143), .ZN(n124) );
  AOI22D0BWP12T30P140 U189 ( .A1(regAddr[3]), .A2(n124), .B1(n220), .B2(
        rxData[3]), .ZN(n125) );
  OAI21D0BWP12T30P140 U190 ( .A1(regAddr[3]), .A2(n147), .B(n125), .ZN(n166)
         );
  INVD0BWP12T30P140 U191 ( .I(n209), .ZN(n141) );
  AO22D0BWP12T30P140 U192 ( .A1(rxData[0]), .A2(n141), .B1(sdaIn), .B2(n126), 
        .Z(n205) );
  INVD0BWP12T30P140 U193 ( .I(n127), .ZN(n128) );
  AOI21D0BWP12T30P140 U194 ( .A1(rxData[0]), .A2(n128), .B(streamSt[1]), .ZN(
        n131) );
  MOAI22D0BWP12T30P140 U195 ( .A1(n131), .A2(n130), .B1(streamSt[0]), .B2(n129), .ZN(n185) );
  NR3D0BWP12T30P140 U196 ( .A1(n134), .A2(n133), .A3(n132), .ZN(n149) );
  AOI22D0BWP12T30P140 U197 ( .A1(n149), .A2(n137), .B1(n136), .B2(n135), .ZN(
        n195) );
  INVD0BWP12T30P140 U198 ( .I(regAddr[5]), .ZN(n216) );
  ND3D0BWP12T30P140 U199 ( .A1(n144), .A2(regAddr[4]), .A3(regAddr[3]), .ZN(
        n139) );
  IOA21D0BWP12T30P140 U200 ( .A1(n139), .A2(n138), .B(n143), .ZN(n218) );
  AOI21D0BWP12T30P140 U201 ( .A1(n138), .A2(n216), .B(n218), .ZN(n156) );
  INVD0BWP12T30P140 U202 ( .I(regAddr[6]), .ZN(n161) );
  NR2D0BWP12T30P140 U203 ( .A1(n157), .A2(n139), .ZN(n217) );
  ND2D0BWP12T30P140 U204 ( .A1(regAddr[5]), .A2(n217), .ZN(n160) );
  MAOI22D0BWP12T30P140 U205 ( .A1(rxData[6]), .A2(n220), .B1(regAddr[6]), .B2(
        n160), .ZN(n140) );
  OAI21D0BWP12T30P140 U206 ( .A1(n156), .A2(n161), .B(n140), .ZN(n163) );
  MOAI22D0BWP12T30P140 U207 ( .A1(n142), .A2(n206), .B1(rxData[7]), .B2(n141), 
        .ZN(n176) );
  INVD0BWP12T30P140 U208 ( .I(regAddr[3]), .ZN(n148) );
  AOI32D0BWP12T30P140 U209 ( .A1(n144), .A2(n143), .A3(regAddr[3]), .B1(n157), 
        .B2(n143), .ZN(n145) );
  AOI22D0BWP12T30P140 U210 ( .A1(regAddr[4]), .A2(n145), .B1(n220), .B2(
        rxData[4]), .ZN(n146) );
  OAI31D0BWP12T30P140 U211 ( .A1(regAddr[4]), .A2(n148), .A3(n147), .B(n146), 
        .ZN(n165) );
  INVD0BWP12T30P140 U212 ( .I(n149), .ZN(n150) );
  OAI21D0BWP12T30P140 U213 ( .A1(n151), .A2(n150), .B(clearStartStopDet), .ZN(
        n152) );
  OAI211D0BWP12T30P140 U214 ( .A1(n155), .A2(n154), .B(n153), .C(n152), .ZN(
        n200) );
  OAI21D0BWP12T30P140 U215 ( .A1(regAddr[6]), .A2(n157), .B(n156), .ZN(n158)
         );
  AOI22D0BWP12T30P140 U216 ( .A1(rxData[7]), .A2(n220), .B1(regAddr[7]), .B2(
        n158), .ZN(n159) );
  OAI31D0BWP12T30P140 U217 ( .A1(regAddr[7]), .A2(n161), .A3(n160), .B(n159), 
        .ZN(n162) );
  OAI22D0BWP12T30P140 U218 ( .A1(n209), .A2(n208), .B1(n207), .B2(n206), .ZN(
        n171) );
  CKBD0BWP12T30P140 U219 ( .I(clk), .Z(n222) );
  CKBD0BWP12T30P140 U220 ( .I(clk), .Z(n221) );
  CKBD0BWP12T30P140 U221 ( .I(clk), .Z(n223) );
  OAI32D0BWP12T30P140 U222 ( .A1(n213), .A2(n212), .A3(n211), .B1(bitCnt[0]), 
        .B2(n210), .ZN(n215) );
  ND2D0BWP12T30P140 U223 ( .A1(n215), .A2(n214), .ZN(n197) );
  AOI22D0BWP12T30P140 U224 ( .A1(regAddr[5]), .A2(n218), .B1(n217), .B2(n216), 
        .ZN(n219) );
  IOA21D0BWP12T30P140 U225 ( .A1(n220), .A2(rxData[5]), .B(n219), .ZN(n164) );
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
  wire   n_Logic0_, sdaOut, N17, sdaDeb, sclDeb, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         startEdgeDet, clearStartStopDet, N88, writeEn, n_0_net_, n3, n24, n25,
         n26, n27, n28, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62;
  wire   [1:0] rstPipe;
  wire   [9:0] sdaPipe;
  wire   [9:0] sclPipe;
  wire   [9:0] sclDelayed;
  wire   [3:0] sdaDelayed;
  wire   [1:0] startStopDetState;
  wire   [7:0] regAddr;
  wire   [7:0] dataToRegIF;
  wire   [7:0] dataFromRegIF;

  registerInterface u_registerInterface ( .clk(n61), .addr(regAddr), .dataIn(
        dataToRegIF), .writeEn(writeEn), .dataOut(dataFromRegIF), .myReg0(
        myReg0), .myReg1(myReg1), .myReg2(myReg2), .myReg3(myReg3), .myReg4({
        n_Logic0_, n_Logic0_, n_Logic0_, n25, n_Logic0_, n_Logic0_, n25, 
        n_Logic0_}), .myReg5({n_Logic0_, n_Logic0_, n25, n25, n_Logic0_, n25, 
        n_Logic0_, n_Logic0_}), .myReg6({n_Logic0_, n25, n_Logic0_, n25, 
        n_Logic0_, n25, n25, n_Logic0_}), .myReg7({n_Logic0_, n25, n25, n25, 
        n25, n_Logic0_, n_Logic0_, n_Logic0_}) );
  serialInterface u_serialInterface ( .clearStartStopDet(clearStartStopDet), 
        .clk(n61), .dataIn(dataFromRegIF), .dataOut(dataToRegIF), .regAddr(
        regAddr), .rst(n_0_net_), .scl(sclDelayed[9]), .sdaIn(sdaDeb), 
        .sdaOut(sdaOut), .startStopDetState(startStopDetState), .writeEn(
        writeEn) );
  OR2D0BWP12T30P140 U43 ( .A1(sda), .A2(rstPipe[1]), .Z(N29) );
  DFQD2BWP12T30P140 sclPipe_reg_6_ ( .D(N47), .CP(clk), .Q(sclPipe[6]) );
  DFQD2BWP12T30P140 sclPipe_reg_0_ ( .D(N41), .CP(clk), .Q(sclPipe[0]) );
  DFQD2BWP12T30P140 sclPipe_reg_5_ ( .D(N46), .CP(clk), .Q(sclPipe[5]) );
  DFQD2BWP12T30P140 sclPipe_reg_7_ ( .D(N48), .CP(clk), .Q(sclPipe[7]) );
  DFQD2BWP12T30P140 sclPipe_reg_4_ ( .D(N45), .CP(clk), .Q(sclPipe[4]) );
  DFQD2BWP12T30P140 sclPipe_reg_1_ ( .D(N42), .CP(clk), .Q(sclPipe[1]) );
  DFQD2BWP12T30P140 sclPipe_reg_3_ ( .D(N44), .CP(clk), .Q(sclPipe[3]) );
  DFQD2BWP12T30P140 sclPipe_reg_2_ ( .D(N43), .CP(clk), .Q(sclPipe[2]) );
  DFQD2BWP12T30P140 rstPipe_reg_0_ ( .D(rst), .CP(n61), .Q(rstPipe[0]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_0_ ( .D(N63), .CP(n61), .Q(sdaDelayed[0])
         );
  DFQD2BWP12T30P140 sdaPipe_reg_9_ ( .D(N38), .CP(n61), .Q(sdaPipe[9]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_3_ ( .D(N66), .CP(n61), .Q(sdaDelayed[3])
         );
  DFQD2BWP12T30P140 sclPipe_reg_8_ ( .D(N49), .CP(n62), .Q(sclPipe[8]) );
  DFQD2BWP12T30P140 sdaPipe_reg_2_ ( .D(N31), .CP(n62), .Q(sdaPipe[2]) );
  DFQD2BWP12T30P140 sdaPipe_reg_3_ ( .D(N32), .CP(n62), .Q(sdaPipe[3]) );
  DFQD2BWP12T30P140 sdaPipe_reg_4_ ( .D(N33), .CP(n62), .Q(sdaPipe[4]) );
  DFQD2BWP12T30P140 sdaPipe_reg_5_ ( .D(N34), .CP(n62), .Q(sdaPipe[5]) );
  DFQD2BWP12T30P140 sclDelayed_reg_0_ ( .D(N53), .CP(n62), .Q(sclDelayed[0])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_1_ ( .D(N54), .CP(n62), .Q(sclDelayed[1])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_2_ ( .D(N55), .CP(n62), .Q(sclDelayed[2])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_3_ ( .D(N56), .CP(n62), .Q(sclDelayed[3])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_4_ ( .D(N57), .CP(n62), .Q(sclDelayed[4])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_5_ ( .D(N58), .CP(n62), .Q(sclDelayed[5])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_6_ ( .D(N59), .CP(n62), .Q(sclDelayed[6])
         );
  DFQD2BWP12T30P140 sclDelayed_reg_8_ ( .D(N61), .CP(n62), .Q(sclDelayed[8])
         );
  DFQD2BWP12T30P140 startEdgeDet_reg ( .D(N88), .CP(n62), .Q(startEdgeDet) );
  DFQD2BWP12T30P140 sdaPipe_reg_0_ ( .D(N29), .CP(n62), .Q(sdaPipe[0]) );
  BUFTD4BWP12T30P140 sda_tri ( .I(n_Logic0_), .OE(n3), .Z(sda) );
  DFQD2BWP12T30P140 sdaPipe_reg_8_ ( .D(N37), .CP(n61), .Q(sdaPipe[8]) );
  DFQD2BWP12T30P140 sdaDelayed_reg_2_ ( .D(N65), .CP(n61), .Q(sdaDelayed[2])
         );
  DFQD2BWP12T30P140 sdaPipe_reg_6_ ( .D(N35), .CP(n61), .Q(sdaPipe[6]) );
  DFQD2BWP12T30P140 sdaPipe_reg_7_ ( .D(N36), .CP(n61), .Q(sdaPipe[7]) );
  DFQD2BWP12T30P140 sclDeb_reg ( .D(n26), .CP(n62), .Q(sclDeb) );
  DFQD2BWP12T30P140 sclPipe_reg_9_ ( .D(N50), .CP(n62), .Q(sclPipe[9]) );
  DFQD2BWP12T30P140 startStopDetState_reg_0_ ( .D(n28), .CP(n61), .Q(
        startStopDetState[0]) );
  DFQD2BWP12T30P140 sdaDeb_reg ( .D(n24), .CP(n61), .Q(sdaDeb) );
  DFQD2BWP12T30P140 sdaPipe_reg_1_ ( .D(N30), .CP(n62), .Q(sdaPipe[1]) );
  DFQD2BWP12T30P140 startStopDetState_reg_1_ ( .D(n27), .CP(n61), .Q(
        startStopDetState[1]) );
  DFQD2BWP12T30P140 sclDelayed_reg_9_ ( .D(N62), .CP(n62), .Q(sclDelayed[9])
         );
  DFQD1BWP12T30P140 sdaDelayed_reg_1_ ( .D(N64), .CP(n61), .Q(sdaDelayed[1])
         );
  DFQD1BWP12T30P140 sclDelayed_reg_7_ ( .D(N60), .CP(n62), .Q(sclDelayed[7])
         );
  DFQD1BWP12T30P140 rstPipe_reg_1_ ( .D(N17), .CP(clk), .Q(rstPipe[1]) );
  TIELBWP12T30P140 U3 ( .ZN(n_Logic0_) );
  TIEHBWP12T30P140 U4 ( .Z(n25) );
  INVD0BWP12T30P140 U5 ( .I(sdaOut), .ZN(n3) );
  OR2D0BWP12T30P140 U6 ( .A1(sdaPipe[8]), .A2(rstPipe[1]), .Z(N38) );
  OR2D0BWP12T30P140 U7 ( .A1(sclPipe[7]), .A2(rstPipe[1]), .Z(N49) );
  OR2D0BWP12T30P140 U8 ( .A1(sclPipe[1]), .A2(rstPipe[1]), .Z(N43) );
  OR2D0BWP12T30P140 U9 ( .A1(sdaDeb), .A2(rstPipe[1]), .Z(N63) );
  OR2D0BWP12T30P140 U10 ( .A1(sdaPipe[1]), .A2(rstPipe[1]), .Z(N31) );
  INVD0BWP12T30P140 U11 ( .I(rstPipe[1]), .ZN(n60) );
  CKBD0BWP12T30P140 U12 ( .I(n60), .Z(n59) );
  INVD0BWP12T30P140 U13 ( .I(sdaDelayed[3]), .ZN(n40) );
  ND4D0BWP12T30P140 U14 ( .A1(sdaDelayed[2]), .A2(n59), .A3(n40), .A4(sclDeb), 
        .ZN(n42) );
  INVD0BWP12T30P140 U15 ( .I(n42), .ZN(N88) );
  OR2D0BWP12T30P140 U16 ( .A1(sdaPipe[6]), .A2(rstPipe[1]), .Z(N36) );
  INVD0BWP12T30P140 U17 ( .I(sclPipe[6]), .ZN(n58) );
  INVD0BWP12T30P140 U18 ( .I(sclPipe[8]), .ZN(n56) );
  NR4D0BWP12T30P140 U19 ( .A1(sclPipe[5]), .A2(sclPipe[4]), .A3(sclPipe[3]), 
        .A4(sclPipe[2]), .ZN(n33) );
  ND3D0BWP12T30P140 U20 ( .A1(n58), .A2(n56), .A3(n33), .ZN(n34) );
  NR4D0BWP12T30P140 U21 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n34), .ZN(n38) );
  INVD0BWP12T30P140 U22 ( .I(sclDeb), .ZN(n39) );
  ND4D0BWP12T30P140 U23 ( .A1(sclPipe[5]), .A2(sclPipe[4]), .A3(sclPipe[3]), 
        .A4(sclPipe[2]), .ZN(n35) );
  NR3D0BWP12T30P140 U24 ( .A1(n56), .A2(n58), .A3(n35), .ZN(n36) );
  ND4D0BWP12T30P140 U25 ( .A1(sclPipe[7]), .A2(sclPipe[9]), .A3(sclPipe[1]), 
        .A4(n36), .ZN(n37) );
  OAI211D0BWP12T30P140 U26 ( .A1(n38), .A2(n39), .B(n59), .C(n37), .ZN(n26) );
  ND2D0BWP12T30P140 U27 ( .A1(n59), .A2(n39), .ZN(N53) );
  NR2D0BWP12T30P140 U28 ( .A1(rstPipe[1]), .A2(sdaDelayed[2]), .ZN(n49) );
  AOI32D0BWP12T30P140 U29 ( .A1(sdaDelayed[2]), .A2(sdaDelayed[3]), .A3(n59), 
        .B1(n49), .B2(n40), .ZN(n41) );
  AOI21D0BWP12T30P140 U30 ( .A1(n41), .A2(N53), .B(clearStartStopDet), .ZN(n52) );
  MOAI22D0BWP12T30P140 U31 ( .A1(n42), .A2(clearStartStopDet), .B1(
        startStopDetState[0]), .B2(n52), .ZN(n28) );
  ND2D0BWP12T30P140 U32 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .ZN(n48) );
  INVD0BWP12T30P140 U33 ( .I(sdaPipe[5]), .ZN(n57) );
  INVD0BWP12T30P140 U34 ( .I(sdaPipe[4]), .ZN(n55) );
  INVD0BWP12T30P140 U35 ( .I(sdaPipe[3]), .ZN(n54) );
  INVD0BWP12T30P140 U36 ( .I(sdaPipe[2]), .ZN(n53) );
  NR4D0BWP12T30P140 U37 ( .A1(n57), .A2(n55), .A3(n54), .A4(n53), .ZN(n43) );
  ND4D0BWP12T30P140 U38 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n43), .ZN(n47) );
  ND4D0BWP12T30P140 U39 ( .A1(n57), .A2(n55), .A3(n54), .A4(n53), .ZN(n44) );
  OR4D0BWP12T30P140 U40 ( .A1(sdaPipe[7]), .A2(sdaPipe[9]), .A3(sdaPipe[1]), 
        .A4(n44), .Z(n45) );
  OAI31D0BWP12T30P140 U41 ( .A1(sdaPipe[8]), .A2(sdaPipe[6]), .A3(n45), .B(
        sdaDeb), .ZN(n46) );
  OAI211D0BWP12T30P140 U42 ( .A1(n48), .A2(n47), .B(n59), .C(n46), .ZN(n24) );
  INVD0BWP12T30P140 U44 ( .I(n49), .ZN(N66) );
  INVD0BWP12T30P140 U45 ( .I(startStopDetState[1]), .ZN(n51) );
  INVD0BWP12T30P140 U46 ( .I(n52), .ZN(n50) );
  OAI32D0BWP12T30P140 U47 ( .A1(n52), .A2(clearStartStopDet), .A3(N66), .B1(
        n51), .B2(n50), .ZN(n27) );
  OR2D0BWP12T30P140 U48 ( .A1(sdaPipe[7]), .A2(rstPipe[1]), .Z(N37) );
  OR2D0BWP12T30P140 U49 ( .A1(rst), .A2(rstPipe[0]), .Z(N17) );
  OR2D0BWP12T30P140 U50 ( .A1(sclPipe[2]), .A2(rstPipe[1]), .Z(N44) );
  OR2D0BWP12T30P140 U51 ( .A1(sclPipe[3]), .A2(rstPipe[1]), .Z(N45) );
  OR2D0BWP12T30P140 U52 ( .A1(sclPipe[4]), .A2(rstPipe[1]), .Z(N46) );
  OR2D0BWP12T30P140 U53 ( .A1(sclPipe[5]), .A2(rstPipe[1]), .Z(N47) );
  CKBD0BWP12T30P140 U54 ( .I(clk), .Z(n62) );
  CKBD0BWP12T30P140 U55 ( .I(clk), .Z(n61) );
  IND2D1BWP12T30P140 U56 ( .A1(startEdgeDet), .B1(n60), .ZN(n_0_net_) );
  ND2D0BWP12T30P140 U57 ( .A1(n59), .A2(n53), .ZN(N32) );
  ND2D0BWP12T30P140 U58 ( .A1(n59), .A2(n54), .ZN(N33) );
  ND2D0BWP12T30P140 U59 ( .A1(n59), .A2(n55), .ZN(N34) );
  ND2D0BWP12T30P140 U60 ( .A1(n59), .A2(n56), .ZN(N50) );
  ND2D0BWP12T30P140 U61 ( .A1(n59), .A2(n57), .ZN(N35) );
  ND2D0BWP12T30P140 U62 ( .A1(n59), .A2(n58), .ZN(N48) );
  IND2D1BWP12T30P140 U63 ( .A1(sdaDelayed[0]), .B1(n59), .ZN(N64) );
  IND2D1BWP12T30P140 U64 ( .A1(sdaDelayed[1]), .B1(n59), .ZN(N65) );
  IND2D1BWP12T30P140 U65 ( .A1(sclDelayed[0]), .B1(n60), .ZN(N54) );
  IND2D1BWP12T30P140 U66 ( .A1(sclDelayed[1]), .B1(n60), .ZN(N55) );
  IND2D1BWP12T30P140 U67 ( .A1(sclDelayed[2]), .B1(n60), .ZN(N56) );
  IND2D1BWP12T30P140 U68 ( .A1(sclDelayed[3]), .B1(n60), .ZN(N57) );
  IND2D1BWP12T30P140 U69 ( .A1(sclDelayed[4]), .B1(n60), .ZN(N58) );
  IND2D1BWP12T30P140 U70 ( .A1(sclDelayed[5]), .B1(n60), .ZN(N59) );
  IND2D1BWP12T30P140 U71 ( .A1(sclDelayed[6]), .B1(n60), .ZN(N60) );
  IND2D1BWP12T30P140 U72 ( .A1(sclDelayed[7]), .B1(n60), .ZN(N61) );
  IND2D1BWP12T30P140 U73 ( .A1(sclDelayed[8]), .B1(n59), .ZN(N62) );
  IND2D1BWP12T30P140 U74 ( .A1(scl), .B1(n60), .ZN(N41) );
  IND2D1BWP12T30P140 U75 ( .A1(sclPipe[0]), .B1(n59), .ZN(N42) );
  IND2D1BWP12T30P140 U76 ( .A1(sdaPipe[0]), .B1(n60), .ZN(N30) );
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

