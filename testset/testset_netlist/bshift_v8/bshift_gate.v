/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:19:23 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  INVD0BWP12T30P140 U36 ( .I(shamt[2]), .ZN(n27) );
  INVD0BWP12T30P140 U37 ( .I(shamt[1]), .ZN(n26) );
  ND2D0BWP12T30P140 U38 ( .A1(n27), .A2(n26), .ZN(n42) );
  NR2D0BWP12T30P140 U39 ( .A1(shamt[0]), .A2(n42), .ZN(n35) );
  INVD0BWP12T30P140 U40 ( .I(n35), .ZN(n48) );
  INVD0BWP12T30P140 U41 ( .I(data[0]), .ZN(n45) );
  NR2D0BWP12T30P140 U42 ( .A1(n48), .A2(n45), .ZN(out[0]) );
  INVD0BWP12T30P140 U43 ( .I(shamt[0]), .ZN(n32) );
  NR3D0BWP12T30P140 U44 ( .A1(shamt[1]), .A2(n27), .A3(n32), .ZN(n60) );
  NR2D0BWP12T30P140 U45 ( .A1(n32), .A2(n42), .ZN(n43) );
  INVD0BWP12T30P140 U46 ( .I(n43), .ZN(n55) );
  INVD0BWP12T30P140 U47 ( .I(data[3]), .ZN(n47) );
  AOI22D0BWP12T30P140 U48 ( .A1(shamt[2]), .A2(data[0]), .B1(n35), .B2(data[4]), .ZN(n29) );
  NR3D0BWP12T30P140 U49 ( .A1(shamt[0]), .A2(shamt[2]), .A3(n26), .ZN(n52) );
  OAI21D0BWP12T30P140 U50 ( .A1(n32), .A2(n26), .B(n27), .ZN(n44) );
  ND2D0BWP12T30P140 U51 ( .A1(n27), .A2(n44), .ZN(n49) );
  INVD0BWP12T30P140 U52 ( .I(data[1]), .ZN(n46) );
  MAOI22D0BWP12T30P140 U53 ( .A1(data[2]), .A2(n52), .B1(n49), .B2(n46), .ZN(
        n28) );
  OAI211D0BWP12T30P140 U54 ( .A1(n55), .A2(n47), .B(n29), .C(n28), .ZN(n56) );
  INVD0BWP12T30P140 U55 ( .I(data[2]), .ZN(n54) );
  AOI22D0BWP12T30P140 U56 ( .A1(shamt[2]), .A2(data[1]), .B1(n35), .B2(data[5]), .ZN(n31) );
  AOI22D0BWP12T30P140 U57 ( .A1(n43), .A2(data[4]), .B1(data[3]), .B2(n52), 
        .ZN(n30) );
  OAI211D0BWP12T30P140 U58 ( .A1(n49), .A2(n54), .B(n31), .C(n30), .ZN(n59) );
  OAI21D0BWP12T30P140 U59 ( .A1(shamt[0]), .A2(shamt[1]), .B(shamt[2]), .ZN(
        n57) );
  AO22D0BWP12T30P140 U60 ( .A1(n60), .A2(n56), .B1(n59), .B2(n57), .Z(out[5])
         );
  AN2D0BWP12T30P140 U61 ( .A1(n57), .A2(n56), .Z(out[4]) );
  ND2D0BWP12T30P140 U62 ( .A1(shamt[2]), .A2(shamt[1]), .ZN(n62) );
  AOI22D0BWP12T30P140 U63 ( .A1(shamt[0]), .A2(n56), .B1(n59), .B2(n32), .ZN(
        n41) );
  AOI22D0BWP12T30P140 U64 ( .A1(shamt[2]), .A2(data[2]), .B1(n35), .B2(data[6]), .ZN(n34) );
  AOI22D0BWP12T30P140 U65 ( .A1(n43), .A2(data[5]), .B1(n52), .B2(data[4]), 
        .ZN(n33) );
  OAI211D0BWP12T30P140 U66 ( .A1(n49), .A2(n47), .B(n34), .C(n33), .ZN(n58) );
  INVD0BWP12T30P140 U67 ( .I(data[4]), .ZN(n38) );
  AOI22D0BWP12T30P140 U68 ( .A1(shamt[2]), .A2(data[3]), .B1(n35), .B2(data[7]), .ZN(n37) );
  AOI22D0BWP12T30P140 U69 ( .A1(n43), .A2(data[6]), .B1(n52), .B2(data[5]), 
        .ZN(n36) );
  OAI211D0BWP12T30P140 U70 ( .A1(n49), .A2(n38), .B(n37), .C(n36), .ZN(n39) );
  AOI22D0BWP12T30P140 U71 ( .A1(n60), .A2(n58), .B1(n57), .B2(n39), .ZN(n40)
         );
  OAI21D0BWP12T30P140 U72 ( .A1(n62), .A2(n41), .B(n40), .ZN(out[7]) );
  AOI22D0BWP12T30P140 U73 ( .A1(data[1]), .A2(n43), .B1(data[0]), .B2(n42), 
        .ZN(n50) );
  OAI22D0BWP12T30P140 U74 ( .A1(n50), .A2(n44), .B1(n48), .B2(n54), .ZN(out[2]) );
  OAI22D0BWP12T30P140 U75 ( .A1(n46), .A2(n48), .B1(n55), .B2(n45), .ZN(out[1]) );
  OAI22D0BWP12T30P140 U76 ( .A1(n50), .A2(n49), .B1(n48), .B2(n47), .ZN(n51)
         );
  AOI21D0BWP12T30P140 U77 ( .A1(data[1]), .A2(n52), .B(n51), .ZN(n53) );
  OAI21D0BWP12T30P140 U78 ( .A1(n55), .A2(n54), .B(n53), .ZN(out[3]) );
  INVD0BWP12T30P140 U79 ( .I(n56), .ZN(n63) );
  AOI22D0BWP12T30P140 U80 ( .A1(n60), .A2(n59), .B1(n58), .B2(n57), .ZN(n61)
         );
  OAI31D0BWP12T30P140 U81 ( .A1(shamt[0]), .A2(n63), .A3(n62), .B(n61), .ZN(
        out[6]) );
endmodule

