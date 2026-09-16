/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:11:42 2026
/////////////////////////////////////////////////////////////


module width_8to16 ( clk, rst_n, valid_in, data_in, valid_out, data_out );
  input [7:0] data_in;
  output [15:0] data_out;
  input clk, rst_n, valid_in;
  output valid_out;
  wire   flag, N6, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31;
  wire   [7:0] data_lock;

  DFCNQD1BWP12T30P140 flag_reg ( .D(n3), .CP(clk), .CDN(rst_n), .Q(flag) );
  DFCNQD1BWP12T30P140 data_out_reg_0_ ( .D(n27), .CP(clk), .CDN(rst_n), .Q(
        data_out[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_1_ ( .D(n26), .CP(clk), .CDN(rst_n), .Q(
        data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_13_ ( .D(n14), .CP(clk), .CDN(n30), .Q(
        data_out[13]) );
  DFCNQD1BWP12T30P140 data_out_reg_12_ ( .D(n12), .CP(clk), .CDN(n30), .Q(
        data_out[12]) );
  DFCNQD1BWP12T30P140 data_out_reg_11_ ( .D(n10), .CP(clk), .CDN(n30), .Q(
        data_out[11]) );
  DFCNQD1BWP12T30P140 data_out_reg_10_ ( .D(n8), .CP(clk), .CDN(n30), .Q(
        data_out[10]) );
  DFCNQD1BWP12T30P140 data_out_reg_9_ ( .D(n6), .CP(clk), .CDN(n30), .Q(
        data_out[9]) );
  DFCNQD1BWP12T30P140 data_out_reg_8_ ( .D(n4), .CP(clk), .CDN(n30), .Q(
        data_out[8]) );
  DFCNQD1BWP12T30P140 valid_out_reg ( .D(N6), .CP(n31), .CDN(rst_n), .Q(
        valid_out) );
  DFCNQD1BWP12T30P140 data_lock_reg_4_ ( .D(n13), .CP(clk), .CDN(n30), .Q(
        data_lock[4]) );
  DFCNQD1BWP12T30P140 data_lock_reg_3_ ( .D(n11), .CP(clk), .CDN(n30), .Q(
        data_lock[3]) );
  DFCNQD1BWP12T30P140 data_lock_reg_2_ ( .D(n9), .CP(clk), .CDN(n30), .Q(
        data_lock[2]) );
  DFCNQD1BWP12T30P140 data_lock_reg_1_ ( .D(n7), .CP(clk), .CDN(n30), .Q(
        data_lock[1]) );
  DFCNQD1BWP12T30P140 data_lock_reg_0_ ( .D(n5), .CP(clk), .CDN(n30), .Q(
        data_lock[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_2_ ( .D(n25), .CP(n31), .CDN(rst_n), .Q(
        data_out[2]) );
  DFCNQD1BWP12T30P140 data_out_reg_3_ ( .D(n24), .CP(n31), .CDN(rst_n), .Q(
        data_out[3]) );
  DFCNQD1BWP12T30P140 data_out_reg_4_ ( .D(n23), .CP(n31), .CDN(rst_n), .Q(
        data_out[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_5_ ( .D(n22), .CP(n31), .CDN(rst_n), .Q(
        data_out[5]) );
  DFCNQD1BWP12T30P140 data_out_reg_6_ ( .D(n21), .CP(n31), .CDN(rst_n), .Q(
        data_out[6]) );
  DFCNQD1BWP12T30P140 data_out_reg_7_ ( .D(n20), .CP(n31), .CDN(rst_n), .Q(
        data_out[7]) );
  DFCNQD1BWP12T30P140 data_out_reg_15_ ( .D(n18), .CP(n31), .CDN(rst_n), .Q(
        data_out[15]) );
  DFCNQD1BWP12T30P140 data_out_reg_14_ ( .D(n16), .CP(n31), .CDN(n30), .Q(
        data_out[14]) );
  DFCNQD1BWP12T30P140 data_lock_reg_7_ ( .D(n19), .CP(n31), .CDN(rst_n), .Q(
        data_lock[7]) );
  DFCNQD1BWP12T30P140 data_lock_reg_6_ ( .D(n17), .CP(n31), .CDN(rst_n), .Q(
        data_lock[6]) );
  DFCNQD1BWP12T30P140 data_lock_reg_5_ ( .D(n15), .CP(n31), .CDN(n30), .Q(
        data_lock[5]) );
  INVD0BWP12T30P140 U31 ( .I(flag), .ZN(n28) );
  INR2D1BWP12T30P140 U32 ( .A1(valid_in), .B1(n28), .ZN(N6) );
  CKMUX2D0BWP12T30P140 U33 ( .I0(data_out[0]), .I1(data_in[0]), .S(N6), .Z(n27) );
  CKMUX2D0BWP12T30P140 U34 ( .I0(data_out[1]), .I1(data_in[1]), .S(N6), .Z(n26) );
  ND2D0BWP12T30P140 U35 ( .A1(n28), .A2(valid_in), .ZN(n29) );
  CKMUX2D0BWP12T30P140 U36 ( .I0(data_in[5]), .I1(data_lock[5]), .S(n29), .Z(
        n15) );
  CKMUX2D0BWP12T30P140 U37 ( .I0(data_out[13]), .I1(data_lock[5]), .S(N6), .Z(
        n14) );
  CKMUX2D0BWP12T30P140 U38 ( .I0(data_in[6]), .I1(data_lock[6]), .S(n29), .Z(
        n17) );
  CKMUX2D0BWP12T30P140 U39 ( .I0(data_out[12]), .I1(data_lock[4]), .S(N6), .Z(
        n12) );
  CKMUX2D0BWP12T30P140 U40 ( .I0(data_in[7]), .I1(data_lock[7]), .S(n29), .Z(
        n19) );
  CKMUX2D0BWP12T30P140 U41 ( .I0(data_out[11]), .I1(data_lock[3]), .S(N6), .Z(
        n10) );
  CKMUX2D0BWP12T30P140 U42 ( .I0(data_out[10]), .I1(data_lock[2]), .S(N6), .Z(
        n8) );
  CKMUX2D0BWP12T30P140 U43 ( .I0(data_out[14]), .I1(data_lock[6]), .S(N6), .Z(
        n16) );
  CKMUX2D0BWP12T30P140 U44 ( .I0(data_out[9]), .I1(data_lock[1]), .S(N6), .Z(
        n6) );
  CKMUX2D0BWP12T30P140 U45 ( .I0(data_out[15]), .I1(data_lock[7]), .S(N6), .Z(
        n18) );
  OAI21D0BWP12T30P140 U46 ( .A1(valid_in), .A2(n28), .B(n29), .ZN(n3) );
  CKMUX2D0BWP12T30P140 U47 ( .I0(data_out[7]), .I1(data_in[7]), .S(N6), .Z(n20) );
  CKMUX2D0BWP12T30P140 U48 ( .I0(data_out[8]), .I1(data_lock[0]), .S(N6), .Z(
        n4) );
  CKMUX2D0BWP12T30P140 U49 ( .I0(data_out[6]), .I1(data_in[6]), .S(N6), .Z(n21) );
  CKMUX2D0BWP12T30P140 U50 ( .I0(data_out[5]), .I1(data_in[5]), .S(N6), .Z(n22) );
  CKMUX2D0BWP12T30P140 U51 ( .I0(data_out[2]), .I1(data_in[2]), .S(N6), .Z(n25) );
  CKMUX2D0BWP12T30P140 U52 ( .I0(data_out[4]), .I1(data_in[4]), .S(N6), .Z(n23) );
  CKMUX2D0BWP12T30P140 U53 ( .I0(data_in[4]), .I1(data_lock[4]), .S(n29), .Z(
        n13) );
  CKMUX2D0BWP12T30P140 U54 ( .I0(data_out[3]), .I1(data_in[3]), .S(N6), .Z(n24) );
  CKMUX2D0BWP12T30P140 U55 ( .I0(data_in[3]), .I1(data_lock[3]), .S(n29), .Z(
        n11) );
  CKMUX2D0BWP12T30P140 U56 ( .I0(data_in[0]), .I1(data_lock[0]), .S(n29), .Z(
        n5) );
  CKMUX2D0BWP12T30P140 U57 ( .I0(data_in[2]), .I1(data_lock[2]), .S(n29), .Z(
        n9) );
  CKMUX2D0BWP12T30P140 U58 ( .I0(data_in[1]), .I1(data_lock[1]), .S(n29), .Z(
        n7) );
  CKBD0BWP12T30P140 U59 ( .I(clk), .Z(n31) );
  CKBD0BWP12T30P140 U60 ( .I(rst_n), .Z(n30) );
endmodule

