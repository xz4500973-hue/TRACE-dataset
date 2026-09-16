/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:10:17 2026
/////////////////////////////////////////////////////////////


module synchronizer ( clk_a, clk_b, arstn, brstn, data_in, data_en, dataout );
  input [3:0] data_in;
  output [3:0] dataout;
  input clk_a, clk_b, arstn, brstn, data_en;
  wire   en_reg, en_s1, en_s2, n1, n2, n3, n4;
  wire   [3:0] data_reg;
  wire   [3:0] data_s1;
  wire   [3:0] data_s2;

  DFCNQD1BWP12T30P140 data_s2_reg_3_ ( .D(data_s1[3]), .CP(clk_b), .CDN(brstn), 
        .Q(data_s2[3]) );
  DFCNQD1BWP12T30P140 data_s2_reg_2_ ( .D(data_s1[2]), .CP(clk_b), .CDN(brstn), 
        .Q(data_s2[2]) );
  DFCNQD1BWP12T30P140 data_s2_reg_1_ ( .D(data_s1[1]), .CP(clk_b), .CDN(brstn), 
        .Q(data_s2[1]) );
  DFCNQD1BWP12T30P140 data_s2_reg_0_ ( .D(data_s1[0]), .CP(clk_b), .CDN(brstn), 
        .Q(data_s2[0]) );
  DFCNQD1BWP12T30P140 dataout_reg_3_ ( .D(n4), .CP(clk_b), .CDN(brstn), .Q(
        dataout[3]) );
  DFCNQD1BWP12T30P140 dataout_reg_0_ ( .D(n3), .CP(clk_b), .CDN(brstn), .Q(
        dataout[0]) );
  DFCNQD1BWP12T30P140 dataout_reg_1_ ( .D(n2), .CP(clk_b), .CDN(brstn), .Q(
        dataout[1]) );
  DFCNQD1BWP12T30P140 dataout_reg_2_ ( .D(n1), .CP(clk_b), .CDN(brstn), .Q(
        dataout[2]) );
  DFCNQD1BWP12T30P140 data_reg_reg_3_ ( .D(data_in[3]), .CP(clk_a), .CDN(arstn), .Q(data_reg[3]) );
  DFCNQD1BWP12T30P140 data_reg_reg_2_ ( .D(data_in[2]), .CP(clk_a), .CDN(arstn), .Q(data_reg[2]) );
  DFCNQD1BWP12T30P140 data_reg_reg_1_ ( .D(data_in[1]), .CP(clk_a), .CDN(arstn), .Q(data_reg[1]) );
  DFCNQD1BWP12T30P140 data_reg_reg_0_ ( .D(data_in[0]), .CP(clk_a), .CDN(arstn), .Q(data_reg[0]) );
  DFCNQD1BWP12T30P140 en_reg_reg ( .D(data_en), .CP(clk_a), .CDN(arstn), .Q(
        en_reg) );
  DFCNQD1BWP12T30P140 data_s1_reg_3_ ( .D(data_reg[3]), .CP(clk_b), .CDN(brstn), .Q(data_s1[3]) );
  DFCNQD1BWP12T30P140 data_s1_reg_2_ ( .D(data_reg[2]), .CP(clk_b), .CDN(brstn), .Q(data_s1[2]) );
  DFCNQD1BWP12T30P140 data_s1_reg_1_ ( .D(data_reg[1]), .CP(clk_b), .CDN(brstn), .Q(data_s1[1]) );
  DFCNQD1BWP12T30P140 data_s1_reg_0_ ( .D(data_reg[0]), .CP(clk_b), .CDN(brstn), .Q(data_s1[0]) );
  DFCNQD1BWP12T30P140 en_s1_reg ( .D(en_reg), .CP(clk_b), .CDN(brstn), .Q(
        en_s1) );
  DFCNQD1BWP12T30P140 en_s2_reg ( .D(en_s1), .CP(clk_b), .CDN(brstn), .Q(en_s2) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(dataout[2]), .I1(data_s2[2]), .S(en_s2), .Z(n1) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(dataout[0]), .I1(data_s2[0]), .S(en_s2), .Z(n3) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(dataout[3]), .I1(data_s2[3]), .S(en_s2), .Z(n4) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(dataout[1]), .I1(data_s2[1]), .S(en_s2), .Z(
        n2) );
endmodule

