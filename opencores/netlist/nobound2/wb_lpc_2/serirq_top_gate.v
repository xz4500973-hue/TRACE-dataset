/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:06:02 2026
/////////////////////////////////////////////////////////////


module serirq_host ( clk_i, nrst_i, serirq_mode_i, irq_o, serirq_o, serirq_i, 
        serirq_oe );
  output [31:0] irq_o;
  input clk_i, nrst_i, serirq_mode_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   current_mode, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n182, n183, n184, n185, n186,
         n187, n188, n189, n190;
  wire   [10:0] state;
  wire   [2:0] start_cnt;
  wire   [4:0] irq_cnt;
  wire   [2:0] stop_cnt;

  DFSNQD1BWP12T30P140 irq_o_reg_31_ ( .D(n148), .CP(n189), .SDN(nrst_i), .Q(
        irq_o[31]) );
  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(n128), .CP(clk_i), .SDN(n186), .Q(
        serirq_o) );
  DFSNQD1BWP12T30P140 irq_o_reg_0_ ( .D(n179), .CP(n189), .SDN(nrst_i), .Q(
        irq_o[0]) );
  DFSNQD1BWP12T30P140 irq_o_reg_1_ ( .D(n178), .CP(n189), .SDN(nrst_i), .Q(
        irq_o[1]) );
  DFSNQD1BWP12T30P140 irq_o_reg_2_ ( .D(n177), .CP(n190), .SDN(nrst_i), .Q(
        irq_o[2]) );
  DFSNQD1BWP12T30P140 irq_o_reg_3_ ( .D(n176), .CP(n190), .SDN(nrst_i), .Q(
        irq_o[3]) );
  DFSNQD1BWP12T30P140 irq_o_reg_4_ ( .D(n175), .CP(n190), .SDN(nrst_i), .Q(
        irq_o[4]) );
  DFSNQD1BWP12T30P140 irq_o_reg_5_ ( .D(n174), .CP(n190), .SDN(nrst_i), .Q(
        irq_o[5]) );
  DFSNQD1BWP12T30P140 irq_o_reg_6_ ( .D(n173), .CP(n190), .SDN(n187), .Q(
        irq_o[6]) );
  DFSNQD1BWP12T30P140 irq_o_reg_7_ ( .D(n172), .CP(n190), .SDN(n187), .Q(
        irq_o[7]) );
  DFSNQD1BWP12T30P140 irq_o_reg_8_ ( .D(n171), .CP(n190), .SDN(n187), .Q(
        irq_o[8]) );
  DFSNQD1BWP12T30P140 irq_o_reg_9_ ( .D(n170), .CP(n190), .SDN(n187), .Q(
        irq_o[9]) );
  DFSNQD1BWP12T30P140 irq_o_reg_10_ ( .D(n169), .CP(n190), .SDN(n187), .Q(
        irq_o[10]) );
  DFSNQD1BWP12T30P140 irq_o_reg_11_ ( .D(n168), .CP(n190), .SDN(n187), .Q(
        irq_o[11]) );
  DFSNQD1BWP12T30P140 irq_o_reg_12_ ( .D(n167), .CP(n190), .SDN(n187), .Q(
        irq_o[12]) );
  DFSNQD1BWP12T30P140 irq_o_reg_13_ ( .D(n166), .CP(n190), .SDN(n187), .Q(
        irq_o[13]) );
  DFSNQD1BWP12T30P140 irq_o_reg_14_ ( .D(n165), .CP(n190), .SDN(n187), .Q(
        irq_o[14]) );
  DFSNQD1BWP12T30P140 irq_o_reg_15_ ( .D(n164), .CP(n190), .SDN(n187), .Q(
        irq_o[15]) );
  DFSNQD1BWP12T30P140 irq_o_reg_16_ ( .D(n163), .CP(n190), .SDN(n187), .Q(
        irq_o[16]) );
  DFSNQD1BWP12T30P140 irq_o_reg_17_ ( .D(n162), .CP(n190), .SDN(n187), .Q(
        irq_o[17]) );
  DFSNQD1BWP12T30P140 irq_o_reg_18_ ( .D(n161), .CP(n190), .SDN(n187), .Q(
        irq_o[18]) );
  DFSNQD1BWP12T30P140 irq_o_reg_19_ ( .D(n160), .CP(n190), .SDN(n187), .Q(
        irq_o[19]) );
  DFSNQD1BWP12T30P140 irq_o_reg_20_ ( .D(n159), .CP(n190), .SDN(n187), .Q(
        irq_o[20]) );
  DFSNQD1BWP12T30P140 irq_o_reg_21_ ( .D(n158), .CP(n190), .SDN(n187), .Q(
        irq_o[21]) );
  DFSNQD1BWP12T30P140 irq_o_reg_22_ ( .D(n157), .CP(clk_i), .SDN(n187), .Q(
        irq_o[22]) );
  DFSNQD1BWP12T30P140 irq_o_reg_23_ ( .D(n156), .CP(clk_i), .SDN(n187), .Q(
        irq_o[23]) );
  DFSNQD1BWP12T30P140 irq_o_reg_24_ ( .D(n155), .CP(clk_i), .SDN(n187), .Q(
        irq_o[24]) );
  DFSNQD1BWP12T30P140 irq_o_reg_25_ ( .D(n154), .CP(clk_i), .SDN(n186), .Q(
        irq_o[25]) );
  DFSNQD1BWP12T30P140 irq_o_reg_26_ ( .D(n153), .CP(clk_i), .SDN(n186), .Q(
        irq_o[26]) );
  DFSNQD1BWP12T30P140 irq_o_reg_27_ ( .D(n152), .CP(clk_i), .SDN(n186), .Q(
        irq_o[27]) );
  DFSNQD1BWP12T30P140 irq_o_reg_28_ ( .D(n151), .CP(clk_i), .SDN(n186), .Q(
        irq_o[28]) );
  DFSNQD1BWP12T30P140 irq_o_reg_29_ ( .D(n150), .CP(clk_i), .SDN(n186), .Q(
        irq_o[29]) );
  DFSNQD1BWP12T30P140 irq_o_reg_30_ ( .D(n149), .CP(clk_i), .SDN(n187), .Q(
        irq_o[30]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_2_ ( .D(n145), .CP(n188), .CDN(n186), .Q(
        start_cnt[2]) );
  DFCNQD1BWP12T30P140 current_mode_reg ( .D(n180), .CP(n188), .CDN(nrst_i), 
        .Q(current_mode) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_2_ ( .D(n129), .CP(n188), .CDN(n186), .Q(
        stop_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n140), .CP(n188), .CDN(nrst_i), .Q(
        state[4]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n139), .CP(n189), .CDN(n186), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 state_reg_6_ ( .D(n138), .CP(n189), .CDN(n186), .Q(
        state[6]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n143), .CP(n188), .CDN(nrst_i), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_8_ ( .D(n136), .CP(n188), .CDN(n186), .Q(
        state[8]) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(n127), .CP(n189), .CDN(n186), .Q(
        serirq_oe) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n181), .CP(n188), .CDN(nrst_i), .Q(
        irq_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n133), .CP(n189), .CDN(n186), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n144), .CP(n189), .CDN(n186), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n132), .CP(n189), .CDN(n186), .Q(
        irq_cnt[4]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n142), .CP(n189), .CDN(n186), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_1_ ( .D(n130), .CP(n189), .CDN(n186), .Q(
        stop_cnt[1]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n134), .CP(n189), .CDN(n186), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(n137), .CP(n188), .CDN(nrst_i), .Q(
        state[7]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n141), .CP(n188), .CDN(nrst_i), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_1_ ( .D(n147), .CP(n188), .CDN(nrst_i), 
        .Q(start_cnt[1]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_0_ ( .D(n146), .CP(n188), .CDN(nrst_i), 
        .Q(start_cnt[0]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_0_ ( .D(n131), .CP(n189), .CDN(n186), .Q(
        stop_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n135), .CP(n189), .CDN(n186), .Q(
        irq_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_10_ ( .D(state[10]), .CP(n188), .CDN(nrst_i), 
        .Q(state[10]) );
  CKBD0BWP12T30P140 U3 ( .I(nrst_i), .Z(n187) );
  INVD0BWP12T30P140 U4 ( .I(irq_cnt[2]), .ZN(n36) );
  ND3D0BWP12T30P140 U5 ( .A1(n36), .A2(irq_cnt[1]), .A3(irq_cnt[0]), .ZN(n126)
         );
  INVD0BWP12T30P140 U6 ( .I(irq_cnt[4]), .ZN(n105) );
  INVD0BWP12T30P140 U7 ( .I(irq_cnt[3]), .ZN(n106) );
  NR2D0BWP12T30P140 U8 ( .A1(n105), .A2(n106), .ZN(n6) );
  INVD0BWP12T30P140 U9 ( .I(state[4]), .ZN(n75) );
  NR3D0BWP12T30P140 U10 ( .A1(state[6]), .A2(state[7]), .A3(state[8]), .ZN(n13) );
  OR3D0BWP12T30P140 U11 ( .A1(state[10]), .A2(state[3]), .A3(state[2]), .Z(n1)
         );
  NR3D0BWP12T30P140 U12 ( .A1(state[0]), .A2(state[1]), .A3(n1), .ZN(n18) );
  ND2D0BWP12T30P140 U13 ( .A1(n13), .A2(n18), .ZN(n12) );
  NR3D0BWP12T30P140 U14 ( .A1(state[5]), .A2(n75), .A3(n12), .ZN(n104) );
  ND2D0BWP12T30P140 U15 ( .A1(n104), .A2(serirq_i), .ZN(n8) );
  INVD0BWP12T30P140 U16 ( .I(n8), .ZN(n103) );
  ND2D0BWP12T30P140 U17 ( .A1(n6), .A2(n103), .ZN(n95) );
  ND2D0BWP12T30P140 U18 ( .A1(n104), .A2(n6), .ZN(n93) );
  OAI21D0BWP12T30P140 U19 ( .A1(n126), .A2(n93), .B(irq_o[27]), .ZN(n2) );
  OAI21D0BWP12T30P140 U20 ( .A1(n126), .A2(n95), .B(n2), .ZN(n152) );
  INVD0BWP12T30P140 U21 ( .I(irq_cnt[0]), .ZN(n53) );
  ND3D0BWP12T30P140 U22 ( .A1(n53), .A2(irq_cnt[2]), .A3(irq_cnt[1]), .ZN(n116) );
  ND3D0BWP12T30P140 U23 ( .A1(n105), .A2(n103), .A3(irq_cnt[3]), .ZN(n184) );
  ND3D0BWP12T30P140 U24 ( .A1(n105), .A2(irq_cnt[3]), .A3(n104), .ZN(n182) );
  OAI21D0BWP12T30P140 U25 ( .A1(n116), .A2(n182), .B(irq_o[14]), .ZN(n3) );
  OAI21D0BWP12T30P140 U26 ( .A1(n116), .A2(n184), .B(n3), .ZN(n165) );
  INVD0BWP12T30P140 U27 ( .I(irq_cnt[1]), .ZN(n35) );
  ND3D0BWP12T30P140 U28 ( .A1(n53), .A2(n35), .A3(irq_cnt[2]), .ZN(n112) );
  OAI21D0BWP12T30P140 U29 ( .A1(n112), .A2(n182), .B(irq_o[12]), .ZN(n4) );
  OAI21D0BWP12T30P140 U30 ( .A1(n112), .A2(n184), .B(n4), .ZN(n167) );
  NR2D0BWP12T30P140 U31 ( .A1(n53), .A2(irq_cnt[1]), .ZN(n14) );
  ND2D0BWP12T30P140 U32 ( .A1(irq_cnt[2]), .A2(n14), .ZN(n114) );
  OAI21D0BWP12T30P140 U33 ( .A1(n114), .A2(n182), .B(irq_o[13]), .ZN(n5) );
  OAI21D0BWP12T30P140 U34 ( .A1(n114), .A2(n184), .B(n5), .ZN(n166) );
  ND3D0BWP12T30P140 U35 ( .A1(irq_cnt[1]), .A2(irq_cnt[0]), .A3(irq_cnt[2]), 
        .ZN(n120) );
  IND2D1BWP12T30P140 U36 ( .A1(n120), .B1(n6), .ZN(n69) );
  INVD0BWP12T30P140 U37 ( .I(n104), .ZN(n70) );
  OAI21D0BWP12T30P140 U38 ( .A1(n69), .A2(n70), .B(irq_o[31]), .ZN(n7) );
  OAI21D0BWP12T30P140 U39 ( .A1(n69), .A2(n8), .B(n7), .ZN(n148) );
  OAI21D0BWP12T30P140 U40 ( .A1(n120), .A2(n182), .B(irq_o[15]), .ZN(n9) );
  OAI21D0BWP12T30P140 U41 ( .A1(n120), .A2(n184), .B(n9), .ZN(n164) );
  ND3D0BWP12T30P140 U42 ( .A1(n36), .A2(n53), .A3(n35), .ZN(n122) );
  ND3D0BWP12T30P140 U43 ( .A1(n106), .A2(n103), .A3(irq_cnt[4]), .ZN(n65) );
  ND3D0BWP12T30P140 U44 ( .A1(n106), .A2(n104), .A3(irq_cnt[4]), .ZN(n63) );
  OAI21D0BWP12T30P140 U45 ( .A1(n122), .A2(n63), .B(irq_o[16]), .ZN(n10) );
  OAI21D0BWP12T30P140 U46 ( .A1(n122), .A2(n65), .B(n10), .ZN(n163) );
  ND2D0BWP12T30P140 U47 ( .A1(n14), .A2(n36), .ZN(n185) );
  OAI21D0BWP12T30P140 U48 ( .A1(n185), .A2(n63), .B(irq_o[17]), .ZN(n11) );
  OAI21D0BWP12T30P140 U49 ( .A1(n185), .A2(n65), .B(n11), .ZN(n162) );
  INVD0BWP12T30P140 U50 ( .I(state[5]), .ZN(n71) );
  NR3D0BWP12T30P140 U51 ( .A1(state[4]), .A2(n12), .A3(n71), .ZN(n50) );
  INVD0BWP12T30P140 U52 ( .I(state[0]), .ZN(n26) );
  NR2D0BWP12T30P140 U53 ( .A1(state[4]), .A2(state[5]), .ZN(n15) );
  ND2D0BWP12T30P140 U54 ( .A1(n15), .A2(n13), .ZN(n17) );
  NR4D0BWP12T30P140 U55 ( .A1(state[10]), .A2(state[3]), .A3(state[2]), .A4(
        n17), .ZN(n24) );
  INVD0BWP12T30P140 U56 ( .I(state[1]), .ZN(n62) );
  ND2D0BWP12T30P140 U57 ( .A1(n24), .A2(n62), .ZN(n85) );
  NR2D0BWP12T30P140 U58 ( .A1(n26), .A2(n85), .ZN(n61) );
  INVD0BWP12T30P140 U59 ( .I(n50), .ZN(n68) );
  INR2D1BWP12T30P140 U60 ( .A1(n69), .B1(n68), .ZN(n49) );
  OAI22D0BWP12T30P140 U61 ( .A1(n61), .A2(n49), .B1(irq_cnt[0]), .B2(n68), 
        .ZN(n34) );
  AO22D0BWP12T30P140 U62 ( .A1(n50), .A2(n14), .B1(irq_cnt[1]), .B2(n34), .Z(
        n135) );
  NR2D0BWP12T30P140 U63 ( .A1(state[7]), .A2(state[8]), .ZN(n16) );
  ND2D0BWP12T30P140 U64 ( .A1(n15), .A2(n18), .ZN(n23) );
  INVD0BWP12T30P140 U65 ( .I(state[6]), .ZN(n66) );
  INR3D1BWP12T30P140 U66 ( .A1(n16), .B1(n23), .B2(n66), .ZN(n38) );
  INVD0BWP12T30P140 U67 ( .I(n38), .ZN(n81) );
  INVD0BWP12T30P140 U68 ( .I(n17), .ZN(n25) );
  ND2D0BWP12T30P140 U69 ( .A1(n25), .A2(n18), .ZN(n101) );
  INVD0BWP12T30P140 U70 ( .I(stop_cnt[0]), .ZN(n76) );
  AO32D0BWP12T30P140 U71 ( .A1(n81), .A2(n101), .A3(stop_cnt[0]), .B1(n76), 
        .B2(n38), .Z(n131) );
  ND3D0BWP12T30P140 U72 ( .A1(n36), .A2(n53), .A3(irq_cnt[1]), .ZN(n124) );
  OAI21D0BWP12T30P140 U73 ( .A1(n124), .A2(n63), .B(irq_o[18]), .ZN(n19) );
  OAI21D0BWP12T30P140 U74 ( .A1(n124), .A2(n65), .B(n19), .ZN(n161) );
  INVD0BWP12T30P140 U75 ( .I(n61), .ZN(n57) );
  NR2D0BWP12T30P140 U76 ( .A1(start_cnt[0]), .A2(n57), .ZN(n20) );
  AO21D0BWP12T30P140 U77 ( .A1(start_cnt[0]), .A2(n85), .B(n20), .Z(n146) );
  INVD0BWP12T30P140 U78 ( .I(start_cnt[0]), .ZN(n22) );
  INVD0BWP12T30P140 U79 ( .I(current_mode), .ZN(n96) );
  NR3D0BWP12T30P140 U80 ( .A1(serirq_i), .A2(n101), .A3(n96), .ZN(n54) );
  AOI221D0BWP12T30P140 U81 ( .A1(n20), .A2(start_cnt[1]), .B1(n85), .B2(
        start_cnt[1]), .C(n54), .ZN(n21) );
  OAI31D0BWP12T30P140 U82 ( .A1(start_cnt[1]), .A2(n57), .A3(n22), .B(n21), 
        .ZN(n147) );
  INVD0BWP12T30P140 U83 ( .I(state[8]), .ZN(n60) );
  NR2D0BWP12T30P140 U84 ( .A1(state[6]), .A2(n23), .ZN(n29) );
  ND3D0BWP12T30P140 U85 ( .A1(n60), .A2(n29), .A3(state[7]), .ZN(n59) );
  ND3D0BWP12T30P140 U86 ( .A1(n26), .A2(n24), .A3(state[1]), .ZN(n42) );
  ND2D0BWP12T30P140 U87 ( .A1(n59), .A2(n42), .ZN(n98) );
  ND2D0BWP12T30P140 U88 ( .A1(n85), .A2(n81), .ZN(n97) );
  ND3D0BWP12T30P140 U89 ( .A1(n26), .A2(n62), .A3(n25), .ZN(n28) );
  NR2D0BWP12T30P140 U90 ( .A1(state[10]), .A2(state[2]), .ZN(n27) );
  IND3D1BWP12T30P140 U91 ( .A1(n28), .B1(state[3]), .B2(n27), .ZN(n73) );
  INVD0BWP12T30P140 U92 ( .I(state[2]), .ZN(n43) );
  NR4D0BWP12T30P140 U93 ( .A1(state[10]), .A2(state[3]), .A3(n43), .A4(n28), 
        .ZN(n31) );
  INR3D1BWP12T30P140 U94 ( .A1(n29), .B1(state[7]), .B2(n60), .ZN(n84) );
  NR2D0BWP12T30P140 U95 ( .A1(n31), .A2(n84), .ZN(n55) );
  ND3D0BWP12T30P140 U96 ( .A1(n73), .A2(n68), .A3(n55), .ZN(n30) );
  NR4D0BWP12T30P140 U97 ( .A1(n104), .A2(n98), .A3(n97), .A4(n30), .ZN(n47) );
  AO211D0BWP12T30P140 U98 ( .A1(state[3]), .A2(n47), .B(n31), .C(n49), .Z(n141) );
  OAI21D0BWP12T30P140 U99 ( .A1(n126), .A2(n63), .B(irq_o[19]), .ZN(n32) );
  OAI21D0BWP12T30P140 U100 ( .A1(n126), .A2(n65), .B(n32), .ZN(n160) );
  INVD0BWP12T30P140 U101 ( .I(serirq_mode_i), .ZN(n83) );
  AOI22D0BWP12T30P140 U102 ( .A1(serirq_mode_i), .A2(stop_cnt[0]), .B1(
        stop_cnt[1]), .B2(n83), .ZN(n33) );
  AOI211D0BWP12T30P140 U103 ( .A1(stop_cnt[0]), .A2(stop_cnt[1]), .B(
        stop_cnt[2]), .C(n33), .ZN(n67) );
  AO22D0BWP12T30P140 U104 ( .A1(state[7]), .A2(n47), .B1(n38), .B2(n67), .Z(
        n137) );
  AOI21D0BWP12T30P140 U105 ( .A1(n50), .A2(n35), .B(n34), .ZN(n37) );
  OAI22D0BWP12T30P140 U106 ( .A1(n37), .A2(n36), .B1(n68), .B2(n126), .ZN(n134) );
  ND2D0BWP12T30P140 U107 ( .A1(n38), .A2(stop_cnt[0]), .ZN(n39) );
  ND2D0BWP12T30P140 U108 ( .A1(n39), .A2(n101), .ZN(n40) );
  INVD0BWP12T30P140 U109 ( .I(stop_cnt[1]), .ZN(n77) );
  AOI22D0BWP12T30P140 U110 ( .A1(stop_cnt[1]), .A2(n40), .B1(n39), .B2(n77), 
        .ZN(n130) );
  OAI21D0BWP12T30P140 U111 ( .A1(n112), .A2(n63), .B(irq_o[20]), .ZN(n41) );
  OAI21D0BWP12T30P140 U112 ( .A1(n112), .A2(n65), .B(n41), .ZN(n159) );
  INVD0BWP12T30P140 U113 ( .I(n47), .ZN(n74) );
  OAI21D0BWP12T30P140 U114 ( .A1(n43), .A2(n74), .B(n42), .ZN(n142) );
  ND2D0BWP12T30P140 U115 ( .A1(irq_cnt[4]), .A2(n57), .ZN(n44) );
  OAI31D0BWP12T30P140 U116 ( .A1(n120), .A2(n68), .A3(n106), .B(n44), .ZN(n132) );
  AOI31D0BWP12T30P140 U117 ( .A1(start_cnt[0]), .A2(start_cnt[1]), .A3(
        start_cnt[2]), .B(n57), .ZN(n46) );
  AOI31D0BWP12T30P140 U118 ( .A1(current_mode), .A2(serirq_i), .A3(
        serirq_mode_i), .B(n101), .ZN(n45) );
  AO211D0BWP12T30P140 U119 ( .A1(n47), .A2(state[0]), .B(n46), .C(n45), .Z(
        n144) );
  OAI21D0BWP12T30P140 U120 ( .A1(n114), .A2(n63), .B(irq_o[21]), .ZN(n48) );
  OAI21D0BWP12T30P140 U121 ( .A1(n114), .A2(n65), .B(n48), .ZN(n158) );
  NR2D0BWP12T30P140 U122 ( .A1(n61), .A2(n49), .ZN(n52) );
  AOI21D0BWP12T30P140 U123 ( .A1(n50), .A2(n120), .B(n52), .ZN(n51) );
  OAI32D0BWP12T30P140 U124 ( .A1(irq_cnt[3]), .A2(n68), .A3(n120), .B1(n51), 
        .B2(n106), .ZN(n133) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n68), .A2(n53), .B1(n53), .B2(n52), .ZN(n181) );
  AOI31D0BWP12T30P140 U126 ( .A1(n55), .A2(serirq_oe), .A3(n85), .B(n54), .ZN(
        n56) );
  ND3D0BWP12T30P140 U127 ( .A1(n57), .A2(n81), .A3(n56), .ZN(n127) );
  OAI21D0BWP12T30P140 U128 ( .A1(n116), .A2(n63), .B(irq_o[22]), .ZN(n58) );
  OAI21D0BWP12T30P140 U129 ( .A1(n116), .A2(n65), .B(n58), .ZN(n157) );
  OAI21D0BWP12T30P140 U130 ( .A1(n60), .A2(n74), .B(n59), .ZN(n136) );
  INVD0BWP12T30P140 U131 ( .I(start_cnt[2]), .ZN(n87) );
  ND3D0BWP12T30P140 U132 ( .A1(n61), .A2(start_cnt[1]), .A3(start_cnt[0]), 
        .ZN(n88) );
  OAI22D0BWP12T30P140 U133 ( .A1(n62), .A2(n74), .B1(n87), .B2(n88), .ZN(n143)
         );
  OAI21D0BWP12T30P140 U134 ( .A1(n120), .A2(n63), .B(irq_o[23]), .ZN(n64) );
  OAI21D0BWP12T30P140 U135 ( .A1(n120), .A2(n65), .B(n64), .ZN(n156) );
  OAI222D0BWP12T30P140 U136 ( .A1(n69), .A2(n68), .B1(n81), .B2(n67), .C1(n66), 
        .C2(n74), .ZN(n138) );
  OAI21D0BWP12T30P140 U137 ( .A1(n71), .A2(n74), .B(n70), .ZN(n139) );
  OAI21D0BWP12T30P140 U138 ( .A1(n122), .A2(n93), .B(irq_o[24]), .ZN(n72) );
  OAI21D0BWP12T30P140 U139 ( .A1(n122), .A2(n95), .B(n72), .ZN(n155) );
  OAI21D0BWP12T30P140 U140 ( .A1(n75), .A2(n74), .B(n73), .ZN(n140) );
  ND2D0BWP12T30P140 U141 ( .A1(stop_cnt[0]), .A2(stop_cnt[1]), .ZN(n80) );
  OAI31D0BWP12T30P140 U142 ( .A1(n77), .A2(n81), .A3(n76), .B(n101), .ZN(n79)
         );
  INVD0BWP12T30P140 U143 ( .I(stop_cnt[2]), .ZN(n78) );
  OAI32D0BWP12T30P140 U144 ( .A1(stop_cnt[2]), .A2(n81), .A3(n80), .B1(n79), 
        .B2(n78), .ZN(n129) );
  OAI21D0BWP12T30P140 U145 ( .A1(n185), .A2(n93), .B(irq_o[25]), .ZN(n82) );
  OAI21D0BWP12T30P140 U146 ( .A1(n185), .A2(n95), .B(n82), .ZN(n154) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n84), .A2(n83), .B1(current_mode), .B2(n84), 
        .ZN(n180) );
  ND2D0BWP12T30P140 U148 ( .A1(start_cnt[1]), .A2(start_cnt[0]), .ZN(n86) );
  AOI21D0BWP12T30P140 U149 ( .A1(state[0]), .A2(n86), .B(n85), .ZN(n89) );
  AOI22D0BWP12T30P140 U150 ( .A1(start_cnt[2]), .A2(n89), .B1(n88), .B2(n87), 
        .ZN(n145) );
  OAI21D0BWP12T30P140 U151 ( .A1(n116), .A2(n93), .B(irq_o[30]), .ZN(n90) );
  OAI21D0BWP12T30P140 U152 ( .A1(n116), .A2(n95), .B(n90), .ZN(n149) );
  OAI21D0BWP12T30P140 U153 ( .A1(n114), .A2(n93), .B(irq_o[29]), .ZN(n91) );
  OAI21D0BWP12T30P140 U154 ( .A1(n114), .A2(n95), .B(n91), .ZN(n150) );
  OAI21D0BWP12T30P140 U155 ( .A1(n112), .A2(n93), .B(irq_o[28]), .ZN(n92) );
  OAI21D0BWP12T30P140 U156 ( .A1(n112), .A2(n95), .B(n92), .ZN(n151) );
  OAI21D0BWP12T30P140 U157 ( .A1(n124), .A2(n93), .B(irq_o[26]), .ZN(n94) );
  OAI21D0BWP12T30P140 U158 ( .A1(n124), .A2(n95), .B(n94), .ZN(n153) );
  NR2D0BWP12T30P140 U159 ( .A1(serirq_i), .A2(n96), .ZN(n102) );
  INVD0BWP12T30P140 U160 ( .I(n97), .ZN(n99) );
  AOI21D0BWP12T30P140 U161 ( .A1(n99), .A2(serirq_o), .B(n98), .ZN(n100) );
  OAI21D0BWP12T30P140 U162 ( .A1(n102), .A2(n101), .B(n100), .ZN(n128) );
  ND3D0BWP12T30P140 U163 ( .A1(n106), .A2(n105), .A3(n103), .ZN(n119) );
  ND3D0BWP12T30P140 U164 ( .A1(n106), .A2(n105), .A3(n104), .ZN(n117) );
  OAI21D0BWP12T30P140 U165 ( .A1(n122), .A2(n117), .B(irq_o[0]), .ZN(n107) );
  OAI21D0BWP12T30P140 U166 ( .A1(n122), .A2(n119), .B(n107), .ZN(n179) );
  OAI21D0BWP12T30P140 U167 ( .A1(n185), .A2(n117), .B(irq_o[1]), .ZN(n108) );
  OAI21D0BWP12T30P140 U168 ( .A1(n185), .A2(n119), .B(n108), .ZN(n178) );
  OAI21D0BWP12T30P140 U169 ( .A1(n124), .A2(n117), .B(irq_o[2]), .ZN(n109) );
  OAI21D0BWP12T30P140 U170 ( .A1(n124), .A2(n119), .B(n109), .ZN(n177) );
  OAI21D0BWP12T30P140 U171 ( .A1(n126), .A2(n117), .B(irq_o[3]), .ZN(n110) );
  OAI21D0BWP12T30P140 U172 ( .A1(n126), .A2(n119), .B(n110), .ZN(n176) );
  OAI21D0BWP12T30P140 U173 ( .A1(n112), .A2(n117), .B(irq_o[4]), .ZN(n111) );
  OAI21D0BWP12T30P140 U174 ( .A1(n112), .A2(n119), .B(n111), .ZN(n175) );
  OAI21D0BWP12T30P140 U175 ( .A1(n114), .A2(n117), .B(irq_o[5]), .ZN(n113) );
  OAI21D0BWP12T30P140 U176 ( .A1(n114), .A2(n119), .B(n113), .ZN(n174) );
  OAI21D0BWP12T30P140 U177 ( .A1(n116), .A2(n117), .B(irq_o[6]), .ZN(n115) );
  OAI21D0BWP12T30P140 U178 ( .A1(n116), .A2(n119), .B(n115), .ZN(n173) );
  OAI21D0BWP12T30P140 U179 ( .A1(n120), .A2(n117), .B(irq_o[7]), .ZN(n118) );
  OAI21D0BWP12T30P140 U180 ( .A1(n120), .A2(n119), .B(n118), .ZN(n172) );
  OAI21D0BWP12T30P140 U181 ( .A1(n122), .A2(n182), .B(irq_o[8]), .ZN(n121) );
  OAI21D0BWP12T30P140 U182 ( .A1(n122), .A2(n184), .B(n121), .ZN(n171) );
  OAI21D0BWP12T30P140 U183 ( .A1(n124), .A2(n182), .B(irq_o[10]), .ZN(n123) );
  OAI21D0BWP12T30P140 U184 ( .A1(n124), .A2(n184), .B(n123), .ZN(n169) );
  OAI21D0BWP12T30P140 U185 ( .A1(n126), .A2(n182), .B(irq_o[11]), .ZN(n125) );
  OAI21D0BWP12T30P140 U186 ( .A1(n126), .A2(n184), .B(n125), .ZN(n168) );
  OAI21D0BWP12T30P140 U187 ( .A1(n185), .A2(n182), .B(irq_o[9]), .ZN(n183) );
  OAI21D0BWP12T30P140 U188 ( .A1(n185), .A2(n184), .B(n183), .ZN(n170) );
  CKBD0BWP12T30P140 U189 ( .I(clk_i), .Z(n189) );
  CKBD0BWP12T30P140 U190 ( .I(clk_i), .Z(n188) );
  CKBD0BWP12T30P140 U191 ( .I(clk_i), .Z(n190) );
  CKBD0BWP12T30P140 U192 ( .I(nrst_i), .Z(n186) );
endmodule


module serirq_slave ( clk_i, nrst_i, irq_i, serirq_o, serirq_i, serirq_oe );
  input [31:0] irq_i;
  input clk_i, nrst_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   serirq_mode, found_stop, found_start, N59, N60, N61, N62, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n1, n2, n3, n4,
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
         n136, n137, n138, n139, n140, n141, n142, n143, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272;
  wire   [31:0] current_irq;
  wire   [3:0] stop_clk_cnt;
  wire   [4:0] irq_cnt;
  wire   [9:0] state;

  DFCSNQD1BWP12T30P140 current_irq_reg_0_ ( .D(n249), .CP(n271), .CDN(n146), 
        .SDN(n147), .Q(current_irq[0]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_1_ ( .D(n248), .CP(n271), .CDN(n148), 
        .SDN(n149), .Q(current_irq[1]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_2_ ( .D(n247), .CP(n271), .CDN(n150), 
        .SDN(n151), .Q(current_irq[2]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_3_ ( .D(n246), .CP(n271), .CDN(n152), 
        .SDN(n153), .Q(current_irq[3]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_4_ ( .D(n245), .CP(n271), .CDN(n154), 
        .SDN(n155), .Q(current_irq[4]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_5_ ( .D(n244), .CP(n271), .CDN(n156), 
        .SDN(n157), .Q(current_irq[5]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_6_ ( .D(n243), .CP(n271), .CDN(n158), 
        .SDN(n159), .Q(current_irq[6]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_7_ ( .D(n242), .CP(n271), .CDN(n160), 
        .SDN(n161), .Q(current_irq[7]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_8_ ( .D(n241), .CP(n271), .CDN(n162), 
        .SDN(n163), .Q(current_irq[8]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_9_ ( .D(n240), .CP(n271), .CDN(n164), 
        .SDN(n165), .Q(current_irq[9]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_10_ ( .D(n239), .CP(n271), .CDN(n166), 
        .SDN(n167), .Q(current_irq[10]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_11_ ( .D(n238), .CP(n272), .CDN(n168), 
        .SDN(n169), .Q(current_irq[11]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_12_ ( .D(n237), .CP(n272), .CDN(n170), 
        .SDN(n171), .Q(current_irq[12]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_13_ ( .D(n236), .CP(n272), .CDN(n172), 
        .SDN(n173), .Q(current_irq[13]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_14_ ( .D(n235), .CP(n272), .CDN(n174), 
        .SDN(n175), .Q(current_irq[14]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_15_ ( .D(n234), .CP(n272), .CDN(n176), 
        .SDN(n177), .Q(current_irq[15]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_16_ ( .D(n233), .CP(n272), .CDN(n178), 
        .SDN(n179), .Q(current_irq[16]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_17_ ( .D(n232), .CP(n272), .CDN(n180), 
        .SDN(n181), .Q(current_irq[17]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_18_ ( .D(n231), .CP(n272), .CDN(n182), 
        .SDN(n183), .Q(current_irq[18]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_19_ ( .D(n230), .CP(n272), .CDN(n184), 
        .SDN(n185), .Q(current_irq[19]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_20_ ( .D(n229), .CP(n272), .CDN(n186), 
        .SDN(n187), .Q(current_irq[20]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_21_ ( .D(n228), .CP(n272), .CDN(n188), 
        .SDN(n189), .Q(current_irq[21]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_22_ ( .D(n227), .CP(n272), .CDN(n190), 
        .SDN(n191), .Q(current_irq[22]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_23_ ( .D(n226), .CP(n272), .CDN(n192), 
        .SDN(n193), .Q(current_irq[23]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_24_ ( .D(n225), .CP(n272), .CDN(n194), 
        .SDN(n195), .Q(current_irq[24]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_25_ ( .D(n224), .CP(n272), .CDN(n196), 
        .SDN(n197), .Q(current_irq[25]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_26_ ( .D(n223), .CP(n272), .CDN(n198), 
        .SDN(n199), .Q(current_irq[26]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_27_ ( .D(n222), .CP(n272), .CDN(n200), 
        .SDN(n201), .Q(current_irq[27]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_28_ ( .D(n221), .CP(n272), .CDN(n202), 
        .SDN(n203), .Q(current_irq[28]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_29_ ( .D(n220), .CP(n272), .CDN(n204), 
        .SDN(n205), .Q(current_irq[29]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_30_ ( .D(n219), .CP(n271), .CDN(n206), 
        .SDN(n207), .Q(current_irq[30]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_31_ ( .D(n218), .CP(n271), .CDN(n208), 
        .SDN(n209), .Q(current_irq[31]) );
  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(n211), .CP(n271), .SDN(n269), .Q(
        serirq_o) );
  DFCNQD1BWP12T30P140 serirq_mode_reg ( .D(n253), .CP(n270), .CDN(n269), .Q(
        serirq_mode) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(n210), .CP(n271), .CDN(n269), .Q(
        serirq_oe) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n213), .CP(n271), .CDN(n269), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 found_start_reg ( .D(n144), .CP(n271), .CDN(n269), .Q(
        found_start) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_2_ ( .D(N61), .CP(n270), .CDN(n269), 
        .Q(stop_clk_cnt[2]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n212), .CP(n271), .CDN(n269), .Q(
        irq_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n217), .CP(n270), .CDN(n269), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n252), .CP(n270), .CDN(n269), .Q(
        irq_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n215), .CP(n270), .CDN(n269), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_3_ ( .D(N62), .CP(n270), .CDN(n269), 
        .Q(stop_clk_cnt[3]) );
  DFCNQD1BWP12T30P140 state_reg_9_ ( .D(n250), .CP(n270), .CDN(n269), .Q(
        state[9]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_1_ ( .D(N60), .CP(n270), .CDN(n269), 
        .Q(stop_clk_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n216), .CP(n270), .CDN(n269), .Q(
        state[4]) );
  DFCNQD1BWP12T30P140 found_stop_reg ( .D(n145), .CP(n271), .CDN(n269), .Q(
        found_stop) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n214), .CP(n270), .CDN(n269), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_0_ ( .D(N59), .CP(n270), .CDN(n269), 
        .Q(stop_clk_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n251), .CP(n271), .CDN(n269), .Q(
        irq_cnt[4]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(state[0]), .CP(n270), .CDN(n269), .Q(
        state[0]) );
  INVD0BWP12T30P140 U3 ( .I(state[3]), .ZN(n52) );
  NR3D0BWP12T30P140 U4 ( .A1(state[9]), .A2(state[0]), .A3(state[4]), .ZN(n38)
         );
  INVD0BWP12T30P140 U5 ( .I(state[5]), .ZN(n54) );
  ND2D0BWP12T30P140 U6 ( .A1(n38), .A2(n54), .ZN(n119) );
  INVD0BWP12T30P140 U7 ( .I(n119), .ZN(n114) );
  ND2D0BWP12T30P140 U8 ( .A1(n52), .A2(n114), .ZN(n109) );
  INVD0BWP12T30P140 U9 ( .I(n109), .ZN(n39) );
  INVD0BWP12T30P140 U10 ( .I(irq_i[31]), .ZN(n266) );
  INVD0BWP12T30P140 U11 ( .I(irq_i[30]), .ZN(n264) );
  OAI22D0BWP12T30P140 U12 ( .A1(n266), .A2(current_irq[31]), .B1(n264), .B2(
        current_irq[30]), .ZN(n1) );
  AOI221D0BWP12T30P140 U13 ( .A1(n266), .A2(current_irq[31]), .B1(
        current_irq[30]), .B2(n264), .C(n1), .ZN(n8) );
  INVD0BWP12T30P140 U14 ( .I(irq_i[29]), .ZN(n263) );
  INVD0BWP12T30P140 U15 ( .I(irq_i[28]), .ZN(n262) );
  OAI22D0BWP12T30P140 U16 ( .A1(n263), .A2(current_irq[29]), .B1(n262), .B2(
        current_irq[28]), .ZN(n2) );
  AOI221D0BWP12T30P140 U17 ( .A1(n263), .A2(current_irq[29]), .B1(
        current_irq[28]), .B2(n262), .C(n2), .ZN(n7) );
  INVD0BWP12T30P140 U18 ( .I(irq_i[27]), .ZN(n261) );
  INVD0BWP12T30P140 U19 ( .I(irq_i[26]), .ZN(n260) );
  OAI22D0BWP12T30P140 U20 ( .A1(n261), .A2(current_irq[27]), .B1(n260), .B2(
        current_irq[26]), .ZN(n3) );
  AOI221D0BWP12T30P140 U21 ( .A1(n261), .A2(current_irq[27]), .B1(
        current_irq[26]), .B2(n260), .C(n3), .ZN(n6) );
  INVD0BWP12T30P140 U22 ( .I(irq_i[25]), .ZN(n259) );
  INVD0BWP12T30P140 U23 ( .I(irq_i[24]), .ZN(n258) );
  OAI22D0BWP12T30P140 U24 ( .A1(n259), .A2(current_irq[25]), .B1(n258), .B2(
        current_irq[24]), .ZN(n4) );
  AOI221D0BWP12T30P140 U25 ( .A1(n259), .A2(current_irq[25]), .B1(
        current_irq[24]), .B2(n258), .C(n4), .ZN(n5) );
  ND4D0BWP12T30P140 U26 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n36) );
  INVD0BWP12T30P140 U27 ( .I(irq_i[23]), .ZN(n257) );
  INVD0BWP12T30P140 U28 ( .I(irq_i[22]), .ZN(n255) );
  OAI22D0BWP12T30P140 U29 ( .A1(n257), .A2(current_irq[23]), .B1(n255), .B2(
        current_irq[22]), .ZN(n9) );
  AOI221D0BWP12T30P140 U30 ( .A1(n257), .A2(current_irq[23]), .B1(
        current_irq[22]), .B2(n255), .C(n9), .ZN(n16) );
  INVD0BWP12T30P140 U31 ( .I(irq_i[21]), .ZN(n254) );
  INVD0BWP12T30P140 U32 ( .I(irq_i[20]), .ZN(n143) );
  OAI22D0BWP12T30P140 U33 ( .A1(n254), .A2(current_irq[21]), .B1(n143), .B2(
        current_irq[20]), .ZN(n10) );
  AOI221D0BWP12T30P140 U34 ( .A1(n254), .A2(current_irq[21]), .B1(
        current_irq[20]), .B2(n143), .C(n10), .ZN(n15) );
  INVD0BWP12T30P140 U35 ( .I(irq_i[19]), .ZN(n142) );
  INVD0BWP12T30P140 U36 ( .I(irq_i[18]), .ZN(n141) );
  OAI22D0BWP12T30P140 U37 ( .A1(n142), .A2(current_irq[19]), .B1(n141), .B2(
        current_irq[18]), .ZN(n11) );
  AOI221D0BWP12T30P140 U38 ( .A1(n142), .A2(current_irq[19]), .B1(
        current_irq[18]), .B2(n141), .C(n11), .ZN(n14) );
  INVD0BWP12T30P140 U39 ( .I(irq_i[17]), .ZN(n140) );
  INVD0BWP12T30P140 U40 ( .I(irq_i[16]), .ZN(n139) );
  OAI22D0BWP12T30P140 U41 ( .A1(n140), .A2(current_irq[17]), .B1(n139), .B2(
        current_irq[16]), .ZN(n12) );
  AOI221D0BWP12T30P140 U42 ( .A1(n140), .A2(current_irq[17]), .B1(
        current_irq[16]), .B2(n139), .C(n12), .ZN(n13) );
  ND4D0BWP12T30P140 U43 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .ZN(n35) );
  INVD0BWP12T30P140 U44 ( .I(irq_i[15]), .ZN(n138) );
  INVD0BWP12T30P140 U45 ( .I(irq_i[14]), .ZN(n137) );
  OAI22D0BWP12T30P140 U46 ( .A1(n138), .A2(current_irq[15]), .B1(n137), .B2(
        current_irq[14]), .ZN(n17) );
  AOI221D0BWP12T30P140 U47 ( .A1(n138), .A2(current_irq[15]), .B1(
        current_irq[14]), .B2(n137), .C(n17), .ZN(n24) );
  INVD0BWP12T30P140 U48 ( .I(irq_i[13]), .ZN(n136) );
  INVD0BWP12T30P140 U49 ( .I(irq_i[12]), .ZN(n134) );
  OAI22D0BWP12T30P140 U50 ( .A1(n136), .A2(current_irq[13]), .B1(n134), .B2(
        current_irq[12]), .ZN(n18) );
  AOI221D0BWP12T30P140 U51 ( .A1(n136), .A2(current_irq[13]), .B1(
        current_irq[12]), .B2(n134), .C(n18), .ZN(n23) );
  INVD0BWP12T30P140 U52 ( .I(irq_i[11]), .ZN(n133) );
  INVD0BWP12T30P140 U53 ( .I(irq_i[10]), .ZN(n132) );
  OAI22D0BWP12T30P140 U54 ( .A1(n133), .A2(current_irq[11]), .B1(n132), .B2(
        current_irq[10]), .ZN(n19) );
  AOI221D0BWP12T30P140 U55 ( .A1(n133), .A2(current_irq[11]), .B1(
        current_irq[10]), .B2(n132), .C(n19), .ZN(n22) );
  INVD0BWP12T30P140 U56 ( .I(irq_i[9]), .ZN(n131) );
  INVD0BWP12T30P140 U57 ( .I(irq_i[8]), .ZN(n130) );
  OAI22D0BWP12T30P140 U58 ( .A1(n131), .A2(current_irq[9]), .B1(n130), .B2(
        current_irq[8]), .ZN(n20) );
  AOI221D0BWP12T30P140 U59 ( .A1(n131), .A2(current_irq[9]), .B1(
        current_irq[8]), .B2(n130), .C(n20), .ZN(n21) );
  ND4D0BWP12T30P140 U60 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .ZN(n34) );
  INVD0BWP12T30P140 U61 ( .I(irq_i[7]), .ZN(n129) );
  INVD0BWP12T30P140 U62 ( .I(irq_i[6]), .ZN(n128) );
  OAI22D0BWP12T30P140 U63 ( .A1(n129), .A2(current_irq[7]), .B1(n128), .B2(
        current_irq[6]), .ZN(n25) );
  AOI221D0BWP12T30P140 U64 ( .A1(n129), .A2(current_irq[7]), .B1(
        current_irq[6]), .B2(n128), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U65 ( .I(irq_i[5]), .ZN(n127) );
  INVD0BWP12T30P140 U66 ( .I(irq_i[4]), .ZN(n126) );
  OAI22D0BWP12T30P140 U67 ( .A1(n127), .A2(current_irq[5]), .B1(n126), .B2(
        current_irq[4]), .ZN(n26) );
  AOI221D0BWP12T30P140 U68 ( .A1(n127), .A2(current_irq[5]), .B1(
        current_irq[4]), .B2(n126), .C(n26), .ZN(n31) );
  INVD0BWP12T30P140 U69 ( .I(irq_i[3]), .ZN(n125) );
  INVD0BWP12T30P140 U70 ( .I(irq_i[2]), .ZN(n123) );
  OAI22D0BWP12T30P140 U71 ( .A1(n125), .A2(current_irq[3]), .B1(n123), .B2(
        current_irq[2]), .ZN(n27) );
  AOI221D0BWP12T30P140 U72 ( .A1(n125), .A2(current_irq[3]), .B1(
        current_irq[2]), .B2(n123), .C(n27), .ZN(n30) );
  INVD0BWP12T30P140 U73 ( .I(irq_i[1]), .ZN(n122) );
  INVD0BWP12T30P140 U74 ( .I(irq_i[0]), .ZN(n121) );
  OAI22D0BWP12T30P140 U75 ( .A1(n122), .A2(current_irq[1]), .B1(n121), .B2(
        current_irq[0]), .ZN(n28) );
  AOI221D0BWP12T30P140 U76 ( .A1(n122), .A2(current_irq[1]), .B1(
        current_irq[0]), .B2(n121), .C(n28), .ZN(n29) );
  ND4D0BWP12T30P140 U77 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  NR4D0BWP12T30P140 U78 ( .A1(n36), .A2(n35), .A3(n34), .A4(n33), .ZN(n37) );
  INVD0BWP12T30P140 U79 ( .I(serirq_mode), .ZN(n268) );
  INVD0BWP12T30P140 U80 ( .I(found_start), .ZN(n61) );
  OAI21D0BWP12T30P140 U81 ( .A1(n37), .A2(n268), .B(n61), .ZN(n108) );
  ND2D0BWP12T30P140 U82 ( .A1(n39), .A2(n108), .ZN(n116) );
  INVD0BWP12T30P140 U83 ( .I(n116), .ZN(n111) );
  CKBD0BWP12T30P140 U84 ( .I(n111), .Z(n113) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n113), .A2(n137), .B1(current_irq[14]), .B2(
        n111), .ZN(n235) );
  CKBD0BWP12T30P140 U86 ( .I(n111), .Z(n112) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n113), .A2(n139), .B1(current_irq[16]), .B2(
        n112), .ZN(n233) );
  CKBD0BWP12T30P140 U88 ( .I(n111), .Z(n110) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n110), .A2(n134), .B1(current_irq[12]), .B2(
        n112), .ZN(n237) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n110), .A2(n131), .B1(current_irq[9]), .B2(
        n113), .ZN(n240) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n113), .A2(n138), .B1(current_irq[15]), .B2(
        n113), .ZN(n234) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n110), .A2(n130), .B1(current_irq[8]), .B2(
        n111), .ZN(n241) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n110), .A2(n133), .B1(current_irq[11]), .B2(
        n111), .ZN(n238) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n110), .A2(n128), .B1(current_irq[6]), .B2(
        n111), .ZN(n243) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n110), .A2(n136), .B1(current_irq[13]), .B2(
        n113), .ZN(n236) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n110), .A2(n132), .B1(current_irq[10]), .B2(
        n110), .ZN(n239) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n110), .A2(n129), .B1(current_irq[7]), .B2(
        n111), .ZN(n242) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n110), .A2(n127), .B1(current_irq[5]), .B2(
        n111), .ZN(n244) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n110), .A2(n126), .B1(current_irq[4]), .B2(
        n111), .ZN(n245) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n110), .A2(n125), .B1(current_irq[3]), .B2(
        n111), .ZN(n246) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n110), .A2(n123), .B1(current_irq[2]), .B2(
        n111), .ZN(n247) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n110), .A2(n122), .B1(current_irq[1]), .B2(
        n111), .ZN(n248) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n112), .A2(n121), .B1(current_irq[0]), .B2(
        n112), .ZN(n249) );
  INVD0BWP12T30P140 U104 ( .I(irq_cnt[4]), .ZN(n81) );
  INVD0BWP12T30P140 U105 ( .I(irq_cnt[3]), .ZN(n98) );
  ND3D0BWP12T30P140 U106 ( .A1(n52), .A2(state[5]), .A3(n38), .ZN(n120) );
  INVD0BWP12T30P140 U107 ( .I(n120), .ZN(n56) );
  INVD0BWP12T30P140 U108 ( .I(irq_cnt[1]), .ZN(n67) );
  INVD0BWP12T30P140 U109 ( .I(irq_cnt[2]), .ZN(n66) );
  NR2D0BWP12T30P140 U110 ( .A1(n67), .A2(n66), .ZN(n88) );
  INVD0BWP12T30P140 U111 ( .I(n88), .ZN(n86) );
  INVD0BWP12T30P140 U112 ( .I(irq_cnt[0]), .ZN(n102) );
  NR2D0BWP12T30P140 U113 ( .A1(n86), .A2(n102), .ZN(n40) );
  ND2D0BWP12T30P140 U114 ( .A1(n56), .A2(n40), .ZN(n41) );
  OAI22D0BWP12T30P140 U115 ( .A1(n39), .A2(n81), .B1(n98), .B2(n41), .ZN(n251)
         );
  NR2D0BWP12T30P140 U116 ( .A1(serirq_i), .A2(stop_clk_cnt[0]), .ZN(N59) );
  ND3D0BWP12T30P140 U117 ( .A1(irq_cnt[3]), .A2(irq_cnt[4]), .A3(n40), .ZN(n50) );
  AOI21D0BWP12T30P140 U118 ( .A1(n56), .A2(n50), .B(n39), .ZN(n55) );
  IAO21D0BWP12T30P140 U119 ( .A1(n120), .A2(n40), .B(n55), .ZN(n42) );
  AOI22D0BWP12T30P140 U120 ( .A1(irq_cnt[3]), .A2(n42), .B1(n41), .B2(n98), 
        .ZN(n214) );
  INVD0BWP12T30P140 U121 ( .I(found_stop), .ZN(n43) );
  INVD0BWP12T30P140 U122 ( .I(stop_clk_cnt[2]), .ZN(n59) );
  INVD0BWP12T30P140 U123 ( .I(stop_clk_cnt[3]), .ZN(n60) );
  ND4D0BWP12T30P140 U124 ( .A1(serirq_i), .A2(stop_clk_cnt[1]), .A3(n59), .A4(
        n60), .ZN(n267) );
  OAI21D0BWP12T30P140 U125 ( .A1(serirq_i), .A2(n43), .B(n267), .ZN(n145) );
  NR2D0BWP12T30P140 U126 ( .A1(state[3]), .A2(state[5]), .ZN(n47) );
  IIND4D0BWP12T30P140 U127 ( .A1(state[0]), .A2(state[9]), .B1(n47), .B2(
        state[4]), .ZN(n106) );
  ND2D0BWP12T30P140 U128 ( .A1(n120), .A2(n106), .ZN(n53) );
  INVD0BWP12T30P140 U129 ( .I(state[4]), .ZN(n45) );
  AOI21D0BWP12T30P140 U130 ( .A1(n52), .A2(n61), .B(n119), .ZN(n105) );
  OAI21D0BWP12T30P140 U131 ( .A1(n52), .A2(n43), .B(n105), .ZN(n44) );
  OAI21D0BWP12T30P140 U132 ( .A1(n53), .A2(n45), .B(n44), .ZN(n216) );
  INVD0BWP12T30P140 U133 ( .I(serirq_i), .ZN(n63) );
  ND2D0BWP12T30P140 U134 ( .A1(stop_clk_cnt[0]), .A2(stop_clk_cnt[1]), .ZN(n58) );
  OA211D0BWP12T30P140 U135 ( .A1(stop_clk_cnt[0]), .A2(stop_clk_cnt[1]), .B(
        n63), .C(n58), .Z(N60) );
  NR2D0BWP12T30P140 U136 ( .A1(state[0]), .A2(state[4]), .ZN(n46) );
  ND3D0BWP12T30P140 U137 ( .A1(n47), .A2(n46), .A3(found_stop), .ZN(n48) );
  MOAI22D0BWP12T30P140 U138 ( .A1(n120), .A2(n50), .B1(state[9]), .B2(n48), 
        .ZN(n250) );
  NR2D0BWP12T30P140 U139 ( .A1(n59), .A2(n58), .ZN(n57) );
  INVD0BWP12T30P140 U140 ( .I(n57), .ZN(n49) );
  AOI221D0BWP12T30P140 U141 ( .A1(stop_clk_cnt[3]), .A2(n57), .B1(n60), .B2(
        n49), .C(serirq_i), .ZN(N62) );
  ND2D0BWP12T30P140 U142 ( .A1(n56), .A2(n50), .ZN(n51) );
  OAI22D0BWP12T30P140 U143 ( .A1(n114), .A2(n52), .B1(found_stop), .B2(n51), 
        .ZN(n215) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n120), .A2(n102), .B1(n102), .B2(n55), .ZN(
        n252) );
  OAI22D0BWP12T30P140 U145 ( .A1(found_stop), .A2(n106), .B1(n54), .B2(n53), 
        .ZN(n217) );
  AOI21D0BWP12T30P140 U146 ( .A1(n56), .A2(n102), .B(n55), .ZN(n64) );
  OAI32D0BWP12T30P140 U147 ( .A1(irq_cnt[1]), .A2(n120), .A3(n102), .B1(n64), 
        .B2(n67), .ZN(n212) );
  AOI211D0BWP12T30P140 U148 ( .A1(n59), .A2(n58), .B(serirq_i), .C(n57), .ZN(
        N61) );
  OA32D0BWP12T30P140 U149 ( .A1(n60), .A2(stop_clk_cnt[2]), .A3(
        stop_clk_cnt[1]), .B1(stop_clk_cnt[3]), .B2(n59), .Z(n62) );
  OAI32D0BWP12T30P140 U150 ( .A1(n63), .A2(stop_clk_cnt[0]), .A3(n62), .B1(
        serirq_i), .B2(n61), .ZN(n144) );
  NR2D0BWP12T30P140 U151 ( .A1(irq_cnt[2]), .A2(n67), .ZN(n93) );
  NR2D0BWP12T30P140 U152 ( .A1(irq_cnt[1]), .A2(n66), .ZN(n89) );
  AOI21D0BWP12T30P140 U153 ( .A1(n93), .A2(irq_cnt[0]), .B(n89), .ZN(n65) );
  OAI22D0BWP12T30P140 U154 ( .A1(n65), .A2(n120), .B1(n64), .B2(n66), .ZN(n213) );
  ND2D0BWP12T30P140 U155 ( .A1(n67), .A2(n66), .ZN(n91) );
  INVD0BWP12T30P140 U156 ( .I(n91), .ZN(n87) );
  AOI21D0BWP12T30P140 U157 ( .A1(n87), .A2(irq_i[25]), .B(n81), .ZN(n69) );
  AOI22D0BWP12T30P140 U158 ( .A1(n93), .A2(irq_i[27]), .B1(n89), .B2(irq_i[29]), .ZN(n68) );
  OAI211D0BWP12T30P140 U159 ( .A1(n86), .A2(n266), .B(n69), .C(n68), .ZN(n80)
         );
  AOI21D0BWP12T30P140 U160 ( .A1(n87), .A2(irq_i[9]), .B(irq_cnt[4]), .ZN(n71)
         );
  AOI22D0BWP12T30P140 U161 ( .A1(n93), .A2(irq_i[11]), .B1(n89), .B2(irq_i[13]), .ZN(n70) );
  OAI211D0BWP12T30P140 U162 ( .A1(n86), .A2(n138), .B(n71), .C(n70), .ZN(n79)
         );
  AOI21D0BWP12T30P140 U163 ( .A1(n87), .A2(irq_i[1]), .B(irq_cnt[4]), .ZN(n77)
         );
  AOI22D0BWP12T30P140 U164 ( .A1(n89), .A2(irq_i[5]), .B1(n88), .B2(irq_i[7]), 
        .ZN(n76) );
  ND2D0BWP12T30P140 U165 ( .A1(n93), .A2(irq_i[3]), .ZN(n75) );
  AOI22D0BWP12T30P140 U166 ( .A1(n89), .A2(irq_i[21]), .B1(n88), .B2(irq_i[23]), .ZN(n72) );
  OAI211D0BWP12T30P140 U167 ( .A1(n140), .A2(n91), .B(irq_cnt[4]), .C(n72), 
        .ZN(n73) );
  AOI21D0BWP12T30P140 U168 ( .A1(n93), .A2(irq_i[19]), .B(n73), .ZN(n74) );
  AOI31D0BWP12T30P140 U169 ( .A1(n77), .A2(n76), .A3(n75), .B(n74), .ZN(n78)
         );
  AOI32D0BWP12T30P140 U170 ( .A1(n80), .A2(irq_cnt[3]), .A3(n79), .B1(n78), 
        .B2(n98), .ZN(n104) );
  AOI21D0BWP12T30P140 U171 ( .A1(n87), .A2(irq_i[24]), .B(n81), .ZN(n83) );
  AOI22D0BWP12T30P140 U172 ( .A1(n93), .A2(irq_i[26]), .B1(n89), .B2(irq_i[28]), .ZN(n82) );
  OAI211D0BWP12T30P140 U173 ( .A1(n86), .A2(n264), .B(n83), .C(n82), .ZN(n101)
         );
  AOI21D0BWP12T30P140 U174 ( .A1(n87), .A2(irq_i[8]), .B(irq_cnt[4]), .ZN(n85)
         );
  AOI22D0BWP12T30P140 U175 ( .A1(n93), .A2(irq_i[10]), .B1(n89), .B2(irq_i[12]), .ZN(n84) );
  OAI211D0BWP12T30P140 U176 ( .A1(n86), .A2(n137), .B(n85), .C(n84), .ZN(n100)
         );
  AOI21D0BWP12T30P140 U177 ( .A1(n87), .A2(irq_i[0]), .B(irq_cnt[4]), .ZN(n97)
         );
  AOI22D0BWP12T30P140 U178 ( .A1(n89), .A2(irq_i[4]), .B1(n88), .B2(irq_i[6]), 
        .ZN(n96) );
  ND2D0BWP12T30P140 U179 ( .A1(n93), .A2(irq_i[2]), .ZN(n95) );
  AOI22D0BWP12T30P140 U180 ( .A1(n89), .A2(irq_i[20]), .B1(n88), .B2(irq_i[22]), .ZN(n90) );
  OAI211D0BWP12T30P140 U181 ( .A1(n139), .A2(n91), .B(irq_cnt[4]), .C(n90), 
        .ZN(n92) );
  AOI21D0BWP12T30P140 U182 ( .A1(n93), .A2(irq_i[18]), .B(n92), .ZN(n94) );
  AOI31D0BWP12T30P140 U183 ( .A1(n97), .A2(n96), .A3(n95), .B(n94), .ZN(n99)
         );
  AOI32D0BWP12T30P140 U184 ( .A1(n101), .A2(irq_cnt[3]), .A3(n100), .B1(n99), 
        .B2(n98), .ZN(n103) );
  AOI22D0BWP12T30P140 U185 ( .A1(irq_cnt[0]), .A2(n104), .B1(n103), .B2(n102), 
        .ZN(n117) );
  AOI22D0BWP12T30P140 U186 ( .A1(n105), .A2(n117), .B1(serirq_o), .B2(n119), 
        .ZN(n107) );
  OAI211D0BWP12T30P140 U187 ( .A1(n109), .A2(n108), .B(n107), .C(n106), .ZN(
        n211) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n113), .A2(n266), .B1(current_irq[31]), .B2(
        n111), .ZN(n218) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n112), .A2(n264), .B1(current_irq[30]), .B2(
        n110), .ZN(n219) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n113), .A2(n263), .B1(current_irq[29]), .B2(
        n110), .ZN(n220) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n112), .A2(n262), .B1(current_irq[28]), .B2(
        n111), .ZN(n221) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n112), .A2(n261), .B1(current_irq[27]), .B2(
        n112), .ZN(n222) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n113), .A2(n260), .B1(current_irq[26]), .B2(
        n110), .ZN(n223) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n113), .A2(n140), .B1(current_irq[17]), .B2(
        n112), .ZN(n232) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n113), .A2(n257), .B1(current_irq[23]), .B2(
        n112), .ZN(n226) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n113), .A2(n141), .B1(current_irq[18]), .B2(
        n112), .ZN(n231) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n113), .A2(n258), .B1(current_irq[24]), .B2(
        n112), .ZN(n225) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n113), .A2(n143), .B1(current_irq[20]), .B2(
        n112), .ZN(n229) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n112), .A2(n259), .B1(current_irq[25]), .B2(
        n111), .ZN(n224) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n113), .A2(n254), .B1(current_irq[21]), .B2(
        n112), .ZN(n228) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n113), .A2(n255), .B1(current_irq[22]), .B2(
        n112), .ZN(n227) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n113), .A2(n142), .B1(current_irq[19]), .B2(
        n112), .ZN(n230) );
  CKBD0BWP12T30P140 U203 ( .I(clk_i), .Z(n270) );
  CKBD0BWP12T30P140 U204 ( .I(clk_i), .Z(n272) );
  CKBD0BWP12T30P140 U205 ( .I(clk_i), .Z(n271) );
  INVD0BWP12T30P140 U206 ( .I(nrst_i), .ZN(n256) );
  CKBD0BWP12T30P140 U207 ( .I(n256), .Z(n265) );
  INVD0BWP12T30P140 U208 ( .I(n265), .ZN(n269) );
  ND2D0BWP12T30P140 U209 ( .A1(irq_i[16]), .A2(n256), .ZN(n179) );
  ND2D0BWP12T30P140 U210 ( .A1(irq_i[28]), .A2(n265), .ZN(n203) );
  ND2D0BWP12T30P140 U211 ( .A1(irq_i[22]), .A2(n265), .ZN(n191) );
  ND2D0BWP12T30P140 U212 ( .A1(irq_i[15]), .A2(n256), .ZN(n177) );
  ND2D0BWP12T30P140 U213 ( .A1(irq_i[17]), .A2(n256), .ZN(n181) );
  ND2D0BWP12T30P140 U214 ( .A1(irq_i[14]), .A2(n256), .ZN(n175) );
  ND2D0BWP12T30P140 U215 ( .A1(irq_i[18]), .A2(n256), .ZN(n183) );
  INVD0BWP12T30P140 U216 ( .I(nrst_i), .ZN(n135) );
  CKBD0BWP12T30P140 U217 ( .I(n135), .Z(n124) );
  ND2D0BWP12T30P140 U218 ( .A1(irq_i[7]), .A2(n124), .ZN(n161) );
  ND2D0BWP12T30P140 U219 ( .A1(irq_i[13]), .A2(n124), .ZN(n173) );
  ND2D0BWP12T30P140 U220 ( .A1(irq_i[19]), .A2(n256), .ZN(n185) );
  ND2D0BWP12T30P140 U221 ( .A1(irq_i[31]), .A2(n265), .ZN(n209) );
  ND2D0BWP12T30P140 U222 ( .A1(irq_i[12]), .A2(n124), .ZN(n171) );
  ND2D0BWP12T30P140 U223 ( .A1(irq_i[20]), .A2(n256), .ZN(n187) );
  ND2D0BWP12T30P140 U224 ( .A1(irq_i[2]), .A2(n124), .ZN(n151) );
  ND2D0BWP12T30P140 U225 ( .A1(irq_i[11]), .A2(n124), .ZN(n169) );
  ND2D0BWP12T30P140 U226 ( .A1(irq_i[21]), .A2(n256), .ZN(n189) );
  ND2D0BWP12T30P140 U227 ( .A1(irq_i[26]), .A2(n265), .ZN(n199) );
  ND2D0BWP12T30P140 U228 ( .A1(irq_i[10]), .A2(n124), .ZN(n167) );
  ND2D0BWP12T30P140 U229 ( .A1(irq_i[27]), .A2(n265), .ZN(n201) );
  ND2D0BWP12T30P140 U230 ( .A1(irq_i[9]), .A2(n124), .ZN(n165) );
  ND2D0BWP12T30P140 U231 ( .A1(irq_i[23]), .A2(n265), .ZN(n193) );
  ND2D0BWP12T30P140 U232 ( .A1(irq_i[29]), .A2(n265), .ZN(n205) );
  ND2D0BWP12T30P140 U233 ( .A1(irq_i[6]), .A2(n135), .ZN(n159) );
  ND2D0BWP12T30P140 U234 ( .A1(irq_i[8]), .A2(n124), .ZN(n163) );
  ND2D0BWP12T30P140 U235 ( .A1(irq_i[24]), .A2(n265), .ZN(n195) );
  ND2D0BWP12T30P140 U236 ( .A1(irq_i[25]), .A2(n265), .ZN(n197) );
  ND2D0BWP12T30P140 U237 ( .A1(irq_i[5]), .A2(n135), .ZN(n157) );
  ND2D0BWP12T30P140 U238 ( .A1(irq_i[3]), .A2(n124), .ZN(n153) );
  ND2D0BWP12T30P140 U239 ( .A1(irq_i[0]), .A2(n124), .ZN(n147) );
  ND2D0BWP12T30P140 U240 ( .A1(irq_i[1]), .A2(n124), .ZN(n149) );
  ND2D0BWP12T30P140 U241 ( .A1(irq_i[30]), .A2(n265), .ZN(n207) );
  ND2D0BWP12T30P140 U242 ( .A1(irq_i[4]), .A2(n135), .ZN(n155) );
  ND2D0BWP12T30P140 U243 ( .A1(state[3]), .A2(n114), .ZN(n115) );
  AOI222D0BWP12T30P140 U244 ( .A1(n117), .A2(n116), .B1(n117), .B2(found_start), .C1(n116), .C2(n115), .ZN(n118) );
  AO31D0BWP12T30P140 U245 ( .A1(serirq_oe), .A2(n120), .A3(n119), .B(n118), 
        .Z(n210) );
  ND2D0BWP12T30P140 U246 ( .A1(n121), .A2(n124), .ZN(n146) );
  ND2D0BWP12T30P140 U247 ( .A1(n122), .A2(n124), .ZN(n148) );
  ND2D0BWP12T30P140 U248 ( .A1(n123), .A2(n124), .ZN(n150) );
  ND2D0BWP12T30P140 U249 ( .A1(n125), .A2(n124), .ZN(n152) );
  ND2D0BWP12T30P140 U250 ( .A1(n126), .A2(n135), .ZN(n154) );
  ND2D0BWP12T30P140 U251 ( .A1(n127), .A2(n135), .ZN(n156) );
  ND2D0BWP12T30P140 U252 ( .A1(n128), .A2(n135), .ZN(n158) );
  ND2D0BWP12T30P140 U253 ( .A1(n129), .A2(n135), .ZN(n160) );
  ND2D0BWP12T30P140 U254 ( .A1(n130), .A2(n135), .ZN(n162) );
  ND2D0BWP12T30P140 U255 ( .A1(n131), .A2(n135), .ZN(n164) );
  ND2D0BWP12T30P140 U256 ( .A1(n132), .A2(n135), .ZN(n166) );
  ND2D0BWP12T30P140 U257 ( .A1(n133), .A2(n135), .ZN(n168) );
  ND2D0BWP12T30P140 U258 ( .A1(n134), .A2(n135), .ZN(n170) );
  ND2D0BWP12T30P140 U259 ( .A1(n136), .A2(n135), .ZN(n172) );
  ND2D0BWP12T30P140 U260 ( .A1(n137), .A2(n256), .ZN(n174) );
  ND2D0BWP12T30P140 U261 ( .A1(n138), .A2(n256), .ZN(n176) );
  ND2D0BWP12T30P140 U262 ( .A1(n139), .A2(n256), .ZN(n178) );
  ND2D0BWP12T30P140 U263 ( .A1(n140), .A2(n256), .ZN(n180) );
  ND2D0BWP12T30P140 U264 ( .A1(n141), .A2(n256), .ZN(n182) );
  ND2D0BWP12T30P140 U265 ( .A1(n142), .A2(n256), .ZN(n184) );
  ND2D0BWP12T30P140 U266 ( .A1(n143), .A2(n256), .ZN(n186) );
  ND2D0BWP12T30P140 U267 ( .A1(n254), .A2(n256), .ZN(n188) );
  ND2D0BWP12T30P140 U268 ( .A1(n255), .A2(n256), .ZN(n190) );
  ND2D0BWP12T30P140 U269 ( .A1(n257), .A2(n256), .ZN(n192) );
  ND2D0BWP12T30P140 U270 ( .A1(n258), .A2(n265), .ZN(n194) );
  ND2D0BWP12T30P140 U271 ( .A1(n259), .A2(n265), .ZN(n196) );
  ND2D0BWP12T30P140 U272 ( .A1(n260), .A2(n265), .ZN(n198) );
  ND2D0BWP12T30P140 U273 ( .A1(n261), .A2(n265), .ZN(n200) );
  ND2D0BWP12T30P140 U274 ( .A1(n262), .A2(n265), .ZN(n202) );
  ND2D0BWP12T30P140 U275 ( .A1(n263), .A2(n265), .ZN(n204) );
  ND2D0BWP12T30P140 U276 ( .A1(n264), .A2(n265), .ZN(n206) );
  ND2D0BWP12T30P140 U277 ( .A1(n266), .A2(n265), .ZN(n208) );
  MUX2ND0BWP12T30P140 U278 ( .I0(stop_clk_cnt[0]), .I1(n268), .S(n267), .ZN(
        n253) );
endmodule


module serirq_top ( clk_i, nrst_i, serirq_mode_i, irq_i, irq_o );
  input [31:0] irq_i;
  output [31:0] irq_o;
  input clk_i, nrst_i, serirq_mode_i;
  wire   host_serirq_o, serirq_line, host_serirq_oe, slave_serirq_o,
         slave_serirq_oe, n2;

  serirq_host u_host ( .clk_i(clk_i), .nrst_i(nrst_i), .serirq_mode_i(
        serirq_mode_i), .irq_o(irq_o), .serirq_o(host_serirq_o), .serirq_i(
        serirq_line), .serirq_oe(host_serirq_oe) );
  serirq_slave u_slave ( .clk_i(clk_i), .nrst_i(nrst_i), .irq_i(irq_i), 
        .serirq_o(slave_serirq_o), .serirq_i(serirq_line), .serirq_oe(
        slave_serirq_oe) );
  MUX2ND0BWP12T30P140 U4 ( .I0(slave_serirq_o), .I1(host_serirq_o), .S(
        host_serirq_oe), .ZN(n2) );
  OAI21D0BWP12T30P140 U5 ( .A1(host_serirq_oe), .A2(slave_serirq_oe), .B(n2), 
        .ZN(serirq_line) );
endmodule

