/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:30:43 2026
/////////////////////////////////////////////////////////////


module ROM ( addr, dout );
  input [7:0] addr;
  output [15:0] dout;
  wire   n5, n6, n7, n8;
  assign dout[2] = dout[10];
  assign dout[1] = dout[9];
  assign dout[3] = dout[11];
  assign dout[7] = dout[15];
  assign dout[6] = dout[14];
  assign dout[5] = dout[13];
  assign dout[0] = dout[12];
  assign dout[4] = dout[12];
  assign dout[8] = dout[12];

  TIELBWP12T30P140 U14 ( .ZN(dout[11]) );
  NR4D0BWP12T30P140 U15 ( .A1(addr[5]), .A2(addr[3]), .A3(addr[7]), .A4(
        addr[6]), .ZN(n5) );
  IND2D1BWP12T30P140 U16 ( .A1(addr[4]), .B1(n5), .ZN(n8) );
  AOI21D0BWP12T30P140 U17 ( .A1(addr[2]), .A2(addr[1]), .B(n8), .ZN(dout[15])
         );
  INVD0BWP12T30P140 U18 ( .I(addr[1]), .ZN(n6) );
  NR2D0BWP12T30P140 U19 ( .A1(n6), .A2(n8), .ZN(dout[9]) );
  INVD0BWP12T30P140 U20 ( .I(addr[2]), .ZN(n7) );
  NR2D0BWP12T30P140 U21 ( .A1(n7), .A2(n8), .ZN(dout[10]) );
  AO22D0BWP12T30P140 U22 ( .A1(dout[9]), .A2(n7), .B1(dout[10]), .B2(n6), .Z(
        dout[14]) );
  NR2D0BWP12T30P140 U23 ( .A1(addr[1]), .A2(n8), .ZN(dout[13]) );
  INR2D1BWP12T30P140 U24 ( .A1(addr[0]), .B1(n8), .ZN(dout[12]) );
endmodule

