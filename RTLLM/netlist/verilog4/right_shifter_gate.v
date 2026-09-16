/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:52:04 2026
/////////////////////////////////////////////////////////////


module right_shifter ( clk, q, d );
  output [7:0] q;
  input clk, d;
  wire   d;
  assign q[0] = d;

  DFQD2BWP12T30P140 sr_reg_6_ ( .D(q[6]), .CP(clk), .Q(q[7]) );
  DFQD2BWP12T30P140 sr_reg_0_ ( .D(d), .CP(clk), .Q(q[1]) );
  DFQD2BWP12T30P140 sr_reg_1_ ( .D(q[1]), .CP(clk), .Q(q[2]) );
  DFQD2BWP12T30P140 sr_reg_2_ ( .D(q[2]), .CP(clk), .Q(q[3]) );
  DFQD2BWP12T30P140 sr_reg_3_ ( .D(q[3]), .CP(clk), .Q(q[4]) );
  DFQD2BWP12T30P140 sr_reg_4_ ( .D(q[4]), .CP(clk), .Q(q[5]) );
  DFQD1BWP12T30P140 sr_reg_5_ ( .D(q[5]), .CP(clk), .Q(q[6]) );
endmodule

