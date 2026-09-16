/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:16:36 2026
/////////////////////////////////////////////////////////////


module serial2parallel ( clk, rst_n, din_serial, din_valid, dout_parallel, 
        dout_valid );
  output [7:0] dout_parallel;
  input clk, rst_n, din_serial, din_valid;
  output dout_valid;
  wire   N13, N14, N15, N16, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35;
  wire   [6:0] sr;
  wire   [2:0] cnt;

  DFCNQD1BWP12T30P140 dout_valid_reg ( .D(N16), .CP(clk), .CDN(rst_n), .Q(
        dout_valid) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_6_ ( .D(n24), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[6]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_5_ ( .D(n23), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[5]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_4_ ( .D(n22), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[4]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_3_ ( .D(n21), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[3]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_2_ ( .D(n20), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[2]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_1_ ( .D(n19), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[1]) );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(n17), .CP(clk), .CDN(rst_n), .Q(sr[0]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(sr[1]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(sr[2]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(sr[3]) );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(sr[4]) );
  DFCNQD1BWP12T30P140 sr_reg_5_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_7_ ( .D(n25), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[7]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_0_ ( .D(n18), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N15), .CP(clk), .CDN(rst_n), .Q(cnt[2])
         );
  DFCNQD1BWP12T30P140 sr_reg_6_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(sr[6]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N14), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N13), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U32 ( .I(din_valid), .ZN(n30) );
  NR2D0BWP12T30P140 U33 ( .A1(cnt[0]), .A2(n30), .ZN(N13) );
  ND3D0BWP12T30P140 U34 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .ZN(n32) );
  NR2D0BWP12T30P140 U35 ( .A1(n30), .A2(n32), .ZN(N16) );
  INVD0BWP12T30P140 U36 ( .I(sr[5]), .ZN(n34) );
  MAOI22D0BWP12T30P140 U37 ( .A1(N16), .A2(n34), .B1(dout_parallel[6]), .B2(
        N16), .ZN(n24) );
  INVD0BWP12T30P140 U38 ( .I(sr[4]), .ZN(n31) );
  MAOI22D0BWP12T30P140 U39 ( .A1(N16), .A2(n31), .B1(dout_parallel[5]), .B2(
        N16), .ZN(n23) );
  INVD0BWP12T30P140 U40 ( .I(sr[3]), .ZN(n29) );
  MAOI22D0BWP12T30P140 U41 ( .A1(N16), .A2(n29), .B1(dout_parallel[4]), .B2(
        N16), .ZN(n22) );
  INVD0BWP12T30P140 U42 ( .I(sr[2]), .ZN(n28) );
  MAOI22D0BWP12T30P140 U43 ( .A1(N16), .A2(n28), .B1(dout_parallel[3]), .B2(
        N16), .ZN(n21) );
  INVD0BWP12T30P140 U44 ( .I(sr[1]), .ZN(n27) );
  MAOI22D0BWP12T30P140 U45 ( .A1(N16), .A2(n27), .B1(dout_parallel[2]), .B2(
        N16), .ZN(n20) );
  INVD0BWP12T30P140 U46 ( .I(sr[0]), .ZN(n26) );
  MAOI22D0BWP12T30P140 U47 ( .A1(N16), .A2(n26), .B1(dout_parallel[1]), .B2(
        N16), .ZN(n19) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n26), .A2(n30), .B1(n30), .B2(din_serial), 
        .ZN(n17) );
  AOI22D0BWP12T30P140 U49 ( .A1(din_valid), .A2(n26), .B1(n27), .B2(n30), .ZN(
        n16) );
  AOI22D0BWP12T30P140 U50 ( .A1(din_valid), .A2(n27), .B1(n28), .B2(n30), .ZN(
        n15) );
  AOI22D0BWP12T30P140 U51 ( .A1(din_valid), .A2(n28), .B1(n29), .B2(n30), .ZN(
        n14) );
  AOI22D0BWP12T30P140 U52 ( .A1(din_valid), .A2(n29), .B1(n31), .B2(n30), .ZN(
        n13) );
  AOI22D0BWP12T30P140 U53 ( .A1(din_valid), .A2(n31), .B1(n34), .B2(n30), .ZN(
        n12) );
  CKMUX2D0BWP12T30P140 U54 ( .I0(dout_parallel[7]), .I1(sr[6]), .S(N16), .Z(
        n25) );
  CKMUX2D0BWP12T30P140 U55 ( .I0(dout_parallel[0]), .I1(din_serial), .S(N16), 
        .Z(n18) );
  ND2D0BWP12T30P140 U56 ( .A1(cnt[0]), .A2(cnt[1]), .ZN(n35) );
  INVD0BWP12T30P140 U57 ( .I(n35), .ZN(n33) );
  OA211D0BWP12T30P140 U58 ( .A1(n33), .A2(cnt[2]), .B(din_valid), .C(n32), .Z(
        N15) );
  MAOI22D0BWP12T30P140 U59 ( .A1(din_valid), .A2(n34), .B1(sr[6]), .B2(
        din_valid), .ZN(n11) );
  OA211D0BWP12T30P140 U60 ( .A1(cnt[0]), .A2(cnt[1]), .B(din_valid), .C(n35), 
        .Z(N14) );
endmodule

