/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:12:10 2026
/////////////////////////////////////////////////////////////


module accu ( clk, rst_n, data_in, valid_in, valid_out, data_out );
  input [7:0] data_in;
  output [9:0] data_out;
  input clk, rst_n, valid_in;
  output valid_out;
  wire   N35, N36, N37, N38, N39, N40, N41, N42, N43, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, DP_OP_14J1_122_801_I3,
         DP_OP_14J1_122_801_n33, DP_OP_14J1_122_801_n32,
         DP_OP_14J1_122_801_n31, DP_OP_14J1_122_801_n30,
         DP_OP_14J1_122_801_n29, DP_OP_14J1_122_801_n28,
         DP_OP_14J1_122_801_n27, DP_OP_14J1_122_801_n26,
         DP_OP_14J1_122_801_n25, DP_OP_14J1_122_801_n9, DP_OP_14J1_122_801_n8,
         DP_OP_14J1_122_801_n7, DP_OP_14J1_122_801_n6, DP_OP_14J1_122_801_n5,
         DP_OP_14J1_122_801_n4, DP_OP_14J1_122_801_n3, DP_OP_14J1_122_801_n2,
         DP_OP_14J1_122_801_n1, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42;
  wire   [1:0] count;

  DFCNQD1BWP12T30P140 valid_out_reg ( .D(DP_OP_14J1_122_801_I3), .CP(clk), 
        .CDN(rst_n), .Q(valid_out) );
  DFCNQD1BWP12T30P140 data_out_reg_0_ ( .D(n14), .CP(clk), .CDN(rst_n), .Q(
        data_out[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_1_ ( .D(n13), .CP(clk), .CDN(rst_n), .Q(
        data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_2_ ( .D(n12), .CP(clk), .CDN(rst_n), .Q(
        data_out[2]) );
  DFCNQD1BWP12T30P140 data_out_reg_3_ ( .D(n11), .CP(clk), .CDN(rst_n), .Q(
        data_out[3]) );
  DFCNQD1BWP12T30P140 data_out_reg_4_ ( .D(n10), .CP(clk), .CDN(rst_n), .Q(
        data_out[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_5_ ( .D(n9), .CP(clk), .CDN(rst_n), .Q(
        data_out[5]) );
  DFCNQD1BWP12T30P140 data_out_reg_6_ ( .D(n8), .CP(clk), .CDN(rst_n), .Q(
        data_out[6]) );
  DFCNQD1BWP12T30P140 data_out_reg_7_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(
        data_out[7]) );
  DFCNQD1BWP12T30P140 data_out_reg_8_ ( .D(n6), .CP(clk), .CDN(rst_n), .Q(
        data_out[8]) );
  DFCNQD1BWP12T30P140 data_out_reg_9_ ( .D(n5), .CP(clk), .CDN(rst_n), .Q(
        data_out[9]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(
        count[1]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(
        count[0]) );
  HA1D0BWP12T30P140 DP_OP_14J1_122_801_U10 ( .A(data_in[0]), .B(
        DP_OP_14J1_122_801_n25), .CO(DP_OP_14J1_122_801_n9), .S(N35) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U9 ( .A(data_in[1]), .B(
        DP_OP_14J1_122_801_n26), .CI(DP_OP_14J1_122_801_n9), .CO(
        DP_OP_14J1_122_801_n8), .S(N36) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U8 ( .A(data_in[2]), .B(
        DP_OP_14J1_122_801_n27), .CI(DP_OP_14J1_122_801_n8), .CO(
        DP_OP_14J1_122_801_n7), .S(N37) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U7 ( .A(data_in[3]), .B(
        DP_OP_14J1_122_801_n28), .CI(DP_OP_14J1_122_801_n7), .CO(
        DP_OP_14J1_122_801_n6), .S(N38) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U6 ( .A(data_in[4]), .B(
        DP_OP_14J1_122_801_n29), .CI(DP_OP_14J1_122_801_n6), .CO(
        DP_OP_14J1_122_801_n5), .S(N39) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U5 ( .A(data_in[5]), .B(
        DP_OP_14J1_122_801_n30), .CI(DP_OP_14J1_122_801_n5), .CO(
        DP_OP_14J1_122_801_n4), .S(N40) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U4 ( .A(data_in[6]), .B(
        DP_OP_14J1_122_801_n31), .CI(DP_OP_14J1_122_801_n4), .CO(
        DP_OP_14J1_122_801_n3), .S(N41) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_801_U3 ( .A(data_in[7]), .B(
        DP_OP_14J1_122_801_n32), .CI(DP_OP_14J1_122_801_n3), .CO(
        DP_OP_14J1_122_801_n2), .S(N42) );
  HA1D0BWP12T30P140 DP_OP_14J1_122_801_U2 ( .A(DP_OP_14J1_122_801_n33), .B(
        DP_OP_14J1_122_801_n2), .CO(DP_OP_14J1_122_801_n1), .S(N43) );
  IND2D1BWP12T30P140 U21 ( .A1(valid_in), .B1(valid_out), .ZN(n17) );
  INVD0BWP12T30P140 U22 ( .I(n17), .ZN(n42) );
  CKMUX2D0BWP12T30P140 U23 ( .I0(N35), .I1(data_out[0]), .S(n42), .Z(n14) );
  CKMUX2D0BWP12T30P140 U24 ( .I0(N36), .I1(data_out[1]), .S(n42), .Z(n13) );
  CKMUX2D0BWP12T30P140 U25 ( .I0(N37), .I1(data_out[2]), .S(n42), .Z(n12) );
  CKMUX2D0BWP12T30P140 U26 ( .I0(N38), .I1(data_out[3]), .S(n42), .Z(n11) );
  CKMUX2D0BWP12T30P140 U27 ( .I0(N39), .I1(data_out[4]), .S(n42), .Z(n10) );
  CKMUX2D0BWP12T30P140 U28 ( .I0(N40), .I1(data_out[5]), .S(n42), .Z(n9) );
  CKMUX2D0BWP12T30P140 U29 ( .I0(N41), .I1(data_out[6]), .S(n42), .Z(n8) );
  CKMUX2D0BWP12T30P140 U30 ( .I0(N42), .I1(data_out[7]), .S(n42), .Z(n7) );
  CKMUX2D0BWP12T30P140 U31 ( .I0(N43), .I1(data_out[8]), .S(n42), .Z(n6) );
  AN3D0BWP12T30P140 U32 ( .A1(count[0]), .A2(count[1]), .A3(n17), .Z(
        DP_OP_14J1_122_801_I3) );
  NR2D0BWP12T30P140 U33 ( .A1(count[0]), .A2(count[1]), .ZN(n38) );
  INVD0BWP12T30P140 U34 ( .I(data_out[9]), .ZN(n18) );
  NR2D0BWP12T30P140 U35 ( .A1(n38), .A2(n18), .ZN(n19) );
  CKXOR2D0BWP12T30P140 U36 ( .A1(n19), .A2(DP_OP_14J1_122_801_n1), .Z(n20) );
  CKMUX2D0BWP12T30P140 U37 ( .I0(n20), .I1(data_out[9]), .S(n42), .Z(n5) );
  INVD0BWP12T30P140 U38 ( .I(data_out[0]), .ZN(n21) );
  NR2D0BWP12T30P140 U39 ( .A1(n38), .A2(n21), .ZN(n22) );
  NR2D0BWP12T30P140 U40 ( .A1(n42), .A2(DP_OP_14J1_122_801_I3), .ZN(n41) );
  AO22D0BWP12T30P140 U41 ( .A1(n22), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[0]), .Z(DP_OP_14J1_122_801_n25) );
  INVD0BWP12T30P140 U42 ( .I(data_out[1]), .ZN(n23) );
  NR2D0BWP12T30P140 U43 ( .A1(n38), .A2(n23), .ZN(n24) );
  AO22D0BWP12T30P140 U44 ( .A1(n24), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[1]), .Z(DP_OP_14J1_122_801_n26) );
  INVD0BWP12T30P140 U45 ( .I(data_out[2]), .ZN(n25) );
  NR2D0BWP12T30P140 U46 ( .A1(n38), .A2(n25), .ZN(n26) );
  AO22D0BWP12T30P140 U47 ( .A1(n26), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[2]), .Z(DP_OP_14J1_122_801_n27) );
  INVD0BWP12T30P140 U48 ( .I(data_out[3]), .ZN(n27) );
  NR2D0BWP12T30P140 U49 ( .A1(n38), .A2(n27), .ZN(n28) );
  AO22D0BWP12T30P140 U50 ( .A1(n28), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[3]), .Z(DP_OP_14J1_122_801_n28) );
  INVD0BWP12T30P140 U51 ( .I(data_out[4]), .ZN(n29) );
  NR2D0BWP12T30P140 U52 ( .A1(n38), .A2(n29), .ZN(n30) );
  AO22D0BWP12T30P140 U53 ( .A1(n30), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[4]), .Z(DP_OP_14J1_122_801_n29) );
  INVD0BWP12T30P140 U54 ( .I(data_out[5]), .ZN(n31) );
  NR2D0BWP12T30P140 U55 ( .A1(n38), .A2(n31), .ZN(n32) );
  AO22D0BWP12T30P140 U56 ( .A1(n32), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[5]), .Z(DP_OP_14J1_122_801_n30) );
  INVD0BWP12T30P140 U57 ( .I(data_out[6]), .ZN(n33) );
  NR2D0BWP12T30P140 U58 ( .A1(n38), .A2(n33), .ZN(n34) );
  AO22D0BWP12T30P140 U59 ( .A1(n34), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[6]), .Z(DP_OP_14J1_122_801_n31) );
  INVD0BWP12T30P140 U60 ( .I(data_out[7]), .ZN(n35) );
  NR2D0BWP12T30P140 U61 ( .A1(n38), .A2(n35), .ZN(n36) );
  AO22D0BWP12T30P140 U62 ( .A1(n36), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[7]), .Z(DP_OP_14J1_122_801_n32) );
  INVD0BWP12T30P140 U63 ( .I(data_out[8]), .ZN(n37) );
  NR2D0BWP12T30P140 U64 ( .A1(n38), .A2(n37), .ZN(n39) );
  AO22D0BWP12T30P140 U65 ( .A1(n39), .A2(n41), .B1(DP_OP_14J1_122_801_I3), 
        .B2(data_out[8]), .Z(DP_OP_14J1_122_801_n33) );
  INVD0BWP12T30P140 U66 ( .I(DP_OP_14J1_122_801_I3), .ZN(n40) );
  AO22D0BWP12T30P140 U67 ( .A1(count[0]), .A2(n41), .B1(count[1]), .B2(n40), 
        .Z(n16) );
  XNR2D0BWP12T30P140 U68 ( .A1(count[0]), .A2(n42), .ZN(n15) );
endmodule

