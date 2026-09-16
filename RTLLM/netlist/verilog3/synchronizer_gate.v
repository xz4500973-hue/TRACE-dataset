/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 15:03:01 2026
/////////////////////////////////////////////////////////////


module synchronizer ( clk_a, clk_b, arstn, brstn, data_in, data_en, dataout );
  input [3:0] data_in;
  output [3:0] dataout;
  input clk_a, clk_b, arstn, brstn, data_en;
  wire   n1, n2, n3, n4;
  wire   [4:0] bus_s1;
  wire   [4:0] bus_s2;

  DFCNQD1BWP12T30P140 bus_s2_reg_3_ ( .D(bus_s1[3]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s2[3]) );
  DFCNQD1BWP12T30P140 bus_s2_reg_2_ ( .D(bus_s1[2]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s2[2]) );
  DFCNQD1BWP12T30P140 bus_s2_reg_1_ ( .D(bus_s1[1]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s2[1]) );
  DFCNQD1BWP12T30P140 bus_s2_reg_0_ ( .D(bus_s1[0]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s2[0]) );
  DFCNQD1BWP12T30P140 dataout_reg_3_ ( .D(n4), .CP(clk_b), .CDN(brstn), .Q(
        dataout[3]) );
  DFCNQD1BWP12T30P140 dataout_reg_2_ ( .D(n3), .CP(clk_b), .CDN(brstn), .Q(
        dataout[2]) );
  DFCNQD1BWP12T30P140 dataout_reg_1_ ( .D(n2), .CP(clk_b), .CDN(brstn), .Q(
        dataout[1]) );
  DFCNQD1BWP12T30P140 dataout_reg_0_ ( .D(n1), .CP(clk_b), .CDN(brstn), .Q(
        dataout[0]) );
  DFCNQD1BWP12T30P140 bus_s1_reg_4_ ( .D(data_en), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s1[4]) );
  DFCNQD1BWP12T30P140 bus_s1_reg_3_ ( .D(data_in[3]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s1[3]) );
  DFCNQD1BWP12T30P140 bus_s1_reg_2_ ( .D(data_in[2]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s1[2]) );
  DFCNQD1BWP12T30P140 bus_s1_reg_1_ ( .D(data_in[1]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s1[1]) );
  DFCNQD1BWP12T30P140 bus_s1_reg_0_ ( .D(data_in[0]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s1[0]) );
  DFCNQD1BWP12T30P140 bus_s2_reg_4_ ( .D(bus_s1[4]), .CP(clk_b), .CDN(brstn), 
        .Q(bus_s2[4]) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(dataout[0]), .I1(bus_s2[0]), .S(bus_s2[4]), 
        .Z(n1) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(dataout[2]), .I1(bus_s2[2]), .S(bus_s2[4]), 
        .Z(n3) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(dataout[3]), .I1(bus_s2[3]), .S(bus_s2[4]), 
        .Z(n4) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(dataout[1]), .I1(bus_s2[1]), .S(bus_s2[4]), 
        .Z(n2) );
endmodule

