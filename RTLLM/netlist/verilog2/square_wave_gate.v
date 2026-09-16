/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:09:21 2026
/////////////////////////////////////////////////////////////


module square_wave ( clk, freq, wave_out );
  input [7:0] freq;
  input clk;
  output wave_out;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [7:0] count;

  DFQD2BWP12T30P140 wave_out_reg ( .D(n2), .CP(clk), .Q(wave_out) );
  DFQD2BWP12T30P140 count_reg_6_ ( .D(N27), .CP(clk), .Q(count[6]) );
  DFQD2BWP12T30P140 count_reg_4_ ( .D(N25), .CP(clk), .Q(count[4]) );
  DFQD2BWP12T30P140 count_reg_2_ ( .D(N23), .CP(clk), .Q(count[2]) );
  DFQD2BWP12T30P140 count_reg_3_ ( .D(N24), .CP(clk), .Q(count[3]) );
  DFQD2BWP12T30P140 count_reg_7_ ( .D(N28), .CP(clk), .Q(count[7]) );
  DFQD2BWP12T30P140 count_reg_0_ ( .D(N21), .CP(clk), .Q(count[0]) );
  DFQD2BWP12T30P140 count_reg_5_ ( .D(N26), .CP(clk), .Q(count[5]) );
  DFQD1BWP12T30P140 count_reg_1_ ( .D(N22), .CP(clk), .Q(count[1]) );
  INVD0BWP12T30P140 U13 ( .I(count[1]), .ZN(n32) );
  INVD0BWP12T30P140 U14 ( .I(count[0]), .ZN(n31) );
  NR3D0BWP12T30P140 U15 ( .A1(freq[2]), .A2(freq[0]), .A3(freq[1]), .ZN(n14)
         );
  INVD0BWP12T30P140 U16 ( .I(n14), .ZN(n5) );
  NR2D0BWP12T30P140 U17 ( .A1(freq[3]), .A2(n5), .ZN(n4) );
  INVD0BWP12T30P140 U18 ( .I(n4), .ZN(n12) );
  NR2D0BWP12T30P140 U19 ( .A1(freq[4]), .A2(n12), .ZN(n11) );
  INVD0BWP12T30P140 U20 ( .I(n11), .ZN(n7) );
  NR2D0BWP12T30P140 U21 ( .A1(freq[5]), .A2(n7), .ZN(n6) );
  INVD0BWP12T30P140 U22 ( .I(n6), .ZN(n3) );
  NR2D0BWP12T30P140 U23 ( .A1(freq[6]), .A2(n3), .ZN(n28) );
  NR2D0BWP12T30P140 U24 ( .A1(n28), .A2(count[7]), .ZN(n30) );
  AOI21D0BWP12T30P140 U25 ( .A1(freq[6]), .A2(n3), .B(n28), .ZN(n26) );
  AOI21D0BWP12T30P140 U26 ( .A1(freq[3]), .A2(n5), .B(n4), .ZN(n10) );
  AOI21D0BWP12T30P140 U27 ( .A1(freq[5]), .A2(n7), .B(n6), .ZN(n9) );
  OAI22D0BWP12T30P140 U28 ( .A1(count[3]), .A2(n10), .B1(count[5]), .B2(n9), 
        .ZN(n8) );
  AOI221D0BWP12T30P140 U29 ( .A1(count[3]), .A2(n10), .B1(n9), .B2(count[5]), 
        .C(n8), .ZN(n25) );
  AOI21D0BWP12T30P140 U30 ( .A1(freq[4]), .A2(n12), .B(n11), .ZN(n22) );
  NR2D0BWP12T30P140 U31 ( .A1(freq[0]), .A2(freq[1]), .ZN(n13) );
  AOI21D0BWP12T30P140 U32 ( .A1(freq[1]), .A2(freq[0]), .B(n13), .ZN(n18) );
  INVD0BWP12T30P140 U33 ( .I(n13), .ZN(n15) );
  AOI21D0BWP12T30P140 U34 ( .A1(freq[2]), .A2(n15), .B(n14), .ZN(n17) );
  OAI22D0BWP12T30P140 U35 ( .A1(count[1]), .A2(n18), .B1(count[2]), .B2(n17), 
        .ZN(n16) );
  AOI221D0BWP12T30P140 U36 ( .A1(count[1]), .A2(n18), .B1(n17), .B2(count[2]), 
        .C(n16), .ZN(n21) );
  MAOI22D0BWP12T30P140 U37 ( .A1(freq[0]), .A2(n31), .B1(n31), .B2(freq[0]), 
        .ZN(n19) );
  AOI21D0BWP12T30P140 U38 ( .A1(count[4]), .A2(n22), .B(n19), .ZN(n20) );
  OAI211D0BWP12T30P140 U39 ( .A1(count[4]), .A2(n22), .B(n21), .C(n20), .ZN(
        n23) );
  AOI21D0BWP12T30P140 U40 ( .A1(count[6]), .A2(n26), .B(n23), .ZN(n24) );
  OAI211D0BWP12T30P140 U41 ( .A1(count[6]), .A2(n26), .B(n25), .C(n24), .ZN(
        n27) );
  AOI221D0BWP12T30P140 U42 ( .A1(count[7]), .A2(n28), .B1(freq[7]), .B2(n30), 
        .C(n27), .ZN(n29) );
  OAI21D0BWP12T30P140 U43 ( .A1(freq[7]), .A2(n30), .B(n29), .ZN(n42) );
  INVD0BWP12T30P140 U44 ( .I(n42), .ZN(n45) );
  AOI221D0BWP12T30P140 U45 ( .A1(count[1]), .A2(count[0]), .B1(n32), .B2(n31), 
        .C(n45), .ZN(N22) );
  INVD0BWP12T30P140 U46 ( .I(count[6]), .ZN(n33) );
  INVD0BWP12T30P140 U47 ( .I(count[4]), .ZN(n34) );
  INVD0BWP12T30P140 U48 ( .I(count[2]), .ZN(n36) );
  ND2D0BWP12T30P140 U49 ( .A1(count[0]), .A2(count[1]), .ZN(n35) );
  NR2D0BWP12T30P140 U50 ( .A1(n36), .A2(n35), .ZN(n38) );
  ND2D0BWP12T30P140 U51 ( .A1(count[3]), .A2(n38), .ZN(n37) );
  NR2D0BWP12T30P140 U52 ( .A1(n34), .A2(n37), .ZN(n44) );
  ND2D0BWP12T30P140 U53 ( .A1(count[5]), .A2(n44), .ZN(n43) );
  NR2D0BWP12T30P140 U54 ( .A1(n33), .A2(n43), .ZN(n41) );
  AOI211D0BWP12T30P140 U55 ( .A1(n33), .A2(n43), .B(n41), .C(n45), .ZN(N27) );
  AOI211D0BWP12T30P140 U56 ( .A1(n34), .A2(n37), .B(n44), .C(n45), .ZN(N25) );
  AOI211D0BWP12T30P140 U57 ( .A1(n36), .A2(n35), .B(n38), .C(n45), .ZN(N23) );
  OA211D0BWP12T30P140 U58 ( .A1(count[3]), .A2(n38), .B(n37), .C(n42), .Z(N24)
         );
  INVD0BWP12T30P140 U59 ( .I(count[7]), .ZN(n40) );
  INVD0BWP12T30P140 U60 ( .I(n41), .ZN(n39) );
  AOI221D0BWP12T30P140 U61 ( .A1(count[7]), .A2(n41), .B1(n40), .B2(n39), .C(
        n45), .ZN(N28) );
  NR2D0BWP12T30P140 U62 ( .A1(count[0]), .A2(n45), .ZN(N21) );
  OA211D0BWP12T30P140 U63 ( .A1(count[5]), .A2(n44), .B(n43), .C(n42), .Z(N26)
         );
  INVD0BWP12T30P140 U64 ( .I(wave_out), .ZN(n46) );
  MUX2ND0BWP12T30P140 U65 ( .I0(n46), .I1(wave_out), .S(n45), .ZN(n2) );
endmodule

