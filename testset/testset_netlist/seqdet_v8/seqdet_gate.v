/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:10:17 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   N8, N9, N10, N13, N16, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [3:0] state;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(N8), .CP(clk), .SDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(N16), .CP(clk), .CDN(rst_n), .Q(
        detected) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(N13), .CP(clk), .CDN(rst_n), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  INVD0BWP12T30P140 U13 ( .I(state[2]), .ZN(n7) );
  NR2D0BWP12T30P140 U14 ( .A1(state[0]), .A2(state[1]), .ZN(n10) );
  ND2D0BWP12T30P140 U15 ( .A1(din), .A2(n10), .ZN(n11) );
  NR2D0BWP12T30P140 U16 ( .A1(n7), .A2(n11), .ZN(N13) );
  AOI221D0BWP12T30P140 U17 ( .A1(detected), .A2(n7), .B1(state[3]), .B2(n7), 
        .C(state[1]), .ZN(n6) );
  NR2D0BWP12T30P140 U18 ( .A1(state[0]), .A2(n6), .ZN(n13) );
  AOI221D0BWP12T30P140 U19 ( .A1(state[0]), .A2(din), .B1(state[2]), .B2(din), 
        .C(n13), .ZN(N8) );
  INVD0BWP12T30P140 U20 ( .I(state[3]), .ZN(n12) );
  ND3D0BWP12T30P140 U21 ( .A1(n12), .A2(n7), .A3(detected), .ZN(n9) );
  INVD0BWP12T30P140 U22 ( .I(din), .ZN(n8) );
  AOI21D0BWP12T30P140 U23 ( .A1(n10), .A2(n9), .B(n8), .ZN(N9) );
  NR3D0BWP12T30P140 U24 ( .A1(state[2]), .A2(n12), .A3(n11), .ZN(N16) );
  INR2D1BWP12T30P140 U25 ( .A1(n13), .B1(din), .ZN(N10) );
endmodule

