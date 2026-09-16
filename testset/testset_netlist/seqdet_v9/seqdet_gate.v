/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:10:55 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   N27, N28, N29, n5, n6, n7, n8, n9, n10, n11;
  wire   [2:0] state;

  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N29), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N28), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  INVD0BWP12T30P140 U11 ( .I(state[2]), .ZN(n5) );
  ND2D0BWP12T30P140 U12 ( .A1(n5), .A2(din), .ZN(n6) );
  ND2D0BWP12T30P140 U13 ( .A1(state[0]), .A2(state[1]), .ZN(n9) );
  NR2D0BWP12T30P140 U14 ( .A1(n6), .A2(n9), .ZN(N29) );
  NR3D0BWP12T30P140 U15 ( .A1(state[0]), .A2(state[1]), .A3(n5), .ZN(detected)
         );
  AOI21D0BWP12T30P140 U16 ( .A1(state[0]), .A2(n5), .B(detected), .ZN(n8) );
  INVD0BWP12T30P140 U17 ( .I(n6), .ZN(n10) );
  ND2D0BWP12T30P140 U18 ( .A1(state[1]), .A2(n10), .ZN(n7) );
  OAI22D0BWP12T30P140 U19 ( .A1(din), .A2(n8), .B1(state[0]), .B2(n7), .ZN(N28) );
  NR2D0BWP12T30P140 U20 ( .A1(state[0]), .A2(state[1]), .ZN(n11) );
  AO22D0BWP12T30P140 U21 ( .A1(din), .A2(n11), .B1(n10), .B2(n9), .Z(N27) );
endmodule

