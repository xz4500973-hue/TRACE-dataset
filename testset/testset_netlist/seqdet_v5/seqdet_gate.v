/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Sep 10 21:08:21 2026
/////////////////////////////////////////////////////////////


module seqdet ( clk, rst_n, din, detected );
  input clk, rst_n, din;
  output detected;
  wire   n2;
  wire   [3:0] state;
  wire   [4:0] next;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(next[0]), .CP(clk), .SDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(next[3]), .CP(clk), .CDN(rst_n), .Q(
        state[3]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next[1]), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(next[4]), .CP(clk), .CDN(rst_n), .Q(
        detected) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(next[2]), .CP(clk), .CDN(rst_n), .Q(
        state[2]) );
  INVD0BWP12T30P140 U9 ( .I(din), .ZN(n2) );
  OA31D0BWP12T30P140 U10 ( .A1(detected), .A2(state[1]), .A3(state[3]), .B(n2), 
        .Z(next[2]) );
  AN2D0BWP12T30P140 U11 ( .A1(state[2]), .A2(din), .Z(next[3]) );
  OA31D0BWP12T30P140 U12 ( .A1(state[1]), .A2(detected), .A3(state[0]), .B(din), .Z(next[1]) );
  AN2D0BWP12T30P140 U13 ( .A1(state[3]), .A2(din), .Z(next[4]) );
  IAO21D0BWP12T30P140 U14 ( .A1(state[0]), .A2(state[2]), .B(din), .ZN(next[0]) );
endmodule

