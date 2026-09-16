/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:07:43 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   N8, N9, N10, n6, n7, n8, n9, n10;
  wire   [2:0] state;

  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  INVD0BWP12T30P140 U12 ( .I(din), .ZN(n9) );
  INVD0BWP12T30P140 U13 ( .I(state[1]), .ZN(n8) );
  NR2D0BWP12T30P140 U14 ( .A1(state[2]), .A2(state[0]), .ZN(n6) );
  INVD0BWP12T30P140 U15 ( .I(n6), .ZN(n7) );
  OAI32D0BWP12T30P140 U16 ( .A1(n9), .A2(n8), .A3(n7), .B1(n6), .B2(din), .ZN(
        N9) );
  INR3D1BWP12T30P140 U17 ( .A1(state[0]), .B1(state[2]), .B2(n8), .ZN(n10) );
  NR2D0BWP12T30P140 U18 ( .A1(n10), .A2(n9), .ZN(N8) );
  AN2D0BWP12T30P140 U19 ( .A1(n10), .A2(din), .Z(N10) );
  INR3D1BWP12T30P140 U20 ( .A1(state[2]), .B1(state[1]), .B2(state[0]), .ZN(
        detected) );
endmodule

