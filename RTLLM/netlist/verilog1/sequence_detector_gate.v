/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:44:11 2026
/////////////////////////////////////////////////////////////


module sequence_detector ( clk, rst_n, data_in, sequence_detected );
  input clk, rst_n, data_in;
  output sequence_detected;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [4:0] curr_state;
  wire   [4:0] next_state;

  DFSNQD1BWP12T30P140 curr_state_reg_0_ ( .D(next_state[0]), .CP(clk), .SDN(
        rst_n), .Q(curr_state[0]) );
  DFCNQD1BWP12T30P140 curr_state_reg_2_ ( .D(next_state[2]), .CP(clk), .CDN(
        rst_n), .Q(curr_state[2]) );
  DFCNQD1BWP12T30P140 curr_state_reg_4_ ( .D(next_state[4]), .CP(clk), .CDN(
        rst_n), .Q(curr_state[4]) );
  DFCNQD1BWP12T30P140 curr_state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(
        rst_n), .Q(curr_state[1]) );
  DFCNQD1BWP12T30P140 curr_state_reg_3_ ( .D(next_state[3]), .CP(clk), .CDN(
        rst_n), .Q(curr_state[3]) );
  NR3D0BWP12T30P140 U24 ( .A1(curr_state[2]), .A2(curr_state[1]), .A3(
        curr_state[4]), .ZN(n17) );
  IND3D1BWP12T30P140 U25 ( .A1(curr_state[0]), .B1(n17), .B2(curr_state[3]), 
        .ZN(n24) );
  ND2D0BWP12T30P140 U26 ( .A1(rst_n), .A2(data_in), .ZN(n20) );
  NR2D0BWP12T30P140 U27 ( .A1(n24), .A2(n20), .ZN(next_state[4]) );
  IND3D1BWP12T30P140 U28 ( .A1(curr_state[3]), .B1(n17), .B2(curr_state[0]), 
        .ZN(n21) );
  INVD0BWP12T30P140 U29 ( .I(curr_state[1]), .ZN(n19) );
  INVD0BWP12T30P140 U30 ( .I(curr_state[4]), .ZN(n30) );
  ND2D0BWP12T30P140 U31 ( .A1(n19), .A2(n30), .ZN(n18) );
  INR4D0BWP12T30P140 U32 ( .A1(curr_state[2]), .B1(curr_state[0]), .B2(
        curr_state[3]), .B3(n18), .ZN(n28) );
  OR3D0BWP12T30P140 U33 ( .A1(curr_state[3]), .A2(curr_state[0]), .A3(
        curr_state[2]), .Z(n29) );
  AOI221D0BWP12T30P140 U34 ( .A1(curr_state[4]), .A2(curr_state[1]), .B1(n30), 
        .B2(n19), .C(n29), .ZN(n26) );
  INR3D1BWP12T30P140 U35 ( .A1(n21), .B1(n28), .B2(n26), .ZN(n23) );
  NR2D0BWP12T30P140 U36 ( .A1(n23), .A2(n20), .ZN(next_state[1]) );
  AOI21D0BWP12T30P140 U37 ( .A1(n21), .A2(n24), .B(data_in), .ZN(n22) );
  AOI21D0BWP12T30P140 U38 ( .A1(n24), .A2(n23), .B(n22), .ZN(n25) );
  ND2D0BWP12T30P140 U39 ( .A1(rst_n), .A2(n25), .ZN(next_state[0]) );
  INVD0BWP12T30P140 U40 ( .I(rst_n), .ZN(n27) );
  INR3D1BWP12T30P140 U41 ( .A1(n26), .B1(data_in), .B2(n27), .ZN(next_state[2]) );
  INR3D1BWP12T30P140 U42 ( .A1(n28), .B1(data_in), .B2(n27), .ZN(next_state[3]) );
  NR3D0BWP12T30P140 U43 ( .A1(curr_state[1]), .A2(n30), .A3(n29), .ZN(
        sequence_detected) );
endmodule

