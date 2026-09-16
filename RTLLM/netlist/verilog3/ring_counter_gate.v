/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:30:15 2026
/////////////////////////////////////////////////////////////


module ring_counter ( clk, reset, out );
  output [7:0] out;
  input clk, reset;
  wire   n1;
  wire   [7:0] next_state;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(next_state[0]), .CP(clk), .SDN(n1), 
        .Q(out[0]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(n1), 
        .Q(out[1]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(next_state[2]), .CP(clk), .CDN(n1), 
        .Q(out[2]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(next_state[3]), .CP(clk), .CDN(n1), 
        .Q(out[3]) );
  DFCNQD1BWP12T30P140 state_reg_4_ ( .D(next_state[4]), .CP(clk), .CDN(n1), 
        .Q(out[4]) );
  DFCNQD1BWP12T30P140 state_reg_5_ ( .D(next_state[5]), .CP(clk), .CDN(n1), 
        .Q(out[5]) );
  DFCNQD1BWP12T30P140 state_reg_6_ ( .D(next_state[6]), .CP(clk), .CDN(n1), 
        .Q(out[6]) );
  DFCNQD1BWP12T30P140 state_reg_7_ ( .D(next_state[7]), .CP(clk), .CDN(n1), 
        .Q(out[7]) );
  INVD0BWP12T30P140 U12 ( .I(reset), .ZN(n1) );
  AN2D0BWP12T30P140 U13 ( .A1(out[0]), .A2(n1), .Z(next_state[1]) );
  AN2D0BWP12T30P140 U14 ( .A1(out[1]), .A2(n1), .Z(next_state[2]) );
  AN2D0BWP12T30P140 U15 ( .A1(out[2]), .A2(n1), .Z(next_state[3]) );
  AN2D0BWP12T30P140 U16 ( .A1(out[3]), .A2(n1), .Z(next_state[4]) );
  AN2D0BWP12T30P140 U17 ( .A1(out[6]), .A2(n1), .Z(next_state[7]) );
  AN2D0BWP12T30P140 U18 ( .A1(out[4]), .A2(n1), .Z(next_state[5]) );
  AN2D0BWP12T30P140 U19 ( .A1(out[5]), .A2(n1), .Z(next_state[6]) );
  IND2D1BWP12T30P140 U20 ( .A1(out[7]), .B1(n1), .ZN(next_state[0]) );
endmodule

