/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:53:00 2026
/////////////////////////////////////////////////////////////


module ROM ( addr, dout );
  input [7:0] addr;
  output [15:0] dout;

  assign dout[2] = addr[2];
  assign dout[10] = addr[2];
  assign dout[1] = addr[1];
  assign dout[9] = addr[1];
  assign dout[0] = addr[0];
  assign dout[4] = addr[0];
  assign dout[8] = addr[0];
  assign dout[12] = addr[0];
  assign dout[14] = dout[6];
  assign dout[7] = dout[15];
  assign dout[5] = dout[13];
  assign dout[11] = dout[3];

  TIELBWP12T30P140 U7 ( .ZN(dout[3]) );
  CKND2D1BWP12T30P140 U8 ( .A1(addr[1]), .A2(addr[2]), .ZN(dout[15]) );
  OA21D0BWP12T30P140 U9 ( .A1(addr[1]), .A2(addr[2]), .B(dout[15]), .Z(dout[6]) );
  INVD0BWP12T30P140 U10 ( .I(addr[1]), .ZN(dout[13]) );
endmodule

