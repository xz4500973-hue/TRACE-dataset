/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:15:09 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61;

  INVD0BWP12T30P140 U41 ( .I(data[0]), .ZN(n60) );
  INVD0BWP12T30P140 U42 ( .I(shamt[1]), .ZN(n46) );
  INVD0BWP12T30P140 U43 ( .I(shamt[2]), .ZN(n47) );
  INVD0BWP12T30P140 U44 ( .I(shamt[0]), .ZN(n34) );
  ND3D0BWP12T30P140 U45 ( .A1(n46), .A2(n47), .A3(n34), .ZN(n41) );
  NR2D0BWP12T30P140 U46 ( .A1(n60), .A2(n41), .ZN(out[0]) );
  NR3D0BWP12T30P140 U47 ( .A1(shamt[1]), .A2(n47), .A3(n34), .ZN(n50) );
  ND3D0BWP12T30P140 U48 ( .A1(n46), .A2(n47), .A3(shamt[0]), .ZN(n43) );
  INVD0BWP12T30P140 U49 ( .I(n43), .ZN(n55) );
  AOI22D0BWP12T30P140 U50 ( .A1(data[0]), .A2(n50), .B1(n55), .B2(data[4]), 
        .ZN(n33) );
  NR3D0BWP12T30P140 U51 ( .A1(shamt[2]), .A2(n46), .A3(n34), .ZN(n57) );
  INVD0BWP12T30P140 U52 ( .I(n41), .ZN(n56) );
  AOI22D0BWP12T30P140 U53 ( .A1(data[2]), .A2(n57), .B1(n56), .B2(data[5]), 
        .ZN(n32) );
  NR3D0BWP12T30P140 U54 ( .A1(shamt[2]), .A2(shamt[0]), .A3(n46), .ZN(n54) );
  ND3D0BWP12T30P140 U55 ( .A1(n46), .A2(n34), .A3(shamt[2]), .ZN(n61) );
  INVD0BWP12T30P140 U56 ( .I(n61), .ZN(n36) );
  AOI22D0BWP12T30P140 U57 ( .A1(data[3]), .A2(n54), .B1(n36), .B2(data[1]), 
        .ZN(n31) );
  ND3D0BWP12T30P140 U58 ( .A1(n33), .A2(n32), .A3(n31), .ZN(out[5]) );
  INVD0BWP12T30P140 U59 ( .I(data[1]), .ZN(n42) );
  AOI221D0BWP12T30P140 U60 ( .A1(shamt[0]), .A2(n60), .B1(n34), .B2(n42), .C(
        n46), .ZN(n35) );
  AOI22D0BWP12T30P140 U61 ( .A1(shamt[2]), .A2(n35), .B1(data[2]), .B2(n50), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U62 ( .A1(n55), .A2(data[6]), .B1(n56), .B2(data[7]), 
        .ZN(n39) );
  AOI22D0BWP12T30P140 U63 ( .A1(n57), .A2(data[4]), .B1(n54), .B2(data[5]), 
        .ZN(n38) );
  ND2D0BWP12T30P140 U64 ( .A1(data[3]), .A2(n36), .ZN(n37) );
  ND4D0BWP12T30P140 U65 ( .A1(n40), .A2(n39), .A3(n38), .A4(n37), .ZN(out[7])
         );
  AO222D0BWP12T30P140 U66 ( .A1(n56), .A2(data[2]), .B1(n54), .B2(data[0]), 
        .C1(n55), .C2(data[1]), .Z(out[2]) );
  OAI22D0BWP12T30P140 U67 ( .A1(n60), .A2(n43), .B1(n42), .B2(n41), .ZN(out[1]) );
  AOI22D0BWP12T30P140 U68 ( .A1(data[0]), .A2(n57), .B1(data[1]), .B2(n54), 
        .ZN(n45) );
  AOI22D0BWP12T30P140 U69 ( .A1(data[3]), .A2(n56), .B1(data[2]), .B2(n55), 
        .ZN(n44) );
  ND2D0BWP12T30P140 U70 ( .A1(n45), .A2(n44), .ZN(out[3]) );
  INVD0BWP12T30P140 U71 ( .I(data[2]), .ZN(n53) );
  AOI22D0BWP12T30P140 U72 ( .A1(n55), .A2(data[5]), .B1(data[6]), .B2(n56), 
        .ZN(n52) );
  NR4D0BWP12T30P140 U73 ( .A1(shamt[0]), .A2(n47), .A3(n46), .A4(n60), .ZN(n49) );
  AO22D0BWP12T30P140 U74 ( .A1(data[3]), .A2(n57), .B1(data[4]), .B2(n54), .Z(
        n48) );
  AOI211D0BWP12T30P140 U75 ( .A1(n50), .A2(data[1]), .B(n49), .C(n48), .ZN(n51) );
  OAI211D0BWP12T30P140 U76 ( .A1(n61), .A2(n53), .B(n52), .C(n51), .ZN(out[6])
         );
  AOI22D0BWP12T30P140 U77 ( .A1(data[3]), .A2(n55), .B1(data[2]), .B2(n54), 
        .ZN(n59) );
  AOI22D0BWP12T30P140 U78 ( .A1(data[1]), .A2(n57), .B1(n56), .B2(data[4]), 
        .ZN(n58) );
  OAI211D0BWP12T30P140 U79 ( .A1(n61), .A2(n60), .B(n59), .C(n58), .ZN(out[4])
         );
endmodule

