/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:09:00 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   n10, n11, n12, n13, n14, n15;
  wire   [2:0] state;
  wire   [2:0] next;

  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(next[2]), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next[1]), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(next[0]), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  INVD0BWP12T30P140 U16 ( .I(state[2]), .ZN(n13) );
  ND3D0BWP12T30P140 U17 ( .A1(n13), .A2(din), .A3(state[1]), .ZN(n10) );
  NR2D0BWP12T30P140 U18 ( .A1(state[0]), .A2(n10), .ZN(next[2]) );
  INVD0BWP12T30P140 U19 ( .I(state[1]), .ZN(n12) );
  ND3D0BWP12T30P140 U20 ( .A1(n12), .A2(n13), .A3(state[0]), .ZN(n11) );
  OR3D0BWP12T30P140 U21 ( .A1(din), .A2(state[0]), .A3(n12), .Z(n14) );
  OAI211D0BWP12T30P140 U22 ( .A1(din), .A2(n11), .B(n14), .C(n10), .ZN(next[1]) );
  NR3D0BWP12T30P140 U23 ( .A1(state[0]), .A2(n13), .A3(n12), .ZN(detected) );
  OAI211D0BWP12T30P140 U24 ( .A1(state[0]), .A2(din), .B(n13), .C(n12), .ZN(
        n15) );
  IND3D1BWP12T30P140 U25 ( .A1(detected), .B1(n15), .B2(n14), .ZN(next[0]) );
endmodule

