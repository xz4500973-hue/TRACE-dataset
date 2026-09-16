/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:05:06 2026
/////////////////////////////////////////////////////////////


module pulse_detect ( clk, rst_n, data_in, data_out );
  input clk, rst_n, data_in;
  output data_out;
  wire   N14, N15, n1;
  wire   [1:0] state;

  DFCNQD1BWP12T30P140 data_out_reg ( .D(N15), .CP(clk), .CDN(rst_n), .Q(
        data_out) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N14), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n1), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  INVD0BWP12T30P140 U6 ( .I(data_in), .ZN(n1) );
  INR3D1BWP12T30P140 U7 ( .A1(state[1]), .B1(data_in), .B2(state[0]), .ZN(N15)
         );
  AO21D0BWP12T30P140 U8 ( .A1(state[0]), .A2(data_in), .B(N15), .Z(N14) );
endmodule

