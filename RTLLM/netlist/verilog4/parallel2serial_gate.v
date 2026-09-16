/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:49:38 2026
/////////////////////////////////////////////////////////////


module parallel2serial ( clk, rst_n, d, valid_out, dout );
  input [3:0] d;
  input clk, rst_n;
  output valid_out, dout;
  wire   N6, N7, N8, N9, N10, N11;
  wire   [2:0] sr;
  wire   [1:0] phase;

  DFSNQD1BWP12T30P140 phase_reg_0_ ( .D(N10), .CP(clk), .SDN(rst_n), .Q(
        phase[0]) );
  DFSNQD1BWP12T30P140 phase_reg_1_ ( .D(N11), .CP(clk), .SDN(rst_n), .Q(
        phase[1]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(N9), .CP(clk), .CDN(rst_n), .Q(dout) );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(N6), .CP(clk), .CDN(rst_n), .Q(sr[0]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(N7), .CP(clk), .CDN(rst_n), .Q(sr[1]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(N8), .CP(clk), .CDN(rst_n), .Q(sr[2]) );
  INVD0BWP12T30P140 U10 ( .I(phase[0]), .ZN(N10) );
  AN2D0BWP12T30P140 U11 ( .A1(phase[1]), .A2(phase[0]), .Z(valid_out) );
  CKMUX2D0BWP12T30P140 U12 ( .I0(sr[2]), .I1(d[3]), .S(valid_out), .Z(N9) );
  CKMUX2D0BWP12T30P140 U13 ( .I0(sr[1]), .I1(d[2]), .S(valid_out), .Z(N8) );
  AN2D0BWP12T30P140 U14 ( .A1(valid_out), .A2(d[0]), .Z(N6) );
  CKMUX2D0BWP12T30P140 U15 ( .I0(sr[0]), .I1(d[1]), .S(valid_out), .Z(N7) );
  IAO21D0BWP12T30P140 U16 ( .A1(phase[0]), .A2(phase[1]), .B(valid_out), .ZN(
        N11) );
endmodule

