/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:28:48 2026
/////////////////////////////////////////////////////////////


module calendar ( CLK, RST, Hours, Mins, Secs );
  output [5:0] Hours;
  output [5:0] Mins;
  output [5:0] Secs;
  input CLK, RST;
  wire   N12, N13, N14, N15, N16, N17, N28, N29, N30, N31, N32, N33, N47, N48,
         N49, N50, N51, N52, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50;

  DFCNQD1BWP12T30P140 Secs_reg_1_ ( .D(N13), .CP(CLK), .CDN(n11), .Q(Secs[1])
         );
  DFCNQD1BWP12T30P140 Secs_reg_4_ ( .D(N16), .CP(CLK), .CDN(n11), .Q(Secs[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_4_ ( .D(N32), .CP(CLK), .CDN(n11), .Q(Mins[4])
         );
  DFCNQD1BWP12T30P140 Mins_reg_1_ ( .D(N29), .CP(CLK), .CDN(n11), .Q(Mins[1])
         );
  DFCNQD1BWP12T30P140 Mins_reg_2_ ( .D(N30), .CP(CLK), .CDN(n11), .Q(Mins[2])
         );
  DFCNQD1BWP12T30P140 Secs_reg_2_ ( .D(N14), .CP(CLK), .CDN(n11), .Q(Secs[2])
         );
  DFCNQD1BWP12T30P140 Hours_reg_5_ ( .D(N52), .CP(CLK), .CDN(n11), .Q(Hours[5]) );
  DFCNQD1BWP12T30P140 Secs_reg_5_ ( .D(N17), .CP(CLK), .CDN(n11), .Q(Secs[5])
         );
  DFCNQD1BWP12T30P140 Secs_reg_3_ ( .D(N15), .CP(CLK), .CDN(n11), .Q(Secs[3])
         );
  DFCNQD1BWP12T30P140 Secs_reg_0_ ( .D(N12), .CP(CLK), .CDN(n11), .Q(Secs[0])
         );
  DFCNQD1BWP12T30P140 Hours_reg_0_ ( .D(N47), .CP(CLK), .CDN(n11), .Q(Hours[0]) );
  DFCNQD1BWP12T30P140 Mins_reg_0_ ( .D(N28), .CP(CLK), .CDN(n11), .Q(Mins[0])
         );
  DFCNQD1BWP12T30P140 Mins_reg_5_ ( .D(N33), .CP(CLK), .CDN(n11), .Q(Mins[5])
         );
  DFCNQD1BWP12T30P140 Hours_reg_3_ ( .D(N50), .CP(CLK), .CDN(n11), .Q(Hours[3]) );
  DFCNQD1BWP12T30P140 Hours_reg_2_ ( .D(N49), .CP(CLK), .CDN(n11), .Q(Hours[2]) );
  DFCNQD1BWP12T30P140 Hours_reg_4_ ( .D(N51), .CP(CLK), .CDN(n11), .Q(Hours[4]) );
  DFCNQD1BWP12T30P140 Mins_reg_3_ ( .D(N31), .CP(CLK), .CDN(n11), .Q(Mins[3])
         );
  DFCNQD1BWP12T30P140 Hours_reg_1_ ( .D(N48), .CP(CLK), .CDN(n11), .Q(Hours[1]) );
  INVD0BWP12T30P140 U32 ( .I(Secs[4]), .ZN(n13) );
  INVD0BWP12T30P140 U33 ( .I(Secs[2]), .ZN(n21) );
  ND2D0BWP12T30P140 U34 ( .A1(Secs[0]), .A2(Secs[1]), .ZN(n28) );
  NR2D0BWP12T30P140 U35 ( .A1(n21), .A2(n28), .ZN(n27) );
  ND2D0BWP12T30P140 U36 ( .A1(Secs[3]), .A2(n27), .ZN(n26) );
  NR2D0BWP12T30P140 U37 ( .A1(n13), .A2(n26), .ZN(n25) );
  ND3D0BWP12T30P140 U38 ( .A1(Secs[3]), .A2(Secs[4]), .A3(Secs[5]), .ZN(n12)
         );
  NR3D0BWP12T30P140 U39 ( .A1(Secs[2]), .A2(n28), .A3(n12), .ZN(n31) );
  AOI211D0BWP12T30P140 U40 ( .A1(n13), .A2(n26), .B(n25), .C(n31), .ZN(N16) );
  INVD0BWP12T30P140 U41 ( .I(Mins[4]), .ZN(n35) );
  INVD0BWP12T30P140 U42 ( .I(Mins[0]), .ZN(n30) );
  INVD0BWP12T30P140 U43 ( .I(Mins[1]), .ZN(n16) );
  INVD0BWP12T30P140 U44 ( .I(Mins[2]), .ZN(n17) );
  NR3D0BWP12T30P140 U45 ( .A1(n30), .A2(n16), .A3(n17), .ZN(n15) );
  INVD0BWP12T30P140 U46 ( .I(n31), .ZN(n29) );
  NR3D0BWP12T30P140 U47 ( .A1(n29), .A2(n30), .A3(n16), .ZN(n18) );
  AN2D0BWP12T30P140 U48 ( .A1(n18), .A2(n17), .Z(n14) );
  ND4D0BWP12T30P140 U49 ( .A1(Mins[5]), .A2(Mins[4]), .A3(Mins[3]), .A4(n14), 
        .ZN(n46) );
  ND2D0BWP12T30P140 U50 ( .A1(n31), .A2(n46), .ZN(n19) );
  INR2D1BWP12T30P140 U51 ( .A1(n15), .B1(n19), .ZN(n42) );
  ND2D0BWP12T30P140 U52 ( .A1(Mins[3]), .A2(n42), .ZN(n34) );
  OAI211D0BWP12T30P140 U53 ( .A1(n15), .A2(n19), .B(Mins[3]), .C(n31), .ZN(n41) );
  NR2D0BWP12T30P140 U54 ( .A1(n35), .A2(n41), .ZN(n33) );
  AOI21D0BWP12T30P140 U55 ( .A1(n35), .A2(n34), .B(n33), .ZN(N32) );
  AOI221D0BWP12T30P140 U56 ( .A1(n30), .A2(n16), .B1(n19), .B2(n16), .C(n18), 
        .ZN(N29) );
  ND2D0BWP12T30P140 U57 ( .A1(Mins[0]), .A2(Mins[1]), .ZN(n20) );
  OAI32D0BWP12T30P140 U58 ( .A1(Mins[2]), .A2(n20), .A3(n19), .B1(n18), .B2(
        n17), .ZN(N30) );
  AOI211D0BWP12T30P140 U59 ( .A1(n21), .A2(n28), .B(n27), .C(n31), .ZN(N14) );
  ND3D0BWP12T30P140 U60 ( .A1(Hours[1]), .A2(Hours[0]), .A3(Hours[2]), .ZN(n40) );
  INVD0BWP12T30P140 U61 ( .I(n40), .ZN(n22) );
  INR2D1BWP12T30P140 U62 ( .A1(Hours[4]), .B1(Hours[5]), .ZN(n23) );
  AO21D0BWP12T30P140 U63 ( .A1(n22), .A2(n23), .B(n46), .Z(n49) );
  NR2D0BWP12T30P140 U64 ( .A1(n46), .A2(n40), .ZN(n39) );
  OAI211D0BWP12T30P140 U65 ( .A1(Hours[3]), .A2(n49), .B(Hours[4]), .C(n39), 
        .ZN(n36) );
  INVD0BWP12T30P140 U66 ( .I(Hours[3]), .ZN(n38) );
  NR3D0BWP12T30P140 U67 ( .A1(n46), .A2(n38), .A3(n40), .ZN(n37) );
  AO22D0BWP12T30P140 U68 ( .A1(Hours[5]), .A2(n36), .B1(n23), .B2(n37), .Z(N52) );
  NR2D0BWP12T30P140 U69 ( .A1(Secs[5]), .A2(n25), .ZN(n24) );
  AOI211D0BWP12T30P140 U70 ( .A1(Secs[5]), .A2(n25), .B(n31), .C(n24), .ZN(N17) );
  OA211D0BWP12T30P140 U71 ( .A1(Secs[3]), .A2(n27), .B(n26), .C(n29), .Z(N15)
         );
  OA21D0BWP12T30P140 U72 ( .A1(Secs[0]), .A2(Secs[1]), .B(n28), .Z(N13) );
  INVD0BWP12T30P140 U73 ( .I(Hours[0]), .ZN(n50) );
  NR2D0BWP12T30P140 U74 ( .A1(n46), .A2(n50), .ZN(n48) );
  AOI21D0BWP12T30P140 U75 ( .A1(n46), .A2(n50), .B(n48), .ZN(N47) );
  AOI22D0BWP12T30P140 U76 ( .A1(n31), .A2(Mins[0]), .B1(n30), .B2(n29), .ZN(
        N28) );
  INVD0BWP12T30P140 U77 ( .I(Secs[0]), .ZN(N12) );
  INVD0BWP12T30P140 U78 ( .I(Mins[5]), .ZN(n32) );
  OAI32D0BWP12T30P140 U79 ( .A1(Mins[5]), .A2(n35), .A3(n34), .B1(n33), .B2(
        n32), .ZN(N33) );
  OA21D0BWP12T30P140 U80 ( .A1(Hours[4]), .A2(n37), .B(n36), .Z(N51) );
  OAI32D0BWP12T30P140 U81 ( .A1(Hours[3]), .A2(n40), .A3(n49), .B1(n39), .B2(
        n38), .ZN(N50) );
  OA21D0BWP12T30P140 U82 ( .A1(Mins[3]), .A2(n42), .B(n41), .Z(N31) );
  ND2D0BWP12T30P140 U83 ( .A1(Hours[1]), .A2(Hours[0]), .ZN(n45) );
  INVD0BWP12T30P140 U84 ( .I(Hours[1]), .ZN(n47) );
  NR3D0BWP12T30P140 U85 ( .A1(n46), .A2(n47), .A3(n50), .ZN(n44) );
  INVD0BWP12T30P140 U86 ( .I(Hours[2]), .ZN(n43) );
  OAI32D0BWP12T30P140 U87 ( .A1(Hours[2]), .A2(n46), .A3(n45), .B1(n44), .B2(
        n43), .ZN(N49) );
  OAI32D0BWP12T30P140 U88 ( .A1(Hours[1]), .A2(n50), .A3(n49), .B1(n48), .B2(
        n47), .ZN(N48) );
  INVD0BWP12T30P140 U89 ( .I(RST), .ZN(n11) );
endmodule

