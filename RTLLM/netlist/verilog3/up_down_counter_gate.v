/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:33:45 2026
/////////////////////////////////////////////////////////////


module up_down_counter ( clk, reset, up_down, count );
  output [15:0] count;
  input clk, reset, up_down;
  wire   n1, DP_OP_11J1_122_4364_n37, DP_OP_11J1_122_4364_n15,
         DP_OP_11J1_122_4364_n14, DP_OP_11J1_122_4364_n13,
         DP_OP_11J1_122_4364_n12, DP_OP_11J1_122_4364_n11,
         DP_OP_11J1_122_4364_n10, DP_OP_11J1_122_4364_n9,
         DP_OP_11J1_122_4364_n8, DP_OP_11J1_122_4364_n7,
         DP_OP_11J1_122_4364_n6, DP_OP_11J1_122_4364_n5,
         DP_OP_11J1_122_4364_n4, DP_OP_11J1_122_4364_n3,
         DP_OP_11J1_122_4364_n2, n3;
  wire   [15:0] next_count;

  DFCNQD1BWP12T30P140 count_reg_15_ ( .D(next_count[15]), .CP(clk), .CDN(n1), 
        .Q(count[15]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(next_count[0]), .CP(clk), .CDN(n1), 
        .Q(count[0]) );
  DFCNQD1BWP12T30P140 count_reg_14_ ( .D(next_count[14]), .CP(clk), .CDN(n1), 
        .Q(count[14]) );
  DFCNQD1BWP12T30P140 count_reg_13_ ( .D(next_count[13]), .CP(clk), .CDN(n1), 
        .Q(count[13]) );
  DFCNQD1BWP12T30P140 count_reg_12_ ( .D(next_count[12]), .CP(clk), .CDN(n1), 
        .Q(count[12]) );
  DFCNQD1BWP12T30P140 count_reg_11_ ( .D(next_count[11]), .CP(clk), .CDN(n1), 
        .Q(count[11]) );
  DFCNQD1BWP12T30P140 count_reg_10_ ( .D(next_count[10]), .CP(clk), .CDN(n1), 
        .Q(count[10]) );
  DFCNQD1BWP12T30P140 count_reg_9_ ( .D(next_count[9]), .CP(clk), .CDN(n1), 
        .Q(count[9]) );
  DFCNQD1BWP12T30P140 count_reg_8_ ( .D(next_count[8]), .CP(clk), .CDN(n1), 
        .Q(count[8]) );
  DFCNQD1BWP12T30P140 count_reg_7_ ( .D(next_count[7]), .CP(clk), .CDN(n1), 
        .Q(count[7]) );
  DFCNQD1BWP12T30P140 count_reg_6_ ( .D(next_count[6]), .CP(clk), .CDN(n1), 
        .Q(count[6]) );
  DFCNQD1BWP12T30P140 count_reg_5_ ( .D(next_count[5]), .CP(clk), .CDN(n1), 
        .Q(count[5]) );
  DFCNQD1BWP12T30P140 count_reg_4_ ( .D(next_count[4]), .CP(clk), .CDN(n1), 
        .Q(count[4]) );
  DFCNQD1BWP12T30P140 count_reg_3_ ( .D(next_count[3]), .CP(clk), .CDN(n1), 
        .Q(count[3]) );
  DFCNQD1BWP12T30P140 count_reg_2_ ( .D(next_count[2]), .CP(clk), .CDN(n1), 
        .Q(count[2]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(next_count[1]), .CP(clk), .CDN(n1), 
        .Q(count[1]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U16 ( .A(count[1]), .B(
        DP_OP_11J1_122_4364_n37), .CI(count[0]), .CO(DP_OP_11J1_122_4364_n15), 
        .S(next_count[1]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U15 ( .A(count[2]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n15), .CO(
        DP_OP_11J1_122_4364_n14), .S(next_count[2]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U14 ( .A(count[3]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n14), .CO(
        DP_OP_11J1_122_4364_n13), .S(next_count[3]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U13 ( .A(count[4]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n13), .CO(
        DP_OP_11J1_122_4364_n12), .S(next_count[4]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U12 ( .A(count[5]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n12), .CO(
        DP_OP_11J1_122_4364_n11), .S(next_count[5]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U11 ( .A(count[6]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n11), .CO(
        DP_OP_11J1_122_4364_n10), .S(next_count[6]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U10 ( .A(count[7]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n10), .CO(
        DP_OP_11J1_122_4364_n9), .S(next_count[7]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U9 ( .A(count[8]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n9), .CO(
        DP_OP_11J1_122_4364_n8), .S(next_count[8]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U8 ( .A(count[9]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n8), .CO(
        DP_OP_11J1_122_4364_n7), .S(next_count[9]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U7 ( .A(count[10]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n7), .CO(
        DP_OP_11J1_122_4364_n6), .S(next_count[10]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U6 ( .A(count[11]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n6), .CO(
        DP_OP_11J1_122_4364_n5), .S(next_count[11]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U5 ( .A(count[12]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n5), .CO(
        DP_OP_11J1_122_4364_n4), .S(next_count[12]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U4 ( .A(count[13]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n4), .CO(
        DP_OP_11J1_122_4364_n3), .S(next_count[13]) );
  FA1D1BWP12T30P140 DP_OP_11J1_122_4364_U3 ( .A(count[14]), .B(
        DP_OP_11J1_122_4364_n37), .CI(DP_OP_11J1_122_4364_n3), .CO(
        DP_OP_11J1_122_4364_n2), .S(next_count[14]) );
  INVD0BWP12T30P140 U5 ( .I(up_down), .ZN(DP_OP_11J1_122_4364_n37) );
  INVD0BWP12T30P140 U6 ( .I(count[0]), .ZN(next_count[0]) );
  INVD0BWP12T30P140 U7 ( .I(reset), .ZN(n1) );
  CKXOR2D0BWP12T30P140 U8 ( .A1(DP_OP_11J1_122_4364_n37), .A2(count[15]), .Z(
        n3) );
  CKXOR2D0BWP12T30P140 U9 ( .A1(n3), .A2(DP_OP_11J1_122_4364_n2), .Z(
        next_count[15]) );
endmodule

