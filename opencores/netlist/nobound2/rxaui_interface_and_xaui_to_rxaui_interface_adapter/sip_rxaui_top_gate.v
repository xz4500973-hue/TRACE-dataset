/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:01:58 2026
/////////////////////////////////////////////////////////////


module sip_xpcs_cd_sync ( bypass_sync, commaa_sync, commab_sync, reset_sync, 
        sel_comma_sync, sigdet_sync, rf_en_2sync_sync, bypass, clk, commaa, 
        commab, reset, sel_comma, sigdet, rf_en_2sync );
  output [9:0] commaa_sync;
  output [9:0] commab_sync;
  input [9:0] commaa;
  input [9:0] commab;
  input bypass, clk, reset, sel_comma, sigdet, rf_en_2sync;
  output bypass_sync, reset_sync, sel_comma_sync, sigdet_sync,
         rf_en_2sync_sync;
  wire   n2, n24;

  DFQD2BWP12T30P140 sigdet_sync_reg ( .D(sigdet), .CP(clk), .Q(sigdet_sync) );
  DFQD2BWP12T30P140 reset_sync_reg ( .D(reset), .CP(clk), .Q(reset_sync) );
  DFQD1BWP12T30P140 sel_comma_sync_reg ( .D(n2), .CP(clk), .Q(sel_comma_sync)
         );
  TIEHBWP12T30P140 U3 ( .Z(n2) );
  INVD0BWP12T30P140 U4 ( .I(sel_comma_sync), .ZN(commaa_sync[7]) );
  CKBD0BWP12T30P140 U5 ( .I(commaa_sync[7]), .Z(commaa_sync[2]) );
  INVD0BWP12T30P140 U6 ( .I(n24), .ZN(commaa_sync[1]) );
  INVD0BWP12T30P140 U7 ( .I(sel_comma_sync), .ZN(commab_sync[4]) );
  INVD0BWP12T30P140 U8 ( .I(n24), .ZN(commab_sync[1]) );
  INVD0BWP12T30P140 U9 ( .I(sel_comma_sync), .ZN(commab_sync[7]) );
  INVD0BWP12T30P140 U10 ( .I(n24), .ZN(commab_sync[2]) );
  INVD0BWP12T30P140 U11 ( .I(sel_comma_sync), .ZN(commab_sync[8]) );
  INVD0BWP12T30P140 U12 ( .I(n24), .ZN(commab_sync[5]) );
  INVD0BWP12T30P140 U13 ( .I(n24), .ZN(commab_sync[9]) );
  INVD0BWP12T30P140 U14 ( .I(n24), .ZN(commaa_sync[4]) );
  CKBD0BWP12T30P140 U15 ( .I(commaa_sync[7]), .Z(commaa_sync[3]) );
  INVD0BWP12T30P140 U16 ( .I(n24), .ZN(commaa_sync[5]) );
  INVD0BWP12T30P140 U17 ( .I(n24), .ZN(commab_sync[0]) );
  INVD0BWP12T30P140 U18 ( .I(n24), .ZN(commab_sync[6]) );
  INVD0BWP12T30P140 U19 ( .I(n24), .ZN(rf_en_2sync_sync) );
  INVD0BWP12T30P140 U20 ( .I(sel_comma_sync), .ZN(commaa_sync[0]) );
  INVD0BWP12T30P140 U21 ( .I(n24), .ZN(commaa_sync[8]) );
  INVD0BWP12T30P140 U22 ( .I(sel_comma_sync), .ZN(commaa_sync[6]) );
  INVD0BWP12T30P140 U23 ( .I(commaa_sync[7]), .ZN(n24) );
  INVD0BWP12T30P140 U24 ( .I(n24), .ZN(bypass_sync) );
  INVD0BWP12T30P140 U25 ( .I(n24), .ZN(commab_sync[3]) );
  INVD0BWP12T30P140 U26 ( .I(n24), .ZN(commaa_sync[9]) );
endmodule


module sip_xpcs_cd_7bit ( position_7bit, bypass_sync, clk, enable_cgalign, 
        reset_sync, rin, sel_comma_sync );
  output [4:0] position_7bit;
  input [19:0] rin;
  input bypass_sync, clk, enable_cgalign, reset_sync, sel_comma_sync;
  wire   N25, N31, N36, N41, N46, N51, N56, N61, N66, N71, N76, N81, N86, N91,
         N96, N101, N106, N111, N116, N121, n153, n154, n155, n156, n157, n1,
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
         n145, n146, n147, n148, n149, n150, n151, n152, n158, n159, n160,
         n161, n162, n163, n164, n165;
  wire   [19:0] comma_pos;
  wire   [19:0] datain;

  DFQD2BWP12T30P140 position_7bit_reg_3_ ( .D(n154), .CP(n163), .Q(
        position_7bit[3]) );
  DFQD2BWP12T30P140 position_7bit_reg_2_ ( .D(n155), .CP(n165), .Q(
        position_7bit[2]) );
  DFQD2BWP12T30P140 position_7bit_reg_1_ ( .D(n156), .CP(n164), .Q(
        position_7bit[1]) );
  DFQD2BWP12T30P140 rin_z_reg_1_ ( .D(rin[1]), .CP(n164), .Q(datain[1]) );
  DFQD2BWP12T30P140 rin_z_reg_0_ ( .D(rin[0]), .CP(n164), .Q(datain[0]) );
  DFQD2BWP12T30P140 position_7bit_reg_4_ ( .D(n153), .CP(n164), .Q(
        position_7bit[4]) );
  DFQD2BWP12T30P140 rin_z_reg_3_ ( .D(rin[3]), .CP(n164), .Q(datain[3]) );
  DFQD2BWP12T30P140 comma_pos_2_reg ( .D(N36), .CP(n163), .Q(comma_pos[2]) );
  DFQD2BWP12T30P140 comma_pos_6_reg ( .D(N56), .CP(n163), .Q(comma_pos[6]) );
  DFQD2BWP12T30P140 rin_z_reg_15_ ( .D(rin[15]), .CP(n165), .Q(datain[15]) );
  DFQD2BWP12T30P140 comma_pos_13_reg ( .D(N91), .CP(n165), .Q(comma_pos[13])
         );
  DFQD2BWP12T30P140 comma_pos_9_reg ( .D(N71), .CP(n163), .Q(comma_pos[9]) );
  DFQD2BWP12T30P140 rin_z_reg_18_ ( .D(rin[18]), .CP(n165), .Q(datain[18]) );
  DFQD2BWP12T30P140 rin_z_reg_4_ ( .D(rin[4]), .CP(n164), .Q(datain[4]) );
  DFQD2BWP12T30P140 comma_pos_0_reg ( .D(N25), .CP(n164), .Q(comma_pos[0]) );
  DFQD2BWP12T30P140 rin_z_reg_2_ ( .D(rin[2]), .CP(n164), .Q(datain[2]) );
  DFQD2BWP12T30P140 rin_z_reg_19_ ( .D(rin[19]), .CP(n165), .Q(datain[19]) );
  DFQD2BWP12T30P140 rin_z_reg_12_ ( .D(rin[12]), .CP(n165), .Q(datain[12]) );
  DFQD2BWP12T30P140 comma_pos_10_reg ( .D(N76), .CP(n163), .Q(comma_pos[10])
         );
  DFQD2BWP12T30P140 rin_z_reg_5_ ( .D(rin[5]), .CP(n164), .Q(datain[5]) );
  DFQD2BWP12T30P140 comma_pos_12_reg ( .D(N86), .CP(n163), .Q(comma_pos[12])
         );
  DFQD2BWP12T30P140 comma_pos_5_reg ( .D(N51), .CP(n163), .Q(comma_pos[5]) );
  DFQD2BWP12T30P140 comma_pos_7_reg ( .D(N61), .CP(n163), .Q(comma_pos[7]) );
  DFQD2BWP12T30P140 rin_z_reg_11_ ( .D(rin[11]), .CP(n165), .Q(datain[11]) );
  DFQD2BWP12T30P140 comma_pos_14_reg ( .D(N96), .CP(n165), .Q(comma_pos[14])
         );
  DFQD2BWP12T30P140 comma_pos_19_reg ( .D(N121), .CP(n165), .Q(comma_pos[19])
         );
  DFQD2BWP12T30P140 comma_pos_18_reg ( .D(N116), .CP(n163), .Q(comma_pos[18])
         );
  DFQD2BWP12T30P140 comma_pos_1_reg ( .D(N31), .CP(n163), .Q(comma_pos[1]) );
  DFQD2BWP12T30P140 rin_z_reg_17_ ( .D(rin[17]), .CP(n165), .Q(datain[17]) );
  DFQD2BWP12T30P140 rin_z_reg_8_ ( .D(rin[8]), .CP(n164), .Q(datain[8]) );
  DFQD2BWP12T30P140 rin_z_reg_9_ ( .D(rin[9]), .CP(n164), .Q(datain[9]) );
  DFQD2BWP12T30P140 rin_z_reg_6_ ( .D(rin[6]), .CP(n164), .Q(datain[6]) );
  DFQD2BWP12T30P140 comma_pos_4_reg ( .D(N46), .CP(n163), .Q(comma_pos[4]) );
  DFQD2BWP12T30P140 comma_pos_8_reg ( .D(N66), .CP(n163), .Q(comma_pos[8]) );
  DFQD2BWP12T30P140 comma_pos_11_reg ( .D(N81), .CP(n163), .Q(comma_pos[11])
         );
  DFQD2BWP12T30P140 rin_z_reg_7_ ( .D(rin[7]), .CP(n164), .Q(datain[7]) );
  DFQD2BWP12T30P140 rin_z_reg_16_ ( .D(rin[16]), .CP(n165), .Q(datain[16]) );
  DFQD2BWP12T30P140 rin_z_reg_13_ ( .D(rin[13]), .CP(n165), .Q(datain[13]) );
  DFQD2BWP12T30P140 comma_pos_16_reg ( .D(N106), .CP(n165), .Q(comma_pos[16])
         );
  DFQD2BWP12T30P140 rin_z_reg_14_ ( .D(rin[14]), .CP(n165), .Q(datain[14]) );
  DFQD2BWP12T30P140 comma_pos_15_reg ( .D(N101), .CP(n165), .Q(comma_pos[15])
         );
  DFQD2BWP12T30P140 comma_pos_17_reg ( .D(N111), .CP(n164), .Q(comma_pos[17])
         );
  DFQD1BWP12T30P140 position_7bit_reg_0_ ( .D(n157), .CP(n163), .Q(
        position_7bit[0]) );
  DFQD1BWP12T30P140 comma_pos_3_reg ( .D(N41), .CP(n163), .Q(comma_pos[3]) );
  DFQD1BWP12T30P140 rin_z_reg_10_ ( .D(rin[10]), .CP(n164), .Q(datain[10]) );
  INR3D1BWP12T30P140 U3 ( .A1(sel_comma_sync), .B1(reset_sync), .B2(
        bypass_sync), .ZN(n124) );
  INVD0BWP12T30P140 U4 ( .I(n124), .ZN(n49) );
  NR3D0BWP12T30P140 U5 ( .A1(datain[19]), .A2(rin[0]), .A3(n49), .ZN(n21) );
  INVD0BWP12T30P140 U6 ( .I(datain[18]), .ZN(n40) );
  OR3D0BWP12T30P140 U7 ( .A1(rin[1]), .A2(rin[2]), .A3(rin[3]), .Z(n22) );
  NR2D0BWP12T30P140 U8 ( .A1(n40), .A2(n22), .ZN(n18) );
  INVD0BWP12T30P140 U9 ( .I(datain[17]), .ZN(n2) );
  INVD0BWP12T30P140 U10 ( .I(datain[19]), .ZN(n65) );
  INVD0BWP12T30P140 U11 ( .I(rin[0]), .ZN(n17) );
  NR3D0BWP12T30P140 U12 ( .A1(n49), .A2(n65), .A3(n17), .ZN(n24) );
  ND3D0BWP12T30P140 U13 ( .A1(rin[1]), .A2(rin[2]), .A3(rin[3]), .ZN(n26) );
  NR2D0BWP12T30P140 U14 ( .A1(datain[18]), .A2(n26), .ZN(n16) );
  AN2D0BWP12T30P140 U15 ( .A1(n24), .A2(n16), .Z(n1) );
  AO32D0BWP12T30P140 U16 ( .A1(datain[17]), .A2(n21), .A3(n18), .B1(n2), .B2(
        n1), .Z(N111) );
  INVD0BWP12T30P140 U17 ( .I(datain[15]), .ZN(n39) );
  ND2D0BWP12T30P140 U18 ( .A1(n21), .A2(n40), .ZN(n8) );
  NR2D0BWP12T30P140 U19 ( .A1(n39), .A2(n8), .ZN(n28) );
  ND3D0BWP12T30P140 U20 ( .A1(n2), .A2(n28), .A3(datain[16]), .ZN(n4) );
  ND2D0BWP12T30P140 U21 ( .A1(datain[18]), .A2(n24), .ZN(n5) );
  NR2D0BWP12T30P140 U22 ( .A1(datain[15]), .A2(n5), .ZN(n27) );
  ND3D0BWP12T30P140 U23 ( .A1(datain[17]), .A2(n27), .A3(rin[1]), .ZN(n3) );
  OAI22D0BWP12T30P140 U24 ( .A1(rin[1]), .A2(n4), .B1(datain[16]), .B2(n3), 
        .ZN(N101) );
  ND2D0BWP12T30P140 U25 ( .A1(datain[16]), .A2(datain[17]), .ZN(n38) );
  OR2D0BWP12T30P140 U26 ( .A1(rin[1]), .A2(rin[2]), .Z(n7) );
  NR2D0BWP12T30P140 U27 ( .A1(datain[16]), .A2(datain[17]), .ZN(n37) );
  IND4D1BWP12T30P140 U28 ( .A1(n5), .B1(rin[1]), .B2(n37), .B3(rin[2]), .ZN(n6) );
  OAI31D0BWP12T30P140 U29 ( .A1(n38), .A2(n8), .A3(n7), .B(n6), .ZN(N106) );
  NR3D0BWP12T30P140 U30 ( .A1(datain[15]), .A2(datain[14]), .A3(datain[13]), 
        .ZN(n62) );
  INVD0BWP12T30P140 U31 ( .I(datain[12]), .ZN(n51) );
  INVD0BWP12T30P140 U32 ( .I(datain[11]), .ZN(n48) );
  NR3D0BWP12T30P140 U33 ( .A1(n49), .A2(n51), .A3(n48), .ZN(n59) );
  INVD0BWP12T30P140 U34 ( .I(datain[14]), .ZN(n64) );
  INVD0BWP12T30P140 U35 ( .I(datain[13]), .ZN(n31) );
  NR3D0BWP12T30P140 U36 ( .A1(n39), .A2(n64), .A3(n31), .ZN(n57) );
  INVD0BWP12T30P140 U37 ( .I(n38), .ZN(n9) );
  NR3D0BWP12T30P140 U38 ( .A1(datain[12]), .A2(datain[11]), .A3(n49), .ZN(n60)
         );
  AO33D0BWP12T30P140 U39 ( .A1(n37), .A2(n62), .A3(n59), .B1(n57), .B2(n9), 
        .B3(n60), .Z(N81) );
  INVD0BWP12T30P140 U40 ( .I(datain[10]), .ZN(n47) );
  ND4D0BWP12T30P140 U41 ( .A1(datain[8]), .A2(datain[9]), .A3(n60), .A4(n47), 
        .ZN(n11) );
  INVD0BWP12T30P140 U42 ( .I(datain[9]), .ZN(n46) );
  INVD0BWP12T30P140 U43 ( .I(datain[8]), .ZN(n69) );
  ND4D0BWP12T30P140 U44 ( .A1(datain[10]), .A2(n59), .A3(n46), .A4(n69), .ZN(
        n10) );
  OAI33D0BWP12T30P140 U45 ( .A1(datain[13]), .A2(datain[14]), .A3(n11), .B1(
        n31), .B2(n10), .B3(n64), .ZN(N66) );
  NR2D0BWP12T30P140 U46 ( .A1(datain[10]), .A2(datain[9]), .ZN(n58) );
  NR2D0BWP12T30P140 U47 ( .A1(datain[7]), .A2(datain[8]), .ZN(n45) );
  INVD0BWP12T30P140 U48 ( .I(datain[6]), .ZN(n68) );
  ND4D0BWP12T30P140 U49 ( .A1(n58), .A2(n45), .A3(datain[4]), .A4(n68), .ZN(
        n13) );
  ND2D0BWP12T30P140 U50 ( .A1(datain[10]), .A2(datain[9]), .ZN(n56) );
  ND2D0BWP12T30P140 U51 ( .A1(datain[7]), .A2(datain[8]), .ZN(n42) );
  NR2D0BWP12T30P140 U52 ( .A1(n56), .A2(n42), .ZN(n33) );
  INVD0BWP12T30P140 U53 ( .I(datain[4]), .ZN(n74) );
  AOI31D0BWP12T30P140 U54 ( .A1(datain[6]), .A2(n33), .A3(n74), .B(datain[5]), 
        .ZN(n12) );
  AOI211D0BWP12T30P140 U55 ( .A1(datain[5]), .A2(n13), .B(n12), .C(n49), .ZN(
        N46) );
  ND3D0BWP12T30P140 U56 ( .A1(n124), .A2(datain[6]), .A3(datain[5]), .ZN(n43)
         );
  INVD0BWP12T30P140 U57 ( .I(datain[3]), .ZN(n14) );
  OR4D0BWP12T30P140 U58 ( .A1(datain[1]), .A2(n43), .A3(n74), .A4(n14), .Z(n53) );
  INVD0BWP12T30P140 U59 ( .I(datain[7]), .ZN(n15) );
  INVD0BWP12T30P140 U60 ( .I(datain[2]), .ZN(n75) );
  NR3D0BWP12T30P140 U61 ( .A1(datain[6]), .A2(datain[5]), .A3(n49), .ZN(n44)
         );
  ND4D0BWP12T30P140 U62 ( .A1(n44), .A2(datain[1]), .A3(n74), .A4(n14), .ZN(
        n55) );
  OAI33D0BWP12T30P140 U63 ( .A1(datain[2]), .A2(n53), .A3(n15), .B1(n75), .B2(
        n55), .B3(datain[7]), .ZN(N31) );
  ND3D0BWP12T30P140 U64 ( .A1(n65), .A2(n16), .A3(rin[0]), .ZN(n20) );
  AOI31D0BWP12T30P140 U65 ( .A1(datain[19]), .A2(n18), .A3(n17), .B(rin[4]), 
        .ZN(n19) );
  AOI211D0BWP12T30P140 U66 ( .A1(rin[4]), .A2(n20), .B(n19), .C(n49), .ZN(N116) );
  ND3D0BWP12T30P140 U67 ( .A1(n21), .A2(rin[4]), .A3(rin[5]), .ZN(n25) );
  NR3D0BWP12T30P140 U68 ( .A1(rin[4]), .A2(rin[5]), .A3(n22), .ZN(n23) );
  MOAI22D0BWP12T30P140 U69 ( .A1(n26), .A2(n25), .B1(n24), .B2(n23), .ZN(N121)
         );
  INVD0BWP12T30P140 U70 ( .I(n27), .ZN(n30) );
  ND3D0BWP12T30P140 U71 ( .A1(n28), .A2(datain[14]), .A3(n37), .ZN(n29) );
  OAI31D0BWP12T30P140 U72 ( .A1(datain[14]), .A2(n30), .A3(n38), .B(n29), .ZN(
        N96) );
  ND2D0BWP12T30P140 U73 ( .A1(n58), .A2(n60), .ZN(n70) );
  INR2D1BWP12T30P140 U74 ( .A1(n59), .B1(n56), .ZN(n67) );
  ND2D0BWP12T30P140 U75 ( .A1(n45), .A2(n67), .ZN(n32) );
  OAI32D0BWP12T30P140 U76 ( .A1(datain[13]), .A2(n42), .A3(n70), .B1(n32), 
        .B2(n31), .ZN(N61) );
  ND2D0BWP12T30P140 U77 ( .A1(n45), .A2(n58), .ZN(n35) );
  ND2D0BWP12T30P140 U78 ( .A1(n33), .A2(n44), .ZN(n34) );
  OAI32D0BWP12T30P140 U79 ( .A1(datain[11]), .A2(n35), .A3(n43), .B1(n34), 
        .B2(n48), .ZN(N51) );
  NR2D0BWP12T30P140 U80 ( .A1(datain[18]), .A2(n49), .ZN(n36) );
  ND4D0BWP12T30P140 U81 ( .A1(n37), .A2(datain[13]), .A3(n36), .A4(n39), .ZN(
        n63) );
  NR4D0BWP12T30P140 U82 ( .A1(datain[13]), .A2(n40), .A3(n39), .A4(n38), .ZN(
        n41) );
  ND2D0BWP12T30P140 U83 ( .A1(n124), .A2(n41), .ZN(n66) );
  OAI33D0BWP12T30P140 U84 ( .A1(datain[14]), .A2(n63), .A3(n51), .B1(n64), 
        .B2(n66), .B3(datain[12]), .ZN(N86) );
  OR3D0BWP12T30P140 U85 ( .A1(datain[3]), .A2(n43), .A3(n42), .Z(n73) );
  ND3D0BWP12T30P140 U86 ( .A1(n45), .A2(datain[3]), .A3(n44), .ZN(n76) );
  OAI33D0BWP12T30P140 U87 ( .A1(datain[4]), .A2(n73), .A3(n46), .B1(n74), .B2(
        n76), .B3(datain[9]), .ZN(N41) );
  ND4D0BWP12T30P140 U88 ( .A1(datain[16]), .A2(n57), .A3(n48), .A4(n47), .ZN(
        n52) );
  IND4D1BWP12T30P140 U89 ( .A1(datain[16]), .B1(datain[10]), .B2(datain[11]), 
        .B3(n62), .ZN(n50) );
  AOI221D0BWP12T30P140 U90 ( .A1(datain[12]), .A2(n52), .B1(n51), .B2(n50), 
        .C(n49), .ZN(N76) );
  INVD0BWP12T30P140 U91 ( .I(datain[0]), .ZN(n54) );
  OAI33D0BWP12T30P140 U92 ( .A1(datain[2]), .A2(n55), .A3(n54), .B1(n75), .B2(
        n53), .B3(datain[0]), .ZN(N25) );
  INVD0BWP12T30P140 U93 ( .I(n56), .ZN(n61) );
  AO33D0BWP12T30P140 U94 ( .A1(n62), .A2(n61), .A3(n60), .B1(n59), .B2(n58), 
        .B3(n57), .Z(N71) );
  OAI33D0BWP12T30P140 U95 ( .A1(datain[14]), .A2(n66), .A3(n65), .B1(n64), 
        .B2(n63), .B3(datain[19]), .ZN(N91) );
  ND3D0BWP12T30P140 U96 ( .A1(n68), .A2(datain[8]), .A3(n67), .ZN(n72) );
  ND3D0BWP12T30P140 U97 ( .A1(n69), .A2(datain[6]), .A3(datain[7]), .ZN(n71)
         );
  OAI22D0BWP12T30P140 U98 ( .A1(datain[7]), .A2(n72), .B1(n71), .B2(n70), .ZN(
        N56) );
  OAI33D0BWP12T30P140 U99 ( .A1(datain[4]), .A2(n76), .A3(n75), .B1(n74), .B2(
        n73), .B3(datain[2]), .ZN(N36) );
  NR2D0BWP12T30P140 U100 ( .A1(comma_pos[11]), .A2(comma_pos[10]), .ZN(n84) );
  INVD0BWP12T30P140 U101 ( .I(comma_pos[12]), .ZN(n104) );
  ND2D0BWP12T30P140 U102 ( .A1(n84), .A2(n104), .ZN(n77) );
  NR3D0BWP12T30P140 U103 ( .A1(comma_pos[6]), .A2(comma_pos[5]), .A3(
        comma_pos[7]), .ZN(n81) );
  INR3D1BWP12T30P140 U104 ( .A1(n81), .B1(comma_pos[9]), .B2(comma_pos[8]), 
        .ZN(n82) );
  OR3D0BWP12T30P140 U105 ( .A1(comma_pos[3]), .A2(comma_pos[4]), .A3(
        comma_pos[2]), .Z(n83) );
  NR3D0BWP12T30P140 U106 ( .A1(comma_pos[1]), .A2(comma_pos[0]), .A3(n83), 
        .ZN(n78) );
  ND2D0BWP12T30P140 U107 ( .A1(n82), .A2(n78), .ZN(n91) );
  OR2D0BWP12T30P140 U108 ( .A1(comma_pos[19]), .A2(comma_pos[18]), .Z(n127) );
  NR2D0BWP12T30P140 U109 ( .A1(n127), .A2(comma_pos[17]), .ZN(n108) );
  INVD0BWP12T30P140 U110 ( .I(n108), .ZN(n118) );
  NR4D0BWP12T30P140 U111 ( .A1(comma_pos[16]), .A2(n77), .A3(n91), .A4(n118), 
        .ZN(n93) );
  INR2D1BWP12T30P140 U112 ( .A1(n93), .B1(comma_pos[15]), .ZN(n111) );
  IND3D1BWP12T30P140 U113 ( .A1(comma_pos[14]), .B1(n111), .B2(comma_pos[13]), 
        .ZN(n141) );
  INVD0BWP12T30P140 U114 ( .I(comma_pos[11]), .ZN(n113) );
  INVD0BWP12T30P140 U115 ( .I(comma_pos[10]), .ZN(n92) );
  NR2D0BWP12T30P140 U116 ( .A1(comma_pos[14]), .A2(comma_pos[13]), .ZN(n94) );
  ND4D0BWP12T30P140 U117 ( .A1(n104), .A2(n113), .A3(n92), .A4(n94), .ZN(n88)
         );
  INR2D1BWP12T30P140 U118 ( .A1(n78), .B1(n88), .ZN(n79) );
  INR2D1BWP12T30P140 U119 ( .A1(n79), .B1(comma_pos[8]), .ZN(n109) );
  NR2D0BWP12T30P140 U120 ( .A1(comma_pos[16]), .A2(n127), .ZN(n97) );
  INVD0BWP12T30P140 U121 ( .I(comma_pos[9]), .ZN(n107) );
  IND4D1BWP12T30P140 U122 ( .A1(comma_pos[6]), .B1(n109), .B2(n97), .B3(n107), 
        .ZN(n87) );
  INR4D0BWP12T30P140 U123 ( .A1(comma_pos[5]), .B1(comma_pos[17]), .B2(
        comma_pos[7]), .B3(n87), .ZN(n144) );
  NR3D0BWP12T30P140 U124 ( .A1(comma_pos[15]), .A2(comma_pos[16]), .A3(
        comma_pos[17]), .ZN(n80) );
  ND3D0BWP12T30P140 U125 ( .A1(n81), .A2(n80), .A3(n79), .ZN(n101) );
  NR4D0BWP12T30P140 U126 ( .A1(comma_pos[18]), .A2(comma_pos[8]), .A3(n107), 
        .A4(n101), .ZN(n151) );
  NR4D0BWP12T30P140 U127 ( .A1(comma_pos[16]), .A2(comma_pos[15]), .A3(
        comma_pos[17]), .A4(n127), .ZN(n90) );
  ND2D0BWP12T30P140 U128 ( .A1(n90), .A2(n82), .ZN(n86) );
  INVD0BWP12T30P140 U129 ( .I(n94), .ZN(n105) );
  NR4D0BWP12T30P140 U130 ( .A1(comma_pos[12]), .A2(n86), .A3(n83), .A4(n105), 
        .ZN(n117) );
  ND3D0BWP12T30P140 U131 ( .A1(n92), .A2(n117), .A3(comma_pos[1]), .ZN(n99) );
  NR2D0BWP12T30P140 U132 ( .A1(comma_pos[1]), .A2(comma_pos[0]), .ZN(n85) );
  IND3D1BWP12T30P140 U133 ( .A1(n86), .B1(n85), .B2(n84), .ZN(n106) );
  NR3D0BWP12T30P140 U134 ( .A1(comma_pos[2]), .A2(comma_pos[12]), .A3(n106), 
        .ZN(n121) );
  INR3D1BWP12T30P140 U135 ( .A1(n121), .B1(comma_pos[4]), .B2(comma_pos[14]), 
        .ZN(n96) );
  INR4D0BWP12T30P140 U136 ( .A1(comma_pos[7]), .B1(comma_pos[5]), .B2(
        comma_pos[15]), .B3(n87), .ZN(n145) );
  IND2D1BWP12T30P140 U137 ( .A1(comma_pos[18]), .B1(comma_pos[19]), .ZN(n130)
         );
  NR2D0BWP12T30P140 U138 ( .A1(comma_pos[16]), .A2(comma_pos[17]), .ZN(n89) );
  NR3D0BWP12T30P140 U139 ( .A1(comma_pos[15]), .A2(n88), .A3(n91), .ZN(n133)
         );
  ND2D0BWP12T30P140 U140 ( .A1(n89), .A2(n133), .ZN(n114) );
  IND3D1BWP12T30P140 U141 ( .A1(n91), .B1(n90), .B2(n94), .ZN(n103) );
  NR2D0BWP12T30P140 U142 ( .A1(comma_pos[12]), .A2(n103), .ZN(n112) );
  ND3D0BWP12T30P140 U143 ( .A1(n92), .A2(n112), .A3(comma_pos[11]), .ZN(n159)
         );
  ND3D0BWP12T30P140 U144 ( .A1(comma_pos[15]), .A2(n94), .A3(n93), .ZN(n140)
         );
  OAI211D0BWP12T30P140 U145 ( .A1(n130), .A2(n114), .B(n159), .C(n140), .ZN(
        n95) );
  AOI211D0BWP12T30P140 U146 ( .A1(n96), .A2(comma_pos[3]), .B(n145), .C(n95), 
        .ZN(n137) );
  ND3D0BWP12T30P140 U147 ( .A1(comma_pos[17]), .A2(n97), .A3(n133), .ZN(n98)
         );
  OAI211D0BWP12T30P140 U148 ( .A1(comma_pos[0]), .A2(n99), .B(n137), .C(n98), 
        .ZN(n100) );
  INR4D0BWP12T30P140 U149 ( .A1(n141), .B1(n144), .B2(n151), .B3(n100), .ZN(
        n126) );
  ND2D0BWP12T30P140 U150 ( .A1(n124), .A2(enable_cgalign), .ZN(n152) );
  INVD0BWP12T30P140 U151 ( .I(comma_pos[8]), .ZN(n102) );
  NR4D0BWP12T30P140 U152 ( .A1(comma_pos[9]), .A2(comma_pos[19]), .A3(n102), 
        .A4(n101), .ZN(n150) );
  NR4D0BWP12T30P140 U153 ( .A1(comma_pos[10]), .A2(comma_pos[11]), .A3(n104), 
        .A4(n103), .ZN(n142) );
  NR4D0BWP12T30P140 U154 ( .A1(comma_pos[3]), .A2(comma_pos[4]), .A3(n106), 
        .A4(n105), .ZN(n116) );
  ND4D0BWP12T30P140 U155 ( .A1(comma_pos[6]), .A2(n109), .A3(n108), .A4(n107), 
        .ZN(n110) );
  NR4D0BWP12T30P140 U156 ( .A1(comma_pos[5]), .A2(comma_pos[7]), .A3(
        comma_pos[15]), .A4(n110), .ZN(n143) );
  IND2D1BWP12T30P140 U157 ( .A1(comma_pos[19]), .B1(comma_pos[18]), .ZN(n128)
         );
  INVD0BWP12T30P140 U158 ( .I(comma_pos[13]), .ZN(n120) );
  ND3D0BWP12T30P140 U159 ( .A1(n120), .A2(n111), .A3(comma_pos[14]), .ZN(n139)
         );
  ND3D0BWP12T30P140 U160 ( .A1(n113), .A2(n112), .A3(comma_pos[10]), .ZN(n158)
         );
  OAI211D0BWP12T30P140 U161 ( .A1(n114), .A2(n128), .B(n139), .C(n158), .ZN(
        n115) );
  AOI211D0BWP12T30P140 U162 ( .A1(n116), .A2(comma_pos[2]), .B(n143), .C(n115), 
        .ZN(n136) );
  INR3D1BWP12T30P140 U163 ( .A1(n117), .B1(comma_pos[1]), .B2(comma_pos[11]), 
        .ZN(n119) );
  INVD0BWP12T30P140 U164 ( .I(comma_pos[16]), .ZN(n132) );
  NR2D0BWP12T30P140 U165 ( .A1(n132), .A2(n118), .ZN(n131) );
  AOI22D0BWP12T30P140 U166 ( .A1(comma_pos[0]), .A2(n119), .B1(n133), .B2(n131), .ZN(n122) );
  IND4D1BWP12T30P140 U167 ( .A1(comma_pos[3]), .B1(comma_pos[4]), .B2(n121), 
        .B3(n120), .ZN(n146) );
  ND4D0BWP12T30P140 U168 ( .A1(n136), .A2(n126), .A3(n122), .A4(n146), .ZN(
        n123) );
  OAI31D0BWP12T30P140 U169 ( .A1(n150), .A2(n142), .A3(n123), .B(
        enable_cgalign), .ZN(n125) );
  AN2D0BWP12T30P140 U170 ( .A1(n125), .A2(n124), .Z(n162) );
  MOAI22D0BWP12T30P140 U171 ( .A1(n126), .A2(n152), .B1(n162), .B2(
        position_7bit[0]), .ZN(n157) );
  INVD0BWP12T30P140 U172 ( .I(comma_pos[17]), .ZN(n129) );
  AOI32D0BWP12T30P140 U173 ( .A1(n130), .A2(n129), .A3(n128), .B1(
        comma_pos[17]), .B2(n127), .ZN(n134) );
  AOI32D0BWP12T30P140 U174 ( .A1(n134), .A2(n133), .A3(n132), .B1(n131), .B2(
        n133), .ZN(n135) );
  MOAI22D0BWP12T30P140 U175 ( .A1(n152), .A2(n135), .B1(n162), .B2(
        position_7bit[4]), .ZN(n153) );
  AOI21D0BWP12T30P140 U176 ( .A1(n137), .A2(n136), .B(n152), .ZN(n138) );
  AO21D0BWP12T30P140 U177 ( .A1(n162), .A2(position_7bit[1]), .B(n138), .Z(
        n156) );
  IND4D1BWP12T30P140 U178 ( .A1(n142), .B1(n141), .B2(n140), .B3(n139), .ZN(
        n149) );
  NR4D0BWP12T30P140 U179 ( .A1(n145), .A2(n144), .A3(n143), .A4(n149), .ZN(
        n147) );
  AOI21D0BWP12T30P140 U180 ( .A1(n147), .A2(n146), .B(n152), .ZN(n148) );
  AO21D0BWP12T30P140 U181 ( .A1(n162), .A2(position_7bit[2]), .B(n148), .Z(
        n155) );
  NR3D0BWP12T30P140 U182 ( .A1(n151), .A2(n150), .A3(n149), .ZN(n160) );
  AOI31D0BWP12T30P140 U183 ( .A1(n160), .A2(n159), .A3(n158), .B(n152), .ZN(
        n161) );
  AO21D0BWP12T30P140 U184 ( .A1(n162), .A2(position_7bit[3]), .B(n161), .Z(
        n154) );
  CKBD0BWP12T30P140 U185 ( .I(clk), .Z(n163) );
  CKBD0BWP12T30P140 U186 ( .I(clk), .Z(n164) );
  CKBD0BWP12T30P140 U187 ( .I(clk), .Z(n165) );
endmodule


module sip_xpcs_cd_10bit ( position_10bit, bypass_sync, clk, commaa_sync, 
        commab_sync, enable_cgalign, reset_sync, rin, sel_comma_sync );
  output [4:0] position_10bit;
  input [9:0] commaa_sync;
  input [9:0] commab_sync;
  input [19:0] rin;
  input bypass_sync, clk, enable_cgalign, reset_sync, sel_comma_sync;
  wire   N27, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36;
  wire   [9:0] datain;

  DFQD2BWP12T30P140 rin_z_reg_9_ ( .D(rin[9]), .CP(clk), .Q(datain[9]) );
  DFQD2BWP12T30P140 rin_z_reg_8_ ( .D(rin[8]), .CP(clk), .Q(datain[8]) );
  DFQD2BWP12T30P140 rin_z_reg_7_ ( .D(rin[7]), .CP(clk), .Q(datain[7]) );
  DFQD2BWP12T30P140 rin_z_reg_5_ ( .D(rin[5]), .CP(clk), .Q(datain[5]) );
  DFQD2BWP12T30P140 rin_z_reg_4_ ( .D(rin[4]), .CP(clk), .Q(datain[4]) );
  DFQD2BWP12T30P140 rin_z_reg_2_ ( .D(rin[2]), .CP(clk), .Q(datain[2]) );
  DFQD2BWP12T30P140 rin_z_reg_0_ ( .D(rin[0]), .CP(clk), .Q(datain[0]) );
  DFQD2BWP12T30P140 rin_z_reg_6_ ( .D(rin[6]), .CP(clk), .Q(datain[6]) );
  DFQD2BWP12T30P140 rin_z_reg_3_ ( .D(rin[3]), .CP(clk), .Q(datain[3]) );
  DFQD2BWP12T30P140 comma_pos_0_reg ( .D(N27), .CP(clk), .Q(position_10bit[1])
         );
  DFQD1BWP12T30P140 rin_z_reg_1_ ( .D(rin[1]), .CP(clk), .Q(datain[1]) );
  INVD0BWP12T30P140 U3 ( .I(position_10bit[1]), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(n1), .ZN(position_10bit[2]) );
  INVD0BWP12T30P140 U5 ( .I(n1), .ZN(position_10bit[3]) );
  INVD0BWP12T30P140 U6 ( .I(n1), .ZN(position_10bit[4]) );
  INVD0BWP12T30P140 U7 ( .I(n1), .ZN(position_10bit[0]) );
  INVD0BWP12T30P140 U8 ( .I(datain[2]), .ZN(n18) );
  INVD0BWP12T30P140 U9 ( .I(datain[5]), .ZN(n21) );
  OAI22D0BWP12T30P140 U10 ( .A1(commaa_sync[5]), .A2(n21), .B1(commaa_sync[2]), 
        .B2(n18), .ZN(n2) );
  AOI221D0BWP12T30P140 U11 ( .A1(n18), .A2(commaa_sync[2]), .B1(n21), .B2(
        commaa_sync[5]), .C(n2), .ZN(n35) );
  INVD0BWP12T30P140 U12 ( .I(datain[0]), .ZN(n14) );
  INVD0BWP12T30P140 U13 ( .I(datain[6]), .ZN(n4) );
  OAI22D0BWP12T30P140 U14 ( .A1(commaa_sync[6]), .A2(n4), .B1(commaa_sync[0]), 
        .B2(n14), .ZN(n3) );
  AOI221D0BWP12T30P140 U15 ( .A1(n14), .A2(commaa_sync[0]), .B1(n4), .B2(
        commaa_sync[6]), .C(n3), .ZN(n12) );
  INVD0BWP12T30P140 U16 ( .I(datain[8]), .ZN(n24) );
  INVD0BWP12T30P140 U17 ( .I(datain[7]), .ZN(n23) );
  OAI22D0BWP12T30P140 U18 ( .A1(commaa_sync[7]), .A2(n23), .B1(commaa_sync[8]), 
        .B2(n24), .ZN(n5) );
  AOI221D0BWP12T30P140 U19 ( .A1(n24), .A2(commaa_sync[8]), .B1(n23), .B2(
        commaa_sync[7]), .C(n5), .ZN(n11) );
  INVD0BWP12T30P140 U20 ( .I(datain[1]), .ZN(n26) );
  INVD0BWP12T30P140 U21 ( .I(datain[3]), .ZN(n7) );
  OAI22D0BWP12T30P140 U22 ( .A1(commaa_sync[3]), .A2(n7), .B1(commaa_sync[1]), 
        .B2(n26), .ZN(n6) );
  AOI221D0BWP12T30P140 U23 ( .A1(n26), .A2(commaa_sync[1]), .B1(n7), .B2(
        commaa_sync[3]), .C(n6), .ZN(n10) );
  INVD0BWP12T30P140 U24 ( .I(datain[4]), .ZN(n15) );
  INVD0BWP12T30P140 U25 ( .I(datain[9]), .ZN(n27) );
  OAI22D0BWP12T30P140 U26 ( .A1(commaa_sync[9]), .A2(n27), .B1(commaa_sync[4]), 
        .B2(n15), .ZN(n8) );
  AOI221D0BWP12T30P140 U27 ( .A1(n15), .A2(commaa_sync[4]), .B1(n27), .B2(
        commaa_sync[9]), .C(n8), .ZN(n9) );
  AN4D0BWP12T30P140 U28 ( .A1(n12), .A2(n11), .A3(n10), .A4(n9), .Z(n34) );
  AOI22D0BWP12T30P140 U29 ( .A1(n15), .A2(commab_sync[4]), .B1(n14), .B2(
        commab_sync[0]), .ZN(n13) );
  OAI221D0BWP12T30P140 U30 ( .A1(n15), .A2(commab_sync[4]), .B1(n14), .B2(
        commab_sync[0]), .C(n13), .ZN(n33) );
  INVD0BWP12T30P140 U31 ( .I(commab_sync[3]), .ZN(n17) );
  OAI22D0BWP12T30P140 U32 ( .A1(n18), .A2(commab_sync[2]), .B1(n17), .B2(
        datain[3]), .ZN(n16) );
  AOI221D0BWP12T30P140 U33 ( .A1(n18), .A2(commab_sync[2]), .B1(datain[3]), 
        .B2(n17), .C(n16), .ZN(n31) );
  INVD0BWP12T30P140 U34 ( .I(commab_sync[6]), .ZN(n20) );
  OAI22D0BWP12T30P140 U35 ( .A1(n21), .A2(commab_sync[5]), .B1(n20), .B2(
        datain[6]), .ZN(n19) );
  AOI221D0BWP12T30P140 U36 ( .A1(n21), .A2(commab_sync[5]), .B1(datain[6]), 
        .B2(n20), .C(n19), .ZN(n30) );
  OAI22D0BWP12T30P140 U37 ( .A1(n24), .A2(commab_sync[8]), .B1(n23), .B2(
        commab_sync[7]), .ZN(n22) );
  AOI221D0BWP12T30P140 U38 ( .A1(n24), .A2(commab_sync[8]), .B1(commab_sync[7]), .B2(n23), .C(n22), .ZN(n29) );
  OAI22D0BWP12T30P140 U39 ( .A1(n27), .A2(commab_sync[9]), .B1(n26), .B2(
        commab_sync[1]), .ZN(n25) );
  AOI221D0BWP12T30P140 U40 ( .A1(n27), .A2(commab_sync[9]), .B1(commab_sync[1]), .B2(n26), .C(n25), .ZN(n28) );
  ND4D0BWP12T30P140 U41 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .ZN(n32) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n35), .A2(n34), .B1(n33), .B2(n32), .ZN(n36)
         );
  NR4D0BWP12T30P140 U43 ( .A1(n36), .A2(bypass_sync), .A3(sel_comma_sync), 
        .A4(reset_sync), .ZN(N27) );
endmodule


module sip_xpcs_cd_ssm ( enable_cgalign, sync_status, sync_state, sync_state_z, 
        bypass_sync, clk, comma_valid0, comma_valid1, data_special_valid0, 
        data_special_valid1, reset_sync, sigdet_sync, en_comma_align_glob, 
        rf_en_2sync_sync );
  output [10:0] sync_state;
  output [10:0] sync_state_z;
  input bypass_sync, clk, comma_valid0, comma_valid1, data_special_valid0,
         data_special_valid1, reset_sync, sigdet_sync, en_comma_align_glob,
         rf_en_2sync_sync;
  output enable_cgalign, sync_status;
  wire   net1906, n4, n12, n13;

  DFQD2BWP12T30P140 sync_state_z_reg_0_ ( .D(n13), .CP(clk), .Q(
        sync_state_z[0]) );
  DFQD2BWP12T30P140 sync_state_z_reg_7_ ( .D(net1906), .CP(clk), .Q(
        sync_state_z[7]) );
  DFQD2BWP12T30P140 sync_state_z_reg_9_ ( .D(net1906), .CP(clk), .Q(
        sync_state_z[9]) );
  DFQD2BWP12T30P140 sync_status_reg ( .D(n12), .CP(clk), .Q(sync_status) );
  DFQD2BWP12T30P140 sync_state_z_reg_10_ ( .D(net1906), .CP(clk), .Q(
        sync_state_z[4]) );
  DFQD2BWP12T30P140 enable_cgalign_reg ( .D(en_comma_align_glob), .CP(clk), 
        .Q(enable_cgalign) );
  TIELBWP12T30P140 U3 ( .ZN(net1906) );
  TIEHBWP12T30P140 U4 ( .Z(n13) );
  INVD0BWP12T30P140 U5 ( .I(sync_state_z[4]), .ZN(n4) );
  INVD0BWP12T30P140 U6 ( .I(n4), .ZN(sync_state_z[3]) );
  INVD0BWP12T30P140 U7 ( .I(n4), .ZN(sync_state_z[2]) );
  INVD0BWP12T30P140 U8 ( .I(n4), .ZN(sync_state_z[1]) );
  INVD0BWP12T30P140 U9 ( .I(n4), .ZN(sync_state_z[6]) );
  INVD0BWP12T30P140 U10 ( .I(n4), .ZN(sync_state_z[8]) );
  INVD0BWP12T30P140 U11 ( .I(n4), .ZN(sync_state_z[10]) );
  INVD0BWP12T30P140 U12 ( .I(n4), .ZN(sync_state_z[5]) );
  INVD0BWP12T30P140 U13 ( .I(rf_en_2sync_sync), .ZN(n12) );
endmodule


module sip_xpcs_cd_mux ( rout, bypass_sync, clk, position_7bit, position_10bit, 
        rin, sel_comma_sync );
  output [19:0] rout;
  input [4:0] position_7bit;
  input [4:0] position_10bit;
  input [19:0] rin;
  input bypass_sync, clk, sel_comma_sync;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199;
  wire   [19:0] rout_pre;
  wire   [19:1] rin_z;

  DFQD2BWP12T30P140 rin_z_reg_2_ ( .D(rin[2]), .CP(clk), .Q(rin_z[2]) );
  DFQD2BWP12T30P140 rin_z_reg_1_ ( .D(rin[1]), .CP(n199), .Q(rin_z[1]) );
  DFQD2BWP12T30P140 rin_z_reg_9_ ( .D(rin[9]), .CP(n198), .Q(rin_z[9]) );
  DFQD2BWP12T30P140 rin_z_reg_19_ ( .D(rin[19]), .CP(n199), .Q(rin_z[19]) );
  DFQD2BWP12T30P140 rin_z_reg_17_ ( .D(rin[17]), .CP(n199), .Q(rin_z[17]) );
  DFQD2BWP12T30P140 rin_z_reg_16_ ( .D(rin[16]), .CP(n198), .Q(rin_z[16]) );
  DFQD2BWP12T30P140 rin_z_reg_14_ ( .D(rin[14]), .CP(n198), .Q(rin_z[14]) );
  DFQD2BWP12T30P140 rin_z_reg_11_ ( .D(rin[11]), .CP(n198), .Q(rin_z[11]) );
  DFQD2BWP12T30P140 rin_z_reg_7_ ( .D(rin[7]), .CP(n198), .Q(rin_z[7]) );
  DFQD2BWP12T30P140 rin_z_reg_12_ ( .D(rin[12]), .CP(n198), .Q(rin_z[12]) );
  DFQD2BWP12T30P140 rin_z_reg_3_ ( .D(rin[3]), .CP(n198), .Q(rin_z[3]) );
  DFQD2BWP12T30P140 rin_z_reg_15_ ( .D(rin[15]), .CP(n198), .Q(rin_z[15]) );
  DFQD2BWP12T30P140 rin_z_reg_13_ ( .D(rin[13]), .CP(n198), .Q(rin_z[13]) );
  DFQD2BWP12T30P140 rin_z_reg_8_ ( .D(rin[8]), .CP(n198), .Q(rin_z[8]) );
  DFQD2BWP12T30P140 rin_z_reg_10_ ( .D(rin[10]), .CP(n198), .Q(rin_z[10]) );
  DFQD2BWP12T30P140 rout_reg_18_ ( .D(rout_pre[18]), .CP(clk), .Q(rout[18]) );
  DFQD2BWP12T30P140 rin_z_reg_6_ ( .D(rin[6]), .CP(n198), .Q(rin_z[6]) );
  DFQD2BWP12T30P140 rin_z_reg_4_ ( .D(rin[4]), .CP(n199), .Q(rin_z[4]) );
  DFQD2BWP12T30P140 rout_reg_17_ ( .D(rout_pre[17]), .CP(n199), .Q(rout[17])
         );
  DFQD2BWP12T30P140 rout_reg_16_ ( .D(rout_pre[16]), .CP(n198), .Q(rout[16])
         );
  DFQD2BWP12T30P140 rout_reg_15_ ( .D(rout_pre[15]), .CP(n199), .Q(rout[15])
         );
  DFQD2BWP12T30P140 rout_reg_14_ ( .D(rout_pre[14]), .CP(n198), .Q(rout[14])
         );
  DFQD2BWP12T30P140 rout_reg_13_ ( .D(rout_pre[13]), .CP(n199), .Q(rout[13])
         );
  DFQD2BWP12T30P140 rout_reg_12_ ( .D(rout_pre[12]), .CP(n198), .Q(rout[12])
         );
  DFQD2BWP12T30P140 rout_reg_11_ ( .D(rout_pre[11]), .CP(n199), .Q(rout[11])
         );
  DFQD2BWP12T30P140 rout_reg_10_ ( .D(rout_pre[10]), .CP(n199), .Q(rout[10])
         );
  DFQD2BWP12T30P140 rin_z_reg_5_ ( .D(rin[5]), .CP(n198), .Q(rin_z[5]) );
  DFQD2BWP12T30P140 rout_reg_0_ ( .D(rout_pre[0]), .CP(clk), .Q(rout[0]) );
  DFQD2BWP12T30P140 rout_reg_4_ ( .D(rout_pre[4]), .CP(n199), .Q(rout[4]) );
  DFQD2BWP12T30P140 rout_reg_2_ ( .D(rout_pre[2]), .CP(n199), .Q(rout[2]) );
  DFQD2BWP12T30P140 rout_reg_9_ ( .D(rout_pre[9]), .CP(n199), .Q(rout[9]) );
  DFQD2BWP12T30P140 rout_reg_5_ ( .D(rout_pre[5]), .CP(n199), .Q(rout[5]) );
  DFQD2BWP12T30P140 rout_reg_3_ ( .D(rout_pre[3]), .CP(n199), .Q(rout[3]) );
  DFQD2BWP12T30P140 rout_reg_1_ ( .D(rout_pre[1]), .CP(n198), .Q(rout[1]) );
  DFQD2BWP12T30P140 rout_reg_7_ ( .D(rout_pre[7]), .CP(n199), .Q(rout[7]) );
  DFQD2BWP12T30P140 rout_reg_6_ ( .D(rout_pre[6]), .CP(n199), .Q(rout[6]) );
  DFQD1BWP12T30P140 rin_z_reg_18_ ( .D(rin[18]), .CP(n199), .Q(rin_z[18]) );
  DFQD1BWP12T30P140 rout_reg_19_ ( .D(rout_pre[19]), .CP(n198), .Q(rout[19])
         );
  DFQD1BWP12T30P140 rout_reg_8_ ( .D(rout_pre[8]), .CP(n199), .Q(rout[8]) );
  INVD0BWP12T30P140 U3 ( .I(sel_comma_sync), .ZN(n1) );
  AOI22D0BWP12T30P140 U4 ( .A1(sel_comma_sync), .A2(position_7bit[1]), .B1(
        position_10bit[1]), .B2(n1), .ZN(n51) );
  AOI22D0BWP12T30P140 U5 ( .A1(sel_comma_sync), .A2(position_7bit[4]), .B1(
        position_10bit[4]), .B2(n1), .ZN(n6) );
  IND2D1BWP12T30P140 U6 ( .A1(bypass_sync), .B1(n6), .ZN(n24) );
  AOI22D0BWP12T30P140 U7 ( .A1(sel_comma_sync), .A2(position_7bit[2]), .B1(
        position_10bit[2]), .B2(n1), .ZN(n8) );
  AOI22D0BWP12T30P140 U8 ( .A1(sel_comma_sync), .A2(position_7bit[3]), .B1(
        position_10bit[3]), .B2(n1), .ZN(n7) );
  ND2D0BWP12T30P140 U9 ( .A1(n8), .A2(n7), .ZN(n23) );
  NR3D0BWP12T30P140 U10 ( .A1(n51), .A2(n24), .A3(n23), .ZN(n112) );
  INVD0BWP12T30P140 U11 ( .I(rin_z[9]), .ZN(n14) );
  AOI22D0BWP12T30P140 U12 ( .A1(sel_comma_sync), .A2(position_7bit[0]), .B1(
        position_10bit[0]), .B2(n1), .ZN(n65) );
  INVD0BWP12T30P140 U13 ( .I(n65), .ZN(n64) );
  MAOI22D0BWP12T30P140 U14 ( .A1(n14), .A2(n64), .B1(n64), .B2(rin_z[8]), .ZN(
        n79) );
  INVD0BWP12T30P140 U15 ( .I(n51), .ZN(n43) );
  INR3D1BWP12T30P140 U16 ( .A1(n7), .B1(n8), .B2(n24), .ZN(n185) );
  INVD0BWP12T30P140 U17 ( .I(n185), .ZN(n88) );
  NR2D0BWP12T30P140 U18 ( .A1(n43), .A2(n88), .ZN(n74) );
  AO22D0BWP12T30P140 U19 ( .A1(n65), .A2(rin_z[10]), .B1(rin_z[11]), .B2(n64), 
        .Z(n83) );
  AOI22D0BWP12T30P140 U20 ( .A1(n112), .A2(n79), .B1(n74), .B2(n83), .ZN(n13)
         );
  NR2D0BWP12T30P140 U21 ( .A1(n88), .A2(n51), .ZN(n84) );
  AOI22D0BWP12T30P140 U22 ( .A1(n65), .A2(rin_z[12]), .B1(rin_z[13]), .B2(n64), 
        .ZN(n42) );
  INVD0BWP12T30P140 U23 ( .I(n42), .ZN(n96) );
  INVD0BWP12T30P140 U24 ( .I(n23), .ZN(n5) );
  NR2D0BWP12T30P140 U25 ( .A1(n65), .A2(n43), .ZN(n138) );
  ND2D0BWP12T30P140 U26 ( .A1(n5), .A2(n138), .ZN(n148) );
  NR2D0BWP12T30P140 U27 ( .A1(n24), .A2(n148), .ZN(n183) );
  AOI22D0BWP12T30P140 U28 ( .A1(n84), .A2(n96), .B1(rin_z[7]), .B2(n183), .ZN(
        n12) );
  OR2D0BWP12T30P140 U29 ( .A1(n6), .A2(bypass_sync), .Z(n196) );
  NR2D0BWP12T30P140 U30 ( .A1(n23), .A2(n196), .ZN(n153) );
  NR2D0BWP12T30P140 U31 ( .A1(n51), .A2(n64), .ZN(n139) );
  AOI22D0BWP12T30P140 U32 ( .A1(n139), .A2(rin[4]), .B1(n138), .B2(rin[3]), 
        .ZN(n3) );
  NR2D0BWP12T30P140 U33 ( .A1(n64), .A2(n43), .ZN(n152) );
  NR2D0BWP12T30P140 U34 ( .A1(n65), .A2(n51), .ZN(n140) );
  AOI22D0BWP12T30P140 U35 ( .A1(n152), .A2(rin[2]), .B1(n140), .B2(rin[5]), 
        .ZN(n2) );
  ND2D0BWP12T30P140 U36 ( .A1(n3), .A2(n2), .ZN(n184) );
  AOI31D0BWP12T30P140 U37 ( .A1(n6), .A2(n5), .A3(n152), .B(bypass_sync), .ZN(
        n4) );
  OAI21D0BWP12T30P140 U38 ( .A1(n6), .A2(n5), .B(n4), .ZN(n188) );
  AOI22D0BWP12T30P140 U39 ( .A1(n153), .A2(n184), .B1(rin[6]), .B2(n188), .ZN(
        n11) );
  NR2D0BWP12T30P140 U40 ( .A1(n7), .A2(n24), .ZN(n9) );
  ND2D0BWP12T30P140 U41 ( .A1(n8), .A2(n9), .ZN(n21) );
  INVD0BWP12T30P140 U42 ( .I(n21), .ZN(n187) );
  AOI22D0BWP12T30P140 U43 ( .A1(n65), .A2(rin_z[14]), .B1(rin_z[15]), .B2(n64), 
        .ZN(n113) );
  AOI22D0BWP12T30P140 U44 ( .A1(n65), .A2(rin_z[16]), .B1(rin_z[17]), .B2(n64), 
        .ZN(n129) );
  AOI22D0BWP12T30P140 U45 ( .A1(n51), .A2(n113), .B1(n129), .B2(n43), .ZN(n99)
         );
  INR2D1BWP12T30P140 U46 ( .A1(n9), .B1(n8), .ZN(n182) );
  AOI22D0BWP12T30P140 U47 ( .A1(n65), .A2(rin_z[18]), .B1(rin_z[19]), .B2(n64), 
        .ZN(n156) );
  AOI22D0BWP12T30P140 U48 ( .A1(n65), .A2(rin[0]), .B1(rin[1]), .B2(n64), .ZN(
        n193) );
  AOI22D0BWP12T30P140 U49 ( .A1(n51), .A2(n156), .B1(n193), .B2(n43), .ZN(n132) );
  AOI22D0BWP12T30P140 U50 ( .A1(n187), .A2(n99), .B1(n182), .B2(n132), .ZN(n10) );
  ND4D0BWP12T30P140 U51 ( .A1(n13), .A2(n12), .A3(n11), .A4(n10), .ZN(
        rout_pre[6]) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n65), .A2(n14), .B1(rin_z[10]), .B2(n65), 
        .ZN(n48) );
  OA22D0BWP12T30P140 U53 ( .A1(n64), .A2(rin_z[11]), .B1(rin_z[12]), .B2(n65), 
        .Z(n56) );
  AOI22D0BWP12T30P140 U54 ( .A1(n112), .A2(n48), .B1(n74), .B2(n56), .ZN(n20)
         );
  AOI22D0BWP12T30P140 U55 ( .A1(n65), .A2(rin_z[13]), .B1(rin_z[14]), .B2(n64), 
        .ZN(n22) );
  INVD0BWP12T30P140 U56 ( .I(n22), .ZN(n104) );
  AOI22D0BWP12T30P140 U57 ( .A1(n84), .A2(n104), .B1(rin_z[8]), .B2(n183), 
        .ZN(n19) );
  AOI22D0BWP12T30P140 U58 ( .A1(n139), .A2(rin[5]), .B1(n138), .B2(rin[4]), 
        .ZN(n16) );
  AOI22D0BWP12T30P140 U59 ( .A1(n152), .A2(rin[3]), .B1(n140), .B2(rin[6]), 
        .ZN(n15) );
  ND2D0BWP12T30P140 U60 ( .A1(n16), .A2(n15), .ZN(n170) );
  AOI22D0BWP12T30P140 U61 ( .A1(n65), .A2(rin_z[19]), .B1(rin[0]), .B2(n64), 
        .ZN(n165) );
  AOI22D0BWP12T30P140 U62 ( .A1(n65), .A2(rin[1]), .B1(rin[2]), .B2(n64), .ZN(
        n174) );
  AOI22D0BWP12T30P140 U63 ( .A1(n51), .A2(n165), .B1(n174), .B2(n43), .ZN(n143) );
  AOI22D0BWP12T30P140 U64 ( .A1(n153), .A2(n170), .B1(n182), .B2(n143), .ZN(
        n18) );
  AOI22D0BWP12T30P140 U65 ( .A1(n65), .A2(rin_z[15]), .B1(rin_z[16]), .B2(n64), 
        .ZN(n121) );
  AOI22D0BWP12T30P140 U66 ( .A1(n65), .A2(rin_z[17]), .B1(rin_z[18]), .B2(n64), 
        .ZN(n137) );
  AOI22D0BWP12T30P140 U67 ( .A1(n51), .A2(n121), .B1(n137), .B2(n43), .ZN(n107) );
  AOI22D0BWP12T30P140 U68 ( .A1(n187), .A2(n107), .B1(rin[7]), .B2(n188), .ZN(
        n17) );
  ND4D0BWP12T30P140 U69 ( .A1(n20), .A2(n19), .A3(n18), .A4(n17), .ZN(
        rout_pre[7]) );
  NR2D0BWP12T30P140 U70 ( .A1(n21), .A2(n51), .ZN(n82) );
  AOI22D0BWP12T30P140 U71 ( .A1(n82), .A2(n56), .B1(rin_z[2]), .B2(n183), .ZN(
        n31) );
  NR2D0BWP12T30P140 U72 ( .A1(n43), .A2(n21), .ZN(n80) );
  AOI22D0BWP12T30P140 U73 ( .A1(n51), .A2(n22), .B1(n121), .B2(n43), .ZN(n59)
         );
  AOI22D0BWP12T30P140 U74 ( .A1(n80), .A2(n48), .B1(n182), .B2(n59), .ZN(n30)
         );
  AOI22D0BWP12T30P140 U75 ( .A1(n51), .A2(n137), .B1(n165), .B2(n43), .ZN(n124) );
  AOI22D0BWP12T30P140 U76 ( .A1(n153), .A2(n124), .B1(rin[1]), .B2(n188), .ZN(
        n29) );
  INR2D1BWP12T30P140 U77 ( .A1(n139), .B1(n23), .ZN(n180) );
  INR2D1BWP12T30P140 U78 ( .A1(n180), .B1(n24), .ZN(n92) );
  AOI22D0BWP12T30P140 U79 ( .A1(rin_z[6]), .A2(n138), .B1(n152), .B2(rin_z[5]), 
        .ZN(n26) );
  OAI22D0BWP12T30P140 U80 ( .A1(n64), .A2(rin_z[7]), .B1(rin_z[8]), .B2(n65), 
        .ZN(n33) );
  INVD0BWP12T30P140 U81 ( .I(n33), .ZN(n49) );
  INR2D1BWP12T30P140 U82 ( .A1(n140), .B1(n23), .ZN(n179) );
  INR2D1BWP12T30P140 U83 ( .A1(n179), .B1(n24), .ZN(n86) );
  AOI22D0BWP12T30P140 U84 ( .A1(n84), .A2(n49), .B1(rin_z[4]), .B2(n86), .ZN(
        n25) );
  OAI21D0BWP12T30P140 U85 ( .A1(n26), .A2(n88), .B(n25), .ZN(n27) );
  AOI21D0BWP12T30P140 U86 ( .A1(n92), .A2(rin_z[3]), .B(n27), .ZN(n28) );
  ND4D0BWP12T30P140 U87 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .ZN(
        rout_pre[1]) );
  AOI22D0BWP12T30P140 U88 ( .A1(n82), .A2(n104), .B1(rin_z[4]), .B2(n183), 
        .ZN(n38) );
  AOI22D0BWP12T30P140 U89 ( .A1(n80), .A2(n56), .B1(n153), .B2(n143), .ZN(n37)
         );
  AOI22D0BWP12T30P140 U90 ( .A1(n182), .A2(n107), .B1(rin[3]), .B2(n188), .ZN(
        n36) );
  INVD0BWP12T30P140 U91 ( .I(n74), .ZN(n67) );
  AOI22D0BWP12T30P140 U92 ( .A1(n84), .A2(n48), .B1(n92), .B2(rin_z[5]), .ZN(
        n32) );
  OAI21D0BWP12T30P140 U93 ( .A1(n33), .A2(n67), .B(n32), .ZN(n34) );
  AOI21D0BWP12T30P140 U94 ( .A1(rin_z[6]), .A2(n86), .B(n34), .ZN(n35) );
  ND4D0BWP12T30P140 U95 ( .A1(n38), .A2(n37), .A3(n36), .A4(n35), .ZN(
        rout_pre[3]) );
  AOI22D0BWP12T30P140 U96 ( .A1(n183), .A2(rin_z[9]), .B1(n112), .B2(n83), 
        .ZN(n47) );
  AOI22D0BWP12T30P140 U97 ( .A1(n139), .A2(rin[6]), .B1(n138), .B2(rin[5]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U98 ( .A1(n152), .A2(rin[4]), .B1(n140), .B2(rin[7]), 
        .ZN(n39) );
  ND2D0BWP12T30P140 U99 ( .A1(n40), .A2(n39), .ZN(n151) );
  AOI22D0BWP12T30P140 U100 ( .A1(n139), .A2(rin[2]), .B1(n140), .B2(rin[3]), 
        .ZN(n41) );
  OAI21D0BWP12T30P140 U101 ( .A1(n193), .A2(n43), .B(n41), .ZN(n150) );
  AOI22D0BWP12T30P140 U102 ( .A1(n153), .A2(n151), .B1(n182), .B2(n150), .ZN(
        n46) );
  AOI22D0BWP12T30P140 U103 ( .A1(n51), .A2(n42), .B1(n113), .B2(n43), .ZN(n81)
         );
  AOI22D0BWP12T30P140 U104 ( .A1(n185), .A2(n81), .B1(rin[8]), .B2(n188), .ZN(
        n45) );
  AOI22D0BWP12T30P140 U105 ( .A1(n51), .A2(n129), .B1(n156), .B2(n43), .ZN(
        n116) );
  ND2D0BWP12T30P140 U106 ( .A1(n187), .A2(n116), .ZN(n44) );
  ND4D0BWP12T30P140 U107 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .ZN(
        rout_pre[8]) );
  AOI22D0BWP12T30P140 U108 ( .A1(n112), .A2(n49), .B1(n74), .B2(n48), .ZN(n55)
         );
  AOI22D0BWP12T30P140 U109 ( .A1(n84), .A2(n56), .B1(rin_z[6]), .B2(n183), 
        .ZN(n54) );
  INVD0BWP12T30P140 U110 ( .I(n174), .ZN(n50) );
  AO222D0BWP12T30P140 U111 ( .A1(rin[4]), .A2(n140), .B1(n51), .B2(n50), .C1(
        n139), .C2(rin[3]), .Z(n161) );
  AOI22D0BWP12T30P140 U112 ( .A1(n153), .A2(n161), .B1(rin[5]), .B2(n188), 
        .ZN(n53) );
  AOI22D0BWP12T30P140 U113 ( .A1(n187), .A2(n59), .B1(n182), .B2(n124), .ZN(
        n52) );
  ND4D0BWP12T30P140 U114 ( .A1(n55), .A2(n54), .A3(n53), .A4(n52), .ZN(
        rout_pre[5]) );
  AOI22D0BWP12T30P140 U115 ( .A1(rin_z[10]), .A2(n183), .B1(n112), .B2(n56), 
        .ZN(n63) );
  AOI22D0BWP12T30P140 U116 ( .A1(n139), .A2(rin[7]), .B1(n138), .B2(rin[6]), 
        .ZN(n58) );
  AOI22D0BWP12T30P140 U117 ( .A1(n152), .A2(rin[5]), .B1(n140), .B2(rin[8]), 
        .ZN(n57) );
  ND2D0BWP12T30P140 U118 ( .A1(n58), .A2(n57), .ZN(n162) );
  AOI22D0BWP12T30P140 U119 ( .A1(n187), .A2(n124), .B1(n153), .B2(n162), .ZN(
        n62) );
  AOI22D0BWP12T30P140 U120 ( .A1(n185), .A2(n59), .B1(n182), .B2(n161), .ZN(
        n61) );
  ND2D0BWP12T30P140 U121 ( .A1(rin[9]), .A2(n188), .ZN(n60) );
  ND4D0BWP12T30P140 U122 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .ZN(
        rout_pre[9]) );
  AOI22D0BWP12T30P140 U123 ( .A1(n82), .A2(n96), .B1(rin_z[3]), .B2(n183), 
        .ZN(n72) );
  AOI22D0BWP12T30P140 U124 ( .A1(n182), .A2(n99), .B1(n80), .B2(n83), .ZN(n71)
         );
  AOI22D0BWP12T30P140 U125 ( .A1(n153), .A2(n132), .B1(rin[2]), .B2(n188), 
        .ZN(n70) );
  AOI22D0BWP12T30P140 U126 ( .A1(n65), .A2(rin_z[6]), .B1(rin_z[7]), .B2(n64), 
        .ZN(n73) );
  AOI22D0BWP12T30P140 U127 ( .A1(n84), .A2(n79), .B1(n92), .B2(rin_z[4]), .ZN(
        n66) );
  OAI21D0BWP12T30P140 U128 ( .A1(n73), .A2(n67), .B(n66), .ZN(n68) );
  AOI21D0BWP12T30P140 U129 ( .A1(rin_z[5]), .A2(n86), .B(n68), .ZN(n69) );
  ND4D0BWP12T30P140 U130 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(
        rout_pre[2]) );
  INVD0BWP12T30P140 U131 ( .I(n73), .ZN(n85) );
  AOI22D0BWP12T30P140 U132 ( .A1(n74), .A2(n79), .B1(n112), .B2(n85), .ZN(n78)
         );
  AOI22D0BWP12T30P140 U133 ( .A1(n183), .A2(rin_z[5]), .B1(n84), .B2(n83), 
        .ZN(n77) );
  AOI22D0BWP12T30P140 U134 ( .A1(n153), .A2(n150), .B1(rin[4]), .B2(n188), 
        .ZN(n76) );
  AOI22D0BWP12T30P140 U135 ( .A1(n187), .A2(n81), .B1(n182), .B2(n116), .ZN(
        n75) );
  ND4D0BWP12T30P140 U136 ( .A1(n78), .A2(n77), .A3(n76), .A4(n75), .ZN(
        rout_pre[4]) );
  AOI22D0BWP12T30P140 U137 ( .A1(n153), .A2(n116), .B1(n80), .B2(n79), .ZN(n95) );
  AOI22D0BWP12T30P140 U138 ( .A1(n182), .A2(n81), .B1(rin[0]), .B2(n188), .ZN(
        n94) );
  AO22D0BWP12T30P140 U139 ( .A1(n85), .A2(n84), .B1(n83), .B2(n82), .Z(n91) );
  AOI22D0BWP12T30P140 U140 ( .A1(n152), .A2(rin_z[4]), .B1(n138), .B2(rin_z[5]), .ZN(n89) );
  AOI22D0BWP12T30P140 U141 ( .A1(n86), .A2(rin_z[3]), .B1(n183), .B2(rin_z[1]), 
        .ZN(n87) );
  OAI21D0BWP12T30P140 U142 ( .A1(n89), .A2(n88), .B(n87), .ZN(n90) );
  AOI211D0BWP12T30P140 U143 ( .A1(rin_z[2]), .A2(n92), .B(n91), .C(n90), .ZN(
        n93) );
  ND3D0BWP12T30P140 U144 ( .A1(n95), .A2(n94), .A3(n93), .ZN(rout_pre[0]) );
  AOI22D0BWP12T30P140 U145 ( .A1(rin_z[11]), .A2(n183), .B1(n112), .B2(n96), 
        .ZN(n103) );
  AOI22D0BWP12T30P140 U146 ( .A1(n152), .A2(rin[6]), .B1(n138), .B2(rin[7]), 
        .ZN(n98) );
  AOI22D0BWP12T30P140 U147 ( .A1(n139), .A2(rin[8]), .B1(n140), .B2(rin[9]), 
        .ZN(n97) );
  ND2D0BWP12T30P140 U148 ( .A1(n98), .A2(n97), .ZN(n186) );
  AOI22D0BWP12T30P140 U149 ( .A1(n187), .A2(n132), .B1(n153), .B2(n186), .ZN(
        n102) );
  AOI22D0BWP12T30P140 U150 ( .A1(n185), .A2(n99), .B1(n182), .B2(n184), .ZN(
        n101) );
  ND2D0BWP12T30P140 U151 ( .A1(rin[10]), .A2(n188), .ZN(n100) );
  ND4D0BWP12T30P140 U152 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .ZN(
        rout_pre[10]) );
  AOI22D0BWP12T30P140 U153 ( .A1(rin_z[12]), .A2(n183), .B1(n112), .B2(n104), 
        .ZN(n111) );
  AOI22D0BWP12T30P140 U154 ( .A1(n138), .A2(rin[8]), .B1(n140), .B2(rin[10]), 
        .ZN(n106) );
  AOI22D0BWP12T30P140 U155 ( .A1(n152), .A2(rin[7]), .B1(n139), .B2(rin[9]), 
        .ZN(n105) );
  ND2D0BWP12T30P140 U156 ( .A1(n106), .A2(n105), .ZN(n171) );
  AOI22D0BWP12T30P140 U157 ( .A1(n187), .A2(n143), .B1(n153), .B2(n171), .ZN(
        n110) );
  AOI22D0BWP12T30P140 U158 ( .A1(n185), .A2(n107), .B1(n182), .B2(n170), .ZN(
        n109) );
  ND2D0BWP12T30P140 U159 ( .A1(rin[11]), .A2(n188), .ZN(n108) );
  ND4D0BWP12T30P140 U160 ( .A1(n111), .A2(n110), .A3(n109), .A4(n108), .ZN(
        rout_pre[11]) );
  INVD0BWP12T30P140 U161 ( .I(n112), .ZN(n192) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n183), .A2(rin_z[13]), .B1(n192), .B2(n113), 
        .ZN(n120) );
  AOI22D0BWP12T30P140 U163 ( .A1(n139), .A2(rin[10]), .B1(n138), .B2(rin[9]), 
        .ZN(n115) );
  AOI22D0BWP12T30P140 U164 ( .A1(n152), .A2(rin[8]), .B1(n140), .B2(rin[11]), 
        .ZN(n114) );
  ND2D0BWP12T30P140 U165 ( .A1(n115), .A2(n114), .ZN(n149) );
  AOI22D0BWP12T30P140 U166 ( .A1(n153), .A2(n149), .B1(n182), .B2(n151), .ZN(
        n119) );
  AOI22D0BWP12T30P140 U167 ( .A1(n187), .A2(n150), .B1(rin[12]), .B2(n188), 
        .ZN(n118) );
  ND2D0BWP12T30P140 U168 ( .A1(n185), .A2(n116), .ZN(n117) );
  ND4D0BWP12T30P140 U169 ( .A1(n120), .A2(n119), .A3(n118), .A4(n117), .ZN(
        rout_pre[12]) );
  MAOI22D0BWP12T30P140 U170 ( .A1(rin_z[14]), .A2(n183), .B1(n192), .B2(n121), 
        .ZN(n128) );
  AOI22D0BWP12T30P140 U171 ( .A1(n139), .A2(rin[11]), .B1(n138), .B2(rin[10]), 
        .ZN(n123) );
  AOI22D0BWP12T30P140 U172 ( .A1(n152), .A2(rin[9]), .B1(n140), .B2(rin[12]), 
        .ZN(n122) );
  ND2D0BWP12T30P140 U173 ( .A1(n123), .A2(n122), .ZN(n160) );
  AOI22D0BWP12T30P140 U174 ( .A1(n153), .A2(n160), .B1(n182), .B2(n162), .ZN(
        n127) );
  AOI22D0BWP12T30P140 U175 ( .A1(n187), .A2(n161), .B1(n185), .B2(n124), .ZN(
        n126) );
  ND2D0BWP12T30P140 U176 ( .A1(rin[13]), .A2(n188), .ZN(n125) );
  ND4D0BWP12T30P140 U177 ( .A1(n128), .A2(n127), .A3(n126), .A4(n125), .ZN(
        rout_pre[13]) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n183), .A2(rin_z[15]), .B1(n192), .B2(n129), 
        .ZN(n136) );
  AOI22D0BWP12T30P140 U179 ( .A1(n139), .A2(rin[12]), .B1(n138), .B2(rin[11]), 
        .ZN(n131) );
  AOI22D0BWP12T30P140 U180 ( .A1(n152), .A2(rin[10]), .B1(n140), .B2(rin[13]), 
        .ZN(n130) );
  ND2D0BWP12T30P140 U181 ( .A1(n131), .A2(n130), .ZN(n181) );
  AOI22D0BWP12T30P140 U182 ( .A1(n153), .A2(n181), .B1(n182), .B2(n186), .ZN(
        n135) );
  AOI22D0BWP12T30P140 U183 ( .A1(n187), .A2(n184), .B1(n185), .B2(n132), .ZN(
        n134) );
  ND2D0BWP12T30P140 U184 ( .A1(rin[14]), .A2(n188), .ZN(n133) );
  ND4D0BWP12T30P140 U185 ( .A1(n136), .A2(n135), .A3(n134), .A4(n133), .ZN(
        rout_pre[14]) );
  MAOI22D0BWP12T30P140 U186 ( .A1(rin_z[16]), .A2(n183), .B1(n192), .B2(n137), 
        .ZN(n147) );
  AOI22D0BWP12T30P140 U187 ( .A1(n139), .A2(rin[13]), .B1(n138), .B2(rin[12]), 
        .ZN(n142) );
  AOI22D0BWP12T30P140 U188 ( .A1(n152), .A2(rin[11]), .B1(n140), .B2(rin[14]), 
        .ZN(n141) );
  ND2D0BWP12T30P140 U189 ( .A1(n142), .A2(n141), .ZN(n169) );
  AOI22D0BWP12T30P140 U190 ( .A1(n153), .A2(n169), .B1(n182), .B2(n171), .ZN(
        n146) );
  AOI22D0BWP12T30P140 U191 ( .A1(n187), .A2(n170), .B1(n185), .B2(n143), .ZN(
        n145) );
  ND2D0BWP12T30P140 U192 ( .A1(rin[15]), .A2(n188), .ZN(n144) );
  ND4D0BWP12T30P140 U193 ( .A1(n147), .A2(n146), .A3(n145), .A4(n144), .ZN(
        rout_pre[15]) );
  INVD0BWP12T30P140 U194 ( .I(n148), .ZN(n178) );
  AOI222D0BWP12T30P140 U195 ( .A1(n180), .A2(rin[14]), .B1(n179), .B2(rin[15]), 
        .C1(n178), .C2(rin[13]), .ZN(n159) );
  AOI22D0BWP12T30P140 U196 ( .A1(rin_z[17]), .A2(n183), .B1(n182), .B2(n149), 
        .ZN(n158) );
  AOI22D0BWP12T30P140 U197 ( .A1(n187), .A2(n151), .B1(n185), .B2(n150), .ZN(
        n155) );
  AN2D0BWP12T30P140 U198 ( .A1(n153), .A2(n152), .Z(n189) );
  AOI22D0BWP12T30P140 U199 ( .A1(n189), .A2(rin[12]), .B1(rin[16]), .B2(n188), 
        .ZN(n154) );
  OA211D0BWP12T30P140 U200 ( .A1(n156), .A2(n192), .B(n155), .C(n154), .Z(n157) );
  OAI211D0BWP12T30P140 U201 ( .A1(n159), .A2(n196), .B(n158), .C(n157), .ZN(
        rout_pre[16]) );
  AOI222D0BWP12T30P140 U202 ( .A1(n180), .A2(rin[15]), .B1(n179), .B2(rin[16]), 
        .C1(n178), .C2(rin[14]), .ZN(n168) );
  AOI22D0BWP12T30P140 U203 ( .A1(rin_z[18]), .A2(n183), .B1(n182), .B2(n160), 
        .ZN(n167) );
  AOI22D0BWP12T30P140 U204 ( .A1(n187), .A2(n162), .B1(n185), .B2(n161), .ZN(
        n164) );
  AOI22D0BWP12T30P140 U205 ( .A1(n189), .A2(rin[13]), .B1(rin[17]), .B2(n188), 
        .ZN(n163) );
  OA211D0BWP12T30P140 U206 ( .A1(n165), .A2(n192), .B(n164), .C(n163), .Z(n166) );
  OAI211D0BWP12T30P140 U207 ( .A1(n168), .A2(n196), .B(n167), .C(n166), .ZN(
        rout_pre[17]) );
  AOI222D0BWP12T30P140 U208 ( .A1(n180), .A2(rin[17]), .B1(n179), .B2(rin[18]), 
        .C1(n178), .C2(rin[16]), .ZN(n177) );
  AOI22D0BWP12T30P140 U209 ( .A1(n182), .A2(n169), .B1(rin[0]), .B2(n183), 
        .ZN(n176) );
  AOI22D0BWP12T30P140 U210 ( .A1(n187), .A2(n171), .B1(n185), .B2(n170), .ZN(
        n173) );
  AOI22D0BWP12T30P140 U211 ( .A1(n189), .A2(rin[15]), .B1(rin[19]), .B2(n188), 
        .ZN(n172) );
  OA211D0BWP12T30P140 U212 ( .A1(n174), .A2(n192), .B(n173), .C(n172), .Z(n175) );
  OAI211D0BWP12T30P140 U213 ( .A1(n177), .A2(n196), .B(n176), .C(n175), .ZN(
        rout_pre[19]) );
  AOI222D0BWP12T30P140 U214 ( .A1(n180), .A2(rin[16]), .B1(n179), .B2(rin[17]), 
        .C1(n178), .C2(rin[15]), .ZN(n197) );
  AOI22D0BWP12T30P140 U215 ( .A1(rin_z[19]), .A2(n183), .B1(n182), .B2(n181), 
        .ZN(n195) );
  AOI22D0BWP12T30P140 U216 ( .A1(n187), .A2(n186), .B1(n185), .B2(n184), .ZN(
        n191) );
  AOI22D0BWP12T30P140 U217 ( .A1(n189), .A2(rin[14]), .B1(rin[18]), .B2(n188), 
        .ZN(n190) );
  OA211D0BWP12T30P140 U218 ( .A1(n193), .A2(n192), .B(n191), .C(n190), .Z(n194) );
  OAI211D0BWP12T30P140 U219 ( .A1(n197), .A2(n196), .B(n195), .C(n194), .ZN(
        rout_pre[18]) );
  CKBD0BWP12T30P140 U220 ( .I(clk), .Z(n198) );
  CKBD0BWP12T30P140 U221 ( .I(clk), .Z(n199) );
endmodule


module sip_xpcs_comma_detect ( lock, rout, bypass, clk, comma_valid0, 
        comma_valid1, commaa, commab, data_special_valid0, data_special_valid1, 
        reset, rin, sel_comma, sigdet, en_comma_align_glob, rf_en_2sync );
  output [19:0] rout;
  input [9:0] commaa;
  input [9:0] commab;
  input [19:0] rin;
  input bypass, clk, comma_valid0, comma_valid1, data_special_valid0,
         data_special_valid1, reset, sel_comma, sigdet, en_comma_align_glob,
         rf_en_2sync;
  output lock;
  wire   n1, n26, bypass_sync, reset_sync, sel_comma_sync, sigdet_sync,
         rf_en_2sync_sync, enable_cgalign, n28, n29, SYNOPSYS_UNCONNECTED_1,
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
         SYNOPSYS_UNCONNECTED_22;
  wire   [9:0] commaa_sync;
  wire   [9:0] commab_sync;
  wire   [4:0] position_7bit;
  wire   [4:0] position_10bit;

  sip_xpcs_cd_sync cd_sync ( .bypass_sync(bypass_sync), .commaa_sync(
        commaa_sync), .commab_sync(commab_sync), .reset_sync(reset_sync), 
        .sel_comma_sync(sel_comma_sync), .sigdet_sync(sigdet_sync), 
        .rf_en_2sync_sync(rf_en_2sync_sync), .bypass(n1), .clk(n29), .commaa({
        n1, n1, n1, n1, n1, n1, n1, n1, n1, n1}), .commab({n1, n1, n1, n1, n1, 
        n1, n1, n1, n1, n1}), .reset(reset), .sel_comma(n26), .sigdet(sigdet), 
        .rf_en_2sync(n1) );
  sip_xpcs_cd_7bit cd_7bit ( .position_7bit(position_7bit), .bypass_sync(
        bypass_sync), .clk(n28), .enable_cgalign(enable_cgalign), .reset_sync(
        reset_sync), .rin(rin), .sel_comma_sync(sel_comma_sync) );
  sip_xpcs_cd_10bit cd_10bit ( .position_10bit(position_10bit), .bypass_sync(
        bypass_sync), .clk(n28), .commaa_sync(commaa_sync), .commab_sync(
        commab_sync), .enable_cgalign(enable_cgalign), .reset_sync(reset_sync), 
        .rin(rin), .sel_comma_sync(sel_comma_sync) );
  sip_xpcs_cd_ssm cd_ssm ( .enable_cgalign(enable_cgalign), .sync_status(lock), 
        .sync_state({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11}), .sync_state_z({SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22}), .bypass_sync(
        bypass_sync), .clk(n29), .comma_valid0(n1), .comma_valid1(n1), 
        .data_special_valid0(n1), .data_special_valid1(n1), .reset_sync(
        reset_sync), .sigdet_sync(sigdet_sync), .en_comma_align_glob(
        en_comma_align_glob), .rf_en_2sync_sync(rf_en_2sync_sync) );
  sip_xpcs_cd_mux cd_mux ( .rout(rout), .bypass_sync(bypass_sync), .clk(n28), 
        .position_7bit(position_7bit), .position_10bit(position_10bit), .rin(
        rin), .sel_comma_sync(sel_comma_sync) );
  TIELBWP12T30P140 U1 ( .ZN(n1) );
  TIEHBWP12T30P140 U2 ( .Z(n26) );
  CKBD0BWP12T30P140 U3 ( .I(clk), .Z(n29) );
  CKBD0BWP12T30P140 U4 ( .I(clk), .Z(n28) );
endmodule


module sip_rxaui_aa_detection ( lane0_rx, lane1_rx, rxaui_status, clk, reset_, 
        serdes_mode, rx_aligned_data, serdes_rx_data );
  output [9:0] lane0_rx;
  output [9:0] lane1_rx;
  output [8:0] rxaui_status;
  input [19:0] rx_aligned_data;
  input [19:0] serdes_rx_data;
  input clk, reset_, serdes_mode;
  wire   rx_data_shift_reg_1__19_, rx_data_shift_reg_1__18_,
         rx_data_shift_reg_1__17_, rx_data_shift_reg_1__16_,
         rx_data_shift_reg_1__15_, rx_data_shift_reg_1__14_,
         rx_data_shift_reg_1__13_, rx_data_shift_reg_1__12_,
         rx_data_shift_reg_1__11_, rx_data_shift_reg_1__10_,
         rx_data_shift_reg_1__9_, rx_data_shift_reg_1__8_,
         rx_data_shift_reg_1__7_, rx_data_shift_reg_1__6_,
         rx_data_shift_reg_1__5_, rx_data_shift_reg_1__4_,
         rx_data_shift_reg_1__3_, rx_data_shift_reg_1__2_,
         rx_data_shift_reg_1__1_, rx_data_shift_reg_1__0_, aa_state_d,
         rx_data_shift_reg_d_1__19_, rx_data_shift_reg_d_1__18_,
         rx_data_shift_reg_d_1__17_, rx_data_shift_reg_d_1__16_,
         rx_data_shift_reg_d_1__15_, rx_data_shift_reg_d_1__14_,
         rx_data_shift_reg_d_1__13_, rx_data_shift_reg_d_1__12_,
         rx_data_shift_reg_d_1__11_, rx_data_shift_reg_d_1__10_,
         rx_data_shift_reg_d_1__9_, rx_data_shift_reg_d_1__8_,
         rx_data_shift_reg_d_1__7_, rx_data_shift_reg_d_1__6_,
         rx_data_shift_reg_d_1__5_, rx_data_shift_reg_d_1__4_,
         rx_data_shift_reg_d_1__3_, rx_data_shift_reg_d_1__2_,
         rx_data_shift_reg_d_1__1_, rx_data_shift_reg_d_1__0_, n60, n61, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [2:0] detect_aa;
  wire   [5:0] rxaui_status_d;

  DFSNQD1BWP12T30P140 aa_staet_err_counter_reg_1_ ( .D(n60), .CP(n70), .SDN(
        n67), .Q(rxaui_status_d[1]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_2_ ( .D(rxaui_status_d[2]), .CP(n70), 
        .CDN(n67), .Q(rxaui_status[2]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_4_ ( .D(rxaui_status_d[4]), .CP(n70), 
        .CDN(n67), .Q(rxaui_status[4]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_5_ ( .D(rxaui_status_d[5]), .CP(n70), 
        .CDN(n67), .Q(rxaui_status[5]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_8_ ( .D(detect_aa[2]), .CP(n69), .CDN(
        n67), .Q(rxaui_status[8]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_7_ ( .D(detect_aa[1]), .CP(n69), .CDN(
        n67), .Q(rxaui_status[7]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_6_ ( .D(detect_aa[0]), .CP(n69), .CDN(
        n67), .Q(rxaui_status[6]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_3_ ( .D(rxaui_status_d[3]), .CP(n69), 
        .CDN(n67), .Q(rxaui_status[3]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_0_ ( .D(rxaui_status_d[0]), .CP(n69), 
        .CDN(n67), .Q(rxaui_status[0]) );
  DFCNQD1BWP12T30P140 rxaui_status_reg_1_ ( .D(rxaui_status_d[1]), .CP(n69), 
        .CDN(n67), .Q(rxaui_status[1]) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__18_ ( .D(
        rx_data_shift_reg_d_1__18_), .CP(clk), .CDN(n65), .Q(
        rx_data_shift_reg_1__18_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__17_ ( .D(
        rx_data_shift_reg_d_1__17_), .CP(clk), .CDN(n67), .Q(
        rx_data_shift_reg_1__17_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__16_ ( .D(
        rx_data_shift_reg_d_1__16_), .CP(clk), .CDN(n66), .Q(
        rx_data_shift_reg_1__16_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__15_ ( .D(
        rx_data_shift_reg_d_1__15_), .CP(clk), .CDN(n65), .Q(
        rx_data_shift_reg_1__15_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__8_ ( .D(
        rx_data_shift_reg_d_1__8_), .CP(clk), .CDN(n65), .Q(
        rx_data_shift_reg_1__8_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__11_ ( .D(
        rx_data_shift_reg_d_1__11_), .CP(n68), .CDN(n65), .Q(
        rx_data_shift_reg_1__11_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__7_ ( .D(
        rx_data_shift_reg_d_1__7_), .CP(n68), .CDN(n65), .Q(
        rx_data_shift_reg_1__7_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__6_ ( .D(
        rx_data_shift_reg_d_1__6_), .CP(n68), .CDN(n66), .Q(
        rx_data_shift_reg_1__6_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__5_ ( .D(
        rx_data_shift_reg_d_1__5_), .CP(n68), .CDN(n66), .Q(
        rx_data_shift_reg_1__5_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__4_ ( .D(
        rx_data_shift_reg_d_1__4_), .CP(n68), .CDN(n66), .Q(
        rx_data_shift_reg_1__4_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__3_ ( .D(
        rx_data_shift_reg_d_1__3_), .CP(n68), .CDN(n66), .Q(
        rx_data_shift_reg_1__3_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__2_ ( .D(
        rx_data_shift_reg_d_1__2_), .CP(n68), .CDN(n66), .Q(
        rx_data_shift_reg_1__2_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__10_ ( .D(
        rx_data_shift_reg_d_1__10_), .CP(n70), .CDN(n65), .Q(
        rx_data_shift_reg_1__10_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__19_ ( .D(
        rx_data_shift_reg_d_1__19_), .CP(n70), .CDN(n66), .Q(
        rx_data_shift_reg_1__19_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__14_ ( .D(
        rx_data_shift_reg_d_1__14_), .CP(n70), .CDN(n67), .Q(
        rx_data_shift_reg_1__14_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__13_ ( .D(
        rx_data_shift_reg_d_1__13_), .CP(n70), .CDN(n65), .Q(
        rx_data_shift_reg_1__13_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__12_ ( .D(
        rx_data_shift_reg_d_1__12_), .CP(n69), .CDN(n65), .Q(
        rx_data_shift_reg_1__12_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__9_ ( .D(
        rx_data_shift_reg_d_1__9_), .CP(n69), .CDN(n65), .Q(
        rx_data_shift_reg_1__9_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__1_ ( .D(
        rx_data_shift_reg_d_1__1_), .CP(n69), .CDN(n66), .Q(
        rx_data_shift_reg_1__1_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_1__0_ ( .D(
        rx_data_shift_reg_d_1__0_), .CP(n69), .CDN(n67), .Q(
        rx_data_shift_reg_1__0_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__4_ ( .D(rx_aligned_data[4]), 
        .CP(n68), .CDN(n66), .Q(rx_data_shift_reg_d_1__4_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__12_ ( .D(rx_aligned_data[12]), 
        .CP(n68), .CDN(n65), .Q(rx_data_shift_reg_d_1__12_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__2_ ( .D(rx_aligned_data[2]), 
        .CP(n68), .CDN(n66), .Q(rx_data_shift_reg_d_1__2_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__9_ ( .D(rx_aligned_data[9]), 
        .CP(n68), .CDN(n65), .Q(rx_data_shift_reg_d_1__9_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__5_ ( .D(rx_aligned_data[5]), 
        .CP(n68), .CDN(n66), .Q(rx_data_shift_reg_d_1__5_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__14_ ( .D(rx_aligned_data[14]), 
        .CP(n70), .CDN(n66), .Q(rx_data_shift_reg_d_1__14_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__3_ ( .D(rx_aligned_data[3]), 
        .CP(n68), .CDN(n66), .Q(rx_data_shift_reg_d_1__3_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__19_ ( .D(rx_aligned_data[19]), 
        .CP(n70), .CDN(n65), .Q(rx_data_shift_reg_d_1__19_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__15_ ( .D(rx_aligned_data[15]), 
        .CP(n70), .CDN(n67), .Q(rx_data_shift_reg_d_1__15_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__7_ ( .D(rx_aligned_data[7]), 
        .CP(n68), .CDN(n65), .Q(rx_data_shift_reg_d_1__7_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__11_ ( .D(rx_aligned_data[11]), 
        .CP(n70), .CDN(n65), .Q(rx_data_shift_reg_d_1__11_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__18_ ( .D(rx_aligned_data[18]), 
        .CP(n70), .CDN(n67), .Q(rx_data_shift_reg_d_1__18_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__8_ ( .D(rx_aligned_data[8]), 
        .CP(n70), .CDN(n65), .Q(rx_data_shift_reg_d_1__8_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__6_ ( .D(rx_aligned_data[6]), 
        .CP(n68), .CDN(n66), .Q(rx_data_shift_reg_d_1__6_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__17_ ( .D(rx_aligned_data[17]), 
        .CP(n70), .CDN(n66), .Q(rx_data_shift_reg_d_1__17_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__1_ ( .D(rx_aligned_data[1]), 
        .CP(n69), .CDN(n66), .Q(rx_data_shift_reg_d_1__1_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__16_ ( .D(rx_aligned_data[16]), 
        .CP(n70), .CDN(n65), .Q(rx_data_shift_reg_d_1__16_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__13_ ( .D(rx_aligned_data[13]), 
        .CP(n69), .CDN(reset_), .Q(rx_data_shift_reg_d_1__13_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__10_ ( .D(rx_aligned_data[10]), 
        .CP(n69), .CDN(n65), .Q(rx_data_shift_reg_d_1__10_) );
  DFCNQD1BWP12T30P140 rx_data_shift_reg_reg_0__0_ ( .D(rx_aligned_data[0]), 
        .CP(n69), .CDN(n66), .Q(rx_data_shift_reg_d_1__0_) );
  DFCNQD1BWP12T30P140 aa_staet_err_counter_reg_0_ ( .D(n61), .CP(n69), .CDN(
        n67), .Q(rxaui_status_d[0]) );
  DFCNQD1BWP12T30P140 aa_state_reg ( .D(aa_state_d), .CP(n69), .CDN(n67), .Q(
        rxaui_status_d[2]) );
  ND3D0BWP12T30P140 U3 ( .A1(rx_aligned_data[4]), .A2(rx_aligned_data[9]), 
        .A3(rx_aligned_data[3]), .ZN(n1) );
  NR4D0BWP12T30P140 U4 ( .A1(rx_aligned_data[1]), .A2(rx_aligned_data[7]), 
        .A3(rx_aligned_data[6]), .A4(n1), .ZN(n2) );
  ND3D0BWP12T30P140 U5 ( .A1(rx_aligned_data[2]), .A2(rx_aligned_data[5]), 
        .A3(n2), .ZN(n8) );
  INVD0BWP12T30P140 U6 ( .I(rx_aligned_data[8]), .ZN(n7) );
  INVD0BWP12T30P140 U7 ( .I(rx_aligned_data[0]), .ZN(n6) );
  NR2D0BWP12T30P140 U8 ( .A1(rx_aligned_data[2]), .A2(rx_aligned_data[5]), 
        .ZN(n4) );
  INR4D0BWP12T30P140 U9 ( .A1(rx_aligned_data[6]), .B1(rx_aligned_data[9]), 
        .B2(rx_aligned_data[4]), .B3(rx_aligned_data[3]), .ZN(n3) );
  ND4D0BWP12T30P140 U10 ( .A1(rx_aligned_data[1]), .A2(rx_aligned_data[7]), 
        .A3(n4), .A4(n3), .ZN(n5) );
  OAI33D0BWP12T30P140 U11 ( .A1(rx_aligned_data[0]), .A2(n8), .A3(n7), .B1(n6), 
        .B2(n5), .B3(rx_aligned_data[8]), .ZN(detect_aa[0]) );
  ND3D0BWP12T30P140 U12 ( .A1(rx_data_shift_reg_d_1__4_), .A2(
        rx_data_shift_reg_d_1__9_), .A3(rx_data_shift_reg_d_1__3_), .ZN(n9) );
  NR4D0BWP12T30P140 U13 ( .A1(rx_data_shift_reg_d_1__1_), .A2(
        rx_data_shift_reg_d_1__7_), .A3(rx_data_shift_reg_d_1__6_), .A4(n9), 
        .ZN(n10) );
  ND3D0BWP12T30P140 U14 ( .A1(rx_data_shift_reg_d_1__2_), .A2(
        rx_data_shift_reg_d_1__5_), .A3(n10), .ZN(n16) );
  INVD0BWP12T30P140 U15 ( .I(rx_data_shift_reg_d_1__8_), .ZN(n15) );
  INVD0BWP12T30P140 U16 ( .I(rx_data_shift_reg_d_1__0_), .ZN(n14) );
  NR2D0BWP12T30P140 U17 ( .A1(rx_data_shift_reg_d_1__2_), .A2(
        rx_data_shift_reg_d_1__5_), .ZN(n12) );
  INR4D0BWP12T30P140 U18 ( .A1(rx_data_shift_reg_d_1__6_), .B1(
        rx_data_shift_reg_d_1__9_), .B2(rx_data_shift_reg_d_1__4_), .B3(
        rx_data_shift_reg_d_1__3_), .ZN(n11) );
  ND4D0BWP12T30P140 U19 ( .A1(rx_data_shift_reg_d_1__1_), .A2(
        rx_data_shift_reg_d_1__7_), .A3(n12), .A4(n11), .ZN(n13) );
  OAI33D0BWP12T30P140 U20 ( .A1(rx_data_shift_reg_d_1__0_), .A2(n16), .A3(n15), 
        .B1(n14), .B2(n13), .B3(rx_data_shift_reg_d_1__8_), .ZN(detect_aa[1])
         );
  ND3D0BWP12T30P140 U21 ( .A1(rx_data_shift_reg_d_1__14_), .A2(
        rx_data_shift_reg_d_1__19_), .A3(rx_data_shift_reg_d_1__13_), .ZN(n17)
         );
  NR4D0BWP12T30P140 U22 ( .A1(rx_data_shift_reg_d_1__11_), .A2(
        rx_data_shift_reg_d_1__17_), .A3(rx_data_shift_reg_d_1__16_), .A4(n17), 
        .ZN(n18) );
  ND3D0BWP12T30P140 U23 ( .A1(rx_data_shift_reg_d_1__12_), .A2(
        rx_data_shift_reg_d_1__15_), .A3(n18), .ZN(n24) );
  INVD0BWP12T30P140 U24 ( .I(rx_data_shift_reg_d_1__18_), .ZN(n23) );
  INVD0BWP12T30P140 U25 ( .I(rx_data_shift_reg_d_1__10_), .ZN(n22) );
  NR2D0BWP12T30P140 U26 ( .A1(rx_data_shift_reg_d_1__12_), .A2(
        rx_data_shift_reg_d_1__15_), .ZN(n20) );
  INR4D0BWP12T30P140 U27 ( .A1(rx_data_shift_reg_d_1__16_), .B1(
        rx_data_shift_reg_d_1__19_), .B2(rx_data_shift_reg_d_1__14_), .B3(
        rx_data_shift_reg_d_1__13_), .ZN(n19) );
  ND4D0BWP12T30P140 U28 ( .A1(rx_data_shift_reg_d_1__11_), .A2(
        rx_data_shift_reg_d_1__17_), .A3(n20), .A4(n19), .ZN(n21) );
  OAI33D0BWP12T30P140 U29 ( .A1(rx_data_shift_reg_d_1__10_), .A2(n24), .A3(n23), .B1(n22), .B2(n21), .B3(rx_data_shift_reg_d_1__18_), .ZN(detect_aa[2]) );
  OA21D0BWP12T30P140 U30 ( .A1(detect_aa[0]), .A2(detect_aa[1]), .B(
        detect_aa[2]), .Z(rxaui_status_d[3]) );
  ND2D0BWP12T30P140 U31 ( .A1(detect_aa[0]), .A2(detect_aa[2]), .ZN(n25) );
  INVD0BWP12T30P140 U32 ( .I(rxaui_status_d[2]), .ZN(n30) );
  AOI32D0BWP12T30P140 U33 ( .A1(detect_aa[2]), .A2(n25), .A3(detect_aa[1]), 
        .B1(n30), .B2(n25), .ZN(rxaui_status_d[4]) );
  AOI22D0BWP12T30P140 U34 ( .A1(rxaui_status_d[2]), .A2(rxaui_status_d[4]), 
        .B1(n25), .B2(n30), .ZN(rxaui_status_d[5]) );
  INVD0BWP12T30P140 U35 ( .I(rxaui_status_d[0]), .ZN(n26) );
  INVD0BWP12T30P140 U36 ( .I(rxaui_status_d[1]), .ZN(n28) );
  ND2D0BWP12T30P140 U37 ( .A1(n28), .A2(rxaui_status_d[5]), .ZN(n27) );
  OAI22D0BWP12T30P140 U38 ( .A1(n26), .A2(n27), .B1(rxaui_status_d[3]), .B2(
        n28), .ZN(n60) );
  AOI22D0BWP12T30P140 U39 ( .A1(rxaui_status_d[0]), .A2(rxaui_status_d[3]), 
        .B1(n27), .B2(n26), .ZN(n61) );
  NR2D0BWP12T30P140 U40 ( .A1(rxaui_status_d[0]), .A2(n28), .ZN(n29) );
  CKMUX2D0BWP12T30P140 U41 ( .I0(rxaui_status_d[2]), .I1(rxaui_status_d[4]), 
        .S(n29), .Z(aa_state_d) );
  CKBD0BWP12T30P140 U42 ( .I(clk), .Z(n69) );
  CKBD0BWP12T30P140 U43 ( .I(clk), .Z(n68) );
  CKBD0BWP12T30P140 U44 ( .I(clk), .Z(n70) );
  CKBD0BWP12T30P140 U45 ( .I(reset_), .Z(n67) );
  CKBD0BWP12T30P140 U46 ( .I(reset_), .Z(n65) );
  CKBD0BWP12T30P140 U47 ( .I(reset_), .Z(n66) );
  NR2D0BWP12T30P140 U48 ( .A1(serdes_mode), .A2(n30), .ZN(n62) );
  NR2D0BWP12T30P140 U49 ( .A1(rxaui_status_d[2]), .A2(serdes_mode), .ZN(n59)
         );
  AOI22D0BWP12T30P140 U50 ( .A1(n62), .A2(rx_data_shift_reg_1__11_), .B1(n59), 
        .B2(rx_data_shift_reg_1__1_), .ZN(n31) );
  ND2D0BWP12T30P140 U51 ( .A1(serdes_mode), .A2(serdes_rx_data[1]), .ZN(n43)
         );
  ND2D0BWP12T30P140 U52 ( .A1(n31), .A2(n43), .ZN(lane0_rx[1]) );
  AOI22D0BWP12T30P140 U53 ( .A1(n62), .A2(rx_data_shift_reg_1__12_), .B1(n59), 
        .B2(rx_data_shift_reg_1__2_), .ZN(n32) );
  ND2D0BWP12T30P140 U54 ( .A1(serdes_mode), .A2(serdes_rx_data[2]), .ZN(n45)
         );
  ND2D0BWP12T30P140 U55 ( .A1(n32), .A2(n45), .ZN(lane0_rx[2]) );
  AOI22D0BWP12T30P140 U56 ( .A1(n62), .A2(rx_data_shift_reg_1__13_), .B1(n59), 
        .B2(rx_data_shift_reg_1__3_), .ZN(n33) );
  ND2D0BWP12T30P140 U57 ( .A1(serdes_mode), .A2(serdes_rx_data[3]), .ZN(n47)
         );
  ND2D0BWP12T30P140 U58 ( .A1(n33), .A2(n47), .ZN(lane0_rx[3]) );
  AOI22D0BWP12T30P140 U59 ( .A1(n62), .A2(rx_data_shift_reg_1__9_), .B1(n59), 
        .B2(rx_data_shift_reg_1__19_), .ZN(n34) );
  ND2D0BWP12T30P140 U60 ( .A1(serdes_mode), .A2(serdes_rx_data[9]), .ZN(n39)
         );
  ND2D0BWP12T30P140 U61 ( .A1(n34), .A2(n39), .ZN(lane1_rx[9]) );
  AOI22D0BWP12T30P140 U62 ( .A1(n62), .A2(rx_data_shift_reg_1__10_), .B1(n59), 
        .B2(rx_data_shift_reg_1__0_), .ZN(n35) );
  ND2D0BWP12T30P140 U63 ( .A1(serdes_mode), .A2(serdes_rx_data[0]), .ZN(n41)
         );
  ND2D0BWP12T30P140 U64 ( .A1(n35), .A2(n41), .ZN(lane0_rx[0]) );
  AOI22D0BWP12T30P140 U65 ( .A1(n62), .A2(rx_data_shift_reg_1__14_), .B1(n59), 
        .B2(rx_data_shift_reg_1__4_), .ZN(n36) );
  ND2D0BWP12T30P140 U66 ( .A1(serdes_mode), .A2(serdes_rx_data[4]), .ZN(n49)
         );
  ND2D0BWP12T30P140 U67 ( .A1(n36), .A2(n49), .ZN(lane0_rx[4]) );
  AOI22D0BWP12T30P140 U68 ( .A1(n62), .A2(rx_data_shift_reg_1__15_), .B1(n59), 
        .B2(rx_data_shift_reg_1__5_), .ZN(n37) );
  ND2D0BWP12T30P140 U69 ( .A1(serdes_mode), .A2(serdes_rx_data[5]), .ZN(n51)
         );
  ND2D0BWP12T30P140 U70 ( .A1(n37), .A2(n51), .ZN(lane0_rx[5]) );
  AOI22D0BWP12T30P140 U71 ( .A1(n62), .A2(rx_data_shift_reg_1__16_), .B1(n59), 
        .B2(rx_data_shift_reg_1__6_), .ZN(n38) );
  ND2D0BWP12T30P140 U72 ( .A1(serdes_mode), .A2(serdes_rx_data[6]), .ZN(n63)
         );
  ND2D0BWP12T30P140 U73 ( .A1(n38), .A2(n63), .ZN(lane0_rx[6]) );
  AOI22D0BWP12T30P140 U74 ( .A1(n62), .A2(rx_data_shift_reg_1__19_), .B1(n59), 
        .B2(rx_data_shift_reg_1__9_), .ZN(n40) );
  ND2D0BWP12T30P140 U75 ( .A1(n40), .A2(n39), .ZN(lane0_rx[9]) );
  AOI22D0BWP12T30P140 U76 ( .A1(n62), .A2(rx_data_shift_reg_1__0_), .B1(
        rx_data_shift_reg_1__10_), .B2(n59), .ZN(n42) );
  ND2D0BWP12T30P140 U77 ( .A1(n42), .A2(n41), .ZN(lane1_rx[0]) );
  AOI22D0BWP12T30P140 U78 ( .A1(n62), .A2(rx_data_shift_reg_1__1_), .B1(n59), 
        .B2(rx_data_shift_reg_1__11_), .ZN(n44) );
  ND2D0BWP12T30P140 U79 ( .A1(n44), .A2(n43), .ZN(lane1_rx[1]) );
  AOI22D0BWP12T30P140 U80 ( .A1(n62), .A2(rx_data_shift_reg_1__2_), .B1(n59), 
        .B2(rx_data_shift_reg_1__12_), .ZN(n46) );
  ND2D0BWP12T30P140 U81 ( .A1(n46), .A2(n45), .ZN(lane1_rx[2]) );
  AOI22D0BWP12T30P140 U82 ( .A1(n62), .A2(rx_data_shift_reg_1__3_), .B1(n59), 
        .B2(rx_data_shift_reg_1__13_), .ZN(n48) );
  ND2D0BWP12T30P140 U83 ( .A1(n48), .A2(n47), .ZN(lane1_rx[3]) );
  AOI22D0BWP12T30P140 U84 ( .A1(n62), .A2(rx_data_shift_reg_1__4_), .B1(n59), 
        .B2(rx_data_shift_reg_1__14_), .ZN(n50) );
  ND2D0BWP12T30P140 U85 ( .A1(n50), .A2(n49), .ZN(lane1_rx[4]) );
  AOI22D0BWP12T30P140 U86 ( .A1(n62), .A2(rx_data_shift_reg_1__5_), .B1(n59), 
        .B2(rx_data_shift_reg_1__15_), .ZN(n52) );
  ND2D0BWP12T30P140 U87 ( .A1(n52), .A2(n51), .ZN(lane1_rx[5]) );
  AOI22D0BWP12T30P140 U88 ( .A1(n62), .A2(rx_data_shift_reg_1__17_), .B1(n59), 
        .B2(rx_data_shift_reg_1__7_), .ZN(n53) );
  ND2D0BWP12T30P140 U89 ( .A1(serdes_mode), .A2(serdes_rx_data[7]), .ZN(n54)
         );
  ND2D0BWP12T30P140 U90 ( .A1(n53), .A2(n54), .ZN(lane0_rx[7]) );
  AOI22D0BWP12T30P140 U91 ( .A1(n62), .A2(rx_data_shift_reg_1__7_), .B1(n59), 
        .B2(rx_data_shift_reg_1__17_), .ZN(n55) );
  ND2D0BWP12T30P140 U92 ( .A1(n55), .A2(n54), .ZN(lane1_rx[7]) );
  AOI22D0BWP12T30P140 U93 ( .A1(n62), .A2(rx_data_shift_reg_1__8_), .B1(n59), 
        .B2(rx_data_shift_reg_1__18_), .ZN(n56) );
  ND2D0BWP12T30P140 U94 ( .A1(serdes_mode), .A2(serdes_rx_data[8]), .ZN(n57)
         );
  ND2D0BWP12T30P140 U95 ( .A1(n56), .A2(n57), .ZN(lane1_rx[8]) );
  AOI22D0BWP12T30P140 U96 ( .A1(n62), .A2(rx_data_shift_reg_1__18_), .B1(n59), 
        .B2(rx_data_shift_reg_1__8_), .ZN(n58) );
  ND2D0BWP12T30P140 U97 ( .A1(n58), .A2(n57), .ZN(lane0_rx[8]) );
  AOI22D0BWP12T30P140 U98 ( .A1(n62), .A2(rx_data_shift_reg_1__6_), .B1(n59), 
        .B2(rx_data_shift_reg_1__16_), .ZN(n64) );
  ND2D0BWP12T30P140 U99 ( .A1(n64), .A2(n63), .ZN(lane1_rx[6]) );
endmodule


module sip_phase_sync_fifo_fast_2_slow ( fifo_data_out, wr_clk, rd_clk, 
        wr_reset_, rd_reset_, fifo_data_in );
  output [39:0] fifo_data_out;
  input [19:0] fifo_data_in;
  input wr_clk, rd_clk, wr_reset_, rd_reset_;
  wire   inc_wr_addr_, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
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
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666;
  wire   [2:0] fifo_wr_addr;
  wire   [2:0] fifo_rd_addr;
  wire   [2:0] fifo_rd_addr_d;
  wire   [319:0] fifo_entry;

  DFSNQD1BWP12T30P140 inc_wr_addr__reg ( .D(n542), .CP(n666), .SDN(n644), .Q(
        inc_wr_addr_) );
  DFSNQD1BWP12T30P140 fifo_rd_addr_reg_2_ ( .D(fifo_rd_addr_d[2]), .CP(n632), 
        .SDN(n630), .Q(fifo_rd_addr[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_20_ ( .D(n562), .CP(n632), .CDN(n630), 
        .Q(fifo_data_out[20]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_8_ ( .D(n574), .CP(n632), .CDN(
        rd_reset_), .Q(fifo_data_out[8]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_6_ ( .D(n576), .CP(n632), .CDN(
        rd_reset_), .Q(fifo_data_out[6]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_4_ ( .D(n578), .CP(n632), .CDN(
        rd_reset_), .Q(fifo_data_out[4]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_2_ ( .D(n580), .CP(n632), .CDN(
        rd_reset_), .Q(fifo_data_out[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_0_ ( .D(n582), .CP(n632), .CDN(n630), 
        .Q(fifo_data_out[0]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_39_ ( .D(n543), .CP(n632), .CDN(n630), 
        .Q(fifo_data_out[39]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_38_ ( .D(n544), .CP(n632), .CDN(n629), 
        .Q(fifo_data_out[38]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_37_ ( .D(n545), .CP(n632), .CDN(n629), 
        .Q(fifo_data_out[37]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_36_ ( .D(n546), .CP(n632), .CDN(n629), 
        .Q(fifo_data_out[36]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_17_ ( .D(n565), .CP(n632), .CDN(n629), 
        .Q(fifo_data_out[17]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_14_ ( .D(n568), .CP(n632), .CDN(n630), 
        .Q(fifo_data_out[14]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_10_ ( .D(n572), .CP(n632), .CDN(
        rd_reset_), .Q(fifo_data_out[10]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__18_ ( .D(n500), .CP(wr_clk), .CDN(
        wr_reset_), .Q(fifo_entry[138]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__17_ ( .D(n499), .CP(wr_clk), .CDN(n641), .Q(fifo_entry[137]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__16_ ( .D(n498), .CP(wr_clk), .CDN(n634), .Q(fifo_entry[136]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__15_ ( .D(n497), .CP(wr_clk), .CDN(n633), .Q(fifo_entry[135]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__13_ ( .D(n495), .CP(wr_clk), .CDN(n640), .Q(fifo_entry[133]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__7_ ( .D(n509), .CP(wr_clk), .CDN(n643), 
        .Q(fifo_entry[287]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_29_ ( .D(n553), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[29]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_28_ ( .D(n554), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[28]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_27_ ( .D(n555), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[27]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_26_ ( .D(n556), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[26]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_25_ ( .D(n557), .CP(n631), .CDN(n630), 
        .Q(fifo_data_out[25]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_24_ ( .D(n558), .CP(n631), .CDN(n630), 
        .Q(fifo_data_out[24]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_22_ ( .D(n560), .CP(n631), .CDN(n630), 
        .Q(fifo_data_out[22]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_35_ ( .D(n547), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[35]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_34_ ( .D(n548), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[34]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_33_ ( .D(n549), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[33]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_32_ ( .D(n550), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[32]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_31_ ( .D(n551), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[31]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_30_ ( .D(n552), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[30]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_19_ ( .D(n563), .CP(n631), .CDN(n629), 
        .Q(fifo_data_out[19]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_16_ ( .D(n566), .CP(n631), .CDN(n630), 
        .Q(fifo_data_out[16]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_13_ ( .D(n569), .CP(n631), .CDN(
        rd_reset_), .Q(fifo_data_out[13]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__7_ ( .D(n489), .CP(n652), .CDN(n642), 
        .Q(fifo_entry[127]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__6_ ( .D(n488), .CP(n655), .CDN(n642), 
        .Q(fifo_entry[126]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__29_ ( .D(n471), .CP(n652), .CDN(n635), 
        .Q(fifo_entry[149]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__34_ ( .D(n466), .CP(n652), .CDN(n641), 
        .Q(fifo_entry[154]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__35_ ( .D(n465), .CP(n655), .CDN(n641), 
        .Q(fifo_entry[155]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__19_ ( .D(n381), .CP(n655), .CDN(n641), 
        .Q(fifo_entry[19]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__18_ ( .D(n380), .CP(n655), .CDN(n642), 
        .Q(fifo_entry[18]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__17_ ( .D(n379), .CP(n655), .CDN(n643), 
        .Q(fifo_entry[17]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__16_ ( .D(n378), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[16]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__15_ ( .D(n377), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[15]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__14_ ( .D(n376), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[14]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__13_ ( .D(n375), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[13]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__12_ ( .D(n374), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[12]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__11_ ( .D(n373), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[11]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__10_ ( .D(n372), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[10]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__9_ ( .D(n371), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[9]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__8_ ( .D(n370), .CP(n655), .CDN(n636), 
        .Q(fifo_entry[8]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__6_ ( .D(n508), .CP(n652), .CDN(n643), 
        .Q(fifo_entry[286]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__5_ ( .D(n507), .CP(n655), .CDN(n639), 
        .Q(fifo_entry[285]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__18_ ( .D(n300), .CP(n652), .CDN(n637), 
        .Q(fifo_entry[218]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__17_ ( .D(n299), .CP(n655), .CDN(n639), 
        .Q(fifo_entry[217]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__16_ ( .D(n298), .CP(n655), .CDN(n642), 
        .Q(fifo_entry[216]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__8_ ( .D(n290), .CP(n652), .CDN(n639), 
        .Q(fifo_entry[208]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__7_ ( .D(n289), .CP(n655), .CDN(n639), 
        .Q(fifo_entry[207]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__15_ ( .D(n257), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[175]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__14_ ( .D(n256), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[174]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__13_ ( .D(n255), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[173]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__12_ ( .D(n254), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[172]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__11_ ( .D(n253), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[171]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__10_ ( .D(n252), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[170]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__9_ ( .D(n251), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[169]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__8_ ( .D(n250), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[168]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__7_ ( .D(n249), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[167]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__6_ ( .D(n248), .CP(n652), .CDN(n633), 
        .Q(fifo_entry[166]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__5_ ( .D(n247), .CP(n652), .CDN(n649), 
        .Q(fifo_entry[165]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__4_ ( .D(n246), .CP(n652), .CDN(n649), 
        .Q(fifo_entry[164]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__0_ ( .D(n322), .CP(n651), .CDN(n634), 
        .Q(fifo_entry[240]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__7_ ( .D(n369), .CP(n666), .CDN(n636), 
        .Q(fifo_entry[7]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__5_ ( .D(n367), .CP(n666), .CDN(n636), 
        .Q(fifo_entry[5]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__3_ ( .D(n365), .CP(n666), .CDN(n646), 
        .Q(fifo_entry[3]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__1_ ( .D(n363), .CP(n666), .CDN(n646), 
        .Q(fifo_entry[1]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__39_ ( .D(n361), .CP(n666), .CDN(n646), 
        .Q(fifo_entry[39]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__21_ ( .D(n359), .CP(n666), .CDN(n646), 
        .Q(fifo_entry[21]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__39_ ( .D(n541), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[319]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__20_ ( .D(n540), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[300]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__21_ ( .D(n539), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[301]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__22_ ( .D(n538), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[302]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__23_ ( .D(n537), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[303]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__24_ ( .D(n536), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[304]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__25_ ( .D(n535), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[305]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__26_ ( .D(n534), .CP(n666), .CDN(n644), 
        .Q(fifo_entry[306]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__4_ ( .D(n286), .CP(n666), .CDN(n639), 
        .Q(fifo_entry[204]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_23_ ( .D(n559), .CP(rd_clk), .CDN(n630), .Q(fifo_data_out[23]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_21_ ( .D(n561), .CP(rd_clk), .CDN(n629), .Q(fifo_data_out[21]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_9_ ( .D(n573), .CP(rd_clk), .CDN(n630), 
        .Q(fifo_data_out[9]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_7_ ( .D(n575), .CP(rd_clk), .CDN(n630), 
        .Q(fifo_data_out[7]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_5_ ( .D(n577), .CP(rd_clk), .CDN(n630), 
        .Q(fifo_data_out[5]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_3_ ( .D(n579), .CP(rd_clk), .CDN(n630), 
        .Q(fifo_data_out[3]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_1_ ( .D(n581), .CP(rd_clk), .CDN(n630), 
        .Q(fifo_data_out[1]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__0_ ( .D(n242), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[160]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__9_ ( .D(n491), .CP(n660), .CDN(n642), 
        .Q(fifo_entry[129]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__28_ ( .D(n472), .CP(n660), .CDN(n634), 
        .Q(fifo_entry[148]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__23_ ( .D(n397), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[63]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__24_ ( .D(n396), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[64]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__25_ ( .D(n395), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[65]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__26_ ( .D(n394), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[66]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__27_ ( .D(n393), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[67]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__28_ ( .D(n392), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[68]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__29_ ( .D(n391), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[69]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__30_ ( .D(n390), .CP(n660), .CDN(n640), 
        .Q(fifo_entry[70]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__31_ ( .D(n389), .CP(n660), .CDN(
        wr_reset_), .Q(fifo_entry[71]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__32_ ( .D(n388), .CP(n660), .CDN(n637), 
        .Q(fifo_entry[72]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__33_ ( .D(n387), .CP(n660), .CDN(n644), 
        .Q(fifo_entry[73]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__34_ ( .D(n386), .CP(n660), .CDN(n645), 
        .Q(fifo_entry[74]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__37_ ( .D(n383), .CP(n660), .CDN(n634), 
        .Q(fifo_entry[77]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__10_ ( .D(n332), .CP(n651), .CDN(n647), 
        .Q(fifo_entry[250]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__8_ ( .D(n330), .CP(n651), .CDN(n647), 
        .Q(fifo_entry[248]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__6_ ( .D(n328), .CP(n651), .CDN(n647), 
        .Q(fifo_entry[246]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__4_ ( .D(n326), .CP(n651), .CDN(n634), 
        .Q(fifo_entry[244]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__2_ ( .D(n324), .CP(n651), .CDN(n634), 
        .Q(fifo_entry[242]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__20_ ( .D(n320), .CP(n650), .CDN(n634), 
        .Q(fifo_entry[260]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__22_ ( .D(n318), .CP(n650), .CDN(n634), 
        .Q(fifo_entry[262]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__24_ ( .D(n316), .CP(n650), .CDN(n634), 
        .Q(fifo_entry[264]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__26_ ( .D(n314), .CP(n650), .CDN(n634), 
        .Q(fifo_entry[266]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__28_ ( .D(n312), .CP(n650), .CDN(n648), 
        .Q(fifo_entry[268]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__30_ ( .D(n310), .CP(n650), .CDN(n648), 
        .Q(fifo_entry[270]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__1_ ( .D(n503), .CP(n660), .CDN(n642), 
        .Q(fifo_entry[281]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__5_ ( .D(n287), .CP(n660), .CDN(n639), 
        .Q(fifo_entry[205]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__11_ ( .D(n453), .CP(n660), .CDN(n639), 
        .Q(fifo_entry[91]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__3_ ( .D(n245), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[163]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__2_ ( .D(n244), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[162]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__1_ ( .D(n243), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[161]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__39_ ( .D(n241), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[199]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__20_ ( .D(n240), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[180]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__21_ ( .D(n239), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[181]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__22_ ( .D(n238), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[182]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__23_ ( .D(n237), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[183]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__24_ ( .D(n236), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[184]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__25_ ( .D(n235), .CP(n651), .CDN(n649), 
        .Q(fifo_entry[185]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__26_ ( .D(n234), .CP(n651), .CDN(n648), 
        .Q(fifo_entry[186]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__27_ ( .D(n233), .CP(n650), .CDN(n649), 
        .Q(fifo_entry[187]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__28_ ( .D(n232), .CP(n650), .CDN(n645), 
        .Q(fifo_entry[188]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__29_ ( .D(n231), .CP(n650), .CDN(n636), 
        .Q(fifo_entry[189]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__30_ ( .D(n230), .CP(n650), .CDN(n641), 
        .Q(fifo_entry[190]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__31_ ( .D(n229), .CP(n650), .CDN(n634), 
        .Q(fifo_entry[191]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__32_ ( .D(n228), .CP(n650), .CDN(n633), 
        .Q(fifo_entry[192]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__33_ ( .D(n227), .CP(n650), .CDN(n640), 
        .Q(fifo_entry[193]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__34_ ( .D(n226), .CP(n650), .CDN(n647), 
        .Q(fifo_entry[194]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__35_ ( .D(n225), .CP(n650), .CDN(n642), 
        .Q(fifo_entry[195]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__36_ ( .D(n224), .CP(n650), .CDN(n643), 
        .Q(fifo_entry[196]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__37_ ( .D(n223), .CP(n650), .CDN(n635), 
        .Q(fifo_entry[197]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__38_ ( .D(n222), .CP(n650), .CDN(n646), 
        .Q(fifo_entry[198]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_18_ ( .D(n564), .CP(rd_clk), .CDN(n630), .Q(fifo_data_out[18]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_15_ ( .D(n567), .CP(rd_clk), .CDN(n629), .Q(fifo_data_out[15]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_12_ ( .D(n570), .CP(rd_clk), .CDN(
        rd_reset_), .Q(fifo_data_out[12]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_11_ ( .D(n571), .CP(rd_clk), .CDN(
        rd_reset_), .Q(fifo_data_out[11]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__0_ ( .D(n482), .CP(n663), .CDN(n642), 
        .Q(fifo_entry[120]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__0_ ( .D(n402), .CP(n661), .CDN(n640), 
        .Q(fifo_entry[40]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__0_ ( .D(n502), .CP(n661), .CDN(n643), 
        .Q(fifo_entry[280]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__0_ ( .D(n282), .CP(n657), .CDN(n640), 
        .Q(fifo_entry[200]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__0_ ( .D(n442), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[80]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__11_ ( .D(n493), .CP(n658), .CDN(n642), 
        .Q(fifo_entry[131]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__31_ ( .D(n469), .CP(n658), .CDN(n637), 
        .Q(fifo_entry[151]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__36_ ( .D(n384), .CP(n658), .CDN(n633), 
        .Q(fifo_entry[76]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__19_ ( .D(n521), .CP(n664), .CDN(n645), 
        .Q(fifo_entry[299]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__18_ ( .D(n520), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[298]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__17_ ( .D(n519), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[297]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__16_ ( .D(n518), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[296]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__15_ ( .D(n517), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[295]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__14_ ( .D(n516), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[294]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__13_ ( .D(n515), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[293]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__12_ ( .D(n514), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[292]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__11_ ( .D(n513), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[291]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__10_ ( .D(n512), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[290]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__9_ ( .D(n511), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[289]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__8_ ( .D(n510), .CP(n664), .CDN(n643), 
        .Q(fifo_entry[288]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__4_ ( .D(n506), .CP(n657), .CDN(n635), 
        .Q(fifo_entry[284]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__3_ ( .D(n505), .CP(n658), .CDN(n644), 
        .Q(fifo_entry[283]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__2_ ( .D(n504), .CP(n659), .CDN(n646), 
        .Q(fifo_entry[282]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__19_ ( .D(n301), .CP(n662), .CDN(n636), 
        .Q(fifo_entry[219]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__14_ ( .D(n296), .CP(n661), .CDN(n639), 
        .Q(fifo_entry[214]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__13_ ( .D(n295), .CP(n657), .CDN(n639), 
        .Q(fifo_entry[213]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__12_ ( .D(n294), .CP(n658), .CDN(n639), 
        .Q(fifo_entry[212]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__10_ ( .D(n292), .CP(n662), .CDN(n639), 
        .Q(fifo_entry[210]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__9_ ( .D(n291), .CP(n657), .CDN(n639), 
        .Q(fifo_entry[209]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__3_ ( .D(n285), .CP(n663), .CDN(n639), 
        .Q(fifo_entry[203]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__2_ ( .D(n284), .CP(n664), .CDN(n639), 
        .Q(fifo_entry[202]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__39_ ( .D(n281), .CP(n659), .CDN(n641), 
        .Q(fifo_entry[239]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__20_ ( .D(n280), .CP(n659), .CDN(n647), 
        .Q(fifo_entry[220]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__21_ ( .D(n279), .CP(n659), .CDN(n646), 
        .Q(fifo_entry[221]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__22_ ( .D(n278), .CP(n659), .CDN(n642), 
        .Q(fifo_entry[222]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__23_ ( .D(n277), .CP(n659), .CDN(n633), 
        .Q(fifo_entry[223]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__24_ ( .D(n276), .CP(n659), .CDN(n638), 
        .Q(fifo_entry[224]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__25_ ( .D(n275), .CP(n659), .CDN(n638), 
        .Q(fifo_entry[225]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__26_ ( .D(n274), .CP(n659), .CDN(n644), 
        .Q(fifo_entry[226]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__27_ ( .D(n273), .CP(n659), .CDN(n649), 
        .Q(fifo_entry[227]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__28_ ( .D(n272), .CP(n659), .CDN(n648), 
        .Q(fifo_entry[228]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__29_ ( .D(n271), .CP(n659), .CDN(n645), 
        .Q(fifo_entry[229]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__30_ ( .D(n270), .CP(n659), .CDN(n638), 
        .Q(fifo_entry[230]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__31_ ( .D(n269), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[231]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__32_ ( .D(n268), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[232]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__33_ ( .D(n267), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[233]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__34_ ( .D(n266), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[234]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__35_ ( .D(n265), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[235]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__36_ ( .D(n264), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[236]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__37_ ( .D(n263), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[237]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__38_ ( .D(n262), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[238]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__19_ ( .D(n461), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[99]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__18_ ( .D(n460), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[98]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__17_ ( .D(n459), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[97]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__16_ ( .D(n458), .CP(n658), .CDN(n638), 
        .Q(fifo_entry[96]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__15_ ( .D(n457), .CP(n658), .CDN(n634), 
        .Q(fifo_entry[95]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__14_ ( .D(n456), .CP(n659), .CDN(n635), 
        .Q(fifo_entry[94]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__13_ ( .D(n455), .CP(n661), .CDN(n636), 
        .Q(fifo_entry[93]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__12_ ( .D(n454), .CP(n662), .CDN(n637), 
        .Q(fifo_entry[92]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__10_ ( .D(n452), .CP(n658), .CDN(n640), 
        .Q(fifo_entry[90]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__9_ ( .D(n451), .CP(n659), .CDN(n641), 
        .Q(fifo_entry[89]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__8_ ( .D(n450), .CP(n661), .CDN(n643), 
        .Q(fifo_entry[88]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__7_ ( .D(n449), .CP(n662), .CDN(n638), 
        .Q(fifo_entry[87]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__3_ ( .D(n445), .CP(n657), .CDN(n639), 
        .Q(fifo_entry[83]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__2_ ( .D(n444), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[82]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__1_ ( .D(n443), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[81]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__39_ ( .D(n441), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[119]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__20_ ( .D(n440), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[100]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__21_ ( .D(n439), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[101]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__22_ ( .D(n438), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[102]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__23_ ( .D(n437), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[103]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__24_ ( .D(n436), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[104]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__25_ ( .D(n435), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[105]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__26_ ( .D(n434), .CP(n657), .CDN(n637), 
        .Q(fifo_entry[106]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__0_ ( .D(n362), .CP(n654), .CDN(n646), 
        .Q(fifo_entry[0]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__14_ ( .D(n496), .CP(n662), .CDN(n645), 
        .Q(fifo_entry[134]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__12_ ( .D(n494), .CP(n657), .CDN(n642), 
        .Q(fifo_entry[132]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__10_ ( .D(n492), .CP(n659), .CDN(n642), 
        .Q(fifo_entry[130]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__8_ ( .D(n490), .CP(n662), .CDN(n642), 
        .Q(fifo_entry[128]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__4_ ( .D(n486), .CP(n659), .CDN(n642), 
        .Q(fifo_entry[124]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__3_ ( .D(n485), .CP(n663), .CDN(n642), 
        .Q(fifo_entry[123]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__2_ ( .D(n484), .CP(n663), .CDN(n642), 
        .Q(fifo_entry[122]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__1_ ( .D(n483), .CP(n663), .CDN(n642), 
        .Q(fifo_entry[121]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__39_ ( .D(n481), .CP(n663), .CDN(
        wr_reset_), .Q(fifo_entry[159]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__20_ ( .D(n480), .CP(n663), .CDN(n637), 
        .Q(fifo_entry[140]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__21_ ( .D(n479), .CP(n663), .CDN(n644), 
        .Q(fifo_entry[141]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__22_ ( .D(n478), .CP(n663), .CDN(n645), 
        .Q(fifo_entry[142]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__23_ ( .D(n477), .CP(n663), .CDN(n637), 
        .Q(fifo_entry[143]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__24_ ( .D(n476), .CP(n663), .CDN(n644), 
        .Q(fifo_entry[144]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__25_ ( .D(n475), .CP(n663), .CDN(n645), 
        .Q(fifo_entry[145]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__26_ ( .D(n474), .CP(n663), .CDN(n647), 
        .Q(fifo_entry[146]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__27_ ( .D(n473), .CP(n661), .CDN(n633), 
        .Q(fifo_entry[147]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__30_ ( .D(n470), .CP(n657), .CDN(n636), 
        .Q(fifo_entry[150]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__32_ ( .D(n468), .CP(n659), .CDN(n641), 
        .Q(fifo_entry[152]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__33_ ( .D(n467), .CP(n661), .CDN(n641), 
        .Q(fifo_entry[153]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__37_ ( .D(n463), .CP(n659), .CDN(n641), 
        .Q(fifo_entry[157]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__38_ ( .D(n462), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[158]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__19_ ( .D(n421), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[59]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__18_ ( .D(n420), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[58]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__17_ ( .D(n419), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[57]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__16_ ( .D(n418), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[56]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__15_ ( .D(n417), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[55]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__14_ ( .D(n416), .CP(n662), .CDN(n641), 
        .Q(fifo_entry[54]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__13_ ( .D(n415), .CP(n662), .CDN(
        wr_reset_), .Q(fifo_entry[53]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__12_ ( .D(n414), .CP(n662), .CDN(n639), 
        .Q(fifo_entry[52]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__11_ ( .D(n413), .CP(n662), .CDN(n640), 
        .Q(fifo_entry[51]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__10_ ( .D(n412), .CP(n662), .CDN(n642), 
        .Q(fifo_entry[50]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__9_ ( .D(n411), .CP(n662), .CDN(n643), 
        .Q(fifo_entry[49]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__8_ ( .D(n410), .CP(n662), .CDN(n649), 
        .Q(fifo_entry[48]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__7_ ( .D(n409), .CP(n661), .CDN(n648), 
        .Q(fifo_entry[47]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__6_ ( .D(n408), .CP(n661), .CDN(n647), 
        .Q(fifo_entry[46]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__5_ ( .D(n407), .CP(n661), .CDN(n646), 
        .Q(fifo_entry[45]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__4_ ( .D(n406), .CP(n661), .CDN(
        wr_reset_), .Q(fifo_entry[44]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__3_ ( .D(n405), .CP(n661), .CDN(
        wr_reset_), .Q(fifo_entry[43]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__2_ ( .D(n404), .CP(n661), .CDN(n638), 
        .Q(fifo_entry[42]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__1_ ( .D(n403), .CP(n661), .CDN(
        wr_reset_), .Q(fifo_entry[41]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__39_ ( .D(n401), .CP(n661), .CDN(n640), 
        .Q(fifo_entry[79]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__20_ ( .D(n400), .CP(n661), .CDN(n640), 
        .Q(fifo_entry[60]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__21_ ( .D(n399), .CP(n661), .CDN(n640), 
        .Q(fifo_entry[61]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__22_ ( .D(n398), .CP(n661), .CDN(n640), 
        .Q(fifo_entry[62]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__35_ ( .D(n385), .CP(n657), .CDN(n636), 
        .Q(fifo_entry[75]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_1__38_ ( .D(n382), .CP(n661), .CDN(n635), 
        .Q(fifo_entry[78]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__23_ ( .D(n357), .CP(n665), .CDN(n646), 
        .Q(fifo_entry[23]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__25_ ( .D(n355), .CP(n665), .CDN(n646), 
        .Q(fifo_entry[25]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__27_ ( .D(n353), .CP(n665), .CDN(n646), 
        .Q(fifo_entry[27]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__29_ ( .D(n351), .CP(n665), .CDN(n635), 
        .Q(fifo_entry[29]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__31_ ( .D(n349), .CP(n665), .CDN(n635), 
        .Q(fifo_entry[31]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__33_ ( .D(n347), .CP(n665), .CDN(n635), 
        .Q(fifo_entry[33]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__11_ ( .D(n333), .CP(n664), .CDN(n647), 
        .Q(fifo_entry[251]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__9_ ( .D(n331), .CP(n664), .CDN(n647), 
        .Q(fifo_entry[249]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__7_ ( .D(n329), .CP(n664), .CDN(n647), 
        .Q(fifo_entry[247]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__5_ ( .D(n327), .CP(n664), .CDN(n647), 
        .Q(fifo_entry[245]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__3_ ( .D(n325), .CP(n664), .CDN(n634), 
        .Q(fifo_entry[243]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__1_ ( .D(n323), .CP(n664), .CDN(n634), 
        .Q(fifo_entry[241]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__39_ ( .D(n321), .CP(n663), .CDN(n634), 
        .Q(fifo_entry[279]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__21_ ( .D(n319), .CP(n663), .CDN(n634), 
        .Q(fifo_entry[261]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__23_ ( .D(n317), .CP(n663), .CDN(n634), 
        .Q(fifo_entry[263]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__25_ ( .D(n315), .CP(n663), .CDN(n634), 
        .Q(fifo_entry[265]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__27_ ( .D(n313), .CP(n663), .CDN(n648), 
        .Q(fifo_entry[267]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__29_ ( .D(n311), .CP(n663), .CDN(n648), 
        .Q(fifo_entry[269]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__27_ ( .D(n533), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[307]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__28_ ( .D(n532), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[308]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__29_ ( .D(n531), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[309]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__30_ ( .D(n530), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[310]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__31_ ( .D(n529), .CP(n665), .CDN(
        wr_reset_), .Q(fifo_entry[311]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__32_ ( .D(n528), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[312]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__33_ ( .D(n527), .CP(n665), .CDN(
        wr_reset_), .Q(fifo_entry[313]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__34_ ( .D(n526), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[314]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__35_ ( .D(n525), .CP(n665), .CDN(
        wr_reset_), .Q(fifo_entry[315]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__36_ ( .D(n524), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[316]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__37_ ( .D(n523), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[317]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_7__38_ ( .D(n522), .CP(n665), .CDN(n645), 
        .Q(fifo_entry[318]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__1_ ( .D(n283), .CP(n665), .CDN(n641), 
        .Q(fifo_entry[201]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__19_ ( .D(n501), .CP(n656), .CDN(
        wr_reset_), .Q(fifo_entry[139]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__5_ ( .D(n487), .CP(n656), .CDN(n642), 
        .Q(fifo_entry[125]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_3__36_ ( .D(n464), .CP(n656), .CDN(n641), 
        .Q(fifo_entry[156]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__6_ ( .D(n368), .CP(n654), .CDN(n636), 
        .Q(fifo_entry[6]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__4_ ( .D(n366), .CP(n654), .CDN(n636), 
        .Q(fifo_entry[4]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__2_ ( .D(n364), .CP(n654), .CDN(n646), 
        .Q(fifo_entry[2]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__20_ ( .D(n360), .CP(n654), .CDN(n646), 
        .Q(fifo_entry[20]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__22_ ( .D(n358), .CP(n654), .CDN(n646), 
        .Q(fifo_entry[22]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__24_ ( .D(n356), .CP(n653), .CDN(n646), 
        .Q(fifo_entry[24]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__26_ ( .D(n354), .CP(n653), .CDN(n646), 
        .Q(fifo_entry[26]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__28_ ( .D(n352), .CP(n653), .CDN(n635), 
        .Q(fifo_entry[28]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__30_ ( .D(n350), .CP(n653), .CDN(n635), 
        .Q(fifo_entry[30]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__32_ ( .D(n348), .CP(n653), .CDN(n635), 
        .Q(fifo_entry[32]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__34_ ( .D(n346), .CP(n653), .CDN(n635), 
        .Q(fifo_entry[34]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__35_ ( .D(n345), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[35]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__36_ ( .D(n344), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[36]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__37_ ( .D(n343), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[37]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_0__38_ ( .D(n342), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[38]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__19_ ( .D(n341), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[259]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__18_ ( .D(n340), .CP(n654), .CDN(n635), 
        .Q(fifo_entry[258]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__17_ ( .D(n339), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[257]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__16_ ( .D(n338), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[256]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__15_ ( .D(n337), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[255]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__14_ ( .D(n336), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[254]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__13_ ( .D(n335), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[253]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__12_ ( .D(n334), .CP(n654), .CDN(n647), 
        .Q(fifo_entry[252]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__31_ ( .D(n309), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[271]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__32_ ( .D(n308), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[272]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__33_ ( .D(n307), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[273]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__34_ ( .D(n306), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[274]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__35_ ( .D(n305), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[275]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__36_ ( .D(n304), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[276]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__37_ ( .D(n303), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[277]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_6__38_ ( .D(n302), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[278]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__15_ ( .D(n297), .CP(n656), .CDN(n643), 
        .Q(fifo_entry[215]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__11_ ( .D(n293), .CP(n656), .CDN(n639), 
        .Q(fifo_entry[211]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_5__6_ ( .D(n288), .CP(n656), .CDN(n639), 
        .Q(fifo_entry[206]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__6_ ( .D(n448), .CP(n653), .CDN(n647), 
        .Q(fifo_entry[86]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__5_ ( .D(n447), .CP(n654), .CDN(n646), 
        .Q(fifo_entry[85]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__4_ ( .D(n446), .CP(n656), .CDN(n638), 
        .Q(fifo_entry[84]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__27_ ( .D(n433), .CP(n656), .CDN(n637), 
        .Q(fifo_entry[107]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__28_ ( .D(n432), .CP(n656), .CDN(n637), 
        .Q(fifo_entry[108]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__29_ ( .D(n431), .CP(n656), .CDN(n649), 
        .Q(fifo_entry[109]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__30_ ( .D(n430), .CP(n656), .CDN(n648), 
        .Q(fifo_entry[110]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__31_ ( .D(n429), .CP(n656), .CDN(n645), 
        .Q(fifo_entry[111]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__32_ ( .D(n428), .CP(n656), .CDN(n644), 
        .Q(fifo_entry[112]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__33_ ( .D(n427), .CP(n656), .CDN(n633), 
        .Q(fifo_entry[113]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__34_ ( .D(n426), .CP(n656), .CDN(n634), 
        .Q(fifo_entry[114]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__35_ ( .D(n425), .CP(n656), .CDN(n635), 
        .Q(fifo_entry[115]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__36_ ( .D(n424), .CP(n656), .CDN(n636), 
        .Q(fifo_entry[116]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__37_ ( .D(n423), .CP(n656), .CDN(n639), 
        .Q(fifo_entry[117]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_2__38_ ( .D(n422), .CP(n656), .CDN(n640), 
        .Q(fifo_entry[118]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__19_ ( .D(n261), .CP(n653), .CDN(n648), 
        .Q(fifo_entry[179]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__18_ ( .D(n260), .CP(n653), .CDN(n633), 
        .Q(fifo_entry[178]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__17_ ( .D(n259), .CP(n653), .CDN(n633), 
        .Q(fifo_entry[177]) );
  DFCNQD1BWP12T30P140 fifo_entry_reg_4__16_ ( .D(n258), .CP(n653), .CDN(n633), 
        .Q(fifo_entry[176]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_0_ ( .D(fifo_rd_addr_d[0]), .CP(n632), 
        .CDN(n630), .Q(fifo_rd_addr[0]) );
  DFCNQD1BWP12T30P140 fifo_wr_addr_reg_0_ ( .D(n221), .CP(n666), .CDN(n644), 
        .Q(fifo_wr_addr[0]) );
  DFCNQD1BWP12T30P140 fifo_wr_addr_reg_2_ ( .D(n219), .CP(n666), .CDN(n644), 
        .Q(fifo_wr_addr[2]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_1_ ( .D(fifo_rd_addr_d[1]), .CP(n632), 
        .CDN(n630), .Q(fifo_rd_addr[1]) );
  DFCNQD1BWP12T30P140 fifo_wr_addr_reg_1_ ( .D(n220), .CP(n666), .CDN(n644), 
        .Q(fifo_wr_addr[1]) );
  CKBD0BWP12T30P140 U3 ( .I(wr_reset_), .Z(n645) );
  NR3D0BWP12T30P140 U4 ( .A1(fifo_wr_addr[2]), .A2(fifo_wr_addr[1]), .A3(n58), 
        .ZN(n72) );
  INVD0BWP12T30P140 U5 ( .I(fifo_wr_addr[0]), .ZN(n57) );
  INVD0BWP12T30P140 U6 ( .I(fifo_wr_addr[2]), .ZN(n55) );
  ND2D0BWP12T30P140 U7 ( .A1(inc_wr_addr_), .A2(n55), .ZN(n11) );
  NR3D0BWP12T30P140 U8 ( .A1(fifo_wr_addr[1]), .A2(n57), .A3(n11), .ZN(n61) );
  CKBD0BWP12T30P140 U9 ( .I(n61), .Z(n60) );
  INVD0BWP12T30P140 U10 ( .I(fifo_data_in[0]), .ZN(n586) );
  MAOI22D0BWP12T30P140 U11 ( .A1(n60), .A2(n586), .B1(fifo_entry[40]), .B2(n60), .ZN(n402) );
  INVD0BWP12T30P140 U12 ( .I(fifo_wr_addr[1]), .ZN(n59) );
  NR3D0BWP12T30P140 U13 ( .A1(n59), .A2(n57), .A3(n11), .ZN(n148) );
  CKBD0BWP12T30P140 U14 ( .I(n148), .Z(n147) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n147), .A2(n586), .B1(fifo_entry[120]), .B2(
        n147), .ZN(n482) );
  ND2D0BWP12T30P140 U16 ( .A1(fifo_wr_addr[2]), .A2(inc_wr_addr_), .ZN(n40) );
  NR3D0BWP12T30P140 U17 ( .A1(fifo_wr_addr[1]), .A2(n57), .A3(n40), .ZN(n614)
         );
  CKBD0BWP12T30P140 U18 ( .I(n614), .Z(n607) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n607), .A2(n586), .B1(fifo_entry[200]), .B2(
        n607), .ZN(n282) );
  NR3D0BWP12T30P140 U20 ( .A1(n59), .A2(n57), .A3(n40), .ZN(n157) );
  CKBD0BWP12T30P140 U21 ( .I(n157), .Z(n88) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n88), .A2(n586), .B1(fifo_entry[280]), .B2(
        n88), .ZN(n502) );
  CKBD0BWP12T30P140 U23 ( .I(n148), .Z(n138) );
  INVD0BWP12T30P140 U24 ( .I(fifo_data_in[11]), .ZN(n593) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n138), .A2(n593), .B1(fifo_entry[131]), .B2(
        n147), .ZN(n493) );
  NR2D0BWP12T30P140 U26 ( .A1(inc_wr_addr_), .A2(n57), .ZN(n56) );
  ND3D0BWP12T30P140 U27 ( .A1(n55), .A2(fifo_wr_addr[1]), .A3(n56), .ZN(n54)
         );
  INVD0BWP12T30P140 U28 ( .I(n54), .ZN(n136) );
  CKBD0BWP12T30P140 U29 ( .I(n136), .Z(n131) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n131), .A2(n593), .B1(fifo_entry[151]), .B2(
        n136), .ZN(n469) );
  NR3D0BWP12T30P140 U31 ( .A1(fifo_wr_addr[0]), .A2(n59), .A3(n11), .ZN(n78)
         );
  CKBD0BWP12T30P140 U32 ( .I(n78), .Z(n77) );
  MAOI22D0BWP12T30P140 U33 ( .A1(n77), .A2(n586), .B1(fifo_entry[80]), .B2(n77), .ZN(n442) );
  ND2D0BWP12T30P140 U34 ( .A1(n56), .A2(n59), .ZN(n52) );
  NR2D0BWP12T30P140 U35 ( .A1(fifo_wr_addr[2]), .A2(n52), .ZN(n65) );
  INVD0BWP12T30P140 U36 ( .I(fifo_data_in[16]), .ZN(n615) );
  CKBD0BWP12T30P140 U37 ( .I(n65), .Z(n64) );
  MAOI22D0BWP12T30P140 U38 ( .A1(n65), .A2(n615), .B1(fifo_entry[76]), .B2(n64), .ZN(n384) );
  CKBD0BWP12T30P140 U39 ( .I(n157), .Z(n158) );
  INVD0BWP12T30P140 U40 ( .I(fifo_data_in[19]), .ZN(n122) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n158), .A2(n122), .B1(fifo_entry[299]), .B2(
        n157), .ZN(n521) );
  INVD0BWP12T30P140 U42 ( .I(fifo_data_in[18]), .ZN(n606) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n158), .A2(n606), .B1(fifo_entry[298]), .B2(
        n157), .ZN(n520) );
  INVD0BWP12T30P140 U44 ( .I(fifo_data_in[17]), .ZN(n605) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n158), .A2(n605), .B1(fifo_entry[297]), .B2(
        n88), .ZN(n519) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n158), .A2(n615), .B1(fifo_entry[296]), .B2(
        n157), .ZN(n518) );
  INVD0BWP12T30P140 U47 ( .I(fifo_rd_addr[0]), .ZN(fifo_rd_addr_d[0]) );
  NR3D0BWP12T30P140 U48 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[0]), .A3(
        fifo_rd_addr[1]), .ZN(n618) );
  CKBD0BWP12T30P140 U49 ( .I(n618), .Z(n149) );
  ND2D0BWP12T30P140 U50 ( .A1(fifo_rd_addr[1]), .A2(fifo_rd_addr_d[0]), .ZN(
        n53) );
  NR2D0BWP12T30P140 U51 ( .A1(fifo_rd_addr[2]), .A2(n53), .ZN(n191) );
  CKBD0BWP12T30P140 U52 ( .I(n191), .Z(n617) );
  AOI22D0BWP12T30P140 U53 ( .A1(n149), .A2(fifo_entry[11]), .B1(n617), .B2(
        fifo_entry[91]), .ZN(n5) );
  NR3D0BWP12T30P140 U54 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[1]), .A3(
        fifo_rd_addr_d[0]), .ZN(n620) );
  CKBD0BWP12T30P140 U55 ( .I(n620), .Z(n151) );
  INVD0BWP12T30P140 U56 ( .I(fifo_rd_addr[2]), .ZN(n599) );
  NR3D0BWP12T30P140 U57 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[1]), .A3(n599), .ZN(n619) );
  CKBD0BWP12T30P140 U58 ( .I(n619), .Z(n150) );
  AOI22D0BWP12T30P140 U59 ( .A1(n151), .A2(fifo_entry[51]), .B1(n150), .B2(
        fifo_entry[171]), .ZN(n4) );
  NR2D0BWP12T30P140 U60 ( .A1(n599), .A2(n53), .ZN(n192) );
  CKBD0BWP12T30P140 U61 ( .I(n192), .Z(n622) );
  NR3D0BWP12T30P140 U62 ( .A1(fifo_rd_addr[1]), .A2(fifo_rd_addr_d[0]), .A3(
        n599), .ZN(n621) );
  CKBD0BWP12T30P140 U63 ( .I(n621), .Z(n152) );
  AOI22D0BWP12T30P140 U64 ( .A1(n622), .A2(fifo_entry[251]), .B1(n152), .B2(
        fifo_entry[211]), .ZN(n3) );
  ND2D0BWP12T30P140 U65 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[1]), .ZN(n1)
         );
  OR2D0BWP12T30P140 U66 ( .A1(fifo_rd_addr[2]), .A2(n1), .Z(n598) );
  INVD0BWP12T30P140 U67 ( .I(n598), .ZN(n609) );
  NR2D0BWP12T30P140 U68 ( .A1(n599), .A2(n1), .ZN(n623) );
  AOI22D0BWP12T30P140 U69 ( .A1(n609), .A2(fifo_entry[131]), .B1(n623), .B2(
        fifo_entry[291]), .ZN(n2) );
  ND4D0BWP12T30P140 U70 ( .A1(n5), .A2(n4), .A3(n3), .A4(n2), .ZN(n571) );
  INVD0BWP12T30P140 U71 ( .I(fifo_data_in[14]), .ZN(n596) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n158), .A2(n596), .B1(fifo_entry[294]), .B2(
        n157), .ZN(n516) );
  INVD0BWP12T30P140 U73 ( .I(fifo_data_in[13]), .ZN(n595) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n157), .A2(n595), .B1(fifo_entry[293]), .B2(
        n88), .ZN(n515) );
  INVD0BWP12T30P140 U75 ( .I(fifo_data_in[12]), .ZN(n594) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n88), .A2(n594), .B1(fifo_entry[292]), .B2(
        n88), .ZN(n514) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n158), .A2(n593), .B1(fifo_entry[291]), .B2(
        n88), .ZN(n513) );
  INVD0BWP12T30P140 U78 ( .I(fifo_data_in[10]), .ZN(n592) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n158), .A2(n592), .B1(fifo_entry[290]), .B2(
        n88), .ZN(n512) );
  INVD0BWP12T30P140 U80 ( .I(fifo_data_in[9]), .ZN(n591) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n88), .A2(n591), .B1(fifo_entry[289]), .B2(
        n157), .ZN(n511) );
  INVD0BWP12T30P140 U82 ( .I(fifo_data_in[8]), .ZN(n608) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n158), .A2(n608), .B1(fifo_entry[288]), .B2(
        n88), .ZN(n510) );
  INVD0BWP12T30P140 U84 ( .I(fifo_data_in[4]), .ZN(n588) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n158), .A2(n588), .B1(fifo_entry[284]), .B2(
        n88), .ZN(n506) );
  INVD0BWP12T30P140 U86 ( .I(fifo_data_in[3]), .ZN(n87) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n158), .A2(n87), .B1(fifo_entry[283]), .B2(
        n157), .ZN(n505) );
  INVD0BWP12T30P140 U88 ( .I(fifo_data_in[2]), .ZN(n86) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n158), .A2(n86), .B1(fifo_entry[282]), .B2(
        n88), .ZN(n504) );
  INVD0BWP12T30P140 U90 ( .I(fifo_data_in[15]), .ZN(n602) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n157), .A2(n602), .B1(fifo_entry[295]), .B2(
        n88), .ZN(n517) );
  CKBD0BWP12T30P140 U92 ( .I(n614), .Z(n616) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n616), .A2(n122), .B1(fifo_entry[219]), .B2(
        n614), .ZN(n301) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n616), .A2(n596), .B1(fifo_entry[214]), .B2(
        n614), .ZN(n296) );
  AOI22D0BWP12T30P140 U95 ( .A1(n149), .A2(fifo_entry[12]), .B1(n617), .B2(
        fifo_entry[92]), .ZN(n9) );
  AOI22D0BWP12T30P140 U96 ( .A1(n151), .A2(fifo_entry[52]), .B1(n150), .B2(
        fifo_entry[172]), .ZN(n8) );
  AOI22D0BWP12T30P140 U97 ( .A1(n622), .A2(fifo_entry[252]), .B1(n152), .B2(
        fifo_entry[212]), .ZN(n7) );
  CKBD0BWP12T30P140 U98 ( .I(n623), .Z(n600) );
  AOI22D0BWP12T30P140 U99 ( .A1(n609), .A2(fifo_entry[132]), .B1(n600), .B2(
        fifo_entry[292]), .ZN(n6) );
  ND4D0BWP12T30P140 U100 ( .A1(n9), .A2(n8), .A3(n7), .A4(n6), .ZN(n570) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n614), .A2(n595), .B1(fifo_entry[213]), .B2(
        n607), .ZN(n295) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n607), .A2(n594), .B1(fifo_entry[212]), .B2(
        n607), .ZN(n294) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n616), .A2(n592), .B1(fifo_entry[210]), .B2(
        n607), .ZN(n292) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n607), .A2(n591), .B1(fifo_entry[209]), .B2(
        n614), .ZN(n291) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n616), .A2(n87), .B1(fifo_entry[203]), .B2(
        n614), .ZN(n285) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n616), .A2(n86), .B1(fifo_entry[202]), .B2(
        n607), .ZN(n284) );
  NR2D0BWP12T30P140 U107 ( .A1(n55), .A2(n52), .ZN(n82) );
  CKBD0BWP12T30P140 U108 ( .I(n82), .Z(n10) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n82), .A2(n122), .B1(fifo_entry[239]), .B2(
        n10), .ZN(n281) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n82), .A2(n586), .B1(fifo_entry[220]), .B2(
        n10), .ZN(n280) );
  INVD0BWP12T30P140 U111 ( .I(fifo_data_in[1]), .ZN(n85) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n82), .A2(n85), .B1(fifo_entry[221]), .B2(
        n10), .ZN(n279) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n82), .A2(n86), .B1(fifo_entry[222]), .B2(
        n10), .ZN(n278) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n10), .A2(n87), .B1(fifo_entry[223]), .B2(
        n10), .ZN(n277) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n10), .A2(n588), .B1(fifo_entry[224]), .B2(
        n10), .ZN(n276) );
  INVD0BWP12T30P140 U116 ( .I(fifo_data_in[5]), .ZN(n589) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n10), .A2(n589), .B1(fifo_entry[225]), .B2(
        n10), .ZN(n275) );
  INVD0BWP12T30P140 U118 ( .I(fifo_data_in[6]), .ZN(n590) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n10), .A2(n590), .B1(fifo_entry[226]), .B2(
        n10), .ZN(n274) );
  INVD0BWP12T30P140 U120 ( .I(fifo_data_in[7]), .ZN(n604) );
  CKBD0BWP12T30P140 U121 ( .I(n82), .Z(n81) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n82), .A2(n604), .B1(fifo_entry[227]), .B2(
        n81), .ZN(n273) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n82), .A2(n608), .B1(fifo_entry[228]), .B2(
        n81), .ZN(n272) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n10), .A2(n591), .B1(fifo_entry[229]), .B2(
        n81), .ZN(n271) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n82), .A2(n592), .B1(fifo_entry[230]), .B2(
        n81), .ZN(n270) );
  MAOI22D0BWP12T30P140 U126 ( .A1(n82), .A2(n593), .B1(fifo_entry[231]), .B2(
        n81), .ZN(n269) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n82), .A2(n594), .B1(fifo_entry[232]), .B2(
        n81), .ZN(n268) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n82), .A2(n595), .B1(fifo_entry[233]), .B2(
        n81), .ZN(n267) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n82), .A2(n596), .B1(fifo_entry[234]), .B2(
        n81), .ZN(n266) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n82), .A2(n602), .B1(fifo_entry[235]), .B2(
        n81), .ZN(n265) );
  NR3D0BWP12T30P140 U131 ( .A1(fifo_wr_addr[1]), .A2(fifo_wr_addr[0]), .A3(n11), .ZN(n584) );
  CKBD0BWP12T30P140 U132 ( .I(n584), .Z(n585) );
  MAOI22D0BWP12T30P140 U133 ( .A1(n585), .A2(n85), .B1(fifo_entry[1]), .B2(
        n584), .ZN(n363) );
  INVD0BWP12T30P140 U134 ( .I(inc_wr_addr_), .ZN(n542) );
  ND2D0BWP12T30P140 U135 ( .A1(n542), .A2(n57), .ZN(n58) );
  CKBD0BWP12T30P140 U136 ( .I(n72), .Z(n73) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n73), .A2(n122), .B1(fifo_entry[39]), .B2(
        n72), .ZN(n361) );
  CKBD0BWP12T30P140 U138 ( .I(n72), .Z(n71) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n73), .A2(n85), .B1(fifo_entry[21]), .B2(n71), .ZN(n359) );
  AN3D0BWP12T30P140 U140 ( .A1(n56), .A2(fifo_wr_addr[2]), .A3(fifo_wr_addr[1]), .Z(n74) );
  CKBD0BWP12T30P140 U141 ( .I(n74), .Z(n76) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n76), .A2(n122), .B1(fifo_entry[319]), .B2(
        n76), .ZN(n541) );
  CKBD0BWP12T30P140 U143 ( .I(n74), .Z(n75) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n75), .A2(n586), .B1(fifo_entry[300]), .B2(
        n76), .ZN(n540) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n75), .A2(n85), .B1(fifo_entry[301]), .B2(
        n76), .ZN(n539) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n75), .A2(n86), .B1(fifo_entry[302]), .B2(
        n76), .ZN(n538) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n75), .A2(n87), .B1(fifo_entry[303]), .B2(
        n76), .ZN(n537) );
  MAOI22D0BWP12T30P140 U148 ( .A1(n75), .A2(n588), .B1(fifo_entry[304]), .B2(
        n76), .ZN(n536) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n75), .A2(n589), .B1(fifo_entry[305]), .B2(
        n74), .ZN(n535) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n75), .A2(n590), .B1(fifo_entry[306]), .B2(
        n74), .ZN(n534) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n616), .A2(n588), .B1(fifo_entry[204]), .B2(
        n607), .ZN(n286) );
  AOI22D0BWP12T30P140 U152 ( .A1(n149), .A2(fifo_entry[23]), .B1(n191), .B2(
        fifo_entry[103]), .ZN(n15) );
  AOI22D0BWP12T30P140 U153 ( .A1(n151), .A2(fifo_entry[63]), .B1(n150), .B2(
        fifo_entry[183]), .ZN(n14) );
  AOI22D0BWP12T30P140 U154 ( .A1(n192), .A2(fifo_entry[263]), .B1(n152), .B2(
        fifo_entry[223]), .ZN(n13) );
  CKBD0BWP12T30P140 U155 ( .I(n623), .Z(n207) );
  AOI22D0BWP12T30P140 U156 ( .A1(n609), .A2(fifo_entry[143]), .B1(n207), .B2(
        fifo_entry[303]), .ZN(n12) );
  ND4D0BWP12T30P140 U157 ( .A1(n15), .A2(n14), .A3(n13), .A4(n12), .ZN(n559)
         );
  AOI22D0BWP12T30P140 U158 ( .A1(n149), .A2(fifo_entry[21]), .B1(n191), .B2(
        fifo_entry[101]), .ZN(n19) );
  AOI22D0BWP12T30P140 U159 ( .A1(n151), .A2(fifo_entry[61]), .B1(n150), .B2(
        fifo_entry[181]), .ZN(n18) );
  AOI22D0BWP12T30P140 U160 ( .A1(n192), .A2(fifo_entry[261]), .B1(n152), .B2(
        fifo_entry[221]), .ZN(n17) );
  AOI22D0BWP12T30P140 U161 ( .A1(n609), .A2(fifo_entry[141]), .B1(n207), .B2(
        fifo_entry[301]), .ZN(n16) );
  ND4D0BWP12T30P140 U162 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .ZN(n561)
         );
  AOI22D0BWP12T30P140 U163 ( .A1(n149), .A2(fifo_entry[9]), .B1(n617), .B2(
        fifo_entry[89]), .ZN(n23) );
  AOI22D0BWP12T30P140 U164 ( .A1(n151), .A2(fifo_entry[49]), .B1(n150), .B2(
        fifo_entry[169]), .ZN(n22) );
  AOI22D0BWP12T30P140 U165 ( .A1(n622), .A2(fifo_entry[249]), .B1(n152), .B2(
        fifo_entry[209]), .ZN(n21) );
  AOI22D0BWP12T30P140 U166 ( .A1(n609), .A2(fifo_entry[129]), .B1(n623), .B2(
        fifo_entry[289]), .ZN(n20) );
  ND4D0BWP12T30P140 U167 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .ZN(n573)
         );
  AOI22D0BWP12T30P140 U168 ( .A1(n149), .A2(fifo_entry[7]), .B1(n617), .B2(
        fifo_entry[87]), .ZN(n27) );
  AOI22D0BWP12T30P140 U169 ( .A1(n151), .A2(fifo_entry[47]), .B1(n150), .B2(
        fifo_entry[167]), .ZN(n26) );
  AOI22D0BWP12T30P140 U170 ( .A1(n622), .A2(fifo_entry[247]), .B1(n152), .B2(
        fifo_entry[207]), .ZN(n25) );
  AOI22D0BWP12T30P140 U171 ( .A1(n609), .A2(fifo_entry[127]), .B1(n600), .B2(
        fifo_entry[287]), .ZN(n24) );
  ND4D0BWP12T30P140 U172 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .ZN(n575)
         );
  AOI22D0BWP12T30P140 U173 ( .A1(n149), .A2(fifo_entry[5]), .B1(n191), .B2(
        fifo_entry[85]), .ZN(n31) );
  AOI22D0BWP12T30P140 U174 ( .A1(n151), .A2(fifo_entry[45]), .B1(n150), .B2(
        fifo_entry[165]), .ZN(n30) );
  AOI22D0BWP12T30P140 U175 ( .A1(n192), .A2(fifo_entry[245]), .B1(n152), .B2(
        fifo_entry[205]), .ZN(n29) );
  AOI22D0BWP12T30P140 U176 ( .A1(n609), .A2(fifo_entry[125]), .B1(n623), .B2(
        fifo_entry[285]), .ZN(n28) );
  ND4D0BWP12T30P140 U177 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .ZN(n577)
         );
  AOI22D0BWP12T30P140 U178 ( .A1(n149), .A2(fifo_entry[3]), .B1(n191), .B2(
        fifo_entry[83]), .ZN(n35) );
  AOI22D0BWP12T30P140 U179 ( .A1(n151), .A2(fifo_entry[43]), .B1(n150), .B2(
        fifo_entry[163]), .ZN(n34) );
  AOI22D0BWP12T30P140 U180 ( .A1(n192), .A2(fifo_entry[243]), .B1(n152), .B2(
        fifo_entry[203]), .ZN(n33) );
  AOI22D0BWP12T30P140 U181 ( .A1(n609), .A2(fifo_entry[123]), .B1(n600), .B2(
        fifo_entry[283]), .ZN(n32) );
  ND4D0BWP12T30P140 U182 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .ZN(n579)
         );
  AOI22D0BWP12T30P140 U183 ( .A1(n149), .A2(fifo_entry[1]), .B1(n191), .B2(
        fifo_entry[81]), .ZN(n39) );
  AOI22D0BWP12T30P140 U184 ( .A1(n151), .A2(fifo_entry[41]), .B1(n150), .B2(
        fifo_entry[161]), .ZN(n38) );
  AOI22D0BWP12T30P140 U185 ( .A1(n192), .A2(fifo_entry[241]), .B1(n152), .B2(
        fifo_entry[201]), .ZN(n37) );
  INVD0BWP12T30P140 U186 ( .I(n598), .ZN(n624) );
  AOI22D0BWP12T30P140 U187 ( .A1(n624), .A2(fifo_entry[121]), .B1(n623), .B2(
        fifo_entry[281]), .ZN(n36) );
  ND4D0BWP12T30P140 U188 ( .A1(n39), .A2(n38), .A3(n37), .A4(n36), .ZN(n581)
         );
  NR3D0BWP12T30P140 U189 ( .A1(fifo_wr_addr[1]), .A2(fifo_wr_addr[0]), .A3(n40), .ZN(n603) );
  CKBD0BWP12T30P140 U190 ( .I(n603), .Z(n601) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n601), .A2(n586), .B1(fifo_entry[160]), .B2(
        n601), .ZN(n242) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n147), .A2(n591), .B1(fifo_entry[129]), .B2(
        n148), .ZN(n491) );
  CKBD0BWP12T30P140 U193 ( .I(n136), .Z(n137) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n131), .A2(n608), .B1(fifo_entry[148]), .B2(
        n137), .ZN(n472) );
  CKBD0BWP12T30P140 U195 ( .I(n65), .Z(n63) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n63), .A2(n87), .B1(fifo_entry[63]), .B2(n63), .ZN(n397) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n63), .A2(n588), .B1(fifo_entry[64]), .B2(
        n63), .ZN(n396) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n63), .A2(n589), .B1(fifo_entry[65]), .B2(
        n63), .ZN(n395) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n63), .A2(n590), .B1(fifo_entry[66]), .B2(
        n63), .ZN(n394) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n65), .A2(n604), .B1(fifo_entry[67]), .B2(
        n64), .ZN(n393) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n65), .A2(n608), .B1(fifo_entry[68]), .B2(
        n64), .ZN(n392) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n63), .A2(n591), .B1(fifo_entry[69]), .B2(
        n64), .ZN(n391) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n65), .A2(n592), .B1(fifo_entry[70]), .B2(
        n64), .ZN(n390) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n65), .A2(n593), .B1(fifo_entry[71]), .B2(
        n64), .ZN(n389) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n65), .A2(n594), .B1(fifo_entry[72]), .B2(
        n64), .ZN(n388) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n65), .A2(n595), .B1(fifo_entry[73]), .B2(
        n64), .ZN(n387) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n65), .A2(n596), .B1(fifo_entry[74]), .B2(
        n64), .ZN(n386) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n65), .A2(n605), .B1(fifo_entry[77]), .B2(
        n64), .ZN(n383) );
  NR3D0BWP12T30P140 U209 ( .A1(fifo_wr_addr[0]), .A2(n59), .A3(n40), .ZN(n66)
         );
  CKBD0BWP12T30P140 U210 ( .I(n66), .Z(n67) );
  CKBD0BWP12T30P140 U211 ( .I(n66), .Z(n587) );
  MAOI22D0BWP12T30P140 U212 ( .A1(n67), .A2(n592), .B1(fifo_entry[250]), .B2(
        n587), .ZN(n332) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n67), .A2(n608), .B1(fifo_entry[248]), .B2(
        n587), .ZN(n330) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n67), .A2(n590), .B1(fifo_entry[246]), .B2(
        n587), .ZN(n328) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n67), .A2(n588), .B1(fifo_entry[244]), .B2(
        n587), .ZN(n326) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n67), .A2(n86), .B1(fifo_entry[242]), .B2(
        n587), .ZN(n324) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n585), .A2(n87), .B1(fifo_entry[3]), .B2(
        n584), .ZN(n365) );
  NR3D0BWP12T30P140 U218 ( .A1(n55), .A2(n59), .A3(n58), .ZN(n69) );
  CKBD0BWP12T30P140 U219 ( .I(n69), .Z(n68) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n68), .A2(n586), .B1(fifo_entry[260]), .B2(
        n69), .ZN(n320) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n68), .A2(n86), .B1(fifo_entry[262]), .B2(
        n69), .ZN(n318) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n68), .A2(n588), .B1(fifo_entry[264]), .B2(
        n69), .ZN(n316) );
  CKBD0BWP12T30P140 U223 ( .I(n69), .Z(n70) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n70), .A2(n590), .B1(fifo_entry[266]), .B2(
        n70), .ZN(n314) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n68), .A2(n608), .B1(fifo_entry[268]), .B2(
        n70), .ZN(n312) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n68), .A2(n592), .B1(fifo_entry[270]), .B2(
        n70), .ZN(n310) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n158), .A2(n85), .B1(fifo_entry[281]), .B2(
        n157), .ZN(n503) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n616), .A2(n589), .B1(fifo_entry[205]), .B2(
        n614), .ZN(n287) );
  CKBD0BWP12T30P140 U229 ( .I(n78), .Z(n79) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n79), .A2(n593), .B1(fifo_entry[91]), .B2(
        n77), .ZN(n453) );
  CKBD0BWP12T30P140 U231 ( .I(n603), .Z(n597) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n597), .A2(n87), .B1(fifo_entry[163]), .B2(
        n603), .ZN(n245) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n597), .A2(n86), .B1(fifo_entry[162]), .B2(
        n601), .ZN(n244) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n597), .A2(n85), .B1(fifo_entry[161]), .B2(
        n603), .ZN(n243) );
  NR3D0BWP12T30P140 U235 ( .A1(fifo_wr_addr[1]), .A2(n55), .A3(n58), .ZN(n41)
         );
  CKBD0BWP12T30P140 U236 ( .I(n41), .Z(n42) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n42), .A2(n122), .B1(fifo_entry[199]), .B2(
        n41), .ZN(n241) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n42), .A2(n586), .B1(fifo_entry[180]), .B2(
        n41), .ZN(n240) );
  CKBD0BWP12T30P140 U239 ( .I(n41), .Z(n43) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n42), .A2(n85), .B1(fifo_entry[181]), .B2(
        n43), .ZN(n239) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n42), .A2(n86), .B1(fifo_entry[182]), .B2(
        n41), .ZN(n238) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n41), .A2(n87), .B1(fifo_entry[183]), .B2(
        n43), .ZN(n237) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n42), .A2(n588), .B1(fifo_entry[184]), .B2(
        n41), .ZN(n236) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n41), .A2(n589), .B1(fifo_entry[185]), .B2(
        n43), .ZN(n235) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n43), .A2(n590), .B1(fifo_entry[186]), .B2(
        n43), .ZN(n234) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n42), .A2(n604), .B1(fifo_entry[187]), .B2(
        n43), .ZN(n233) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n42), .A2(n608), .B1(fifo_entry[188]), .B2(
        n43), .ZN(n232) );
  MAOI22D0BWP12T30P140 U248 ( .A1(n43), .A2(n591), .B1(fifo_entry[189]), .B2(
        n41), .ZN(n231) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n42), .A2(n592), .B1(fifo_entry[190]), .B2(
        n43), .ZN(n230) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n42), .A2(n593), .B1(fifo_entry[191]), .B2(
        n41), .ZN(n229) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n42), .A2(n594), .B1(fifo_entry[192]), .B2(
        n43), .ZN(n228) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n42), .A2(n595), .B1(fifo_entry[193]), .B2(
        n41), .ZN(n227) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n42), .A2(n596), .B1(fifo_entry[194]), .B2(
        n43), .ZN(n226) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n42), .A2(n602), .B1(fifo_entry[195]), .B2(
        n41), .ZN(n225) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n42), .A2(n615), .B1(fifo_entry[196]), .B2(
        n43), .ZN(n224) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n42), .A2(n605), .B1(fifo_entry[197]), .B2(
        n41), .ZN(n223) );
  MAOI22D0BWP12T30P140 U257 ( .A1(n43), .A2(n606), .B1(fifo_entry[198]), .B2(
        n43), .ZN(n222) );
  AOI22D0BWP12T30P140 U258 ( .A1(n618), .A2(fifo_entry[18]), .B1(n617), .B2(
        fifo_entry[98]), .ZN(n47) );
  AOI22D0BWP12T30P140 U259 ( .A1(n620), .A2(fifo_entry[58]), .B1(n619), .B2(
        fifo_entry[178]), .ZN(n46) );
  AOI22D0BWP12T30P140 U260 ( .A1(n622), .A2(fifo_entry[258]), .B1(n621), .B2(
        fifo_entry[218]), .ZN(n45) );
  AOI22D0BWP12T30P140 U261 ( .A1(n624), .A2(fifo_entry[138]), .B1(n207), .B2(
        fifo_entry[298]), .ZN(n44) );
  ND4D0BWP12T30P140 U262 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .ZN(n564)
         );
  CKBD0BWP12T30P140 U263 ( .I(n618), .Z(n202) );
  AOI22D0BWP12T30P140 U264 ( .A1(n202), .A2(fifo_entry[15]), .B1(n191), .B2(
        fifo_entry[95]), .ZN(n51) );
  CKBD0BWP12T30P140 U265 ( .I(n620), .Z(n204) );
  CKBD0BWP12T30P140 U266 ( .I(n619), .Z(n203) );
  AOI22D0BWP12T30P140 U267 ( .A1(n204), .A2(fifo_entry[55]), .B1(n203), .B2(
        fifo_entry[175]), .ZN(n50) );
  CKBD0BWP12T30P140 U268 ( .I(n621), .Z(n205) );
  AOI22D0BWP12T30P140 U269 ( .A1(n192), .A2(fifo_entry[255]), .B1(n205), .B2(
        fifo_entry[215]), .ZN(n49) );
  AOI22D0BWP12T30P140 U270 ( .A1(n609), .A2(fifo_entry[135]), .B1(n207), .B2(
        fifo_entry[295]), .ZN(n48) );
  ND4D0BWP12T30P140 U271 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .ZN(n567)
         );
  MAOI22D0BWP12T30P140 U272 ( .A1(n585), .A2(n589), .B1(fifo_entry[5]), .B2(
        n584), .ZN(n367) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n138), .A2(n589), .B1(fifo_entry[125]), .B2(
        n148), .ZN(n487) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n131), .A2(n605), .B1(fifo_entry[157]), .B2(
        n136), .ZN(n463) );
  OAI21D0BWP12T30P140 U275 ( .A1(n56), .A2(n59), .B(n52), .ZN(n220) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n137), .A2(n606), .B1(fifo_entry[158]), .B2(
        n137), .ZN(n462) );
  OAI21D0BWP12T30P140 U277 ( .A1(fifo_rd_addr[1]), .A2(fifo_rd_addr_d[0]), .B(
        n53), .ZN(fifo_rd_addr_d[1]) );
  CKBD0BWP12T30P140 U278 ( .I(n61), .Z(n62) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n62), .A2(n122), .B1(fifo_entry[59]), .B2(
        n61), .ZN(n421) );
  OAI21D0BWP12T30P140 U280 ( .A1(n76), .A2(n55), .B(n54), .ZN(n219) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n62), .A2(n606), .B1(fifo_entry[58]), .B2(
        n61), .ZN(n420) );
  AOI21D0BWP12T30P140 U282 ( .A1(inc_wr_addr_), .A2(n57), .B(n56), .ZN(n221)
         );
  MAOI22D0BWP12T30P140 U283 ( .A1(n62), .A2(n605), .B1(fifo_entry[57]), .B2(
        n60), .ZN(n419) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n62), .A2(n615), .B1(fifo_entry[56]), .B2(
        n61), .ZN(n418) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n597), .A2(n615), .B1(fifo_entry[176]), .B2(
        n603), .ZN(n258) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n61), .A2(n602), .B1(fifo_entry[55]), .B2(
        n60), .ZN(n417) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n597), .A2(n605), .B1(fifo_entry[177]), .B2(
        n601), .ZN(n259) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n62), .A2(n596), .B1(fifo_entry[54]), .B2(
        n61), .ZN(n416) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n597), .A2(n606), .B1(fifo_entry[178]), .B2(
        n603), .ZN(n260) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n61), .A2(n595), .B1(fifo_entry[53]), .B2(
        n60), .ZN(n415) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n597), .A2(n122), .B1(fifo_entry[179]), .B2(
        n603), .ZN(n261) );
  MAOI22D0BWP12T30P140 U292 ( .A1(n60), .A2(n594), .B1(fifo_entry[52]), .B2(
        n60), .ZN(n414) );
  NR3D0BWP12T30P140 U293 ( .A1(fifo_wr_addr[2]), .A2(n59), .A3(n58), .ZN(n83)
         );
  CKBD0BWP12T30P140 U294 ( .I(n83), .Z(n84) );
  MAOI22D0BWP12T30P140 U295 ( .A1(n84), .A2(n606), .B1(fifo_entry[118]), .B2(
        n84), .ZN(n422) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n62), .A2(n593), .B1(fifo_entry[51]), .B2(
        n60), .ZN(n413) );
  CKBD0BWP12T30P140 U297 ( .I(n83), .Z(n80) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n80), .A2(n605), .B1(fifo_entry[117]), .B2(
        n83), .ZN(n423) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n62), .A2(n592), .B1(fifo_entry[50]), .B2(
        n60), .ZN(n412) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n80), .A2(n615), .B1(fifo_entry[116]), .B2(
        n84), .ZN(n424) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n60), .A2(n591), .B1(fifo_entry[49]), .B2(
        n61), .ZN(n411) );
  MAOI22D0BWP12T30P140 U302 ( .A1(n80), .A2(n602), .B1(fifo_entry[115]), .B2(
        n83), .ZN(n425) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n62), .A2(n608), .B1(fifo_entry[48]), .B2(
        n60), .ZN(n410) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n80), .A2(n596), .B1(fifo_entry[114]), .B2(
        n84), .ZN(n426) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n62), .A2(n604), .B1(fifo_entry[47]), .B2(
        n61), .ZN(n409) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n80), .A2(n595), .B1(fifo_entry[113]), .B2(
        n83), .ZN(n427) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n62), .A2(n590), .B1(fifo_entry[46]), .B2(
        n60), .ZN(n408) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n80), .A2(n594), .B1(fifo_entry[112]), .B2(
        n84), .ZN(n428) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n62), .A2(n589), .B1(fifo_entry[45]), .B2(
        n61), .ZN(n407) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n80), .A2(n593), .B1(fifo_entry[111]), .B2(
        n83), .ZN(n429) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n62), .A2(n588), .B1(fifo_entry[44]), .B2(
        n60), .ZN(n406) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n80), .A2(n592), .B1(fifo_entry[110]), .B2(
        n84), .ZN(n430) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n62), .A2(n87), .B1(fifo_entry[43]), .B2(n61), .ZN(n405) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n84), .A2(n591), .B1(fifo_entry[109]), .B2(
        n83), .ZN(n431) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n62), .A2(n86), .B1(fifo_entry[42]), .B2(n60), .ZN(n404) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n80), .A2(n608), .B1(fifo_entry[108]), .B2(
        n84), .ZN(n432) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n62), .A2(n85), .B1(fifo_entry[41]), .B2(n61), .ZN(n403) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n80), .A2(n604), .B1(fifo_entry[107]), .B2(
        n84), .ZN(n433) );
  MAOI22D0BWP12T30P140 U319 ( .A1(n65), .A2(n122), .B1(fifo_entry[79]), .B2(
        n63), .ZN(n401) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n79), .A2(n588), .B1(fifo_entry[84]), .B2(
        n77), .ZN(n446) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n65), .A2(n586), .B1(fifo_entry[60]), .B2(
        n63), .ZN(n400) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n79), .A2(n589), .B1(fifo_entry[85]), .B2(
        n78), .ZN(n447) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n65), .A2(n85), .B1(fifo_entry[61]), .B2(n63), .ZN(n399) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n79), .A2(n590), .B1(fifo_entry[86]), .B2(
        n77), .ZN(n448) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n65), .A2(n86), .B1(fifo_entry[62]), .B2(n63), .ZN(n398) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n616), .A2(n590), .B1(fifo_entry[206]), .B2(
        n607), .ZN(n288) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n65), .A2(n602), .B1(fifo_entry[75]), .B2(
        n64), .ZN(n385) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n616), .A2(n593), .B1(fifo_entry[211]), .B2(
        n607), .ZN(n293) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n65), .A2(n606), .B1(fifo_entry[78]), .B2(
        n64), .ZN(n382) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n614), .A2(n602), .B1(fifo_entry[215]), .B2(
        n607), .ZN(n297) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n72), .A2(n87), .B1(fifo_entry[23]), .B2(n71), .ZN(n357) );
  MAOI22D0BWP12T30P140 U332 ( .A1(n70), .A2(n606), .B1(fifo_entry[278]), .B2(
        n70), .ZN(n302) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n72), .A2(n589), .B1(fifo_entry[25]), .B2(
        n71), .ZN(n355) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n68), .A2(n605), .B1(fifo_entry[277]), .B2(
        n69), .ZN(n303) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n73), .A2(n604), .B1(fifo_entry[27]), .B2(
        n71), .ZN(n353) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n68), .A2(n615), .B1(fifo_entry[276]), .B2(
        n70), .ZN(n304) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n71), .A2(n591), .B1(fifo_entry[29]), .B2(
        n72), .ZN(n351) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n68), .A2(n602), .B1(fifo_entry[275]), .B2(
        n69), .ZN(n305) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n73), .A2(n593), .B1(fifo_entry[31]), .B2(
        n72), .ZN(n349) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n68), .A2(n596), .B1(fifo_entry[274]), .B2(
        n70), .ZN(n306) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n73), .A2(n595), .B1(fifo_entry[33]), .B2(
        n72), .ZN(n347) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n68), .A2(n595), .B1(fifo_entry[273]), .B2(
        n69), .ZN(n307) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n67), .A2(n593), .B1(fifo_entry[251]), .B2(
        n587), .ZN(n333) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n68), .A2(n594), .B1(fifo_entry[272]), .B2(
        n70), .ZN(n308) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n587), .A2(n591), .B1(fifo_entry[249]), .B2(
        n66), .ZN(n331) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n68), .A2(n593), .B1(fifo_entry[271]), .B2(
        n69), .ZN(n309) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n67), .A2(n604), .B1(fifo_entry[247]), .B2(
        n66), .ZN(n329) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n587), .A2(n594), .B1(fifo_entry[252]), .B2(
        n587), .ZN(n334) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n67), .A2(n589), .B1(fifo_entry[245]), .B2(
        n66), .ZN(n327) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n66), .A2(n595), .B1(fifo_entry[253]), .B2(
        n587), .ZN(n335) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n67), .A2(n87), .B1(fifo_entry[243]), .B2(
        n66), .ZN(n325) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n67), .A2(n596), .B1(fifo_entry[254]), .B2(
        n66), .ZN(n336) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n67), .A2(n85), .B1(fifo_entry[241]), .B2(
        n66), .ZN(n323) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n66), .A2(n602), .B1(fifo_entry[255]), .B2(
        n587), .ZN(n337) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n68), .A2(n122), .B1(fifo_entry[279]), .B2(
        n69), .ZN(n321) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n67), .A2(n615), .B1(fifo_entry[256]), .B2(
        n66), .ZN(n338) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n68), .A2(n85), .B1(fifo_entry[261]), .B2(
        n70), .ZN(n319) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n67), .A2(n605), .B1(fifo_entry[257]), .B2(
        n587), .ZN(n339) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n69), .A2(n87), .B1(fifo_entry[263]), .B2(
        n70), .ZN(n317) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n67), .A2(n606), .B1(fifo_entry[258]), .B2(
        n66), .ZN(n340) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n69), .A2(n589), .B1(fifo_entry[265]), .B2(
        n70), .ZN(n315) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n67), .A2(n122), .B1(fifo_entry[259]), .B2(
        n66), .ZN(n341) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n68), .A2(n604), .B1(fifo_entry[267]), .B2(
        n70), .ZN(n313) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n71), .A2(n606), .B1(fifo_entry[38]), .B2(
        n71), .ZN(n342) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n70), .A2(n591), .B1(fifo_entry[269]), .B2(
        n69), .ZN(n311) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n73), .A2(n605), .B1(fifo_entry[37]), .B2(
        n72), .ZN(n343) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n74), .A2(n604), .B1(fifo_entry[307]), .B2(
        n74), .ZN(n533) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n73), .A2(n615), .B1(fifo_entry[36]), .B2(
        n71), .ZN(n344) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n76), .A2(n608), .B1(fifo_entry[308]), .B2(
        n74), .ZN(n532) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n73), .A2(n602), .B1(fifo_entry[35]), .B2(
        n72), .ZN(n345) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n74), .A2(n591), .B1(fifo_entry[309]), .B2(
        n74), .ZN(n531) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n73), .A2(n596), .B1(fifo_entry[34]), .B2(
        n71), .ZN(n346) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n75), .A2(n592), .B1(fifo_entry[310]), .B2(
        n76), .ZN(n530) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n73), .A2(n594), .B1(fifo_entry[32]), .B2(
        n71), .ZN(n348) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n75), .A2(n593), .B1(fifo_entry[311]), .B2(
        n76), .ZN(n529) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n73), .A2(n592), .B1(fifo_entry[30]), .B2(
        n71), .ZN(n350) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n75), .A2(n594), .B1(fifo_entry[312]), .B2(
        n76), .ZN(n528) );
  MAOI22D0BWP12T30P140 U378 ( .A1(n73), .A2(n608), .B1(fifo_entry[28]), .B2(
        n71), .ZN(n352) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n75), .A2(n595), .B1(fifo_entry[313]), .B2(
        n74), .ZN(n527) );
  MAOI22D0BWP12T30P140 U380 ( .A1(n71), .A2(n590), .B1(fifo_entry[26]), .B2(
        n71), .ZN(n354) );
  MAOI22D0BWP12T30P140 U381 ( .A1(n75), .A2(n596), .B1(fifo_entry[314]), .B2(
        n74), .ZN(n526) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n73), .A2(n588), .B1(fifo_entry[24]), .B2(
        n72), .ZN(n356) );
  MAOI22D0BWP12T30P140 U383 ( .A1(n75), .A2(n602), .B1(fifo_entry[315]), .B2(
        n74), .ZN(n525) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n73), .A2(n86), .B1(fifo_entry[22]), .B2(n72), .ZN(n358) );
  MAOI22D0BWP12T30P140 U385 ( .A1(n75), .A2(n615), .B1(fifo_entry[316]), .B2(
        n74), .ZN(n524) );
  MAOI22D0BWP12T30P140 U386 ( .A1(n73), .A2(n586), .B1(fifo_entry[20]), .B2(
        n72), .ZN(n360) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n75), .A2(n605), .B1(fifo_entry[317]), .B2(
        n74), .ZN(n523) );
  CKBD0BWP12T30P140 U388 ( .I(n584), .Z(n113) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n585), .A2(n86), .B1(fifo_entry[2]), .B2(
        n113), .ZN(n364) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n76), .A2(n606), .B1(fifo_entry[318]), .B2(
        n76), .ZN(n522) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n585), .A2(n588), .B1(fifo_entry[4]), .B2(
        n113), .ZN(n366) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n616), .A2(n85), .B1(fifo_entry[201]), .B2(
        n614), .ZN(n283) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n585), .A2(n590), .B1(fifo_entry[6]), .B2(
        n113), .ZN(n368) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n138), .A2(n122), .B1(fifo_entry[139]), .B2(
        n148), .ZN(n501) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n131), .A2(n595), .B1(fifo_entry[153]), .B2(
        n136), .ZN(n467) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n82), .A2(n605), .B1(fifo_entry[237]), .B2(
        n81), .ZN(n263) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n82), .A2(n606), .B1(fifo_entry[238]), .B2(
        n81), .ZN(n262) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n79), .A2(n122), .B1(fifo_entry[99]), .B2(
        n78), .ZN(n461) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n79), .A2(n606), .B1(fifo_entry[98]), .B2(
        n78), .ZN(n460) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n79), .A2(n605), .B1(fifo_entry[97]), .B2(
        n77), .ZN(n459) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n79), .A2(n615), .B1(fifo_entry[96]), .B2(
        n78), .ZN(n458) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n78), .A2(n602), .B1(fifo_entry[95]), .B2(
        n77), .ZN(n457) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n79), .A2(n596), .B1(fifo_entry[94]), .B2(
        n78), .ZN(n456) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n78), .A2(n595), .B1(fifo_entry[93]), .B2(
        n77), .ZN(n455) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n77), .A2(n594), .B1(fifo_entry[92]), .B2(
        n77), .ZN(n454) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n79), .A2(n592), .B1(fifo_entry[90]), .B2(
        n77), .ZN(n452) );
  MAOI22D0BWP12T30P140 U407 ( .A1(n77), .A2(n591), .B1(fifo_entry[89]), .B2(
        n78), .ZN(n451) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n79), .A2(n608), .B1(fifo_entry[88]), .B2(
        n77), .ZN(n450) );
  MAOI22D0BWP12T30P140 U409 ( .A1(n79), .A2(n604), .B1(fifo_entry[87]), .B2(
        n78), .ZN(n449) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n79), .A2(n87), .B1(fifo_entry[83]), .B2(n78), .ZN(n445) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n79), .A2(n86), .B1(fifo_entry[82]), .B2(n77), .ZN(n444) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n79), .A2(n85), .B1(fifo_entry[81]), .B2(n78), .ZN(n443) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n80), .A2(n122), .B1(fifo_entry[119]), .B2(
        n83), .ZN(n441) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n80), .A2(n586), .B1(fifo_entry[100]), .B2(
        n83), .ZN(n440) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n80), .A2(n85), .B1(fifo_entry[101]), .B2(
        n84), .ZN(n439) );
  MAOI22D0BWP12T30P140 U416 ( .A1(n80), .A2(n86), .B1(fifo_entry[102]), .B2(
        n83), .ZN(n438) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n83), .A2(n87), .B1(fifo_entry[103]), .B2(
        n84), .ZN(n437) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n80), .A2(n588), .B1(fifo_entry[104]), .B2(
        n83), .ZN(n436) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n82), .A2(n615), .B1(fifo_entry[236]), .B2(
        n81), .ZN(n264) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n83), .A2(n589), .B1(fifo_entry[105]), .B2(
        n84), .ZN(n435) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n84), .A2(n590), .B1(fifo_entry[106]), .B2(
        n84), .ZN(n434) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n113), .A2(n586), .B1(fifo_entry[0]), .B2(
        n113), .ZN(n362) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n138), .A2(n596), .B1(fifo_entry[134]), .B2(
        n148), .ZN(n496) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n147), .A2(n594), .B1(fifo_entry[132]), .B2(
        n147), .ZN(n494) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n138), .A2(n592), .B1(fifo_entry[130]), .B2(
        n147), .ZN(n492) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n138), .A2(n608), .B1(fifo_entry[128]), .B2(
        n147), .ZN(n490) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n138), .A2(n588), .B1(fifo_entry[124]), .B2(
        n147), .ZN(n486) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n138), .A2(n87), .B1(fifo_entry[123]), .B2(
        n148), .ZN(n485) );
  MAOI22D0BWP12T30P140 U429 ( .A1(n138), .A2(n86), .B1(fifo_entry[122]), .B2(
        n147), .ZN(n484) );
  MAOI22D0BWP12T30P140 U430 ( .A1(n138), .A2(n85), .B1(fifo_entry[121]), .B2(
        n148), .ZN(n483) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n131), .A2(n122), .B1(fifo_entry[159]), .B2(
        n136), .ZN(n481) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n131), .A2(n586), .B1(fifo_entry[140]), .B2(
        n136), .ZN(n480) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n131), .A2(n85), .B1(fifo_entry[141]), .B2(
        n137), .ZN(n479) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n131), .A2(n86), .B1(fifo_entry[142]), .B2(
        n136), .ZN(n478) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n136), .A2(n87), .B1(fifo_entry[143]), .B2(
        n137), .ZN(n477) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n131), .A2(n588), .B1(fifo_entry[144]), .B2(
        n136), .ZN(n476) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n136), .A2(n589), .B1(fifo_entry[145]), .B2(
        n137), .ZN(n475) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n137), .A2(n590), .B1(fifo_entry[146]), .B2(
        n137), .ZN(n474) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n131), .A2(n604), .B1(fifo_entry[147]), .B2(
        n137), .ZN(n473) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n131), .A2(n592), .B1(fifo_entry[150]), .B2(
        n137), .ZN(n470) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n131), .A2(n594), .B1(fifo_entry[152]), .B2(
        n137), .ZN(n468) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n131), .A2(n615), .B1(fifo_entry[156]), .B2(
        n137), .ZN(n464) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n158), .A2(n589), .B1(fifo_entry[285]), .B2(
        n157), .ZN(n507) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n158), .A2(n590), .B1(fifo_entry[286]), .B2(
        n88), .ZN(n508) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n585), .A2(n608), .B1(fifo_entry[8]), .B2(
        n113), .ZN(n370) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n113), .A2(n591), .B1(fifo_entry[9]), .B2(
        n584), .ZN(n371) );
  AOI22D0BWP12T30P140 U447 ( .A1(n618), .A2(fifo_entry[6]), .B1(n617), .B2(
        fifo_entry[86]), .ZN(n92) );
  AOI22D0BWP12T30P140 U448 ( .A1(n620), .A2(fifo_entry[46]), .B1(n619), .B2(
        fifo_entry[166]), .ZN(n91) );
  AOI22D0BWP12T30P140 U449 ( .A1(n622), .A2(fifo_entry[246]), .B1(n621), .B2(
        fifo_entry[206]), .ZN(n90) );
  AOI22D0BWP12T30P140 U450 ( .A1(n609), .A2(fifo_entry[126]), .B1(n600), .B2(
        fifo_entry[286]), .ZN(n89) );
  ND4D0BWP12T30P140 U451 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .ZN(n576)
         );
  MAOI22D0BWP12T30P140 U452 ( .A1(n585), .A2(n592), .B1(fifo_entry[10]), .B2(
        n113), .ZN(n372) );
  AOI22D0BWP12T30P140 U453 ( .A1(n618), .A2(fifo_entry[4]), .B1(n617), .B2(
        fifo_entry[84]), .ZN(n96) );
  AOI22D0BWP12T30P140 U454 ( .A1(n620), .A2(fifo_entry[44]), .B1(n619), .B2(
        fifo_entry[164]), .ZN(n95) );
  AOI22D0BWP12T30P140 U455 ( .A1(n622), .A2(fifo_entry[244]), .B1(n621), .B2(
        fifo_entry[204]), .ZN(n94) );
  AOI22D0BWP12T30P140 U456 ( .A1(n609), .A2(fifo_entry[124]), .B1(n600), .B2(
        fifo_entry[284]), .ZN(n93) );
  ND4D0BWP12T30P140 U457 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(n578)
         );
  MAOI22D0BWP12T30P140 U458 ( .A1(n585), .A2(n593), .B1(fifo_entry[11]), .B2(
        n113), .ZN(n373) );
  MAOI22D0BWP12T30P140 U459 ( .A1(n113), .A2(n594), .B1(fifo_entry[12]), .B2(
        n113), .ZN(n374) );
  AOI22D0BWP12T30P140 U460 ( .A1(n618), .A2(fifo_entry[2]), .B1(n617), .B2(
        fifo_entry[82]), .ZN(n100) );
  AOI22D0BWP12T30P140 U461 ( .A1(n620), .A2(fifo_entry[42]), .B1(n619), .B2(
        fifo_entry[162]), .ZN(n99) );
  AOI22D0BWP12T30P140 U462 ( .A1(n622), .A2(fifo_entry[242]), .B1(n621), .B2(
        fifo_entry[202]), .ZN(n98) );
  AOI22D0BWP12T30P140 U463 ( .A1(n609), .A2(fifo_entry[122]), .B1(n600), .B2(
        fifo_entry[282]), .ZN(n97) );
  ND4D0BWP12T30P140 U464 ( .A1(n100), .A2(n99), .A3(n98), .A4(n97), .ZN(n580)
         );
  MAOI22D0BWP12T30P140 U465 ( .A1(n584), .A2(n595), .B1(fifo_entry[13]), .B2(
        n113), .ZN(n375) );
  AOI22D0BWP12T30P140 U466 ( .A1(fifo_entry[0]), .A2(n149), .B1(fifo_entry[80]), .B2(n617), .ZN(n104) );
  AOI22D0BWP12T30P140 U467 ( .A1(fifo_entry[40]), .A2(n151), .B1(
        fifo_entry[160]), .B2(n150), .ZN(n103) );
  AOI22D0BWP12T30P140 U468 ( .A1(fifo_entry[240]), .A2(n622), .B1(
        fifo_entry[200]), .B2(n152), .ZN(n102) );
  AOI22D0BWP12T30P140 U469 ( .A1(fifo_entry[120]), .A2(n609), .B1(
        fifo_entry[280]), .B2(n207), .ZN(n101) );
  ND4D0BWP12T30P140 U470 ( .A1(n104), .A2(n103), .A3(n102), .A4(n101), .ZN(
        n582) );
  MAOI22D0BWP12T30P140 U471 ( .A1(n585), .A2(n596), .B1(fifo_entry[14]), .B2(
        n584), .ZN(n376) );
  MAOI22D0BWP12T30P140 U472 ( .A1(n584), .A2(n602), .B1(fifo_entry[15]), .B2(
        n113), .ZN(n377) );
  AOI22D0BWP12T30P140 U473 ( .A1(n149), .A2(fifo_entry[39]), .B1(n191), .B2(
        fifo_entry[119]), .ZN(n108) );
  AOI22D0BWP12T30P140 U474 ( .A1(n151), .A2(fifo_entry[79]), .B1(n150), .B2(
        fifo_entry[199]), .ZN(n107) );
  AOI22D0BWP12T30P140 U475 ( .A1(n192), .A2(fifo_entry[279]), .B1(n152), .B2(
        fifo_entry[239]), .ZN(n106) );
  AOI22D0BWP12T30P140 U476 ( .A1(n609), .A2(fifo_entry[159]), .B1(n207), .B2(
        fifo_entry[319]), .ZN(n105) );
  ND4D0BWP12T30P140 U477 ( .A1(n108), .A2(n107), .A3(n106), .A4(n105), .ZN(
        n543) );
  MAOI22D0BWP12T30P140 U478 ( .A1(n585), .A2(n615), .B1(fifo_entry[16]), .B2(
        n584), .ZN(n378) );
  CKBD0BWP12T30P140 U479 ( .I(n191), .Z(n201) );
  AOI22D0BWP12T30P140 U480 ( .A1(n202), .A2(fifo_entry[38]), .B1(n201), .B2(
        fifo_entry[118]), .ZN(n112) );
  AOI22D0BWP12T30P140 U481 ( .A1(n204), .A2(fifo_entry[78]), .B1(n203), .B2(
        fifo_entry[198]), .ZN(n111) );
  CKBD0BWP12T30P140 U482 ( .I(n192), .Z(n206) );
  AOI22D0BWP12T30P140 U483 ( .A1(n206), .A2(fifo_entry[278]), .B1(n205), .B2(
        fifo_entry[238]), .ZN(n110) );
  AOI22D0BWP12T30P140 U484 ( .A1(n624), .A2(fifo_entry[158]), .B1(n623), .B2(
        fifo_entry[318]), .ZN(n109) );
  ND4D0BWP12T30P140 U485 ( .A1(n112), .A2(n111), .A3(n110), .A4(n109), .ZN(
        n544) );
  MAOI22D0BWP12T30P140 U486 ( .A1(n585), .A2(n605), .B1(fifo_entry[17]), .B2(
        n113), .ZN(n379) );
  AOI22D0BWP12T30P140 U487 ( .A1(n202), .A2(fifo_entry[37]), .B1(n201), .B2(
        fifo_entry[117]), .ZN(n117) );
  AOI22D0BWP12T30P140 U488 ( .A1(n204), .A2(fifo_entry[77]), .B1(n203), .B2(
        fifo_entry[197]), .ZN(n116) );
  AOI22D0BWP12T30P140 U489 ( .A1(n206), .A2(fifo_entry[277]), .B1(n205), .B2(
        fifo_entry[237]), .ZN(n115) );
  AOI22D0BWP12T30P140 U490 ( .A1(n624), .A2(fifo_entry[157]), .B1(n207), .B2(
        fifo_entry[317]), .ZN(n114) );
  ND4D0BWP12T30P140 U491 ( .A1(n117), .A2(n116), .A3(n115), .A4(n114), .ZN(
        n545) );
  MAOI22D0BWP12T30P140 U492 ( .A1(n585), .A2(n606), .B1(fifo_entry[18]), .B2(
        n584), .ZN(n380) );
  AOI22D0BWP12T30P140 U493 ( .A1(n202), .A2(fifo_entry[36]), .B1(n191), .B2(
        fifo_entry[116]), .ZN(n121) );
  AOI22D0BWP12T30P140 U494 ( .A1(n204), .A2(fifo_entry[76]), .B1(n203), .B2(
        fifo_entry[196]), .ZN(n120) );
  AOI22D0BWP12T30P140 U495 ( .A1(n192), .A2(fifo_entry[276]), .B1(n205), .B2(
        fifo_entry[236]), .ZN(n119) );
  AOI22D0BWP12T30P140 U496 ( .A1(n624), .A2(fifo_entry[156]), .B1(n623), .B2(
        fifo_entry[316]), .ZN(n118) );
  ND4D0BWP12T30P140 U497 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .ZN(
        n546) );
  MAOI22D0BWP12T30P140 U498 ( .A1(n585), .A2(n122), .B1(fifo_entry[19]), .B2(
        n584), .ZN(n381) );
  AOI22D0BWP12T30P140 U499 ( .A1(n149), .A2(fifo_entry[17]), .B1(n191), .B2(
        fifo_entry[97]), .ZN(n126) );
  AOI22D0BWP12T30P140 U500 ( .A1(n151), .A2(fifo_entry[57]), .B1(n150), .B2(
        fifo_entry[177]), .ZN(n125) );
  AOI22D0BWP12T30P140 U501 ( .A1(n192), .A2(fifo_entry[257]), .B1(n152), .B2(
        fifo_entry[217]), .ZN(n124) );
  AOI22D0BWP12T30P140 U502 ( .A1(n609), .A2(fifo_entry[137]), .B1(n623), .B2(
        fifo_entry[297]), .ZN(n123) );
  ND4D0BWP12T30P140 U503 ( .A1(n126), .A2(n125), .A3(n124), .A4(n123), .ZN(
        n565) );
  MAOI22D0BWP12T30P140 U504 ( .A1(n131), .A2(n602), .B1(fifo_entry[155]), .B2(
        n136), .ZN(n465) );
  AOI22D0BWP12T30P140 U505 ( .A1(n149), .A2(fifo_entry[14]), .B1(n617), .B2(
        fifo_entry[94]), .ZN(n130) );
  AOI22D0BWP12T30P140 U506 ( .A1(n151), .A2(fifo_entry[54]), .B1(n150), .B2(
        fifo_entry[174]), .ZN(n129) );
  AOI22D0BWP12T30P140 U507 ( .A1(n622), .A2(fifo_entry[254]), .B1(n152), .B2(
        fifo_entry[214]), .ZN(n128) );
  AOI22D0BWP12T30P140 U508 ( .A1(n624), .A2(fifo_entry[134]), .B1(n623), .B2(
        fifo_entry[294]), .ZN(n127) );
  ND4D0BWP12T30P140 U509 ( .A1(n130), .A2(n129), .A3(n128), .A4(n127), .ZN(
        n568) );
  MAOI22D0BWP12T30P140 U510 ( .A1(n131), .A2(n596), .B1(fifo_entry[154]), .B2(
        n137), .ZN(n466) );
  AOI22D0BWP12T30P140 U511 ( .A1(n618), .A2(fifo_entry[10]), .B1(n617), .B2(
        fifo_entry[90]), .ZN(n135) );
  AOI22D0BWP12T30P140 U512 ( .A1(n620), .A2(fifo_entry[50]), .B1(n619), .B2(
        fifo_entry[170]), .ZN(n134) );
  AOI22D0BWP12T30P140 U513 ( .A1(n622), .A2(fifo_entry[250]), .B1(n621), .B2(
        fifo_entry[210]), .ZN(n133) );
  AOI22D0BWP12T30P140 U514 ( .A1(n609), .A2(fifo_entry[130]), .B1(n600), .B2(
        fifo_entry[290]), .ZN(n132) );
  ND4D0BWP12T30P140 U515 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .ZN(
        n572) );
  MAOI22D0BWP12T30P140 U516 ( .A1(n137), .A2(n591), .B1(fifo_entry[149]), .B2(
        n136), .ZN(n471) );
  MAOI22D0BWP12T30P140 U517 ( .A1(n138), .A2(n606), .B1(fifo_entry[138]), .B2(
        n148), .ZN(n500) );
  MAOI22D0BWP12T30P140 U518 ( .A1(n138), .A2(n590), .B1(fifo_entry[126]), .B2(
        n147), .ZN(n488) );
  MAOI22D0BWP12T30P140 U519 ( .A1(n138), .A2(n605), .B1(fifo_entry[137]), .B2(
        n147), .ZN(n499) );
  MAOI22D0BWP12T30P140 U520 ( .A1(n138), .A2(n604), .B1(fifo_entry[127]), .B2(
        n148), .ZN(n489) );
  MAOI22D0BWP12T30P140 U521 ( .A1(n138), .A2(n615), .B1(fifo_entry[136]), .B2(
        n148), .ZN(n498) );
  AOI22D0BWP12T30P140 U522 ( .A1(n618), .A2(fifo_entry[13]), .B1(n191), .B2(
        fifo_entry[93]), .ZN(n142) );
  AOI22D0BWP12T30P140 U523 ( .A1(n620), .A2(fifo_entry[53]), .B1(n619), .B2(
        fifo_entry[173]), .ZN(n141) );
  AOI22D0BWP12T30P140 U524 ( .A1(n192), .A2(fifo_entry[253]), .B1(n621), .B2(
        fifo_entry[213]), .ZN(n140) );
  AOI22D0BWP12T30P140 U525 ( .A1(n609), .A2(fifo_entry[133]), .B1(n600), .B2(
        fifo_entry[293]), .ZN(n139) );
  ND4D0BWP12T30P140 U526 ( .A1(n142), .A2(n141), .A3(n140), .A4(n139), .ZN(
        n569) );
  MAOI22D0BWP12T30P140 U527 ( .A1(n148), .A2(n602), .B1(fifo_entry[135]), .B2(
        n147), .ZN(n497) );
  AOI22D0BWP12T30P140 U528 ( .A1(n618), .A2(fifo_entry[16]), .B1(n617), .B2(
        fifo_entry[96]), .ZN(n146) );
  AOI22D0BWP12T30P140 U529 ( .A1(n620), .A2(fifo_entry[56]), .B1(n619), .B2(
        fifo_entry[176]), .ZN(n145) );
  AOI22D0BWP12T30P140 U530 ( .A1(n622), .A2(fifo_entry[256]), .B1(n621), .B2(
        fifo_entry[216]), .ZN(n144) );
  AOI22D0BWP12T30P140 U531 ( .A1(n624), .A2(fifo_entry[136]), .B1(n207), .B2(
        fifo_entry[296]), .ZN(n143) );
  ND4D0BWP12T30P140 U532 ( .A1(n146), .A2(n145), .A3(n144), .A4(n143), .ZN(
        n566) );
  MAOI22D0BWP12T30P140 U533 ( .A1(n148), .A2(n595), .B1(fifo_entry[133]), .B2(
        n147), .ZN(n495) );
  AOI22D0BWP12T30P140 U534 ( .A1(n149), .A2(fifo_entry[19]), .B1(n191), .B2(
        fifo_entry[99]), .ZN(n156) );
  AOI22D0BWP12T30P140 U535 ( .A1(n151), .A2(fifo_entry[59]), .B1(n150), .B2(
        fifo_entry[179]), .ZN(n155) );
  AOI22D0BWP12T30P140 U536 ( .A1(n192), .A2(fifo_entry[259]), .B1(n152), .B2(
        fifo_entry[219]), .ZN(n154) );
  AOI22D0BWP12T30P140 U537 ( .A1(n609), .A2(fifo_entry[139]), .B1(n623), .B2(
        fifo_entry[299]), .ZN(n153) );
  ND4D0BWP12T30P140 U538 ( .A1(n156), .A2(n155), .A3(n154), .A4(n153), .ZN(
        n563) );
  MAOI22D0BWP12T30P140 U539 ( .A1(n158), .A2(n604), .B1(fifo_entry[287]), .B2(
        n157), .ZN(n509) );
  AOI22D0BWP12T30P140 U540 ( .A1(n202), .A2(fifo_entry[30]), .B1(n191), .B2(
        fifo_entry[110]), .ZN(n162) );
  AOI22D0BWP12T30P140 U541 ( .A1(n204), .A2(fifo_entry[70]), .B1(n203), .B2(
        fifo_entry[190]), .ZN(n161) );
  AOI22D0BWP12T30P140 U542 ( .A1(n192), .A2(fifo_entry[270]), .B1(n205), .B2(
        fifo_entry[230]), .ZN(n160) );
  AOI22D0BWP12T30P140 U543 ( .A1(n624), .A2(fifo_entry[150]), .B1(n207), .B2(
        fifo_entry[310]), .ZN(n159) );
  ND4D0BWP12T30P140 U544 ( .A1(n162), .A2(n161), .A3(n160), .A4(n159), .ZN(
        n552) );
  AOI22D0BWP12T30P140 U545 ( .A1(n202), .A2(fifo_entry[29]), .B1(n201), .B2(
        fifo_entry[109]), .ZN(n166) );
  AOI22D0BWP12T30P140 U546 ( .A1(n204), .A2(fifo_entry[69]), .B1(n203), .B2(
        fifo_entry[189]), .ZN(n165) );
  AOI22D0BWP12T30P140 U547 ( .A1(n206), .A2(fifo_entry[269]), .B1(n205), .B2(
        fifo_entry[229]), .ZN(n164) );
  AOI22D0BWP12T30P140 U548 ( .A1(n624), .A2(fifo_entry[149]), .B1(n207), .B2(
        fifo_entry[309]), .ZN(n163) );
  ND4D0BWP12T30P140 U549 ( .A1(n166), .A2(n165), .A3(n164), .A4(n163), .ZN(
        n553) );
  AOI22D0BWP12T30P140 U550 ( .A1(n202), .A2(fifo_entry[31]), .B1(n191), .B2(
        fifo_entry[111]), .ZN(n170) );
  AOI22D0BWP12T30P140 U551 ( .A1(n204), .A2(fifo_entry[71]), .B1(n203), .B2(
        fifo_entry[191]), .ZN(n169) );
  AOI22D0BWP12T30P140 U552 ( .A1(n192), .A2(fifo_entry[271]), .B1(n205), .B2(
        fifo_entry[231]), .ZN(n168) );
  AOI22D0BWP12T30P140 U553 ( .A1(n624), .A2(fifo_entry[151]), .B1(n207), .B2(
        fifo_entry[311]), .ZN(n167) );
  ND4D0BWP12T30P140 U554 ( .A1(n170), .A2(n169), .A3(n168), .A4(n167), .ZN(
        n551) );
  AOI22D0BWP12T30P140 U555 ( .A1(n202), .A2(fifo_entry[28]), .B1(n191), .B2(
        fifo_entry[108]), .ZN(n174) );
  AOI22D0BWP12T30P140 U556 ( .A1(n204), .A2(fifo_entry[68]), .B1(n203), .B2(
        fifo_entry[188]), .ZN(n173) );
  AOI22D0BWP12T30P140 U557 ( .A1(n192), .A2(fifo_entry[268]), .B1(n205), .B2(
        fifo_entry[228]), .ZN(n172) );
  AOI22D0BWP12T30P140 U558 ( .A1(n624), .A2(fifo_entry[148]), .B1(n207), .B2(
        fifo_entry[308]), .ZN(n171) );
  ND4D0BWP12T30P140 U559 ( .A1(n174), .A2(n173), .A3(n172), .A4(n171), .ZN(
        n554) );
  AOI22D0BWP12T30P140 U560 ( .A1(n202), .A2(fifo_entry[32]), .B1(n201), .B2(
        fifo_entry[112]), .ZN(n178) );
  AOI22D0BWP12T30P140 U561 ( .A1(n204), .A2(fifo_entry[72]), .B1(n203), .B2(
        fifo_entry[192]), .ZN(n177) );
  AOI22D0BWP12T30P140 U562 ( .A1(n206), .A2(fifo_entry[272]), .B1(n205), .B2(
        fifo_entry[232]), .ZN(n176) );
  AOI22D0BWP12T30P140 U563 ( .A1(n624), .A2(fifo_entry[152]), .B1(n207), .B2(
        fifo_entry[312]), .ZN(n175) );
  ND4D0BWP12T30P140 U564 ( .A1(n178), .A2(n177), .A3(n176), .A4(n175), .ZN(
        n550) );
  AOI22D0BWP12T30P140 U565 ( .A1(n202), .A2(fifo_entry[27]), .B1(n201), .B2(
        fifo_entry[107]), .ZN(n182) );
  AOI22D0BWP12T30P140 U566 ( .A1(n204), .A2(fifo_entry[67]), .B1(n203), .B2(
        fifo_entry[187]), .ZN(n181) );
  AOI22D0BWP12T30P140 U567 ( .A1(n206), .A2(fifo_entry[267]), .B1(n205), .B2(
        fifo_entry[227]), .ZN(n180) );
  AOI22D0BWP12T30P140 U568 ( .A1(n624), .A2(fifo_entry[147]), .B1(n207), .B2(
        fifo_entry[307]), .ZN(n179) );
  ND4D0BWP12T30P140 U569 ( .A1(n182), .A2(n181), .A3(n180), .A4(n179), .ZN(
        n555) );
  AOI22D0BWP12T30P140 U570 ( .A1(n202), .A2(fifo_entry[33]), .B1(n201), .B2(
        fifo_entry[113]), .ZN(n186) );
  AOI22D0BWP12T30P140 U571 ( .A1(n204), .A2(fifo_entry[73]), .B1(n203), .B2(
        fifo_entry[193]), .ZN(n185) );
  AOI22D0BWP12T30P140 U572 ( .A1(n206), .A2(fifo_entry[273]), .B1(n205), .B2(
        fifo_entry[233]), .ZN(n184) );
  AOI22D0BWP12T30P140 U573 ( .A1(n624), .A2(fifo_entry[153]), .B1(n207), .B2(
        fifo_entry[313]), .ZN(n183) );
  ND4D0BWP12T30P140 U574 ( .A1(n186), .A2(n185), .A3(n184), .A4(n183), .ZN(
        n549) );
  AOI22D0BWP12T30P140 U575 ( .A1(n202), .A2(fifo_entry[26]), .B1(n201), .B2(
        fifo_entry[106]), .ZN(n190) );
  AOI22D0BWP12T30P140 U576 ( .A1(n204), .A2(fifo_entry[66]), .B1(n203), .B2(
        fifo_entry[186]), .ZN(n189) );
  AOI22D0BWP12T30P140 U577 ( .A1(n206), .A2(fifo_entry[266]), .B1(n205), .B2(
        fifo_entry[226]), .ZN(n188) );
  AOI22D0BWP12T30P140 U578 ( .A1(n624), .A2(fifo_entry[146]), .B1(n623), .B2(
        fifo_entry[306]), .ZN(n187) );
  ND4D0BWP12T30P140 U579 ( .A1(n190), .A2(n189), .A3(n188), .A4(n187), .ZN(
        n556) );
  AOI22D0BWP12T30P140 U580 ( .A1(n202), .A2(fifo_entry[34]), .B1(n191), .B2(
        fifo_entry[114]), .ZN(n196) );
  AOI22D0BWP12T30P140 U581 ( .A1(n204), .A2(fifo_entry[74]), .B1(n203), .B2(
        fifo_entry[194]), .ZN(n195) );
  AOI22D0BWP12T30P140 U582 ( .A1(n192), .A2(fifo_entry[274]), .B1(n205), .B2(
        fifo_entry[234]), .ZN(n194) );
  AOI22D0BWP12T30P140 U583 ( .A1(n624), .A2(fifo_entry[154]), .B1(n623), .B2(
        fifo_entry[314]), .ZN(n193) );
  ND4D0BWP12T30P140 U584 ( .A1(n196), .A2(n195), .A3(n194), .A4(n193), .ZN(
        n548) );
  AOI22D0BWP12T30P140 U585 ( .A1(n618), .A2(fifo_entry[25]), .B1(n617), .B2(
        fifo_entry[105]), .ZN(n200) );
  AOI22D0BWP12T30P140 U586 ( .A1(n620), .A2(fifo_entry[65]), .B1(n619), .B2(
        fifo_entry[185]), .ZN(n199) );
  AOI22D0BWP12T30P140 U587 ( .A1(n622), .A2(fifo_entry[265]), .B1(n621), .B2(
        fifo_entry[225]), .ZN(n198) );
  AOI22D0BWP12T30P140 U588 ( .A1(n609), .A2(fifo_entry[145]), .B1(n207), .B2(
        fifo_entry[305]), .ZN(n197) );
  ND4D0BWP12T30P140 U589 ( .A1(n200), .A2(n199), .A3(n198), .A4(n197), .ZN(
        n557) );
  AOI22D0BWP12T30P140 U590 ( .A1(n202), .A2(fifo_entry[35]), .B1(n201), .B2(
        fifo_entry[115]), .ZN(n211) );
  AOI22D0BWP12T30P140 U591 ( .A1(n204), .A2(fifo_entry[75]), .B1(n203), .B2(
        fifo_entry[195]), .ZN(n210) );
  AOI22D0BWP12T30P140 U592 ( .A1(n206), .A2(fifo_entry[275]), .B1(n205), .B2(
        fifo_entry[235]), .ZN(n209) );
  AOI22D0BWP12T30P140 U593 ( .A1(n624), .A2(fifo_entry[155]), .B1(n207), .B2(
        fifo_entry[315]), .ZN(n208) );
  ND4D0BWP12T30P140 U594 ( .A1(n211), .A2(n210), .A3(n209), .A4(n208), .ZN(
        n547) );
  AOI22D0BWP12T30P140 U595 ( .A1(n618), .A2(fifo_entry[24]), .B1(n617), .B2(
        fifo_entry[104]), .ZN(n215) );
  AOI22D0BWP12T30P140 U596 ( .A1(n620), .A2(fifo_entry[64]), .B1(n619), .B2(
        fifo_entry[184]), .ZN(n214) );
  AOI22D0BWP12T30P140 U597 ( .A1(n622), .A2(fifo_entry[264]), .B1(n621), .B2(
        fifo_entry[224]), .ZN(n213) );
  AOI22D0BWP12T30P140 U598 ( .A1(n624), .A2(fifo_entry[144]), .B1(n623), .B2(
        fifo_entry[304]), .ZN(n212) );
  ND4D0BWP12T30P140 U599 ( .A1(n215), .A2(n214), .A3(n213), .A4(n212), .ZN(
        n558) );
  AOI22D0BWP12T30P140 U600 ( .A1(n618), .A2(fifo_entry[22]), .B1(n617), .B2(
        fifo_entry[102]), .ZN(n583) );
  AOI22D0BWP12T30P140 U601 ( .A1(n620), .A2(fifo_entry[62]), .B1(n619), .B2(
        fifo_entry[182]), .ZN(n218) );
  AOI22D0BWP12T30P140 U602 ( .A1(n622), .A2(fifo_entry[262]), .B1(n621), .B2(
        fifo_entry[222]), .ZN(n217) );
  AOI22D0BWP12T30P140 U603 ( .A1(n624), .A2(fifo_entry[142]), .B1(n623), .B2(
        fifo_entry[302]), .ZN(n216) );
  ND4D0BWP12T30P140 U604 ( .A1(n583), .A2(n218), .A3(n217), .A4(n216), .ZN(
        n560) );
  MAOI22D0BWP12T30P140 U605 ( .A1(n585), .A2(n604), .B1(fifo_entry[7]), .B2(
        n584), .ZN(n369) );
  MAOI22D0BWP12T30P140 U606 ( .A1(n587), .A2(n586), .B1(fifo_entry[240]), .B2(
        n587), .ZN(n322) );
  MAOI22D0BWP12T30P140 U607 ( .A1(n597), .A2(n588), .B1(fifo_entry[164]), .B2(
        n601), .ZN(n246) );
  MAOI22D0BWP12T30P140 U608 ( .A1(n597), .A2(n589), .B1(fifo_entry[165]), .B2(
        n603), .ZN(n247) );
  MAOI22D0BWP12T30P140 U609 ( .A1(n597), .A2(n590), .B1(fifo_entry[166]), .B2(
        n601), .ZN(n248) );
  MAOI22D0BWP12T30P140 U610 ( .A1(n597), .A2(n604), .B1(fifo_entry[167]), .B2(
        n603), .ZN(n249) );
  MAOI22D0BWP12T30P140 U611 ( .A1(n597), .A2(n608), .B1(fifo_entry[168]), .B2(
        n601), .ZN(n250) );
  MAOI22D0BWP12T30P140 U612 ( .A1(n601), .A2(n591), .B1(fifo_entry[169]), .B2(
        n603), .ZN(n251) );
  MAOI22D0BWP12T30P140 U613 ( .A1(n597), .A2(n592), .B1(fifo_entry[170]), .B2(
        n601), .ZN(n252) );
  MAOI22D0BWP12T30P140 U614 ( .A1(n597), .A2(n593), .B1(fifo_entry[171]), .B2(
        n601), .ZN(n253) );
  MAOI22D0BWP12T30P140 U615 ( .A1(n601), .A2(n594), .B1(fifo_entry[172]), .B2(
        n601), .ZN(n254) );
  MAOI22D0BWP12T30P140 U616 ( .A1(n603), .A2(n595), .B1(fifo_entry[173]), .B2(
        n601), .ZN(n255) );
  MAOI22D0BWP12T30P140 U617 ( .A1(n597), .A2(n596), .B1(fifo_entry[174]), .B2(
        n603), .ZN(n256) );
  OAI21D0BWP12T30P140 U618 ( .A1(n600), .A2(n599), .B(n598), .ZN(
        fifo_rd_addr_d[2]) );
  MAOI22D0BWP12T30P140 U619 ( .A1(n603), .A2(n602), .B1(fifo_entry[175]), .B2(
        n601), .ZN(n257) );
  MAOI22D0BWP12T30P140 U620 ( .A1(n616), .A2(n604), .B1(fifo_entry[207]), .B2(
        n614), .ZN(n289) );
  MAOI22D0BWP12T30P140 U621 ( .A1(n616), .A2(n605), .B1(fifo_entry[217]), .B2(
        n607), .ZN(n299) );
  MAOI22D0BWP12T30P140 U622 ( .A1(n616), .A2(n606), .B1(fifo_entry[218]), .B2(
        n614), .ZN(n300) );
  MAOI22D0BWP12T30P140 U623 ( .A1(n616), .A2(n608), .B1(fifo_entry[208]), .B2(
        n607), .ZN(n290) );
  AOI22D0BWP12T30P140 U624 ( .A1(n618), .A2(fifo_entry[8]), .B1(n617), .B2(
        fifo_entry[88]), .ZN(n613) );
  AOI22D0BWP12T30P140 U625 ( .A1(n620), .A2(fifo_entry[48]), .B1(n619), .B2(
        fifo_entry[168]), .ZN(n612) );
  AOI22D0BWP12T30P140 U626 ( .A1(n622), .A2(fifo_entry[248]), .B1(n621), .B2(
        fifo_entry[208]), .ZN(n611) );
  AOI22D0BWP12T30P140 U627 ( .A1(n609), .A2(fifo_entry[128]), .B1(n623), .B2(
        fifo_entry[288]), .ZN(n610) );
  ND4D0BWP12T30P140 U628 ( .A1(n613), .A2(n612), .A3(n611), .A4(n610), .ZN(
        n574) );
  MAOI22D0BWP12T30P140 U629 ( .A1(n616), .A2(n615), .B1(fifo_entry[216]), .B2(
        n614), .ZN(n298) );
  AOI22D0BWP12T30P140 U630 ( .A1(n618), .A2(fifo_entry[20]), .B1(n617), .B2(
        fifo_entry[100]), .ZN(n628) );
  AOI22D0BWP12T30P140 U631 ( .A1(n620), .A2(fifo_entry[60]), .B1(n619), .B2(
        fifo_entry[180]), .ZN(n627) );
  AOI22D0BWP12T30P140 U632 ( .A1(n622), .A2(fifo_entry[260]), .B1(n621), .B2(
        fifo_entry[220]), .ZN(n626) );
  AOI22D0BWP12T30P140 U633 ( .A1(n624), .A2(fifo_entry[140]), .B1(n623), .B2(
        fifo_entry[300]), .ZN(n625) );
  ND4D0BWP12T30P140 U634 ( .A1(n628), .A2(n627), .A3(n626), .A4(n625), .ZN(
        n562) );
  CKBD0BWP12T30P140 U635 ( .I(wr_clk), .Z(n653) );
  CKBD0BWP12T30P140 U636 ( .I(n653), .Z(n665) );
  CKBD0BWP12T30P140 U637 ( .I(rd_clk), .Z(n631) );
  CKBD0BWP12T30P140 U638 ( .I(wr_clk), .Z(n651) );
  CKBD0BWP12T30P140 U639 ( .I(n651), .Z(n662) );
  CKBD0BWP12T30P140 U640 ( .I(n651), .Z(n664) );
  CKBD0BWP12T30P140 U641 ( .I(wr_clk), .Z(n652) );
  CKBD0BWP12T30P140 U642 ( .I(n652), .Z(n658) );
  CKBD0BWP12T30P140 U643 ( .I(wr_clk), .Z(n650) );
  CKBD0BWP12T30P140 U644 ( .I(n650), .Z(n663) );
  CKBD0BWP12T30P140 U645 ( .I(wr_clk), .Z(n656) );
  CKBD0BWP12T30P140 U646 ( .I(n656), .Z(n655) );
  CKBD0BWP12T30P140 U647 ( .I(n655), .Z(n660) );
  CKBD0BWP12T30P140 U648 ( .I(n660), .Z(n657) );
  CKBD0BWP12T30P140 U649 ( .I(n660), .Z(n659) );
  CKBD0BWP12T30P140 U650 ( .I(n650), .Z(n661) );
  CKBD0BWP12T30P140 U651 ( .I(rd_clk), .Z(n632) );
  CKBD0BWP12T30P140 U652 ( .I(wr_clk), .Z(n654) );
  CKBD0BWP12T30P140 U653 ( .I(n654), .Z(n666) );
  CKBD0BWP12T30P140 U654 ( .I(wr_reset_), .Z(n647) );
  CKBD0BWP12T30P140 U655 ( .I(n647), .Z(n635) );
  CKBD0BWP12T30P140 U656 ( .I(n645), .Z(n643) );
  CKBD0BWP12T30P140 U657 ( .I(n644), .Z(n637) );
  CKBD0BWP12T30P140 U658 ( .I(wr_reset_), .Z(n649) );
  CKBD0BWP12T30P140 U659 ( .I(n649), .Z(n640) );
  CKBD0BWP12T30P140 U660 ( .I(rd_reset_), .Z(n629) );
  CKBD0BWP12T30P140 U661 ( .I(rd_reset_), .Z(n630) );
  CKBD0BWP12T30P140 U662 ( .I(wr_reset_), .Z(n648) );
  CKBD0BWP12T30P140 U663 ( .I(n648), .Z(n634) );
  CKBD0BWP12T30P140 U664 ( .I(n649), .Z(n633) );
  CKBD0BWP12T30P140 U665 ( .I(n645), .Z(n644) );
  CKBD0BWP12T30P140 U666 ( .I(n644), .Z(n638) );
  CKBD0BWP12T30P140 U667 ( .I(n638), .Z(n642) );
  CKBD0BWP12T30P140 U668 ( .I(n648), .Z(n641) );
  CKBD0BWP12T30P140 U669 ( .I(wr_reset_), .Z(n646) );
  CKBD0BWP12T30P140 U670 ( .I(n646), .Z(n636) );
  CKBD0BWP12T30P140 U671 ( .I(n647), .Z(n639) );
endmodule


module sip_rxaui_rx_glue ( comma_aligned_en, rxdata_serdes0, rxdata_serdes1, 
        rx_clk0, rx_clk1, media_interface_mode, serdes_mode, 
        rxdata_rxaui_lane0, rxdata_rxaui_lane1, serdes_rx_data, lane0_sync_ok, 
        lane1_sync_ok );
  output [19:0] rxdata_serdes0;
  output [19:0] rxdata_serdes1;
  input [19:0] rxdata_rxaui_lane0;
  input [19:0] rxdata_rxaui_lane1;
  input [19:0] serdes_rx_data;
  input rx_clk0, rx_clk1, media_interface_mode, serdes_mode, lane0_sync_ok,
         lane1_sync_ok;
  output comma_aligned_en;
  wire   n1;
  wire   [19:0] rxdata_serdes0_d;

  DFND1BWP12T30P140 rxdata_serdes0_reg_19_ ( .D(rxdata_serdes0_d[19]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[19]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_18_ ( .D(rxdata_serdes0_d[18]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[18]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_17_ ( .D(rxdata_serdes0_d[17]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[17]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_16_ ( .D(rxdata_serdes0_d[16]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[16]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_15_ ( .D(rxdata_serdes0_d[15]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[15]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_14_ ( .D(rxdata_serdes0_d[14]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[14]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_13_ ( .D(rxdata_serdes0_d[13]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[13]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_12_ ( .D(rxdata_serdes0_d[12]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[12]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_11_ ( .D(rxdata_serdes0_d[11]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[11]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_10_ ( .D(rxdata_serdes0_d[10]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[10]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_9_ ( .D(rxdata_serdes0_d[9]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[9]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_8_ ( .D(rxdata_serdes0_d[8]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[8]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_7_ ( .D(rxdata_serdes0_d[7]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[7]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_6_ ( .D(rxdata_serdes0_d[6]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[6]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_5_ ( .D(rxdata_serdes0_d[5]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[5]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_4_ ( .D(rxdata_serdes0_d[4]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[4]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_3_ ( .D(rxdata_serdes0_d[3]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[3]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_2_ ( .D(rxdata_serdes0_d[2]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[2]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_1_ ( .D(rxdata_serdes0_d[1]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[1]) );
  DFND1BWP12T30P140 rxdata_serdes0_reg_0_ ( .D(rxdata_serdes0_d[0]), .CPN(
        rx_clk0), .Q(rxdata_serdes0[0]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_19_ ( .D(rxdata_rxaui_lane1[19]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[19]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_18_ ( .D(rxdata_rxaui_lane1[18]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[18]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_17_ ( .D(rxdata_rxaui_lane1[17]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[17]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_16_ ( .D(rxdata_rxaui_lane1[16]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[16]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_15_ ( .D(rxdata_rxaui_lane1[15]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[15]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_14_ ( .D(rxdata_rxaui_lane1[14]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[14]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_13_ ( .D(rxdata_rxaui_lane1[13]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[13]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_12_ ( .D(rxdata_rxaui_lane1[12]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[12]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_11_ ( .D(rxdata_rxaui_lane1[11]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[11]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_10_ ( .D(rxdata_rxaui_lane1[10]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[10]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_9_ ( .D(rxdata_rxaui_lane1[9]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[9]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_8_ ( .D(rxdata_rxaui_lane1[8]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[8]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_7_ ( .D(rxdata_rxaui_lane1[7]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[7]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_6_ ( .D(rxdata_rxaui_lane1[6]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[6]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_5_ ( .D(rxdata_rxaui_lane1[5]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[5]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_4_ ( .D(rxdata_rxaui_lane1[4]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[4]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_3_ ( .D(rxdata_rxaui_lane1[3]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[3]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_2_ ( .D(rxdata_rxaui_lane1[2]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[2]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_1_ ( .D(rxdata_rxaui_lane1[1]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[1]) );
  DFND1BWP12T30P140 rxdata_serdes1_reg_0_ ( .D(rxdata_rxaui_lane1[0]), .CPN(
        rx_clk1), .Q(rxdata_serdes1[0]) );
  NR2D1BWP12T30P140 U3 ( .A1(media_interface_mode), .A2(serdes_mode), .ZN(n1)
         );
  CKMUX2D0BWP12T30P140 U4 ( .I0(rxdata_rxaui_lane0[0]), .I1(serdes_rx_data[0]), 
        .S(n1), .Z(rxdata_serdes0_d[0]) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(rxdata_rxaui_lane0[1]), .I1(serdes_rx_data[1]), 
        .S(n1), .Z(rxdata_serdes0_d[1]) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(rxdata_rxaui_lane0[2]), .I1(serdes_rx_data[2]), 
        .S(n1), .Z(rxdata_serdes0_d[2]) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(rxdata_rxaui_lane0[3]), .I1(serdes_rx_data[3]), 
        .S(n1), .Z(rxdata_serdes0_d[3]) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(rxdata_rxaui_lane0[4]), .I1(serdes_rx_data[4]), 
        .S(n1), .Z(rxdata_serdes0_d[4]) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(rxdata_rxaui_lane0[5]), .I1(serdes_rx_data[5]), 
        .S(n1), .Z(rxdata_serdes0_d[5]) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(rxdata_rxaui_lane0[6]), .I1(serdes_rx_data[6]), .S(n1), .Z(rxdata_serdes0_d[6]) );
  CKMUX2D0BWP12T30P140 U11 ( .I0(rxdata_rxaui_lane0[7]), .I1(serdes_rx_data[7]), .S(n1), .Z(rxdata_serdes0_d[7]) );
  CKMUX2D0BWP12T30P140 U12 ( .I0(rxdata_rxaui_lane0[8]), .I1(serdes_rx_data[8]), .S(n1), .Z(rxdata_serdes0_d[8]) );
  CKMUX2D0BWP12T30P140 U13 ( .I0(rxdata_rxaui_lane0[9]), .I1(serdes_rx_data[9]), .S(n1), .Z(rxdata_serdes0_d[9]) );
  CKMUX2D0BWP12T30P140 U14 ( .I0(rxdata_rxaui_lane0[10]), .I1(
        serdes_rx_data[10]), .S(n1), .Z(rxdata_serdes0_d[10]) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(rxdata_rxaui_lane0[12]), .I1(
        serdes_rx_data[12]), .S(n1), .Z(rxdata_serdes0_d[12]) );
  CKMUX2D0BWP12T30P140 U16 ( .I0(rxdata_rxaui_lane0[13]), .I1(
        serdes_rx_data[13]), .S(n1), .Z(rxdata_serdes0_d[13]) );
  CKMUX2D0BWP12T30P140 U17 ( .I0(rxdata_rxaui_lane0[14]), .I1(
        serdes_rx_data[14]), .S(n1), .Z(rxdata_serdes0_d[14]) );
  CKMUX2D0BWP12T30P140 U18 ( .I0(rxdata_rxaui_lane0[15]), .I1(
        serdes_rx_data[15]), .S(n1), .Z(rxdata_serdes0_d[15]) );
  CKMUX2D0BWP12T30P140 U19 ( .I0(rxdata_rxaui_lane0[16]), .I1(
        serdes_rx_data[16]), .S(n1), .Z(rxdata_serdes0_d[16]) );
  CKMUX2D0BWP12T30P140 U20 ( .I0(rxdata_rxaui_lane0[17]), .I1(
        serdes_rx_data[17]), .S(n1), .Z(rxdata_serdes0_d[17]) );
  CKMUX2D0BWP12T30P140 U21 ( .I0(rxdata_rxaui_lane0[18]), .I1(
        serdes_rx_data[18]), .S(n1), .Z(rxdata_serdes0_d[18]) );
  CKMUX2D0BWP12T30P140 U22 ( .I0(rxdata_rxaui_lane0[19]), .I1(
        serdes_rx_data[19]), .S(n1), .Z(rxdata_serdes0_d[19]) );
  CKMUX2D0BWP12T30P140 U23 ( .I0(rxdata_rxaui_lane0[11]), .I1(
        serdes_rx_data[11]), .S(n1), .Z(rxdata_serdes0_d[11]) );
  ND2D0BWP12T30P140 U24 ( .A1(lane0_sync_ok), .A2(lane1_sync_ok), .ZN(
        comma_aligned_en) );
endmodule


module sip_rxaui_rx_top ( lock, rxdata_serdes0, rxdata_serdes1, rxaui_status, 
        serdes_rx_clk, serdes_rx_clk_div2, serdes_rx_clk_reset_, 
        serdes_rx_clk_reset, serdes_rx_clk_div2_reset_, rx_clk0, rx_clk1, 
        media_interface_mode, serdes_mode, lane0_sync_ok, lane1_sync_ok, 
        s_sigdet, serdes_rx_data );
  output [19:0] rxdata_serdes0;
  output [19:0] rxdata_serdes1;
  output [8:0] rxaui_status;
  input [19:0] serdes_rx_data;
  input serdes_rx_clk, serdes_rx_clk_div2, serdes_rx_clk_reset_,
         serdes_rx_clk_reset, serdes_rx_clk_div2_reset_, rx_clk0, rx_clk1,
         media_interface_mode, serdes_mode, lane0_sync_ok, lane1_sync_ok,
         s_sigdet;
  output lock;
  wire   n_Logic1_, n_Logic0_, comma_aligned_en, n1;
  wire   [19:0] rx_aligned_data;
  wire   [9:0] lane0_rx;
  wire   [9:0] lane1_rx;
  wire   [19:0] rxdata_rxaui_lane1;
  wire   [19:0] rxdata_rxaui_lane0;

  sip_xpcs_comma_detect xpcs_comma_detect ( .lock(lock), .rout(rx_aligned_data), .bypass(n_Logic0_), .clk(serdes_rx_clk), .comma_valid0(n_Logic0_), 
        .comma_valid1(n_Logic0_), .commaa({n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_}), .commab({n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, 
        n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_, n_Logic0_}), 
        .data_special_valid0(n_Logic0_), .data_special_valid1(n_Logic0_), 
        .reset(serdes_rx_clk_reset), .rin(serdes_rx_data), .sel_comma(
        n_Logic1_), .sigdet(s_sigdet), .en_comma_align_glob(comma_aligned_en), 
        .rf_en_2sync(n_Logic0_) );
  sip_rxaui_aa_detection sip_rxaui_aa_detection ( .lane0_rx(lane0_rx), 
        .lane1_rx(lane1_rx), .rxaui_status(rxaui_status), .clk(n1), .reset_(
        serdes_rx_clk_reset_), .serdes_mode(serdes_mode), .rx_aligned_data(
        rx_aligned_data), .serdes_rx_data(serdes_rx_data) );
  sip_phase_sync_fifo_fast_2_slow sip_phase_sync_fifo_fast_2_slow ( 
        .fifo_data_out({rxdata_rxaui_lane1[19:10], rxdata_rxaui_lane0[19:10], 
        rxdata_rxaui_lane1[9:0], rxdata_rxaui_lane0[9:0]}), .wr_clk(n1), 
        .rd_clk(serdes_rx_clk_div2), .wr_reset_(serdes_rx_clk_reset_), 
        .rd_reset_(serdes_rx_clk_div2_reset_), .fifo_data_in({lane1_rx, 
        lane0_rx}) );
  sip_rxaui_rx_glue sip_rxaui_rx_glue ( .comma_aligned_en(comma_aligned_en), 
        .rxdata_serdes0(rxdata_serdes0), .rxdata_serdes1(rxdata_serdes1), 
        .rx_clk0(rx_clk0), .rx_clk1(rx_clk1), .media_interface_mode(
        media_interface_mode), .serdes_mode(serdes_mode), .rxdata_rxaui_lane0(
        rxdata_rxaui_lane0), .rxdata_rxaui_lane1(rxdata_rxaui_lane1), 
        .serdes_rx_data(serdes_rx_data), .lane0_sync_ok(lane0_sync_ok), 
        .lane1_sync_ok(lane1_sync_ok) );
  TIEHBWP12T30P140 U3 ( .Z(n_Logic1_) );
  TIELBWP12T30P140 U4 ( .ZN(n_Logic0_) );
  CKBD0BWP12T30P140 U5 ( .I(serdes_rx_clk), .Z(n1) );
endmodule


module sip_phase_sync_fifo_slow_2_fast_1 ( fifo_data_out, fifo_type, wr_clk, 
        rd_clk, wr_reset_, rd_reset_, fifo_data_in );
  output [19:0] fifo_data_out;
  input [19:0] fifo_data_in;
  input fifo_type, wr_clk, rd_clk, wr_reset_, rd_reset_;
  wire   inc_rd_ptr_, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351;
  wire   [2:0] fifo_wr_addr;
  wire   [2:1] fifo_wr_addr_d;
  wire   [2:0] fifo_rd_addr;
  wire   [159:0] fifo_entry;
  wire   [19:0] fifo_data_out_d;

  DFNCND1BWP12T30P140 fifo_wr_addr_reg_0_ ( .D(n333), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_wr_addr[0]), .QN(n333) );
  DFNCND1BWP12T30P140 fifo_wr_addr_reg_1_ ( .D(fifo_wr_addr_d[1]), .CPN(n344), 
        .CDN(n343), .Q(fifo_wr_addr[1]) );
  DFNCND1BWP12T30P140 fifo_wr_addr_reg_2_ ( .D(fifo_wr_addr_d[2]), .CPN(n344), 
        .CDN(wr_reset_), .Q(fifo_wr_addr[2]), .QN(n332) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__19_ ( .D(n313), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[159]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__0_ ( .D(n312), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[140]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__1_ ( .D(n311), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[141]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__2_ ( .D(n310), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[142]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__3_ ( .D(n309), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[143]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__4_ ( .D(n308), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[144]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__5_ ( .D(n307), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[145]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__6_ ( .D(n306), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[146]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__7_ ( .D(n305), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[147]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__8_ ( .D(n304), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[148]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__9_ ( .D(n303), .CPN(n345), .CDN(
        wr_reset_), .Q(fifo_entry[149]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__10_ ( .D(n302), .CPN(n345), .CDN(
        wr_reset_), .Q(fifo_entry[150]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__11_ ( .D(n301), .CPN(n345), .CDN(n336), 
        .Q(fifo_entry[151]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__12_ ( .D(n300), .CPN(n345), .CDN(n337), 
        .Q(fifo_entry[152]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__13_ ( .D(n299), .CPN(n345), .CDN(n338), 
        .Q(fifo_entry[153]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__14_ ( .D(n298), .CPN(n345), .CDN(n339), 
        .Q(fifo_entry[154]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__15_ ( .D(n297), .CPN(n345), .CDN(n340), 
        .Q(fifo_entry[155]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__16_ ( .D(n296), .CPN(n345), .CDN(n341), 
        .Q(fifo_entry[156]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__17_ ( .D(n295), .CPN(n345), .CDN(n342), 
        .Q(fifo_entry[157]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__18_ ( .D(n294), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[158]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__19_ ( .D(n293), .CPN(n345), .CDN(
        wr_reset_), .Q(fifo_entry[79]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__0_ ( .D(n292), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[60]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__1_ ( .D(n291), .CPN(n345), .CDN(n340), 
        .Q(fifo_entry[61]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__2_ ( .D(n290), .CPN(n346), .CDN(n343), 
        .Q(fifo_entry[62]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__3_ ( .D(n289), .CPN(n346), .CDN(n336), 
        .Q(fifo_entry[63]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__4_ ( .D(n288), .CPN(n346), .CDN(n337), 
        .Q(fifo_entry[64]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__5_ ( .D(n287), .CPN(n346), .CDN(n338), 
        .Q(fifo_entry[65]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__6_ ( .D(n286), .CPN(n346), .CDN(n339), 
        .Q(fifo_entry[66]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__7_ ( .D(n285), .CPN(n346), .CDN(n340), 
        .Q(fifo_entry[67]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__8_ ( .D(n284), .CPN(n346), .CDN(n341), 
        .Q(fifo_entry[68]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__9_ ( .D(n283), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[69]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__10_ ( .D(n282), .CPN(n346), .CDN(n343), 
        .Q(fifo_entry[70]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__11_ ( .D(n281), .CPN(n346), .CDN(
        wr_reset_), .Q(fifo_entry[71]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__12_ ( .D(n280), .CPN(n346), .CDN(n341), 
        .Q(fifo_entry[72]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__13_ ( .D(n279), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[73]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__14_ ( .D(n278), .CPN(n346), .CDN(n343), 
        .Q(fifo_entry[74]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__15_ ( .D(n277), .CPN(n351), .CDN(n339), 
        .Q(fifo_entry[75]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__16_ ( .D(n276), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[76]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__17_ ( .D(n275), .CPN(n344), .CDN(n336), 
        .Q(fifo_entry[77]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__18_ ( .D(n274), .CPN(n345), .CDN(n337), 
        .Q(fifo_entry[78]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__19_ ( .D(n273), .CPN(n346), .CDN(n338), 
        .Q(fifo_entry[39]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__0_ ( .D(n272), .CPN(n348), .CDN(n339), 
        .Q(fifo_entry[20]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__1_ ( .D(n271), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[21]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__2_ ( .D(n270), .CPN(n350), .CDN(n341), 
        .Q(fifo_entry[22]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__3_ ( .D(n269), .CPN(n349), .CDN(n342), 
        .Q(fifo_entry[23]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__4_ ( .D(n268), .CPN(n351), .CDN(n336), 
        .Q(fifo_entry[24]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__5_ ( .D(n267), .CPN(n345), .CDN(n337), 
        .Q(fifo_entry[25]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__6_ ( .D(n266), .CPN(n344), .CDN(n338), 
        .Q(fifo_entry[26]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__7_ ( .D(n265), .CPN(n345), .CDN(n339), 
        .Q(fifo_entry[27]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__8_ ( .D(n264), .CPN(n346), .CDN(n340), 
        .Q(fifo_entry[28]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__9_ ( .D(n263), .CPN(n348), .CDN(n341), 
        .Q(fifo_entry[29]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__10_ ( .D(n262), .CPN(n347), .CDN(n342), 
        .Q(fifo_entry[30]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__11_ ( .D(n261), .CPN(wr_clk), .CDN(
        n343), .Q(fifo_entry[31]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__12_ ( .D(n260), .CPN(n350), .CDN(n341), 
        .Q(fifo_entry[32]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__13_ ( .D(n259), .CPN(n349), .CDN(n336), 
        .Q(fifo_entry[33]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__14_ ( .D(n258), .CPN(n351), .CDN(n337), 
        .Q(fifo_entry[34]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__15_ ( .D(n257), .CPN(n344), .CDN(n338), 
        .Q(fifo_entry[35]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__16_ ( .D(n256), .CPN(n345), .CDN(n337), 
        .Q(fifo_entry[36]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__17_ ( .D(n255), .CPN(n346), .CDN(n338), 
        .Q(fifo_entry[37]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__18_ ( .D(n254), .CPN(n348), .CDN(n339), 
        .Q(fifo_entry[38]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__19_ ( .D(n253), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[19]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__0_ ( .D(n252), .CPN(wr_clk), .CDN(n341), .Q(fifo_entry[0]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__1_ ( .D(n251), .CPN(n347), .CDN(n342), 
        .Q(fifo_entry[1]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__2_ ( .D(n250), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[2]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__3_ ( .D(n249), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[3]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__4_ ( .D(n248), .CPN(n347), .CDN(n337), 
        .Q(fifo_entry[4]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__5_ ( .D(n247), .CPN(n347), .CDN(n338), 
        .Q(fifo_entry[5]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__6_ ( .D(n246), .CPN(n347), .CDN(n339), 
        .Q(fifo_entry[6]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__7_ ( .D(n245), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[7]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__8_ ( .D(n244), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[8]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__9_ ( .D(n243), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[9]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__10_ ( .D(n242), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[10]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__11_ ( .D(n241), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[11]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__12_ ( .D(n240), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[12]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__13_ ( .D(n239), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[13]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__14_ ( .D(n238), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[14]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__15_ ( .D(n237), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[15]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__16_ ( .D(n236), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[16]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__17_ ( .D(n235), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[17]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__18_ ( .D(n234), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[18]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__19_ ( .D(n233), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[99]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__0_ ( .D(n232), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[80]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__1_ ( .D(n231), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[81]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__2_ ( .D(n230), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[82]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__3_ ( .D(n229), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[83]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__4_ ( .D(n228), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[84]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__5_ ( .D(n227), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[85]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__6_ ( .D(n226), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[86]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__7_ ( .D(n225), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[87]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__8_ ( .D(n224), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[88]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__9_ ( .D(n223), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[89]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__10_ ( .D(n222), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[90]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__11_ ( .D(n221), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[91]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__12_ ( .D(n220), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[92]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__13_ ( .D(n219), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[93]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__14_ ( .D(n218), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[94]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__15_ ( .D(n217), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[95]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__16_ ( .D(n216), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[96]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__17_ ( .D(n215), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[97]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__18_ ( .D(n214), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[98]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__19_ ( .D(n213), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[119]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__0_ ( .D(n212), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[100]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__1_ ( .D(n211), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[101]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__2_ ( .D(n210), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[102]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__3_ ( .D(n209), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[103]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__4_ ( .D(n208), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[104]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__5_ ( .D(n207), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[105]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__6_ ( .D(n206), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[106]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__7_ ( .D(n205), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[107]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__8_ ( .D(n204), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[108]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__9_ ( .D(n203), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[109]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__10_ ( .D(n202), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[110]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__11_ ( .D(n201), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[111]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__12_ ( .D(n200), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[112]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__13_ ( .D(n199), .CPN(n351), .CDN(n339), 
        .Q(fifo_entry[113]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__14_ ( .D(n198), .CPN(n351), .CDN(n339), 
        .Q(fifo_entry[114]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__15_ ( .D(n197), .CPN(n351), .CDN(n339), 
        .Q(fifo_entry[115]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__16_ ( .D(n196), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[116]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__17_ ( .D(n195), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[117]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__18_ ( .D(n194), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[118]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__19_ ( .D(n193), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[59]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__0_ ( .D(n192), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[40]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__1_ ( .D(n191), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[41]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__2_ ( .D(n190), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[42]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__3_ ( .D(n189), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[43]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__4_ ( .D(n188), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[44]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__5_ ( .D(n187), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[45]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__6_ ( .D(n186), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[46]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__7_ ( .D(n185), .CPN(n350), .CDN(n340), 
        .Q(fifo_entry[47]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__8_ ( .D(n184), .CPN(n349), .CDN(n341), 
        .Q(fifo_entry[48]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__9_ ( .D(n183), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[49]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__10_ ( .D(n182), .CPN(n349), .CDN(n341), 
        .Q(fifo_entry[50]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__11_ ( .D(n181), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[51]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__12_ ( .D(n180), .CPN(n344), .CDN(n341), 
        .Q(fifo_entry[52]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__13_ ( .D(n179), .CPN(n345), .CDN(n341), 
        .Q(fifo_entry[53]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__14_ ( .D(n178), .CPN(n346), .CDN(n341), 
        .Q(fifo_entry[54]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__15_ ( .D(n177), .CPN(n348), .CDN(n341), 
        .Q(fifo_entry[55]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__16_ ( .D(n176), .CPN(n347), .CDN(n341), 
        .Q(fifo_entry[56]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__17_ ( .D(n175), .CPN(n350), .CDN(n341), 
        .Q(fifo_entry[57]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__18_ ( .D(n174), .CPN(n349), .CDN(n341), 
        .Q(fifo_entry[58]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__19_ ( .D(n173), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[139]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__0_ ( .D(n172), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[120]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__1_ ( .D(n171), .CPN(n350), .CDN(n342), 
        .Q(fifo_entry[121]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__2_ ( .D(n170), .CPN(n349), .CDN(n342), 
        .Q(fifo_entry[122]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__3_ ( .D(n169), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[123]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__4_ ( .D(n168), .CPN(n345), .CDN(n342), 
        .Q(fifo_entry[124]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__5_ ( .D(n167), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[125]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__6_ ( .D(n166), .CPN(n348), .CDN(n342), 
        .Q(fifo_entry[126]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__7_ ( .D(n165), .CPN(n347), .CDN(n342), 
        .Q(fifo_entry[127]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__8_ ( .D(n164), .CPN(n350), .CDN(n342), 
        .Q(fifo_entry[128]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__9_ ( .D(n163), .CPN(n349), .CDN(n342), 
        .Q(fifo_entry[129]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__10_ ( .D(n162), .CPN(n351), .CDN(n342), 
        .Q(fifo_entry[130]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__11_ ( .D(n161), .CPN(n348), .CDN(n342), 
        .Q(fifo_entry[131]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__12_ ( .D(n160), .CPN(wr_clk), .CDN(
        n343), .Q(fifo_entry[132]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__13_ ( .D(n159), .CPN(n350), .CDN(n343), 
        .Q(fifo_entry[133]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__14_ ( .D(n158), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[134]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__15_ ( .D(n157), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[135]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__16_ ( .D(n156), .CPN(n346), .CDN(n343), 
        .Q(fifo_entry[136]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__17_ ( .D(n155), .CPN(n348), .CDN(n343), 
        .Q(fifo_entry[137]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__18_ ( .D(n154), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[138]) );
  DFSNQD1BWP12T30P140 inc_rd_ptr__reg ( .D(n314), .CP(n335), .SDN(n334), .Q(
        inc_rd_ptr_) );
  DFSNQD1BWP12T30P140 fifo_rd_addr_reg_2_ ( .D(n151), .CP(n335), .SDN(n334), 
        .Q(fifo_rd_addr[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_0_ ( .D(fifo_data_out_d[0]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[0]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_1_ ( .D(fifo_data_out_d[1]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[1]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_2_ ( .D(fifo_data_out_d[2]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_3_ ( .D(fifo_data_out_d[3]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[3]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_4_ ( .D(fifo_data_out_d[4]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[4]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_5_ ( .D(fifo_data_out_d[5]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[5]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_6_ ( .D(fifo_data_out_d[6]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[6]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_7_ ( .D(fifo_data_out_d[7]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[7]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_8_ ( .D(fifo_data_out_d[8]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[8]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_9_ ( .D(fifo_data_out_d[9]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[9]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_19_ ( .D(fifo_data_out_d[19]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[19]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_10_ ( .D(fifo_data_out_d[10]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[10]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_11_ ( .D(fifo_data_out_d[11]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[11]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_12_ ( .D(fifo_data_out_d[12]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[12]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_13_ ( .D(fifo_data_out_d[13]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[13]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_14_ ( .D(fifo_data_out_d[14]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[14]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_15_ ( .D(fifo_data_out_d[15]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[15]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_16_ ( .D(fifo_data_out_d[16]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[16]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_17_ ( .D(fifo_data_out_d[17]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[17]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_18_ ( .D(fifo_data_out_d[18]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[18]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_0_ ( .D(n153), .CP(n335), .CDN(n334), 
        .Q(fifo_rd_addr[0]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_1_ ( .D(n152), .CP(n335), .CDN(n334), 
        .Q(fifo_rd_addr[1]) );
  INVD0BWP12T30P140 U3 ( .I(n110), .ZN(n1) );
  NR2D0BWP12T30P140 U4 ( .A1(fifo_wr_addr[2]), .A2(n130), .ZN(n115) );
  ND2D0BWP12T30P140 U5 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[1]), .ZN(n2)
         );
  NR2D0BWP12T30P140 U6 ( .A1(fifo_rd_addr[0]), .A2(n2), .ZN(n93) );
  INVD0BWP12T30P140 U7 ( .I(fifo_rd_addr[0]), .ZN(n124) );
  NR2D0BWP12T30P140 U8 ( .A1(n124), .A2(n2), .ZN(n95) );
  AOI22D0BWP12T30P140 U9 ( .A1(n93), .A2(fifo_entry[133]), .B1(n95), .B2(
        fifo_entry[153]), .ZN(n6) );
  INVD0BWP12T30P140 U10 ( .I(fifo_rd_addr[1]), .ZN(n122) );
  NR3D0BWP12T30P140 U11 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[2]), .A3(n122), .ZN(n90) );
  NR3D0BWP12T30P140 U12 ( .A1(fifo_rd_addr[2]), .A2(n124), .A3(n122), .ZN(n108) );
  AOI22D0BWP12T30P140 U13 ( .A1(n90), .A2(fifo_entry[53]), .B1(n1), .B2(
        fifo_entry[73]), .ZN(n5) );
  INVD0BWP12T30P140 U14 ( .I(fifo_rd_addr[2]), .ZN(n109) );
  NR3D0BWP12T30P140 U15 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[1]), .A3(n109), .ZN(n94) );
  NR3D0BWP12T30P140 U16 ( .A1(fifo_rd_addr[1]), .A2(n109), .A3(n124), .ZN(n96)
         );
  AOI22D0BWP12T30P140 U17 ( .A1(n94), .A2(fifo_entry[93]), .B1(n96), .B2(
        fifo_entry[113]), .ZN(n4) );
  NR3D0BWP12T30P140 U18 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[2]), .A3(
        fifo_rd_addr[1]), .ZN(n91) );
  NR3D0BWP12T30P140 U19 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[1]), .A3(n124), .ZN(n92) );
  AOI22D0BWP12T30P140 U20 ( .A1(n91), .A2(fifo_entry[13]), .B1(n92), .B2(
        fifo_entry[33]), .ZN(n3) );
  AN4D0BWP12T30P140 U21 ( .A1(n6), .A2(n5), .A3(n4), .A4(n3), .Z(n71) );
  NR2D0BWP12T30P140 U22 ( .A1(fifo_type), .A2(n71), .ZN(fifo_data_out_d[13])
         );
  INVD0BWP12T30P140 U23 ( .I(inc_rd_ptr_), .ZN(n314) );
  ND2D0BWP12T30P140 U24 ( .A1(n314), .A2(fifo_type), .ZN(n101) );
  INVD0BWP12T30P140 U25 ( .I(n101), .ZN(n104) );
  AOI22D0BWP12T30P140 U26 ( .A1(n93), .A2(fifo_entry[139]), .B1(n95), .B2(
        fifo_entry[159]), .ZN(n10) );
  AOI22D0BWP12T30P140 U27 ( .A1(n90), .A2(fifo_entry[59]), .B1(n108), .B2(
        fifo_entry[79]), .ZN(n9) );
  AOI22D0BWP12T30P140 U28 ( .A1(n94), .A2(fifo_entry[99]), .B1(n96), .B2(
        fifo_entry[119]), .ZN(n8) );
  AOI22D0BWP12T30P140 U29 ( .A1(n91), .A2(fifo_entry[19]), .B1(n92), .B2(
        fifo_entry[39]), .ZN(n7) );
  AN4D0BWP12T30P140 U30 ( .A1(n10), .A2(n9), .A3(n8), .A4(n7), .Z(n29) );
  AOI22D0BWP12T30P140 U31 ( .A1(n91), .A2(fifo_entry[9]), .B1(n90), .B2(
        fifo_entry[49]), .ZN(n14) );
  AOI22D0BWP12T30P140 U32 ( .A1(n92), .A2(fifo_entry[29]), .B1(n108), .B2(
        fifo_entry[69]), .ZN(n13) );
  AOI22D0BWP12T30P140 U33 ( .A1(n94), .A2(fifo_entry[89]), .B1(n93), .B2(
        fifo_entry[129]), .ZN(n12) );
  AOI22D0BWP12T30P140 U34 ( .A1(n96), .A2(fifo_entry[109]), .B1(n95), .B2(
        fifo_entry[149]), .ZN(n11) );
  AN4D0BWP12T30P140 U35 ( .A1(n14), .A2(n13), .A3(n12), .A4(n11), .Z(n15) );
  AOI22D0BWP12T30P140 U36 ( .A1(n104), .A2(n29), .B1(n15), .B2(n101), .ZN(
        fifo_data_out_d[9]) );
  AOI22D0BWP12T30P140 U37 ( .A1(n93), .A2(fifo_entry[130]), .B1(n95), .B2(
        fifo_entry[150]), .ZN(n19) );
  AOI22D0BWP12T30P140 U38 ( .A1(n90), .A2(fifo_entry[50]), .B1(n108), .B2(
        fifo_entry[70]), .ZN(n18) );
  AOI22D0BWP12T30P140 U39 ( .A1(n94), .A2(fifo_entry[90]), .B1(n96), .B2(
        fifo_entry[110]), .ZN(n17) );
  AOI22D0BWP12T30P140 U40 ( .A1(n91), .A2(fifo_entry[10]), .B1(n92), .B2(
        fifo_entry[30]), .ZN(n16) );
  AN4D0BWP12T30P140 U41 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .Z(n103) );
  NR2D0BWP12T30P140 U42 ( .A1(fifo_type), .A2(n103), .ZN(fifo_data_out_d[10])
         );
  AOI22D0BWP12T30P140 U43 ( .A1(n93), .A2(fifo_entry[138]), .B1(n95), .B2(
        fifo_entry[158]), .ZN(n23) );
  AOI22D0BWP12T30P140 U44 ( .A1(n90), .A2(fifo_entry[58]), .B1(n108), .B2(
        fifo_entry[78]), .ZN(n22) );
  AOI22D0BWP12T30P140 U45 ( .A1(n94), .A2(fifo_entry[98]), .B1(n96), .B2(
        fifo_entry[118]), .ZN(n21) );
  AOI22D0BWP12T30P140 U46 ( .A1(n91), .A2(fifo_entry[18]), .B1(n92), .B2(
        fifo_entry[38]), .ZN(n20) );
  AN4D0BWP12T30P140 U47 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .Z(n126) );
  AOI22D0BWP12T30P140 U48 ( .A1(n91), .A2(fifo_entry[8]), .B1(n90), .B2(
        fifo_entry[48]), .ZN(n27) );
  AOI22D0BWP12T30P140 U49 ( .A1(n92), .A2(fifo_entry[28]), .B1(n108), .B2(
        fifo_entry[68]), .ZN(n26) );
  AOI22D0BWP12T30P140 U50 ( .A1(n94), .A2(fifo_entry[88]), .B1(n93), .B2(
        fifo_entry[128]), .ZN(n25) );
  AOI22D0BWP12T30P140 U51 ( .A1(n96), .A2(fifo_entry[108]), .B1(n95), .B2(
        fifo_entry[148]), .ZN(n24) );
  AN4D0BWP12T30P140 U52 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .Z(n28) );
  AOI22D0BWP12T30P140 U53 ( .A1(n104), .A2(n126), .B1(n28), .B2(n101), .ZN(
        fifo_data_out_d[8]) );
  NR2D0BWP12T30P140 U54 ( .A1(fifo_type), .A2(n29), .ZN(fifo_data_out_d[19])
         );
  AOI22D0BWP12T30P140 U55 ( .A1(n93), .A2(fifo_entry[137]), .B1(n95), .B2(
        fifo_entry[157]), .ZN(n33) );
  AOI22D0BWP12T30P140 U56 ( .A1(n90), .A2(fifo_entry[57]), .B1(n108), .B2(
        fifo_entry[77]), .ZN(n32) );
  AOI22D0BWP12T30P140 U57 ( .A1(n94), .A2(fifo_entry[97]), .B1(n96), .B2(
        fifo_entry[117]), .ZN(n31) );
  AOI22D0BWP12T30P140 U58 ( .A1(n91), .A2(fifo_entry[17]), .B1(n92), .B2(
        fifo_entry[37]), .ZN(n30) );
  AN4D0BWP12T30P140 U59 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Z(n127) );
  AOI22D0BWP12T30P140 U60 ( .A1(n91), .A2(fifo_entry[7]), .B1(n90), .B2(
        fifo_entry[47]), .ZN(n37) );
  AOI22D0BWP12T30P140 U61 ( .A1(n92), .A2(fifo_entry[27]), .B1(n108), .B2(
        fifo_entry[67]), .ZN(n36) );
  AOI22D0BWP12T30P140 U62 ( .A1(n94), .A2(fifo_entry[87]), .B1(n93), .B2(
        fifo_entry[127]), .ZN(n35) );
  AOI22D0BWP12T30P140 U63 ( .A1(n96), .A2(fifo_entry[107]), .B1(n95), .B2(
        fifo_entry[147]), .ZN(n34) );
  AN4D0BWP12T30P140 U64 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .Z(n38) );
  AOI22D0BWP12T30P140 U65 ( .A1(n104), .A2(n127), .B1(n38), .B2(n101), .ZN(
        fifo_data_out_d[7]) );
  AOI22D0BWP12T30P140 U66 ( .A1(n93), .A2(fifo_entry[136]), .B1(n95), .B2(
        fifo_entry[156]), .ZN(n42) );
  AOI22D0BWP12T30P140 U67 ( .A1(n90), .A2(fifo_entry[56]), .B1(n108), .B2(
        fifo_entry[76]), .ZN(n41) );
  AOI22D0BWP12T30P140 U68 ( .A1(n94), .A2(fifo_entry[96]), .B1(n96), .B2(
        fifo_entry[116]), .ZN(n40) );
  AOI22D0BWP12T30P140 U69 ( .A1(n91), .A2(fifo_entry[16]), .B1(n92), .B2(
        fifo_entry[36]), .ZN(n39) );
  AN4D0BWP12T30P140 U70 ( .A1(n42), .A2(n41), .A3(n40), .A4(n39), .Z(n128) );
  AOI22D0BWP12T30P140 U71 ( .A1(n91), .A2(fifo_entry[6]), .B1(n90), .B2(
        fifo_entry[46]), .ZN(n46) );
  AOI22D0BWP12T30P140 U72 ( .A1(n92), .A2(fifo_entry[26]), .B1(n108), .B2(
        fifo_entry[66]), .ZN(n45) );
  AOI22D0BWP12T30P140 U73 ( .A1(n94), .A2(fifo_entry[86]), .B1(n93), .B2(
        fifo_entry[126]), .ZN(n44) );
  AOI22D0BWP12T30P140 U74 ( .A1(n96), .A2(fifo_entry[106]), .B1(n95), .B2(
        fifo_entry[146]), .ZN(n43) );
  AN4D0BWP12T30P140 U75 ( .A1(n46), .A2(n45), .A3(n44), .A4(n43), .Z(n47) );
  AOI22D0BWP12T30P140 U76 ( .A1(n104), .A2(n128), .B1(n47), .B2(n101), .ZN(
        fifo_data_out_d[6]) );
  AOI22D0BWP12T30P140 U77 ( .A1(n93), .A2(fifo_entry[135]), .B1(n95), .B2(
        fifo_entry[155]), .ZN(n51) );
  AOI22D0BWP12T30P140 U78 ( .A1(n90), .A2(fifo_entry[55]), .B1(n108), .B2(
        fifo_entry[75]), .ZN(n50) );
  AOI22D0BWP12T30P140 U79 ( .A1(n94), .A2(fifo_entry[95]), .B1(n96), .B2(
        fifo_entry[115]), .ZN(n49) );
  AOI22D0BWP12T30P140 U80 ( .A1(n91), .A2(fifo_entry[15]), .B1(n92), .B2(
        fifo_entry[35]), .ZN(n48) );
  AN4D0BWP12T30P140 U81 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .Z(n129) );
  AOI22D0BWP12T30P140 U82 ( .A1(n91), .A2(fifo_entry[5]), .B1(n90), .B2(
        fifo_entry[45]), .ZN(n55) );
  AOI22D0BWP12T30P140 U83 ( .A1(n92), .A2(fifo_entry[25]), .B1(n108), .B2(
        fifo_entry[65]), .ZN(n54) );
  AOI22D0BWP12T30P140 U84 ( .A1(n94), .A2(fifo_entry[85]), .B1(n93), .B2(
        fifo_entry[125]), .ZN(n53) );
  AOI22D0BWP12T30P140 U85 ( .A1(n96), .A2(fifo_entry[105]), .B1(n95), .B2(
        fifo_entry[145]), .ZN(n52) );
  AN4D0BWP12T30P140 U86 ( .A1(n55), .A2(n54), .A3(n53), .A4(n52), .Z(n56) );
  AOI22D0BWP12T30P140 U87 ( .A1(n104), .A2(n129), .B1(n56), .B2(n101), .ZN(
        fifo_data_out_d[5]) );
  AOI22D0BWP12T30P140 U88 ( .A1(n93), .A2(fifo_entry[134]), .B1(n95), .B2(
        fifo_entry[154]), .ZN(n60) );
  AOI22D0BWP12T30P140 U89 ( .A1(n90), .A2(fifo_entry[54]), .B1(n108), .B2(
        fifo_entry[74]), .ZN(n59) );
  AOI22D0BWP12T30P140 U90 ( .A1(n94), .A2(fifo_entry[94]), .B1(n96), .B2(
        fifo_entry[114]), .ZN(n58) );
  AOI22D0BWP12T30P140 U91 ( .A1(n91), .A2(fifo_entry[14]), .B1(n92), .B2(
        fifo_entry[34]), .ZN(n57) );
  AN4D0BWP12T30P140 U92 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .Z(n119) );
  AOI22D0BWP12T30P140 U93 ( .A1(n91), .A2(fifo_entry[4]), .B1(n90), .B2(
        fifo_entry[44]), .ZN(n64) );
  AOI22D0BWP12T30P140 U94 ( .A1(n92), .A2(fifo_entry[24]), .B1(n108), .B2(
        fifo_entry[64]), .ZN(n63) );
  AOI22D0BWP12T30P140 U95 ( .A1(n94), .A2(fifo_entry[84]), .B1(n93), .B2(
        fifo_entry[124]), .ZN(n62) );
  AOI22D0BWP12T30P140 U96 ( .A1(n96), .A2(fifo_entry[104]), .B1(n95), .B2(
        fifo_entry[144]), .ZN(n61) );
  AN4D0BWP12T30P140 U97 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .Z(n65) );
  AOI22D0BWP12T30P140 U98 ( .A1(n104), .A2(n119), .B1(n65), .B2(n101), .ZN(
        fifo_data_out_d[4]) );
  AOI22D0BWP12T30P140 U99 ( .A1(n91), .A2(fifo_entry[3]), .B1(n90), .B2(
        fifo_entry[43]), .ZN(n69) );
  AOI22D0BWP12T30P140 U100 ( .A1(n92), .A2(fifo_entry[23]), .B1(n108), .B2(
        fifo_entry[63]), .ZN(n68) );
  AOI22D0BWP12T30P140 U101 ( .A1(n94), .A2(fifo_entry[83]), .B1(n93), .B2(
        fifo_entry[123]), .ZN(n67) );
  AOI22D0BWP12T30P140 U102 ( .A1(n96), .A2(fifo_entry[103]), .B1(n95), .B2(
        fifo_entry[143]), .ZN(n66) );
  AN4D0BWP12T30P140 U103 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .Z(n70) );
  AOI22D0BWP12T30P140 U104 ( .A1(n104), .A2(n71), .B1(n70), .B2(n101), .ZN(
        fifo_data_out_d[3]) );
  AOI22D0BWP12T30P140 U105 ( .A1(n93), .A2(fifo_entry[132]), .B1(n95), .B2(
        fifo_entry[152]), .ZN(n75) );
  AOI22D0BWP12T30P140 U106 ( .A1(n90), .A2(fifo_entry[52]), .B1(n108), .B2(
        fifo_entry[72]), .ZN(n74) );
  AOI22D0BWP12T30P140 U107 ( .A1(n94), .A2(fifo_entry[92]), .B1(n96), .B2(
        fifo_entry[112]), .ZN(n73) );
  AOI22D0BWP12T30P140 U108 ( .A1(n91), .A2(fifo_entry[12]), .B1(n92), .B2(
        fifo_entry[32]), .ZN(n72) );
  AN4D0BWP12T30P140 U109 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .Z(n106) );
  AOI22D0BWP12T30P140 U110 ( .A1(n91), .A2(fifo_entry[2]), .B1(n90), .B2(
        fifo_entry[42]), .ZN(n79) );
  AOI22D0BWP12T30P140 U111 ( .A1(n92), .A2(fifo_entry[22]), .B1(n108), .B2(
        fifo_entry[62]), .ZN(n78) );
  AOI22D0BWP12T30P140 U112 ( .A1(n94), .A2(fifo_entry[82]), .B1(n93), .B2(
        fifo_entry[122]), .ZN(n77) );
  AOI22D0BWP12T30P140 U113 ( .A1(n96), .A2(fifo_entry[102]), .B1(n95), .B2(
        fifo_entry[142]), .ZN(n76) );
  AN4D0BWP12T30P140 U114 ( .A1(n79), .A2(n78), .A3(n77), .A4(n76), .Z(n80) );
  AOI22D0BWP12T30P140 U115 ( .A1(n104), .A2(n106), .B1(n80), .B2(n101), .ZN(
        fifo_data_out_d[2]) );
  AOI22D0BWP12T30P140 U116 ( .A1(n93), .A2(fifo_entry[131]), .B1(n95), .B2(
        fifo_entry[151]), .ZN(n84) );
  AOI22D0BWP12T30P140 U117 ( .A1(n90), .A2(fifo_entry[51]), .B1(n108), .B2(
        fifo_entry[71]), .ZN(n83) );
  AOI22D0BWP12T30P140 U118 ( .A1(n94), .A2(fifo_entry[91]), .B1(n96), .B2(
        fifo_entry[111]), .ZN(n82) );
  AOI22D0BWP12T30P140 U119 ( .A1(n91), .A2(fifo_entry[11]), .B1(n92), .B2(
        fifo_entry[31]), .ZN(n81) );
  AN4D0BWP12T30P140 U120 ( .A1(n84), .A2(n83), .A3(n82), .A4(n81), .Z(n105) );
  AOI22D0BWP12T30P140 U121 ( .A1(n91), .A2(fifo_entry[1]), .B1(n90), .B2(
        fifo_entry[41]), .ZN(n88) );
  AOI22D0BWP12T30P140 U122 ( .A1(n92), .A2(fifo_entry[21]), .B1(n108), .B2(
        fifo_entry[61]), .ZN(n87) );
  AOI22D0BWP12T30P140 U123 ( .A1(n94), .A2(fifo_entry[81]), .B1(n93), .B2(
        fifo_entry[121]), .ZN(n86) );
  AOI22D0BWP12T30P140 U124 ( .A1(n96), .A2(fifo_entry[101]), .B1(n95), .B2(
        fifo_entry[141]), .ZN(n85) );
  AN4D0BWP12T30P140 U125 ( .A1(n88), .A2(n87), .A3(n86), .A4(n85), .Z(n89) );
  AOI22D0BWP12T30P140 U126 ( .A1(n104), .A2(n105), .B1(n89), .B2(n101), .ZN(
        fifo_data_out_d[1]) );
  AOI22D0BWP12T30P140 U127 ( .A1(fifo_entry[0]), .A2(n91), .B1(fifo_entry[40]), 
        .B2(n90), .ZN(n100) );
  AOI22D0BWP12T30P140 U128 ( .A1(fifo_entry[20]), .A2(n92), .B1(n108), .B2(
        fifo_entry[60]), .ZN(n99) );
  AOI22D0BWP12T30P140 U129 ( .A1(fifo_entry[80]), .A2(n94), .B1(
        fifo_entry[120]), .B2(n93), .ZN(n98) );
  AOI22D0BWP12T30P140 U130 ( .A1(fifo_entry[100]), .A2(n96), .B1(
        fifo_entry[140]), .B2(n95), .ZN(n97) );
  AN4D0BWP12T30P140 U131 ( .A1(n100), .A2(n99), .A3(n98), .A4(n97), .Z(n102)
         );
  AOI22D0BWP12T30P140 U132 ( .A1(n104), .A2(n103), .B1(n102), .B2(n101), .ZN(
        fifo_data_out_d[0]) );
  NR2D0BWP12T30P140 U133 ( .A1(fifo_type), .A2(n105), .ZN(fifo_data_out_d[11])
         );
  NR2D0BWP12T30P140 U134 ( .A1(fifo_type), .A2(n106), .ZN(fifo_data_out_d[12])
         );
  ND2D0BWP12T30P140 U135 ( .A1(fifo_wr_addr[1]), .A2(n333), .ZN(n130) );
  NR2D0BWP12T30P140 U136 ( .A1(n332), .A2(n130), .ZN(n112) );
  INVD0BWP12T30P140 U137 ( .I(fifo_data_in[18]), .ZN(n144) );
  CKBD0BWP12T30P140 U138 ( .I(n112), .Z(n107) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n112), .A2(n144), .B1(fifo_entry[138]), .B2(
        n107), .ZN(n154) );
  INVD0BWP12T30P140 U140 ( .I(fifo_data_in[17]), .ZN(n145) );
  MAOI22D0BWP12T30P140 U141 ( .A1(n112), .A2(n145), .B1(fifo_entry[137]), .B2(
        n107), .ZN(n155) );
  INVD0BWP12T30P140 U142 ( .I(fifo_data_in[16]), .ZN(n146) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n112), .A2(n146), .B1(fifo_entry[136]), .B2(
        n107), .ZN(n156) );
  INVD0BWP12T30P140 U144 ( .I(fifo_data_in[15]), .ZN(n147) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n112), .A2(n147), .B1(fifo_entry[135]), .B2(
        n107), .ZN(n157) );
  INVD0BWP12T30P140 U146 ( .I(fifo_data_in[14]), .ZN(n148) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n112), .A2(n148), .B1(fifo_entry[134]), .B2(
        n107), .ZN(n158) );
  INVD0BWP12T30P140 U148 ( .I(fifo_data_in[13]), .ZN(n149) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n112), .A2(n149), .B1(fifo_entry[133]), .B2(
        n107), .ZN(n159) );
  INVD0BWP12T30P140 U150 ( .I(fifo_data_in[12]), .ZN(n150) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n112), .A2(n150), .B1(fifo_entry[132]), .B2(
        n107), .ZN(n160) );
  INVD0BWP12T30P140 U152 ( .I(fifo_data_in[11]), .ZN(n315) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n112), .A2(n315), .B1(fifo_entry[131]), .B2(
        n107), .ZN(n161) );
  INVD0BWP12T30P140 U154 ( .I(fifo_data_in[10]), .ZN(n316) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n112), .A2(n316), .B1(fifo_entry[130]), .B2(
        n107), .ZN(n162) );
  CKBD0BWP12T30P140 U156 ( .I(n112), .Z(n111) );
  INVD0BWP12T30P140 U157 ( .I(fifo_data_in[9]), .ZN(n317) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n111), .A2(n317), .B1(fifo_entry[129]), .B2(
        n107), .ZN(n163) );
  INVD0BWP12T30P140 U159 ( .I(fifo_data_in[8]), .ZN(n318) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n112), .A2(n318), .B1(fifo_entry[128]), .B2(
        n107), .ZN(n164) );
  INVD0BWP12T30P140 U161 ( .I(fifo_data_in[7]), .ZN(n319) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n112), .A2(n319), .B1(fifo_entry[127]), .B2(
        n107), .ZN(n165) );
  INVD0BWP12T30P140 U163 ( .I(fifo_data_in[6]), .ZN(n320) );
  MAOI22D0BWP12T30P140 U164 ( .A1(n111), .A2(n320), .B1(fifo_entry[126]), .B2(
        n111), .ZN(n166) );
  INVD0BWP12T30P140 U165 ( .I(fifo_data_in[5]), .ZN(n321) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n111), .A2(n321), .B1(fifo_entry[125]), .B2(
        n111), .ZN(n167) );
  INVD0BWP12T30P140 U167 ( .I(fifo_data_in[4]), .ZN(n322) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n111), .A2(n322), .B1(fifo_entry[124]), .B2(
        n111), .ZN(n168) );
  INVD0BWP12T30P140 U169 ( .I(fifo_data_in[3]), .ZN(n323) );
  MAOI22D0BWP12T30P140 U170 ( .A1(n111), .A2(n323), .B1(fifo_entry[123]), .B2(
        n111), .ZN(n169) );
  INVD0BWP12T30P140 U171 ( .I(fifo_data_in[2]), .ZN(n324) );
  MAOI22D0BWP12T30P140 U172 ( .A1(n112), .A2(n324), .B1(fifo_entry[122]), .B2(
        n111), .ZN(n170) );
  INVD0BWP12T30P140 U173 ( .I(fifo_data_in[1]), .ZN(n325) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n112), .A2(n325), .B1(fifo_entry[121]), .B2(
        n111), .ZN(n171) );
  INVD0BWP12T30P140 U175 ( .I(fifo_data_in[0]), .ZN(n326) );
  MAOI22D0BWP12T30P140 U176 ( .A1(n112), .A2(n326), .B1(fifo_entry[120]), .B2(
        n111), .ZN(n172) );
  AN2D0BWP12T30P140 U177 ( .A1(fifo_type), .A2(inc_rd_ptr_), .Z(n125) );
  INVD0BWP12T30P140 U178 ( .I(n108), .ZN(n110) );
  NR2D0BWP12T30P140 U179 ( .A1(n124), .A2(n125), .ZN(n123) );
  INVD0BWP12T30P140 U180 ( .I(n123), .ZN(n121) );
  NR2D0BWP12T30P140 U181 ( .A1(n122), .A2(n121), .ZN(n120) );
  OAI22D0BWP12T30P140 U182 ( .A1(n125), .A2(n110), .B1(n120), .B2(n109), .ZN(
        n151) );
  INVD0BWP12T30P140 U183 ( .I(fifo_data_in[19]), .ZN(n328) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n112), .A2(n328), .B1(fifo_entry[139]), .B2(
        n111), .ZN(n173) );
  CKBD0BWP12T30P140 U185 ( .I(n115), .Z(n113) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n115), .A2(n144), .B1(fifo_entry[58]), .B2(
        n113), .ZN(n174) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n115), .A2(n145), .B1(fifo_entry[57]), .B2(
        n113), .ZN(n175) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n115), .A2(n146), .B1(fifo_entry[56]), .B2(
        n113), .ZN(n176) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n115), .A2(n147), .B1(fifo_entry[55]), .B2(
        n113), .ZN(n177) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n115), .A2(n148), .B1(fifo_entry[54]), .B2(
        n113), .ZN(n178) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n115), .A2(n149), .B1(fifo_entry[53]), .B2(
        n113), .ZN(n179) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n115), .A2(n150), .B1(fifo_entry[52]), .B2(
        n113), .ZN(n180) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n115), .A2(n315), .B1(fifo_entry[51]), .B2(
        n113), .ZN(n181) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n115), .A2(n316), .B1(fifo_entry[50]), .B2(
        n113), .ZN(n182) );
  CKBD0BWP12T30P140 U195 ( .I(n115), .Z(n114) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n114), .A2(n317), .B1(fifo_entry[49]), .B2(
        n113), .ZN(n183) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n115), .A2(n318), .B1(fifo_entry[48]), .B2(
        n113), .ZN(n184) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n115), .A2(n319), .B1(fifo_entry[47]), .B2(
        n113), .ZN(n185) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n114), .A2(n320), .B1(fifo_entry[46]), .B2(
        n114), .ZN(n186) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n114), .A2(n321), .B1(fifo_entry[45]), .B2(
        n114), .ZN(n187) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n114), .A2(n322), .B1(fifo_entry[44]), .B2(
        n114), .ZN(n188) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n114), .A2(n323), .B1(fifo_entry[43]), .B2(
        n114), .ZN(n189) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n115), .A2(n324), .B1(fifo_entry[42]), .B2(
        n114), .ZN(n190) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n115), .A2(n325), .B1(fifo_entry[41]), .B2(
        n114), .ZN(n191) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n115), .A2(n326), .B1(fifo_entry[40]), .B2(
        n114), .ZN(n192) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n115), .A2(n328), .B1(fifo_entry[59]), .B2(
        n114), .ZN(n193) );
  NR3D0BWP12T30P140 U207 ( .A1(fifo_wr_addr[1]), .A2(n333), .A3(n332), .ZN(
        n117) );
  CKBD0BWP12T30P140 U208 ( .I(n117), .Z(n116) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n116), .A2(n144), .B1(fifo_entry[118]), .B2(
        n116), .ZN(n194) );
  CKBD0BWP12T30P140 U210 ( .I(n117), .Z(n118) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n118), .A2(n145), .B1(fifo_entry[117]), .B2(
        n117), .ZN(n195) );
  MAOI22D0BWP12T30P140 U212 ( .A1(n118), .A2(n146), .B1(fifo_entry[116]), .B2(
        n116), .ZN(n196) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n118), .A2(n147), .B1(fifo_entry[115]), .B2(
        n117), .ZN(n197) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n118), .A2(n148), .B1(fifo_entry[114]), .B2(
        n116), .ZN(n198) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n118), .A2(n149), .B1(fifo_entry[113]), .B2(
        n117), .ZN(n199) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n118), .A2(n150), .B1(fifo_entry[112]), .B2(
        n116), .ZN(n200) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n118), .A2(n315), .B1(fifo_entry[111]), .B2(
        n117), .ZN(n201) );
  MAOI22D0BWP12T30P140 U218 ( .A1(n118), .A2(n316), .B1(fifo_entry[110]), .B2(
        n116), .ZN(n202) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n116), .A2(n317), .B1(fifo_entry[109]), .B2(
        n117), .ZN(n203) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n118), .A2(n318), .B1(fifo_entry[108]), .B2(
        n116), .ZN(n204) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n118), .A2(n319), .B1(fifo_entry[107]), .B2(
        n116), .ZN(n205) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n116), .A2(n320), .B1(fifo_entry[106]), .B2(
        n116), .ZN(n206) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n117), .A2(n321), .B1(fifo_entry[105]), .B2(
        n116), .ZN(n207) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n118), .A2(n322), .B1(fifo_entry[104]), .B2(
        n117), .ZN(n208) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n117), .A2(n323), .B1(fifo_entry[103]), .B2(
        n116), .ZN(n209) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n118), .A2(n324), .B1(fifo_entry[102]), .B2(
        n117), .ZN(n210) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n118), .A2(n325), .B1(fifo_entry[101]), .B2(
        n116), .ZN(n211) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n118), .A2(n326), .B1(fifo_entry[100]), .B2(
        n117), .ZN(n212) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n118), .A2(n328), .B1(fifo_entry[119]), .B2(
        n117), .ZN(n213) );
  NR3D0BWP12T30P140 U230 ( .A1(fifo_wr_addr[0]), .A2(fifo_wr_addr[1]), .A3(
        n332), .ZN(n132) );
  CKBD0BWP12T30P140 U231 ( .I(n132), .Z(n131) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n131), .A2(n144), .B1(fifo_entry[98]), .B2(
        n131), .ZN(n214) );
  CKBD0BWP12T30P140 U233 ( .I(n132), .Z(n133) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n133), .A2(n145), .B1(fifo_entry[97]), .B2(
        n132), .ZN(n215) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n133), .A2(n146), .B1(fifo_entry[96]), .B2(
        n131), .ZN(n216) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n133), .A2(n147), .B1(fifo_entry[95]), .B2(
        n132), .ZN(n217) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n133), .A2(n148), .B1(fifo_entry[94]), .B2(
        n131), .ZN(n218) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n133), .A2(n149), .B1(fifo_entry[93]), .B2(
        n132), .ZN(n219) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n133), .A2(n150), .B1(fifo_entry[92]), .B2(
        n131), .ZN(n220) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n133), .A2(n315), .B1(fifo_entry[91]), .B2(
        n132), .ZN(n221) );
  NR2D0BWP12T30P140 U241 ( .A1(fifo_type), .A2(n119), .ZN(fifo_data_out_d[14])
         );
  AOI21D0BWP12T30P140 U242 ( .A1(n122), .A2(n121), .B(n120), .ZN(n152) );
  AOI21D0BWP12T30P140 U243 ( .A1(n125), .A2(n124), .B(n123), .ZN(n153) );
  NR2D0BWP12T30P140 U244 ( .A1(fifo_type), .A2(n126), .ZN(fifo_data_out_d[18])
         );
  NR2D0BWP12T30P140 U245 ( .A1(fifo_type), .A2(n127), .ZN(fifo_data_out_d[17])
         );
  NR2D0BWP12T30P140 U246 ( .A1(fifo_type), .A2(n128), .ZN(fifo_data_out_d[16])
         );
  NR2D0BWP12T30P140 U247 ( .A1(fifo_type), .A2(n129), .ZN(fifo_data_out_d[15])
         );
  MAOI22D0BWP12T30P140 U248 ( .A1(n133), .A2(n316), .B1(fifo_entry[90]), .B2(
        n131), .ZN(n222) );
  OAI21D0BWP12T30P140 U249 ( .A1(fifo_wr_addr[1]), .A2(n333), .B(n130), .ZN(
        fifo_wr_addr_d[1]) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n131), .A2(n317), .B1(fifo_entry[89]), .B2(
        n132), .ZN(n223) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n133), .A2(n318), .B1(fifo_entry[88]), .B2(
        n131), .ZN(n224) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n133), .A2(n319), .B1(fifo_entry[87]), .B2(
        n131), .ZN(n225) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n131), .A2(n320), .B1(fifo_entry[86]), .B2(
        n131), .ZN(n226) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n132), .A2(n321), .B1(fifo_entry[85]), .B2(
        n131), .ZN(n227) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n133), .A2(n322), .B1(fifo_entry[84]), .B2(
        n132), .ZN(n228) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n132), .A2(n323), .B1(fifo_entry[83]), .B2(
        n131), .ZN(n229) );
  MAOI22D0BWP12T30P140 U257 ( .A1(n133), .A2(n324), .B1(fifo_entry[82]), .B2(
        n132), .ZN(n230) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n133), .A2(n325), .B1(fifo_entry[81]), .B2(
        n131), .ZN(n231) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n133), .A2(n326), .B1(fifo_entry[80]), .B2(
        n132), .ZN(n232) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n133), .A2(n328), .B1(fifo_entry[99]), .B2(
        n132), .ZN(n233) );
  NR3D0BWP12T30P140 U261 ( .A1(fifo_wr_addr[2]), .A2(fifo_wr_addr[0]), .A3(
        fifo_wr_addr[1]), .ZN(n135) );
  CKBD0BWP12T30P140 U262 ( .I(n135), .Z(n134) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n134), .A2(n144), .B1(fifo_entry[18]), .B2(
        n134), .ZN(n234) );
  CKBD0BWP12T30P140 U264 ( .I(n135), .Z(n136) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n136), .A2(n145), .B1(fifo_entry[17]), .B2(
        n135), .ZN(n235) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n136), .A2(n146), .B1(fifo_entry[16]), .B2(
        n134), .ZN(n236) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n136), .A2(n147), .B1(fifo_entry[15]), .B2(
        n135), .ZN(n237) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n136), .A2(n148), .B1(fifo_entry[14]), .B2(
        n134), .ZN(n238) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n136), .A2(n149), .B1(fifo_entry[13]), .B2(
        n135), .ZN(n239) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n136), .A2(n150), .B1(fifo_entry[12]), .B2(
        n134), .ZN(n240) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n136), .A2(n315), .B1(fifo_entry[11]), .B2(
        n135), .ZN(n241) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n136), .A2(n316), .B1(fifo_entry[10]), .B2(
        n134), .ZN(n242) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n134), .A2(n317), .B1(fifo_entry[9]), .B2(
        n135), .ZN(n243) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n136), .A2(n318), .B1(fifo_entry[8]), .B2(
        n134), .ZN(n244) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n136), .A2(n319), .B1(fifo_entry[7]), .B2(
        n134), .ZN(n245) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n134), .A2(n320), .B1(fifo_entry[6]), .B2(
        n134), .ZN(n246) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n135), .A2(n321), .B1(fifo_entry[5]), .B2(
        n134), .ZN(n247) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n136), .A2(n322), .B1(fifo_entry[4]), .B2(
        n135), .ZN(n248) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n135), .A2(n323), .B1(fifo_entry[3]), .B2(
        n134), .ZN(n249) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n136), .A2(n324), .B1(fifo_entry[2]), .B2(
        n135), .ZN(n250) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n136), .A2(n325), .B1(fifo_entry[1]), .B2(
        n134), .ZN(n251) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n136), .A2(n326), .B1(fifo_entry[0]), .B2(
        n135), .ZN(n252) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n136), .A2(n328), .B1(fifo_entry[19]), .B2(
        n135), .ZN(n253) );
  NR3D0BWP12T30P140 U284 ( .A1(fifo_wr_addr[2]), .A2(fifo_wr_addr[1]), .A3(
        n333), .ZN(n138) );
  CKBD0BWP12T30P140 U285 ( .I(n138), .Z(n137) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n137), .A2(n144), .B1(fifo_entry[38]), .B2(
        n137), .ZN(n254) );
  CKBD0BWP12T30P140 U287 ( .I(n138), .Z(n139) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n139), .A2(n145), .B1(fifo_entry[37]), .B2(
        n138), .ZN(n255) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n139), .A2(n146), .B1(fifo_entry[36]), .B2(
        n137), .ZN(n256) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n139), .A2(n147), .B1(fifo_entry[35]), .B2(
        n138), .ZN(n257) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n139), .A2(n148), .B1(fifo_entry[34]), .B2(
        n137), .ZN(n258) );
  MAOI22D0BWP12T30P140 U292 ( .A1(n139), .A2(n149), .B1(fifo_entry[33]), .B2(
        n138), .ZN(n259) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n139), .A2(n150), .B1(fifo_entry[32]), .B2(
        n137), .ZN(n260) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n139), .A2(n315), .B1(fifo_entry[31]), .B2(
        n138), .ZN(n261) );
  MAOI22D0BWP12T30P140 U295 ( .A1(n139), .A2(n316), .B1(fifo_entry[30]), .B2(
        n137), .ZN(n262) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n137), .A2(n317), .B1(fifo_entry[29]), .B2(
        n138), .ZN(n263) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n139), .A2(n318), .B1(fifo_entry[28]), .B2(
        n137), .ZN(n264) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n139), .A2(n319), .B1(fifo_entry[27]), .B2(
        n137), .ZN(n265) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n137), .A2(n320), .B1(fifo_entry[26]), .B2(
        n137), .ZN(n266) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n138), .A2(n321), .B1(fifo_entry[25]), .B2(
        n137), .ZN(n267) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n139), .A2(n322), .B1(fifo_entry[24]), .B2(
        n138), .ZN(n268) );
  MAOI22D0BWP12T30P140 U302 ( .A1(n138), .A2(n323), .B1(fifo_entry[23]), .B2(
        n137), .ZN(n269) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n139), .A2(n324), .B1(fifo_entry[22]), .B2(
        n138), .ZN(n270) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n139), .A2(n325), .B1(fifo_entry[21]), .B2(
        n137), .ZN(n271) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n139), .A2(n326), .B1(fifo_entry[20]), .B2(
        n138), .ZN(n272) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n139), .A2(n328), .B1(fifo_entry[39]), .B2(
        n138), .ZN(n273) );
  ND3D0BWP12T30P140 U307 ( .A1(n332), .A2(fifo_wr_addr[1]), .A3(
        fifo_wr_addr[0]), .ZN(n330) );
  INVD0BWP12T30P140 U308 ( .I(n330), .ZN(n141) );
  CKBD0BWP12T30P140 U309 ( .I(n141), .Z(n140) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n140), .A2(n144), .B1(fifo_entry[78]), .B2(
        n140), .ZN(n274) );
  CKBD0BWP12T30P140 U311 ( .I(n141), .Z(n142) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n142), .A2(n145), .B1(fifo_entry[77]), .B2(
        n141), .ZN(n275) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n142), .A2(n146), .B1(fifo_entry[76]), .B2(
        n140), .ZN(n276) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n142), .A2(n147), .B1(fifo_entry[75]), .B2(
        n141), .ZN(n277) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n142), .A2(n148), .B1(fifo_entry[74]), .B2(
        n140), .ZN(n278) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n142), .A2(n149), .B1(fifo_entry[73]), .B2(
        n141), .ZN(n279) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n142), .A2(n150), .B1(fifo_entry[72]), .B2(
        n140), .ZN(n280) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n142), .A2(n315), .B1(fifo_entry[71]), .B2(
        n141), .ZN(n281) );
  MAOI22D0BWP12T30P140 U319 ( .A1(n142), .A2(n316), .B1(fifo_entry[70]), .B2(
        n140), .ZN(n282) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n140), .A2(n317), .B1(fifo_entry[69]), .B2(
        n141), .ZN(n283) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n142), .A2(n318), .B1(fifo_entry[68]), .B2(
        n140), .ZN(n284) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n142), .A2(n319), .B1(fifo_entry[67]), .B2(
        n140), .ZN(n285) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n140), .A2(n320), .B1(fifo_entry[66]), .B2(
        n140), .ZN(n286) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n141), .A2(n321), .B1(fifo_entry[65]), .B2(
        n140), .ZN(n287) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n142), .A2(n322), .B1(fifo_entry[64]), .B2(
        n141), .ZN(n288) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n141), .A2(n323), .B1(fifo_entry[63]), .B2(
        n140), .ZN(n289) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n142), .A2(n324), .B1(fifo_entry[62]), .B2(
        n141), .ZN(n290) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n142), .A2(n325), .B1(fifo_entry[61]), .B2(
        n140), .ZN(n291) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n142), .A2(n326), .B1(fifo_entry[60]), .B2(
        n141), .ZN(n292) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n142), .A2(n328), .B1(fifo_entry[79]), .B2(
        n141), .ZN(n293) );
  ND2D0BWP12T30P140 U331 ( .A1(fifo_wr_addr[0]), .A2(fifo_wr_addr[1]), .ZN(
        n143) );
  NR2D0BWP12T30P140 U332 ( .A1(n332), .A2(n143), .ZN(n329) );
  CKBD0BWP12T30P140 U333 ( .I(n329), .Z(n327) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n329), .A2(n144), .B1(fifo_entry[158]), .B2(
        n327), .ZN(n294) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n329), .A2(n145), .B1(fifo_entry[157]), .B2(
        n327), .ZN(n295) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n329), .A2(n146), .B1(fifo_entry[156]), .B2(
        n327), .ZN(n296) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n329), .A2(n147), .B1(fifo_entry[155]), .B2(
        n327), .ZN(n297) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n329), .A2(n148), .B1(fifo_entry[154]), .B2(
        n327), .ZN(n298) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n329), .A2(n149), .B1(fifo_entry[153]), .B2(
        n327), .ZN(n299) );
  CKBD0BWP12T30P140 U340 ( .I(n329), .Z(n331) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n329), .A2(n150), .B1(fifo_entry[152]), .B2(
        n331), .ZN(n300) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n329), .A2(n315), .B1(fifo_entry[151]), .B2(
        n331), .ZN(n301) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n331), .A2(n316), .B1(fifo_entry[150]), .B2(
        n331), .ZN(n302) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n331), .A2(n317), .B1(fifo_entry[149]), .B2(
        n331), .ZN(n303) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n331), .A2(n318), .B1(fifo_entry[148]), .B2(
        n331), .ZN(n304) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n331), .A2(n319), .B1(fifo_entry[147]), .B2(
        n331), .ZN(n305) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n329), .A2(n320), .B1(fifo_entry[146]), .B2(
        n331), .ZN(n306) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n329), .A2(n321), .B1(fifo_entry[145]), .B2(
        n331), .ZN(n307) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n329), .A2(n322), .B1(fifo_entry[144]), .B2(
        n327), .ZN(n308) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n329), .A2(n323), .B1(fifo_entry[143]), .B2(
        n327), .ZN(n309) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n329), .A2(n324), .B1(fifo_entry[142]), .B2(
        n327), .ZN(n310) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n329), .A2(n325), .B1(fifo_entry[141]), .B2(
        n327), .ZN(n311) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n329), .A2(n326), .B1(fifo_entry[140]), .B2(
        n327), .ZN(n312) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n329), .A2(n328), .B1(fifo_entry[159]), .B2(
        n327), .ZN(n313) );
  OAI21D0BWP12T30P140 U355 ( .A1(n331), .A2(n332), .B(n330), .ZN(
        fifo_wr_addr_d[2]) );
  CKBD0BWP12T30P140 U356 ( .I(wr_clk), .Z(n347) );
  CKBD0BWP12T30P140 U357 ( .I(wr_clk), .Z(n348) );
  CKBD0BWP12T30P140 U358 ( .I(wr_clk), .Z(n346) );
  CKBD0BWP12T30P140 U359 ( .I(wr_clk), .Z(n345) );
  CKBD0BWP12T30P140 U360 ( .I(wr_clk), .Z(n344) );
  CKBD0BWP12T30P140 U361 ( .I(wr_clk), .Z(n351) );
  CKBD0BWP12T30P140 U362 ( .I(wr_clk), .Z(n349) );
  CKBD0BWP12T30P140 U363 ( .I(wr_clk), .Z(n350) );
  CKBD0BWP12T30P140 U364 ( .I(rd_clk), .Z(n335) );
  CKBD0BWP12T30P140 U365 ( .I(wr_reset_), .Z(n342) );
  CKBD0BWP12T30P140 U366 ( .I(wr_reset_), .Z(n343) );
  CKBD0BWP12T30P140 U367 ( .I(rd_reset_), .Z(n334) );
  CKBD0BWP12T30P140 U368 ( .I(wr_reset_), .Z(n337) );
  CKBD0BWP12T30P140 U369 ( .I(wr_reset_), .Z(n338) );
  CKBD0BWP12T30P140 U370 ( .I(wr_reset_), .Z(n336) );
  CKBD0BWP12T30P140 U371 ( .I(wr_reset_), .Z(n339) );
  CKBD0BWP12T30P140 U372 ( .I(wr_reset_), .Z(n340) );
  CKBD0BWP12T30P140 U373 ( .I(wr_reset_), .Z(n341) );
endmodule


module sip_phase_sync_fifo_slow_2_fast_0 ( fifo_data_out, fifo_type, wr_clk, 
        rd_clk, wr_reset_, rd_reset_, fifo_data_in );
  output [19:0] fifo_data_out;
  input [19:0] fifo_data_in;
  input fifo_type, wr_clk, rd_clk, wr_reset_, rd_reset_;
  wire   inc_rd_ptr_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515;
  wire   [2:0] fifo_wr_addr;
  wire   [2:1] fifo_wr_addr_d;
  wire   [2:0] fifo_rd_addr;
  wire   [159:0] fifo_entry;
  wire   [19:0] fifo_data_out_d;

  DFNCND1BWP12T30P140 fifo_wr_addr_reg_0_ ( .D(n333), .CPN(n347), .CDN(
        wr_reset_), .Q(fifo_wr_addr[0]), .QN(n333) );
  DFNCND1BWP12T30P140 fifo_wr_addr_reg_1_ ( .D(fifo_wr_addr_d[1]), .CPN(n344), 
        .CDN(wr_reset_), .Q(fifo_wr_addr[1]) );
  DFNCND1BWP12T30P140 fifo_wr_addr_reg_2_ ( .D(fifo_wr_addr_d[2]), .CPN(n345), 
        .CDN(n343), .Q(fifo_wr_addr[2]), .QN(n332) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__19_ ( .D(n353), .CPN(n346), .CDN(
        wr_reset_), .Q(fifo_entry[159]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__0_ ( .D(n354), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[140]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__1_ ( .D(n355), .CPN(n351), .CDN(
        wr_reset_), .Q(fifo_entry[141]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__2_ ( .D(n356), .CPN(n350), .CDN(n343), 
        .Q(fifo_entry[142]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__3_ ( .D(n357), .CPN(wr_clk), .CDN(
        wr_reset_), .Q(fifo_entry[143]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__4_ ( .D(n358), .CPN(n348), .CDN(n343), 
        .Q(fifo_entry[144]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__5_ ( .D(n359), .CPN(n349), .CDN(
        wr_reset_), .Q(fifo_entry[145]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__6_ ( .D(n360), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[146]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__7_ ( .D(n361), .CPN(n345), .CDN(
        wr_reset_), .Q(fifo_entry[147]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__8_ ( .D(n362), .CPN(n346), .CDN(
        wr_reset_), .Q(fifo_entry[148]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__9_ ( .D(n363), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[149]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__10_ ( .D(n364), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[150]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__11_ ( .D(n365), .CPN(n344), .CDN(n336), 
        .Q(fifo_entry[151]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__12_ ( .D(n366), .CPN(n344), .CDN(n337), 
        .Q(fifo_entry[152]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__13_ ( .D(n367), .CPN(n344), .CDN(n338), 
        .Q(fifo_entry[153]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__14_ ( .D(n368), .CPN(n344), .CDN(n339), 
        .Q(fifo_entry[154]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__15_ ( .D(n369), .CPN(n344), .CDN(n340), 
        .Q(fifo_entry[155]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__16_ ( .D(n370), .CPN(n344), .CDN(n341), 
        .Q(fifo_entry[156]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__17_ ( .D(n371), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[157]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_7__18_ ( .D(n372), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[158]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__19_ ( .D(n373), .CPN(n344), .CDN(
        wr_reset_), .Q(fifo_entry[79]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__0_ ( .D(n374), .CPN(n344), .CDN(n343), 
        .Q(fifo_entry[60]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__1_ ( .D(n375), .CPN(n344), .CDN(n340), 
        .Q(fifo_entry[61]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__2_ ( .D(n376), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[62]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__3_ ( .D(n377), .CPN(n345), .CDN(n336), 
        .Q(fifo_entry[63]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__4_ ( .D(n378), .CPN(n345), .CDN(n337), 
        .Q(fifo_entry[64]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__5_ ( .D(n379), .CPN(n345), .CDN(n338), 
        .Q(fifo_entry[65]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__6_ ( .D(n380), .CPN(n345), .CDN(n339), 
        .Q(fifo_entry[66]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__7_ ( .D(n381), .CPN(n345), .CDN(n340), 
        .Q(fifo_entry[67]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__8_ ( .D(n382), .CPN(n345), .CDN(n341), 
        .Q(fifo_entry[68]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__9_ ( .D(n383), .CPN(n345), .CDN(n342), 
        .Q(fifo_entry[69]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__10_ ( .D(n384), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[70]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__11_ ( .D(n385), .CPN(n345), .CDN(
        wr_reset_), .Q(fifo_entry[71]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__12_ ( .D(n386), .CPN(n345), .CDN(n341), 
        .Q(fifo_entry[72]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__13_ ( .D(n387), .CPN(n345), .CDN(n342), 
        .Q(fifo_entry[73]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__14_ ( .D(n388), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[74]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__15_ ( .D(n389), .CPN(n346), .CDN(n339), 
        .Q(fifo_entry[75]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__16_ ( .D(n390), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[76]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__17_ ( .D(n391), .CPN(n346), .CDN(n336), 
        .Q(fifo_entry[77]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_3__18_ ( .D(n392), .CPN(n346), .CDN(n337), 
        .Q(fifo_entry[78]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__19_ ( .D(n393), .CPN(n346), .CDN(n338), 
        .Q(fifo_entry[39]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__0_ ( .D(n394), .CPN(n346), .CDN(n339), 
        .Q(fifo_entry[20]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__1_ ( .D(n395), .CPN(n346), .CDN(n340), 
        .Q(fifo_entry[21]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__2_ ( .D(n396), .CPN(n346), .CDN(n341), 
        .Q(fifo_entry[22]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__3_ ( .D(n397), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[23]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__4_ ( .D(n398), .CPN(n346), .CDN(n336), 
        .Q(fifo_entry[24]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__5_ ( .D(n399), .CPN(n346), .CDN(n337), 
        .Q(fifo_entry[25]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__6_ ( .D(n400), .CPN(n346), .CDN(n338), 
        .Q(fifo_entry[26]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__7_ ( .D(n401), .CPN(n346), .CDN(n339), 
        .Q(fifo_entry[27]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__8_ ( .D(n402), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[28]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__9_ ( .D(n403), .CPN(n347), .CDN(n341), 
        .Q(fifo_entry[29]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__10_ ( .D(n404), .CPN(n347), .CDN(n342), 
        .Q(fifo_entry[30]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__11_ ( .D(n405), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[31]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__12_ ( .D(n406), .CPN(n347), .CDN(n341), 
        .Q(fifo_entry[32]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__13_ ( .D(n407), .CPN(n347), .CDN(n336), 
        .Q(fifo_entry[33]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__14_ ( .D(n408), .CPN(n347), .CDN(n337), 
        .Q(fifo_entry[34]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__15_ ( .D(n409), .CPN(n347), .CDN(n338), 
        .Q(fifo_entry[35]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__16_ ( .D(n410), .CPN(n347), .CDN(n337), 
        .Q(fifo_entry[36]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__17_ ( .D(n411), .CPN(n347), .CDN(n338), 
        .Q(fifo_entry[37]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_1__18_ ( .D(n412), .CPN(n347), .CDN(n339), 
        .Q(fifo_entry[38]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__19_ ( .D(n413), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[19]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__0_ ( .D(n414), .CPN(n347), .CDN(n341), 
        .Q(fifo_entry[0]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__1_ ( .D(n415), .CPN(n348), .CDN(n342), 
        .Q(fifo_entry[1]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__2_ ( .D(n416), .CPN(n348), .CDN(n343), 
        .Q(fifo_entry[2]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__3_ ( .D(n417), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[3]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__4_ ( .D(n418), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[4]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__5_ ( .D(n419), .CPN(n348), .CDN(n338), 
        .Q(fifo_entry[5]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__6_ ( .D(n420), .CPN(n348), .CDN(n339), 
        .Q(fifo_entry[6]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__7_ ( .D(n421), .CPN(n348), .CDN(n340), 
        .Q(fifo_entry[7]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__8_ ( .D(n422), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[8]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__9_ ( .D(n423), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[9]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__10_ ( .D(n424), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[10]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__11_ ( .D(n425), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[11]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__12_ ( .D(n426), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[12]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__13_ ( .D(n427), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[13]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__14_ ( .D(n428), .CPN(wr_clk), .CDN(
        n336), .Q(fifo_entry[14]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__15_ ( .D(n429), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[15]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__16_ ( .D(n430), .CPN(n348), .CDN(n336), 
        .Q(fifo_entry[16]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__17_ ( .D(n431), .CPN(n349), .CDN(n336), 
        .Q(fifo_entry[17]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_0__18_ ( .D(n432), .CPN(n344), .CDN(n336), 
        .Q(fifo_entry[18]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__19_ ( .D(n433), .CPN(n345), .CDN(n336), 
        .Q(fifo_entry[99]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__0_ ( .D(n434), .CPN(n346), .CDN(n337), 
        .Q(fifo_entry[80]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__1_ ( .D(n435), .CPN(n347), .CDN(n337), 
        .Q(fifo_entry[81]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__2_ ( .D(n436), .CPN(n351), .CDN(n337), 
        .Q(fifo_entry[82]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__3_ ( .D(n437), .CPN(n350), .CDN(n337), 
        .Q(fifo_entry[83]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__4_ ( .D(n438), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[84]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__5_ ( .D(n439), .CPN(n348), .CDN(n337), 
        .Q(fifo_entry[85]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__6_ ( .D(n440), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[86]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__7_ ( .D(n441), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[87]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__8_ ( .D(n442), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[88]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__9_ ( .D(n443), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[89]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__10_ ( .D(n444), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[90]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__11_ ( .D(n445), .CPN(n349), .CDN(n337), 
        .Q(fifo_entry[91]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__12_ ( .D(n446), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[92]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__13_ ( .D(n447), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[93]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__14_ ( .D(n448), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[94]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__15_ ( .D(n449), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[95]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__16_ ( .D(n450), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[96]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__17_ ( .D(n451), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[97]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_4__18_ ( .D(n452), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[98]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__19_ ( .D(n453), .CPN(n349), .CDN(n338), 
        .Q(fifo_entry[119]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__0_ ( .D(n454), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[100]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__1_ ( .D(n455), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[101]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__2_ ( .D(n456), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[102]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__3_ ( .D(n457), .CPN(n350), .CDN(n338), 
        .Q(fifo_entry[103]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__4_ ( .D(n458), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[104]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__5_ ( .D(n459), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[105]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__6_ ( .D(n460), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[106]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__7_ ( .D(n461), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[107]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__8_ ( .D(n462), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[108]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__9_ ( .D(n463), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[109]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__10_ ( .D(n464), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[110]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__11_ ( .D(n465), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[111]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__12_ ( .D(n466), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[112]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__13_ ( .D(n467), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[113]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__14_ ( .D(n468), .CPN(n345), .CDN(n339), 
        .Q(fifo_entry[114]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__15_ ( .D(n469), .CPN(n350), .CDN(n339), 
        .Q(fifo_entry[115]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__16_ ( .D(n470), .CPN(n348), .CDN(n340), 
        .Q(fifo_entry[116]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__17_ ( .D(n471), .CPN(n349), .CDN(n340), 
        .Q(fifo_entry[117]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_5__18_ ( .D(n472), .CPN(n344), .CDN(n340), 
        .Q(fifo_entry[118]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__19_ ( .D(n473), .CPN(n345), .CDN(n340), 
        .Q(fifo_entry[59]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__0_ ( .D(n474), .CPN(n346), .CDN(n340), 
        .Q(fifo_entry[40]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__1_ ( .D(n475), .CPN(n347), .CDN(n340), 
        .Q(fifo_entry[41]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__2_ ( .D(n476), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[42]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__3_ ( .D(n477), .CPN(n350), .CDN(n340), 
        .Q(fifo_entry[43]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__4_ ( .D(n478), .CPN(n346), .CDN(n340), 
        .Q(fifo_entry[44]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__5_ ( .D(n479), .CPN(wr_clk), .CDN(n340), .Q(fifo_entry[45]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__6_ ( .D(n480), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[46]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__7_ ( .D(n481), .CPN(n351), .CDN(n340), 
        .Q(fifo_entry[47]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__8_ ( .D(n482), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[48]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__9_ ( .D(n483), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[49]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__10_ ( .D(n484), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[50]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__11_ ( .D(n485), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[51]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__12_ ( .D(n486), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[52]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__13_ ( .D(n487), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[53]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__14_ ( .D(n488), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[54]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__15_ ( .D(n489), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[55]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__16_ ( .D(n490), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[56]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__17_ ( .D(n491), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[57]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_2__18_ ( .D(n492), .CPN(n351), .CDN(n341), 
        .Q(fifo_entry[58]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__19_ ( .D(n493), .CPN(n349), .CDN(n341), 
        .Q(fifo_entry[139]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__0_ ( .D(n494), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[120]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__1_ ( .D(n495), .CPN(n345), .CDN(n342), 
        .Q(fifo_entry[121]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__2_ ( .D(n496), .CPN(n346), .CDN(n342), 
        .Q(fifo_entry[122]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__3_ ( .D(n497), .CPN(n347), .CDN(n342), 
        .Q(fifo_entry[123]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__4_ ( .D(n498), .CPN(n351), .CDN(n342), 
        .Q(fifo_entry[124]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__5_ ( .D(n499), .CPN(n350), .CDN(n342), 
        .Q(fifo_entry[125]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__6_ ( .D(n500), .CPN(n351), .CDN(n342), 
        .Q(fifo_entry[126]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__7_ ( .D(n501), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[127]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__8_ ( .D(n502), .CPN(n351), .CDN(n342), 
        .Q(fifo_entry[128]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__9_ ( .D(n503), .CPN(n348), .CDN(n342), 
        .Q(fifo_entry[129]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__10_ ( .D(n504), .CPN(n349), .CDN(n342), 
        .Q(fifo_entry[130]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__11_ ( .D(n505), .CPN(n344), .CDN(n342), 
        .Q(fifo_entry[131]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__12_ ( .D(n506), .CPN(n345), .CDN(n343), 
        .Q(fifo_entry[132]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__13_ ( .D(n507), .CPN(n346), .CDN(n343), 
        .Q(fifo_entry[133]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__14_ ( .D(n508), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[134]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__15_ ( .D(n509), .CPN(n351), .CDN(n343), 
        .Q(fifo_entry[135]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__16_ ( .D(n510), .CPN(n350), .CDN(n343), 
        .Q(fifo_entry[136]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__17_ ( .D(n511), .CPN(n348), .CDN(n343), 
        .Q(fifo_entry[137]) );
  DFNCND1BWP12T30P140 fifo_entry_reg_6__18_ ( .D(n512), .CPN(n347), .CDN(n343), 
        .Q(fifo_entry[138]) );
  DFSNQD1BWP12T30P140 inc_rd_ptr__reg ( .D(n352), .CP(n335), .SDN(n334), .Q(
        inc_rd_ptr_) );
  DFSNQD1BWP12T30P140 fifo_rd_addr_reg_2_ ( .D(n515), .CP(n335), .SDN(n334), 
        .Q(fifo_rd_addr[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_10_ ( .D(fifo_data_out_d[10]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[10]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_11_ ( .D(fifo_data_out_d[11]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[11]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_12_ ( .D(fifo_data_out_d[12]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[12]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_13_ ( .D(fifo_data_out_d[13]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[13]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_14_ ( .D(fifo_data_out_d[14]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[14]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_15_ ( .D(fifo_data_out_d[15]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[15]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_16_ ( .D(fifo_data_out_d[16]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[16]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_17_ ( .D(fifo_data_out_d[17]), .CP(
        n335), .CDN(n334), .Q(fifo_data_out[17]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_18_ ( .D(fifo_data_out_d[18]), .CP(
        n335), .CDN(rd_reset_), .Q(fifo_data_out[18]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_19_ ( .D(fifo_data_out_d[19]), .CP(
        n335), .CDN(rd_reset_), .Q(fifo_data_out[19]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_0_ ( .D(fifo_data_out_d[0]), .CP(
        rd_clk), .CDN(rd_reset_), .Q(fifo_data_out[0]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_1_ ( .D(fifo_data_out_d[1]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[1]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_2_ ( .D(fifo_data_out_d[2]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[2]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_3_ ( .D(fifo_data_out_d[3]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[3]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_4_ ( .D(fifo_data_out_d[4]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[4]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_5_ ( .D(fifo_data_out_d[5]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[5]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_6_ ( .D(fifo_data_out_d[6]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[6]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_7_ ( .D(fifo_data_out_d[7]), .CP(n335), 
        .CDN(n334), .Q(fifo_data_out[7]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_8_ ( .D(fifo_data_out_d[8]), .CP(
        rd_clk), .CDN(n334), .Q(fifo_data_out[8]) );
  DFCNQD1BWP12T30P140 fifo_data_out_reg_9_ ( .D(fifo_data_out_d[9]), .CP(n335), 
        .CDN(rd_reset_), .Q(fifo_data_out[9]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_0_ ( .D(n513), .CP(n335), .CDN(
        rd_reset_), .Q(fifo_rd_addr[0]) );
  DFCNQD1BWP12T30P140 fifo_rd_addr_reg_1_ ( .D(n514), .CP(n335), .CDN(n334), 
        .Q(fifo_rd_addr[1]) );
  INVD0BWP12T30P140 U3 ( .I(n131), .ZN(n1) );
  NR2D0BWP12T30P140 U4 ( .A1(fifo_wr_addr[2]), .A2(n133), .ZN(n321) );
  NR3D0BWP12T30P140 U5 ( .A1(fifo_wr_addr[0]), .A2(fifo_wr_addr[1]), .A3(n332), 
        .ZN(n12) );
  CKBD0BWP12T30P140 U6 ( .I(n12), .Z(n14) );
  INVD0BWP12T30P140 U7 ( .I(fifo_data_in[8]), .ZN(n315) );
  CKBD0BWP12T30P140 U8 ( .I(n12), .Z(n13) );
  MAOI22D0BWP12T30P140 U9 ( .A1(n14), .A2(n315), .B1(fifo_entry[88]), .B2(n13), 
        .ZN(n442) );
  ND3D0BWP12T30P140 U10 ( .A1(n332), .A2(fifo_wr_addr[1]), .A3(fifo_wr_addr[0]), .ZN(n81) );
  INVD0BWP12T30P140 U11 ( .I(n81), .ZN(n322) );
  CKBD0BWP12T30P140 U12 ( .I(n322), .Z(n331) );
  INVD0BWP12T30P140 U13 ( .I(fifo_data_in[10]), .ZN(n134) );
  CKBD0BWP12T30P140 U14 ( .I(n322), .Z(n329) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n331), .A2(n134), .B1(fifo_entry[70]), .B2(
        n329), .ZN(n384) );
  INVD0BWP12T30P140 U16 ( .I(fifo_data_in[11]), .ZN(n136) );
  MAOI22D0BWP12T30P140 U17 ( .A1(n331), .A2(n136), .B1(fifo_entry[71]), .B2(
        n322), .ZN(n385) );
  INVD0BWP12T30P140 U18 ( .I(fifo_data_in[12]), .ZN(n139) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n331), .A2(n139), .B1(fifo_entry[72]), .B2(
        n329), .ZN(n386) );
  INVD0BWP12T30P140 U20 ( .I(fifo_data_in[13]), .ZN(n140) );
  MAOI22D0BWP12T30P140 U21 ( .A1(n331), .A2(n140), .B1(fifo_entry[73]), .B2(
        n322), .ZN(n387) );
  INVD0BWP12T30P140 U22 ( .I(fifo_data_in[14]), .ZN(n141) );
  MAOI22D0BWP12T30P140 U23 ( .A1(n331), .A2(n141), .B1(fifo_entry[74]), .B2(
        n329), .ZN(n388) );
  INVD0BWP12T30P140 U24 ( .I(fifo_data_in[15]), .ZN(n149) );
  MAOI22D0BWP12T30P140 U25 ( .A1(n331), .A2(n149), .B1(fifo_entry[75]), .B2(
        n322), .ZN(n389) );
  ND2D0BWP12T30P140 U26 ( .A1(fifo_wr_addr[1]), .A2(n333), .ZN(n133) );
  CKBD0BWP12T30P140 U27 ( .I(n321), .Z(n319) );
  MAOI22D0BWP12T30P140 U28 ( .A1(n321), .A2(n141), .B1(fifo_entry[54]), .B2(
        n319), .ZN(n488) );
  INVD0BWP12T30P140 U29 ( .I(fifo_data_in[16]), .ZN(n320) );
  MAOI22D0BWP12T30P140 U30 ( .A1(n331), .A2(n320), .B1(fifo_entry[76]), .B2(
        n329), .ZN(n390) );
  MAOI22D0BWP12T30P140 U31 ( .A1(n321), .A2(n140), .B1(fifo_entry[53]), .B2(
        n319), .ZN(n487) );
  INVD0BWP12T30P140 U32 ( .I(fifo_data_in[17]), .ZN(n318) );
  MAOI22D0BWP12T30P140 U33 ( .A1(n331), .A2(n318), .B1(fifo_entry[77]), .B2(
        n322), .ZN(n391) );
  INVD0BWP12T30P140 U34 ( .I(fifo_data_in[18]), .ZN(n150) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n329), .A2(n150), .B1(fifo_entry[78]), .B2(
        n329), .ZN(n392) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n321), .A2(n139), .B1(fifo_entry[52]), .B2(
        n319), .ZN(n486) );
  NR3D0BWP12T30P140 U37 ( .A1(fifo_wr_addr[2]), .A2(fifo_wr_addr[1]), .A3(n333), .ZN(n3) );
  CKBD0BWP12T30P140 U38 ( .I(n3), .Z(n4) );
  INVD0BWP12T30P140 U39 ( .I(fifo_data_in[19]), .ZN(n325) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n4), .A2(n325), .B1(fifo_entry[39]), .B2(n3), 
        .ZN(n393) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n321), .A2(n136), .B1(fifo_entry[51]), .B2(
        n319), .ZN(n485) );
  INVD0BWP12T30P140 U42 ( .I(fifo_data_in[0]), .ZN(n316) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n4), .A2(n316), .B1(fifo_entry[20]), .B2(n3), 
        .ZN(n394) );
  INVD0BWP12T30P140 U44 ( .I(fifo_data_in[1]), .ZN(n330) );
  CKBD0BWP12T30P140 U45 ( .I(n3), .Z(n5) );
  MAOI22D0BWP12T30P140 U46 ( .A1(n4), .A2(n330), .B1(fifo_entry[21]), .B2(n5), 
        .ZN(n395) );
  MAOI22D0BWP12T30P140 U47 ( .A1(n321), .A2(n134), .B1(fifo_entry[50]), .B2(
        n319), .ZN(n484) );
  INVD0BWP12T30P140 U48 ( .I(fifo_data_in[2]), .ZN(n323) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n4), .A2(n323), .B1(fifo_entry[22]), .B2(n3), 
        .ZN(n396) );
  CKBD0BWP12T30P140 U50 ( .I(n321), .Z(n2) );
  INVD0BWP12T30P140 U51 ( .I(fifo_data_in[9]), .ZN(n135) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n2), .A2(n135), .B1(fifo_entry[49]), .B2(n319), .ZN(n483) );
  INVD0BWP12T30P140 U53 ( .I(fifo_data_in[3]), .ZN(n317) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n3), .A2(n317), .B1(fifo_entry[23]), .B2(n5), 
        .ZN(n397) );
  INVD0BWP12T30P140 U55 ( .I(fifo_data_in[4]), .ZN(n147) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n4), .A2(n147), .B1(fifo_entry[24]), .B2(n3), 
        .ZN(n398) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n321), .A2(n315), .B1(fifo_entry[48]), .B2(
        n319), .ZN(n482) );
  INVD0BWP12T30P140 U58 ( .I(fifo_data_in[5]), .ZN(n148) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n3), .A2(n148), .B1(fifo_entry[25]), .B2(n5), 
        .ZN(n399) );
  INVD0BWP12T30P140 U60 ( .I(fifo_data_in[7]), .ZN(n328) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n321), .A2(n328), .B1(fifo_entry[47]), .B2(
        n319), .ZN(n481) );
  INVD0BWP12T30P140 U62 ( .I(fifo_data_in[6]), .ZN(n327) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n5), .A2(n327), .B1(fifo_entry[26]), .B2(n5), 
        .ZN(n400) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n4), .A2(n328), .B1(fifo_entry[27]), .B2(n5), 
        .ZN(n401) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n2), .A2(n327), .B1(fifo_entry[46]), .B2(n2), 
        .ZN(n480) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n4), .A2(n315), .B1(fifo_entry[28]), .B2(n5), 
        .ZN(n402) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n2), .A2(n148), .B1(fifo_entry[45]), .B2(n2), 
        .ZN(n479) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n5), .A2(n135), .B1(fifo_entry[29]), .B2(n3), 
        .ZN(n403) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n4), .A2(n134), .B1(fifo_entry[30]), .B2(n5), 
        .ZN(n404) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n2), .A2(n147), .B1(fifo_entry[44]), .B2(n2), 
        .ZN(n478) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n4), .A2(n136), .B1(fifo_entry[31]), .B2(n3), 
        .ZN(n405) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n2), .A2(n317), .B1(fifo_entry[43]), .B2(n2), 
        .ZN(n477) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n4), .A2(n139), .B1(fifo_entry[32]), .B2(n5), 
        .ZN(n406) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n4), .A2(n140), .B1(fifo_entry[33]), .B2(n3), 
        .ZN(n407) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n321), .A2(n323), .B1(fifo_entry[42]), .B2(n2), .ZN(n476) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n4), .A2(n141), .B1(fifo_entry[34]), .B2(n5), 
        .ZN(n408) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n321), .A2(n330), .B1(fifo_entry[41]), .B2(n2), .ZN(n475) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n4), .A2(n149), .B1(fifo_entry[35]), .B2(n3), 
        .ZN(n409) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n321), .A2(n316), .B1(fifo_entry[40]), .B2(n2), .ZN(n474) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n4), .A2(n320), .B1(fifo_entry[36]), .B2(n5), 
        .ZN(n410) );
  MAOI22D0BWP12T30P140 U81 ( .A1(n321), .A2(n325), .B1(fifo_entry[59]), .B2(n2), .ZN(n473) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n4), .A2(n318), .B1(fifo_entry[37]), .B2(n3), 
        .ZN(n411) );
  NR3D0BWP12T30P140 U83 ( .A1(fifo_wr_addr[1]), .A2(n333), .A3(n332), .ZN(n7)
         );
  CKBD0BWP12T30P140 U84 ( .I(n7), .Z(n6) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n6), .A2(n150), .B1(fifo_entry[118]), .B2(n6), 
        .ZN(n472) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n5), .A2(n150), .B1(fifo_entry[38]), .B2(n5), 
        .ZN(n412) );
  CKBD0BWP12T30P140 U87 ( .I(n7), .Z(n8) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n8), .A2(n318), .B1(fifo_entry[117]), .B2(n7), 
        .ZN(n471) );
  NR3D0BWP12T30P140 U89 ( .A1(fifo_wr_addr[2]), .A2(fifo_wr_addr[0]), .A3(
        fifo_wr_addr[1]), .ZN(n9) );
  CKBD0BWP12T30P140 U90 ( .I(n9), .Z(n10) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n10), .A2(n325), .B1(fifo_entry[19]), .B2(n9), 
        .ZN(n413) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n8), .A2(n320), .B1(fifo_entry[116]), .B2(n6), 
        .ZN(n470) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n10), .A2(n316), .B1(fifo_entry[0]), .B2(n9), 
        .ZN(n414) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n8), .A2(n149), .B1(fifo_entry[115]), .B2(n7), 
        .ZN(n469) );
  CKBD0BWP12T30P140 U95 ( .I(n9), .Z(n11) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n10), .A2(n330), .B1(fifo_entry[1]), .B2(n11), 
        .ZN(n415) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n329), .A2(n135), .B1(fifo_entry[69]), .B2(
        n322), .ZN(n383) );
  MAOI22D0BWP12T30P140 U98 ( .A1(n8), .A2(n141), .B1(fifo_entry[114]), .B2(n6), 
        .ZN(n468) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n10), .A2(n323), .B1(fifo_entry[2]), .B2(n9), 
        .ZN(n416) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n8), .A2(n140), .B1(fifo_entry[113]), .B2(n7), .ZN(n467) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n9), .A2(n317), .B1(fifo_entry[3]), .B2(n11), 
        .ZN(n417) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n8), .A2(n139), .B1(fifo_entry[112]), .B2(n6), .ZN(n466) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n10), .A2(n147), .B1(fifo_entry[4]), .B2(n9), 
        .ZN(n418) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n8), .A2(n136), .B1(fifo_entry[111]), .B2(n7), .ZN(n465) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n9), .A2(n148), .B1(fifo_entry[5]), .B2(n11), 
        .ZN(n419) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n8), .A2(n134), .B1(fifo_entry[110]), .B2(n6), .ZN(n464) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n11), .A2(n327), .B1(fifo_entry[6]), .B2(n11), .ZN(n420) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n6), .A2(n135), .B1(fifo_entry[109]), .B2(n7), .ZN(n463) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n10), .A2(n328), .B1(fifo_entry[7]), .B2(n11), .ZN(n421) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n8), .A2(n315), .B1(fifo_entry[108]), .B2(n6), .ZN(n462) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n10), .A2(n315), .B1(fifo_entry[8]), .B2(n11), .ZN(n422) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n8), .A2(n328), .B1(fifo_entry[107]), .B2(n6), .ZN(n461) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n11), .A2(n135), .B1(fifo_entry[9]), .B2(n9), 
        .ZN(n423) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n6), .A2(n327), .B1(fifo_entry[106]), .B2(n6), .ZN(n460) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n10), .A2(n134), .B1(fifo_entry[10]), .B2(
        n11), .ZN(n424) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n7), .A2(n148), .B1(fifo_entry[105]), .B2(n6), .ZN(n459) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n10), .A2(n136), .B1(fifo_entry[11]), .B2(n9), .ZN(n425) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n8), .A2(n147), .B1(fifo_entry[104]), .B2(n7), .ZN(n458) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n10), .A2(n139), .B1(fifo_entry[12]), .B2(
        n11), .ZN(n426) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n7), .A2(n317), .B1(fifo_entry[103]), .B2(n6), .ZN(n457) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n10), .A2(n140), .B1(fifo_entry[13]), .B2(n9), .ZN(n427) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n8), .A2(n323), .B1(fifo_entry[102]), .B2(n7), .ZN(n456) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n10), .A2(n141), .B1(fifo_entry[14]), .B2(
        n11), .ZN(n428) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n8), .A2(n330), .B1(fifo_entry[101]), .B2(n6), .ZN(n455) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n10), .A2(n149), .B1(fifo_entry[15]), .B2(n9), .ZN(n429) );
  MAOI22D0BWP12T30P140 U126 ( .A1(n8), .A2(n316), .B1(fifo_entry[100]), .B2(n7), .ZN(n454) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n10), .A2(n320), .B1(fifo_entry[16]), .B2(
        n11), .ZN(n430) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n8), .A2(n325), .B1(fifo_entry[119]), .B2(n7), .ZN(n453) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n10), .A2(n318), .B1(fifo_entry[17]), .B2(n9), .ZN(n431) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n13), .A2(n150), .B1(fifo_entry[98]), .B2(
        n13), .ZN(n452) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n11), .A2(n150), .B1(fifo_entry[18]), .B2(
        n11), .ZN(n432) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n14), .A2(n318), .B1(fifo_entry[97]), .B2(
        n12), .ZN(n451) );
  MAOI22D0BWP12T30P140 U133 ( .A1(n14), .A2(n325), .B1(fifo_entry[99]), .B2(
        n12), .ZN(n433) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n14), .A2(n320), .B1(fifo_entry[96]), .B2(
        n13), .ZN(n450) );
  MAOI22D0BWP12T30P140 U135 ( .A1(n14), .A2(n316), .B1(fifo_entry[80]), .B2(
        n12), .ZN(n434) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n14), .A2(n149), .B1(fifo_entry[95]), .B2(
        n12), .ZN(n449) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n14), .A2(n330), .B1(fifo_entry[81]), .B2(
        n13), .ZN(n435) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n14), .A2(n141), .B1(fifo_entry[94]), .B2(
        n13), .ZN(n448) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n14), .A2(n323), .B1(fifo_entry[82]), .B2(
        n12), .ZN(n436) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n14), .A2(n140), .B1(fifo_entry[93]), .B2(
        n12), .ZN(n447) );
  MAOI22D0BWP12T30P140 U141 ( .A1(n12), .A2(n317), .B1(fifo_entry[83]), .B2(
        n13), .ZN(n437) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n14), .A2(n139), .B1(fifo_entry[92]), .B2(
        n13), .ZN(n446) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n14), .A2(n147), .B1(fifo_entry[84]), .B2(
        n12), .ZN(n438) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n14), .A2(n136), .B1(fifo_entry[91]), .B2(
        n12), .ZN(n445) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n12), .A2(n148), .B1(fifo_entry[85]), .B2(
        n13), .ZN(n439) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n14), .A2(n134), .B1(fifo_entry[90]), .B2(
        n13), .ZN(n444) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n13), .A2(n327), .B1(fifo_entry[86]), .B2(
        n13), .ZN(n440) );
  MAOI22D0BWP12T30P140 U148 ( .A1(n13), .A2(n135), .B1(fifo_entry[89]), .B2(
        n12), .ZN(n443) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n14), .A2(n328), .B1(fifo_entry[87]), .B2(
        n13), .ZN(n441) );
  AN2D0BWP12T30P140 U150 ( .A1(fifo_type), .A2(inc_rd_ptr_), .Z(n132) );
  INVD0BWP12T30P140 U151 ( .I(fifo_rd_addr[0]), .ZN(n16) );
  NR2D0BWP12T30P140 U152 ( .A1(n16), .A2(n132), .ZN(n129) );
  AOI21D0BWP12T30P140 U153 ( .A1(n132), .A2(n16), .B(n129), .ZN(n513) );
  INVD0BWP12T30P140 U154 ( .I(inc_rd_ptr_), .ZN(n352) );
  ND2D0BWP12T30P140 U155 ( .A1(n352), .A2(fifo_type), .ZN(n115) );
  INVD0BWP12T30P140 U156 ( .I(n115), .ZN(n117) );
  ND2D0BWP12T30P140 U157 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[1]), .ZN(n15) );
  NR2D0BWP12T30P140 U158 ( .A1(fifo_rd_addr[0]), .A2(n15), .ZN(n107) );
  NR2D0BWP12T30P140 U159 ( .A1(n16), .A2(n15), .ZN(n109) );
  AOI22D0BWP12T30P140 U160 ( .A1(n107), .A2(fifo_entry[139]), .B1(n109), .B2(
        fifo_entry[159]), .ZN(n20) );
  INVD0BWP12T30P140 U161 ( .I(fifo_rd_addr[1]), .ZN(n146) );
  NR3D0BWP12T30P140 U162 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[2]), .A3(
        n146), .ZN(n104) );
  NR3D0BWP12T30P140 U163 ( .A1(fifo_rd_addr[2]), .A2(n16), .A3(n146), .ZN(n128) );
  AOI22D0BWP12T30P140 U164 ( .A1(n104), .A2(fifo_entry[59]), .B1(n1), .B2(
        fifo_entry[79]), .ZN(n19) );
  INVD0BWP12T30P140 U165 ( .I(fifo_rd_addr[2]), .ZN(n130) );
  NR3D0BWP12T30P140 U166 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[1]), .A3(
        n130), .ZN(n108) );
  NR3D0BWP12T30P140 U167 ( .A1(fifo_rd_addr[1]), .A2(n130), .A3(n16), .ZN(n110) );
  AOI22D0BWP12T30P140 U168 ( .A1(n108), .A2(fifo_entry[99]), .B1(n110), .B2(
        fifo_entry[119]), .ZN(n18) );
  NR3D0BWP12T30P140 U169 ( .A1(fifo_rd_addr[0]), .A2(fifo_rd_addr[2]), .A3(
        fifo_rd_addr[1]), .ZN(n105) );
  NR3D0BWP12T30P140 U170 ( .A1(fifo_rd_addr[2]), .A2(fifo_rd_addr[1]), .A3(n16), .ZN(n106) );
  AOI22D0BWP12T30P140 U171 ( .A1(n105), .A2(fifo_entry[19]), .B1(n106), .B2(
        fifo_entry[39]), .ZN(n17) );
  AN4D0BWP12T30P140 U172 ( .A1(n20), .A2(n19), .A3(n18), .A4(n17), .Z(n118) );
  AOI22D0BWP12T30P140 U173 ( .A1(n105), .A2(fifo_entry[9]), .B1(n104), .B2(
        fifo_entry[49]), .ZN(n24) );
  AOI22D0BWP12T30P140 U174 ( .A1(n106), .A2(fifo_entry[29]), .B1(n128), .B2(
        fifo_entry[69]), .ZN(n23) );
  AOI22D0BWP12T30P140 U175 ( .A1(n108), .A2(fifo_entry[89]), .B1(n107), .B2(
        fifo_entry[129]), .ZN(n22) );
  AOI22D0BWP12T30P140 U176 ( .A1(n110), .A2(fifo_entry[109]), .B1(n109), .B2(
        fifo_entry[149]), .ZN(n21) );
  AN4D0BWP12T30P140 U177 ( .A1(n24), .A2(n23), .A3(n22), .A4(n21), .Z(n25) );
  AOI22D0BWP12T30P140 U178 ( .A1(n117), .A2(n118), .B1(n25), .B2(n115), .ZN(
        fifo_data_out_d[9]) );
  AOI22D0BWP12T30P140 U179 ( .A1(n107), .A2(fifo_entry[138]), .B1(n109), .B2(
        fifo_entry[158]), .ZN(n29) );
  AOI22D0BWP12T30P140 U180 ( .A1(n104), .A2(fifo_entry[58]), .B1(n128), .B2(
        fifo_entry[78]), .ZN(n28) );
  AOI22D0BWP12T30P140 U181 ( .A1(n108), .A2(fifo_entry[98]), .B1(n110), .B2(
        fifo_entry[118]), .ZN(n27) );
  AOI22D0BWP12T30P140 U182 ( .A1(n105), .A2(fifo_entry[18]), .B1(n106), .B2(
        fifo_entry[38]), .ZN(n26) );
  AN4D0BWP12T30P140 U183 ( .A1(n29), .A2(n28), .A3(n27), .A4(n26), .Z(n119) );
  AOI22D0BWP12T30P140 U184 ( .A1(n105), .A2(fifo_entry[8]), .B1(n104), .B2(
        fifo_entry[48]), .ZN(n33) );
  AOI22D0BWP12T30P140 U185 ( .A1(n106), .A2(fifo_entry[28]), .B1(n128), .B2(
        fifo_entry[68]), .ZN(n32) );
  AOI22D0BWP12T30P140 U186 ( .A1(n108), .A2(fifo_entry[88]), .B1(n107), .B2(
        fifo_entry[128]), .ZN(n31) );
  AOI22D0BWP12T30P140 U187 ( .A1(n110), .A2(fifo_entry[108]), .B1(n109), .B2(
        fifo_entry[148]), .ZN(n30) );
  AN4D0BWP12T30P140 U188 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Z(n34) );
  AOI22D0BWP12T30P140 U189 ( .A1(n117), .A2(n119), .B1(n34), .B2(n115), .ZN(
        fifo_data_out_d[8]) );
  AOI22D0BWP12T30P140 U190 ( .A1(n107), .A2(fifo_entry[137]), .B1(n109), .B2(
        fifo_entry[157]), .ZN(n38) );
  AOI22D0BWP12T30P140 U191 ( .A1(n104), .A2(fifo_entry[57]), .B1(n128), .B2(
        fifo_entry[77]), .ZN(n37) );
  AOI22D0BWP12T30P140 U192 ( .A1(n108), .A2(fifo_entry[97]), .B1(n110), .B2(
        fifo_entry[117]), .ZN(n36) );
  AOI22D0BWP12T30P140 U193 ( .A1(n105), .A2(fifo_entry[17]), .B1(n106), .B2(
        fifo_entry[37]), .ZN(n35) );
  AN4D0BWP12T30P140 U194 ( .A1(n38), .A2(n37), .A3(n36), .A4(n35), .Z(n120) );
  AOI22D0BWP12T30P140 U195 ( .A1(n105), .A2(fifo_entry[7]), .B1(n104), .B2(
        fifo_entry[47]), .ZN(n42) );
  AOI22D0BWP12T30P140 U196 ( .A1(n106), .A2(fifo_entry[27]), .B1(n128), .B2(
        fifo_entry[67]), .ZN(n41) );
  AOI22D0BWP12T30P140 U197 ( .A1(n108), .A2(fifo_entry[87]), .B1(n107), .B2(
        fifo_entry[127]), .ZN(n40) );
  AOI22D0BWP12T30P140 U198 ( .A1(n110), .A2(fifo_entry[107]), .B1(n109), .B2(
        fifo_entry[147]), .ZN(n39) );
  AN4D0BWP12T30P140 U199 ( .A1(n42), .A2(n41), .A3(n40), .A4(n39), .Z(n43) );
  AOI22D0BWP12T30P140 U200 ( .A1(n117), .A2(n120), .B1(n43), .B2(n115), .ZN(
        fifo_data_out_d[7]) );
  AOI22D0BWP12T30P140 U201 ( .A1(n107), .A2(fifo_entry[136]), .B1(n109), .B2(
        fifo_entry[156]), .ZN(n47) );
  AOI22D0BWP12T30P140 U202 ( .A1(n104), .A2(fifo_entry[56]), .B1(n128), .B2(
        fifo_entry[76]), .ZN(n46) );
  AOI22D0BWP12T30P140 U203 ( .A1(n108), .A2(fifo_entry[96]), .B1(n110), .B2(
        fifo_entry[116]), .ZN(n45) );
  AOI22D0BWP12T30P140 U204 ( .A1(n105), .A2(fifo_entry[16]), .B1(n106), .B2(
        fifo_entry[36]), .ZN(n44) );
  AN4D0BWP12T30P140 U205 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .Z(n121) );
  AOI22D0BWP12T30P140 U206 ( .A1(n105), .A2(fifo_entry[6]), .B1(n104), .B2(
        fifo_entry[46]), .ZN(n51) );
  AOI22D0BWP12T30P140 U207 ( .A1(n106), .A2(fifo_entry[26]), .B1(n128), .B2(
        fifo_entry[66]), .ZN(n50) );
  AOI22D0BWP12T30P140 U208 ( .A1(n108), .A2(fifo_entry[86]), .B1(n107), .B2(
        fifo_entry[126]), .ZN(n49) );
  AOI22D0BWP12T30P140 U209 ( .A1(n110), .A2(fifo_entry[106]), .B1(n109), .B2(
        fifo_entry[146]), .ZN(n48) );
  AN4D0BWP12T30P140 U210 ( .A1(n51), .A2(n50), .A3(n49), .A4(n48), .Z(n52) );
  AOI22D0BWP12T30P140 U211 ( .A1(n117), .A2(n121), .B1(n52), .B2(n115), .ZN(
        fifo_data_out_d[6]) );
  OAI21D0BWP12T30P140 U212 ( .A1(fifo_wr_addr[1]), .A2(n333), .B(n133), .ZN(
        fifo_wr_addr_d[1]) );
  AOI22D0BWP12T30P140 U213 ( .A1(n107), .A2(fifo_entry[135]), .B1(n109), .B2(
        fifo_entry[155]), .ZN(n56) );
  AOI22D0BWP12T30P140 U214 ( .A1(n104), .A2(fifo_entry[55]), .B1(n128), .B2(
        fifo_entry[75]), .ZN(n55) );
  AOI22D0BWP12T30P140 U215 ( .A1(n108), .A2(fifo_entry[95]), .B1(n110), .B2(
        fifo_entry[115]), .ZN(n54) );
  AOI22D0BWP12T30P140 U216 ( .A1(n105), .A2(fifo_entry[15]), .B1(n106), .B2(
        fifo_entry[35]), .ZN(n53) );
  AN4D0BWP12T30P140 U217 ( .A1(n56), .A2(n55), .A3(n54), .A4(n53), .Z(n122) );
  AOI22D0BWP12T30P140 U218 ( .A1(n105), .A2(fifo_entry[5]), .B1(n104), .B2(
        fifo_entry[45]), .ZN(n60) );
  AOI22D0BWP12T30P140 U219 ( .A1(n106), .A2(fifo_entry[25]), .B1(n128), .B2(
        fifo_entry[65]), .ZN(n59) );
  AOI22D0BWP12T30P140 U220 ( .A1(n108), .A2(fifo_entry[85]), .B1(n107), .B2(
        fifo_entry[125]), .ZN(n58) );
  AOI22D0BWP12T30P140 U221 ( .A1(n110), .A2(fifo_entry[105]), .B1(n109), .B2(
        fifo_entry[145]), .ZN(n57) );
  AN4D0BWP12T30P140 U222 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .Z(n61) );
  AOI22D0BWP12T30P140 U223 ( .A1(n117), .A2(n122), .B1(n61), .B2(n115), .ZN(
        fifo_data_out_d[5]) );
  AOI22D0BWP12T30P140 U224 ( .A1(n107), .A2(fifo_entry[134]), .B1(n109), .B2(
        fifo_entry[154]), .ZN(n65) );
  AOI22D0BWP12T30P140 U225 ( .A1(n104), .A2(fifo_entry[54]), .B1(n128), .B2(
        fifo_entry[74]), .ZN(n64) );
  AOI22D0BWP12T30P140 U226 ( .A1(n108), .A2(fifo_entry[94]), .B1(n110), .B2(
        fifo_entry[114]), .ZN(n63) );
  AOI22D0BWP12T30P140 U227 ( .A1(n105), .A2(fifo_entry[14]), .B1(n106), .B2(
        fifo_entry[34]), .ZN(n62) );
  AN4D0BWP12T30P140 U228 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .Z(n123) );
  AOI22D0BWP12T30P140 U229 ( .A1(n105), .A2(fifo_entry[4]), .B1(n104), .B2(
        fifo_entry[44]), .ZN(n69) );
  AOI22D0BWP12T30P140 U230 ( .A1(n106), .A2(fifo_entry[24]), .B1(n128), .B2(
        fifo_entry[64]), .ZN(n68) );
  AOI22D0BWP12T30P140 U231 ( .A1(n108), .A2(fifo_entry[84]), .B1(n107), .B2(
        fifo_entry[124]), .ZN(n67) );
  AOI22D0BWP12T30P140 U232 ( .A1(n110), .A2(fifo_entry[104]), .B1(n109), .B2(
        fifo_entry[144]), .ZN(n66) );
  AN4D0BWP12T30P140 U233 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .Z(n70) );
  AOI22D0BWP12T30P140 U234 ( .A1(n117), .A2(n123), .B1(n70), .B2(n115), .ZN(
        fifo_data_out_d[4]) );
  AOI22D0BWP12T30P140 U235 ( .A1(n107), .A2(fifo_entry[133]), .B1(n109), .B2(
        fifo_entry[153]), .ZN(n74) );
  AOI22D0BWP12T30P140 U236 ( .A1(n104), .A2(fifo_entry[53]), .B1(n128), .B2(
        fifo_entry[73]), .ZN(n73) );
  AOI22D0BWP12T30P140 U237 ( .A1(n108), .A2(fifo_entry[93]), .B1(n110), .B2(
        fifo_entry[113]), .ZN(n72) );
  AOI22D0BWP12T30P140 U238 ( .A1(n105), .A2(fifo_entry[13]), .B1(n106), .B2(
        fifo_entry[33]), .ZN(n71) );
  AN4D0BWP12T30P140 U239 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .Z(n124) );
  AOI22D0BWP12T30P140 U240 ( .A1(n105), .A2(fifo_entry[3]), .B1(n104), .B2(
        fifo_entry[43]), .ZN(n78) );
  AOI22D0BWP12T30P140 U241 ( .A1(n106), .A2(fifo_entry[23]), .B1(n128), .B2(
        fifo_entry[63]), .ZN(n77) );
  AOI22D0BWP12T30P140 U242 ( .A1(n108), .A2(fifo_entry[83]), .B1(n107), .B2(
        fifo_entry[123]), .ZN(n76) );
  AOI22D0BWP12T30P140 U243 ( .A1(n110), .A2(fifo_entry[103]), .B1(n109), .B2(
        fifo_entry[143]), .ZN(n75) );
  AN4D0BWP12T30P140 U244 ( .A1(n78), .A2(n77), .A3(n76), .A4(n75), .Z(n79) );
  AOI22D0BWP12T30P140 U245 ( .A1(n117), .A2(n124), .B1(n79), .B2(n115), .ZN(
        fifo_data_out_d[3]) );
  ND2D0BWP12T30P140 U246 ( .A1(fifo_wr_addr[0]), .A2(fifo_wr_addr[1]), .ZN(n80) );
  NR2D0BWP12T30P140 U247 ( .A1(n332), .A2(n80), .ZN(n143) );
  CKBD0BWP12T30P140 U248 ( .I(n143), .Z(n138) );
  OAI21D0BWP12T30P140 U249 ( .A1(n138), .A2(n332), .B(n81), .ZN(
        fifo_wr_addr_d[2]) );
  AOI22D0BWP12T30P140 U250 ( .A1(n107), .A2(fifo_entry[132]), .B1(n109), .B2(
        fifo_entry[152]), .ZN(n85) );
  AOI22D0BWP12T30P140 U251 ( .A1(n104), .A2(fifo_entry[52]), .B1(n128), .B2(
        fifo_entry[72]), .ZN(n84) );
  AOI22D0BWP12T30P140 U252 ( .A1(n108), .A2(fifo_entry[92]), .B1(n110), .B2(
        fifo_entry[112]), .ZN(n83) );
  AOI22D0BWP12T30P140 U253 ( .A1(n105), .A2(fifo_entry[12]), .B1(n106), .B2(
        fifo_entry[32]), .ZN(n82) );
  AN4D0BWP12T30P140 U254 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .Z(n125) );
  AOI22D0BWP12T30P140 U255 ( .A1(n105), .A2(fifo_entry[2]), .B1(n104), .B2(
        fifo_entry[42]), .ZN(n89) );
  AOI22D0BWP12T30P140 U256 ( .A1(n106), .A2(fifo_entry[22]), .B1(n128), .B2(
        fifo_entry[62]), .ZN(n88) );
  AOI22D0BWP12T30P140 U257 ( .A1(n108), .A2(fifo_entry[82]), .B1(n107), .B2(
        fifo_entry[122]), .ZN(n87) );
  AOI22D0BWP12T30P140 U258 ( .A1(n110), .A2(fifo_entry[102]), .B1(n109), .B2(
        fifo_entry[142]), .ZN(n86) );
  AN4D0BWP12T30P140 U259 ( .A1(n89), .A2(n88), .A3(n87), .A4(n86), .Z(n90) );
  AOI22D0BWP12T30P140 U260 ( .A1(n117), .A2(n125), .B1(n90), .B2(n115), .ZN(
        fifo_data_out_d[2]) );
  AOI22D0BWP12T30P140 U261 ( .A1(n107), .A2(fifo_entry[131]), .B1(n109), .B2(
        fifo_entry[151]), .ZN(n94) );
  AOI22D0BWP12T30P140 U262 ( .A1(n104), .A2(fifo_entry[51]), .B1(n128), .B2(
        fifo_entry[71]), .ZN(n93) );
  AOI22D0BWP12T30P140 U263 ( .A1(n108), .A2(fifo_entry[91]), .B1(n110), .B2(
        fifo_entry[111]), .ZN(n92) );
  AOI22D0BWP12T30P140 U264 ( .A1(n105), .A2(fifo_entry[11]), .B1(n106), .B2(
        fifo_entry[31]), .ZN(n91) );
  AN4D0BWP12T30P140 U265 ( .A1(n94), .A2(n93), .A3(n92), .A4(n91), .Z(n126) );
  AOI22D0BWP12T30P140 U266 ( .A1(n105), .A2(fifo_entry[1]), .B1(n104), .B2(
        fifo_entry[41]), .ZN(n98) );
  AOI22D0BWP12T30P140 U267 ( .A1(n106), .A2(fifo_entry[21]), .B1(n128), .B2(
        fifo_entry[61]), .ZN(n97) );
  AOI22D0BWP12T30P140 U268 ( .A1(n108), .A2(fifo_entry[81]), .B1(n107), .B2(
        fifo_entry[121]), .ZN(n96) );
  AOI22D0BWP12T30P140 U269 ( .A1(n110), .A2(fifo_entry[101]), .B1(n109), .B2(
        fifo_entry[141]), .ZN(n95) );
  AN4D0BWP12T30P140 U270 ( .A1(n98), .A2(n97), .A3(n96), .A4(n95), .Z(n99) );
  AOI22D0BWP12T30P140 U271 ( .A1(n117), .A2(n126), .B1(n99), .B2(n115), .ZN(
        fifo_data_out_d[1]) );
  AOI22D0BWP12T30P140 U272 ( .A1(n107), .A2(fifo_entry[130]), .B1(n109), .B2(
        fifo_entry[150]), .ZN(n103) );
  AOI22D0BWP12T30P140 U273 ( .A1(n104), .A2(fifo_entry[50]), .B1(n128), .B2(
        fifo_entry[70]), .ZN(n102) );
  AOI22D0BWP12T30P140 U274 ( .A1(n108), .A2(fifo_entry[90]), .B1(n110), .B2(
        fifo_entry[110]), .ZN(n101) );
  AOI22D0BWP12T30P140 U275 ( .A1(n105), .A2(fifo_entry[10]), .B1(n106), .B2(
        fifo_entry[30]), .ZN(n100) );
  AN4D0BWP12T30P140 U276 ( .A1(n103), .A2(n102), .A3(n101), .A4(n100), .Z(n127) );
  AOI22D0BWP12T30P140 U277 ( .A1(fifo_entry[0]), .A2(n105), .B1(fifo_entry[40]), .B2(n104), .ZN(n114) );
  AOI22D0BWP12T30P140 U278 ( .A1(fifo_entry[20]), .A2(n106), .B1(n128), .B2(
        fifo_entry[60]), .ZN(n113) );
  AOI22D0BWP12T30P140 U279 ( .A1(fifo_entry[80]), .A2(n108), .B1(
        fifo_entry[120]), .B2(n107), .ZN(n112) );
  AOI22D0BWP12T30P140 U280 ( .A1(fifo_entry[100]), .A2(n110), .B1(
        fifo_entry[140]), .B2(n109), .ZN(n111) );
  AN4D0BWP12T30P140 U281 ( .A1(n114), .A2(n113), .A3(n112), .A4(n111), .Z(n116) );
  AOI22D0BWP12T30P140 U282 ( .A1(n117), .A2(n127), .B1(n116), .B2(n115), .ZN(
        fifo_data_out_d[0]) );
  NR2D0BWP12T30P140 U283 ( .A1(fifo_type), .A2(n118), .ZN(fifo_data_out_d[19])
         );
  CKBD0BWP12T30P140 U284 ( .I(n143), .Z(n142) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n143), .A2(n325), .B1(fifo_entry[159]), .B2(
        n142), .ZN(n353) );
  NR2D0BWP12T30P140 U286 ( .A1(fifo_type), .A2(n119), .ZN(fifo_data_out_d[18])
         );
  NR2D0BWP12T30P140 U287 ( .A1(fifo_type), .A2(n120), .ZN(fifo_data_out_d[17])
         );
  NR2D0BWP12T30P140 U288 ( .A1(fifo_type), .A2(n121), .ZN(fifo_data_out_d[16])
         );
  MAOI22D0BWP12T30P140 U289 ( .A1(n143), .A2(n316), .B1(fifo_entry[140]), .B2(
        n142), .ZN(n354) );
  NR2D0BWP12T30P140 U290 ( .A1(fifo_type), .A2(n122), .ZN(fifo_data_out_d[15])
         );
  NR2D0BWP12T30P140 U291 ( .A1(fifo_type), .A2(n123), .ZN(fifo_data_out_d[14])
         );
  MAOI22D0BWP12T30P140 U292 ( .A1(n143), .A2(n330), .B1(fifo_entry[141]), .B2(
        n142), .ZN(n355) );
  NR2D0BWP12T30P140 U293 ( .A1(fifo_type), .A2(n124), .ZN(fifo_data_out_d[13])
         );
  NR2D0BWP12T30P140 U294 ( .A1(fifo_type), .A2(n125), .ZN(fifo_data_out_d[12])
         );
  NR2D0BWP12T30P140 U295 ( .A1(fifo_type), .A2(n126), .ZN(fifo_data_out_d[11])
         );
  MAOI22D0BWP12T30P140 U296 ( .A1(n143), .A2(n323), .B1(fifo_entry[142]), .B2(
        n142), .ZN(n356) );
  NR2D0BWP12T30P140 U297 ( .A1(fifo_type), .A2(n127), .ZN(fifo_data_out_d[10])
         );
  INVD0BWP12T30P140 U298 ( .I(n128), .ZN(n131) );
  INVD0BWP12T30P140 U299 ( .I(n129), .ZN(n145) );
  NR2D0BWP12T30P140 U300 ( .A1(n146), .A2(n145), .ZN(n144) );
  OAI22D0BWP12T30P140 U301 ( .A1(n132), .A2(n131), .B1(n144), .B2(n130), .ZN(
        n515) );
  MAOI22D0BWP12T30P140 U302 ( .A1(n143), .A2(n317), .B1(fifo_entry[143]), .B2(
        n142), .ZN(n357) );
  NR2D0BWP12T30P140 U303 ( .A1(n332), .A2(n133), .ZN(n326) );
  CKBD0BWP12T30P140 U304 ( .I(n326), .Z(n137) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n326), .A2(n150), .B1(fifo_entry[138]), .B2(
        n137), .ZN(n512) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n143), .A2(n147), .B1(fifo_entry[144]), .B2(
        n142), .ZN(n358) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n326), .A2(n318), .B1(fifo_entry[137]), .B2(
        n137), .ZN(n511) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n143), .A2(n148), .B1(fifo_entry[145]), .B2(
        n138), .ZN(n359) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n326), .A2(n320), .B1(fifo_entry[136]), .B2(
        n137), .ZN(n510) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n143), .A2(n327), .B1(fifo_entry[146]), .B2(
        n138), .ZN(n360) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n326), .A2(n149), .B1(fifo_entry[135]), .B2(
        n137), .ZN(n509) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n138), .A2(n328), .B1(fifo_entry[147]), .B2(
        n138), .ZN(n361) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n326), .A2(n141), .B1(fifo_entry[134]), .B2(
        n137), .ZN(n508) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n326), .A2(n140), .B1(fifo_entry[133]), .B2(
        n137), .ZN(n507) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n138), .A2(n315), .B1(fifo_entry[148]), .B2(
        n138), .ZN(n362) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n326), .A2(n139), .B1(fifo_entry[132]), .B2(
        n137), .ZN(n506) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n138), .A2(n135), .B1(fifo_entry[149]), .B2(
        n138), .ZN(n363) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n326), .A2(n136), .B1(fifo_entry[131]), .B2(
        n137), .ZN(n505) );
  MAOI22D0BWP12T30P140 U319 ( .A1(n138), .A2(n134), .B1(fifo_entry[150]), .B2(
        n138), .ZN(n364) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n326), .A2(n134), .B1(fifo_entry[130]), .B2(
        n137), .ZN(n504) );
  CKBD0BWP12T30P140 U321 ( .I(n326), .Z(n324) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n324), .A2(n135), .B1(fifo_entry[129]), .B2(
        n137), .ZN(n503) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n143), .A2(n136), .B1(fifo_entry[151]), .B2(
        n138), .ZN(n365) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n326), .A2(n315), .B1(fifo_entry[128]), .B2(
        n137), .ZN(n502) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n326), .A2(n328), .B1(fifo_entry[127]), .B2(
        n137), .ZN(n501) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n143), .A2(n139), .B1(fifo_entry[152]), .B2(
        n138), .ZN(n366) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n324), .A2(n327), .B1(fifo_entry[126]), .B2(
        n324), .ZN(n500) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n143), .A2(n140), .B1(fifo_entry[153]), .B2(
        n142), .ZN(n367) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n324), .A2(n148), .B1(fifo_entry[125]), .B2(
        n324), .ZN(n499) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n324), .A2(n147), .B1(fifo_entry[124]), .B2(
        n324), .ZN(n498) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n143), .A2(n141), .B1(fifo_entry[154]), .B2(
        n142), .ZN(n368) );
  MAOI22D0BWP12T30P140 U332 ( .A1(n324), .A2(n317), .B1(fifo_entry[123]), .B2(
        n324), .ZN(n497) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n143), .A2(n149), .B1(fifo_entry[155]), .B2(
        n142), .ZN(n369) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n326), .A2(n323), .B1(fifo_entry[122]), .B2(
        n324), .ZN(n496) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n143), .A2(n320), .B1(fifo_entry[156]), .B2(
        n142), .ZN(n370) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n143), .A2(n318), .B1(fifo_entry[157]), .B2(
        n142), .ZN(n371) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n326), .A2(n330), .B1(fifo_entry[121]), .B2(
        n324), .ZN(n495) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n143), .A2(n150), .B1(fifo_entry[158]), .B2(
        n142), .ZN(n372) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n326), .A2(n316), .B1(fifo_entry[120]), .B2(
        n324), .ZN(n494) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n331), .A2(n325), .B1(fifo_entry[79]), .B2(
        n322), .ZN(n373) );
  AOI21D0BWP12T30P140 U341 ( .A1(n146), .A2(n145), .B(n144), .ZN(n514) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n331), .A2(n147), .B1(fifo_entry[64]), .B2(
        n322), .ZN(n378) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n322), .A2(n148), .B1(fifo_entry[65]), .B2(
        n329), .ZN(n379) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n321), .A2(n149), .B1(fifo_entry[55]), .B2(
        n319), .ZN(n489) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n321), .A2(n150), .B1(fifo_entry[58]), .B2(
        n319), .ZN(n492) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n331), .A2(n315), .B1(fifo_entry[68]), .B2(
        n329), .ZN(n382) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n331), .A2(n316), .B1(fifo_entry[60]), .B2(
        n322), .ZN(n374) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n322), .A2(n317), .B1(fifo_entry[63]), .B2(
        n329), .ZN(n377) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n321), .A2(n318), .B1(fifo_entry[57]), .B2(
        n319), .ZN(n491) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n321), .A2(n320), .B1(fifo_entry[56]), .B2(
        n319), .ZN(n490) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n331), .A2(n323), .B1(fifo_entry[62]), .B2(
        n322), .ZN(n376) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n326), .A2(n325), .B1(fifo_entry[139]), .B2(
        n324), .ZN(n493) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n329), .A2(n327), .B1(fifo_entry[66]), .B2(
        n329), .ZN(n380) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n331), .A2(n328), .B1(fifo_entry[67]), .B2(
        n329), .ZN(n381) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n331), .A2(n330), .B1(fifo_entry[61]), .B2(
        n329), .ZN(n375) );
  CKBD0BWP12T30P140 U356 ( .I(wr_clk), .Z(n350) );
  CKBD0BWP12T30P140 U357 ( .I(wr_clk), .Z(n351) );
  CKBD0BWP12T30P140 U358 ( .I(wr_clk), .Z(n347) );
  CKBD0BWP12T30P140 U359 ( .I(wr_clk), .Z(n346) );
  CKBD0BWP12T30P140 U360 ( .I(wr_clk), .Z(n345) );
  CKBD0BWP12T30P140 U361 ( .I(wr_clk), .Z(n344) );
  CKBD0BWP12T30P140 U362 ( .I(wr_clk), .Z(n349) );
  CKBD0BWP12T30P140 U363 ( .I(wr_clk), .Z(n348) );
  CKBD0BWP12T30P140 U364 ( .I(rd_clk), .Z(n335) );
  CKBD0BWP12T30P140 U365 ( .I(wr_reset_), .Z(n341) );
  CKBD0BWP12T30P140 U366 ( .I(wr_reset_), .Z(n342) );
  CKBD0BWP12T30P140 U367 ( .I(wr_reset_), .Z(n343) );
  CKBD0BWP12T30P140 U368 ( .I(wr_reset_), .Z(n338) );
  CKBD0BWP12T30P140 U369 ( .I(wr_reset_), .Z(n339) );
  CKBD0BWP12T30P140 U370 ( .I(wr_reset_), .Z(n340) );
  CKBD0BWP12T30P140 U371 ( .I(wr_reset_), .Z(n336) );
  CKBD0BWP12T30P140 U372 ( .I(wr_reset_), .Z(n337) );
  CKBD0BWP12T30P140 U373 ( .I(rd_reset_), .Z(n334) );
endmodule


module sip_rxaui_tx_glue ( fifo_type, rxaui_tx_data, media_interface_mode, 
        serdes_mode, fifo_rxaui_tx_data0, fifo_rxaui_tx_data1 );
  output [19:0] rxaui_tx_data;
  input [19:0] fifo_rxaui_tx_data0;
  input [19:0] fifo_rxaui_tx_data1;
  input media_interface_mode, serdes_mode;
  output fifo_type;
  wire   n1;

  CKBD0BWP12T30P140 U1 ( .I(fifo_rxaui_tx_data0[0]), .Z(rxaui_tx_data[0]) );
  CKBD0BWP12T30P140 U2 ( .I(fifo_rxaui_tx_data0[1]), .Z(rxaui_tx_data[1]) );
  CKBD0BWP12T30P140 U3 ( .I(fifo_rxaui_tx_data0[2]), .Z(rxaui_tx_data[2]) );
  CKBD0BWP12T30P140 U4 ( .I(fifo_rxaui_tx_data0[3]), .Z(rxaui_tx_data[3]) );
  CKBD0BWP12T30P140 U5 ( .I(fifo_rxaui_tx_data0[4]), .Z(rxaui_tx_data[4]) );
  CKBD0BWP12T30P140 U6 ( .I(fifo_rxaui_tx_data0[5]), .Z(rxaui_tx_data[5]) );
  CKBD0BWP12T30P140 U7 ( .I(fifo_rxaui_tx_data0[6]), .Z(rxaui_tx_data[6]) );
  CKBD0BWP12T30P140 U8 ( .I(fifo_rxaui_tx_data0[7]), .Z(rxaui_tx_data[7]) );
  CKBD0BWP12T30P140 U9 ( .I(fifo_rxaui_tx_data0[8]), .Z(rxaui_tx_data[8]) );
  CKBD0BWP12T30P140 U10 ( .I(fifo_rxaui_tx_data0[9]), .Z(rxaui_tx_data[9]) );
  INR2D1BWP12T30P140 U11 ( .A1(media_interface_mode), .B1(serdes_mode), .ZN(n1) );
  CKMUX2D0BWP12T30P140 U12 ( .I0(fifo_rxaui_tx_data0[11]), .I1(
        fifo_rxaui_tx_data1[1]), .S(n1), .Z(rxaui_tx_data[11]) );
  CKMUX2D0BWP12T30P140 U13 ( .I0(fifo_rxaui_tx_data0[12]), .I1(
        fifo_rxaui_tx_data1[2]), .S(n1), .Z(rxaui_tx_data[12]) );
  CKMUX2D0BWP12T30P140 U14 ( .I0(fifo_rxaui_tx_data0[10]), .I1(
        fifo_rxaui_tx_data1[0]), .S(n1), .Z(rxaui_tx_data[10]) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(fifo_rxaui_tx_data0[14]), .I1(
        fifo_rxaui_tx_data1[4]), .S(n1), .Z(rxaui_tx_data[14]) );
  CKMUX2D0BWP12T30P140 U16 ( .I0(fifo_rxaui_tx_data0[15]), .I1(
        fifo_rxaui_tx_data1[5]), .S(n1), .Z(rxaui_tx_data[15]) );
  CKMUX2D0BWP12T30P140 U17 ( .I0(fifo_rxaui_tx_data0[16]), .I1(
        fifo_rxaui_tx_data1[6]), .S(n1), .Z(rxaui_tx_data[16]) );
  CKMUX2D0BWP12T30P140 U18 ( .I0(fifo_rxaui_tx_data0[17]), .I1(
        fifo_rxaui_tx_data1[7]), .S(n1), .Z(rxaui_tx_data[17]) );
  CKMUX2D0BWP12T30P140 U19 ( .I0(fifo_rxaui_tx_data0[18]), .I1(
        fifo_rxaui_tx_data1[8]), .S(n1), .Z(rxaui_tx_data[18]) );
  CKMUX2D0BWP12T30P140 U20 ( .I0(fifo_rxaui_tx_data0[19]), .I1(
        fifo_rxaui_tx_data1[9]), .S(n1), .Z(rxaui_tx_data[19]) );
  CKMUX2D0BWP12T30P140 U21 ( .I0(fifo_rxaui_tx_data0[13]), .I1(
        fifo_rxaui_tx_data1[3]), .S(n1), .Z(rxaui_tx_data[13]) );
  OR2D0BWP12T30P140 U22 ( .A1(serdes_mode), .A2(media_interface_mode), .Z(
        fifo_type) );
endmodule


module sip_rxaui_tx_top ( rxaui_tx_data, serdes_tx_clk, 
        serdes_txclk_in0_reset_, serdes_txclk_in1_reset_, serdes_tx_clk_reset_, 
        media_interface_mode, serdes_mode, txclk_in0, txdata_serdes0, 
        txclk_in1, txdata_serdes1 );
  output [19:0] rxaui_tx_data;
  input [19:0] txdata_serdes0;
  input [19:0] txdata_serdes1;
  input serdes_tx_clk, serdes_txclk_in0_reset_, serdes_txclk_in1_reset_,
         serdes_tx_clk_reset_, media_interface_mode, serdes_mode, txclk_in0,
         txclk_in1;
  wire   fifo_type;
  wire   [19:0] fifo_rxaui_tx_data0;
  wire   [19:0] fifo_rxaui_tx_data1;

  sip_phase_sync_fifo_slow_2_fast_1 sip_phase_sync_fifo_slow_2_fast_0 ( 
        .fifo_data_out(fifo_rxaui_tx_data0), .fifo_type(fifo_type), .wr_clk(
        txclk_in0), .rd_clk(serdes_tx_clk), .wr_reset_(serdes_txclk_in0_reset_), .rd_reset_(serdes_tx_clk_reset_), .fifo_data_in(txdata_serdes0) );
  sip_phase_sync_fifo_slow_2_fast_0 sip_phase_sync_fifo_slow_2_fast_1 ( 
        .fifo_data_out(fifo_rxaui_tx_data1), .fifo_type(media_interface_mode), 
        .wr_clk(txclk_in1), .rd_clk(serdes_tx_clk), .wr_reset_(
        serdes_txclk_in1_reset_), .rd_reset_(serdes_tx_clk_reset_), 
        .fifo_data_in(txdata_serdes1) );
  sip_rxaui_tx_glue sip_rxaui_tx_glue ( .fifo_type(fifo_type), .rxaui_tx_data(
        rxaui_tx_data), .media_interface_mode(media_interface_mode), 
        .serdes_mode(serdes_mode), .fifo_rxaui_tx_data0(fifo_rxaui_tx_data0), 
        .fifo_rxaui_tx_data1(fifo_rxaui_tx_data1) );
endmodule


module sip_clock_divider_by_2_glue_1 ( clk_div2, reset_, clk );
  input reset_, clk;
  output clk_div2;
  wire   n1;

  DFSNQD1BWP12T30P140 clk_div2_reg ( .D(n1), .CP(clk), .SDN(reset_), .Q(
        clk_div2) );
  INVD0BWP12T30P140 U3 ( .I(clk_div2), .ZN(n1) );
endmodule


module sip_clock_divider_1 ( clk_out, clk_in, dn, dp, reset_n );
  input clk_in, dn, dp, reset_n;
  output clk_out;
  wire   qn, qp;

  DFNCND1BWP12T30P140 qp_reg ( .D(dp), .CPN(clk_in), .CDN(reset_n), .Q(qp) );
  DFCNQD1BWP12T30P140 qn_reg ( .D(dn), .CP(clk_in), .CDN(reset_n), .Q(qn) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(qn), .I1(qp), .S(clk_in), .Z(clk_out) );
endmodule


module sip_clock_divider_by_2_1 ( clk_div2, reset_, clk );
  input reset_, clk;
  output clk_div2;
  wire   dp_dn;

  sip_clock_divider_by_2_glue_1 sip_clock_divider_by_2_glue ( .clk_div2(dp_dn), 
        .reset_(reset_), .clk(clk) );
  sip_clock_divider_1 clock_divider ( .clk_out(clk_div2), .clk_in(clk), .dn(
        dp_dn), .dp(dp_dn), .reset_n(reset_) );
endmodule


module sip_clk_mux_2 ( clk_out, clk_in0, clk_in1, selector );
  input clk_in0, clk_in1, selector;
  output clk_out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(clk_in0), .I1(clk_in1), .S(selector), .Z(
        clk_out) );
endmodule


module sip_clock_divider_by_2_glue_0 ( clk_div2, reset_, clk );
  input reset_, clk;
  output clk_div2;
  wire   n2;

  DFSNQD1BWP12T30P140 clk_div2_reg ( .D(n2), .CP(clk), .SDN(reset_), .Q(
        clk_div2) );
  INVD0BWP12T30P140 U3 ( .I(clk_div2), .ZN(n2) );
endmodule


module sip_clock_divider_0 ( clk_out, clk_in, dn, dp, reset_n );
  input clk_in, dn, dp, reset_n;
  output clk_out;
  wire   qn, qp;

  DFNCND1BWP12T30P140 qp_reg ( .D(dp), .CPN(clk_in), .CDN(reset_n), .Q(qp) );
  DFCNQD1BWP12T30P140 qn_reg ( .D(dn), .CP(clk_in), .CDN(reset_n), .Q(qn) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(qn), .I1(qp), .S(clk_in), .Z(clk_out) );
endmodule


module sip_clock_divider_by_2_0 ( clk_div2, reset_, clk );
  input reset_, clk;
  output clk_div2;
  wire   dp_dn;

  sip_clock_divider_by_2_glue_0 sip_clock_divider_by_2_glue ( .clk_div2(dp_dn), 
        .reset_(reset_), .clk(clk) );
  sip_clock_divider_0 clock_divider ( .clk_out(clk_div2), .clk_in(clk), .dn(
        dp_dn), .dp(dp_dn), .reset_n(reset_) );
endmodule


module sip_reset_sync_4 ( load_config_, reset_out_, reset_chg_, clk, reset_in_, 
        scan_mode_ );
  input clk, reset_in_, scan_mode_;
  output load_config_, reset_out_, reset_chg_;
  wire   reset_synch3_, reset_synch4_, reset_synch2_, reset_synch1_, n1, n2,
         n3, n4;

  DFQD2BWP12T30P140 reset_synch4__reg ( .D(reset_synch3_), .CP(clk), .Q(
        reset_synch4_) );
  DFQD2BWP12T30P140 reset_synch1__reg ( .D(reset_in_), .CP(clk), .Q(
        reset_synch1_) );
  DFQD2BWP12T30P140 reset_synch3__reg ( .D(reset_synch2_), .CP(clk), .Q(
        reset_synch3_) );
  DFQD2BWP12T30P140 reset_synch2__reg ( .D(reset_synch1_), .CP(clk), .Q(
        reset_synch2_) );
  IND2D1BWP12T30P140 U3 ( .A1(scan_mode_), .B1(reset_in_), .ZN(n2) );
  IOA21D0BWP12T30P140 U4 ( .A1(reset_in_), .A2(reset_synch4_), .B(n2), .ZN(
        reset_out_) );
  INVD0BWP12T30P140 U5 ( .I(reset_synch3_), .ZN(n4) );
  OAI21D0BWP12T30P140 U6 ( .A1(reset_synch2_), .A2(n4), .B(scan_mode_), .ZN(n1) );
  AOI32D0BWP12T30P140 U7 ( .A1(reset_synch2_), .A2(n2), .A3(n4), .B1(n1), .B2(
        n2), .ZN(reset_chg_) );
  INVD0BWP12T30P140 U8 ( .I(reset_in_), .ZN(n3) );
  AOI21D0BWP12T30P140 U9 ( .A1(scan_mode_), .A2(n4), .B(n3), .ZN(load_config_)
         );
endmodule


module sip_reset_sync_3 ( load_config_, reset_out_, reset_chg_, clk, reset_in_, 
        scan_mode_ );
  input clk, reset_in_, scan_mode_;
  output load_config_, reset_out_, reset_chg_;
  wire   reset_synch3_, reset_synch4_, reset_synch2_, reset_synch1_, n1, n2,
         n3, n4;

  DFQD2BWP12T30P140 reset_synch4__reg ( .D(reset_synch3_), .CP(clk), .Q(
        reset_synch4_) );
  DFQD2BWP12T30P140 reset_synch1__reg ( .D(reset_in_), .CP(clk), .Q(
        reset_synch1_) );
  DFQD2BWP12T30P140 reset_synch3__reg ( .D(reset_synch2_), .CP(clk), .Q(
        reset_synch3_) );
  DFQD1BWP12T30P140 reset_synch2__reg ( .D(reset_synch1_), .CP(clk), .Q(
        reset_synch2_) );
  IND2D1BWP12T30P140 U3 ( .A1(scan_mode_), .B1(reset_in_), .ZN(n2) );
  IOA21D0BWP12T30P140 U4 ( .A1(reset_in_), .A2(reset_synch4_), .B(n2), .ZN(
        reset_out_) );
  INVD0BWP12T30P140 U5 ( .I(reset_synch3_), .ZN(n4) );
  OAI21D0BWP12T30P140 U6 ( .A1(reset_synch2_), .A2(n4), .B(scan_mode_), .ZN(n1) );
  AOI32D0BWP12T30P140 U7 ( .A1(reset_synch2_), .A2(n2), .A3(n4), .B1(n1), .B2(
        n2), .ZN(reset_chg_) );
  INVD0BWP12T30P140 U8 ( .I(reset_in_), .ZN(n3) );
  AOI21D0BWP12T30P140 U9 ( .A1(scan_mode_), .A2(n4), .B(n3), .ZN(load_config_)
         );
endmodule


module sip_reset_sync_2 ( load_config_, reset_out_, reset_chg_, clk, reset_in_, 
        scan_mode_ );
  input clk, reset_in_, scan_mode_;
  output load_config_, reset_out_, reset_chg_;
  wire   reset_synch3_, reset_synch4_, reset_synch2_, reset_synch1_, n1, n2,
         n3, n4;

  DFQD2BWP12T30P140 reset_synch4__reg ( .D(reset_synch3_), .CP(clk), .Q(
        reset_synch4_) );
  DFQD2BWP12T30P140 reset_synch1__reg ( .D(reset_in_), .CP(clk), .Q(
        reset_synch1_) );
  DFQD2BWP12T30P140 reset_synch3__reg ( .D(reset_synch2_), .CP(clk), .Q(
        reset_synch3_) );
  DFQD2BWP12T30P140 reset_synch2__reg ( .D(reset_synch1_), .CP(clk), .Q(
        reset_synch2_) );
  IND2D1BWP12T30P140 U3 ( .A1(scan_mode_), .B1(reset_in_), .ZN(n2) );
  IOA21D0BWP12T30P140 U4 ( .A1(reset_in_), .A2(reset_synch4_), .B(n2), .ZN(
        reset_out_) );
  INVD0BWP12T30P140 U5 ( .I(reset_synch3_), .ZN(n4) );
  OAI21D0BWP12T30P140 U6 ( .A1(reset_synch2_), .A2(n4), .B(scan_mode_), .ZN(n1) );
  AOI32D0BWP12T30P140 U7 ( .A1(reset_synch2_), .A2(n2), .A3(n4), .B1(n1), .B2(
        n2), .ZN(reset_chg_) );
  INVD0BWP12T30P140 U8 ( .I(reset_in_), .ZN(n3) );
  AOI21D0BWP12T30P140 U9 ( .A1(scan_mode_), .A2(n4), .B(n3), .ZN(load_config_)
         );
endmodule


module sip_reset_sync_1 ( load_config_, reset_out_, reset_chg_, clk, reset_in_, 
        scan_mode_ );
  input clk, reset_in_, scan_mode_;
  output load_config_, reset_out_, reset_chg_;
  wire   reset_synch3_, reset_synch4_, reset_synch2_, reset_synch1_, n1, n2,
         n3, n4;

  DFQD2BWP12T30P140 reset_synch1__reg ( .D(reset_in_), .CP(clk), .Q(
        reset_synch1_) );
  DFQD2BWP12T30P140 reset_synch3__reg ( .D(reset_synch2_), .CP(clk), .Q(
        reset_synch3_) );
  DFQD2BWP12T30P140 reset_synch2__reg ( .D(reset_synch1_), .CP(clk), .Q(
        reset_synch2_) );
  DFQD1BWP12T30P140 reset_synch4__reg ( .D(reset_synch3_), .CP(clk), .Q(
        reset_synch4_) );
  IND2D1BWP12T30P140 U3 ( .A1(scan_mode_), .B1(reset_in_), .ZN(n2) );
  IOA21D0BWP12T30P140 U4 ( .A1(reset_in_), .A2(reset_synch4_), .B(n2), .ZN(
        reset_out_) );
  INVD0BWP12T30P140 U5 ( .I(reset_synch3_), .ZN(n4) );
  OAI21D0BWP12T30P140 U6 ( .A1(reset_synch2_), .A2(n4), .B(scan_mode_), .ZN(n1) );
  AOI32D0BWP12T30P140 U7 ( .A1(reset_synch2_), .A2(n2), .A3(n4), .B1(n1), .B2(
        n2), .ZN(reset_chg_) );
  INVD0BWP12T30P140 U8 ( .I(reset_in_), .ZN(n3) );
  AOI21D0BWP12T30P140 U9 ( .A1(scan_mode_), .A2(n4), .B(n3), .ZN(load_config_)
         );
endmodule


module sip_clk_mux_0 ( clk_out, clk_in0, clk_in1, selector );
  input clk_in0, clk_in1, selector;
  output clk_out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(clk_in0), .I1(clk_in1), .S(selector), .Z(
        clk_out) );
endmodule


module sip_clk_mux_1 ( clk_out, clk_in0, clk_in1, selector );
  input clk_in0, clk_in1, selector;
  output clk_out;


  CKMUX2D0BWP12T30P140 U1 ( .I0(clk_in0), .I1(clk_in1), .S(selector), .Z(
        clk_out) );
endmodule


module sip_reset_sync_0 ( load_config_, reset_out_, reset_chg_, clk, reset_in_, 
        scan_mode_ );
  input clk, reset_in_, scan_mode_;
  output load_config_, reset_out_, reset_chg_;
  wire   reset_synch3_, reset_synch4_, reset_synch2_, reset_synch1_, n1, n2,
         n3, n4;

  DFQD2BWP12T30P140 reset_synch4__reg ( .D(reset_synch3_), .CP(clk), .Q(
        reset_synch4_) );
  DFQD2BWP12T30P140 reset_synch1__reg ( .D(reset_in_), .CP(clk), .Q(
        reset_synch1_) );
  DFQD2BWP12T30P140 reset_synch3__reg ( .D(reset_synch2_), .CP(clk), .Q(
        reset_synch3_) );
  DFQD2BWP12T30P140 reset_synch2__reg ( .D(reset_synch1_), .CP(clk), .Q(
        reset_synch2_) );
  IND2D1BWP12T30P140 U3 ( .A1(scan_mode_), .B1(reset_in_), .ZN(n2) );
  IOA21D0BWP12T30P140 U4 ( .A1(reset_in_), .A2(reset_synch4_), .B(n2), .ZN(
        reset_out_) );
  INVD0BWP12T30P140 U5 ( .I(reset_synch3_), .ZN(n4) );
  OAI21D0BWP12T30P140 U6 ( .A1(reset_synch2_), .A2(n4), .B(scan_mode_), .ZN(n1) );
  AOI32D0BWP12T30P140 U7 ( .A1(reset_synch2_), .A2(n2), .A3(n4), .B1(n1), .B2(
        n2), .ZN(reset_chg_) );
  INVD0BWP12T30P140 U8 ( .I(reset_in_), .ZN(n3) );
  AOI21D0BWP12T30P140 U9 ( .A1(scan_mode_), .A2(n4), .B(n3), .ZN(load_config_)
         );
endmodule


module sip_rxaui_clk_reset ( serdes_rx_clk_div2, rx_clk0, rx_clk1, 
        serdes_rx_clk_reset_, serdes_rx_clk_div2_reset_, txclk_out, 
        serdes_txclk_in0_reset_, serdes_txclk_in1_reset_, serdes_tx_clk_reset_, 
        scan_mode_, reset_, media_interface_mode, serdes_mode, serdes_rx_clk, 
        serdes_tx_clk, txclk_in0, txclk_in1 );
  input scan_mode_, reset_, media_interface_mode, serdes_mode, serdes_rx_clk,
         serdes_tx_clk, txclk_in0, txclk_in1;
  output serdes_rx_clk_div2, rx_clk0, rx_clk1, serdes_rx_clk_reset_,
         serdes_rx_clk_div2_reset_, txclk_out, serdes_txclk_in0_reset_,
         serdes_txclk_in1_reset_, serdes_tx_clk_reset_;
  wire   bypass_divider, serdes_tx_clk_div2;

  sip_clock_divider_by_2_1 rx_clk_div2 ( .clk_div2(serdes_rx_clk_div2), 
        .reset_(serdes_rx_clk_reset_), .clk(serdes_rx_clk) );
  sip_clk_mux_2 rx_clk_mux0 ( .clk_out(rx_clk0), .clk_in0(serdes_rx_clk_div2), 
        .clk_in1(serdes_rx_clk), .selector(bypass_divider) );
  sip_clk_mux_1 rx_clk_mux1 ( .clk_out(rx_clk1), .clk_in0(serdes_rx_clk_div2), 
        .clk_in1(serdes_rx_clk), .selector(bypass_divider) );
  sip_clock_divider_by_2_0 tx_clk_div2 ( .clk_div2(serdes_tx_clk_div2), 
        .reset_(serdes_tx_clk_reset_), .clk(serdes_tx_clk) );
  sip_clk_mux_0 xpcs_tx_clk_mux0 ( .clk_out(txclk_out), .clk_in0(
        serdes_tx_clk_div2), .clk_in1(serdes_tx_clk), .selector(bypass_divider) );
  sip_reset_sync_4 rx_clk_reset ( .reset_out_(serdes_rx_clk_reset_), .clk(
        serdes_rx_clk), .reset_in_(reset_), .scan_mode_(scan_mode_) );
  sip_reset_sync_3 rx_clk_div2_reset ( .reset_out_(serdes_rx_clk_div2_reset_), 
        .clk(serdes_rx_clk_div2), .reset_in_(reset_), .scan_mode_(scan_mode_)
         );
  sip_reset_sync_2 tx_clk_reset ( .reset_out_(serdes_tx_clk_reset_), .clk(
        serdes_tx_clk), .reset_in_(reset_), .scan_mode_(scan_mode_) );
  sip_reset_sync_1 txclk_in0_reset ( .reset_out_(serdes_txclk_in0_reset_), 
        .clk(txclk_in0), .reset_in_(reset_), .scan_mode_(scan_mode_) );
  sip_reset_sync_0 txclk_in1_reset ( .reset_out_(serdes_txclk_in1_reset_), 
        .clk(txclk_in1), .reset_in_(reset_), .scan_mode_(scan_mode_) );
  OAI21D0BWP12T30P140 U1 ( .A1(media_interface_mode), .A2(serdes_mode), .B(
        scan_mode_), .ZN(bypass_divider) );
endmodule


module sip_rxaui_top ( txclk_out, rxaui_tx_data, lock, rxdata_serdes0, 
        rxdata_serdes1, rx_clk0, rx_clk1, rxaui_status, reset_in_, 
        media_interface_mode, scan_mode_, serdes_mode, txclk_in0, txclk_in1, 
        txdata_serdes0, txdata_serdes1, s_tx_clk, lane0_sync_ok, lane1_sync_ok, 
        rxaui_rx_data, s_sigdet, s_rx_clk );
  output [19:0] rxaui_tx_data;
  output [19:0] rxdata_serdes0;
  output [19:0] rxdata_serdes1;
  output [8:0] rxaui_status;
  input [19:0] txdata_serdes0;
  input [19:0] txdata_serdes1;
  input [19:0] rxaui_rx_data;
  input reset_in_, media_interface_mode, scan_mode_, serdes_mode, txclk_in0,
         txclk_in1, s_tx_clk, lane0_sync_ok, lane1_sync_ok, s_sigdet, s_rx_clk;
  output txclk_out, lock, rx_clk0, rx_clk1;
  wire   serdes_rx_clk_div2, serdes_rx_clk_reset_, serdes_rx_clk_div2_reset_,
         serdes_txclk_in0_reset_, serdes_txclk_in1_reset_,
         serdes_tx_clk_reset_, n2, n3;

  sip_rxaui_rx_top sip_rxaui_rx_top ( .lock(lock), .rxdata_serdes0(
        rxdata_serdes0), .rxdata_serdes1(rxdata_serdes1), .rxaui_status(
        rxaui_status), .serdes_rx_clk(s_rx_clk), .serdes_rx_clk_div2(
        serdes_rx_clk_div2), .serdes_rx_clk_reset_(n2), .serdes_rx_clk_reset(
        n3), .serdes_rx_clk_div2_reset_(serdes_rx_clk_div2_reset_), .rx_clk0(
        rx_clk0), .rx_clk1(rx_clk1), .media_interface_mode(
        media_interface_mode), .serdes_mode(serdes_mode), .lane0_sync_ok(
        lane0_sync_ok), .lane1_sync_ok(lane1_sync_ok), .s_sigdet(s_sigdet), 
        .serdes_rx_data(rxaui_rx_data) );
  sip_rxaui_tx_top sip_rxaui_tx_top ( .rxaui_tx_data(rxaui_tx_data), 
        .serdes_tx_clk(s_tx_clk), .serdes_txclk_in0_reset_(
        serdes_txclk_in0_reset_), .serdes_txclk_in1_reset_(
        serdes_txclk_in1_reset_), .serdes_tx_clk_reset_(serdes_tx_clk_reset_), 
        .media_interface_mode(media_interface_mode), .serdes_mode(serdes_mode), 
        .txclk_in0(txclk_in0), .txdata_serdes0(txdata_serdes0), .txclk_in1(
        txclk_in1), .txdata_serdes1(txdata_serdes1) );
  sip_rxaui_clk_reset sip_rxaui_clk_reset ( .serdes_rx_clk_div2(
        serdes_rx_clk_div2), .rx_clk0(rx_clk0), .rx_clk1(rx_clk1), 
        .serdes_rx_clk_reset_(serdes_rx_clk_reset_), 
        .serdes_rx_clk_div2_reset_(serdes_rx_clk_div2_reset_), .txclk_out(
        txclk_out), .serdes_txclk_in0_reset_(serdes_txclk_in0_reset_), 
        .serdes_txclk_in1_reset_(serdes_txclk_in1_reset_), 
        .serdes_tx_clk_reset_(serdes_tx_clk_reset_), .scan_mode_(scan_mode_), 
        .reset_(reset_in_), .media_interface_mode(media_interface_mode), 
        .serdes_mode(serdes_mode), .serdes_rx_clk(s_rx_clk), .serdes_tx_clk(
        s_tx_clk), .txclk_in0(txclk_in0), .txclk_in1(txclk_in1) );
  INVD0BWP12T30P140 U2 ( .I(n3), .ZN(n2) );
  INVD0BWP12T30P140 U3 ( .I(serdes_rx_clk_reset_), .ZN(n3) );
endmodule

