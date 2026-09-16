/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:53:58 2026
/////////////////////////////////////////////////////////////


module serial2parallel ( clk, rst_n, din_serial, din_valid, dout_parallel, 
        dout_valid );
  output [7:0] dout_parallel;
  input clk, rst_n, din_serial, din_valid;
  output dout_valid;
  wire   bits_0__0_, N18, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16;
  wire   [2:0] idx;
  assign dout_parallel[7] = dout_parallel[1];
  assign dout_parallel[6] = dout_parallel[1];
  assign dout_parallel[5] = dout_parallel[1];
  assign dout_parallel[4] = dout_parallel[1];
  assign dout_parallel[3] = dout_parallel[1];
  assign dout_parallel[2] = dout_parallel[1];

  DFCNQD1BWP12T30P140 dout_valid_reg ( .D(N18), .CP(clk), .CDN(rst_n), .Q(
        dout_valid) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_0_ ( .D(n8), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[0]) );
  DFCNQD1BWP12T30P140 idx_reg_2_ ( .D(n5), .CP(clk), .CDN(rst_n), .Q(idx[2])
         );
  DFCNQD1BWP12T30P140 bits_reg_0__0_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(
        bits_0__0_) );
  DFCNQD1BWP12T30P140 idx_reg_1_ ( .D(n6), .CP(clk), .CDN(rst_n), .Q(idx[1])
         );
  DFCNQD1BWP12T30P140 idx_reg_0_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(idx[0])
         );
  TIELBWP12T30P140 U14 ( .ZN(dout_parallel[1]) );
  INVD0BWP12T30P140 U15 ( .I(din_valid), .ZN(n13) );
  INVD0BWP12T30P140 U16 ( .I(idx[0]), .ZN(n11) );
  NR2D0BWP12T30P140 U17 ( .A1(n13), .A2(n11), .ZN(n12) );
  AOI21D0BWP12T30P140 U18 ( .A1(n13), .A2(n11), .B(n12), .ZN(n7) );
  ND3D0BWP12T30P140 U19 ( .A1(din_valid), .A2(idx[0]), .A3(idx[1]), .ZN(n16)
         );
  OA21D0BWP12T30P140 U20 ( .A1(n12), .A2(idx[1]), .B(n16), .Z(n6) );
  NR4D0BWP12T30P140 U21 ( .A1(idx[1]), .A2(idx[0]), .A3(idx[2]), .A4(n13), 
        .ZN(n14) );
  CKMUX2D0BWP12T30P140 U22 ( .I0(bits_0__0_), .I1(din_serial), .S(n14), .Z(n9)
         );
  INVD0BWP12T30P140 U23 ( .I(idx[2]), .ZN(n15) );
  NR2D0BWP12T30P140 U24 ( .A1(n16), .A2(n15), .ZN(N18) );
  AOI21D0BWP12T30P140 U25 ( .A1(n16), .A2(n15), .B(N18), .ZN(n5) );
  CKMUX2D0BWP12T30P140 U26 ( .I0(dout_parallel[0]), .I1(bits_0__0_), .S(N18), 
        .Z(n8) );
endmodule

