/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:02:39 2026
/////////////////////////////////////////////////////////////


module multi_booth_8bit ( p, rdy, clk, reset, a, b );
  output [15:0] p;
  input [7:0] a;
  input [7:0] b;
  input clk, reset;
  output rdy;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  wire   [7:0] mr;
  wire   [3:0] count;
  assign p[15] = p[8];
  assign p[14] = p[8];
  assign p[13] = p[8];
  assign p[12] = p[8];
  assign p[11] = p[8];
  assign p[10] = p[8];
  assign p[9] = p[8];

  DFCSNQD1BWP12T30P140 mr_reg_7_ ( .D(n47), .CP(n52), .CDN(n45), .SDN(n46), 
        .Q(mr[7]) );
  DFCSNQD1BWP12T30P140 mr_reg_6_ ( .D(n18), .CP(clk), .CDN(n43), .SDN(n44), 
        .Q(mr[6]) );
  DFCSNQD1BWP12T30P140 mr_reg_5_ ( .D(n17), .CP(n52), .CDN(n41), .SDN(n42), 
        .Q(mr[5]) );
  DFCSNQD1BWP12T30P140 mr_reg_4_ ( .D(n16), .CP(n52), .CDN(n39), .SDN(n40), 
        .Q(mr[4]) );
  DFCSNQD1BWP12T30P140 mr_reg_3_ ( .D(n15), .CP(n52), .CDN(n37), .SDN(n38), 
        .Q(mr[3]) );
  DFCSNQD1BWP12T30P140 mr_reg_2_ ( .D(n14), .CP(clk), .CDN(n35), .SDN(n36), 
        .Q(mr[2]) );
  DFCSNQD1BWP12T30P140 mr_reg_1_ ( .D(n13), .CP(n52), .CDN(n33), .SDN(n34), 
        .Q(mr[1]) );
  DFCSNQD1BWP12T30P140 mr_reg_0_ ( .D(n12), .CP(clk), .CDN(n31), .SDN(n32), 
        .Q(mr[0]) );
  DFCNQD1BWP12T30P140 p_reg_7_ ( .D(n27), .CP(clk), .CDN(n19), .Q(p[7]) );
  DFCNQD1BWP12T30P140 rdy_reg ( .D(n48), .CP(n52), .CDN(n19), .Q(rdy) );
  DFCNQD1BWP12T30P140 p_reg_6_ ( .D(n26), .CP(clk), .CDN(n19), .Q(p[6]) );
  DFCNQD1BWP12T30P140 p_reg_5_ ( .D(n25), .CP(n52), .CDN(n19), .Q(p[5]) );
  DFCNQD1BWP12T30P140 p_reg_4_ ( .D(n24), .CP(clk), .CDN(n19), .Q(p[4]) );
  DFCNQD1BWP12T30P140 p_reg_3_ ( .D(n23), .CP(n52), .CDN(n19), .Q(p[3]) );
  DFCNQD1BWP12T30P140 p_reg_2_ ( .D(n22), .CP(clk), .CDN(n19), .Q(p[2]) );
  DFCNQD1BWP12T30P140 p_reg_1_ ( .D(n21), .CP(n52), .CDN(n19), .Q(p[1]) );
  DFCNQD1BWP12T30P140 p_reg_0_ ( .D(n20), .CP(clk), .CDN(n19), .Q(p[0]) );
  DFCNQD1BWP12T30P140 count_reg_2_ ( .D(n28), .CP(clk), .CDN(n53), .Q(count[2]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(n30), .CP(n52), .CDN(n19), .Q(count[0]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(n29), .CP(clk), .CDN(n19), .Q(count[1]) );
  DFCNQD1BWP12T30P140 count_reg_3_ ( .D(n49), .CP(n52), .CDN(n19), .Q(count[3]) );
  TIELBWP12T30P140 U53 ( .ZN(p[8]) );
  INVD0BWP12T30P140 U54 ( .I(clk), .ZN(n51) );
  INVD0BWP12T30P140 U55 ( .I(n51), .ZN(n52) );
  INVD0BWP12T30P140 U56 ( .I(reset), .ZN(n53) );
  INVD0BWP12T30P140 U57 ( .I(reset), .ZN(n19) );
  INVD0BWP12T30P140 U58 ( .I(count[3]), .ZN(n64) );
  ND2D0BWP12T30P140 U59 ( .A1(count[0]), .A2(n64), .ZN(n65) );
  OA21D0BWP12T30P140 U60 ( .A1(count[0]), .A2(n64), .B(n65), .Z(n30) );
  OR2D0BWP12T30P140 U61 ( .A1(rdy), .A2(count[3]), .Z(n48) );
  AOI31D0BWP12T30P140 U62 ( .A1(count[1]), .A2(count[0]), .A3(count[2]), .B(
        count[3]), .ZN(n54) );
  INVD0BWP12T30P140 U63 ( .I(n54), .ZN(n49) );
  ND2D0BWP12T30P140 U64 ( .A1(count[0]), .A2(count[1]), .ZN(n56) );
  OAI21D0BWP12T30P140 U65 ( .A1(count[3]), .A2(n54), .B(count[2]), .ZN(n55) );
  OAI21D0BWP12T30P140 U66 ( .A1(n49), .A2(n56), .B(n55), .ZN(n28) );
  INR2D1BWP12T30P140 U67 ( .A1(mr[7]), .B1(n64), .ZN(n47) );
  AO21D0BWP12T30P140 U68 ( .A1(p[7]), .A2(n64), .B(n47), .Z(n27) );
  OR2D0BWP12T30P140 U69 ( .A1(b[6]), .A2(n19), .Z(n43) );
  OR2D0BWP12T30P140 U70 ( .A1(b[4]), .A2(n19), .Z(n39) );
  OR2D0BWP12T30P140 U71 ( .A1(b[5]), .A2(n19), .Z(n41) );
  OR2D0BWP12T30P140 U72 ( .A1(b[7]), .A2(n19), .Z(n45) );
  OR2D0BWP12T30P140 U73 ( .A1(b[3]), .A2(n19), .Z(n37) );
  OR2D0BWP12T30P140 U74 ( .A1(b[2]), .A2(n19), .Z(n35) );
  OR2D0BWP12T30P140 U75 ( .A1(b[1]), .A2(n19), .Z(n33) );
  OR2D0BWP12T30P140 U76 ( .A1(b[0]), .A2(n19), .Z(n31) );
  ND2D0BWP12T30P140 U77 ( .A1(reset), .A2(b[3]), .ZN(n38) );
  ND2D0BWP12T30P140 U78 ( .A1(reset), .A2(b[5]), .ZN(n42) );
  ND2D0BWP12T30P140 U79 ( .A1(reset), .A2(b[2]), .ZN(n36) );
  ND2D0BWP12T30P140 U80 ( .A1(reset), .A2(b[0]), .ZN(n32) );
  ND2D0BWP12T30P140 U81 ( .A1(reset), .A2(b[7]), .ZN(n46) );
  ND2D0BWP12T30P140 U82 ( .A1(reset), .A2(b[4]), .ZN(n40) );
  ND2D0BWP12T30P140 U83 ( .A1(reset), .A2(b[1]), .ZN(n34) );
  ND2D0BWP12T30P140 U84 ( .A1(reset), .A2(b[6]), .ZN(n44) );
  ND2D0BWP12T30P140 U85 ( .A1(count[3]), .A2(mr[0]), .ZN(n61) );
  IOA21D0BWP12T30P140 U86 ( .A1(p[0]), .A2(n64), .B(n61), .ZN(n20) );
  ND2D0BWP12T30P140 U87 ( .A1(count[3]), .A2(mr[6]), .ZN(n59) );
  IOA21D0BWP12T30P140 U88 ( .A1(mr[7]), .A2(n64), .B(n59), .ZN(n18) );
  ND2D0BWP12T30P140 U89 ( .A1(count[3]), .A2(mr[5]), .ZN(n58) );
  IOA21D0BWP12T30P140 U90 ( .A1(mr[6]), .A2(n64), .B(n58), .ZN(n17) );
  ND2D0BWP12T30P140 U91 ( .A1(count[3]), .A2(mr[2]), .ZN(n60) );
  IOA21D0BWP12T30P140 U92 ( .A1(p[2]), .A2(n64), .B(n60), .ZN(n22) );
  ND2D0BWP12T30P140 U93 ( .A1(count[3]), .A2(mr[4]), .ZN(n57) );
  IOA21D0BWP12T30P140 U94 ( .A1(p[4]), .A2(n64), .B(n57), .ZN(n24) );
  IOA21D0BWP12T30P140 U95 ( .A1(mr[5]), .A2(n64), .B(n57), .ZN(n16) );
  IOA21D0BWP12T30P140 U96 ( .A1(p[5]), .A2(n64), .B(n58), .ZN(n25) );
  ND2D0BWP12T30P140 U97 ( .A1(count[3]), .A2(mr[1]), .ZN(n62) );
  IOA21D0BWP12T30P140 U98 ( .A1(p[1]), .A2(n64), .B(n62), .ZN(n21) );
  IOA21D0BWP12T30P140 U99 ( .A1(p[6]), .A2(n64), .B(n59), .ZN(n26) );
  ND2D0BWP12T30P140 U100 ( .A1(count[3]), .A2(mr[3]), .ZN(n63) );
  IOA21D0BWP12T30P140 U101 ( .A1(mr[4]), .A2(n64), .B(n63), .ZN(n15) );
  IOA21D0BWP12T30P140 U102 ( .A1(mr[3]), .A2(n64), .B(n60), .ZN(n14) );
  IOA21D0BWP12T30P140 U103 ( .A1(mr[1]), .A2(n64), .B(n61), .ZN(n12) );
  IOA21D0BWP12T30P140 U104 ( .A1(mr[2]), .A2(n64), .B(n62), .ZN(n13) );
  IOA21D0BWP12T30P140 U105 ( .A1(p[3]), .A2(n64), .B(n63), .ZN(n23) );
  INVD0BWP12T30P140 U106 ( .I(count[1]), .ZN(n66) );
  MUX2ND0BWP12T30P140 U107 ( .I0(count[1]), .I1(n66), .S(n65), .ZN(n29) );
endmodule

