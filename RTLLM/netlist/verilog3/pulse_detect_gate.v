/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:28:18 2026
/////////////////////////////////////////////////////////////


module pulse_detect ( clk, rst_n, data_in, data_out );
  input clk, rst_n, data_in;
  output data_out;
  wire   match, n2;
  wire   [1:0] state;
  wire   [1:0] next_state;

  DFCNQD1BWP12T30P140 data_out_reg ( .D(match), .CP(clk), .CDN(rst_n), .Q(
        data_out) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(rst_n), 
        .Q(state[1]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(next_state[0]), .CP(clk), .CDN(rst_n), 
        .Q(state[0]) );
  NR2D0BWP12T30P140 U7 ( .A1(data_in), .A2(state[1]), .ZN(next_state[0]) );
  INVD0BWP12T30P140 U8 ( .I(state[1]), .ZN(n2) );
  NR3D0BWP12T30P140 U9 ( .A1(data_in), .A2(state[0]), .A3(n2), .ZN(match) );
  AO31D0BWP12T30P140 U10 ( .A1(data_in), .A2(state[0]), .A3(n2), .B(match), 
        .Z(next_state[1]) );
endmodule

