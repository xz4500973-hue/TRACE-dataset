/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:26:22 2026
/////////////////////////////////////////////////////////////


module multi_pipe_4bit ( clk, rst_n, mul_a, mul_b, mul_out );
  input [3:0] mul_a;
  input [3:0] mul_b;
  output [7:0] mul_out;
  input clk, rst_n;
  wire   N9, N10, N11, N12, N13, N14, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55;
  wire   [7:2] s1;
  wire   [5:2] s0;

  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(N30), .CP(clk), .CDN(rst_n), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(N29), .CP(clk), .CDN(rst_n), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(N28), .CP(clk), .CDN(rst_n), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(N26), .CP(clk), .CDN(rst_n), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(N25), .CP(clk), .CDN(rst_n), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(N24), .CP(clk), .CDN(rst_n), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(N23), .CP(clk), .CDN(rst_n), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 s1_reg_2_ ( .D(N17), .CP(clk), .CDN(rst_n), .Q(s1[2]) );
  DFCNQD1BWP12T30P140 s1_reg_6_ ( .D(N21), .CP(clk), .CDN(rst_n), .Q(s1[6]) );
  DFCNQD1BWP12T30P140 s1_reg_7_ ( .D(N22), .CP(clk), .CDN(rst_n), .Q(s1[7]) );
  DFCNQD1BWP12T30P140 s0_reg_2_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(s0[2]) );
  DFCNQD1BWP12T30P140 s0_reg_5_ ( .D(N14), .CP(clk), .CDN(rst_n), .Q(s0[5]) );
  DFCNQD1BWP12T30P140 s0_reg_4_ ( .D(N13), .CP(clk), .CDN(rst_n), .Q(s0[4]) );
  DFCNQD1BWP12T30P140 s0_reg_3_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(s0[3]) );
  DFCNQD1BWP12T30P140 s1_reg_5_ ( .D(N20), .CP(clk), .CDN(rst_n), .Q(s1[5]) );
  DFCNQD1BWP12T30P140 s1_reg_4_ ( .D(N19), .CP(clk), .CDN(rst_n), .Q(s1[4]) );
  DFCNQD1BWP12T30P140 s1_reg_3_ ( .D(N18), .CP(clk), .CDN(rst_n), .Q(s1[3]) );
  DFCNQD1BWP12T30P140 s0_reg_1_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(N24) );
  DFCNQD1BWP12T30P140 s0_reg_0_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(N23) );
  AN2D0BWP12T30P140 U41 ( .A1(s1[2]), .A2(s0[2]), .Z(n54) );
  ND2D0BWP12T30P140 U42 ( .A1(n28), .A2(s1[6]), .ZN(n55) );
  OA21D0BWP12T30P140 U43 ( .A1(n28), .A2(s1[6]), .B(n55), .Z(N29) );
  AN2D0BWP12T30P140 U44 ( .A1(mul_b[2]), .A2(mul_a[0]), .Z(N17) );
  AN2D0BWP12T30P140 U45 ( .A1(mul_a[2]), .A2(mul_b[2]), .Z(n49) );
  ND2D0BWP12T30P140 U46 ( .A1(mul_a[1]), .A2(mul_b[3]), .ZN(n48) );
  INVD0BWP12T30P140 U47 ( .I(n48), .ZN(n51) );
  OAI21D0BWP12T30P140 U48 ( .A1(n49), .A2(N17), .B(n51), .ZN(n45) );
  ND2D0BWP12T30P140 U49 ( .A1(mul_b[2]), .A2(mul_a[3]), .ZN(n44) );
  ND2D0BWP12T30P140 U50 ( .A1(mul_a[2]), .A2(mul_b[3]), .ZN(n43) );
  INVD0BWP12T30P140 U51 ( .I(mul_a[3]), .ZN(n37) );
  NR2D0BWP12T30P140 U52 ( .A1(n30), .A2(n37), .ZN(N22) );
  INVD0BWP12T30P140 U53 ( .I(mul_b[3]), .ZN(n29) );
  AOI211D0BWP12T30P140 U54 ( .A1(n30), .A2(n37), .B(N22), .C(n29), .ZN(N21) );
  FA1D0BWP12T30P140 U55 ( .A(s1[5]), .B(s0[5]), .CI(n31), .CO(n28), .S(N28) );
  FA1D0BWP12T30P140 U56 ( .A(s1[4]), .B(s0[4]), .CI(n32), .CO(n31), .S(N27) );
  FA1D0BWP12T30P140 U57 ( .A(s1[3]), .B(s0[3]), .CI(n54), .CO(n32), .S(N26) );
  AN2D0BWP12T30P140 U58 ( .A1(mul_a[0]), .A2(mul_b[0]), .Z(N9) );
  AN2D0BWP12T30P140 U59 ( .A1(mul_a[2]), .A2(mul_b[0]), .Z(n35) );
  ND2D0BWP12T30P140 U60 ( .A1(mul_a[1]), .A2(mul_b[1]), .ZN(n34) );
  OAI21D0BWP12T30P140 U61 ( .A1(N9), .A2(n34), .B(n35), .ZN(n33) );
  OAI31D0BWP12T30P140 U62 ( .A1(N9), .A2(n35), .A3(n34), .B(n33), .ZN(N11) );
  INVD0BWP12T30P140 U63 ( .I(n34), .ZN(n53) );
  OAI21D0BWP12T30P140 U64 ( .A1(n35), .A2(N9), .B(n53), .ZN(n41) );
  ND2D0BWP12T30P140 U65 ( .A1(mul_b[0]), .A2(mul_a[3]), .ZN(n40) );
  ND2D0BWP12T30P140 U66 ( .A1(mul_a[2]), .A2(mul_b[1]), .ZN(n39) );
  NR2D0BWP12T30P140 U67 ( .A1(n38), .A2(n37), .ZN(N14) );
  INVD0BWP12T30P140 U68 ( .I(mul_b[1]), .ZN(n36) );
  AOI211D0BWP12T30P140 U69 ( .A1(n38), .A2(n37), .B(N14), .C(n36), .ZN(N13) );
  FA1D0BWP12T30P140 U70 ( .A(n41), .B(n40), .CI(n39), .CO(n38), .S(n42) );
  INVD0BWP12T30P140 U71 ( .I(n42), .ZN(N12) );
  FA1D0BWP12T30P140 U72 ( .A(n45), .B(n44), .CI(n43), .CO(n30), .S(n46) );
  INVD0BWP12T30P140 U73 ( .I(n46), .ZN(N20) );
  OAI21D0BWP12T30P140 U74 ( .A1(N17), .A2(n48), .B(n49), .ZN(n47) );
  OAI31D0BWP12T30P140 U75 ( .A1(N17), .A2(n49), .A3(n48), .B(n47), .ZN(N19) );
  AOI22D0BWP12T30P140 U76 ( .A1(mul_b[2]), .A2(mul_a[1]), .B1(mul_b[3]), .B2(
        mul_a[0]), .ZN(n50) );
  AOI21D0BWP12T30P140 U77 ( .A1(N17), .A2(n51), .B(n50), .ZN(N18) );
  AOI22D0BWP12T30P140 U78 ( .A1(mul_a[1]), .A2(mul_b[0]), .B1(mul_a[0]), .B2(
        mul_b[1]), .ZN(n52) );
  AOI21D0BWP12T30P140 U79 ( .A1(N9), .A2(n53), .B(n52), .ZN(N10) );
  IAO21D0BWP12T30P140 U80 ( .A1(s1[2]), .A2(s0[2]), .B(n54), .ZN(N25) );
  XNR2D0BWP12T30P140 U81 ( .A1(s1[7]), .A2(n55), .ZN(N30) );
endmodule

