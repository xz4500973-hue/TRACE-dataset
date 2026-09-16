/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:23:58 2026
/////////////////////////////////////////////////////////////


module JC_counter ( clk, rst_n, Q );
  output [63:0] Q;
  input clk, rst_n;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFCNQD1BWP12T30P140 Q_reg_0_ ( .D(Q[1]), .CP(clk), .CDN(n2), .Q(Q[0]) );
  DFCNQD1BWP12T30P140 Q_reg_63_ ( .D(n1), .CP(clk), .CDN(n2), .Q(Q[63]) );
  DFCNQD1BWP12T30P140 Q_reg_62_ ( .D(Q[63]), .CP(clk), .CDN(n2), .Q(Q[62]) );
  DFCNQD1BWP12T30P140 Q_reg_61_ ( .D(Q[62]), .CP(clk), .CDN(n2), .Q(Q[61]) );
  DFCNQD1BWP12T30P140 Q_reg_60_ ( .D(Q[61]), .CP(clk), .CDN(n2), .Q(Q[60]) );
  DFCNQD1BWP12T30P140 Q_reg_11_ ( .D(Q[12]), .CP(clk), .CDN(rst_n), .Q(Q[11])
         );
  DFCNQD1BWP12T30P140 Q_reg_10_ ( .D(Q[11]), .CP(clk), .CDN(rst_n), .Q(Q[10])
         );
  DFCNQD1BWP12T30P140 Q_reg_9_ ( .D(Q[10]), .CP(clk), .CDN(rst_n), .Q(Q[9]) );
  DFCNQD1BWP12T30P140 Q_reg_8_ ( .D(Q[9]), .CP(clk), .CDN(rst_n), .Q(Q[8]) );
  DFCNQD1BWP12T30P140 Q_reg_7_ ( .D(Q[8]), .CP(clk), .CDN(rst_n), .Q(Q[7]) );
  DFCNQD1BWP12T30P140 Q_reg_6_ ( .D(Q[7]), .CP(clk), .CDN(rst_n), .Q(Q[6]) );
  DFCNQD1BWP12T30P140 Q_reg_5_ ( .D(Q[6]), .CP(clk), .CDN(rst_n), .Q(Q[5]) );
  DFCNQD1BWP12T30P140 Q_reg_4_ ( .D(Q[5]), .CP(clk), .CDN(rst_n), .Q(Q[4]) );
  DFCNQD1BWP12T30P140 Q_reg_3_ ( .D(Q[4]), .CP(clk), .CDN(rst_n), .Q(Q[3]) );
  DFCNQD1BWP12T30P140 Q_reg_2_ ( .D(Q[3]), .CP(clk), .CDN(rst_n), .Q(Q[2]) );
  DFCNQD1BWP12T30P140 Q_reg_1_ ( .D(Q[2]), .CP(clk), .CDN(rst_n), .Q(Q[1]) );
  DFCNQD1BWP12T30P140 Q_reg_59_ ( .D(Q[60]), .CP(n7), .CDN(n2), .Q(Q[59]) );
  DFCNQD1BWP12T30P140 Q_reg_58_ ( .D(Q[59]), .CP(n7), .CDN(n2), .Q(Q[58]) );
  DFCNQD1BWP12T30P140 Q_reg_57_ ( .D(Q[58]), .CP(n7), .CDN(n2), .Q(Q[57]) );
  DFCNQD1BWP12T30P140 Q_reg_56_ ( .D(Q[57]), .CP(n7), .CDN(n2), .Q(Q[56]) );
  DFCNQD1BWP12T30P140 Q_reg_55_ ( .D(Q[56]), .CP(n7), .CDN(n2), .Q(Q[55]) );
  DFCNQD1BWP12T30P140 Q_reg_54_ ( .D(Q[55]), .CP(n7), .CDN(n2), .Q(Q[54]) );
  DFCNQD1BWP12T30P140 Q_reg_53_ ( .D(Q[54]), .CP(n7), .CDN(n2), .Q(Q[53]) );
  DFCNQD1BWP12T30P140 Q_reg_52_ ( .D(Q[53]), .CP(n7), .CDN(n2), .Q(Q[52]) );
  DFCNQD1BWP12T30P140 Q_reg_51_ ( .D(Q[52]), .CP(n7), .CDN(n3), .Q(Q[51]) );
  DFCNQD1BWP12T30P140 Q_reg_50_ ( .D(Q[51]), .CP(n7), .CDN(n3), .Q(Q[50]) );
  DFCNQD1BWP12T30P140 Q_reg_49_ ( .D(Q[50]), .CP(n7), .CDN(n3), .Q(Q[49]) );
  DFCNQD1BWP12T30P140 Q_reg_48_ ( .D(Q[49]), .CP(n7), .CDN(n3), .Q(Q[48]) );
  DFCNQD1BWP12T30P140 Q_reg_47_ ( .D(Q[48]), .CP(n6), .CDN(n3), .Q(Q[47]) );
  DFCNQD1BWP12T30P140 Q_reg_46_ ( .D(Q[47]), .CP(n6), .CDN(n3), .Q(Q[46]) );
  DFCNQD1BWP12T30P140 Q_reg_45_ ( .D(Q[46]), .CP(n6), .CDN(n3), .Q(Q[45]) );
  DFCNQD1BWP12T30P140 Q_reg_44_ ( .D(Q[45]), .CP(n6), .CDN(n3), .Q(Q[44]) );
  DFCNQD1BWP12T30P140 Q_reg_43_ ( .D(Q[44]), .CP(n6), .CDN(n3), .Q(Q[43]) );
  DFCNQD1BWP12T30P140 Q_reg_42_ ( .D(Q[43]), .CP(n6), .CDN(n3), .Q(Q[42]) );
  DFCNQD1BWP12T30P140 Q_reg_41_ ( .D(Q[42]), .CP(n6), .CDN(n3), .Q(Q[41]) );
  DFCNQD1BWP12T30P140 Q_reg_40_ ( .D(Q[41]), .CP(n6), .CDN(n3), .Q(Q[40]) );
  DFCNQD1BWP12T30P140 Q_reg_39_ ( .D(Q[40]), .CP(n6), .CDN(n3), .Q(Q[39]) );
  DFCNQD1BWP12T30P140 Q_reg_38_ ( .D(Q[39]), .CP(n6), .CDN(n4), .Q(Q[38]) );
  DFCNQD1BWP12T30P140 Q_reg_37_ ( .D(Q[38]), .CP(n6), .CDN(n4), .Q(Q[37]) );
  DFCNQD1BWP12T30P140 Q_reg_36_ ( .D(Q[37]), .CP(n6), .CDN(n4), .Q(Q[36]) );
  DFCNQD1BWP12T30P140 Q_reg_35_ ( .D(Q[36]), .CP(n5), .CDN(n4), .Q(Q[35]) );
  DFCNQD1BWP12T30P140 Q_reg_34_ ( .D(Q[35]), .CP(n5), .CDN(n4), .Q(Q[34]) );
  DFCNQD1BWP12T30P140 Q_reg_33_ ( .D(Q[34]), .CP(n5), .CDN(n4), .Q(Q[33]) );
  DFCNQD1BWP12T30P140 Q_reg_32_ ( .D(Q[33]), .CP(n5), .CDN(n4), .Q(Q[32]) );
  DFCNQD1BWP12T30P140 Q_reg_31_ ( .D(Q[32]), .CP(n5), .CDN(n4), .Q(Q[31]) );
  DFCNQD1BWP12T30P140 Q_reg_30_ ( .D(Q[31]), .CP(n5), .CDN(n4), .Q(Q[30]) );
  DFCNQD1BWP12T30P140 Q_reg_29_ ( .D(Q[30]), .CP(n5), .CDN(n4), .Q(Q[29]) );
  DFCNQD1BWP12T30P140 Q_reg_28_ ( .D(Q[29]), .CP(n5), .CDN(n4), .Q(Q[28]) );
  DFCNQD1BWP12T30P140 Q_reg_27_ ( .D(Q[28]), .CP(n5), .CDN(n4), .Q(Q[27]) );
  DFCNQD1BWP12T30P140 Q_reg_26_ ( .D(Q[27]), .CP(n5), .CDN(n4), .Q(Q[26]) );
  DFCNQD1BWP12T30P140 Q_reg_25_ ( .D(Q[26]), .CP(n5), .CDN(n2), .Q(Q[25]) );
  DFCNQD1BWP12T30P140 Q_reg_24_ ( .D(Q[25]), .CP(n5), .CDN(n4), .Q(Q[24]) );
  DFCNQD1BWP12T30P140 Q_reg_23_ ( .D(Q[24]), .CP(n5), .CDN(n4), .Q(Q[23]) );
  DFCNQD1BWP12T30P140 Q_reg_22_ ( .D(Q[23]), .CP(n7), .CDN(rst_n), .Q(Q[22])
         );
  DFCNQD1BWP12T30P140 Q_reg_21_ ( .D(Q[22]), .CP(n6), .CDN(n3), .Q(Q[21]) );
  DFCNQD1BWP12T30P140 Q_reg_20_ ( .D(Q[21]), .CP(n5), .CDN(n2), .Q(Q[20]) );
  DFCNQD1BWP12T30P140 Q_reg_19_ ( .D(Q[20]), .CP(n7), .CDN(n4), .Q(Q[19]) );
  DFCNQD1BWP12T30P140 Q_reg_18_ ( .D(Q[19]), .CP(n6), .CDN(rst_n), .Q(Q[18])
         );
  DFCNQD1BWP12T30P140 Q_reg_17_ ( .D(Q[18]), .CP(n5), .CDN(n3), .Q(Q[17]) );
  DFCNQD1BWP12T30P140 Q_reg_16_ ( .D(Q[17]), .CP(n7), .CDN(n2), .Q(Q[16]) );
  DFCNQD1BWP12T30P140 Q_reg_15_ ( .D(Q[16]), .CP(n6), .CDN(n4), .Q(Q[15]) );
  DFCNQD1BWP12T30P140 Q_reg_14_ ( .D(Q[15]), .CP(n5), .CDN(rst_n), .Q(Q[14])
         );
  DFCNQD1BWP12T30P140 Q_reg_13_ ( .D(Q[14]), .CP(n7), .CDN(n3), .Q(Q[13]) );
  DFCNQD1BWP12T30P140 Q_reg_12_ ( .D(Q[13]), .CP(n6), .CDN(rst_n), .Q(Q[12])
         );
  INVD0BWP12T30P140 U3 ( .I(Q[0]), .ZN(n1) );
  CKBD0BWP12T30P140 U4 ( .I(clk), .Z(n6) );
  CKBD0BWP12T30P140 U5 ( .I(clk), .Z(n7) );
  CKBD0BWP12T30P140 U6 ( .I(clk), .Z(n5) );
  CKBD0BWP12T30P140 U7 ( .I(rst_n), .Z(n4) );
  CKBD0BWP12T30P140 U8 ( .I(rst_n), .Z(n2) );
  CKBD0BWP12T30P140 U9 ( .I(rst_n), .Z(n3) );
endmodule

