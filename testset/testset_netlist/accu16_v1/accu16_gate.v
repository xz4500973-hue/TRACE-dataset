/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:39:21 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87;

  DFCNQD1BWP12T30P140 acc_reg_15_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(acc[15]) );
  DFCNQD1BWP12T30P140 acc_reg_14_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(acc[14]) );
  DFCNQD1BWP12T30P140 acc_reg_12_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(acc[12]) );
  DFCNQD1BWP12T30P140 acc_reg_10_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(acc[10]) );
  DFCNQD1BWP12T30P140 acc_reg_8_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(acc[8])
         );
  DFCNQD1BWP12T30P140 acc_reg_6_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(acc[6])
         );
  DFCNQD1BWP12T30P140 acc_reg_4_ ( .D(n5), .CP(clk), .CDN(rst_n), .Q(acc[4])
         );
  DFCNQD1BWP12T30P140 acc_reg_2_ ( .D(n3), .CP(clk), .CDN(rst_n), .Q(acc[2])
         );
  DFCNQD1BWP12T30P140 acc_reg_1_ ( .D(n2), .CP(clk), .CDN(rst_n), .Q(acc[1])
         );
  DFCNQD1BWP12T30P140 acc_reg_13_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(acc[13]) );
  DFCNQD1BWP12T30P140 acc_reg_11_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(acc[11]) );
  DFCNQD1BWP12T30P140 acc_reg_9_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(acc[9])
         );
  DFCNQD1BWP12T30P140 acc_reg_7_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(acc[7])
         );
  DFCNQD1BWP12T30P140 acc_reg_5_ ( .D(n6), .CP(clk), .CDN(rst_n), .Q(acc[5])
         );
  DFCNQD1BWP12T30P140 acc_reg_3_ ( .D(n4), .CP(clk), .CDN(rst_n), .Q(acc[3])
         );
  DFCNQD1BWP12T30P140 acc_reg_0_ ( .D(n1), .CP(clk), .CDN(rst_n), .Q(acc[0])
         );
  INVD0BWP12T30P140 U19 ( .I(acc[15]), .ZN(n21) );
  AN2D0BWP12T30P140 U20 ( .A1(din[0]), .A2(acc[0]), .Z(n83) );
  MAOI222D0BWP12T30P140 U21 ( .A(n83), .B(din[1]), .C(acc[1]), .ZN(n76) );
  INVD0BWP12T30P140 U22 ( .I(din[2]), .ZN(n77) );
  INVD0BWP12T30P140 U23 ( .I(acc[2]), .ZN(n80) );
  MAOI222D0BWP12T30P140 U24 ( .A(n76), .B(n77), .C(n80), .ZN(n73) );
  MAOI222D0BWP12T30P140 U25 ( .A(din[3]), .B(acc[3]), .C(n73), .ZN(n67) );
  INVD0BWP12T30P140 U26 ( .I(din[4]), .ZN(n68) );
  INVD0BWP12T30P140 U27 ( .I(acc[4]), .ZN(n71) );
  MAOI222D0BWP12T30P140 U28 ( .A(n67), .B(n68), .C(n71), .ZN(n64) );
  MAOI222D0BWP12T30P140 U29 ( .A(din[5]), .B(acc[5]), .C(n64), .ZN(n58) );
  INVD0BWP12T30P140 U30 ( .I(din[6]), .ZN(n59) );
  INVD0BWP12T30P140 U31 ( .I(acc[6]), .ZN(n62) );
  MAOI222D0BWP12T30P140 U32 ( .A(n58), .B(n59), .C(n62), .ZN(n55) );
  MAOI222D0BWP12T30P140 U33 ( .A(din[7]), .B(acc[7]), .C(n55), .ZN(n49) );
  INVD0BWP12T30P140 U34 ( .I(din[8]), .ZN(n50) );
  INVD0BWP12T30P140 U35 ( .I(acc[8]), .ZN(n53) );
  MAOI222D0BWP12T30P140 U36 ( .A(n49), .B(n50), .C(n53), .ZN(n46) );
  MAOI222D0BWP12T30P140 U37 ( .A(din[9]), .B(acc[9]), .C(n46), .ZN(n40) );
  INVD0BWP12T30P140 U38 ( .I(din[10]), .ZN(n41) );
  INVD0BWP12T30P140 U39 ( .I(acc[10]), .ZN(n44) );
  MAOI222D0BWP12T30P140 U40 ( .A(n40), .B(n41), .C(n44), .ZN(n37) );
  MAOI222D0BWP12T30P140 U41 ( .A(din[11]), .B(acc[11]), .C(n37), .ZN(n31) );
  INVD0BWP12T30P140 U42 ( .I(din[12]), .ZN(n32) );
  INVD0BWP12T30P140 U43 ( .I(acc[12]), .ZN(n35) );
  MAOI222D0BWP12T30P140 U44 ( .A(n31), .B(n32), .C(n35), .ZN(n28) );
  MAOI222D0BWP12T30P140 U45 ( .A(din[13]), .B(acc[13]), .C(n28), .ZN(n22) );
  INVD0BWP12T30P140 U46 ( .I(din[14]), .ZN(n23) );
  INVD0BWP12T30P140 U47 ( .I(acc[14]), .ZN(n26) );
  MAOI222D0BWP12T30P140 U48 ( .A(n22), .B(n23), .C(n26), .ZN(n19) );
  OAI21D0BWP12T30P140 U49 ( .A1(din[15]), .A2(n19), .B(en), .ZN(n18) );
  AOI21D0BWP12T30P140 U50 ( .A1(din[15]), .A2(n19), .B(n18), .ZN(n20) );
  MUX2ND0BWP12T30P140 U51 ( .I0(n21), .I1(acc[15]), .S(n20), .ZN(n16) );
  INVD0BWP12T30P140 U52 ( .I(n22), .ZN(n24) );
  INVD0BWP12T30P140 U53 ( .I(en), .ZN(n81) );
  AOI221D0BWP12T30P140 U54 ( .A1(din[14]), .A2(n24), .B1(n23), .B2(n22), .C(
        n81), .ZN(n25) );
  MUX2ND0BWP12T30P140 U55 ( .I0(n26), .I1(acc[14]), .S(n25), .ZN(n15) );
  INVD0BWP12T30P140 U56 ( .I(acc[13]), .ZN(n30) );
  OAI21D0BWP12T30P140 U57 ( .A1(din[13]), .A2(n28), .B(en), .ZN(n27) );
  AOI21D0BWP12T30P140 U58 ( .A1(din[13]), .A2(n28), .B(n27), .ZN(n29) );
  MUX2ND0BWP12T30P140 U59 ( .I0(n30), .I1(acc[13]), .S(n29), .ZN(n14) );
  INVD0BWP12T30P140 U60 ( .I(n31), .ZN(n33) );
  AOI221D0BWP12T30P140 U61 ( .A1(din[12]), .A2(n33), .B1(n32), .B2(n31), .C(
        n81), .ZN(n34) );
  MUX2ND0BWP12T30P140 U62 ( .I0(n35), .I1(acc[12]), .S(n34), .ZN(n13) );
  INVD0BWP12T30P140 U63 ( .I(acc[11]), .ZN(n39) );
  OAI21D0BWP12T30P140 U64 ( .A1(din[11]), .A2(n37), .B(en), .ZN(n36) );
  AOI21D0BWP12T30P140 U65 ( .A1(din[11]), .A2(n37), .B(n36), .ZN(n38) );
  MUX2ND0BWP12T30P140 U66 ( .I0(n39), .I1(acc[11]), .S(n38), .ZN(n12) );
  INVD0BWP12T30P140 U67 ( .I(n40), .ZN(n42) );
  AOI221D0BWP12T30P140 U68 ( .A1(din[10]), .A2(n42), .B1(n41), .B2(n40), .C(
        n81), .ZN(n43) );
  MUX2ND0BWP12T30P140 U69 ( .I0(n44), .I1(acc[10]), .S(n43), .ZN(n11) );
  INVD0BWP12T30P140 U70 ( .I(acc[9]), .ZN(n48) );
  OAI21D0BWP12T30P140 U71 ( .A1(din[9]), .A2(n46), .B(en), .ZN(n45) );
  AOI21D0BWP12T30P140 U72 ( .A1(din[9]), .A2(n46), .B(n45), .ZN(n47) );
  MUX2ND0BWP12T30P140 U73 ( .I0(n48), .I1(acc[9]), .S(n47), .ZN(n10) );
  INVD0BWP12T30P140 U74 ( .I(n49), .ZN(n51) );
  AOI221D0BWP12T30P140 U75 ( .A1(din[8]), .A2(n51), .B1(n50), .B2(n49), .C(n81), .ZN(n52) );
  MUX2ND0BWP12T30P140 U76 ( .I0(n53), .I1(acc[8]), .S(n52), .ZN(n9) );
  INVD0BWP12T30P140 U77 ( .I(acc[7]), .ZN(n57) );
  OAI21D0BWP12T30P140 U78 ( .A1(din[7]), .A2(n55), .B(en), .ZN(n54) );
  AOI21D0BWP12T30P140 U79 ( .A1(din[7]), .A2(n55), .B(n54), .ZN(n56) );
  MUX2ND0BWP12T30P140 U80 ( .I0(n57), .I1(acc[7]), .S(n56), .ZN(n8) );
  INVD0BWP12T30P140 U81 ( .I(n58), .ZN(n60) );
  AOI221D0BWP12T30P140 U82 ( .A1(din[6]), .A2(n60), .B1(n59), .B2(n58), .C(n81), .ZN(n61) );
  MUX2ND0BWP12T30P140 U83 ( .I0(n62), .I1(acc[6]), .S(n61), .ZN(n7) );
  INVD0BWP12T30P140 U84 ( .I(acc[5]), .ZN(n66) );
  OAI21D0BWP12T30P140 U85 ( .A1(din[5]), .A2(n64), .B(en), .ZN(n63) );
  AOI21D0BWP12T30P140 U86 ( .A1(din[5]), .A2(n64), .B(n63), .ZN(n65) );
  MUX2ND0BWP12T30P140 U87 ( .I0(n66), .I1(acc[5]), .S(n65), .ZN(n6) );
  INVD0BWP12T30P140 U88 ( .I(n67), .ZN(n69) );
  AOI221D0BWP12T30P140 U89 ( .A1(din[4]), .A2(n69), .B1(n68), .B2(n67), .C(n81), .ZN(n70) );
  MUX2ND0BWP12T30P140 U90 ( .I0(n71), .I1(acc[4]), .S(n70), .ZN(n5) );
  INVD0BWP12T30P140 U91 ( .I(acc[3]), .ZN(n75) );
  OAI21D0BWP12T30P140 U92 ( .A1(din[3]), .A2(n73), .B(en), .ZN(n72) );
  AOI21D0BWP12T30P140 U93 ( .A1(din[3]), .A2(n73), .B(n72), .ZN(n74) );
  MUX2ND0BWP12T30P140 U94 ( .I0(n75), .I1(acc[3]), .S(n74), .ZN(n4) );
  INVD0BWP12T30P140 U95 ( .I(n76), .ZN(n78) );
  AOI221D0BWP12T30P140 U96 ( .A1(din[2]), .A2(n78), .B1(n77), .B2(n76), .C(n81), .ZN(n79) );
  MUX2ND0BWP12T30P140 U97 ( .I0(n80), .I1(acc[2]), .S(n79), .ZN(n3) );
  INVD0BWP12T30P140 U98 ( .I(acc[1]), .ZN(n85) );
  AOI21D0BWP12T30P140 U99 ( .A1(din[0]), .A2(acc[0]), .B(din[1]), .ZN(n82) );
  AOI211D0BWP12T30P140 U100 ( .A1(n83), .A2(din[1]), .B(n82), .C(n81), .ZN(n84) );
  MUX2ND0BWP12T30P140 U101 ( .I0(n85), .I1(acc[1]), .S(n84), .ZN(n2) );
  INVD0BWP12T30P140 U102 ( .I(acc[0]), .ZN(n87) );
  ND2D0BWP12T30P140 U103 ( .A1(en), .A2(din[0]), .ZN(n86) );
  MUX2ND0BWP12T30P140 U104 ( .I0(acc[0]), .I1(n87), .S(n86), .ZN(n1) );
endmodule

