/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:06:26 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   N42, N43, N44, N45, N46, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24;
  wire   [3:0] state;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(N42), .CP(clk), .SDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(N46), .CP(clk), .CDN(rst_n), .Q(
        detected) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N43), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N44), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(N45), .CP(clk), .CDN(rst_n), .Q(
        state[3]) );
  NR2D0BWP12T30P140 U20 ( .A1(state[1]), .A2(detected), .ZN(n13) );
  NR2D0BWP12T30P140 U21 ( .A1(state[2]), .A2(state[0]), .ZN(n15) );
  ND3D0BWP12T30P140 U22 ( .A1(n13), .A2(n15), .A3(state[3]), .ZN(n18) );
  INVD0BWP12T30P140 U23 ( .I(din), .ZN(n22) );
  NR2D0BWP12T30P140 U24 ( .A1(n18), .A2(n22), .ZN(N46) );
  IND2D1BWP12T30P140 U25 ( .A1(state[3]), .B1(n13), .ZN(n23) );
  AOI21D0BWP12T30P140 U26 ( .A1(detected), .A2(state[1]), .B(state[3]), .ZN(
        n14) );
  OAI211D0BWP12T30P140 U27 ( .A1(detected), .A2(state[1]), .B(n15), .C(n14), 
        .ZN(n17) );
  INVD0BWP12T30P140 U28 ( .I(state[2]), .ZN(n24) );
  ND2D0BWP12T30P140 U29 ( .A1(state[0]), .A2(n24), .ZN(n16) );
  AOI221D0BWP12T30P140 U30 ( .A1(n23), .A2(n17), .B1(n16), .B2(n17), .C(n22), 
        .ZN(N43) );
  ND2D0BWP12T30P140 U31 ( .A1(n18), .A2(n17), .ZN(n21) );
  INVD0BWP12T30P140 U32 ( .I(state[0]), .ZN(n19) );
  AOI221D0BWP12T30P140 U33 ( .A1(state[2]), .A2(state[0]), .B1(n24), .B2(n19), 
        .C(n23), .ZN(n20) );
  MUX2ND0BWP12T30P140 U34 ( .I0(n21), .I1(din), .S(n20), .ZN(N42) );
  INR2D1BWP12T30P140 U35 ( .A1(n21), .B1(din), .ZN(N44) );
  NR4D0BWP12T30P140 U36 ( .A1(state[0]), .A2(n24), .A3(n23), .A4(n22), .ZN(N45) );
endmodule

