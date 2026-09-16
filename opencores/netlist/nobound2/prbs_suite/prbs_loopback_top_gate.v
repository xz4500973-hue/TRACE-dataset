/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:48:43 2026
/////////////////////////////////////////////////////////////


module prbs23x1_gen ( clk, noise, reset, prbs_out );
  input clk, noise, reset;
  output prbs_out;
  wire   fb, n2, n1;
  wire   [22:4] col;

  DFSNQD1BWP12T30P140 col_reg_4_ ( .D(col[5]), .CP(clk), .SDN(n2), .Q(col[4])
         );
  DFSNQD1BWP12T30P140 col_reg_22_ ( .D(fb), .CP(clk), .SDN(n2), .Q(col[22]) );
  DFSNQD1BWP12T30P140 col_reg_21_ ( .D(col[22]), .CP(clk), .SDN(n2), .Q(
        col[21]) );
  DFSNQD1BWP12T30P140 col_reg_20_ ( .D(col[21]), .CP(clk), .SDN(n2), .Q(
        col[20]) );
  DFSNQD1BWP12T30P140 col_reg_19_ ( .D(col[20]), .CP(clk), .SDN(n2), .Q(
        col[19]) );
  DFSNQD1BWP12T30P140 col_reg_18_ ( .D(col[19]), .CP(clk), .SDN(n2), .Q(
        col[18]) );
  DFSNQD1BWP12T30P140 col_reg_17_ ( .D(col[18]), .CP(clk), .SDN(n2), .Q(
        col[17]) );
  DFSNQD1BWP12T30P140 col_reg_16_ ( .D(col[17]), .CP(clk), .SDN(n2), .Q(
        col[16]) );
  DFSNQD1BWP12T30P140 col_reg_15_ ( .D(col[16]), .CP(clk), .SDN(n2), .Q(
        col[15]) );
  DFSNQD1BWP12T30P140 col_reg_14_ ( .D(col[15]), .CP(clk), .SDN(n2), .Q(
        col[14]) );
  DFSNQD1BWP12T30P140 col_reg_13_ ( .D(col[14]), .CP(clk), .SDN(n2), .Q(
        col[13]) );
  DFSNQD1BWP12T30P140 col_reg_12_ ( .D(col[13]), .CP(clk), .SDN(n2), .Q(
        col[12]) );
  DFSNQD1BWP12T30P140 col_reg_11_ ( .D(col[12]), .CP(clk), .SDN(n2), .Q(
        col[11]) );
  DFSNQD1BWP12T30P140 col_reg_10_ ( .D(col[11]), .CP(clk), .SDN(n2), .Q(
        col[10]) );
  DFSNQD1BWP12T30P140 col_reg_9_ ( .D(col[10]), .CP(clk), .SDN(n2), .Q(col[9])
         );
  DFSNQD1BWP12T30P140 col_reg_8_ ( .D(col[9]), .CP(clk), .SDN(n2), .Q(col[8])
         );
  DFSNQD1BWP12T30P140 col_reg_7_ ( .D(col[8]), .CP(clk), .SDN(n2), .Q(col[7])
         );
  DFSNQD1BWP12T30P140 col_reg_6_ ( .D(col[7]), .CP(clk), .SDN(n2), .Q(col[6])
         );
  DFSNQD1BWP12T30P140 col_reg_5_ ( .D(col[6]), .CP(clk), .SDN(n2), .Q(col[5])
         );
  INVD0BWP12T30P140 U3 ( .I(reset), .ZN(n2) );
  INVD0BWP12T30P140 U4 ( .I(col[22]), .ZN(n1) );
  MUX2ND0BWP12T30P140 U5 ( .I0(n1), .I1(col[22]), .S(col[4]), .ZN(fb) );
  IND2D1BWP12T30P140 U6 ( .A1(noise), .B1(n1), .ZN(prbs_out) );
endmodule


module prbs23x1_chk ( clk, reset, error, prbs_in );
  input clk, reset, prbs_in;
  output error;
  wire   n4, n1, n2, n3;
  wire   [22:4] col;

  DFSNQD1BWP12T30P140 col_reg_22_ ( .D(prbs_in), .CP(clk), .SDN(n4), .Q(
        col[22]) );
  DFSNQD1BWP12T30P140 col_reg_21_ ( .D(col[22]), .CP(clk), .SDN(n4), .Q(
        col[21]) );
  DFSNQD1BWP12T30P140 col_reg_20_ ( .D(col[21]), .CP(clk), .SDN(n4), .Q(
        col[20]) );
  DFSNQD1BWP12T30P140 col_reg_19_ ( .D(col[20]), .CP(clk), .SDN(n4), .Q(
        col[19]) );
  DFSNQD1BWP12T30P140 col_reg_18_ ( .D(col[19]), .CP(clk), .SDN(n4), .Q(
        col[18]) );
  DFSNQD1BWP12T30P140 col_reg_17_ ( .D(col[18]), .CP(clk), .SDN(n4), .Q(
        col[17]) );
  DFSNQD1BWP12T30P140 col_reg_16_ ( .D(col[17]), .CP(clk), .SDN(n4), .Q(
        col[16]) );
  DFSNQD1BWP12T30P140 col_reg_15_ ( .D(col[16]), .CP(clk), .SDN(n4), .Q(
        col[15]) );
  DFSNQD1BWP12T30P140 col_reg_14_ ( .D(col[15]), .CP(clk), .SDN(n4), .Q(
        col[14]) );
  DFSNQD1BWP12T30P140 col_reg_13_ ( .D(col[14]), .CP(clk), .SDN(n4), .Q(
        col[13]) );
  DFSNQD1BWP12T30P140 col_reg_12_ ( .D(col[13]), .CP(clk), .SDN(n4), .Q(
        col[12]) );
  DFSNQD1BWP12T30P140 col_reg_11_ ( .D(col[12]), .CP(clk), .SDN(n4), .Q(
        col[11]) );
  DFSNQD1BWP12T30P140 col_reg_10_ ( .D(col[11]), .CP(clk), .SDN(n4), .Q(
        col[10]) );
  DFSNQD1BWP12T30P140 col_reg_9_ ( .D(col[10]), .CP(clk), .SDN(n4), .Q(col[9])
         );
  DFSNQD1BWP12T30P140 col_reg_8_ ( .D(col[9]), .CP(clk), .SDN(n4), .Q(col[8])
         );
  DFSNQD1BWP12T30P140 col_reg_7_ ( .D(col[8]), .CP(clk), .SDN(n4), .Q(col[7])
         );
  DFSNQD1BWP12T30P140 col_reg_6_ ( .D(col[7]), .CP(clk), .SDN(n4), .Q(col[6])
         );
  DFSNQD1BWP12T30P140 col_reg_5_ ( .D(col[6]), .CP(clk), .SDN(n4), .Q(col[5])
         );
  DFSNQD1BWP12T30P140 col_reg_4_ ( .D(col[5]), .CP(clk), .SDN(n4), .Q(col[4])
         );
  INVD0BWP12T30P140 U3 ( .I(reset), .ZN(n4) );
  INVD0BWP12T30P140 U4 ( .I(prbs_in), .ZN(n3) );
  INVD0BWP12T30P140 U5 ( .I(col[22]), .ZN(n1) );
  MUX2ND0BWP12T30P140 U6 ( .I0(n1), .I1(col[22]), .S(col[4]), .ZN(n2) );
  MUX2ND0BWP12T30P140 U7 ( .I0(n3), .I1(prbs_in), .S(n2), .ZN(error) );
endmodule


module prbs_loopback_top ( clk, rst_in, test_in, led15, led14, led13 );
  input clk, rst_in, test_in;
  output led15, led14, led13;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, test, prbs23_x1_signal,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37;
  wire   [22:0] ctr;

  prbs23x1_gen prbs23x1_gen0 ( .clk(n36), .noise(test), .reset(n1), .prbs_out(
        prbs23_x1_signal) );
  prbs23x1_chk prbs23x1_chk0 ( .clk(ctr[1]), .reset(n1), .error(led14), 
        .prbs_in(prbs23_x1_signal) );
  DFQD2BWP12T30P140 ctr_reg_21_ ( .D(N23), .CP(clk), .Q(ctr[21]) );
  DFQD2BWP12T30P140 ctr_reg_19_ ( .D(N21), .CP(clk), .Q(ctr[19]) );
  DFQD2BWP12T30P140 ctr_reg_17_ ( .D(N19), .CP(clk), .Q(ctr[17]) );
  DFQD2BWP12T30P140 ctr_reg_15_ ( .D(N17), .CP(clk), .Q(ctr[15]) );
  DFQD2BWP12T30P140 ctr_reg_13_ ( .D(N15), .CP(clk), .Q(ctr[13]) );
  DFQD2BWP12T30P140 ctr_reg_22_ ( .D(N24), .CP(clk), .Q(ctr[22]) );
  DFQD2BWP12T30P140 ctr_reg_20_ ( .D(N22), .CP(clk), .Q(ctr[20]) );
  DFQD2BWP12T30P140 ctr_reg_18_ ( .D(N20), .CP(clk), .Q(ctr[18]) );
  DFQD2BWP12T30P140 ctr_reg_16_ ( .D(N18), .CP(clk), .Q(ctr[16]) );
  DFQD2BWP12T30P140 ctr_reg_14_ ( .D(N16), .CP(clk), .Q(ctr[14]) );
  DFQD2BWP12T30P140 ctr_reg_12_ ( .D(N14), .CP(clk), .Q(ctr[12]) );
  DFQD2BWP12T30P140 ctr_reg_23_ ( .D(N25), .CP(clk), .Q(led15) );
  DFQD2BWP12T30P140 ctr_reg_11_ ( .D(N13), .CP(n37), .Q(ctr[11]) );
  DFQD2BWP12T30P140 ctr_reg_9_ ( .D(N11), .CP(n37), .Q(ctr[9]) );
  DFQD2BWP12T30P140 ctr_reg_5_ ( .D(N7), .CP(n37), .Q(ctr[5]) );
  DFQD2BWP12T30P140 ctr_reg_3_ ( .D(N5), .CP(n37), .Q(ctr[3]) );
  DFQD2BWP12T30P140 ctr_reg_10_ ( .D(N12), .CP(n37), .Q(ctr[10]) );
  DFQD2BWP12T30P140 ctr_reg_8_ ( .D(N10), .CP(n37), .Q(ctr[8]) );
  DFQD2BWP12T30P140 ctr_reg_6_ ( .D(N8), .CP(n37), .Q(ctr[6]) );
  DFQD2BWP12T30P140 ctr_reg_4_ ( .D(N6), .CP(n37), .Q(ctr[4]) );
  DFQD2BWP12T30P140 ctr_reg_0_ ( .D(N2), .CP(n37), .Q(ctr[0]) );
  DFQD2BWP12T30P140 ctr_reg_2_ ( .D(N4), .CP(n37), .Q(ctr[2]) );
  DFQD1BWP12T30P140 ctr_reg_7_ ( .D(N9), .CP(n37), .Q(ctr[7]) );
  DFQD1BWP12T30P140 ctr_reg_1_ ( .D(N3), .CP(n37), .Q(ctr[1]) );
  INVD0BWP12T30P140 U5 ( .I(rst_in), .ZN(n1) );
  INVD0BWP12T30P140 U6 ( .I(ctr[1]), .ZN(n27) );
  INVD0BWP12T30P140 U7 ( .I(n27), .ZN(n36) );
  INVD0BWP12T30P140 U8 ( .I(ctr[17]), .ZN(n3) );
  INVD0BWP12T30P140 U9 ( .I(ctr[15]), .ZN(n11) );
  INVD0BWP12T30P140 U10 ( .I(ctr[13]), .ZN(n4) );
  INVD0BWP12T30P140 U11 ( .I(ctr[11]), .ZN(n13) );
  INVD0BWP12T30P140 U12 ( .I(ctr[9]), .ZN(n15) );
  INVD0BWP12T30P140 U13 ( .I(ctr[7]), .ZN(n22) );
  INVD0BWP12T30P140 U14 ( .I(ctr[5]), .ZN(n25) );
  INVD0BWP12T30P140 U15 ( .I(ctr[3]), .ZN(n14) );
  ND3D0BWP12T30P140 U16 ( .A1(ctr[2]), .A2(ctr[0]), .A3(n36), .ZN(n30) );
  NR2D0BWP12T30P140 U17 ( .A1(n14), .A2(n30), .ZN(n16) );
  ND2D0BWP12T30P140 U18 ( .A1(n16), .A2(ctr[4]), .ZN(n26) );
  NR2D0BWP12T30P140 U19 ( .A1(n25), .A2(n26), .ZN(n33) );
  ND2D0BWP12T30P140 U20 ( .A1(n33), .A2(ctr[6]), .ZN(n32) );
  NR2D0BWP12T30P140 U21 ( .A1(n22), .A2(n32), .ZN(n29) );
  ND2D0BWP12T30P140 U22 ( .A1(n29), .A2(ctr[8]), .ZN(n28) );
  NR2D0BWP12T30P140 U23 ( .A1(n15), .A2(n28), .ZN(n18) );
  ND2D0BWP12T30P140 U24 ( .A1(n18), .A2(ctr[10]), .ZN(n17) );
  NR2D0BWP12T30P140 U25 ( .A1(n13), .A2(n17), .ZN(n24) );
  ND2D0BWP12T30P140 U26 ( .A1(n24), .A2(ctr[12]), .ZN(n23) );
  NR2D0BWP12T30P140 U27 ( .A1(n4), .A2(n23), .ZN(n9) );
  ND2D0BWP12T30P140 U28 ( .A1(n9), .A2(ctr[14]), .ZN(n12) );
  NR2D0BWP12T30P140 U29 ( .A1(n11), .A2(n12), .ZN(n10) );
  ND2D0BWP12T30P140 U30 ( .A1(n10), .A2(ctr[16]), .ZN(n8) );
  NR2D0BWP12T30P140 U31 ( .A1(n3), .A2(n8), .ZN(n7) );
  ND2D0BWP12T30P140 U32 ( .A1(n7), .A2(ctr[18]), .ZN(n6) );
  INVD0BWP12T30P140 U33 ( .I(ctr[19]), .ZN(n2) );
  NR2D0BWP12T30P140 U34 ( .A1(n2), .A2(n6), .ZN(n5) );
  AOI21D0BWP12T30P140 U35 ( .A1(n6), .A2(n2), .B(n5), .ZN(N21) );
  AOI21D0BWP12T30P140 U36 ( .A1(n8), .A2(n3), .B(n7), .ZN(N19) );
  AOI21D0BWP12T30P140 U37 ( .A1(n23), .A2(n4), .B(n9), .ZN(N15) );
  INVD0BWP12T30P140 U38 ( .I(ctr[21]), .ZN(n20) );
  ND2D0BWP12T30P140 U39 ( .A1(n5), .A2(ctr[20]), .ZN(n21) );
  NR2D0BWP12T30P140 U40 ( .A1(n20), .A2(n21), .ZN(n19) );
  ND2D0BWP12T30P140 U41 ( .A1(n19), .A2(ctr[22]), .ZN(n34) );
  OA21D0BWP12T30P140 U42 ( .A1(n19), .A2(ctr[22]), .B(n34), .Z(N24) );
  OA21D0BWP12T30P140 U43 ( .A1(n5), .A2(ctr[20]), .B(n21), .Z(N22) );
  OA21D0BWP12T30P140 U44 ( .A1(n7), .A2(ctr[18]), .B(n6), .Z(N20) );
  OA21D0BWP12T30P140 U45 ( .A1(n10), .A2(ctr[16]), .B(n8), .Z(N18) );
  OA21D0BWP12T30P140 U46 ( .A1(n9), .A2(ctr[14]), .B(n12), .Z(N16) );
  AOI21D0BWP12T30P140 U47 ( .A1(n12), .A2(n11), .B(n10), .ZN(N17) );
  AOI21D0BWP12T30P140 U48 ( .A1(n17), .A2(n13), .B(n24), .ZN(N13) );
  AOI21D0BWP12T30P140 U49 ( .A1(n30), .A2(n14), .B(n16), .ZN(N5) );
  AOI21D0BWP12T30P140 U50 ( .A1(n28), .A2(n15), .B(n18), .ZN(N11) );
  OA21D0BWP12T30P140 U51 ( .A1(n16), .A2(ctr[4]), .B(n26), .Z(N6) );
  OA21D0BWP12T30P140 U52 ( .A1(n18), .A2(ctr[10]), .B(n17), .Z(N12) );
  AOI21D0BWP12T30P140 U53 ( .A1(n21), .A2(n20), .B(n19), .ZN(N23) );
  AOI21D0BWP12T30P140 U54 ( .A1(n32), .A2(n22), .B(n29), .ZN(N9) );
  OA21D0BWP12T30P140 U55 ( .A1(n24), .A2(ctr[12]), .B(n23), .Z(N14) );
  AOI21D0BWP12T30P140 U56 ( .A1(n26), .A2(n25), .B(n33), .ZN(N7) );
  INVD0BWP12T30P140 U57 ( .I(ctr[0]), .ZN(N2) );
  NR2D0BWP12T30P140 U58 ( .A1(N2), .A2(n27), .ZN(n31) );
  AOI21D0BWP12T30P140 U59 ( .A1(N2), .A2(n27), .B(n31), .ZN(N3) );
  OA21D0BWP12T30P140 U60 ( .A1(n29), .A2(ctr[8]), .B(n28), .Z(N10) );
  OA21D0BWP12T30P140 U61 ( .A1(ctr[2]), .A2(n31), .B(n30), .Z(N4) );
  OA21D0BWP12T30P140 U62 ( .A1(n33), .A2(ctr[6]), .B(n32), .Z(N8) );
  CKBD0BWP12T30P140 U63 ( .I(clk), .Z(n37) );
  INVD0BWP12T30P140 U64 ( .I(led15), .ZN(n35) );
  MUX2ND0BWP12T30P140 U65 ( .I0(led15), .I1(n35), .S(n34), .ZN(N25) );
  INR2D1BWP12T30P140 U66 ( .A1(ctr[2]), .B1(test_in), .ZN(test) );
endmodule

