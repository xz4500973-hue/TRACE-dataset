/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:55:29 2026
/////////////////////////////////////////////////////////////


module synchronizer ( clk_a, clk_b, arstn, brstn, data_in, data_en, dataout );
  input [3:0] data_in;
  output [3:0] dataout;
  input clk_a, clk_b, arstn, brstn, data_en;
  wire   ack_a, ack_s1, ack_s2, req, req_s1, req_s2, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13;
  wire   [3:0] data_a;

  DFCNQD1BWP12T30P140 ack_a_reg ( .D(req_s2), .CP(clk_b), .CDN(brstn), .Q(
        ack_a) );
  DFCNQD1BWP12T30P140 dataout_reg_0_ ( .D(n8), .CP(clk_b), .CDN(brstn), .Q(
        dataout[0]) );
  DFCNQD1BWP12T30P140 dataout_reg_3_ ( .D(n4), .CP(clk_b), .CDN(brstn), .Q(
        dataout[3]) );
  DFCNQD1BWP12T30P140 dataout_reg_2_ ( .D(n3), .CP(clk_b), .CDN(brstn), .Q(
        dataout[2]) );
  DFCNQD1BWP12T30P140 dataout_reg_1_ ( .D(n2), .CP(clk_b), .CDN(brstn), .Q(
        dataout[1]) );
  DFCNQD1BWP12T30P140 data_a_reg_0_ ( .D(n9), .CP(clk_a), .CDN(arstn), .Q(
        data_a[0]) );
  DFCNQD1BWP12T30P140 data_a_reg_3_ ( .D(n7), .CP(clk_a), .CDN(arstn), .Q(
        data_a[3]) );
  DFCNQD1BWP12T30P140 data_a_reg_2_ ( .D(n6), .CP(clk_a), .CDN(arstn), .Q(
        data_a[2]) );
  DFCNQD1BWP12T30P140 data_a_reg_1_ ( .D(n5), .CP(clk_a), .CDN(arstn), .Q(
        data_a[1]) );
  DFQD2BWP12T30P140 ack_s2_reg ( .D(n10), .CP(clk_a), .Q(ack_s2) );
  DFCNQD1BWP12T30P140 req_s1_reg ( .D(req), .CP(clk_b), .CDN(brstn), .Q(req_s1) );
  DFCNQD1BWP12T30P140 req_reg ( .D(n12), .CP(clk_a), .CDN(arstn), .Q(req) );
  DFCNQD1BWP12T30P140 req_s2_reg ( .D(req_s1), .CP(clk_b), .CDN(brstn), .Q(
        req_s2) );
  DFQD1BWP12T30P140 ack_s1_reg ( .D(n11), .CP(clk_a), .Q(ack_s1) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(dataout[3]), .I1(data_a[3]), .S(req_s2), .Z(
        n4) );
  CKMUX2D0BWP12T30P140 U16 ( .I0(dataout[2]), .I1(data_a[2]), .S(req_s2), .Z(
        n3) );
  CKMUX2D0BWP12T30P140 U17 ( .I0(dataout[1]), .I1(data_a[1]), .S(req_s2), .Z(
        n2) );
  IND2D1BWP12T30P140 U18 ( .A1(req), .B1(data_en), .ZN(n13) );
  CKMUX2D0BWP12T30P140 U19 ( .I0(data_in[0]), .I1(data_a[0]), .S(n13), .Z(n9)
         );
  CKMUX2D0BWP12T30P140 U20 ( .I0(data_in[3]), .I1(data_a[3]), .S(n13), .Z(n7)
         );
  CKMUX2D0BWP12T30P140 U21 ( .I0(dataout[0]), .I1(data_a[0]), .S(req_s2), .Z(
        n8) );
  CKMUX2D0BWP12T30P140 U22 ( .I0(data_in[2]), .I1(data_a[2]), .S(n13), .Z(n6)
         );
  CKMUX2D0BWP12T30P140 U23 ( .I0(data_in[1]), .I1(data_a[1]), .S(n13), .Z(n5)
         );
  CKMUX2D0BWP12T30P140 U24 ( .I0(ack_s2), .I1(ack_s1), .S(arstn), .Z(n10) );
  CKMUX2D0BWP12T30P140 U25 ( .I0(ack_s1), .I1(ack_a), .S(arstn), .Z(n11) );
  IAO21D0BWP12T30P140 U26 ( .A1(req), .A2(data_en), .B(ack_s2), .ZN(n12) );
endmodule

