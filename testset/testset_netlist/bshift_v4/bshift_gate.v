/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 20:16:58 2026
/////////////////////////////////////////////////////////////


module bshift ( data, shamt, out );
  input [7:0] data;
  input [2:0] shamt;
  output [7:0] out;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65;

  NR2D0BWP12T30P140 U56 ( .A1(shamt[0]), .A2(shamt[1]), .ZN(n59) );
  ND2D0BWP12T30P140 U57 ( .A1(n59), .A2(data[0]), .ZN(n51) );
  NR2D0BWP12T30P140 U58 ( .A1(shamt[2]), .A2(n51), .ZN(out[0]) );
  ND2D0BWP12T30P140 U59 ( .A1(shamt[0]), .A2(shamt[1]), .ZN(n48) );
  INVD0BWP12T30P140 U60 ( .I(n48), .ZN(n55) );
  AOI22D0BWP12T30P140 U61 ( .A1(n59), .A2(data[6]), .B1(data[3]), .B2(n55), 
        .ZN(n47) );
  INVD0BWP12T30P140 U62 ( .I(shamt[2]), .ZN(n61) );
  INR2D1BWP12T30P140 U63 ( .A1(shamt[1]), .B1(shamt[0]), .ZN(n57) );
  INR2D1BWP12T30P140 U64 ( .A1(shamt[0]), .B1(shamt[1]), .ZN(n58) );
  AOI22D0BWP12T30P140 U65 ( .A1(n57), .A2(data[4]), .B1(n58), .B2(data[5]), 
        .ZN(n46) );
  AOI222D0BWP12T30P140 U66 ( .A1(data[1]), .A2(n58), .B1(n57), .B2(data[0]), 
        .C1(data[2]), .C2(n59), .ZN(n64) );
  AOI32D0BWP12T30P140 U67 ( .A1(n47), .A2(n61), .A3(n46), .B1(shamt[2]), .B2(
        n64), .ZN(out[6]) );
  INR2D1BWP12T30P140 U68 ( .A1(n57), .B1(data[3]), .ZN(n50) );
  CKMUX2D0BWP12T30P140 U69 ( .I0(data[5]), .I1(data[4]), .S(shamt[0]), .Z(n60)
         );
  OAI22D0BWP12T30P140 U70 ( .A1(data[2]), .A2(n48), .B1(shamt[1]), .B2(n60), 
        .ZN(n49) );
  AOI22D0BWP12T30P140 U71 ( .A1(data[1]), .A2(n59), .B1(n58), .B2(data[0]), 
        .ZN(n65) );
  OAI32D0BWP12T30P140 U72 ( .A1(shamt[2]), .A2(n50), .A3(n49), .B1(n65), .B2(
        n61), .ZN(out[5]) );
  AOI22D0BWP12T30P140 U73 ( .A1(data[1]), .A2(n55), .B1(n59), .B2(data[4]), 
        .ZN(n53) );
  AOI22D0BWP12T30P140 U74 ( .A1(n57), .A2(data[2]), .B1(n58), .B2(data[3]), 
        .ZN(n52) );
  AOI32D0BWP12T30P140 U75 ( .A1(n53), .A2(n61), .A3(n52), .B1(shamt[2]), .B2(
        n51), .ZN(out[4]) );
  AOI22D0BWP12T30P140 U76 ( .A1(n58), .A2(data[2]), .B1(n59), .B2(data[3]), 
        .ZN(n54) );
  IOA21D0BWP12T30P140 U77 ( .A1(data[0]), .A2(n55), .B(n54), .ZN(n56) );
  AOI21D0BWP12T30P140 U78 ( .A1(data[1]), .A2(n57), .B(n56), .ZN(n63) );
  AOI222D0BWP12T30P140 U79 ( .A1(n60), .A2(shamt[1]), .B1(n59), .B2(data[7]), 
        .C1(n58), .C2(data[6]), .ZN(n62) );
  AOI22D0BWP12T30P140 U80 ( .A1(shamt[2]), .A2(n63), .B1(n62), .B2(n61), .ZN(
        out[7]) );
  NR2D0BWP12T30P140 U81 ( .A1(shamt[2]), .A2(n63), .ZN(out[3]) );
  NR2D0BWP12T30P140 U82 ( .A1(shamt[2]), .A2(n64), .ZN(out[2]) );
  NR2D0BWP12T30P140 U83 ( .A1(shamt[2]), .A2(n65), .ZN(out[1]) );
endmodule

