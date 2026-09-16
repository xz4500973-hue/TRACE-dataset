/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:42:35 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89;

  DFCNQD1BWP12T30P140 hi_reg_7_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(acc[15])
         );
  DFCNQD1BWP12T30P140 hi_reg_6_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(acc[14])
         );
  DFCNQD1BWP12T30P140 hi_reg_4_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(acc[12])
         );
  DFCNQD1BWP12T30P140 hi_reg_2_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(acc[10])
         );
  DFCNQD1BWP12T30P140 hi_reg_0_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(acc[8]) );
  DFCNQD1BWP12T30P140 lo_reg_6_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(acc[6]) );
  DFCNQD1BWP12T30P140 lo_reg_4_ ( .D(n5), .CP(clk), .CDN(rst_n), .Q(acc[4]) );
  DFCNQD1BWP12T30P140 lo_reg_2_ ( .D(n3), .CP(clk), .CDN(rst_n), .Q(acc[2]) );
  DFCNQD1BWP12T30P140 lo_reg_1_ ( .D(n2), .CP(clk), .CDN(rst_n), .Q(acc[1]) );
  DFCNQD1BWP12T30P140 hi_reg_5_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(acc[13])
         );
  DFCNQD1BWP12T30P140 hi_reg_3_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(acc[11])
         );
  DFCNQD1BWP12T30P140 hi_reg_1_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(acc[9])
         );
  DFCNQD1BWP12T30P140 lo_reg_7_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(acc[7]) );
  DFCNQD1BWP12T30P140 lo_reg_5_ ( .D(n6), .CP(clk), .CDN(rst_n), .Q(acc[5]) );
  DFCNQD1BWP12T30P140 lo_reg_3_ ( .D(n4), .CP(clk), .CDN(rst_n), .Q(acc[3]) );
  DFCNQD1BWP12T30P140 lo_reg_0_ ( .D(n1), .CP(clk), .CDN(rst_n), .Q(acc[0]) );
  INVD0BWP12T30P140 U18 ( .I(acc[15]), .ZN(n20) );
  AN2D0BWP12T30P140 U19 ( .A1(din[0]), .A2(acc[0]), .Z(n85) );
  MAOI222D0BWP12T30P140 U20 ( .A(n85), .B(din[1]), .C(acc[1]), .ZN(n78) );
  INVD0BWP12T30P140 U21 ( .I(din[2]), .ZN(n79) );
  INVD0BWP12T30P140 U22 ( .I(acc[2]), .ZN(n82) );
  MAOI222D0BWP12T30P140 U23 ( .A(n78), .B(n79), .C(n82), .ZN(n75) );
  MAOI222D0BWP12T30P140 U24 ( .A(din[3]), .B(acc[3]), .C(n75), .ZN(n69) );
  INVD0BWP12T30P140 U25 ( .I(din[4]), .ZN(n70) );
  INVD0BWP12T30P140 U26 ( .I(acc[4]), .ZN(n73) );
  MAOI222D0BWP12T30P140 U27 ( .A(n69), .B(n70), .C(n73), .ZN(n66) );
  MAOI222D0BWP12T30P140 U28 ( .A(din[5]), .B(acc[5]), .C(n66), .ZN(n60) );
  INVD0BWP12T30P140 U29 ( .I(din[6]), .ZN(n61) );
  INVD0BWP12T30P140 U30 ( .I(acc[6]), .ZN(n64) );
  MAOI222D0BWP12T30P140 U31 ( .A(n60), .B(n61), .C(n64), .ZN(n57) );
  MAOI222D0BWP12T30P140 U32 ( .A(din[7]), .B(acc[7]), .C(n57), .ZN(n51) );
  INVD0BWP12T30P140 U33 ( .I(din[8]), .ZN(n52) );
  INVD0BWP12T30P140 U34 ( .I(acc[8]), .ZN(n55) );
  MAOI222D0BWP12T30P140 U35 ( .A(n51), .B(n52), .C(n55), .ZN(n48) );
  MAOI222D0BWP12T30P140 U36 ( .A(din[9]), .B(acc[9]), .C(n48), .ZN(n41) );
  INVD0BWP12T30P140 U37 ( .I(din[10]), .ZN(n42) );
  INVD0BWP12T30P140 U38 ( .I(acc[10]), .ZN(n45) );
  MAOI222D0BWP12T30P140 U39 ( .A(n41), .B(n42), .C(n45), .ZN(n38) );
  MAOI222D0BWP12T30P140 U40 ( .A(din[11]), .B(acc[11]), .C(n38), .ZN(n31) );
  INVD0BWP12T30P140 U41 ( .I(din[12]), .ZN(n32) );
  INVD0BWP12T30P140 U42 ( .I(acc[12]), .ZN(n35) );
  MAOI222D0BWP12T30P140 U43 ( .A(n31), .B(n32), .C(n35), .ZN(n28) );
  MAOI222D0BWP12T30P140 U44 ( .A(din[13]), .B(acc[13]), .C(n28), .ZN(n21) );
  INVD0BWP12T30P140 U45 ( .I(din[14]), .ZN(n22) );
  INVD0BWP12T30P140 U46 ( .I(acc[14]), .ZN(n25) );
  MAOI222D0BWP12T30P140 U47 ( .A(n21), .B(n22), .C(n25), .ZN(n18) );
  OAI21D0BWP12T30P140 U48 ( .A1(din[15]), .A2(n18), .B(en), .ZN(n17) );
  AOI21D0BWP12T30P140 U49 ( .A1(din[15]), .A2(n18), .B(n17), .ZN(n19) );
  MUX2ND0BWP12T30P140 U50 ( .I0(n20), .I1(acc[15]), .S(n19), .ZN(n16) );
  INVD0BWP12T30P140 U51 ( .I(n21), .ZN(n23) );
  INVD0BWP12T30P140 U52 ( .I(en), .ZN(n83) );
  AOI221D0BWP12T30P140 U53 ( .A1(din[14]), .A2(n23), .B1(n22), .B2(n21), .C(
        n83), .ZN(n24) );
  MUX2ND0BWP12T30P140 U54 ( .I0(n25), .I1(acc[14]), .S(n24), .ZN(n15) );
  INVD0BWP12T30P140 U55 ( .I(acc[13]), .ZN(n30) );
  INVD0BWP12T30P140 U56 ( .I(din[13]), .ZN(n27) );
  INVD0BWP12T30P140 U57 ( .I(n28), .ZN(n26) );
  AOI221D0BWP12T30P140 U58 ( .A1(din[13]), .A2(n28), .B1(n27), .B2(n26), .C(
        n83), .ZN(n29) );
  MUX2ND0BWP12T30P140 U59 ( .I0(n30), .I1(acc[13]), .S(n29), .ZN(n14) );
  INVD0BWP12T30P140 U60 ( .I(n31), .ZN(n33) );
  AOI221D0BWP12T30P140 U61 ( .A1(din[12]), .A2(n33), .B1(n32), .B2(n31), .C(
        n83), .ZN(n34) );
  MUX2ND0BWP12T30P140 U62 ( .I0(n35), .I1(acc[12]), .S(n34), .ZN(n13) );
  INVD0BWP12T30P140 U63 ( .I(acc[11]), .ZN(n40) );
  INVD0BWP12T30P140 U64 ( .I(din[11]), .ZN(n37) );
  INVD0BWP12T30P140 U65 ( .I(n38), .ZN(n36) );
  AOI221D0BWP12T30P140 U66 ( .A1(din[11]), .A2(n38), .B1(n37), .B2(n36), .C(
        n83), .ZN(n39) );
  MUX2ND0BWP12T30P140 U67 ( .I0(n40), .I1(acc[11]), .S(n39), .ZN(n12) );
  INVD0BWP12T30P140 U68 ( .I(n41), .ZN(n43) );
  AOI221D0BWP12T30P140 U69 ( .A1(din[10]), .A2(n43), .B1(n42), .B2(n41), .C(
        n83), .ZN(n44) );
  MUX2ND0BWP12T30P140 U70 ( .I0(n45), .I1(acc[10]), .S(n44), .ZN(n11) );
  INVD0BWP12T30P140 U71 ( .I(acc[9]), .ZN(n50) );
  INVD0BWP12T30P140 U72 ( .I(din[9]), .ZN(n47) );
  INVD0BWP12T30P140 U73 ( .I(n48), .ZN(n46) );
  AOI221D0BWP12T30P140 U74 ( .A1(din[9]), .A2(n48), .B1(n47), .B2(n46), .C(n83), .ZN(n49) );
  MUX2ND0BWP12T30P140 U75 ( .I0(n50), .I1(acc[9]), .S(n49), .ZN(n10) );
  INVD0BWP12T30P140 U76 ( .I(n51), .ZN(n53) );
  AOI221D0BWP12T30P140 U77 ( .A1(din[8]), .A2(n53), .B1(n52), .B2(n51), .C(n83), .ZN(n54) );
  MUX2ND0BWP12T30P140 U78 ( .I0(n55), .I1(acc[8]), .S(n54), .ZN(n9) );
  INVD0BWP12T30P140 U79 ( .I(acc[7]), .ZN(n59) );
  OAI21D0BWP12T30P140 U80 ( .A1(din[7]), .A2(n57), .B(en), .ZN(n56) );
  AOI21D0BWP12T30P140 U81 ( .A1(din[7]), .A2(n57), .B(n56), .ZN(n58) );
  MUX2ND0BWP12T30P140 U82 ( .I0(n59), .I1(acc[7]), .S(n58), .ZN(n8) );
  INVD0BWP12T30P140 U83 ( .I(n60), .ZN(n62) );
  AOI221D0BWP12T30P140 U84 ( .A1(din[6]), .A2(n62), .B1(n61), .B2(n60), .C(n83), .ZN(n63) );
  MUX2ND0BWP12T30P140 U85 ( .I0(n64), .I1(acc[6]), .S(n63), .ZN(n7) );
  INVD0BWP12T30P140 U86 ( .I(acc[5]), .ZN(n68) );
  OAI21D0BWP12T30P140 U87 ( .A1(din[5]), .A2(n66), .B(en), .ZN(n65) );
  AOI21D0BWP12T30P140 U88 ( .A1(din[5]), .A2(n66), .B(n65), .ZN(n67) );
  MUX2ND0BWP12T30P140 U89 ( .I0(n68), .I1(acc[5]), .S(n67), .ZN(n6) );
  INVD0BWP12T30P140 U90 ( .I(n69), .ZN(n71) );
  AOI221D0BWP12T30P140 U91 ( .A1(din[4]), .A2(n71), .B1(n70), .B2(n69), .C(n83), .ZN(n72) );
  MUX2ND0BWP12T30P140 U92 ( .I0(n73), .I1(acc[4]), .S(n72), .ZN(n5) );
  INVD0BWP12T30P140 U93 ( .I(acc[3]), .ZN(n77) );
  OAI21D0BWP12T30P140 U94 ( .A1(din[3]), .A2(n75), .B(en), .ZN(n74) );
  AOI21D0BWP12T30P140 U95 ( .A1(din[3]), .A2(n75), .B(n74), .ZN(n76) );
  MUX2ND0BWP12T30P140 U96 ( .I0(n77), .I1(acc[3]), .S(n76), .ZN(n4) );
  INVD0BWP12T30P140 U97 ( .I(n78), .ZN(n80) );
  AOI221D0BWP12T30P140 U98 ( .A1(din[2]), .A2(n80), .B1(n79), .B2(n78), .C(n83), .ZN(n81) );
  MUX2ND0BWP12T30P140 U99 ( .I0(n82), .I1(acc[2]), .S(n81), .ZN(n3) );
  INVD0BWP12T30P140 U100 ( .I(acc[1]), .ZN(n87) );
  AOI21D0BWP12T30P140 U101 ( .A1(din[0]), .A2(acc[0]), .B(din[1]), .ZN(n84) );
  AOI211D0BWP12T30P140 U102 ( .A1(n85), .A2(din[1]), .B(n84), .C(n83), .ZN(n86) );
  MUX2ND0BWP12T30P140 U103 ( .I0(n87), .I1(acc[1]), .S(n86), .ZN(n2) );
  INVD0BWP12T30P140 U104 ( .I(acc[0]), .ZN(n89) );
  ND2D0BWP12T30P140 U105 ( .A1(en), .A2(din[0]), .ZN(n88) );
  MUX2ND0BWP12T30P140 U106 ( .I0(acc[0]), .I1(n89), .S(n88), .ZN(n1) );
endmodule

