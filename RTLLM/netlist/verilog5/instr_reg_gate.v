/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:08:20 2026
/////////////////////////////////////////////////////////////


module instr_reg ( clk, rst, fetch, data, ins, ad1, ad2 );
  input [1:0] fetch;
  input [7:0] data;
  output [2:0] ins;
  output [4:0] ad1;
  output [7:0] ad2;
  input clk, rst;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20;

  DFCNQD1BWP12T30P140 ins_p1_reg_7_ ( .D(n18), .CP(clk), .CDN(rst), .Q(ins[2])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_6_ ( .D(n17), .CP(clk), .CDN(rst), .Q(ins[1])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_5_ ( .D(n16), .CP(clk), .CDN(rst), .Q(ins[0])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_4_ ( .D(n15), .CP(clk), .CDN(rst), .Q(ad1[4])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_3_ ( .D(n14), .CP(clk), .CDN(rst), .Q(ad1[3])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_2_ ( .D(n13), .CP(clk), .CDN(rst), .Q(ad1[2])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_1_ ( .D(n12), .CP(clk), .CDN(rst), .Q(ad1[1])
         );
  DFCNQD1BWP12T30P140 ins_p1_reg_0_ ( .D(n11), .CP(clk), .CDN(rst), .Q(ad1[0])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_7_ ( .D(n10), .CP(clk), .CDN(rst), .Q(ad2[7])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_6_ ( .D(n9), .CP(clk), .CDN(rst), .Q(ad2[6])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_5_ ( .D(n8), .CP(clk), .CDN(rst), .Q(ad2[5])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_4_ ( .D(n7), .CP(clk), .CDN(rst), .Q(ad2[4])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_3_ ( .D(n6), .CP(clk), .CDN(rst), .Q(ad2[3])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_2_ ( .D(n5), .CP(clk), .CDN(rst), .Q(ad2[2])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_1_ ( .D(n4), .CP(clk), .CDN(rst), .Q(ad2[1])
         );
  DFCNQD1BWP12T30P140 ins_p2_reg_0_ ( .D(n3), .CP(clk), .CDN(rst), .Q(ad2[0])
         );
  INR2D1BWP12T30P140 U20 ( .A1(fetch[1]), .B1(fetch[0]), .ZN(n20) );
  CKMUX2D0BWP12T30P140 U21 ( .I0(ad2[0]), .I1(data[0]), .S(n20), .Z(n3) );
  INR2D1BWP12T30P140 U22 ( .A1(fetch[0]), .B1(fetch[1]), .ZN(n19) );
  CKMUX2D0BWP12T30P140 U23 ( .I0(ins[1]), .I1(data[6]), .S(n19), .Z(n17) );
  CKMUX2D0BWP12T30P140 U24 ( .I0(ins[0]), .I1(data[5]), .S(n19), .Z(n16) );
  CKMUX2D0BWP12T30P140 U25 ( .I0(ad1[4]), .I1(data[4]), .S(n19), .Z(n15) );
  CKMUX2D0BWP12T30P140 U26 ( .I0(ad1[3]), .I1(data[3]), .S(n19), .Z(n14) );
  CKMUX2D0BWP12T30P140 U27 ( .I0(ad1[2]), .I1(data[2]), .S(n19), .Z(n13) );
  CKMUX2D0BWP12T30P140 U28 ( .I0(ad1[1]), .I1(data[1]), .S(n19), .Z(n12) );
  CKMUX2D0BWP12T30P140 U29 ( .I0(ad1[0]), .I1(data[0]), .S(n19), .Z(n11) );
  CKMUX2D0BWP12T30P140 U30 ( .I0(ins[2]), .I1(data[7]), .S(n19), .Z(n18) );
  CKMUX2D0BWP12T30P140 U31 ( .I0(ad2[7]), .I1(data[7]), .S(n20), .Z(n10) );
  CKMUX2D0BWP12T30P140 U32 ( .I0(ad2[6]), .I1(data[6]), .S(n20), .Z(n9) );
  CKMUX2D0BWP12T30P140 U33 ( .I0(ad2[5]), .I1(data[5]), .S(n20), .Z(n8) );
  CKMUX2D0BWP12T30P140 U34 ( .I0(ad2[4]), .I1(data[4]), .S(n20), .Z(n7) );
  CKMUX2D0BWP12T30P140 U35 ( .I0(ad2[3]), .I1(data[3]), .S(n20), .Z(n6) );
  CKMUX2D0BWP12T30P140 U36 ( .I0(ad2[2]), .I1(data[2]), .S(n20), .Z(n5) );
  CKMUX2D0BWP12T30P140 U37 ( .I0(ad2[1]), .I1(data[1]), .S(n20), .Z(n4) );
endmodule

