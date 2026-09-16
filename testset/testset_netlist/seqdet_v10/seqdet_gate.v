/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:05:48 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   N26, N27, N28, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [2:0] state;

  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N28), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(N26), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  INVD0BWP12T30P140 U15 ( .I(state[1]), .ZN(n15) );
  NR2D0BWP12T30P140 U16 ( .A1(state[2]), .A2(n15), .ZN(n14) );
  INVD0BWP12T30P140 U17 ( .I(n14), .ZN(n12) );
  INVD0BWP12T30P140 U18 ( .I(state[0]), .ZN(n9) );
  NR2D0BWP12T30P140 U19 ( .A1(n12), .A2(n9), .ZN(detected) );
  ND2D0BWP12T30P140 U20 ( .A1(din), .A2(n9), .ZN(n16) );
  INVD0BWP12T30P140 U21 ( .I(din), .ZN(n10) );
  INR3D1BWP12T30P140 U22 ( .A1(state[2]), .B1(state[1]), .B2(state[0]), .ZN(
        n13) );
  AOI211D0BWP12T30P140 U23 ( .A1(n14), .A2(n10), .B(detected), .C(n13), .ZN(
        n11) );
  OAI21D0BWP12T30P140 U24 ( .A1(state[1]), .A2(n16), .B(n11), .ZN(N28) );
  NR2D0BWP12T30P140 U25 ( .A1(n12), .A2(n16), .ZN(N26) );
  NR2D0BWP12T30P140 U26 ( .A1(n14), .A2(n13), .ZN(n17) );
  OAI22D0BWP12T30P140 U27 ( .A1(din), .A2(n17), .B1(n16), .B2(n15), .ZN(N27)
         );
endmodule

