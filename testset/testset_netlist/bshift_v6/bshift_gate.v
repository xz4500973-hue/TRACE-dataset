/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:18:11 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  INVD0BWP12T30P140 U34 ( .I(data[0]), .ZN(n26) );
  INVD0BWP12T30P140 U35 ( .I(shamt[1]), .ZN(n41) );
  NR2D0BWP12T30P140 U36 ( .A1(shamt[2]), .A2(shamt[0]), .ZN(n39) );
  ND2D0BWP12T30P140 U37 ( .A1(n41), .A2(n39), .ZN(n27) );
  NR2D0BWP12T30P140 U38 ( .A1(n26), .A2(n27), .ZN(out[0]) );
  INVD0BWP12T30P140 U39 ( .I(shamt[0]), .ZN(n30) );
  NR2D0BWP12T30P140 U40 ( .A1(shamt[2]), .A2(n30), .ZN(n40) );
  AOI22D0BWP12T30P140 U41 ( .A1(n40), .A2(data[3]), .B1(n39), .B2(data[4]), 
        .ZN(n42) );
  NR2D0BWP12T30P140 U42 ( .A1(shamt[1]), .A2(n30), .ZN(n33) );
  NR2D0BWP12T30P140 U43 ( .A1(shamt[1]), .A2(shamt[0]), .ZN(n45) );
  AOI22D0BWP12T30P140 U44 ( .A1(data[1]), .A2(n33), .B1(data[2]), .B2(n45), 
        .ZN(n25) );
  OAI31D0BWP12T30P140 U45 ( .A1(shamt[0]), .A2(n41), .A3(n26), .B(n25), .ZN(
        n47) );
  INVD0BWP12T30P140 U46 ( .I(n27), .ZN(n35) );
  AOI22D0BWP12T30P140 U47 ( .A1(shamt[2]), .A2(n47), .B1(data[6]), .B2(n35), 
        .ZN(n29) );
  ND3D0BWP12T30P140 U48 ( .A1(n41), .A2(data[5]), .A3(n40), .ZN(n28) );
  OAI211D0BWP12T30P140 U49 ( .A1(n42), .A2(n41), .B(n29), .C(n28), .ZN(out[6])
         );
  AOI22D0BWP12T30P140 U50 ( .A1(n40), .A2(data[4]), .B1(n39), .B2(data[5]), 
        .ZN(n38) );
  OAI22D0BWP12T30P140 U51 ( .A1(n30), .A2(data[0]), .B1(data[1]), .B2(shamt[0]), .ZN(n46) );
  IND2D1BWP12T30P140 U52 ( .A1(n46), .B1(shamt[2]), .ZN(n32) );
  AOI22D0BWP12T30P140 U53 ( .A1(n40), .A2(data[2]), .B1(n39), .B2(data[3]), 
        .ZN(n31) );
  AOI32D0BWP12T30P140 U54 ( .A1(n38), .A2(n41), .A3(n32), .B1(shamt[1]), .B2(
        n31), .ZN(out[5]) );
  AOI22D0BWP12T30P140 U55 ( .A1(data[2]), .A2(n33), .B1(data[3]), .B2(n45), 
        .ZN(n34) );
  OAI21D0BWP12T30P140 U56 ( .A1(n46), .A2(n41), .B(n34), .ZN(n48) );
  AOI22D0BWP12T30P140 U57 ( .A1(shamt[2]), .A2(n48), .B1(n35), .B2(data[7]), 
        .ZN(n37) );
  ND3D0BWP12T30P140 U58 ( .A1(n41), .A2(data[6]), .A3(n40), .ZN(n36) );
  OAI211D0BWP12T30P140 U59 ( .A1(n38), .A2(n41), .B(n37), .C(n36), .ZN(out[7])
         );
  AOI22D0BWP12T30P140 U60 ( .A1(n40), .A2(data[1]), .B1(n39), .B2(data[2]), 
        .ZN(n43) );
  AOI22D0BWP12T30P140 U61 ( .A1(shamt[1]), .A2(n43), .B1(n42), .B2(n41), .ZN(
        n44) );
  AO31D0BWP12T30P140 U62 ( .A1(shamt[2]), .A2(data[0]), .A3(n45), .B(n44), .Z(
        out[4]) );
  NR3D0BWP12T30P140 U63 ( .A1(shamt[1]), .A2(shamt[2]), .A3(n46), .ZN(out[1])
         );
  INR2D1BWP12T30P140 U64 ( .A1(n47), .B1(shamt[2]), .ZN(out[2]) );
  INR2D1BWP12T30P140 U65 ( .A1(n48), .B1(shamt[2]), .ZN(out[3]) );
endmodule

