/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:16:04 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   N9, N10, N11, N12, n9, n10, n11, n12, n13, n14;
  wire   [3:0] cnt;

  DFSNQD1BWP12T30P140 cnt_reg_3_ ( .D(N12), .CP(clk), .SDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  NR2D0BWP12T30P140 U18 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n11) );
  INVD0BWP12T30P140 U19 ( .I(n11), .ZN(n14) );
  NR2D0BWP12T30P140 U20 ( .A1(cnt[2]), .A2(n14), .ZN(n9) );
  INVD0BWP12T30P140 U21 ( .I(cnt[3]), .ZN(n10) );
  INVD0BWP12T30P140 U22 ( .I(cnt[2]), .ZN(n13) );
  CKND2D1BWP12T30P140 U23 ( .A1(n13), .A2(n10), .ZN(n12) );
  OAI22D0BWP12T30P140 U24 ( .A1(n9), .A2(n10), .B1(n14), .B2(n12), .ZN(N12) );
  INVD0BWP12T30P140 U25 ( .I(n12), .ZN(lights[2]) );
  OAI32D0BWP12T30P140 U26 ( .A1(cnt[2]), .A2(lights[2]), .A3(n14), .B1(n11), 
        .B2(n13), .ZN(N11) );
  MOAI22D0BWP12T30P140 U27 ( .A1(n14), .A2(lights[2]), .B1(cnt[1]), .B2(cnt[0]), .ZN(N10) );
  OAI21D0BWP12T30P140 U28 ( .A1(n11), .A2(n13), .B(n10), .ZN(lights[0]) );
  IAO21D0BWP12T30P140 U29 ( .A1(n12), .A2(cnt[1]), .B(cnt[0]), .ZN(N9) );
  NR3D0BWP12T30P140 U30 ( .A1(cnt[3]), .A2(n14), .A3(n13), .ZN(lights[1]) );
endmodule

