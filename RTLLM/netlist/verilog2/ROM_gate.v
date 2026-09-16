/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:07:27 2026
/////////////////////////////////////////////////////////////


module ROM ( addr, dout );
  input [7:0] addr;
  output [15:0] dout;
  wire   n3, n4;
  assign dout[2] = dout[10];
  assign dout[1] = dout[9];
  assign dout[3] = dout[11];
  assign dout[7] = dout[15];
  assign dout[6] = dout[14];
  assign dout[5] = dout[13];
  assign dout[0] = dout[12];
  assign dout[4] = dout[12];
  assign dout[8] = dout[12];

  TIELBWP12T30P140 U12 ( .ZN(dout[11]) );
  NR4D0BWP12T30P140 U13 ( .A1(addr[5]), .A2(addr[6]), .A3(addr[3]), .A4(
        addr[4]), .ZN(n3) );
  IND2D1BWP12T30P140 U14 ( .A1(addr[7]), .B1(n3), .ZN(n4) );
  AOI21D0BWP12T30P140 U15 ( .A1(addr[2]), .A2(addr[1]), .B(n4), .ZN(dout[15])
         );
  OA21D0BWP12T30P140 U16 ( .A1(addr[2]), .A2(addr[1]), .B(dout[15]), .Z(
        dout[14]) );
  NR2D0BWP12T30P140 U17 ( .A1(addr[1]), .A2(n4), .ZN(dout[13]) );
  INR2D1BWP12T30P140 U18 ( .A1(addr[1]), .B1(n4), .ZN(dout[9]) );
  INR2D1BWP12T30P140 U19 ( .A1(addr[2]), .B1(n4), .ZN(dout[10]) );
  INR2D1BWP12T30P140 U20 ( .A1(addr[0]), .B1(n4), .ZN(dout[12]) );
endmodule

