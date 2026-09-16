/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:49:37 2026
/////////////////////////////////////////////////////////////


module serirq_host ( clk_i, nrst_i, serirq_mode_i, irq_o, serirq_o, serirq_i, 
        serirq_oe );
  output [31:0] irq_o;
  input clk_i, nrst_i, serirq_mode_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   current_mode, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n195, n196, n197,
         n198, n199, n200, n201, n202, n203;
  wire   [10:0] state;
  wire   [2:0] start_cnt;
  wire   [4:0] irq_cnt;
  wire   [2:0] stop_cnt;

  DFSNQD1BWP12T30P140 irq_o_reg_31_ ( .D(n162), .CP(n202), .SDN(nrst_i), .Q(
        irq_o[31]) );
  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(n147), .CP(clk_i), .SDN(n199), .Q(
        serirq_o) );
  DFSNQD1BWP12T30P140 irq_o_reg_0_ ( .D(n193), .CP(n202), .SDN(nrst_i), .Q(
        irq_o[0]) );
  DFSNQD1BWP12T30P140 irq_o_reg_1_ ( .D(n192), .CP(n202), .SDN(nrst_i), .Q(
        irq_o[1]) );
  DFSNQD1BWP12T30P140 irq_o_reg_2_ ( .D(n191), .CP(n203), .SDN(nrst_i), .Q(
        irq_o[2]) );
  DFSNQD1BWP12T30P140 irq_o_reg_3_ ( .D(n190), .CP(n203), .SDN(nrst_i), .Q(
        irq_o[3]) );
  DFSNQD1BWP12T30P140 irq_o_reg_4_ ( .D(n189), .CP(n203), .SDN(nrst_i), .Q(
        irq_o[4]) );
  DFSNQD1BWP12T30P140 irq_o_reg_5_ ( .D(n188), .CP(n203), .SDN(nrst_i), .Q(
        irq_o[5]) );
  DFSNQD1BWP12T30P140 irq_o_reg_6_ ( .D(n187), .CP(n203), .SDN(n200), .Q(
        irq_o[6]) );
  DFSNQD1BWP12T30P140 irq_o_reg_7_ ( .D(n186), .CP(n203), .SDN(n200), .Q(
        irq_o[7]) );
  DFSNQD1BWP12T30P140 irq_o_reg_8_ ( .D(n185), .CP(n203), .SDN(n200), .Q(
        irq_o[8]) );
  DFSNQD1BWP12T30P140 irq_o_reg_9_ ( .D(n184), .CP(n203), .SDN(n200), .Q(
        irq_o[9]) );
  DFSNQD1BWP12T30P140 irq_o_reg_10_ ( .D(n183), .CP(n203), .SDN(n200), .Q(
        irq_o[10]) );
  DFSNQD1BWP12T30P140 irq_o_reg_11_ ( .D(n182), .CP(n203), .SDN(n200), .Q(
        irq_o[11]) );
  DFSNQD1BWP12T30P140 irq_o_reg_12_ ( .D(n181), .CP(n203), .SDN(n200), .Q(
        irq_o[12]) );
  DFSNQD1BWP12T30P140 irq_o_reg_13_ ( .D(n180), .CP(n203), .SDN(n200), .Q(
        irq_o[13]) );
  DFSNQD1BWP12T30P140 irq_o_reg_14_ ( .D(n179), .CP(n203), .SDN(n200), .Q(
        irq_o[14]) );
  DFSNQD1BWP12T30P140 irq_o_reg_15_ ( .D(n178), .CP(n203), .SDN(n200), .Q(
        irq_o[15]) );
  DFSNQD1BWP12T30P140 irq_o_reg_16_ ( .D(n177), .CP(n203), .SDN(n200), .Q(
        irq_o[16]) );
  DFSNQD1BWP12T30P140 irq_o_reg_17_ ( .D(n176), .CP(n203), .SDN(n200), .Q(
        irq_o[17]) );
  DFSNQD1BWP12T30P140 irq_o_reg_18_ ( .D(n175), .CP(n203), .SDN(n200), .Q(
        irq_o[18]) );
  DFSNQD1BWP12T30P140 irq_o_reg_19_ ( .D(n174), .CP(n203), .SDN(n200), .Q(
        irq_o[19]) );
  DFSNQD1BWP12T30P140 irq_o_reg_20_ ( .D(n173), .CP(n203), .SDN(n200), .Q(
        irq_o[20]) );
  DFSNQD1BWP12T30P140 irq_o_reg_21_ ( .D(n172), .CP(n203), .SDN(n200), .Q(
        irq_o[21]) );
  DFSNQD1BWP12T30P140 irq_o_reg_22_ ( .D(n171), .CP(clk_i), .SDN(n200), .Q(
        irq_o[22]) );
  DFSNQD1BWP12T30P140 irq_o_reg_23_ ( .D(n170), .CP(clk_i), .SDN(n200), .Q(
        irq_o[23]) );
  DFSNQD1BWP12T30P140 irq_o_reg_24_ ( .D(n169), .CP(clk_i), .SDN(n200), .Q(
        irq_o[24]) );
  DFSNQD1BWP12T30P140 irq_o_reg_25_ ( .D(n168), .CP(clk_i), .SDN(n199), .Q(
        irq_o[25]) );
  DFSNQD1BWP12T30P140 irq_o_reg_26_ ( .D(n167), .CP(clk_i), .SDN(n199), .Q(
        irq_o[26]) );
  DFSNQD1BWP12T30P140 irq_o_reg_27_ ( .D(n166), .CP(clk_i), .SDN(n199), .Q(
        irq_o[27]) );
  DFSNQD1BWP12T30P140 irq_o_reg_28_ ( .D(n165), .CP(clk_i), .SDN(n199), .Q(
        irq_o[28]) );
  DFSNQD1BWP12T30P140 irq_o_reg_29_ ( .D(n164), .CP(clk_i), .SDN(n199), .Q(
        irq_o[29]) );
  DFSNQD1BWP12T30P140 irq_o_reg_30_ ( .D(n163), .CP(clk_i), .SDN(n200), .Q(
        irq_o[30]) );
  DFCNQD1BWP12T30P140 state_reg_8_ ( .D(n152), .CP(n201), .CDN(n199), .Q(
        state[8]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_1_ ( .D(n145), .CP(n202), .CDN(n199), .Q(
        start_cnt[1]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_2_ ( .D(n144), .CP(n201), .CDN(n199), .Q(
        start_cnt[2]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_2_ ( .D(n141), .CP(n201), .CDN(nrst_i), .Q(
        stop_cnt[2]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n156), .CP(n201), .CDN(n199), .Q(
        state[4]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n159), .CP(n201), .CDN(nrst_i), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n160), .CP(n201), .CDN(n199), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(n158), .CP(n201), .CDN(nrst_i), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 current_mode_reg ( .D(n161), .CP(n202), .CDN(n199), .Q(
        current_mode) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(n140), .CP(n202), .CDN(n199), .Q(
        serirq_oe) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_0_ ( .D(n143), .CP(n202), .CDN(n199), .Q(
        stop_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n157), .CP(n201), .CDN(nrst_i), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n149), .CP(n202), .CDN(n199), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 stop_cnt_reg_1_ ( .D(n142), .CP(n202), .CDN(n199), .Q(
        stop_cnt[1]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n194), .CP(n201), .CDN(nrst_i), .Q(
        irq_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n150), .CP(n202), .CDN(n199), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 start_cnt_reg_0_ ( .D(n146), .CP(n201), .CDN(nrst_i), 
        .Q(start_cnt[0]) );
  DFCNQD1BWP12T30P140 state_reg_6_ ( .D(n154), .CP(n202), .CDN(nrst_i), .Q(
        state[6]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n148), .CP(n202), .CDN(n199), .Q(
        irq_cnt[4]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(n153), .CP(n202), .CDN(n199), .Q(
        state[7]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n155), .CP(n201), .CDN(nrst_i), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n151), .CP(n202), .CDN(n199), .Q(
        irq_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_10_ ( .D(state[10]), .CP(n201), .CDN(nrst_i), 
        .Q(state[10]) );
  CKBD0BWP12T30P140 U3 ( .I(nrst_i), .Z(n200) );
  INVD0BWP12T30P140 U4 ( .I(irq_cnt[2]), .ZN(n38) );
  ND3D0BWP12T30P140 U5 ( .A1(n38), .A2(irq_cnt[0]), .A3(irq_cnt[1]), .ZN(n130)
         );
  ND2D0BWP12T30P140 U6 ( .A1(irq_cnt[4]), .A2(irq_cnt[3]), .ZN(n12) );
  INVD0BWP12T30P140 U7 ( .I(state[4]), .ZN(n74) );
  NR3D0BWP12T30P140 U8 ( .A1(state[3]), .A2(state[1]), .A3(state[0]), .ZN(n1)
         );
  NR4D0BWP12T30P140 U9 ( .A1(state[7]), .A2(state[5]), .A3(state[8]), .A4(
        state[6]), .ZN(n62) );
  ND2D0BWP12T30P140 U10 ( .A1(n1), .A2(n62), .ZN(n15) );
  NR4D0BWP12T30P140 U11 ( .A1(n74), .A2(n15), .A3(state[2]), .A4(state[10]), 
        .ZN(n196) );
  INVD0BWP12T30P140 U12 ( .I(n196), .ZN(n109) );
  NR2D0BWP12T30P140 U13 ( .A1(n12), .A2(n109), .ZN(n2) );
  ND2D0BWP12T30P140 U14 ( .A1(serirq_i), .A2(n2), .ZN(n99) );
  INVD0BWP12T30P140 U15 ( .I(n2), .ZN(n97) );
  OAI21D0BWP12T30P140 U16 ( .A1(n130), .A2(n97), .B(irq_o[27]), .ZN(n3) );
  OAI21D0BWP12T30P140 U17 ( .A1(n130), .A2(n99), .B(n3), .ZN(n166) );
  INVD0BWP12T30P140 U18 ( .I(irq_cnt[0]), .ZN(n40) );
  ND3D0BWP12T30P140 U19 ( .A1(n40), .A2(irq_cnt[2]), .A3(irq_cnt[1]), .ZN(n120) );
  INVD0BWP12T30P140 U20 ( .I(irq_cnt[3]), .ZN(n46) );
  NR3D0BWP12T30P140 U21 ( .A1(irq_cnt[4]), .A2(n109), .A3(n46), .ZN(n4) );
  ND2D0BWP12T30P140 U22 ( .A1(serirq_i), .A2(n4), .ZN(n133) );
  INVD0BWP12T30P140 U23 ( .I(n4), .ZN(n131) );
  OAI21D0BWP12T30P140 U24 ( .A1(n120), .A2(n131), .B(irq_o[14]), .ZN(n5) );
  OAI21D0BWP12T30P140 U25 ( .A1(n120), .A2(n133), .B(n5), .ZN(n179) );
  INVD0BWP12T30P140 U26 ( .I(irq_cnt[1]), .ZN(n37) );
  ND3D0BWP12T30P140 U27 ( .A1(n40), .A2(n37), .A3(irq_cnt[2]), .ZN(n116) );
  OAI21D0BWP12T30P140 U28 ( .A1(n116), .A2(n131), .B(irq_o[12]), .ZN(n6) );
  OAI21D0BWP12T30P140 U29 ( .A1(n116), .A2(n133), .B(n6), .ZN(n181) );
  NR2D0BWP12T30P140 U30 ( .A1(n40), .A2(irq_cnt[1]), .ZN(n14) );
  ND2D0BWP12T30P140 U31 ( .A1(irq_cnt[2]), .A2(n14), .ZN(n118) );
  OAI21D0BWP12T30P140 U32 ( .A1(n118), .A2(n131), .B(irq_o[13]), .ZN(n7) );
  OAI21D0BWP12T30P140 U33 ( .A1(n118), .A2(n133), .B(n7), .ZN(n180) );
  ND3D0BWP12T30P140 U34 ( .A1(irq_cnt[2]), .A2(irq_cnt[1]), .A3(irq_cnt[0]), 
        .ZN(n124) );
  OAI21D0BWP12T30P140 U35 ( .A1(n124), .A2(n131), .B(irq_o[15]), .ZN(n8) );
  OAI21D0BWP12T30P140 U36 ( .A1(n124), .A2(n133), .B(n8), .ZN(n178) );
  ND3D0BWP12T30P140 U37 ( .A1(n40), .A2(n37), .A3(n38), .ZN(n126) );
  ND3D0BWP12T30P140 U38 ( .A1(n46), .A2(n196), .A3(irq_cnt[4]), .ZN(n68) );
  IND2D1BWP12T30P140 U39 ( .A1(n68), .B1(serirq_i), .ZN(n70) );
  OAI21D0BWP12T30P140 U40 ( .A1(n126), .A2(n68), .B(irq_o[16]), .ZN(n9) );
  OAI21D0BWP12T30P140 U41 ( .A1(n126), .A2(n70), .B(n9), .ZN(n177) );
  ND2D0BWP12T30P140 U42 ( .A1(n14), .A2(n38), .ZN(n134) );
  OAI21D0BWP12T30P140 U43 ( .A1(n134), .A2(n68), .B(irq_o[17]), .ZN(n10) );
  OAI21D0BWP12T30P140 U44 ( .A1(n134), .A2(n70), .B(n10), .ZN(n176) );
  INVD0BWP12T30P140 U45 ( .I(state[7]), .ZN(n27) );
  INVD0BWP12T30P140 U46 ( .I(state[1]), .ZN(n71) );
  INVD0BWP12T30P140 U47 ( .I(state[3]), .ZN(n52) );
  INVD0BWP12T30P140 U48 ( .I(state[0]), .ZN(n67) );
  NR2D0BWP12T30P140 U49 ( .A1(state[2]), .A2(state[4]), .ZN(n11) );
  ND4D0BWP12T30P140 U50 ( .A1(n71), .A2(n52), .A3(n67), .A4(n11), .ZN(n18) );
  INVD0BWP12T30P140 U51 ( .I(n18), .ZN(n63) );
  INVD0BWP12T30P140 U52 ( .I(state[8]), .ZN(n92) );
  ND2D0BWP12T30P140 U53 ( .A1(n63), .A2(n92), .ZN(n19) );
  NR2D0BWP12T30P140 U54 ( .A1(state[6]), .A2(n19), .ZN(n22) );
  ND3D0BWP12T30P140 U55 ( .A1(n27), .A2(n22), .A3(state[5]), .ZN(n13) );
  INVD0BWP12T30P140 U56 ( .I(n13), .ZN(n30) );
  ND2D0BWP12T30P140 U57 ( .A1(n11), .A2(n62), .ZN(n21) );
  NR2D0BWP12T30P140 U58 ( .A1(state[1]), .A2(n21), .ZN(n20) );
  ND2D0BWP12T30P140 U59 ( .A1(n20), .A2(n52), .ZN(n34) );
  NR2D0BWP12T30P140 U60 ( .A1(n67), .A2(n34), .ZN(n138) );
  NR2D0BWP12T30P140 U61 ( .A1(n12), .A2(n124), .ZN(n197) );
  NR2D0BWP12T30P140 U62 ( .A1(n197), .A2(n13), .ZN(n50) );
  INVD0BWP12T30P140 U63 ( .I(state[10]), .ZN(n100) );
  OAI21D0BWP12T30P140 U64 ( .A1(n138), .A2(n50), .B(n100), .ZN(n44) );
  INVD0BWP12T30P140 U65 ( .I(n44), .ZN(n41) );
  ND2D0BWP12T30P140 U66 ( .A1(n30), .A2(n41), .ZN(n48) );
  INVD0BWP12T30P140 U67 ( .I(n48), .ZN(n45) );
  OAI21D0BWP12T30P140 U68 ( .A1(irq_cnt[0]), .A2(n48), .B(n41), .ZN(n36) );
  AO22D0BWP12T30P140 U69 ( .A1(n45), .A2(n14), .B1(irq_cnt[1]), .B2(n36), .Z(
        n151) );
  INVD0BWP12T30P140 U70 ( .I(state[5]), .ZN(n24) );
  INVD0BWP12T30P140 U71 ( .I(state[2]), .ZN(n60) );
  NR3D0BWP12T30P140 U72 ( .A1(state[4]), .A2(n60), .A3(n15), .ZN(n49) );
  NR2D0BWP12T30P140 U73 ( .A1(state[7]), .A2(state[5]), .ZN(n16) );
  INVD0BWP12T30P140 U74 ( .I(state[6]), .ZN(n32) );
  ND2D0BWP12T30P140 U75 ( .A1(n16), .A2(n32), .ZN(n17) );
  NR3D0BWP12T30P140 U76 ( .A1(n92), .A2(n18), .A3(n17), .ZN(n56) );
  NR3D0BWP12T30P140 U77 ( .A1(state[7]), .A2(state[5]), .A3(n19), .ZN(n43) );
  ND2D0BWP12T30P140 U78 ( .A1(state[6]), .A2(n43), .ZN(n77) );
  ND2D0BWP12T30P140 U79 ( .A1(n34), .A2(n77), .ZN(n101) );
  OAI31D0BWP12T30P140 U80 ( .A1(n49), .A2(n56), .A3(n101), .B(n100), .ZN(n195)
         );
  ND4D0BWP12T30P140 U81 ( .A1(state[3]), .A2(n20), .A3(n100), .A4(n67), .ZN(
        n73) );
  OR4D0BWP12T30P140 U82 ( .A1(n21), .A2(n71), .A3(state[3]), .A4(state[0]), 
        .Z(n59) );
  ND3D0BWP12T30P140 U83 ( .A1(n24), .A2(n22), .A3(state[7]), .ZN(n93) );
  ND2D0BWP12T30P140 U84 ( .A1(n59), .A2(n93), .ZN(n103) );
  OAI21D0BWP12T30P140 U85 ( .A1(n30), .A2(n103), .B(n100), .ZN(n23) );
  ND4D0BWP12T30P140 U86 ( .A1(n195), .A2(n109), .A3(n73), .A4(n23), .ZN(n91)
         );
  OAI21D0BWP12T30P140 U87 ( .A1(n24), .A2(n91), .B(n109), .ZN(n155) );
  ND3D0BWP12T30P140 U88 ( .A1(n40), .A2(n38), .A3(irq_cnt[1]), .ZN(n128) );
  OAI21D0BWP12T30P140 U89 ( .A1(n128), .A2(n68), .B(irq_o[18]), .ZN(n25) );
  OAI21D0BWP12T30P140 U90 ( .A1(n128), .A2(n70), .B(n25), .ZN(n175) );
  INVD0BWP12T30P140 U91 ( .I(n91), .ZN(n72) );
  INVD0BWP12T30P140 U92 ( .I(stop_cnt[0]), .ZN(n55) );
  AOI221D0BWP12T30P140 U93 ( .A1(serirq_mode_i), .A2(n55), .B1(stop_cnt[1]), 
        .B2(stop_cnt[0]), .C(stop_cnt[2]), .ZN(n26) );
  OAI21D0BWP12T30P140 U94 ( .A1(serirq_mode_i), .A2(stop_cnt[1]), .B(n26), 
        .ZN(n29) );
  OAI32D0BWP12T30P140 U95 ( .A1(n72), .A2(n77), .A3(n29), .B1(n27), .B2(n91), 
        .ZN(n153) );
  OAI21D0BWP12T30P140 U96 ( .A1(n30), .A2(n44), .B(irq_cnt[4]), .ZN(n28) );
  OAI31D0BWP12T30P140 U97 ( .A1(n124), .A2(n46), .A3(n48), .B(n28), .ZN(n148)
         );
  INVD0BWP12T30P140 U98 ( .I(n77), .ZN(n137) );
  AOI22D0BWP12T30P140 U99 ( .A1(n30), .A2(n197), .B1(n29), .B2(n137), .ZN(n31)
         );
  AOI22D0BWP12T30P140 U100 ( .A1(n72), .A2(n32), .B1(n31), .B2(n91), .ZN(n154)
         );
  OAI21D0BWP12T30P140 U101 ( .A1(n130), .A2(n68), .B(irq_o[19]), .ZN(n33) );
  OAI21D0BWP12T30P140 U102 ( .A1(n130), .A2(n70), .B(n33), .ZN(n174) );
  INVD0BWP12T30P140 U103 ( .I(start_cnt[0]), .ZN(n35) );
  OR2D0BWP12T30P140 U104 ( .A1(n34), .A2(state[10]), .Z(n89) );
  INVD0BWP12T30P140 U105 ( .I(n138), .ZN(n61) );
  NR2D0BWP12T30P140 U106 ( .A1(start_cnt[0]), .A2(n61), .ZN(n82) );
  NR2D0BWP12T30P140 U107 ( .A1(n82), .A2(n89), .ZN(n88) );
  AOI21D0BWP12T30P140 U108 ( .A1(n35), .A2(n89), .B(n88), .ZN(n146) );
  AOI21D0BWP12T30P140 U109 ( .A1(n45), .A2(n37), .B(n36), .ZN(n39) );
  OAI22D0BWP12T30P140 U110 ( .A1(n39), .A2(n38), .B1(n48), .B2(n130), .ZN(n150) );
  AOI22D0BWP12T30P140 U111 ( .A1(irq_cnt[0]), .A2(n41), .B1(n48), .B2(n40), 
        .ZN(n194) );
  OAI21D0BWP12T30P140 U112 ( .A1(n116), .A2(n68), .B(irq_o[20]), .ZN(n42) );
  OAI21D0BWP12T30P140 U113 ( .A1(n116), .A2(n70), .B(n42), .ZN(n173) );
  ND2D0BWP12T30P140 U114 ( .A1(n43), .A2(n100), .ZN(n54) );
  AOI21D0BWP12T30P140 U115 ( .A1(state[6]), .A2(n55), .B(n54), .ZN(n76) );
  ND3D0BWP12T30P140 U116 ( .A1(n100), .A2(stop_cnt[0]), .A3(n137), .ZN(n80) );
  INVD0BWP12T30P140 U117 ( .I(stop_cnt[1]), .ZN(n81) );
  AOI22D0BWP12T30P140 U118 ( .A1(stop_cnt[1]), .A2(n76), .B1(n80), .B2(n81), 
        .ZN(n142) );
  AOI21D0BWP12T30P140 U119 ( .A1(n45), .A2(n124), .B(n44), .ZN(n47) );
  OAI32D0BWP12T30P140 U120 ( .A1(irq_cnt[3]), .A2(n124), .A3(n48), .B1(n47), 
        .B2(n46), .ZN(n149) );
  OAI21D0BWP12T30P140 U121 ( .A1(n50), .A2(n49), .B(n91), .ZN(n51) );
  OAI21D0BWP12T30P140 U122 ( .A1(n91), .A2(n52), .B(n51), .ZN(n157) );
  OAI21D0BWP12T30P140 U123 ( .A1(n118), .A2(n68), .B(irq_o[21]), .ZN(n53) );
  OAI21D0BWP12T30P140 U124 ( .A1(n118), .A2(n70), .B(n53), .ZN(n172) );
  AO32D0BWP12T30P140 U125 ( .A1(n55), .A2(n100), .A3(n137), .B1(n54), .B2(
        stop_cnt[0]), .Z(n143) );
  ND2D0BWP12T30P140 U126 ( .A1(n56), .A2(n100), .ZN(n57) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(serirq_mode_i), .I1(current_mode), .S(n57), 
        .Z(n161) );
  OAI21D0BWP12T30P140 U128 ( .A1(n120), .A2(n68), .B(irq_o[22]), .ZN(n58) );
  OAI21D0BWP12T30P140 U129 ( .A1(n120), .A2(n70), .B(n58), .ZN(n171) );
  AOI22D0BWP12T30P140 U130 ( .A1(n72), .A2(n60), .B1(n59), .B2(n91), .ZN(n158)
         );
  AOI31D0BWP12T30P140 U131 ( .A1(start_cnt[1]), .A2(start_cnt[0]), .A3(
        start_cnt[2]), .B(n61), .ZN(n65) );
  ND2D0BWP12T30P140 U132 ( .A1(n63), .A2(n62), .ZN(n102) );
  AOI31D0BWP12T30P140 U133 ( .A1(current_mode), .A2(serirq_i), .A3(
        serirq_mode_i), .B(n102), .ZN(n64) );
  OAI21D0BWP12T30P140 U134 ( .A1(n65), .A2(n64), .B(n91), .ZN(n66) );
  OAI21D0BWP12T30P140 U135 ( .A1(n91), .A2(n67), .B(n66), .ZN(n160) );
  OAI21D0BWP12T30P140 U136 ( .A1(n124), .A2(n68), .B(irq_o[23]), .ZN(n69) );
  OAI21D0BWP12T30P140 U137 ( .A1(n124), .A2(n70), .B(n69), .ZN(n170) );
  INVD0BWP12T30P140 U138 ( .I(start_cnt[2]), .ZN(n83) );
  ND3D0BWP12T30P140 U139 ( .A1(n138), .A2(start_cnt[1]), .A3(start_cnt[0]), 
        .ZN(n85) );
  OAI32D0BWP12T30P140 U140 ( .A1(n72), .A2(n83), .A3(n85), .B1(n71), .B2(n91), 
        .ZN(n159) );
  OAI21D0BWP12T30P140 U141 ( .A1(n74), .A2(n91), .B(n73), .ZN(n156) );
  OAI21D0BWP12T30P140 U142 ( .A1(n126), .A2(n97), .B(irq_o[24]), .ZN(n75) );
  OAI21D0BWP12T30P140 U143 ( .A1(n126), .A2(n99), .B(n75), .ZN(n169) );
  OA21D0BWP12T30P140 U144 ( .A1(stop_cnt[1]), .A2(n77), .B(n76), .Z(n79) );
  INVD0BWP12T30P140 U145 ( .I(stop_cnt[2]), .ZN(n78) );
  OAI32D0BWP12T30P140 U146 ( .A1(stop_cnt[2]), .A2(n81), .A3(n80), .B1(n79), 
        .B2(n78), .ZN(n141) );
  INVD0BWP12T30P140 U147 ( .I(start_cnt[1]), .ZN(n87) );
  AOI211D0BWP12T30P140 U148 ( .A1(n138), .A2(n87), .B(n82), .C(n89), .ZN(n84)
         );
  OAI32D0BWP12T30P140 U149 ( .A1(start_cnt[2]), .A2(n85), .A3(n89), .B1(n84), 
        .B2(n83), .ZN(n144) );
  OAI21D0BWP12T30P140 U150 ( .A1(n134), .A2(n97), .B(irq_o[25]), .ZN(n86) );
  OAI21D0BWP12T30P140 U151 ( .A1(n134), .A2(n99), .B(n86), .ZN(n168) );
  IND2D1BWP12T30P140 U152 ( .A1(serirq_i), .B1(current_mode), .ZN(n104) );
  NR2D0BWP12T30P140 U153 ( .A1(n102), .A2(n104), .ZN(n136) );
  AOI31D0BWP12T30P140 U154 ( .A1(n138), .A2(start_cnt[0]), .A3(n87), .B(n136), 
        .ZN(n90) );
  OAI22D0BWP12T30P140 U155 ( .A1(n90), .A2(n89), .B1(n88), .B2(n87), .ZN(n145)
         );
  OAI22D0BWP12T30P140 U156 ( .A1(state[10]), .A2(n93), .B1(n92), .B2(n91), 
        .ZN(n152) );
  OAI21D0BWP12T30P140 U157 ( .A1(n120), .A2(n97), .B(irq_o[30]), .ZN(n94) );
  OAI21D0BWP12T30P140 U158 ( .A1(n120), .A2(n99), .B(n94), .ZN(n163) );
  OAI21D0BWP12T30P140 U159 ( .A1(n118), .A2(n97), .B(irq_o[29]), .ZN(n95) );
  OAI21D0BWP12T30P140 U160 ( .A1(n118), .A2(n99), .B(n95), .ZN(n164) );
  OAI21D0BWP12T30P140 U161 ( .A1(n116), .A2(n97), .B(irq_o[28]), .ZN(n96) );
  OAI21D0BWP12T30P140 U162 ( .A1(n116), .A2(n99), .B(n96), .ZN(n165) );
  OAI21D0BWP12T30P140 U163 ( .A1(n128), .A2(n97), .B(irq_o[26]), .ZN(n98) );
  OAI21D0BWP12T30P140 U164 ( .A1(n128), .A2(n99), .B(n98), .ZN(n167) );
  OAI21D0BWP12T30P140 U165 ( .A1(n101), .A2(n103), .B(n100), .ZN(n108) );
  INVD0BWP12T30P140 U166 ( .I(n102), .ZN(n105) );
  AOI21D0BWP12T30P140 U167 ( .A1(n105), .A2(n104), .B(n103), .ZN(n107) );
  ND2D0BWP12T30P140 U168 ( .A1(n108), .A2(serirq_o), .ZN(n106) );
  OAI21D0BWP12T30P140 U169 ( .A1(n108), .A2(n107), .B(n106), .ZN(n147) );
  NR3D0BWP12T30P140 U170 ( .A1(irq_cnt[3]), .A2(irq_cnt[4]), .A3(n109), .ZN(
        n110) );
  ND2D0BWP12T30P140 U171 ( .A1(serirq_i), .A2(n110), .ZN(n123) );
  INVD0BWP12T30P140 U172 ( .I(n110), .ZN(n121) );
  OAI21D0BWP12T30P140 U173 ( .A1(n126), .A2(n121), .B(irq_o[0]), .ZN(n111) );
  OAI21D0BWP12T30P140 U174 ( .A1(n126), .A2(n123), .B(n111), .ZN(n193) );
  OAI21D0BWP12T30P140 U175 ( .A1(n134), .A2(n121), .B(irq_o[1]), .ZN(n112) );
  OAI21D0BWP12T30P140 U176 ( .A1(n134), .A2(n123), .B(n112), .ZN(n192) );
  OAI21D0BWP12T30P140 U177 ( .A1(n128), .A2(n121), .B(irq_o[2]), .ZN(n113) );
  OAI21D0BWP12T30P140 U178 ( .A1(n128), .A2(n123), .B(n113), .ZN(n191) );
  OAI21D0BWP12T30P140 U179 ( .A1(n130), .A2(n121), .B(irq_o[3]), .ZN(n114) );
  OAI21D0BWP12T30P140 U180 ( .A1(n130), .A2(n123), .B(n114), .ZN(n190) );
  OAI21D0BWP12T30P140 U181 ( .A1(n116), .A2(n121), .B(irq_o[4]), .ZN(n115) );
  OAI21D0BWP12T30P140 U182 ( .A1(n116), .A2(n123), .B(n115), .ZN(n189) );
  OAI21D0BWP12T30P140 U183 ( .A1(n118), .A2(n121), .B(irq_o[5]), .ZN(n117) );
  OAI21D0BWP12T30P140 U184 ( .A1(n118), .A2(n123), .B(n117), .ZN(n188) );
  OAI21D0BWP12T30P140 U185 ( .A1(n120), .A2(n121), .B(irq_o[6]), .ZN(n119) );
  OAI21D0BWP12T30P140 U186 ( .A1(n120), .A2(n123), .B(n119), .ZN(n187) );
  OAI21D0BWP12T30P140 U187 ( .A1(n124), .A2(n121), .B(irq_o[7]), .ZN(n122) );
  OAI21D0BWP12T30P140 U188 ( .A1(n124), .A2(n123), .B(n122), .ZN(n186) );
  OAI21D0BWP12T30P140 U189 ( .A1(n126), .A2(n131), .B(irq_o[8]), .ZN(n125) );
  OAI21D0BWP12T30P140 U190 ( .A1(n126), .A2(n133), .B(n125), .ZN(n185) );
  OAI21D0BWP12T30P140 U191 ( .A1(n128), .A2(n131), .B(irq_o[10]), .ZN(n127) );
  OAI21D0BWP12T30P140 U192 ( .A1(n128), .A2(n133), .B(n127), .ZN(n183) );
  OAI21D0BWP12T30P140 U193 ( .A1(n130), .A2(n131), .B(irq_o[11]), .ZN(n129) );
  OAI21D0BWP12T30P140 U194 ( .A1(n130), .A2(n133), .B(n129), .ZN(n182) );
  OAI21D0BWP12T30P140 U195 ( .A1(n134), .A2(n131), .B(irq_o[9]), .ZN(n132) );
  OAI21D0BWP12T30P140 U196 ( .A1(n134), .A2(n133), .B(n132), .ZN(n184) );
  CKBD0BWP12T30P140 U197 ( .I(clk_i), .Z(n202) );
  CKBD0BWP12T30P140 U198 ( .I(clk_i), .Z(n201) );
  CKBD0BWP12T30P140 U199 ( .I(clk_i), .Z(n203) );
  CKBD0BWP12T30P140 U200 ( .I(nrst_i), .Z(n199) );
  INVD0BWP12T30P140 U201 ( .I(n195), .ZN(n135) );
  OAI31D0BWP12T30P140 U202 ( .A1(n138), .A2(n137), .A3(n136), .B(n135), .ZN(
        n139) );
  IOA21D0BWP12T30P140 U203 ( .A1(serirq_oe), .A2(n195), .B(n139), .ZN(n140) );
  ND2D0BWP12T30P140 U204 ( .A1(n197), .A2(n196), .ZN(n198) );
  CKMUX2D0BWP12T30P140 U205 ( .I0(serirq_i), .I1(irq_o[31]), .S(n198), .Z(n162) );
endmodule


module serirq_slave ( clk_i, nrst_i, irq_i, serirq_o, serirq_i, serirq_oe );
  input [31:0] irq_i;
  input clk_i, nrst_i, serirq_i;
  output serirq_o, serirq_oe;
  wire   serirq_mode, found_stop, found_start, N150, N151, N152, N153, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n1, n2,
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
         n156, n157, n158, n159, n160, n161, n162, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287;
  wire   [31:0] current_irq;
  wire   [9:0] state;
  wire   [4:0] irq_cnt;
  wire   [3:0] stop_clk_cnt;

  DFCSNQD1BWP12T30P140 current_irq_reg_0_ ( .D(n265), .CP(n286), .CDN(n165), 
        .SDN(n166), .Q(current_irq[0]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_31_ ( .D(n264), .CP(n286), .CDN(n227), 
        .SDN(n228), .Q(current_irq[31]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_30_ ( .D(n263), .CP(n286), .CDN(n167), 
        .SDN(n168), .Q(current_irq[30]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_29_ ( .D(n262), .CP(n286), .CDN(n169), 
        .SDN(n170), .Q(current_irq[29]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_28_ ( .D(n261), .CP(n286), .CDN(n171), 
        .SDN(n172), .Q(current_irq[28]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_27_ ( .D(n260), .CP(n286), .CDN(n173), 
        .SDN(n174), .Q(current_irq[27]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_26_ ( .D(n259), .CP(n286), .CDN(n175), 
        .SDN(n176), .Q(current_irq[26]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_25_ ( .D(n258), .CP(n286), .CDN(n177), 
        .SDN(n178), .Q(current_irq[25]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_24_ ( .D(n257), .CP(n286), .CDN(n179), 
        .SDN(n180), .Q(current_irq[24]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_23_ ( .D(n256), .CP(n286), .CDN(n181), 
        .SDN(n182), .Q(current_irq[23]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_22_ ( .D(n255), .CP(n286), .CDN(n183), 
        .SDN(n184), .Q(current_irq[22]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_21_ ( .D(n254), .CP(n287), .CDN(n185), 
        .SDN(n186), .Q(current_irq[21]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_20_ ( .D(n253), .CP(n287), .CDN(n187), 
        .SDN(n188), .Q(current_irq[20]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_19_ ( .D(n252), .CP(n287), .CDN(n189), 
        .SDN(n190), .Q(current_irq[19]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_18_ ( .D(n251), .CP(n287), .CDN(n191), 
        .SDN(n192), .Q(current_irq[18]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_17_ ( .D(n250), .CP(n287), .CDN(n193), 
        .SDN(n194), .Q(current_irq[17]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_16_ ( .D(n249), .CP(n287), .CDN(n195), 
        .SDN(n196), .Q(current_irq[16]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_15_ ( .D(n248), .CP(n287), .CDN(n197), 
        .SDN(n198), .Q(current_irq[15]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_14_ ( .D(n247), .CP(n287), .CDN(n199), 
        .SDN(n200), .Q(current_irq[14]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_13_ ( .D(n246), .CP(n287), .CDN(n201), 
        .SDN(n202), .Q(current_irq[13]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_12_ ( .D(n245), .CP(n287), .CDN(n203), 
        .SDN(n204), .Q(current_irq[12]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_11_ ( .D(n244), .CP(n287), .CDN(n205), 
        .SDN(n206), .Q(current_irq[11]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_10_ ( .D(n243), .CP(n287), .CDN(n207), 
        .SDN(n208), .Q(current_irq[10]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_9_ ( .D(n242), .CP(n287), .CDN(n209), 
        .SDN(n210), .Q(current_irq[9]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_8_ ( .D(n241), .CP(n287), .CDN(n211), 
        .SDN(n212), .Q(current_irq[8]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_7_ ( .D(n240), .CP(n287), .CDN(n213), 
        .SDN(n214), .Q(current_irq[7]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_6_ ( .D(n239), .CP(n287), .CDN(n215), 
        .SDN(n216), .Q(current_irq[6]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_5_ ( .D(n238), .CP(n287), .CDN(n217), 
        .SDN(n218), .Q(current_irq[5]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_4_ ( .D(n237), .CP(n287), .CDN(n219), 
        .SDN(n220), .Q(current_irq[4]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_3_ ( .D(n236), .CP(n287), .CDN(n221), 
        .SDN(n222), .Q(current_irq[3]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_2_ ( .D(n235), .CP(n286), .CDN(n223), 
        .SDN(n224), .Q(current_irq[2]) );
  DFCSNQD1BWP12T30P140 current_irq_reg_1_ ( .D(n234), .CP(n286), .CDN(n225), 
        .SDN(n226), .Q(current_irq[1]) );
  DFSNQD1BWP12T30P140 serirq_o_reg ( .D(n229), .CP(n286), .SDN(n284), .Q(
        serirq_o) );
  DFCNQD1BWP12T30P140 serirq_mode_reg ( .D(n272), .CP(n286), .CDN(n284), .Q(
        serirq_mode) );
  DFCNQD1BWP12T30P140 serirq_oe_reg ( .D(n230), .CP(n286), .CDN(n284), .Q(
        serirq_oe) );
  DFCNQD1BWP12T30P140 found_stop_reg ( .D(n163), .CP(n286), .CDN(n284), .Q(
        found_stop) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_2_ ( .D(N152), .CP(n285), .CDN(n284), 
        .Q(stop_clk_cnt[2]) );
  DFCNQD1BWP12T30P140 found_start_reg ( .D(n164), .CP(n286), .CDN(n284), .Q(
        found_start) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_3_ ( .D(N153), .CP(n285), .CDN(n284), 
        .Q(stop_clk_cnt[3]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_4_ ( .D(n270), .CP(n285), .CDN(n284), .Q(
        irq_cnt[4]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(n232), .CP(n285), .CDN(n284), .Q(
        state[4]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_2_ ( .D(n267), .CP(n286), .CDN(n284), .Q(
        irq_cnt[2]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_1_ ( .D(N151), .CP(n285), .CDN(n284), 
        .Q(stop_clk_cnt[1]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_3_ ( .D(n268), .CP(n285), .CDN(n284), .Q(
        irq_cnt[3]) );
  DFCNQD1BWP12T30P140 state_reg_9_ ( .D(n271), .CP(n285), .CDN(n284), .Q(
        state[9]) );
  DFCNQD1BWP12T30P140 stop_clk_cnt_reg_0_ ( .D(N150), .CP(n285), .CDN(n284), 
        .Q(stop_clk_cnt[0]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_1_ ( .D(n266), .CP(n285), .CDN(n284), .Q(
        irq_cnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(n231), .CP(n285), .CDN(n284), .Q(
        state[5]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(state[0]), .CP(n285), .CDN(n284), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(n233), .CP(n286), .CDN(n284), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 irq_cnt_reg_0_ ( .D(n269), .CP(n285), .CDN(n284), .Q(
        irq_cnt[0]) );
  INVD0BWP12T30P140 U3 ( .I(nrst_i), .ZN(n146) );
  CKBD0BWP12T30P140 U4 ( .I(n146), .Z(n135) );
  INVD0BWP12T30P140 U5 ( .I(irq_i[31]), .ZN(n132) );
  INVD0BWP12T30P140 U6 ( .I(irq_i[1]), .ZN(n276) );
  OAI22D0BWP12T30P140 U7 ( .A1(n132), .A2(current_irq[31]), .B1(n276), .B2(
        current_irq[1]), .ZN(n1) );
  AOI221D0BWP12T30P140 U8 ( .A1(n132), .A2(current_irq[31]), .B1(
        current_irq[1]), .B2(n276), .C(n1), .ZN(n8) );
  INVD0BWP12T30P140 U9 ( .I(irq_i[3]), .ZN(n273) );
  INVD0BWP12T30P140 U10 ( .I(current_irq[2]), .ZN(n120) );
  OAI22D0BWP12T30P140 U11 ( .A1(n273), .A2(current_irq[3]), .B1(n120), .B2(
        irq_i[2]), .ZN(n2) );
  AOI221D0BWP12T30P140 U12 ( .A1(n273), .A2(current_irq[3]), .B1(irq_i[2]), 
        .B2(n120), .C(n2), .ZN(n7) );
  INVD0BWP12T30P140 U13 ( .I(irq_i[5]), .ZN(n161) );
  INVD0BWP12T30P140 U14 ( .I(current_irq[4]), .ZN(n121) );
  OAI22D0BWP12T30P140 U15 ( .A1(n161), .A2(current_irq[5]), .B1(n121), .B2(
        irq_i[4]), .ZN(n3) );
  AOI221D0BWP12T30P140 U16 ( .A1(n161), .A2(current_irq[5]), .B1(irq_i[4]), 
        .B2(n121), .C(n3), .ZN(n6) );
  INVD0BWP12T30P140 U17 ( .I(irq_i[7]), .ZN(n159) );
  INVD0BWP12T30P140 U18 ( .I(current_irq[6]), .ZN(n122) );
  OAI22D0BWP12T30P140 U19 ( .A1(n159), .A2(current_irq[7]), .B1(n122), .B2(
        irq_i[6]), .ZN(n4) );
  AOI221D0BWP12T30P140 U20 ( .A1(n159), .A2(current_irq[7]), .B1(irq_i[6]), 
        .B2(n122), .C(n4), .ZN(n5) );
  ND4D0BWP12T30P140 U21 ( .A1(n8), .A2(n7), .A3(n6), .A4(n5), .ZN(n36) );
  INVD0BWP12T30P140 U22 ( .I(irq_i[9]), .ZN(n156) );
  INVD0BWP12T30P140 U23 ( .I(current_irq[8]), .ZN(n124) );
  OAI22D0BWP12T30P140 U24 ( .A1(n156), .A2(current_irq[9]), .B1(n124), .B2(
        irq_i[8]), .ZN(n9) );
  AOI221D0BWP12T30P140 U25 ( .A1(n156), .A2(current_irq[9]), .B1(irq_i[8]), 
        .B2(n124), .C(n9), .ZN(n16) );
  INVD0BWP12T30P140 U26 ( .I(irq_i[11]), .ZN(n154) );
  INVD0BWP12T30P140 U27 ( .I(current_irq[10]), .ZN(n127) );
  OAI22D0BWP12T30P140 U28 ( .A1(n154), .A2(current_irq[11]), .B1(n127), .B2(
        irq_i[10]), .ZN(n10) );
  AOI221D0BWP12T30P140 U29 ( .A1(n154), .A2(current_irq[11]), .B1(irq_i[10]), 
        .B2(n127), .C(n10), .ZN(n15) );
  INVD0BWP12T30P140 U30 ( .I(irq_i[13]), .ZN(n152) );
  INVD0BWP12T30P140 U31 ( .I(current_irq[12]), .ZN(n123) );
  OAI22D0BWP12T30P140 U32 ( .A1(n152), .A2(current_irq[13]), .B1(n123), .B2(
        irq_i[12]), .ZN(n11) );
  AOI221D0BWP12T30P140 U33 ( .A1(n152), .A2(current_irq[13]), .B1(irq_i[12]), 
        .B2(n123), .C(n11), .ZN(n14) );
  INVD0BWP12T30P140 U34 ( .I(irq_i[15]), .ZN(n150) );
  INVD0BWP12T30P140 U35 ( .I(current_irq[14]), .ZN(n125) );
  OAI22D0BWP12T30P140 U36 ( .A1(n150), .A2(current_irq[15]), .B1(n125), .B2(
        irq_i[14]), .ZN(n12) );
  AOI221D0BWP12T30P140 U37 ( .A1(n150), .A2(current_irq[15]), .B1(irq_i[14]), 
        .B2(n125), .C(n12), .ZN(n13) );
  ND4D0BWP12T30P140 U38 ( .A1(n16), .A2(n15), .A3(n14), .A4(n13), .ZN(n35) );
  INVD0BWP12T30P140 U39 ( .I(irq_i[17]), .ZN(n148) );
  INVD0BWP12T30P140 U40 ( .I(current_irq[16]), .ZN(n39) );
  OAI22D0BWP12T30P140 U41 ( .A1(n148), .A2(current_irq[17]), .B1(n39), .B2(
        irq_i[16]), .ZN(n17) );
  AOI221D0BWP12T30P140 U42 ( .A1(n148), .A2(current_irq[17]), .B1(irq_i[16]), 
        .B2(n39), .C(n17), .ZN(n24) );
  INVD0BWP12T30P140 U43 ( .I(irq_i[19]), .ZN(n145) );
  INVD0BWP12T30P140 U44 ( .I(current_irq[18]), .ZN(n38) );
  OAI22D0BWP12T30P140 U45 ( .A1(n145), .A2(current_irq[19]), .B1(n38), .B2(
        irq_i[18]), .ZN(n18) );
  AOI221D0BWP12T30P140 U46 ( .A1(n145), .A2(current_irq[19]), .B1(irq_i[18]), 
        .B2(n38), .C(n18), .ZN(n23) );
  INVD0BWP12T30P140 U47 ( .I(irq_i[21]), .ZN(n143) );
  INVD0BWP12T30P140 U48 ( .I(current_irq[20]), .ZN(n40) );
  OAI22D0BWP12T30P140 U49 ( .A1(n143), .A2(current_irq[21]), .B1(n40), .B2(
        irq_i[20]), .ZN(n19) );
  AOI221D0BWP12T30P140 U50 ( .A1(n143), .A2(current_irq[21]), .B1(irq_i[20]), 
        .B2(n40), .C(n19), .ZN(n22) );
  INVD0BWP12T30P140 U51 ( .I(irq_i[23]), .ZN(n141) );
  INVD0BWP12T30P140 U52 ( .I(current_irq[22]), .ZN(n43) );
  OAI22D0BWP12T30P140 U53 ( .A1(n141), .A2(current_irq[23]), .B1(n43), .B2(
        irq_i[22]), .ZN(n20) );
  AOI221D0BWP12T30P140 U54 ( .A1(n141), .A2(current_irq[23]), .B1(irq_i[22]), 
        .B2(n43), .C(n20), .ZN(n21) );
  ND4D0BWP12T30P140 U55 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .ZN(n34) );
  INVD0BWP12T30P140 U56 ( .I(irq_i[25]), .ZN(n139) );
  INVD0BWP12T30P140 U57 ( .I(current_irq[24]), .ZN(n41) );
  OAI22D0BWP12T30P140 U58 ( .A1(n139), .A2(current_irq[25]), .B1(n41), .B2(
        irq_i[24]), .ZN(n25) );
  AOI221D0BWP12T30P140 U59 ( .A1(n139), .A2(current_irq[25]), .B1(irq_i[24]), 
        .B2(n41), .C(n25), .ZN(n32) );
  INVD0BWP12T30P140 U60 ( .I(irq_i[27]), .ZN(n137) );
  INVD0BWP12T30P140 U61 ( .I(current_irq[26]), .ZN(n42) );
  OAI22D0BWP12T30P140 U62 ( .A1(n137), .A2(current_irq[27]), .B1(n42), .B2(
        irq_i[26]), .ZN(n26) );
  AOI221D0BWP12T30P140 U63 ( .A1(n137), .A2(current_irq[27]), .B1(irq_i[26]), 
        .B2(n42), .C(n26), .ZN(n31) );
  INVD0BWP12T30P140 U64 ( .I(irq_i[29]), .ZN(n134) );
  INVD0BWP12T30P140 U65 ( .I(current_irq[28]), .ZN(n44) );
  OAI22D0BWP12T30P140 U66 ( .A1(n134), .A2(current_irq[29]), .B1(n44), .B2(
        irq_i[28]), .ZN(n27) );
  AOI221D0BWP12T30P140 U67 ( .A1(n134), .A2(current_irq[29]), .B1(irq_i[28]), 
        .B2(n44), .C(n27), .ZN(n30) );
  INVD0BWP12T30P140 U68 ( .I(irq_i[30]), .ZN(n133) );
  INVD0BWP12T30P140 U69 ( .I(irq_i[0]), .ZN(n131) );
  OAI22D0BWP12T30P140 U70 ( .A1(n133), .A2(current_irq[30]), .B1(n131), .B2(
        current_irq[0]), .ZN(n28) );
  AOI221D0BWP12T30P140 U71 ( .A1(n133), .A2(current_irq[30]), .B1(
        current_irq[0]), .B2(n131), .C(n28), .ZN(n29) );
  ND4D0BWP12T30P140 U72 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  OR4D0BWP12T30P140 U73 ( .A1(n36), .A2(n35), .A3(n34), .A4(n33), .Z(n37) );
  AOI21D0BWP12T30P140 U74 ( .A1(serirq_mode), .A2(n37), .B(found_start), .ZN(
        n112) );
  NR3D0BWP12T30P140 U75 ( .A1(state[4]), .A2(state[5]), .A3(state[9]), .ZN(
        n277) );
  INVD0BWP12T30P140 U76 ( .I(state[0]), .ZN(n45) );
  ND2D0BWP12T30P140 U77 ( .A1(n277), .A2(n45), .ZN(n114) );
  NR3D0BWP12T30P140 U78 ( .A1(state[3]), .A2(n112), .A3(n114), .ZN(n129) );
  INVD0BWP12T30P140 U79 ( .I(n129), .ZN(n126) );
  INVD0BWP12T30P140 U80 ( .I(n126), .ZN(n130) );
  INVD0BWP12T30P140 U81 ( .I(irq_i[18]), .ZN(n147) );
  AOI22D0BWP12T30P140 U82 ( .A1(n130), .A2(n147), .B1(n38), .B2(n126), .ZN(
        n251) );
  INVD0BWP12T30P140 U83 ( .I(n126), .ZN(n128) );
  INVD0BWP12T30P140 U84 ( .I(irq_i[16]), .ZN(n149) );
  AOI22D0BWP12T30P140 U85 ( .A1(n128), .A2(n149), .B1(n39), .B2(n126), .ZN(
        n249) );
  INVD0BWP12T30P140 U86 ( .I(irq_i[20]), .ZN(n144) );
  AOI22D0BWP12T30P140 U87 ( .A1(n130), .A2(n144), .B1(n40), .B2(n126), .ZN(
        n253) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n128), .A2(n141), .B1(current_irq[23]), .B2(
        n129), .ZN(n256) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n130), .A2(n148), .B1(current_irq[17]), .B2(
        n129), .ZN(n250) );
  INVD0BWP12T30P140 U90 ( .I(irq_i[24]), .ZN(n140) );
  AOI22D0BWP12T30P140 U91 ( .A1(n128), .A2(n140), .B1(n41), .B2(n126), .ZN(
        n257) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n130), .A2(n143), .B1(current_irq[21]), .B2(
        n129), .ZN(n254) );
  INVD0BWP12T30P140 U93 ( .I(irq_i[26]), .ZN(n138) );
  AOI22D0BWP12T30P140 U94 ( .A1(n130), .A2(n138), .B1(n42), .B2(n126), .ZN(
        n259) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n128), .A2(n145), .B1(current_irq[19]), .B2(
        n129), .ZN(n252) );
  INVD0BWP12T30P140 U96 ( .I(irq_i[22]), .ZN(n142) );
  AOI22D0BWP12T30P140 U97 ( .A1(n128), .A2(n142), .B1(n43), .B2(n126), .ZN(
        n255) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n130), .A2(n139), .B1(current_irq[25]), .B2(
        n128), .ZN(n258) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n129), .A2(n137), .B1(current_irq[27]), .B2(
        n129), .ZN(n260) );
  INVD0BWP12T30P140 U100 ( .I(irq_i[28]), .ZN(n136) );
  AOI22D0BWP12T30P140 U101 ( .A1(n128), .A2(n136), .B1(n44), .B2(n126), .ZN(
        n261) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n130), .A2(n134), .B1(current_irq[29]), .B2(
        n130), .ZN(n262) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n130), .A2(n133), .B1(current_irq[30]), .B2(
        n128), .ZN(n263) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n130), .A2(n132), .B1(current_irq[31]), .B2(
        n129), .ZN(n264) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n130), .A2(n131), .B1(current_irq[0]), .B2(
        n129), .ZN(n265) );
  INVD0BWP12T30P140 U106 ( .I(irq_cnt[3]), .ZN(n104) );
  ND2D0BWP12T30P140 U107 ( .A1(irq_cnt[2]), .A2(irq_cnt[1]), .ZN(n92) );
  INVD0BWP12T30P140 U108 ( .I(irq_cnt[0]), .ZN(n87) );
  NR2D0BWP12T30P140 U109 ( .A1(n92), .A2(n87), .ZN(n86) );
  INVD0BWP12T30P140 U110 ( .I(n86), .ZN(n66) );
  INVD0BWP12T30P140 U111 ( .I(irq_cnt[4]), .ZN(n111) );
  NR3D0BWP12T30P140 U112 ( .A1(n104), .A2(n66), .A3(n111), .ZN(n49) );
  INVD0BWP12T30P140 U113 ( .I(state[4]), .ZN(n113) );
  NR3D0BWP12T30P140 U114 ( .A1(state[3]), .A2(state[9]), .A3(state[0]), .ZN(
        n117) );
  ND2D0BWP12T30P140 U115 ( .A1(n113), .A2(n117), .ZN(n53) );
  OAI22D0BWP12T30P140 U116 ( .A1(state[3]), .A2(n114), .B1(n49), .B2(n53), 
        .ZN(n48) );
  ND2D0BWP12T30P140 U117 ( .A1(state[5]), .A2(n48), .ZN(n65) );
  AOI22D0BWP12T30P140 U118 ( .A1(irq_cnt[0]), .A2(n48), .B1(n65), .B2(n87), 
        .ZN(n269) );
  INVD0BWP12T30P140 U119 ( .I(state[5]), .ZN(n116) );
  INVD0BWP12T30P140 U120 ( .I(n53), .ZN(n279) );
  INVD0BWP12T30P140 U121 ( .I(state[3]), .ZN(n60) );
  ND2D0BWP12T30P140 U122 ( .A1(n60), .A2(n45), .ZN(n46) );
  AOI211D0BWP12T30P140 U123 ( .A1(state[4]), .A2(state[9]), .B(state[5]), .C(
        n46), .ZN(n61) );
  NR2D0BWP12T30P140 U124 ( .A1(n279), .A2(n61), .ZN(n50) );
  AO21D0BWP12T30P140 U125 ( .A1(n50), .A2(n114), .B(found_stop), .Z(n59) );
  ND2D0BWP12T30P140 U126 ( .A1(state[3]), .A2(n114), .ZN(n47) );
  OAI31D0BWP12T30P140 U127 ( .A1(n49), .A2(n116), .A3(n59), .B(n47), .ZN(n233)
         );
  OAI22D0BWP12T30P140 U128 ( .A1(n279), .A2(n116), .B1(n113), .B2(n59), .ZN(
        n231) );
  INVD0BWP12T30P140 U129 ( .I(n48), .ZN(n63) );
  AOI21D0BWP12T30P140 U130 ( .A1(state[5]), .A2(n87), .B(n63), .ZN(n57) );
  INVD0BWP12T30P140 U131 ( .I(irq_cnt[1]), .ZN(n55) );
  OAI32D0BWP12T30P140 U132 ( .A1(irq_cnt[1]), .A2(n87), .A3(n65), .B1(n57), 
        .B2(n55), .ZN(n266) );
  NR2D0BWP12T30P140 U133 ( .A1(serirq_i), .A2(stop_clk_cnt[0]), .ZN(N150) );
  INVD0BWP12T30P140 U134 ( .I(n49), .ZN(n52) );
  INVD0BWP12T30P140 U135 ( .I(found_stop), .ZN(n75) );
  OAI21D0BWP12T30P140 U136 ( .A1(n50), .A2(n75), .B(state[9]), .ZN(n51) );
  OAI31D0BWP12T30P140 U137 ( .A1(n53), .A2(n116), .A3(n52), .B(n51), .ZN(n271)
         );
  AOI21D0BWP12T30P140 U138 ( .A1(state[5]), .A2(n66), .B(n63), .ZN(n54) );
  OAI32D0BWP12T30P140 U139 ( .A1(irq_cnt[3]), .A2(n66), .A3(n65), .B1(n54), 
        .B2(n104), .ZN(n268) );
  INVD0BWP12T30P140 U140 ( .I(serirq_i), .ZN(n70) );
  ND2D0BWP12T30P140 U141 ( .A1(stop_clk_cnt[1]), .A2(stop_clk_cnt[0]), .ZN(n72) );
  OA211D0BWP12T30P140 U142 ( .A1(stop_clk_cnt[1]), .A2(stop_clk_cnt[0]), .B(
        n70), .C(n72), .Z(N151) );
  NR2D0BWP12T30P140 U143 ( .A1(irq_cnt[2]), .A2(n55), .ZN(n93) );
  INVD0BWP12T30P140 U144 ( .I(irq_cnt[2]), .ZN(n56) );
  NR2D0BWP12T30P140 U145 ( .A1(irq_cnt[1]), .A2(n56), .ZN(n94) );
  AOI21D0BWP12T30P140 U146 ( .A1(irq_cnt[0]), .A2(n93), .B(n94), .ZN(n58) );
  OAI22D0BWP12T30P140 U147 ( .A1(n58), .A2(n65), .B1(n57), .B2(n56), .ZN(n267)
         );
  OR2D0BWP12T30P140 U148 ( .A1(n114), .A2(state[3]), .Z(n62) );
  INVD0BWP12T30P140 U149 ( .I(found_start), .ZN(n68) );
  OAI222D0BWP12T30P140 U150 ( .A1(n62), .A2(n68), .B1(n113), .B2(n61), .C1(n60), .C2(n59), .ZN(n232) );
  OAI21D0BWP12T30P140 U151 ( .A1(state[5]), .A2(n63), .B(irq_cnt[4]), .ZN(n64)
         );
  OAI31D0BWP12T30P140 U152 ( .A1(n66), .A2(n104), .A3(n65), .B(n64), .ZN(n270)
         );
  INVD0BWP12T30P140 U153 ( .I(stop_clk_cnt[2]), .ZN(n74) );
  NR2D0BWP12T30P140 U154 ( .A1(n74), .A2(n72), .ZN(n71) );
  INVD0BWP12T30P140 U155 ( .I(stop_clk_cnt[3]), .ZN(n73) );
  INVD0BWP12T30P140 U156 ( .I(n71), .ZN(n67) );
  AOI221D0BWP12T30P140 U157 ( .A1(stop_clk_cnt[3]), .A2(n71), .B1(n73), .B2(
        n67), .C(serirq_i), .ZN(N153) );
  OA32D0BWP12T30P140 U158 ( .A1(n73), .A2(stop_clk_cnt[2]), .A3(
        stop_clk_cnt[1]), .B1(stop_clk_cnt[3]), .B2(n74), .Z(n69) );
  OAI32D0BWP12T30P140 U159 ( .A1(n70), .A2(stop_clk_cnt[0]), .A3(n69), .B1(
        serirq_i), .B2(n68), .ZN(n164) );
  AOI211D0BWP12T30P140 U160 ( .A1(n74), .A2(n72), .B(serirq_i), .C(n71), .ZN(
        N152) );
  ND4D0BWP12T30P140 U161 ( .A1(serirq_i), .A2(stop_clk_cnt[1]), .A3(n74), .A4(
        n73), .ZN(n77) );
  OAI21D0BWP12T30P140 U162 ( .A1(serirq_i), .A2(n75), .B(n77), .ZN(n163) );
  ND2D0BWP12T30P140 U163 ( .A1(n77), .A2(serirq_mode), .ZN(n76) );
  OAI21D0BWP12T30P140 U164 ( .A1(n77), .A2(stop_clk_cnt[0]), .B(n76), .ZN(n272) );
  INVD0BWP12T30P140 U165 ( .I(n92), .ZN(n95) );
  AOI22D0BWP12T30P140 U166 ( .A1(n95), .A2(irq_i[30]), .B1(n94), .B2(irq_i[28]), .ZN(n80) );
  NR2D0BWP12T30P140 U167 ( .A1(irq_cnt[2]), .A2(irq_cnt[1]), .ZN(n99) );
  AOI22D0BWP12T30P140 U168 ( .A1(n93), .A2(irq_i[26]), .B1(n99), .B2(irq_i[24]), .ZN(n79) );
  AOI222D0BWP12T30P140 U169 ( .A1(n94), .A2(irq_i[29]), .B1(n93), .B2(
        irq_i[27]), .C1(n99), .C2(irq_i[25]), .ZN(n78) );
  AOI32D0BWP12T30P140 U170 ( .A1(n80), .A2(n87), .A3(n79), .B1(irq_cnt[0]), 
        .B2(n78), .ZN(n81) );
  AOI211D0BWP12T30P140 U171 ( .A1(irq_i[31]), .A2(n86), .B(n104), .C(n81), 
        .ZN(n110) );
  AOI22D0BWP12T30P140 U172 ( .A1(n95), .A2(irq_i[22]), .B1(n94), .B2(irq_i[20]), .ZN(n84) );
  AOI22D0BWP12T30P140 U173 ( .A1(n93), .A2(irq_i[18]), .B1(n99), .B2(irq_i[16]), .ZN(n83) );
  AOI222D0BWP12T30P140 U174 ( .A1(n94), .A2(irq_i[21]), .B1(n93), .B2(
        irq_i[19]), .C1(n99), .C2(irq_i[17]), .ZN(n82) );
  AOI32D0BWP12T30P140 U175 ( .A1(n84), .A2(n87), .A3(n83), .B1(irq_cnt[0]), 
        .B2(n82), .ZN(n85) );
  AOI211D0BWP12T30P140 U176 ( .A1(n86), .A2(irq_i[23]), .B(irq_cnt[3]), .C(n85), .ZN(n109) );
  AOI21D0BWP12T30P140 U177 ( .A1(n93), .A2(irq_i[11]), .B(n87), .ZN(n89) );
  AOI22D0BWP12T30P140 U178 ( .A1(n94), .A2(irq_i[13]), .B1(n99), .B2(irq_i[9]), 
        .ZN(n88) );
  OAI211D0BWP12T30P140 U179 ( .A1(n92), .A2(n150), .B(n89), .C(n88), .ZN(n107)
         );
  INVD0BWP12T30P140 U180 ( .I(irq_i[14]), .ZN(n151) );
  AOI21D0BWP12T30P140 U181 ( .A1(n93), .A2(irq_i[10]), .B(irq_cnt[0]), .ZN(n91) );
  AOI22D0BWP12T30P140 U182 ( .A1(n94), .A2(irq_i[12]), .B1(n99), .B2(irq_i[8]), 
        .ZN(n90) );
  OAI211D0BWP12T30P140 U183 ( .A1(n92), .A2(n151), .B(n91), .C(n90), .ZN(n106)
         );
  AOI21D0BWP12T30P140 U184 ( .A1(n93), .A2(irq_i[2]), .B(irq_cnt[0]), .ZN(n103) );
  AOI22D0BWP12T30P140 U185 ( .A1(n95), .A2(irq_i[6]), .B1(n94), .B2(irq_i[4]), 
        .ZN(n102) );
  ND2D0BWP12T30P140 U186 ( .A1(n99), .A2(irq_i[0]), .ZN(n101) );
  INVD0BWP12T30P140 U187 ( .I(n93), .ZN(n97) );
  AOI22D0BWP12T30P140 U188 ( .A1(n95), .A2(irq_i[7]), .B1(n94), .B2(irq_i[5]), 
        .ZN(n96) );
  OAI211D0BWP12T30P140 U189 ( .A1(n273), .A2(n97), .B(irq_cnt[0]), .C(n96), 
        .ZN(n98) );
  AOI21D0BWP12T30P140 U190 ( .A1(n99), .A2(irq_i[1]), .B(n98), .ZN(n100) );
  AOI31D0BWP12T30P140 U191 ( .A1(n103), .A2(n102), .A3(n101), .B(n100), .ZN(
        n105) );
  AOI32D0BWP12T30P140 U192 ( .A1(n107), .A2(irq_cnt[3]), .A3(n106), .B1(n105), 
        .B2(n104), .ZN(n108) );
  OAI32D0BWP12T30P140 U193 ( .A1(n111), .A2(n110), .A3(n109), .B1(irq_cnt[4]), 
        .B2(n108), .ZN(n115) );
  AOI21D0BWP12T30P140 U194 ( .A1(n115), .A2(found_start), .B(n112), .ZN(n278)
         );
  OAI21D0BWP12T30P140 U195 ( .A1(state[3]), .A2(n278), .B(n113), .ZN(n119) );
  NR2D0BWP12T30P140 U196 ( .A1(n115), .A2(n114), .ZN(n280) );
  AOI21D0BWP12T30P140 U197 ( .A1(n117), .A2(n116), .B(n280), .ZN(n118) );
  CKMUX2D0BWP12T30P140 U198 ( .I0(n119), .I1(serirq_o), .S(n118), .Z(n229) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n130), .A2(n276), .B1(current_irq[1]), .B2(
        n128), .ZN(n234) );
  INVD0BWP12T30P140 U200 ( .I(irq_i[2]), .ZN(n274) );
  AOI22D0BWP12T30P140 U201 ( .A1(n128), .A2(n274), .B1(n120), .B2(n126), .ZN(
        n235) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n130), .A2(n273), .B1(current_irq[3]), .B2(
        n129), .ZN(n236) );
  INVD0BWP12T30P140 U203 ( .I(irq_i[4]), .ZN(n162) );
  AOI22D0BWP12T30P140 U204 ( .A1(n128), .A2(n162), .B1(n121), .B2(n126), .ZN(
        n237) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n130), .A2(n161), .B1(current_irq[5]), .B2(
        n128), .ZN(n238) );
  INVD0BWP12T30P140 U206 ( .I(irq_i[6]), .ZN(n160) );
  AOI22D0BWP12T30P140 U207 ( .A1(n128), .A2(n160), .B1(n122), .B2(n126), .ZN(
        n239) );
  INVD0BWP12T30P140 U208 ( .I(irq_i[12]), .ZN(n153) );
  AOI22D0BWP12T30P140 U209 ( .A1(n128), .A2(n153), .B1(n123), .B2(n126), .ZN(
        n245) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n130), .A2(n156), .B1(current_irq[9]), .B2(
        n129), .ZN(n242) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n129), .A2(n150), .B1(current_irq[15]), .B2(
        n129), .ZN(n248) );
  INVD0BWP12T30P140 U212 ( .I(irq_i[8]), .ZN(n158) );
  AOI22D0BWP12T30P140 U213 ( .A1(n128), .A2(n158), .B1(n124), .B2(n126), .ZN(
        n241) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n130), .A2(n154), .B1(current_irq[11]), .B2(
        n129), .ZN(n244) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n130), .A2(n159), .B1(current_irq[7]), .B2(
        n129), .ZN(n240) );
  AOI22D0BWP12T30P140 U216 ( .A1(n128), .A2(n151), .B1(n125), .B2(n126), .ZN(
        n247) );
  INVD0BWP12T30P140 U217 ( .I(irq_i[10]), .ZN(n155) );
  AOI22D0BWP12T30P140 U218 ( .A1(n128), .A2(n155), .B1(n127), .B2(n126), .ZN(
        n243) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n130), .A2(n152), .B1(current_irq[13]), .B2(
        n129), .ZN(n246) );
  CKBD0BWP12T30P140 U220 ( .I(clk_i), .Z(n285) );
  CKBD0BWP12T30P140 U221 ( .I(clk_i), .Z(n287) );
  CKBD0BWP12T30P140 U222 ( .I(clk_i), .Z(n286) );
  INVD0BWP12T30P140 U223 ( .I(nrst_i), .ZN(n157) );
  CKBD0BWP12T30P140 U224 ( .I(n157), .Z(n275) );
  INVD0BWP12T30P140 U225 ( .I(n275), .ZN(n284) );
  ND2D0BWP12T30P140 U226 ( .A1(irq_i[16]), .A2(n157), .ZN(n196) );
  ND2D0BWP12T30P140 U227 ( .A1(irq_i[4]), .A2(n275), .ZN(n220) );
  ND2D0BWP12T30P140 U228 ( .A1(irq_i[10]), .A2(n157), .ZN(n208) );
  ND2D0BWP12T30P140 U229 ( .A1(irq_i[17]), .A2(n157), .ZN(n194) );
  ND2D0BWP12T30P140 U230 ( .A1(irq_i[15]), .A2(n157), .ZN(n198) );
  ND2D0BWP12T30P140 U231 ( .A1(irq_i[18]), .A2(n135), .ZN(n192) );
  ND2D0BWP12T30P140 U232 ( .A1(irq_i[14]), .A2(n157), .ZN(n200) );
  ND2D0BWP12T30P140 U233 ( .A1(irq_i[25]), .A2(n146), .ZN(n178) );
  ND2D0BWP12T30P140 U234 ( .A1(irq_i[19]), .A2(n135), .ZN(n190) );
  ND2D0BWP12T30P140 U235 ( .A1(irq_i[13]), .A2(n157), .ZN(n202) );
  ND2D0BWP12T30P140 U236 ( .A1(irq_i[1]), .A2(n275), .ZN(n226) );
  ND2D0BWP12T30P140 U237 ( .A1(irq_i[20]), .A2(n135), .ZN(n188) );
  ND2D0BWP12T30P140 U238 ( .A1(irq_i[12]), .A2(n157), .ZN(n204) );
  ND2D0BWP12T30P140 U239 ( .A1(irq_i[30]), .A2(n135), .ZN(n168) );
  ND2D0BWP12T30P140 U240 ( .A1(irq_i[21]), .A2(n135), .ZN(n186) );
  ND2D0BWP12T30P140 U241 ( .A1(irq_i[11]), .A2(n157), .ZN(n206) );
  ND2D0BWP12T30P140 U242 ( .A1(irq_i[6]), .A2(n275), .ZN(n216) );
  ND2D0BWP12T30P140 U243 ( .A1(irq_i[22]), .A2(n135), .ZN(n184) );
  ND2D0BWP12T30P140 U244 ( .A1(irq_i[5]), .A2(n275), .ZN(n218) );
  ND2D0BWP12T30P140 U245 ( .A1(irq_i[23]), .A2(n135), .ZN(n182) );
  ND2D0BWP12T30P140 U246 ( .A1(irq_i[9]), .A2(n275), .ZN(n210) );
  ND2D0BWP12T30P140 U247 ( .A1(irq_i[3]), .A2(n275), .ZN(n222) );
  ND2D0BWP12T30P140 U248 ( .A1(irq_i[26]), .A2(n146), .ZN(n176) );
  ND2D0BWP12T30P140 U249 ( .A1(irq_i[24]), .A2(n135), .ZN(n180) );
  ND2D0BWP12T30P140 U250 ( .A1(irq_i[8]), .A2(n275), .ZN(n212) );
  ND2D0BWP12T30P140 U251 ( .A1(irq_i[7]), .A2(n275), .ZN(n214) );
  ND2D0BWP12T30P140 U252 ( .A1(irq_i[27]), .A2(n146), .ZN(n174) );
  ND2D0BWP12T30P140 U253 ( .A1(irq_i[29]), .A2(n135), .ZN(n170) );
  ND2D0BWP12T30P140 U254 ( .A1(irq_i[0]), .A2(n135), .ZN(n166) );
  ND2D0BWP12T30P140 U255 ( .A1(irq_i[31]), .A2(n275), .ZN(n228) );
  ND2D0BWP12T30P140 U256 ( .A1(irq_i[2]), .A2(n275), .ZN(n224) );
  ND2D0BWP12T30P140 U257 ( .A1(irq_i[28]), .A2(n135), .ZN(n172) );
  ND2D0BWP12T30P140 U258 ( .A1(n131), .A2(n135), .ZN(n165) );
  ND2D0BWP12T30P140 U259 ( .A1(n132), .A2(n275), .ZN(n227) );
  ND2D0BWP12T30P140 U260 ( .A1(n133), .A2(n135), .ZN(n167) );
  ND2D0BWP12T30P140 U261 ( .A1(n134), .A2(n135), .ZN(n169) );
  ND2D0BWP12T30P140 U262 ( .A1(n136), .A2(n135), .ZN(n171) );
  ND2D0BWP12T30P140 U263 ( .A1(n137), .A2(n146), .ZN(n173) );
  ND2D0BWP12T30P140 U264 ( .A1(n138), .A2(n146), .ZN(n175) );
  ND2D0BWP12T30P140 U265 ( .A1(n139), .A2(n146), .ZN(n177) );
  ND2D0BWP12T30P140 U266 ( .A1(n140), .A2(n146), .ZN(n179) );
  ND2D0BWP12T30P140 U267 ( .A1(n141), .A2(n146), .ZN(n181) );
  ND2D0BWP12T30P140 U268 ( .A1(n142), .A2(n146), .ZN(n183) );
  ND2D0BWP12T30P140 U269 ( .A1(n143), .A2(n146), .ZN(n185) );
  ND2D0BWP12T30P140 U270 ( .A1(n144), .A2(n146), .ZN(n187) );
  ND2D0BWP12T30P140 U271 ( .A1(n145), .A2(n146), .ZN(n189) );
  ND2D0BWP12T30P140 U272 ( .A1(n147), .A2(n146), .ZN(n191) );
  ND2D0BWP12T30P140 U273 ( .A1(n148), .A2(n157), .ZN(n193) );
  ND2D0BWP12T30P140 U274 ( .A1(n149), .A2(n157), .ZN(n195) );
  ND2D0BWP12T30P140 U275 ( .A1(n150), .A2(n157), .ZN(n197) );
  ND2D0BWP12T30P140 U276 ( .A1(n151), .A2(n157), .ZN(n199) );
  ND2D0BWP12T30P140 U277 ( .A1(n152), .A2(n157), .ZN(n201) );
  ND2D0BWP12T30P140 U278 ( .A1(n153), .A2(n157), .ZN(n203) );
  ND2D0BWP12T30P140 U279 ( .A1(n154), .A2(n157), .ZN(n205) );
  ND2D0BWP12T30P140 U280 ( .A1(n155), .A2(n157), .ZN(n207) );
  ND2D0BWP12T30P140 U281 ( .A1(n156), .A2(n157), .ZN(n209) );
  ND2D0BWP12T30P140 U282 ( .A1(n158), .A2(n157), .ZN(n211) );
  ND2D0BWP12T30P140 U283 ( .A1(n159), .A2(n275), .ZN(n213) );
  ND2D0BWP12T30P140 U284 ( .A1(n160), .A2(n275), .ZN(n215) );
  ND2D0BWP12T30P140 U285 ( .A1(n161), .A2(n275), .ZN(n217) );
  ND2D0BWP12T30P140 U286 ( .A1(n162), .A2(n275), .ZN(n219) );
  ND2D0BWP12T30P140 U287 ( .A1(n273), .A2(n275), .ZN(n221) );
  ND2D0BWP12T30P140 U288 ( .A1(n274), .A2(n275), .ZN(n223) );
  ND2D0BWP12T30P140 U289 ( .A1(n276), .A2(n275), .ZN(n225) );
  AOI21D0BWP12T30P140 U290 ( .A1(n278), .A2(n277), .B(state[3]), .ZN(n283) );
  INVD0BWP12T30P140 U291 ( .I(serirq_oe), .ZN(n282) );
  NR2D0BWP12T30P140 U292 ( .A1(n280), .A2(n279), .ZN(n281) );
  MUX2ND0BWP12T30P140 U293 ( .I0(n283), .I1(n282), .S(n281), .ZN(n230) );
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

