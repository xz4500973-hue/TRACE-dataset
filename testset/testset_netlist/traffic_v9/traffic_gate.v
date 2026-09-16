/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:17:20 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   state_0_, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [2:0] tcnt;

  DFCNQD1BWP12T30P140 tcnt_reg_2_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(tcnt[2])
         );
  DFCNQD1BWP12T30P140 tcnt_reg_1_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(tcnt[1]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(
        lights[2]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(
        state_0_) );
  DFCNQD1BWP12T30P140 tcnt_reg_0_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(tcnt[0])
         );
  NR2D0BWP12T30P140 U16 ( .A1(state_0_), .A2(tcnt[1]), .ZN(n13) );
  ND2D0BWP12T30P140 U17 ( .A1(state_0_), .A2(lights[2]), .ZN(n14) );
  OAI21D0BWP12T30P140 U18 ( .A1(state_0_), .A2(tcnt[0]), .B(n14), .ZN(n12) );
  OA21D0BWP12T30P140 U19 ( .A1(n13), .A2(n12), .B(tcnt[2]), .Z(n9) );
  AO22D0BWP12T30P140 U20 ( .A1(tcnt[0]), .A2(n13), .B1(tcnt[1]), .B2(n12), .Z(
        n10) );
  INVD0BWP12T30P140 U21 ( .I(state_0_), .ZN(n16) );
  MAOI22D0BWP12T30P140 U22 ( .A1(tcnt[0]), .A2(n14), .B1(n16), .B2(tcnt[0]), 
        .ZN(n8) );
  NR2D0BWP12T30P140 U23 ( .A1(state_0_), .A2(lights[2]), .ZN(lights[0]) );
  IND3D1BWP12T30P140 U24 ( .A1(tcnt[2]), .B1(tcnt[0]), .B2(tcnt[1]), .ZN(n17)
         );
  INVD0BWP12T30P140 U25 ( .I(lights[0]), .ZN(n15) );
  OAI21D0BWP12T30P140 U26 ( .A1(n17), .A2(n15), .B(n14), .ZN(n11) );
  NR2D0BWP12T30P140 U27 ( .A1(lights[2]), .A2(n16), .ZN(lights[1]) );
  IOA21D0BWP12T30P140 U28 ( .A1(lights[2]), .A2(n17), .B(n16), .ZN(n7) );
endmodule

