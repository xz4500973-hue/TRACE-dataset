/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:47:28 2026
/////////////////////////////////////////////////////////////


module up_down_counter ( clk, reset, up_down, count );
  output [15:0] count;
  input clk, reset, up_down;
  wire   N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, C1_DATA3_1, C1_DATA3_2, C1_DATA3_3, C1_DATA3_4, C1_DATA3_5,
         C1_DATA3_6, C1_DATA3_7, C1_DATA3_8, C1_DATA3_9, C1_DATA3_10,
         C1_DATA3_11, C1_DATA3_12, C1_DATA3_13, C1_DATA3_14,
         DP_OP_17J1_122_2177_n37, DP_OP_17J1_122_2177_n15,
         DP_OP_17J1_122_2177_n14, DP_OP_17J1_122_2177_n13,
         DP_OP_17J1_122_2177_n12, DP_OP_17J1_122_2177_n11,
         DP_OP_17J1_122_2177_n10, DP_OP_17J1_122_2177_n9,
         DP_OP_17J1_122_2177_n8, DP_OP_17J1_122_2177_n7,
         DP_OP_17J1_122_2177_n6, DP_OP_17J1_122_2177_n5,
         DP_OP_17J1_122_2177_n4, DP_OP_17J1_122_2177_n3,
         DP_OP_17J1_122_2177_n2, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31;

  DFCNQD1BWP12T30P140 count_reg_15_ ( .D(N71), .CP(clk), .CDN(n31), .Q(
        count[15]) );
  DFCNQD1BWP12T30P140 count_reg_3_ ( .D(N59), .CP(clk), .CDN(n31), .Q(count[3]) );
  DFCNQD1BWP12T30P140 count_reg_7_ ( .D(N63), .CP(clk), .CDN(n31), .Q(count[7]) );
  DFCNQD1BWP12T30P140 count_reg_11_ ( .D(N67), .CP(clk), .CDN(n31), .Q(
        count[11]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(N56), .CP(clk), .CDN(n31), .Q(count[0]) );
  DFCNQD1BWP12T30P140 count_reg_2_ ( .D(N58), .CP(clk), .CDN(n31), .Q(count[2]) );
  DFCNQD1BWP12T30P140 count_reg_6_ ( .D(N62), .CP(clk), .CDN(n31), .Q(count[6]) );
  DFCNQD1BWP12T30P140 count_reg_10_ ( .D(N66), .CP(clk), .CDN(n31), .Q(
        count[10]) );
  DFCNQD1BWP12T30P140 count_reg_14_ ( .D(N70), .CP(clk), .CDN(n31), .Q(
        count[14]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(N57), .CP(clk), .CDN(n31), .Q(count[1]) );
  DFCNQD1BWP12T30P140 count_reg_5_ ( .D(N61), .CP(clk), .CDN(n31), .Q(count[5]) );
  DFCNQD1BWP12T30P140 count_reg_9_ ( .D(N65), .CP(clk), .CDN(n31), .Q(count[9]) );
  DFCNQD1BWP12T30P140 count_reg_13_ ( .D(N69), .CP(clk), .CDN(n31), .Q(
        count[13]) );
  DFCNQD1BWP12T30P140 count_reg_4_ ( .D(N60), .CP(clk), .CDN(n31), .Q(count[4]) );
  DFCNQD1BWP12T30P140 count_reg_8_ ( .D(N64), .CP(clk), .CDN(n31), .Q(count[8]) );
  DFCNQD1BWP12T30P140 count_reg_12_ ( .D(N68), .CP(clk), .CDN(n31), .Q(
        count[12]) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U16 ( .A(count[1]), .B(
        DP_OP_17J1_122_2177_n37), .CI(count[0]), .CO(DP_OP_17J1_122_2177_n15), 
        .S(C1_DATA3_1) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U15 ( .A(count[2]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n15), .CO(
        DP_OP_17J1_122_2177_n14), .S(C1_DATA3_2) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U14 ( .A(count[3]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n14), .CO(
        DP_OP_17J1_122_2177_n13), .S(C1_DATA3_3) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U13 ( .A(count[4]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n13), .CO(
        DP_OP_17J1_122_2177_n12), .S(C1_DATA3_4) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U12 ( .A(count[5]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n12), .CO(
        DP_OP_17J1_122_2177_n11), .S(C1_DATA3_5) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U11 ( .A(count[6]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n11), .CO(
        DP_OP_17J1_122_2177_n10), .S(C1_DATA3_6) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U10 ( .A(count[7]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n10), .CO(
        DP_OP_17J1_122_2177_n9), .S(C1_DATA3_7) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U9 ( .A(count[8]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n9), .CO(
        DP_OP_17J1_122_2177_n8), .S(C1_DATA3_8) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U8 ( .A(count[9]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n8), .CO(
        DP_OP_17J1_122_2177_n7), .S(C1_DATA3_9) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U7 ( .A(count[10]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n7), .CO(
        DP_OP_17J1_122_2177_n6), .S(C1_DATA3_10) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U6 ( .A(count[11]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n6), .CO(
        DP_OP_17J1_122_2177_n5), .S(C1_DATA3_11) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U5 ( .A(count[12]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n5), .CO(
        DP_OP_17J1_122_2177_n4), .S(C1_DATA3_12) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U4 ( .A(count[13]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n4), .CO(
        DP_OP_17J1_122_2177_n3), .S(C1_DATA3_13) );
  FA1D0BWP12T30P140 DP_OP_17J1_122_2177_U3 ( .A(count[14]), .B(
        DP_OP_17J1_122_2177_n37), .CI(DP_OP_17J1_122_2177_n3), .CO(
        DP_OP_17J1_122_2177_n2), .S(C1_DATA3_14) );
  NR2D1BWP12T30P140 U34 ( .A1(up_down), .A2(n25), .ZN(DP_OP_17J1_122_2177_n37)
         );
  AN4D0BWP12T30P140 U35 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .Z(n25) );
  NR4D0BWP12T30P140 U36 ( .A1(count[15]), .A2(count[14]), .A3(count[13]), .A4(
        count[12]), .ZN(n19) );
  NR4D0BWP12T30P140 U37 ( .A1(count[11]), .A2(count[10]), .A3(count[9]), .A4(
        count[8]), .ZN(n18) );
  NR4D0BWP12T30P140 U38 ( .A1(count[7]), .A2(count[6]), .A3(count[5]), .A4(
        count[4]), .ZN(n17) );
  NR4D0BWP12T30P140 U39 ( .A1(count[3]), .A2(count[2]), .A3(count[1]), .A4(
        count[0]), .ZN(n16) );
  ND4D0BWP12T30P140 U40 ( .A1(count[15]), .A2(count[14]), .A3(count[13]), .A4(
        count[12]), .ZN(n23) );
  ND4D0BWP12T30P140 U41 ( .A1(count[11]), .A2(count[10]), .A3(count[9]), .A4(
        count[8]), .ZN(n22) );
  ND4D0BWP12T30P140 U42 ( .A1(count[7]), .A2(count[6]), .A3(count[5]), .A4(
        count[4]), .ZN(n21) );
  ND4D0BWP12T30P140 U43 ( .A1(count[3]), .A2(count[2]), .A3(count[1]), .A4(
        count[0]), .ZN(n20) );
  NR4D0BWP12T30P140 U44 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .ZN(n24) );
  IND2D1BWP12T30P140 U45 ( .A1(DP_OP_17J1_122_2177_n37), .B1(n24), .ZN(n30) );
  INVD0BWP12T30P140 U46 ( .I(n25), .ZN(n26) );
  NR2D0BWP12T30P140 U47 ( .A1(up_down), .A2(n26), .ZN(n29) );
  AO21D0BWP12T30P140 U48 ( .A1(C1_DATA3_3), .A2(n30), .B(n29), .Z(N59) );
  AO21D0BWP12T30P140 U49 ( .A1(C1_DATA3_7), .A2(n30), .B(n29), .Z(N63) );
  AO21D0BWP12T30P140 U50 ( .A1(C1_DATA3_11), .A2(n30), .B(n29), .Z(N67) );
  INVD0BWP12T30P140 U51 ( .I(count[0]), .ZN(N56) );
  AO21D0BWP12T30P140 U52 ( .A1(C1_DATA3_2), .A2(n30), .B(n29), .Z(N58) );
  AO21D0BWP12T30P140 U53 ( .A1(C1_DATA3_6), .A2(n30), .B(n29), .Z(N62) );
  AO21D0BWP12T30P140 U54 ( .A1(C1_DATA3_10), .A2(n30), .B(n29), .Z(N66) );
  CKXOR2D0BWP12T30P140 U55 ( .A1(DP_OP_17J1_122_2177_n37), .A2(count[15]), .Z(
        n27) );
  CKXOR2D0BWP12T30P140 U56 ( .A1(n27), .A2(DP_OP_17J1_122_2177_n2), .Z(n28) );
  AO21D0BWP12T30P140 U57 ( .A1(n28), .A2(n30), .B(n29), .Z(N71) );
  AO21D0BWP12T30P140 U58 ( .A1(C1_DATA3_1), .A2(n30), .B(n29), .Z(N57) );
  AO21D0BWP12T30P140 U59 ( .A1(C1_DATA3_5), .A2(n30), .B(n29), .Z(N61) );
  AO21D0BWP12T30P140 U60 ( .A1(C1_DATA3_14), .A2(n30), .B(n29), .Z(N70) );
  AO21D0BWP12T30P140 U61 ( .A1(C1_DATA3_4), .A2(n30), .B(n29), .Z(N60) );
  AO21D0BWP12T30P140 U62 ( .A1(C1_DATA3_9), .A2(n30), .B(n29), .Z(N65) );
  AO21D0BWP12T30P140 U63 ( .A1(C1_DATA3_8), .A2(n30), .B(n29), .Z(N64) );
  AO21D0BWP12T30P140 U64 ( .A1(C1_DATA3_13), .A2(n30), .B(n29), .Z(N69) );
  AO21D0BWP12T30P140 U65 ( .A1(C1_DATA3_12), .A2(n30), .B(n29), .Z(N68) );
  INVD0BWP12T30P140 U66 ( .I(reset), .ZN(n31) );
endmodule

