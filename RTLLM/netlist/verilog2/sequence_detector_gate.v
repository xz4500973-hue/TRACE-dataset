/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:07:54 2026
/////////////////////////////////////////////////////////////


module sequence_detector ( clk, rst_n, data_in, sequence_detected );
  input clk, rst_n, data_in;
  output sequence_detected;
  wire   N27, N28, N29, n6, n7, n8, n9;
  wire   [2:0] state;

  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(N29), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N28), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  MAOI222D0BWP12T30P140 U11 ( .A(state[1]), .B(state[2]), .C(state[0]), .ZN(n6) );
  OA21D0BWP12T30P140 U12 ( .A1(state[1]), .A2(data_in), .B(n6), .Z(N27) );
  NR2D0BWP12T30P140 U13 ( .A1(state[2]), .A2(state[0]), .ZN(n8) );
  INVD0BWP12T30P140 U14 ( .I(state[1]), .ZN(n9) );
  INVD0BWP12T30P140 U15 ( .I(n6), .ZN(n7) );
  AOI211D0BWP12T30P140 U16 ( .A1(n8), .A2(n9), .B(data_in), .C(n7), .ZN(N28)
         );
  IINR4D0BWP12T30P140 U17 ( .A1(state[0]), .A2(data_in), .B1(state[2]), .B2(n9), .ZN(N29) );
  INR3D1BWP12T30P140 U18 ( .A1(state[2]), .B1(state[1]), .B2(state[0]), .ZN(
        sequence_detected) );
endmodule

