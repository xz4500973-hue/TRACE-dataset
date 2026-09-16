/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:18:27 2026
/////////////////////////////////////////////////////////////


module synchronizer ( clk_a, clk_b, arstn, brstn, data_in, data_en, dataout );
  input [3:0] data_in;
  output [3:0] dataout;
  input clk_a, clk_b, arstn, brstn, data_en;
  wire   en_reg, n1, n2, n3, n4;
  wire   [3:0] data_reg;
  wire   [0:1] en_sync;
  wire   [7:0] data_sync;

  DFCNQD1BWP12T30P140 data_sync_reg_1__3_ ( .D(data_sync[7]), .CP(clk_b), 
        .CDN(brstn), .Q(data_sync[3]) );
  DFCNQD1BWP12T30P140 data_sync_reg_1__2_ ( .D(data_sync[6]), .CP(clk_b), 
        .CDN(brstn), .Q(data_sync[2]) );
  DFCNQD1BWP12T30P140 data_sync_reg_1__1_ ( .D(data_sync[5]), .CP(clk_b), 
        .CDN(brstn), .Q(data_sync[1]) );
  DFCNQD1BWP12T30P140 data_sync_reg_1__0_ ( .D(data_sync[4]), .CP(clk_b), 
        .CDN(brstn), .Q(data_sync[0]) );
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
  DFCNQD1BWP12T30P140 data_sync_reg_0__3_ ( .D(data_reg[3]), .CP(clk_b), .CDN(
        brstn), .Q(data_sync[7]) );
  DFCNQD1BWP12T30P140 data_sync_reg_0__2_ ( .D(data_reg[2]), .CP(clk_b), .CDN(
        brstn), .Q(data_sync[6]) );
  DFCNQD1BWP12T30P140 data_sync_reg_0__1_ ( .D(data_reg[1]), .CP(clk_b), .CDN(
        brstn), .Q(data_sync[5]) );
  DFCNQD1BWP12T30P140 data_sync_reg_0__0_ ( .D(data_reg[0]), .CP(clk_b), .CDN(
        brstn), .Q(data_sync[4]) );
  DFCNQD1BWP12T30P140 en_sync_reg_0_ ( .D(en_reg), .CP(clk_b), .CDN(brstn), 
        .Q(en_sync[0]) );
  DFCNQD1BWP12T30P140 en_sync_reg_1_ ( .D(en_sync[0]), .CP(clk_b), .CDN(brstn), 
        .Q(en_sync[1]) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(dataout[2]), .I1(data_sync[2]), .S(en_sync[1]), 
        .Z(n1) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(dataout[0]), .I1(data_sync[0]), .S(en_sync[1]), 
        .Z(n3) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(dataout[3]), .I1(data_sync[3]), .S(en_sync[1]), 
        .Z(n4) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(dataout[1]), .I1(data_sync[1]), .S(en_sync[1]), .Z(n2) );
endmodule

