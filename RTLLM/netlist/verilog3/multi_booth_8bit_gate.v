/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:25:54 2026
/////////////////////////////////////////////////////////////


module multi_booth_8bit ( p, rdy, clk, reset, a, b );
  output [15:0] p;
  input [7:0] a;
  input [7:0] b;
  input clk, reset;
  output rdy;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70;
  wire   [8:0] shift_reg;
  wire   [3:0] cnt;
  assign p[15] = p[9];
  assign p[14] = p[9];
  assign p[13] = p[9];
  assign p[12] = p[9];
  assign p[11] = p[9];
  assign p[10] = p[9];

  DFCSNQD1BWP12T30P140 shift_reg_reg_8_ ( .D(n50), .CP(n55), .CDN(n48), .SDN(
        n49), .Q(shift_reg[8]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_7_ ( .D(n19), .CP(clk), .CDN(n46), .SDN(
        n47), .Q(shift_reg[7]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_6_ ( .D(n18), .CP(n55), .CDN(n44), .SDN(
        n45), .Q(shift_reg[6]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_5_ ( .D(n17), .CP(n55), .CDN(n42), .SDN(
        n43), .Q(shift_reg[5]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_4_ ( .D(n16), .CP(n55), .CDN(n40), .SDN(
        n41), .Q(shift_reg[4]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_3_ ( .D(n15), .CP(clk), .CDN(n38), .SDN(
        n39), .Q(shift_reg[3]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_2_ ( .D(n14), .CP(n55), .CDN(n36), .SDN(
        n37), .Q(shift_reg[2]) );
  DFCSNQD1BWP12T30P140 shift_reg_reg_1_ ( .D(n13), .CP(clk), .CDN(n34), .SDN(
        n35), .Q(shift_reg[1]) );
  DFCNQD1BWP12T30P140 p_reg_8_ ( .D(n30), .CP(clk), .CDN(n20), .Q(p[8]) );
  DFCNQD1BWP12T30P140 rdy_reg ( .D(n51), .CP(n55), .CDN(n20), .Q(rdy) );
  DFCNQD1BWP12T30P140 p_reg_7_ ( .D(n29), .CP(clk), .CDN(n20), .Q(p[7]) );
  DFCNQD1BWP12T30P140 p_reg_6_ ( .D(n28), .CP(n55), .CDN(n20), .Q(p[6]) );
  DFCNQD1BWP12T30P140 p_reg_5_ ( .D(n27), .CP(clk), .CDN(n20), .Q(p[5]) );
  DFCNQD1BWP12T30P140 p_reg_4_ ( .D(n26), .CP(n55), .CDN(n20), .Q(p[4]) );
  DFCNQD1BWP12T30P140 p_reg_3_ ( .D(n25), .CP(clk), .CDN(n20), .Q(p[3]) );
  DFCNQD1BWP12T30P140 p_reg_2_ ( .D(n24), .CP(n55), .CDN(n20), .Q(p[2]) );
  DFCNQD1BWP12T30P140 p_reg_1_ ( .D(n23), .CP(clk), .CDN(n20), .Q(p[1]) );
  DFCNQD1BWP12T30P140 p_reg_0_ ( .D(n21), .CP(n55), .CDN(n20), .Q(p[0]) );
  DFCNQD1BWP12T30P140 shift_reg_reg_0_ ( .D(n22), .CP(clk), .CDN(n20), .Q(
        shift_reg[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(n31), .CP(clk), .CDN(n20), .Q(cnt[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(n33), .CP(n55), .CDN(n20), .Q(cnt[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(n32), .CP(clk), .CDN(n20), .Q(cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(n52), .CP(n55), .CDN(n20), .Q(cnt[3]) );
  TIELBWP12T30P140 U56 ( .ZN(p[9]) );
  INVD0BWP12T30P140 U57 ( .I(clk), .ZN(n54) );
  INVD0BWP12T30P140 U58 ( .I(n54), .ZN(n55) );
  INVD0BWP12T30P140 U59 ( .I(reset), .ZN(n56) );
  INVD0BWP12T30P140 U60 ( .I(reset), .ZN(n20) );
  INVD0BWP12T30P140 U61 ( .I(cnt[3]), .ZN(n68) );
  ND2D0BWP12T30P140 U62 ( .A1(cnt[0]), .A2(n68), .ZN(n69) );
  OA21D0BWP12T30P140 U63 ( .A1(cnt[0]), .A2(n68), .B(n69), .Z(n33) );
  OR2D0BWP12T30P140 U64 ( .A1(rdy), .A2(cnt[3]), .Z(n51) );
  AOI31D0BWP12T30P140 U65 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .B(cnt[3]), 
        .ZN(n57) );
  INVD0BWP12T30P140 U66 ( .I(n57), .ZN(n52) );
  ND2D0BWP12T30P140 U67 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(n59) );
  OAI21D0BWP12T30P140 U68 ( .A1(cnt[3]), .A2(n57), .B(cnt[2]), .ZN(n58) );
  OAI21D0BWP12T30P140 U69 ( .A1(n52), .A2(n59), .B(n58), .ZN(n31) );
  INR2D1BWP12T30P140 U70 ( .A1(shift_reg[8]), .B1(n68), .ZN(n50) );
  AO21D0BWP12T30P140 U71 ( .A1(p[8]), .A2(n68), .B(n50), .Z(n30) );
  OR2D0BWP12T30P140 U72 ( .A1(b[7]), .A2(n20), .Z(n48) );
  OR2D0BWP12T30P140 U73 ( .A1(b[6]), .A2(n20), .Z(n46) );
  OR2D0BWP12T30P140 U74 ( .A1(b[3]), .A2(n20), .Z(n40) );
  OR2D0BWP12T30P140 U75 ( .A1(b[2]), .A2(n20), .Z(n38) );
  OR2D0BWP12T30P140 U76 ( .A1(b[4]), .A2(n20), .Z(n42) );
  OR2D0BWP12T30P140 U77 ( .A1(b[5]), .A2(n56), .Z(n44) );
  OR2D0BWP12T30P140 U78 ( .A1(b[1]), .A2(n56), .Z(n36) );
  OR2D0BWP12T30P140 U79 ( .A1(b[0]), .A2(n56), .Z(n34) );
  ND2D0BWP12T30P140 U80 ( .A1(reset), .A2(b[5]), .ZN(n45) );
  ND2D0BWP12T30P140 U81 ( .A1(reset), .A2(b[1]), .ZN(n37) );
  ND2D0BWP12T30P140 U82 ( .A1(reset), .A2(b[6]), .ZN(n47) );
  ND2D0BWP12T30P140 U83 ( .A1(reset), .A2(b[7]), .ZN(n49) );
  ND2D0BWP12T30P140 U84 ( .A1(reset), .A2(b[2]), .ZN(n39) );
  ND2D0BWP12T30P140 U85 ( .A1(reset), .A2(b[4]), .ZN(n43) );
  ND2D0BWP12T30P140 U86 ( .A1(reset), .A2(b[0]), .ZN(n35) );
  ND2D0BWP12T30P140 U87 ( .A1(reset), .A2(b[3]), .ZN(n41) );
  ND2D0BWP12T30P140 U88 ( .A1(cnt[3]), .A2(shift_reg[0]), .ZN(n60) );
  IOA21D0BWP12T30P140 U89 ( .A1(shift_reg[1]), .A2(n68), .B(n60), .ZN(n22) );
  ND2D0BWP12T30P140 U90 ( .A1(cnt[3]), .A2(shift_reg[1]), .ZN(n61) );
  IOA21D0BWP12T30P140 U91 ( .A1(p[1]), .A2(n68), .B(n61), .ZN(n23) );
  IOA21D0BWP12T30P140 U92 ( .A1(p[0]), .A2(n68), .B(n60), .ZN(n21) );
  ND2D0BWP12T30P140 U93 ( .A1(cnt[3]), .A2(shift_reg[7]), .ZN(n63) );
  IOA21D0BWP12T30P140 U94 ( .A1(shift_reg[8]), .A2(n68), .B(n63), .ZN(n19) );
  IOA21D0BWP12T30P140 U95 ( .A1(shift_reg[2]), .A2(n68), .B(n61), .ZN(n13) );
  ND2D0BWP12T30P140 U96 ( .A1(cnt[3]), .A2(shift_reg[4]), .ZN(n62) );
  IOA21D0BWP12T30P140 U97 ( .A1(shift_reg[5]), .A2(n68), .B(n62), .ZN(n16) );
  ND2D0BWP12T30P140 U98 ( .A1(cnt[3]), .A2(shift_reg[5]), .ZN(n66) );
  IOA21D0BWP12T30P140 U99 ( .A1(shift_reg[6]), .A2(n68), .B(n66), .ZN(n17) );
  IOA21D0BWP12T30P140 U100 ( .A1(p[4]), .A2(n68), .B(n62), .ZN(n26) );
  ND2D0BWP12T30P140 U101 ( .A1(cnt[3]), .A2(shift_reg[2]), .ZN(n67) );
  IOA21D0BWP12T30P140 U102 ( .A1(p[2]), .A2(n68), .B(n67), .ZN(n24) );
  ND2D0BWP12T30P140 U103 ( .A1(cnt[3]), .A2(shift_reg[6]), .ZN(n65) );
  IOA21D0BWP12T30P140 U104 ( .A1(p[6]), .A2(n68), .B(n65), .ZN(n28) );
  ND2D0BWP12T30P140 U105 ( .A1(cnt[3]), .A2(shift_reg[3]), .ZN(n64) );
  IOA21D0BWP12T30P140 U106 ( .A1(shift_reg[4]), .A2(n68), .B(n64), .ZN(n15) );
  IOA21D0BWP12T30P140 U107 ( .A1(p[7]), .A2(n68), .B(n63), .ZN(n29) );
  IOA21D0BWP12T30P140 U108 ( .A1(p[3]), .A2(n68), .B(n64), .ZN(n25) );
  IOA21D0BWP12T30P140 U109 ( .A1(shift_reg[7]), .A2(n68), .B(n65), .ZN(n18) );
  IOA21D0BWP12T30P140 U110 ( .A1(p[5]), .A2(n68), .B(n66), .ZN(n27) );
  IOA21D0BWP12T30P140 U111 ( .A1(shift_reg[3]), .A2(n68), .B(n67), .ZN(n14) );
  INVD0BWP12T30P140 U112 ( .I(cnt[1]), .ZN(n70) );
  MUX2ND0BWP12T30P140 U113 ( .I0(cnt[1]), .I1(n70), .S(n69), .ZN(n32) );
endmodule

