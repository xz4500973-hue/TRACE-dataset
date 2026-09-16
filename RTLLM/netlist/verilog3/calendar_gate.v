/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:16:19 2026
/////////////////////////////////////////////////////////////


module calendar ( CLK, RST, Hours, Mins, Secs );
  output [5:0] Hours;
  output [5:0] Mins;
  output [5:0] Secs;
  input CLK, RST;
  wire   N12, N13, N14, N15, N16, N17, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63;

  DFCNQD1BWP12T30P140 Secs_reg_2_ ( .D(N14), .CP(CLK), .CDN(n11), .Q(Secs[2])
         );
  DFCNQD1BWP12T30P140 Secs_reg_1_ ( .D(N13), .CP(CLK), .CDN(n11), .Q(Secs[1])
         );
  DFCNQD1BWP12T30P140 Mins_reg_4_ ( .D(n23), .CP(CLK), .CDN(n11), .Q(Mins[4])
         );
  DFCNQD1BWP12T30P140 Secs_reg_4_ ( .D(N16), .CP(CLK), .CDN(n11), .Q(Secs[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_0_ ( .D(n22), .CP(CLK), .CDN(n11), .Q(Mins[0])
         );
  DFCNQD1BWP12T30P140 Hours_reg_5_ ( .D(n12), .CP(CLK), .CDN(n11), .Q(Hours[5]) );
  DFCNQD1BWP12T30P140 Secs_reg_5_ ( .D(N17), .CP(CLK), .CDN(n11), .Q(Secs[5])
         );
  DFCNQD1BWP12T30P140 Mins_reg_5_ ( .D(n18), .CP(CLK), .CDN(n11), .Q(Mins[5])
         );
  DFCNQD1BWP12T30P140 Secs_reg_0_ ( .D(N12), .CP(CLK), .CDN(n11), .Q(Secs[0])
         );
  DFCNQD1BWP12T30P140 Secs_reg_3_ ( .D(N15), .CP(CLK), .CDN(n11), .Q(Secs[3])
         );
  DFCNQD1BWP12T30P140 Hours_reg_0_ ( .D(n17), .CP(CLK), .CDN(n11), .Q(Hours[0]) );
  DFCNQD1BWP12T30P140 Mins_reg_2_ ( .D(n20), .CP(CLK), .CDN(n11), .Q(Mins[2])
         );
  DFCNQD1BWP12T30P140 Hours_reg_3_ ( .D(n14), .CP(CLK), .CDN(n11), .Q(Hours[3]) );
  DFCNQD1BWP12T30P140 Mins_reg_1_ ( .D(n21), .CP(CLK), .CDN(n11), .Q(Mins[1])
         );
  DFCNQD1BWP12T30P140 Hours_reg_2_ ( .D(n15), .CP(CLK), .CDN(n11), .Q(Hours[2]) );
  DFCNQD1BWP12T30P140 Hours_reg_4_ ( .D(n13), .CP(CLK), .CDN(n11), .Q(Hours[4]) );
  DFCNQD1BWP12T30P140 Hours_reg_1_ ( .D(n16), .CP(CLK), .CDN(n11), .Q(Hours[1]) );
  DFCNQD1BWP12T30P140 Mins_reg_3_ ( .D(n19), .CP(CLK), .CDN(n11), .Q(Mins[3])
         );
  ND2D0BWP12T30P140 U32 ( .A1(Secs[0]), .A2(Secs[1]), .ZN(n38) );
  OA21D0BWP12T30P140 U33 ( .A1(Secs[0]), .A2(Secs[1]), .B(n38), .Z(N13) );
  INVD0BWP12T30P140 U34 ( .I(Mins[4]), .ZN(n35) );
  INVD0BWP12T30P140 U35 ( .I(Mins[1]), .ZN(n50) );
  INVD0BWP12T30P140 U36 ( .I(Mins[0]), .ZN(n52) );
  INVD0BWP12T30P140 U37 ( .I(Mins[2]), .ZN(n39) );
  NR3D0BWP12T30P140 U38 ( .A1(n50), .A2(n52), .A3(n39), .ZN(n26) );
  INVD0BWP12T30P140 U39 ( .I(Secs[2]), .ZN(n37) );
  ND4D0BWP12T30P140 U40 ( .A1(Secs[4]), .A2(Secs[5]), .A3(Secs[3]), .A4(n37), 
        .ZN(n24) );
  NR2D0BWP12T30P140 U41 ( .A1(n38), .A2(n24), .ZN(n36) );
  INVD0BWP12T30P140 U42 ( .I(n36), .ZN(n53) );
  ND2D0BWP12T30P140 U43 ( .A1(Mins[1]), .A2(Mins[0]), .ZN(n42) );
  INR4D0BWP12T30P140 U44 ( .A1(Mins[3]), .B1(Mins[2]), .B2(n53), .B3(n42), 
        .ZN(n25) );
  ND3D0BWP12T30P140 U45 ( .A1(Mins[5]), .A2(Mins[4]), .A3(n25), .ZN(n61) );
  ND2D0BWP12T30P140 U46 ( .A1(n36), .A2(n61), .ZN(n41) );
  INR2D1BWP12T30P140 U47 ( .A1(n26), .B1(n41), .ZN(n63) );
  ND2D0BWP12T30P140 U48 ( .A1(Mins[3]), .A2(n63), .ZN(n34) );
  OAI211D0BWP12T30P140 U49 ( .A1(n26), .A2(n41), .B(Mins[3]), .C(n36), .ZN(n62) );
  NR2D0BWP12T30P140 U50 ( .A1(n35), .A2(n62), .ZN(n33) );
  AOI21D0BWP12T30P140 U51 ( .A1(n35), .A2(n34), .B(n33), .ZN(n23) );
  INVD0BWP12T30P140 U52 ( .I(Secs[4]), .ZN(n27) );
  NR2D0BWP12T30P140 U53 ( .A1(n38), .A2(n37), .ZN(n44) );
  ND2D0BWP12T30P140 U54 ( .A1(Secs[3]), .A2(n44), .ZN(n43) );
  NR2D0BWP12T30P140 U55 ( .A1(n27), .A2(n43), .ZN(n31) );
  AOI211D0BWP12T30P140 U56 ( .A1(n27), .A2(n43), .B(n31), .C(n36), .ZN(N16) );
  NR2D0BWP12T30P140 U57 ( .A1(n53), .A2(n52), .ZN(n51) );
  AOI21D0BWP12T30P140 U58 ( .A1(n53), .A2(n52), .B(n51), .ZN(n22) );
  ND3D0BWP12T30P140 U59 ( .A1(Hours[1]), .A2(Hours[0]), .A3(Hours[2]), .ZN(n47) );
  INVD0BWP12T30P140 U60 ( .I(n47), .ZN(n28) );
  INR2D1BWP12T30P140 U61 ( .A1(Hours[4]), .B1(Hours[5]), .ZN(n29) );
  AO21D0BWP12T30P140 U62 ( .A1(n28), .A2(n29), .B(n61), .Z(n55) );
  NR2D0BWP12T30P140 U63 ( .A1(n61), .A2(n47), .ZN(n46) );
  OAI211D0BWP12T30P140 U64 ( .A1(Hours[3]), .A2(n55), .B(Hours[4]), .C(n46), 
        .ZN(n48) );
  INVD0BWP12T30P140 U65 ( .I(Hours[3]), .ZN(n45) );
  NR3D0BWP12T30P140 U66 ( .A1(n61), .A2(n45), .A3(n47), .ZN(n49) );
  AO22D0BWP12T30P140 U67 ( .A1(Hours[5]), .A2(n48), .B1(n29), .B2(n49), .Z(n12) );
  OAI21D0BWP12T30P140 U68 ( .A1(Secs[5]), .A2(n31), .B(n53), .ZN(n30) );
  AOI21D0BWP12T30P140 U69 ( .A1(Secs[5]), .A2(n31), .B(n30), .ZN(N17) );
  INVD0BWP12T30P140 U70 ( .I(Mins[5]), .ZN(n32) );
  OAI32D0BWP12T30P140 U71 ( .A1(Mins[5]), .A2(n35), .A3(n34), .B1(n33), .B2(
        n32), .ZN(n18) );
  INVD0BWP12T30P140 U72 ( .I(Secs[0]), .ZN(N12) );
  AOI211D0BWP12T30P140 U73 ( .A1(n38), .A2(n37), .B(n44), .C(n36), .ZN(N14) );
  INVD0BWP12T30P140 U74 ( .I(Hours[0]), .ZN(n56) );
  NR2D0BWP12T30P140 U75 ( .A1(n61), .A2(n56), .ZN(n54) );
  AOI21D0BWP12T30P140 U76 ( .A1(n61), .A2(n56), .B(n54), .ZN(n17) );
  NR3D0BWP12T30P140 U77 ( .A1(n53), .A2(n50), .A3(n52), .ZN(n40) );
  OAI32D0BWP12T30P140 U78 ( .A1(Mins[2]), .A2(n42), .A3(n41), .B1(n40), .B2(
        n39), .ZN(n20) );
  OA211D0BWP12T30P140 U79 ( .A1(Secs[3]), .A2(n44), .B(n43), .C(n53), .Z(N15)
         );
  OAI32D0BWP12T30P140 U80 ( .A1(Hours[3]), .A2(n47), .A3(n55), .B1(n46), .B2(
        n45), .ZN(n14) );
  OA21D0BWP12T30P140 U81 ( .A1(Hours[4]), .A2(n49), .B(n48), .Z(n13) );
  OAI32D0BWP12T30P140 U82 ( .A1(Mins[1]), .A2(n53), .A3(n52), .B1(n51), .B2(
        n50), .ZN(n21) );
  INVD0BWP12T30P140 U83 ( .I(Hours[1]), .ZN(n57) );
  OAI32D0BWP12T30P140 U84 ( .A1(Hours[1]), .A2(n56), .A3(n55), .B1(n54), .B2(
        n57), .ZN(n16) );
  ND2D0BWP12T30P140 U85 ( .A1(Hours[1]), .A2(Hours[0]), .ZN(n60) );
  NR3D0BWP12T30P140 U86 ( .A1(n61), .A2(n57), .A3(n56), .ZN(n59) );
  INVD0BWP12T30P140 U87 ( .I(Hours[2]), .ZN(n58) );
  OAI32D0BWP12T30P140 U88 ( .A1(Hours[2]), .A2(n61), .A3(n60), .B1(n59), .B2(
        n58), .ZN(n15) );
  OA21D0BWP12T30P140 U89 ( .A1(Mins[3]), .A2(n63), .B(n62), .Z(n19) );
  INVD0BWP12T30P140 U90 ( .I(RST), .ZN(n11) );
endmodule

