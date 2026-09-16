/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:41:18 2026
/////////////////////////////////////////////////////////////


module accu16 ( clk, rst_n, en, din, acc );
  input [15:0] din;
  output [15:0] acc;
  input clk, rst_n, en;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126;

  DFCNQD1BWP12T30P140 acc_r_reg_2_ ( .D(n48), .CP(clk), .CDN(rst_n), .Q(acc[2]) );
  DFCNQD1BWP12T30P140 acc_r_reg_4_ ( .D(n46), .CP(clk), .CDN(rst_n), .Q(acc[4]) );
  DFCNQD1BWP12T30P140 acc_r_reg_6_ ( .D(n44), .CP(clk), .CDN(rst_n), .Q(acc[6]) );
  DFCNQD1BWP12T30P140 acc_r_reg_8_ ( .D(n42), .CP(clk), .CDN(rst_n), .Q(acc[8]) );
  DFCNQD1BWP12T30P140 acc_r_reg_10_ ( .D(n40), .CP(clk), .CDN(rst_n), .Q(
        acc[10]) );
  DFCNQD1BWP12T30P140 acc_r_reg_12_ ( .D(n38), .CP(clk), .CDN(rst_n), .Q(
        acc[12]) );
  DFCNQD1BWP12T30P140 acc_r_reg_14_ ( .D(n36), .CP(clk), .CDN(rst_n), .Q(
        acc[14]) );
  DFCNQD1BWP12T30P140 acc_r_reg_15_ ( .D(n35), .CP(clk), .CDN(rst_n), .Q(
        acc[15]) );
  DFCNQD1BWP12T30P140 acc_r_reg_1_ ( .D(n49), .CP(clk), .CDN(rst_n), .Q(acc[1]) );
  DFCNQD1BWP12T30P140 acc_r_reg_3_ ( .D(n47), .CP(clk), .CDN(rst_n), .Q(acc[3]) );
  DFCNQD1BWP12T30P140 acc_r_reg_5_ ( .D(n45), .CP(clk), .CDN(rst_n), .Q(acc[5]) );
  DFCNQD1BWP12T30P140 acc_r_reg_7_ ( .D(n43), .CP(clk), .CDN(rst_n), .Q(acc[7]) );
  DFCNQD1BWP12T30P140 acc_r_reg_9_ ( .D(n41), .CP(clk), .CDN(rst_n), .Q(acc[9]) );
  DFCNQD1BWP12T30P140 acc_r_reg_11_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(
        acc[11]) );
  DFCNQD1BWP12T30P140 acc_r_reg_13_ ( .D(n37), .CP(clk), .CDN(rst_n), .Q(
        acc[13]) );
  DFCNQD1BWP12T30P140 acc_r_reg_0_ ( .D(n50), .CP(clk), .CDN(rst_n), .Q(acc[0]) );
  INVD0BWP12T30P140 U38 ( .I(acc[0]), .ZN(n52) );
  ND2D0BWP12T30P140 U39 ( .A1(en), .A2(din[0]), .ZN(n51) );
  MUX2ND0BWP12T30P140 U40 ( .I0(acc[0]), .I1(n52), .S(n51), .ZN(n50) );
  INVD0BWP12T30P140 U41 ( .I(acc[1]), .ZN(n55) );
  AN2D0BWP12T30P140 U42 ( .A1(din[0]), .A2(acc[0]), .Z(n56) );
  AOI21D0BWP12T30P140 U43 ( .A1(din[0]), .A2(acc[0]), .B(din[1]), .ZN(n53) );
  INVD0BWP12T30P140 U44 ( .I(en), .ZN(n117) );
  AOI211D0BWP12T30P140 U45 ( .A1(n56), .A2(din[1]), .B(n53), .C(n117), .ZN(n54) );
  MUX2ND0BWP12T30P140 U46 ( .I0(n55), .I1(acc[1]), .S(n54), .ZN(n49) );
  INVD0BWP12T30P140 U47 ( .I(acc[2]), .ZN(n60) );
  MAOI222D0BWP12T30P140 U48 ( .A(n56), .B(din[1]), .C(acc[1]), .ZN(n61) );
  INVD0BWP12T30P140 U49 ( .I(din[2]), .ZN(n59) );
  INVD0BWP12T30P140 U50 ( .I(n61), .ZN(n57) );
  AOI221D0BWP12T30P140 U51 ( .A1(n61), .A2(n59), .B1(n57), .B2(din[2]), .C(
        n117), .ZN(n58) );
  MUX2ND0BWP12T30P140 U52 ( .I0(n60), .I1(acc[2]), .S(n58), .ZN(n48) );
  INVD0BWP12T30P140 U53 ( .I(acc[3]), .ZN(n65) );
  MAOI222D0BWP12T30P140 U54 ( .A(n61), .B(n60), .C(n59), .ZN(n66) );
  INVD0BWP12T30P140 U55 ( .I(n66), .ZN(n63) );
  INVD0BWP12T30P140 U56 ( .I(din[3]), .ZN(n62) );
  AOI221D0BWP12T30P140 U57 ( .A1(n63), .A2(n62), .B1(n66), .B2(din[3]), .C(
        n117), .ZN(n64) );
  MUX2ND0BWP12T30P140 U58 ( .I0(n65), .I1(acc[3]), .S(n64), .ZN(n47) );
  INVD0BWP12T30P140 U59 ( .I(acc[4]), .ZN(n70) );
  MAOI222D0BWP12T30P140 U60 ( .A(acc[3]), .B(din[3]), .C(n66), .ZN(n71) );
  INVD0BWP12T30P140 U61 ( .I(din[4]), .ZN(n69) );
  INVD0BWP12T30P140 U62 ( .I(n71), .ZN(n67) );
  AOI221D0BWP12T30P140 U63 ( .A1(n71), .A2(n69), .B1(n67), .B2(din[4]), .C(
        n117), .ZN(n68) );
  MUX2ND0BWP12T30P140 U64 ( .I0(n70), .I1(acc[4]), .S(n68), .ZN(n46) );
  INVD0BWP12T30P140 U65 ( .I(acc[5]), .ZN(n75) );
  MAOI222D0BWP12T30P140 U66 ( .A(n71), .B(n70), .C(n69), .ZN(n76) );
  INVD0BWP12T30P140 U67 ( .I(n76), .ZN(n73) );
  INVD0BWP12T30P140 U68 ( .I(din[5]), .ZN(n72) );
  AOI221D0BWP12T30P140 U69 ( .A1(n73), .A2(n72), .B1(n76), .B2(din[5]), .C(
        n117), .ZN(n74) );
  MUX2ND0BWP12T30P140 U70 ( .I0(n75), .I1(acc[5]), .S(n74), .ZN(n45) );
  INVD0BWP12T30P140 U71 ( .I(acc[6]), .ZN(n80) );
  MAOI222D0BWP12T30P140 U72 ( .A(acc[5]), .B(din[5]), .C(n76), .ZN(n81) );
  INVD0BWP12T30P140 U73 ( .I(din[6]), .ZN(n79) );
  INVD0BWP12T30P140 U74 ( .I(n81), .ZN(n77) );
  AOI221D0BWP12T30P140 U75 ( .A1(n81), .A2(n79), .B1(n77), .B2(din[6]), .C(
        n117), .ZN(n78) );
  MUX2ND0BWP12T30P140 U76 ( .I0(n80), .I1(acc[6]), .S(n78), .ZN(n44) );
  INVD0BWP12T30P140 U77 ( .I(acc[7]), .ZN(n85) );
  MAOI222D0BWP12T30P140 U78 ( .A(n81), .B(n80), .C(n79), .ZN(n86) );
  INVD0BWP12T30P140 U79 ( .I(n86), .ZN(n83) );
  INVD0BWP12T30P140 U80 ( .I(din[7]), .ZN(n82) );
  AOI221D0BWP12T30P140 U81 ( .A1(n83), .A2(n82), .B1(n86), .B2(din[7]), .C(
        n117), .ZN(n84) );
  MUX2ND0BWP12T30P140 U82 ( .I0(n85), .I1(acc[7]), .S(n84), .ZN(n43) );
  INVD0BWP12T30P140 U83 ( .I(acc[8]), .ZN(n90) );
  MAOI222D0BWP12T30P140 U84 ( .A(acc[7]), .B(din[7]), .C(n86), .ZN(n91) );
  INVD0BWP12T30P140 U85 ( .I(din[8]), .ZN(n89) );
  INVD0BWP12T30P140 U86 ( .I(n91), .ZN(n87) );
  AOI221D0BWP12T30P140 U87 ( .A1(n91), .A2(n89), .B1(n87), .B2(din[8]), .C(
        n117), .ZN(n88) );
  MUX2ND0BWP12T30P140 U88 ( .I0(n90), .I1(acc[8]), .S(n88), .ZN(n42) );
  INVD0BWP12T30P140 U89 ( .I(acc[9]), .ZN(n95) );
  MAOI222D0BWP12T30P140 U90 ( .A(n91), .B(n90), .C(n89), .ZN(n96) );
  INVD0BWP12T30P140 U91 ( .I(n96), .ZN(n93) );
  INVD0BWP12T30P140 U92 ( .I(din[9]), .ZN(n92) );
  AOI221D0BWP12T30P140 U93 ( .A1(n93), .A2(n92), .B1(n96), .B2(din[9]), .C(
        n117), .ZN(n94) );
  MUX2ND0BWP12T30P140 U94 ( .I0(n95), .I1(acc[9]), .S(n94), .ZN(n41) );
  INVD0BWP12T30P140 U95 ( .I(acc[10]), .ZN(n100) );
  MAOI222D0BWP12T30P140 U96 ( .A(acc[9]), .B(din[9]), .C(n96), .ZN(n101) );
  INVD0BWP12T30P140 U97 ( .I(din[10]), .ZN(n99) );
  INVD0BWP12T30P140 U98 ( .I(n101), .ZN(n97) );
  AOI221D0BWP12T30P140 U99 ( .A1(n101), .A2(n99), .B1(n97), .B2(din[10]), .C(
        n117), .ZN(n98) );
  MUX2ND0BWP12T30P140 U100 ( .I0(n100), .I1(acc[10]), .S(n98), .ZN(n40) );
  INVD0BWP12T30P140 U101 ( .I(acc[11]), .ZN(n105) );
  MAOI222D0BWP12T30P140 U102 ( .A(n101), .B(n100), .C(n99), .ZN(n106) );
  INVD0BWP12T30P140 U103 ( .I(n106), .ZN(n103) );
  INVD0BWP12T30P140 U104 ( .I(din[11]), .ZN(n102) );
  AOI221D0BWP12T30P140 U105 ( .A1(n103), .A2(n102), .B1(n106), .B2(din[11]), 
        .C(n117), .ZN(n104) );
  MUX2ND0BWP12T30P140 U106 ( .I0(n105), .I1(acc[11]), .S(n104), .ZN(n39) );
  INVD0BWP12T30P140 U107 ( .I(acc[12]), .ZN(n110) );
  MAOI222D0BWP12T30P140 U108 ( .A(acc[11]), .B(din[11]), .C(n106), .ZN(n111)
         );
  INVD0BWP12T30P140 U109 ( .I(din[12]), .ZN(n109) );
  INVD0BWP12T30P140 U110 ( .I(n111), .ZN(n107) );
  AOI221D0BWP12T30P140 U111 ( .A1(n111), .A2(n109), .B1(n107), .B2(din[12]), 
        .C(n117), .ZN(n108) );
  MUX2ND0BWP12T30P140 U112 ( .I0(n110), .I1(acc[12]), .S(n108), .ZN(n38) );
  INVD0BWP12T30P140 U113 ( .I(acc[13]), .ZN(n115) );
  MAOI222D0BWP12T30P140 U114 ( .A(n111), .B(n110), .C(n109), .ZN(n116) );
  INVD0BWP12T30P140 U115 ( .I(n116), .ZN(n113) );
  INVD0BWP12T30P140 U116 ( .I(din[13]), .ZN(n112) );
  AOI221D0BWP12T30P140 U117 ( .A1(n113), .A2(n112), .B1(n116), .B2(din[13]), 
        .C(n117), .ZN(n114) );
  MUX2ND0BWP12T30P140 U118 ( .I0(n115), .I1(acc[13]), .S(n114), .ZN(n37) );
  INVD0BWP12T30P140 U119 ( .I(acc[14]), .ZN(n121) );
  MAOI222D0BWP12T30P140 U120 ( .A(acc[13]), .B(din[13]), .C(n116), .ZN(n122)
         );
  INVD0BWP12T30P140 U121 ( .I(din[14]), .ZN(n120) );
  INVD0BWP12T30P140 U122 ( .I(n122), .ZN(n118) );
  AOI221D0BWP12T30P140 U123 ( .A1(n122), .A2(n120), .B1(n118), .B2(din[14]), 
        .C(n117), .ZN(n119) );
  MUX2ND0BWP12T30P140 U124 ( .I0(n121), .I1(acc[14]), .S(n119), .ZN(n36) );
  INVD0BWP12T30P140 U125 ( .I(acc[15]), .ZN(n126) );
  MAOI222D0BWP12T30P140 U126 ( .A(n122), .B(n121), .C(n120), .ZN(n124) );
  OAI21D0BWP12T30P140 U127 ( .A1(din[15]), .A2(n124), .B(en), .ZN(n123) );
  AOI21D0BWP12T30P140 U128 ( .A1(din[15]), .A2(n124), .B(n123), .ZN(n125) );
  MUX2ND0BWP12T30P140 U129 ( .I0(n126), .I1(acc[15]), .S(n125), .ZN(n35) );
endmodule

