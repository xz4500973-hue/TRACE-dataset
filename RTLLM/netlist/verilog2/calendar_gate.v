/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:52:39 2026
/////////////////////////////////////////////////////////////


module calendar ( CLK, RST, Hours, Mins, Secs );
  output [5:0] Hours;
  output [5:0] Mins;
  output [5:0] Secs;
  input CLK, RST;
  wire   N40, N41, N42, N43, N44, N45, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68;

  DFCNQD1BWP12T30P140 Secs_reg_1_ ( .D(N41), .CP(CLK), .CDN(n12), .Q(Secs[1])
         );
  DFCNQD1BWP12T30P140 Secs_reg_4_ ( .D(N44), .CP(CLK), .CDN(n12), .Q(Secs[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_4_ ( .D(n14), .CP(CLK), .CDN(n12), .Q(Mins[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_0_ ( .D(n17), .CP(CLK), .CDN(n12), .Q(Mins[0])
         );
  DFCNQD1BWP12T30P140 Hours_reg_5_ ( .D(n24), .CP(CLK), .CDN(n12), .Q(Hours[5]) );
  DFCNQD1BWP12T30P140 Secs_reg_2_ ( .D(N42), .CP(CLK), .CDN(n12), .Q(Secs[2])
         );
  DFCNQD1BWP12T30P140 Secs_reg_5_ ( .D(N45), .CP(CLK), .CDN(n12), .Q(Secs[5])
         );
  DFCNQD1BWP12T30P140 Secs_reg_0_ ( .D(N40), .CP(CLK), .CDN(n12), .Q(Secs[0])
         );
  DFCNQD1BWP12T30P140 Hours_reg_0_ ( .D(n23), .CP(CLK), .CDN(n12), .Q(Hours[0]) );
  DFCNQD1BWP12T30P140 Mins_reg_2_ ( .D(n16), .CP(CLK), .CDN(n12), .Q(Mins[2])
         );
  DFCNQD1BWP12T30P140 Mins_reg_5_ ( .D(n13), .CP(CLK), .CDN(n12), .Q(Mins[5])
         );
  DFCNQD1BWP12T30P140 Hours_reg_4_ ( .D(n19), .CP(CLK), .CDN(n12), .Q(Hours[4]) );
  DFCNQD1BWP12T30P140 Mins_reg_1_ ( .D(n18), .CP(CLK), .CDN(n12), .Q(Mins[1])
         );
  DFCNQD1BWP12T30P140 Hours_reg_2_ ( .D(n21), .CP(CLK), .CDN(n12), .Q(Hours[2]) );
  DFCNQD1BWP12T30P140 Secs_reg_3_ ( .D(N43), .CP(CLK), .CDN(n12), .Q(Secs[3])
         );
  DFCNQD1BWP12T30P140 Mins_reg_3_ ( .D(n15), .CP(CLK), .CDN(n12), .Q(Mins[3])
         );
  DFCNQD1BWP12T30P140 Hours_reg_1_ ( .D(n22), .CP(CLK), .CDN(n12), .Q(Hours[1]) );
  DFCNQD1BWP12T30P140 Hours_reg_3_ ( .D(n20), .CP(CLK), .CDN(n12), .Q(Hours[3]) );
  INVD0BWP12T30P140 U33 ( .I(Secs[4]), .ZN(n26) );
  ND2D0BWP12T30P140 U34 ( .A1(Secs[0]), .A2(Secs[1]), .ZN(n39) );
  INVD0BWP12T30P140 U35 ( .I(Secs[2]), .ZN(n34) );
  NR2D0BWP12T30P140 U36 ( .A1(n39), .A2(n34), .ZN(n66) );
  ND2D0BWP12T30P140 U37 ( .A1(Secs[3]), .A2(n66), .ZN(n65) );
  NR2D0BWP12T30P140 U38 ( .A1(n26), .A2(n65), .ZN(n38) );
  INR3D1BWP12T30P140 U39 ( .A1(Secs[3]), .B1(Secs[2]), .B2(n39), .ZN(n25) );
  ND3D0BWP12T30P140 U40 ( .A1(Secs[5]), .A2(Secs[4]), .A3(n25), .ZN(n64) );
  INVD0BWP12T30P140 U41 ( .I(n64), .ZN(n35) );
  AOI211D0BWP12T30P140 U42 ( .A1(n26), .A2(n65), .B(n38), .C(n35), .ZN(N44) );
  INVD0BWP12T30P140 U43 ( .I(Mins[4]), .ZN(n43) );
  ND2D0BWP12T30P140 U44 ( .A1(Mins[1]), .A2(Mins[0]), .ZN(n49) );
  INVD0BWP12T30P140 U45 ( .I(Mins[2]), .ZN(n47) );
  NR3D0BWP12T30P140 U46 ( .A1(n64), .A2(n49), .A3(n47), .ZN(n55) );
  ND2D0BWP12T30P140 U47 ( .A1(Mins[3]), .A2(n55), .ZN(n42) );
  NR2D0BWP12T30P140 U48 ( .A1(n49), .A2(n47), .ZN(n28) );
  NR2D0BWP12T30P140 U49 ( .A1(Mins[2]), .A2(n49), .ZN(n27) );
  ND4D0BWP12T30P140 U50 ( .A1(Mins[5]), .A2(Mins[4]), .A3(Mins[3]), .A4(n27), 
        .ZN(n29) );
  ND2D0BWP12T30P140 U51 ( .A1(n35), .A2(n29), .ZN(n52) );
  OAI211D0BWP12T30P140 U52 ( .A1(n28), .A2(n52), .B(Mins[3]), .C(n35), .ZN(n54) );
  NR2D0BWP12T30P140 U53 ( .A1(n43), .A2(n54), .ZN(n41) );
  AOI21D0BWP12T30P140 U54 ( .A1(n43), .A2(n42), .B(n41), .ZN(n14) );
  INVD0BWP12T30P140 U55 ( .I(Mins[0]), .ZN(n53) );
  NR2D0BWP12T30P140 U56 ( .A1(n64), .A2(n53), .ZN(n51) );
  AOI21D0BWP12T30P140 U57 ( .A1(n64), .A2(n53), .B(n51), .ZN(n17) );
  INVD0BWP12T30P140 U58 ( .I(Hours[4]), .ZN(n46) );
  ND3D0BWP12T30P140 U59 ( .A1(Hours[1]), .A2(Hours[0]), .A3(Hours[2]), .ZN(n32) );
  INVD0BWP12T30P140 U60 ( .I(Hours[5]), .ZN(n33) );
  ND2D0BWP12T30P140 U61 ( .A1(Hours[4]), .A2(n33), .ZN(n30) );
  NR2D0BWP12T30P140 U62 ( .A1(n64), .A2(n29), .ZN(n31) );
  OAI31D0BWP12T30P140 U63 ( .A1(Hours[3]), .A2(n32), .A3(n30), .B(n31), .ZN(
        n62) );
  NR2D0BWP12T30P140 U64 ( .A1(n32), .A2(n62), .ZN(n67) );
  ND2D0BWP12T30P140 U65 ( .A1(Hours[3]), .A2(n67), .ZN(n45) );
  INVD0BWP12T30P140 U66 ( .I(n31), .ZN(n58) );
  NR2D0BWP12T30P140 U67 ( .A1(n32), .A2(n58), .ZN(n68) );
  OA211D0BWP12T30P140 U68 ( .A1(Hours[3]), .A2(n62), .B(Hours[4]), .C(n68), 
        .Z(n44) );
  OAI32D0BWP12T30P140 U69 ( .A1(Hours[5]), .A2(n46), .A3(n45), .B1(n44), .B2(
        n33), .ZN(n24) );
  AOI211D0BWP12T30P140 U70 ( .A1(n39), .A2(n34), .B(n66), .C(n35), .ZN(N42) );
  INVD0BWP12T30P140 U71 ( .I(Secs[5]), .ZN(n37) );
  INVD0BWP12T30P140 U72 ( .I(n38), .ZN(n36) );
  AOI221D0BWP12T30P140 U73 ( .A1(Secs[5]), .A2(n38), .B1(n37), .B2(n36), .C(
        n35), .ZN(N45) );
  INVD0BWP12T30P140 U74 ( .I(Secs[0]), .ZN(N40) );
  INVD0BWP12T30P140 U75 ( .I(Hours[0]), .ZN(n63) );
  NR2D0BWP12T30P140 U76 ( .A1(n63), .A2(n58), .ZN(n61) );
  AOI21D0BWP12T30P140 U77 ( .A1(n63), .A2(n58), .B(n61), .ZN(n23) );
  OA21D0BWP12T30P140 U78 ( .A1(Secs[0]), .A2(Secs[1]), .B(n39), .Z(N41) );
  INVD0BWP12T30P140 U79 ( .I(Mins[5]), .ZN(n40) );
  OAI32D0BWP12T30P140 U80 ( .A1(Mins[5]), .A2(n43), .A3(n42), .B1(n41), .B2(
        n40), .ZN(n13) );
  AOI21D0BWP12T30P140 U81 ( .A1(n46), .A2(n45), .B(n44), .ZN(n19) );
  INVD0BWP12T30P140 U82 ( .I(Mins[1]), .ZN(n50) );
  NR3D0BWP12T30P140 U83 ( .A1(n64), .A2(n50), .A3(n53), .ZN(n48) );
  OAI32D0BWP12T30P140 U84 ( .A1(Mins[2]), .A2(n49), .A3(n52), .B1(n48), .B2(
        n47), .ZN(n16) );
  OAI32D0BWP12T30P140 U85 ( .A1(Mins[1]), .A2(n53), .A3(n52), .B1(n51), .B2(
        n50), .ZN(n18) );
  OA21D0BWP12T30P140 U86 ( .A1(Mins[3]), .A2(n55), .B(n54), .Z(n15) );
  ND2D0BWP12T30P140 U87 ( .A1(Hours[1]), .A2(Hours[0]), .ZN(n59) );
  INVD0BWP12T30P140 U88 ( .I(Hours[1]), .ZN(n60) );
  NR3D0BWP12T30P140 U89 ( .A1(n60), .A2(n63), .A3(n58), .ZN(n57) );
  INVD0BWP12T30P140 U90 ( .I(Hours[2]), .ZN(n56) );
  OAI32D0BWP12T30P140 U91 ( .A1(Hours[2]), .A2(n59), .A3(n58), .B1(n57), .B2(
        n56), .ZN(n21) );
  OAI32D0BWP12T30P140 U92 ( .A1(Hours[1]), .A2(n63), .A3(n62), .B1(n61), .B2(
        n60), .ZN(n22) );
  OA211D0BWP12T30P140 U93 ( .A1(Secs[3]), .A2(n66), .B(n65), .C(n64), .Z(N43)
         );
  MAOI22D0BWP12T30P140 U94 ( .A1(Hours[3]), .A2(n68), .B1(n67), .B2(Hours[3]), 
        .ZN(n20) );
  INVD0BWP12T30P140 U95 ( .I(RST), .ZN(n12) );
endmodule

