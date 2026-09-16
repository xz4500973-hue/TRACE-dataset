/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:12:51 2026
/////////////////////////////////////////////////////////////


module traffic ( clk, rst_n, lights );
  output [2:0] lights;
  input clk, rst_n;
  wire   bin_3_, next_bin_3_, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  wire   [2:0] gray;
  wire   [2:0] next_gray;

  DFCNQD1BWP12T30P140 gray_reg_3_ ( .D(next_bin_3_), .CP(clk), .CDN(rst_n), 
        .Q(bin_3_) );
  DFCNQD1BWP12T30P140 gray_reg_1_ ( .D(next_gray[1]), .CP(clk), .CDN(rst_n), 
        .Q(gray[1]) );
  DFCNQD1BWP12T30P140 gray_reg_2_ ( .D(next_gray[2]), .CP(clk), .CDN(rst_n), 
        .Q(gray[2]) );
  DFCNQD1BWP12T30P140 gray_reg_0_ ( .D(next_gray[0]), .CP(clk), .CDN(rst_n), 
        .Q(gray[0]) );
  NR2D0BWP12T30P140 U20 ( .A1(bin_3_), .A2(gray[2]), .ZN(lights[0]) );
  AOI21D0BWP12T30P140 U21 ( .A1(gray[2]), .A2(bin_3_), .B(lights[0]), .ZN(n11)
         );
  INVD0BWP12T30P140 U22 ( .I(bin_3_), .ZN(n20) );
  NR2D0BWP12T30P140 U23 ( .A1(gray[0]), .A2(n20), .ZN(n13) );
  INVD0BWP12T30P140 U24 ( .I(n11), .ZN(n17) );
  INVD0BWP12T30P140 U25 ( .I(gray[1]), .ZN(n12) );
  OAI32D0BWP12T30P140 U26 ( .A1(gray[1]), .A2(n11), .A3(n13), .B1(n17), .B2(
        n12), .ZN(next_gray[0]) );
  NR2D0BWP12T30P140 U27 ( .A1(n12), .A2(gray[0]), .ZN(n15) );
  INVD0BWP12T30P140 U28 ( .I(n15), .ZN(n16) );
  INVD0BWP12T30P140 U29 ( .I(gray[2]), .ZN(n14) );
  AOI21D0BWP12T30P140 U30 ( .A1(n16), .A2(n14), .B(n13), .ZN(next_gray[2]) );
  ND2D0BWP12T30P140 U31 ( .A1(gray[2]), .A2(n20), .ZN(n19) );
  NR2D0BWP12T30P140 U32 ( .A1(n16), .A2(n19), .ZN(lights[1]) );
  OAI21D0BWP12T30P140 U33 ( .A1(n15), .A2(n14), .B(n20), .ZN(lights[2]) );
  IOA21D0BWP12T30P140 U34 ( .A1(n17), .A2(gray[0]), .B(n16), .ZN(next_gray[1])
         );
  NR2D0BWP12T30P140 U35 ( .A1(gray[1]), .A2(gray[0]), .ZN(n18) );
  MUX2ND0BWP12T30P140 U36 ( .I0(n20), .I1(n19), .S(n18), .ZN(next_bin_3_) );
endmodule

