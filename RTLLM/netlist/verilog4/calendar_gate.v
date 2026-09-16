/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:39:00 2026
/////////////////////////////////////////////////////////////


module calendar ( CLK, RST, Hours, Mins, Secs );
  output [5:0] Hours;
  output [5:0] Mins;
  output [5:0] Secs;
  input CLK, RST;
  wire   N16, N17, N18, N19, N20, N21, N36, N37, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [1:0] roll;

  DFCNQD1BWP12T30P140 Hours_reg_5_ ( .D(n14), .CP(CLK), .CDN(n13), .Q(Hours[5]) );
  DFCNQD1BWP12T30P140 Secs_reg_1_ ( .D(N17), .CP(CLK), .CDN(n13), .Q(Secs[1])
         );
  DFCNQD1BWP12T30P140 Secs_reg_2_ ( .D(N18), .CP(CLK), .CDN(n13), .Q(Secs[2])
         );
  DFCNQD1BWP12T30P140 Secs_reg_4_ ( .D(N20), .CP(CLK), .CDN(n13), .Q(Secs[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_4_ ( .D(n21), .CP(CLK), .CDN(n13), .Q(Mins[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_0_ ( .D(n24), .CP(CLK), .CDN(n13), .Q(Mins[0])
         );
  DFCNQD1BWP12T30P140 roll_reg_0_ ( .D(N36), .CP(CLK), .CDN(n13), .Q(roll[0])
         );
  DFCNQD1BWP12T30P140 roll_reg_1_ ( .D(N37), .CP(CLK), .CDN(n13), .Q(roll[1])
         );
  DFCNQD1BWP12T30P140 Secs_reg_5_ ( .D(N21), .CP(CLK), .CDN(n13), .Q(Secs[5])
         );
  DFCNQD1BWP12T30P140 Secs_reg_3_ ( .D(N19), .CP(CLK), .CDN(n13), .Q(Secs[3])
         );
  DFCNQD1BWP12T30P140 Secs_reg_0_ ( .D(N16), .CP(CLK), .CDN(n13), .Q(Secs[0])
         );
  DFCNQD1BWP12T30P140 Hours_reg_0_ ( .D(n18), .CP(CLK), .CDN(n13), .Q(Hours[0]) );
  DFCNQD1BWP12T30P140 Mins_reg_2_ ( .D(n23), .CP(CLK), .CDN(n13), .Q(Mins[2])
         );
  DFCNQD1BWP12T30P140 Mins_reg_5_ ( .D(n20), .CP(CLK), .CDN(n13), .Q(Mins[5])
         );
  DFCNQD1BWP12T30P140 Mins_reg_1_ ( .D(n25), .CP(CLK), .CDN(n13), .Q(Mins[1])
         );
  DFCNQD1BWP12T30P140 Hours_reg_4_ ( .D(n15), .CP(CLK), .CDN(n13), .Q(Hours[4]) );
  DFCNQD1BWP12T30P140 Hours_reg_2_ ( .D(n17), .CP(CLK), .CDN(n13), .Q(Hours[2]) );
  DFCNQD1BWP12T30P140 Mins_reg_3_ ( .D(n22), .CP(CLK), .CDN(n13), .Q(Mins[3])
         );
  DFCNQD1BWP12T30P140 Hours_reg_1_ ( .D(n19), .CP(CLK), .CDN(n13), .Q(Hours[1]) );
  DFCNQD1BWP12T30P140 Hours_reg_3_ ( .D(n16), .CP(CLK), .CDN(n13), .Q(Hours[3]) );
  ND3D0BWP12T30P140 U36 ( .A1(Hours[1]), .A2(Hours[0]), .A3(Hours[2]), .ZN(n27) );
  INVD0BWP12T30P140 U37 ( .I(Hours[5]), .ZN(n29) );
  ND2D0BWP12T30P140 U38 ( .A1(Hours[4]), .A2(n29), .ZN(n28) );
  IND2D1BWP12T30P140 U39 ( .A1(roll[0]), .B1(roll[1]), .ZN(n66) );
  INVD0BWP12T30P140 U40 ( .I(n66), .ZN(n26) );
  OAI31D0BWP12T30P140 U41 ( .A1(Hours[3]), .A2(n27), .A3(n28), .B(n26), .ZN(
        n36) );
  NR2D0BWP12T30P140 U42 ( .A1(n27), .A2(n66), .ZN(n31) );
  OA211D0BWP12T30P140 U43 ( .A1(Hours[3]), .A2(n36), .B(Hours[4]), .C(n31), 
        .Z(n46) );
  NR2D0BWP12T30P140 U44 ( .A1(n27), .A2(n36), .ZN(n30) );
  ND2D0BWP12T30P140 U45 ( .A1(Hours[3]), .A2(n30), .ZN(n47) );
  OAI22D0BWP12T30P140 U46 ( .A1(n46), .A2(n29), .B1(n28), .B2(n47), .ZN(n14)
         );
  MAOI22D0BWP12T30P140 U47 ( .A1(Hours[3]), .A2(n31), .B1(n30), .B2(Hours[3]), 
        .ZN(n16) );
  INVD0BWP12T30P140 U48 ( .I(Mins[4]), .ZN(n57) );
  INR2D1BWP12T30P140 U49 ( .A1(roll[0]), .B1(roll[1]), .ZN(n33) );
  INVD0BWP12T30P140 U50 ( .I(n33), .ZN(n70) );
  ND2D0BWP12T30P140 U51 ( .A1(Mins[1]), .A2(Mins[0]), .ZN(n39) );
  INVD0BWP12T30P140 U52 ( .I(Mins[2]), .ZN(n37) );
  NR3D0BWP12T30P140 U53 ( .A1(n70), .A2(n39), .A3(n37), .ZN(n41) );
  ND2D0BWP12T30P140 U54 ( .A1(Mins[3]), .A2(n41), .ZN(n56) );
  INVD0BWP12T30P140 U55 ( .I(Mins[1]), .ZN(n52) );
  INVD0BWP12T30P140 U56 ( .I(Mins[0]), .ZN(n69) );
  NR3D0BWP12T30P140 U57 ( .A1(n52), .A2(n69), .A3(n37), .ZN(n34) );
  NR2D0BWP12T30P140 U58 ( .A1(Mins[2]), .A2(n39), .ZN(n32) );
  ND4D0BWP12T30P140 U59 ( .A1(Mins[5]), .A2(Mins[4]), .A3(Mins[3]), .A4(n32), 
        .ZN(n61) );
  ND2D0BWP12T30P140 U60 ( .A1(n33), .A2(n61), .ZN(n53) );
  OAI211D0BWP12T30P140 U61 ( .A1(n34), .A2(n53), .B(n33), .C(Mins[3]), .ZN(n40) );
  NR2D0BWP12T30P140 U62 ( .A1(n57), .A2(n40), .ZN(n55) );
  INVD0BWP12T30P140 U63 ( .I(Mins[5]), .ZN(n35) );
  OAI32D0BWP12T30P140 U64 ( .A1(Mins[5]), .A2(n57), .A3(n56), .B1(n55), .B2(
        n35), .ZN(n20) );
  INVD0BWP12T30P140 U65 ( .I(Hours[0]), .ZN(n67) );
  NR2D0BWP12T30P140 U66 ( .A1(n67), .A2(n66), .ZN(n65) );
  INVD0BWP12T30P140 U67 ( .I(Hours[1]), .ZN(n42) );
  OAI32D0BWP12T30P140 U68 ( .A1(Hours[1]), .A2(n67), .A3(n36), .B1(n65), .B2(
        n42), .ZN(n19) );
  NR3D0BWP12T30P140 U69 ( .A1(n70), .A2(n52), .A3(n69), .ZN(n38) );
  OAI32D0BWP12T30P140 U70 ( .A1(Mins[2]), .A2(n39), .A3(n53), .B1(n38), .B2(
        n37), .ZN(n23) );
  OA21D0BWP12T30P140 U71 ( .A1(Mins[3]), .A2(n41), .B(n40), .Z(n22) );
  ND2D0BWP12T30P140 U72 ( .A1(Secs[0]), .A2(Secs[1]), .ZN(n50) );
  OA21D0BWP12T30P140 U73 ( .A1(Secs[0]), .A2(Secs[1]), .B(n50), .Z(N17) );
  ND2D0BWP12T30P140 U74 ( .A1(Hours[1]), .A2(Hours[0]), .ZN(n45) );
  NR3D0BWP12T30P140 U75 ( .A1(n42), .A2(n67), .A3(n66), .ZN(n44) );
  INVD0BWP12T30P140 U76 ( .I(Hours[2]), .ZN(n43) );
  OAI32D0BWP12T30P140 U77 ( .A1(Hours[2]), .A2(n45), .A3(n66), .B1(n44), .B2(
        n43), .ZN(n17) );
  INVD0BWP12T30P140 U78 ( .I(Secs[0]), .ZN(N16) );
  INVD0BWP12T30P140 U79 ( .I(Hours[4]), .ZN(n48) );
  AOI21D0BWP12T30P140 U80 ( .A1(n48), .A2(n47), .B(n46), .ZN(n15) );
  INVD0BWP12T30P140 U81 ( .I(Secs[2]), .ZN(n51) );
  NR2D0BWP12T30P140 U82 ( .A1(n51), .A2(n50), .ZN(n64) );
  NR2D0BWP12T30P140 U83 ( .A1(Secs[2]), .A2(n50), .ZN(n49) );
  ND4D0BWP12T30P140 U84 ( .A1(Secs[3]), .A2(Secs[4]), .A3(Secs[5]), .A4(n49), 
        .ZN(n62) );
  INVD0BWP12T30P140 U85 ( .I(n62), .ZN(n58) );
  AOI211D0BWP12T30P140 U86 ( .A1(n51), .A2(n50), .B(n64), .C(n58), .ZN(N18) );
  NR2D0BWP12T30P140 U87 ( .A1(n70), .A2(n69), .ZN(n68) );
  OAI32D0BWP12T30P140 U88 ( .A1(Mins[1]), .A2(n69), .A3(n53), .B1(n68), .B2(
        n52), .ZN(n25) );
  INVD0BWP12T30P140 U89 ( .I(Secs[4]), .ZN(n60) );
  ND2D0BWP12T30P140 U90 ( .A1(Secs[3]), .A2(n64), .ZN(n63) );
  NR2D0BWP12T30P140 U91 ( .A1(n60), .A2(n63), .ZN(n59) );
  OAI21D0BWP12T30P140 U92 ( .A1(Secs[5]), .A2(n59), .B(n62), .ZN(n54) );
  AOI21D0BWP12T30P140 U93 ( .A1(Secs[5]), .A2(n59), .B(n54), .ZN(N21) );
  AOI21D0BWP12T30P140 U94 ( .A1(n57), .A2(n56), .B(n55), .ZN(n21) );
  AOI211D0BWP12T30P140 U95 ( .A1(n60), .A2(n63), .B(n59), .C(n58), .ZN(N20) );
  NR2D0BWP12T30P140 U96 ( .A1(n70), .A2(n61), .ZN(N37) );
  NR2D0BWP12T30P140 U97 ( .A1(N37), .A2(n62), .ZN(N36) );
  OA211D0BWP12T30P140 U98 ( .A1(Secs[3]), .A2(n64), .B(n63), .C(n62), .Z(N19)
         );
  AOI21D0BWP12T30P140 U99 ( .A1(n67), .A2(n66), .B(n65), .ZN(n18) );
  AOI21D0BWP12T30P140 U100 ( .A1(n70), .A2(n69), .B(n68), .ZN(n24) );
  INVD0BWP12T30P140 U101 ( .I(RST), .ZN(n13) );
endmodule

