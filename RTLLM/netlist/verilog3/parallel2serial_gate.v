/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:27:19 2026
/////////////////////////////////////////////////////////////


module parallel2serial ( clk, rst_n, d, valid_out, dout );
  input [3:0] d;
  input clk, rst_n;
  output valid_out, dout;
  wire   N7, N8, N9, N10, N11, N12, N13;
  wire   [1:0] cnt;
  wire   [2:0] data;

  DFCNQD1BWP12T30P140 data_reg_3_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(dout)
         );
  DFCNQD1BWP12T30P140 valid_reg ( .D(N13), .CP(clk), .CDN(rst_n), .Q(valid_out) );
  DFCNQD1BWP12T30P140 data_reg_0_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(data[0])
         );
  DFCNQD1BWP12T30P140 data_reg_1_ ( .D(N10), .CP(clk), .CDN(rst_n), .Q(data[1]) );
  DFCNQD1BWP12T30P140 data_reg_2_ ( .D(N11), .CP(clk), .CDN(rst_n), .Q(data[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(cnt[1])
         );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N7), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U10 ( .I(cnt[0]), .ZN(N7) );
  AN2D0BWP12T30P140 U11 ( .A1(cnt[1]), .A2(cnt[0]), .Z(N13) );
  AN2D0BWP12T30P140 U12 ( .A1(N13), .A2(d[0]), .Z(N9) );
  CKMUX2D0BWP12T30P140 U13 ( .I0(data[0]), .I1(d[1]), .S(N13), .Z(N10) );
  CKMUX2D0BWP12T30P140 U14 ( .I0(data[2]), .I1(d[3]), .S(N13), .Z(N12) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(data[1]), .I1(d[2]), .S(N13), .Z(N11) );
  IAO21D0BWP12T30P140 U16 ( .A1(cnt[0]), .A2(cnt[1]), .B(N13), .ZN(N8) );
endmodule

