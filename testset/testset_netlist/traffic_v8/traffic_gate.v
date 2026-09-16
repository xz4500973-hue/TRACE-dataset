/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:16:42 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   N8, N9, N10, N11, n8, n9, n10, n11, n12, n13, n14;
  wire   [3:0] cnt;

  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U17 ( .I(cnt[2]), .ZN(n12) );
  ND2D0BWP12T30P140 U18 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n14) );
  NR2D0BWP12T30P140 U19 ( .A1(n12), .A2(n14), .ZN(n11) );
  AOI21D0BWP12T30P140 U20 ( .A1(n12), .A2(n14), .B(n11), .ZN(N10) );
  NR3D0BWP12T30P140 U21 ( .A1(cnt[2]), .A2(cnt[1]), .A3(cnt[0]), .ZN(n10) );
  AOI21D0BWP12T30P140 U22 ( .A1(n10), .A2(cnt[3]), .B(cnt[0]), .ZN(N8) );
  INVD0BWP12T30P140 U23 ( .I(cnt[3]), .ZN(n9) );
  INVD0BWP12T30P140 U24 ( .I(n11), .ZN(n8) );
  OAI32D0BWP12T30P140 U25 ( .A1(n11), .A2(n10), .A3(n9), .B1(cnt[3]), .B2(n8), 
        .ZN(N11) );
  NR2D0BWP12T30P140 U26 ( .A1(cnt[2]), .A2(cnt[3]), .ZN(lights[0]) );
  NR4D0BWP12T30P140 U27 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[3]), .A4(n12), 
        .ZN(lights[1]) );
  NR2D0BWP12T30P140 U28 ( .A1(lights[0]), .A2(lights[1]), .ZN(lights[2]) );
  NR2D0BWP12T30P140 U29 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n13) );
  INR2D1BWP12T30P140 U30 ( .A1(n14), .B1(n13), .ZN(N9) );
endmodule

