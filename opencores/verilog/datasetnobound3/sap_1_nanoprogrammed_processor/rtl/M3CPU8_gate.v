/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:08:11 2026
/////////////////////////////////////////////////////////////


module PC ( clk, rst, EP, CP, PC_OUT );
  output [3:0] PC_OUT;
  input clk, rst, EP, CP;
  wire   n7, n8, n10, n12, n14, n1, n2, n3, n4, n5, n6;
  wire   [3:0] PC_OUT_r;

  DFCNQD1BWP12T30P140 PC_OUT_r_reg_1_ ( .D(n12), .CP(clk), .CDN(n7), .Q(
        PC_OUT_r[1]) );
  DFCNQD1BWP12T30P140 PC_OUT_r_reg_3_ ( .D(n8), .CP(clk), .CDN(n7), .Q(
        PC_OUT_r[3]) );
  DFCNQD1BWP12T30P140 PC_OUT_r_reg_2_ ( .D(n10), .CP(clk), .CDN(n7), .Q(
        PC_OUT_r[2]) );
  DFCNQD1BWP12T30P140 PC_OUT_r_reg_0_ ( .D(n14), .CP(clk), .CDN(n7), .Q(
        PC_OUT_r[0]) );
  ND2D0BWP12T30P140 U3 ( .A1(PC_OUT_r[0]), .A2(CP), .ZN(n1) );
  INVD0BWP12T30P140 U4 ( .I(PC_OUT_r[1]), .ZN(n3) );
  NR2D0BWP12T30P140 U5 ( .A1(n1), .A2(n3), .ZN(n2) );
  AOI21D0BWP12T30P140 U6 ( .A1(n1), .A2(n3), .B(n2), .ZN(n12) );
  OA21D0BWP12T30P140 U7 ( .A1(PC_OUT_r[0]), .A2(CP), .B(n1), .Z(n14) );
  ND2D0BWP12T30P140 U8 ( .A1(n2), .A2(PC_OUT_r[2]), .ZN(n5) );
  OA21D0BWP12T30P140 U9 ( .A1(n2), .A2(PC_OUT_r[2]), .B(n5), .Z(n10) );
  INVD0BWP12T30P140 U10 ( .I(rst), .ZN(n7) );
  INVD0BWP12T30P140 U11 ( .I(PC_OUT_r[3]), .ZN(n6) );
  INVD0BWP12T30P140 U12 ( .I(EP), .ZN(n4) );
  NR2D0BWP12T30P140 U13 ( .A1(n6), .A2(n4), .ZN(PC_OUT[3]) );
  NR2D0BWP12T30P140 U14 ( .A1(n3), .A2(n4), .ZN(PC_OUT[1]) );
  AN2D0BWP12T30P140 U15 ( .A1(PC_OUT_r[2]), .A2(EP), .Z(PC_OUT[2]) );
  INR2D1BWP12T30P140 U16 ( .A1(PC_OUT_r[0]), .B1(n4), .ZN(PC_OUT[0]) );
  MUX2ND0BWP12T30P140 U17 ( .I0(PC_OUT_r[3]), .I1(n6), .S(n5), .ZN(n8) );
endmodule


module MAR ( clk, LM, PC_IN, MAR_OUT );
  input [3:0] PC_IN;
  output [3:0] MAR_OUT;
  input clk, LM;
  wire   n1, n2, n3, n4;

  DFQD2BWP12T30P140 MAR_r_reg_1_ ( .D(n2), .CP(clk), .Q(MAR_OUT[1]) );
  DFQD2BWP12T30P140 MAR_r_reg_2_ ( .D(n3), .CP(clk), .Q(MAR_OUT[2]) );
  DFQD2BWP12T30P140 MAR_r_reg_0_ ( .D(n1), .CP(clk), .Q(MAR_OUT[0]) );
  DFQD2BWP12T30P140 MAR_r_reg_3_ ( .D(n4), .CP(clk), .Q(MAR_OUT[3]) );
  CKMUX2D0BWP12T30P140 U2 ( .I0(PC_IN[3]), .I1(MAR_OUT[3]), .S(LM), .Z(n4) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(PC_IN[0]), .I1(MAR_OUT[0]), .S(LM), .Z(n1) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(PC_IN[2]), .I1(MAR_OUT[2]), .S(LM), .Z(n3) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(PC_IN[1]), .I1(MAR_OUT[1]), .S(LM), .Z(n2) );
endmodule


module SRAM ( CE, MAR_IN, SRAM_OUT );
  input [3:0] MAR_IN;
  output [8:0] SRAM_OUT;
  input CE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  NR2D0BWP12T30P140 U2 ( .A1(MAR_IN[0]), .A2(MAR_IN[1]), .ZN(n2) );
  AOI21D0BWP12T30P140 U3 ( .A1(MAR_IN[3]), .A2(n2), .B(MAR_IN[2]), .ZN(n1) );
  NR2D0BWP12T30P140 U4 ( .A1(CE), .A2(n1), .ZN(SRAM_OUT[7]) );
  CKBD0BWP12T30P140 U5 ( .I(SRAM_OUT[7]), .Z(SRAM_OUT[8]) );
  CKBD0BWP12T30P140 U6 ( .I(SRAM_OUT[7]), .Z(SRAM_OUT[6]) );
  NR2D0BWP12T30P140 U7 ( .A1(MAR_IN[2]), .A2(n2), .ZN(n6) );
  IND2D1BWP12T30P140 U8 ( .A1(MAR_IN[3]), .B1(MAR_IN[1]), .ZN(n9) );
  ND2D0BWP12T30P140 U9 ( .A1(MAR_IN[0]), .A2(MAR_IN[3]), .ZN(n3) );
  AOI31D0BWP12T30P140 U10 ( .A1(n6), .A2(n9), .A3(n3), .B(CE), .ZN(SRAM_OUT[0]) );
  INVD0BWP12T30P140 U11 ( .I(MAR_IN[2]), .ZN(n5) );
  OAI21D0BWP12T30P140 U12 ( .A1(MAR_IN[0]), .A2(MAR_IN[3]), .B(n3), .ZN(n4) );
  AOI31D0BWP12T30P140 U13 ( .A1(n5), .A2(n9), .A3(n4), .B(CE), .ZN(SRAM_OUT[1]) );
  INVD0BWP12T30P140 U14 ( .I(MAR_IN[0]), .ZN(n7) );
  INVD0BWP12T30P140 U15 ( .I(SRAM_OUT[7]), .ZN(n8) );
  OAI31D0BWP12T30P140 U16 ( .A1(CE), .A2(n7), .A3(n9), .B(n8), .ZN(SRAM_OUT[2]) );
  AOI21D0BWP12T30P140 U17 ( .A1(MAR_IN[3]), .A2(n6), .B(CE), .ZN(SRAM_OUT[3])
         );
  OAI31D0BWP12T30P140 U18 ( .A1(CE), .A2(MAR_IN[3]), .A3(n7), .B(n8), .ZN(
        SRAM_OUT[4]) );
  OAI21D0BWP12T30P140 U19 ( .A1(CE), .A2(n9), .B(n8), .ZN(SRAM_OUT[5]) );
endmodule


module IR ( clk, LI, EI, SRAM_IN, IR_OUT_1, IR_OUT_2 );
  input [8:0] SRAM_IN;
  output [4:0] IR_OUT_1;
  output [3:0] IR_OUT_2;
  input clk, LI, EI;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [3:0] IR_OUT_r;

  DFQD2BWP12T30P140 IR_OUT_r_reg_8_ ( .D(n9), .CP(clk), .Q(IR_OUT_1[4]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_3_ ( .D(n4), .CP(clk), .Q(IR_OUT_r[3]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_2_ ( .D(n3), .CP(clk), .Q(IR_OUT_r[2]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_1_ ( .D(n2), .CP(clk), .Q(IR_OUT_r[1]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_0_ ( .D(n1), .CP(clk), .Q(IR_OUT_r[0]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_7_ ( .D(n8), .CP(clk), .Q(IR_OUT_1[3]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_4_ ( .D(n5), .CP(clk), .Q(IR_OUT_1[0]) );
  DFQD2BWP12T30P140 IR_OUT_r_reg_5_ ( .D(n6), .CP(clk), .Q(IR_OUT_1[1]) );
  DFQD1BWP12T30P140 IR_OUT_r_reg_6_ ( .D(n7), .CP(clk), .Q(IR_OUT_1[2]) );
  CKMUX2D0BWP12T30P140 U2 ( .I0(SRAM_IN[5]), .I1(IR_OUT_1[1]), .S(LI), .Z(n6)
         );
  CKMUX2D0BWP12T30P140 U3 ( .I0(SRAM_IN[4]), .I1(IR_OUT_1[0]), .S(LI), .Z(n5)
         );
  CKMUX2D0BWP12T30P140 U4 ( .I0(SRAM_IN[6]), .I1(IR_OUT_1[2]), .S(LI), .Z(n7)
         );
  CKMUX2D0BWP12T30P140 U5 ( .I0(SRAM_IN[7]), .I1(IR_OUT_1[3]), .S(LI), .Z(n8)
         );
  CKMUX2D0BWP12T30P140 U6 ( .I0(SRAM_IN[0]), .I1(IR_OUT_r[0]), .S(LI), .Z(n1)
         );
  CKMUX2D0BWP12T30P140 U7 ( .I0(SRAM_IN[1]), .I1(IR_OUT_r[1]), .S(LI), .Z(n2)
         );
  CKMUX2D0BWP12T30P140 U8 ( .I0(SRAM_IN[2]), .I1(IR_OUT_r[2]), .S(LI), .Z(n3)
         );
  CKMUX2D0BWP12T30P140 U9 ( .I0(SRAM_IN[3]), .I1(IR_OUT_r[3]), .S(LI), .Z(n4)
         );
  CKMUX2D0BWP12T30P140 U10 ( .I0(SRAM_IN[8]), .I1(IR_OUT_1[4]), .S(LI), .Z(n9)
         );
  AN2D0BWP12T30P140 U11 ( .A1(IR_OUT_r[0]), .A2(EI), .Z(IR_OUT_2[0]) );
  AN2D0BWP12T30P140 U12 ( .A1(IR_OUT_r[1]), .A2(EI), .Z(IR_OUT_2[1]) );
  AN2D0BWP12T30P140 U13 ( .A1(IR_OUT_r[2]), .A2(EI), .Z(IR_OUT_2[2]) );
  AN2D0BWP12T30P140 U14 ( .A1(IR_OUT_r[3]), .A2(EI), .Z(IR_OUT_2[3]) );
endmodule


module ADDR_ROM ( IR_OUT, AR_OUT );
  input [4:0] IR_OUT;
  output [4:0] AR_OUT;
  wire   n1, n2, n3;

  INVD0BWP12T30P140 U1 ( .I(IR_OUT[0]), .ZN(n2) );
  INVD0BWP12T30P140 U2 ( .I(IR_OUT[1]), .ZN(n1) );
  NR2D0BWP12T30P140 U3 ( .A1(IR_OUT[3]), .A2(IR_OUT[2]), .ZN(n3) );
  OAI21D0BWP12T30P140 U4 ( .A1(n2), .A2(n1), .B(n3), .ZN(AR_OUT[4]) );
  OAI21D0BWP12T30P140 U5 ( .A1(IR_OUT[1]), .A2(n2), .B(n3), .ZN(AR_OUT[1]) );
  ND3D0BWP12T30P140 U6 ( .A1(IR_OUT[0]), .A2(n3), .A3(IR_OUT[1]), .ZN(
        AR_OUT[2]) );
  OAI21D0BWP12T30P140 U7 ( .A1(IR_OUT[0]), .A2(n1), .B(n3), .ZN(AR_OUT[3]) );
  ND2D0BWP12T30P140 U8 ( .A1(n3), .A2(n2), .ZN(AR_OUT[0]) );
endmodule


module MICRO_PROG_COUNTER ( clk, rst, AR_ROM_IN, LOAD_MICRO, INC_MICRO, 
        CLEAR_MICRO, PRE_OUT );
  input [4:0] AR_ROM_IN;
  output [4:0] PRE_OUT;
  input clk, rst, LOAD_MICRO, INC_MICRO, CLEAR_MICRO;
  wire   n5, n6, n7, n8, n9, n10, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;

  DFCNQD1BWP12T30P140 PRE_OUT_r_reg_3_ ( .D(n7), .CP(clk), .CDN(n5), .Q(
        PRE_OUT[3]) );
  DFCNQD1BWP12T30P140 PRE_OUT_r_reg_4_ ( .D(n6), .CP(clk), .CDN(n5), .Q(
        PRE_OUT[4]) );
  DFCNQD1BWP12T30P140 PRE_OUT_r_reg_1_ ( .D(n9), .CP(clk), .CDN(n5), .Q(
        PRE_OUT[1]) );
  DFCNQD1BWP12T30P140 PRE_OUT_r_reg_2_ ( .D(n8), .CP(clk), .CDN(n5), .Q(
        PRE_OUT[2]) );
  DFCNQD1BWP12T30P140 PRE_OUT_r_reg_0_ ( .D(n10), .CP(clk), .CDN(n5), .Q(
        PRE_OUT[0]) );
  IND2D1BWP12T30P140 U3 ( .A1(LOAD_MICRO), .B1(INC_MICRO), .ZN(n18) );
  NR3D0BWP12T30P140 U4 ( .A1(LOAD_MICRO), .A2(INC_MICRO), .A3(CLEAR_MICRO), 
        .ZN(n15) );
  AOI22D0BWP12T30P140 U5 ( .A1(LOAD_MICRO), .A2(AR_ROM_IN[0]), .B1(PRE_OUT[0]), 
        .B2(n15), .ZN(n1) );
  OAI21D0BWP12T30P140 U6 ( .A1(PRE_OUT[0]), .A2(n18), .B(n1), .ZN(n10) );
  ND2D0BWP12T30P140 U7 ( .A1(PRE_OUT[1]), .A2(PRE_OUT[0]), .ZN(n4) );
  IAO21D0BWP12T30P140 U8 ( .A1(n18), .A2(PRE_OUT[0]), .B(n15), .ZN(n14) );
  OAI21D0BWP12T30P140 U9 ( .A1(PRE_OUT[1]), .A2(n18), .B(n14), .ZN(n2) );
  AOI22D0BWP12T30P140 U10 ( .A1(LOAD_MICRO), .A2(AR_ROM_IN[2]), .B1(PRE_OUT[2]), .B2(n2), .ZN(n3) );
  OAI31D0BWP12T30P140 U11 ( .A1(PRE_OUT[2]), .A2(n18), .A3(n4), .B(n3), .ZN(n8) );
  INVD0BWP12T30P140 U12 ( .I(PRE_OUT[1]), .ZN(n13) );
  NR2D0BWP12T30P140 U13 ( .A1(PRE_OUT[1]), .A2(n18), .ZN(n11) );
  AOI22D0BWP12T30P140 U14 ( .A1(LOAD_MICRO), .A2(AR_ROM_IN[1]), .B1(PRE_OUT[0]), .B2(n11), .ZN(n12) );
  OAI21D0BWP12T30P140 U15 ( .A1(n14), .A2(n13), .B(n12), .ZN(n9) );
  INVD0BWP12T30P140 U16 ( .I(PRE_OUT[3]), .ZN(n23) );
  INVD0BWP12T30P140 U17 ( .I(n18), .ZN(n17) );
  ND4D0BWP12T30P140 U18 ( .A1(n17), .A2(PRE_OUT[1]), .A3(PRE_OUT[0]), .A4(
        PRE_OUT[2]), .ZN(n21) );
  ND3D0BWP12T30P140 U19 ( .A1(PRE_OUT[1]), .A2(PRE_OUT[0]), .A3(PRE_OUT[2]), 
        .ZN(n16) );
  AOI21D0BWP12T30P140 U20 ( .A1(n17), .A2(n16), .B(n15), .ZN(n24) );
  OAI21D0BWP12T30P140 U21 ( .A1(PRE_OUT[3]), .A2(n18), .B(n24), .ZN(n19) );
  AOI22D0BWP12T30P140 U22 ( .A1(LOAD_MICRO), .A2(AR_ROM_IN[4]), .B1(PRE_OUT[4]), .B2(n19), .ZN(n20) );
  OAI31D0BWP12T30P140 U23 ( .A1(PRE_OUT[4]), .A2(n23), .A3(n21), .B(n20), .ZN(
        n6) );
  MAOI22D0BWP12T30P140 U24 ( .A1(LOAD_MICRO), .A2(AR_ROM_IN[3]), .B1(
        PRE_OUT[3]), .B2(n21), .ZN(n22) );
  OAI21D0BWP12T30P140 U25 ( .A1(n24), .A2(n23), .B(n22), .ZN(n7) );
  INVD0BWP12T30P140 U26 ( .I(rst), .ZN(n5) );
endmodule


module MICROCODE_ROM ( PRE_IN, ROM_OUT );
  input [4:0] PRE_IN;
  output [5:0] ROM_OUT;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;

  INVD0BWP12T30P140 U3 ( .I(PRE_IN[0]), .ZN(n12) );
  ND3D0BWP12T30P140 U4 ( .A1(n12), .A2(PRE_IN[1]), .A3(PRE_IN[4]), .ZN(n4) );
  INVD0BWP12T30P140 U5 ( .I(n4), .ZN(n7) );
  INVD0BWP12T30P140 U6 ( .I(PRE_IN[3]), .ZN(n10) );
  AOI21D0BWP12T30P140 U7 ( .A1(PRE_IN[2]), .A2(n10), .B(PRE_IN[4]), .ZN(n2) );
  INVD0BWP12T30P140 U8 ( .I(PRE_IN[1]), .ZN(n17) );
  AOI221D0BWP12T30P140 U9 ( .A1(PRE_IN[1]), .A2(n12), .B1(n17), .B2(PRE_IN[0]), 
        .C(PRE_IN[2]), .ZN(n6) );
  NR2D0BWP12T30P140 U10 ( .A1(PRE_IN[4]), .A2(n10), .ZN(n14) );
  ND2D0BWP12T30P140 U11 ( .A1(n6), .A2(n14), .ZN(n15) );
  ND2D0BWP12T30P140 U12 ( .A1(n17), .A2(PRE_IN[2]), .ZN(n3) );
  OAI211D0BWP12T30P140 U13 ( .A1(n7), .A2(n2), .B(n15), .C(n3), .ZN(ROM_OUT[2]) );
  INVD0BWP12T30P140 U14 ( .I(n3), .ZN(n13) );
  INVD0BWP12T30P140 U15 ( .I(n14), .ZN(n5) );
  OAI31D0BWP12T30P140 U16 ( .A1(n6), .A2(n13), .A3(n5), .B(n4), .ZN(ROM_OUT[3]) );
  INVD0BWP12T30P140 U17 ( .I(PRE_IN[2]), .ZN(n11) );
  OAI32D0BWP12T30P140 U18 ( .A1(PRE_IN[3]), .A2(n17), .A3(n11), .B1(PRE_IN[2]), 
        .B2(n10), .ZN(n9) );
  AOI31D0BWP12T30P140 U19 ( .A1(n14), .A2(n12), .A3(n11), .B(n7), .ZN(n8) );
  OAI31D0BWP12T30P140 U20 ( .A1(PRE_IN[4]), .A2(n12), .A3(n9), .B(n8), .ZN(
        ROM_OUT[0]) );
  AOI221D0BWP12T30P140 U21 ( .A1(PRE_IN[2]), .A2(n12), .B1(n11), .B2(n10), .C(
        PRE_IN[4]), .ZN(n18) );
  AOI32D0BWP12T30P140 U22 ( .A1(n14), .A2(PRE_IN[0]), .A3(n13), .B1(PRE_IN[4]), 
        .B2(n12), .ZN(n16) );
  OAI211D0BWP12T30P140 U23 ( .A1(n18), .A2(n17), .B(n16), .C(n15), .ZN(
        ROM_OUT[1]) );
endmodule


module NANO_PROG_COUNTER ( MCR_IN, NANO_PRE_OUT );
  input [5:0] MCR_IN;
  output [5:0] NANO_PRE_OUT;


  CKBD0BWP12T30P140 U1 ( .I(MCR_IN[0]), .Z(NANO_PRE_OUT[0]) );
  CKBD0BWP12T30P140 U2 ( .I(MCR_IN[1]), .Z(NANO_PRE_OUT[1]) );
  CKBD0BWP12T30P140 U3 ( .I(MCR_IN[2]), .Z(NANO_PRE_OUT[2]) );
  CKBD0BWP12T30P140 U4 ( .I(MCR_IN[3]), .Z(NANO_PRE_OUT[3]) );
endmodule


module NANOCODE_ROM ( NANO_PRE_IN, NANO_ROM_OUT );
  input [5:0] NANO_PRE_IN;
  output [16:0] NANO_ROM_OUT;
  wire   n1, n2, n3, n4, n5, n6, n7;

  ND3D0BWP12T30P140 U3 ( .A1(NANO_PRE_IN[1]), .A2(NANO_PRE_IN[3]), .A3(
        NANO_PRE_IN[0]), .ZN(NANO_ROM_OUT[3]) );
  INVD0BWP12T30P140 U4 ( .I(NANO_PRE_IN[1]), .ZN(n6) );
  INVD0BWP12T30P140 U5 ( .I(NANO_PRE_IN[3]), .ZN(n7) );
  INVD0BWP12T30P140 U6 ( .I(NANO_PRE_IN[2]), .ZN(n3) );
  ND3D0BWP12T30P140 U7 ( .A1(n7), .A2(n3), .A3(NANO_PRE_IN[0]), .ZN(n1) );
  NR2D0BWP12T30P140 U8 ( .A1(n6), .A2(n1), .ZN(NANO_ROM_OUT[10]) );
  CKBD0BWP12T30P140 U9 ( .I(NANO_ROM_OUT[10]), .Z(NANO_ROM_OUT[2]) );
  NR2D0BWP12T30P140 U10 ( .A1(NANO_PRE_IN[3]), .A2(NANO_PRE_IN[0]), .ZN(n2) );
  CKND2D1BWP12T30P140 U11 ( .A1(NANO_PRE_IN[1]), .A2(n2), .ZN(n4) );
  NR2D0BWP12T30P140 U12 ( .A1(n3), .A2(n4), .ZN(NANO_ROM_OUT[1]) );
  NR2D0BWP12T30P140 U13 ( .A1(NANO_ROM_OUT[1]), .A2(NANO_ROM_OUT[10]), .ZN(
        NANO_ROM_OUT[0]) );
  INVD0BWP12T30P140 U14 ( .I(NANO_ROM_OUT[3]), .ZN(NANO_ROM_OUT[8]) );
  OAI211D0BWP12T30P140 U15 ( .A1(NANO_PRE_IN[2]), .A2(NANO_PRE_IN[3]), .B(
        NANO_PRE_IN[0]), .C(n6), .ZN(NANO_ROM_OUT[9]) );
  NR2D0BWP12T30P140 U16 ( .A1(NANO_PRE_IN[1]), .A2(n1), .ZN(NANO_ROM_OUT[15])
         );
  CKND2D1BWP12T30P140 U17 ( .A1(n2), .A2(n6), .ZN(NANO_ROM_OUT[14]) );
  NR2D0BWP12T30P140 U18 ( .A1(n3), .A2(NANO_ROM_OUT[14]), .ZN(NANO_ROM_OUT[11]) );
  OR2D0BWP12T30P140 U19 ( .A1(n4), .A2(NANO_PRE_IN[2]), .Z(NANO_ROM_OUT[12])
         );
  ND3D0BWP12T30P140 U20 ( .A1(n7), .A2(NANO_PRE_IN[0]), .A3(NANO_PRE_IN[2]), 
        .ZN(n5) );
  AN2D0BWP12T30P140 U21 ( .A1(n5), .A2(NANO_ROM_OUT[12]), .Z(NANO_ROM_OUT[13])
         );
  NR2D0BWP12T30P140 U22 ( .A1(NANO_PRE_IN[2]), .A2(NANO_ROM_OUT[14]), .ZN(
        NANO_ROM_OUT[16]) );
  ND4D0BWP12T30P140 U23 ( .A1(NANO_PRE_IN[2]), .A2(NANO_PRE_IN[1]), .A3(
        NANO_PRE_IN[0]), .A4(n7), .ZN(NANO_ROM_OUT[4]) );
  INR3D1BWP12T30P140 U24 ( .A1(NANO_PRE_IN[0]), .B1(NANO_PRE_IN[1]), .B2(n7), 
        .ZN(NANO_ROM_OUT[5]) );
  NR3D0BWP12T30P140 U25 ( .A1(NANO_PRE_IN[1]), .A2(NANO_PRE_IN[0]), .A3(n7), 
        .ZN(NANO_ROM_OUT[6]) );
  NR3D0BWP12T30P140 U26 ( .A1(NANO_PRE_IN[0]), .A2(n7), .A3(n6), .ZN(
        NANO_ROM_OUT[7]) );
endmodule


module NANOCODE_DECODER ( NANO_ROM_IN, EP_o, CP_o, LM_o, CE_o, LI_o, EI_o, 
        CS_o, LA_o, EA_o, SU_o, AD_o, EU_o, LB_o, LO_o, LOAD_MICRO_o, 
        CLEAR_MICRO_o, INC_MICRO_o );
  input [16:0] NANO_ROM_IN;
  output EP_o, CP_o, LM_o, CE_o, LI_o, EI_o, CS_o, LA_o, EA_o, SU_o, AD_o,
         EU_o, LB_o, LO_o, LOAD_MICRO_o, CLEAR_MICRO_o, INC_MICRO_o;


  CKBD0BWP12T30P140 U1 ( .I(NANO_ROM_IN[0]), .Z(INC_MICRO_o) );
  CKBD0BWP12T30P140 U2 ( .I(NANO_ROM_IN[1]), .Z(CLEAR_MICRO_o) );
  CKBD0BWP12T30P140 U3 ( .I(NANO_ROM_IN[3]), .Z(LO_o) );
  CKBD0BWP12T30P140 U4 ( .I(NANO_ROM_IN[4]), .Z(LB_o) );
  CKBD0BWP12T30P140 U5 ( .I(NANO_ROM_IN[5]), .Z(EU_o) );
  CKBD0BWP12T30P140 U6 ( .I(NANO_ROM_IN[6]), .Z(AD_o) );
  CKBD0BWP12T30P140 U7 ( .I(NANO_ROM_IN[7]), .Z(SU_o) );
  CKBD0BWP12T30P140 U8 ( .I(NANO_ROM_IN[8]), .Z(EA_o) );
  CKBD0BWP12T30P140 U9 ( .I(NANO_ROM_IN[9]), .Z(LA_o) );
  CKBD0BWP12T30P140 U10 ( .I(NANO_ROM_IN[10]), .Z(CS_o) );
  CKBD0BWP12T30P140 U11 ( .I(NANO_ROM_IN[2]), .Z(LOAD_MICRO_o) );
  CKBD0BWP12T30P140 U12 ( .I(NANO_ROM_IN[11]), .Z(EI_o) );
  CKBD0BWP12T30P140 U13 ( .I(NANO_ROM_IN[12]), .Z(LI_o) );
  CKBD0BWP12T30P140 U14 ( .I(NANO_ROM_IN[13]), .Z(CE_o) );
  CKBD0BWP12T30P140 U15 ( .I(NANO_ROM_IN[14]), .Z(LM_o) );
  CKBD0BWP12T30P140 U16 ( .I(NANO_ROM_IN[15]), .Z(CP_o) );
  CKBD0BWP12T30P140 U17 ( .I(NANO_ROM_IN[16]), .Z(EP_o) );
endmodule


module ACC ( clk, ACC_IN, LA, EA, ACC_ALU, ACC_BUS );
  input [8:0] ACC_IN;
  output [8:0] ACC_ALU;
  output [8:0] ACC_BUS;
  input clk, LA, EA;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  DFQD2BWP12T30P140 ACC_r_reg_8_ ( .D(n9), .CP(clk), .Q(ACC_ALU[8]) );
  DFQD2BWP12T30P140 ACC_r_reg_0_ ( .D(n1), .CP(clk), .Q(ACC_ALU[0]) );
  DFQD2BWP12T30P140 ACC_r_reg_7_ ( .D(n8), .CP(clk), .Q(ACC_ALU[7]) );
  DFQD2BWP12T30P140 ACC_r_reg_6_ ( .D(n7), .CP(clk), .Q(ACC_ALU[6]) );
  DFQD2BWP12T30P140 ACC_r_reg_5_ ( .D(n6), .CP(clk), .Q(ACC_ALU[5]) );
  DFQD2BWP12T30P140 ACC_r_reg_4_ ( .D(n5), .CP(clk), .Q(ACC_ALU[4]) );
  DFQD2BWP12T30P140 ACC_r_reg_3_ ( .D(n4), .CP(clk), .Q(ACC_ALU[3]) );
  DFQD2BWP12T30P140 ACC_r_reg_1_ ( .D(n2), .CP(clk), .Q(ACC_ALU[1]) );
  DFQD1BWP12T30P140 ACC_r_reg_2_ ( .D(n3), .CP(clk), .Q(ACC_ALU[2]) );
  CKMUX2D0BWP12T30P140 U2 ( .I0(ACC_IN[2]), .I1(ACC_ALU[2]), .S(LA), .Z(n3) );
  AN2D0BWP12T30P140 U3 ( .A1(ACC_ALU[0]), .A2(EA), .Z(ACC_BUS[0]) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(ACC_IN[3]), .I1(ACC_ALU[3]), .S(LA), .Z(n4) );
  AN2D0BWP12T30P140 U5 ( .A1(ACC_ALU[1]), .A2(EA), .Z(ACC_BUS[1]) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(ACC_IN[4]), .I1(ACC_ALU[4]), .S(LA), .Z(n5) );
  AN2D0BWP12T30P140 U7 ( .A1(ACC_ALU[2]), .A2(EA), .Z(ACC_BUS[2]) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(ACC_IN[5]), .I1(ACC_ALU[5]), .S(LA), .Z(n6) );
  AN2D0BWP12T30P140 U9 ( .A1(ACC_ALU[3]), .A2(EA), .Z(ACC_BUS[3]) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(ACC_IN[6]), .I1(ACC_ALU[6]), .S(LA), .Z(n7)
         );
  AN2D0BWP12T30P140 U11 ( .A1(ACC_ALU[4]), .A2(EA), .Z(ACC_BUS[4]) );
  CKMUX2D0BWP12T30P140 U12 ( .I0(ACC_IN[7]), .I1(ACC_ALU[7]), .S(LA), .Z(n8)
         );
  AN2D0BWP12T30P140 U13 ( .A1(ACC_ALU[5]), .A2(EA), .Z(ACC_BUS[5]) );
  CKMUX2D0BWP12T30P140 U14 ( .I0(ACC_IN[0]), .I1(ACC_ALU[0]), .S(LA), .Z(n1)
         );
  AN2D0BWP12T30P140 U15 ( .A1(ACC_ALU[6]), .A2(EA), .Z(ACC_BUS[6]) );
  CKMUX2D0BWP12T30P140 U16 ( .I0(ACC_IN[8]), .I1(ACC_ALU[8]), .S(LA), .Z(n9)
         );
  AN2D0BWP12T30P140 U17 ( .A1(ACC_ALU[7]), .A2(EA), .Z(ACC_BUS[7]) );
  AN2D0BWP12T30P140 U18 ( .A1(ACC_ALU[8]), .A2(EA), .Z(ACC_BUS[8]) );
  CKMUX2D0BWP12T30P140 U19 ( .I0(ACC_IN[1]), .I1(ACC_ALU[1]), .S(LA), .Z(n2)
         );
endmodule


module BREG ( clk, B_IN, LB, B_OUT );
  input [8:0] B_IN;
  output [8:0] B_OUT;
  input clk, LB;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  DFQD2BWP12T30P140 B_OUT_r_reg_8_ ( .D(n9), .CP(clk), .Q(B_OUT[8]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_7_ ( .D(n8), .CP(clk), .Q(B_OUT[7]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_6_ ( .D(n7), .CP(clk), .Q(B_OUT[6]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_5_ ( .D(n6), .CP(clk), .Q(B_OUT[5]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_4_ ( .D(n5), .CP(clk), .Q(B_OUT[4]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_3_ ( .D(n4), .CP(clk), .Q(B_OUT[3]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_2_ ( .D(n3), .CP(clk), .Q(B_OUT[2]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_1_ ( .D(n2), .CP(clk), .Q(B_OUT[1]) );
  DFQD2BWP12T30P140 B_OUT_r_reg_0_ ( .D(n1), .CP(clk), .Q(B_OUT[0]) );
  CKMUX2D0BWP12T30P140 U2 ( .I0(B_IN[0]), .I1(B_OUT[0]), .S(LB), .Z(n1) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(B_IN[1]), .I1(B_OUT[1]), .S(LB), .Z(n2) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(B_IN[2]), .I1(B_OUT[2]), .S(LB), .Z(n3) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(B_IN[3]), .I1(B_OUT[3]), .S(LB), .Z(n4) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(B_IN[4]), .I1(B_OUT[4]), .S(LB), .Z(n5) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(B_IN[5]), .I1(B_OUT[5]), .S(LB), .Z(n6) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(B_IN[6]), .I1(B_OUT[6]), .S(LB), .Z(n7) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(B_IN[7]), .I1(B_OUT[7]), .S(LB), .Z(n8) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(B_IN[8]), .I1(B_OUT[8]), .S(LB), .Z(n9) );
endmodule


module ALU ( ALU_A, ALU_B, SU, AD, EU, ALU_OUT );
  input [8:0] ALU_A;
  input [8:0] ALU_B;
  output [8:0] ALU_OUT;
  input SU, AD, EU;
  wire   C2_DATA2_0, C2_DATA2_1, C2_DATA2_2, C2_DATA2_3, C2_DATA2_4,
         C2_DATA2_5, C2_DATA2_6, C2_DATA2_7, DP_OP_14J1_122_1525_n32,
         DP_OP_14J1_122_1525_n22, DP_OP_14J1_122_1525_n21,
         DP_OP_14J1_122_1525_n20, DP_OP_14J1_122_1525_n19,
         DP_OP_14J1_122_1525_n18, DP_OP_14J1_122_1525_n17,
         DP_OP_14J1_122_1525_n16, DP_OP_14J1_122_1525_n15,
         DP_OP_14J1_122_1525_n9, DP_OP_14J1_122_1525_n8,
         DP_OP_14J1_122_1525_n7, DP_OP_14J1_122_1525_n6,
         DP_OP_14J1_122_1525_n5, DP_OP_14J1_122_1525_n4,
         DP_OP_14J1_122_1525_n3, DP_OP_14J1_122_1525_n2, n1, n2, n3, n4, n5;

  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U10 ( .A(DP_OP_14J1_122_1525_n32), .B(
        ALU_A[0]), .CI(DP_OP_14J1_122_1525_n22), .CO(DP_OP_14J1_122_1525_n9), 
        .S(C2_DATA2_0) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U9 ( .A(ALU_A[1]), .B(
        DP_OP_14J1_122_1525_n21), .CI(DP_OP_14J1_122_1525_n9), .CO(
        DP_OP_14J1_122_1525_n8), .S(C2_DATA2_1) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U8 ( .A(ALU_A[2]), .B(
        DP_OP_14J1_122_1525_n20), .CI(DP_OP_14J1_122_1525_n8), .CO(
        DP_OP_14J1_122_1525_n7), .S(C2_DATA2_2) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U7 ( .A(ALU_A[3]), .B(
        DP_OP_14J1_122_1525_n19), .CI(DP_OP_14J1_122_1525_n7), .CO(
        DP_OP_14J1_122_1525_n6), .S(C2_DATA2_3) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U6 ( .A(ALU_A[4]), .B(
        DP_OP_14J1_122_1525_n18), .CI(DP_OP_14J1_122_1525_n6), .CO(
        DP_OP_14J1_122_1525_n5), .S(C2_DATA2_4) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U5 ( .A(ALU_A[5]), .B(
        DP_OP_14J1_122_1525_n17), .CI(DP_OP_14J1_122_1525_n5), .CO(
        DP_OP_14J1_122_1525_n4), .S(C2_DATA2_5) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U4 ( .A(ALU_A[6]), .B(
        DP_OP_14J1_122_1525_n16), .CI(DP_OP_14J1_122_1525_n4), .CO(
        DP_OP_14J1_122_1525_n3), .S(C2_DATA2_6) );
  FA1D0BWP12T30P140 DP_OP_14J1_122_1525_U3 ( .A(ALU_A[7]), .B(
        DP_OP_14J1_122_1525_n15), .CI(DP_OP_14J1_122_1525_n3), .CO(
        DP_OP_14J1_122_1525_n2), .S(C2_DATA2_7) );
  INR2D1BWP12T30P140 U2 ( .A1(SU), .B1(AD), .ZN(DP_OP_14J1_122_1525_n32) );
  CKXOR2D0BWP12T30P140 U3 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[4]), .Z(
        DP_OP_14J1_122_1525_n18) );
  CKXOR2D0BWP12T30P140 U4 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[5]), .Z(
        DP_OP_14J1_122_1525_n17) );
  CKXOR2D0BWP12T30P140 U5 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[6]), .Z(
        DP_OP_14J1_122_1525_n16) );
  CKXOR2D0BWP12T30P140 U6 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[7]), .Z(
        DP_OP_14J1_122_1525_n15) );
  CKXOR2D0BWP12T30P140 U7 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[0]), .Z(
        DP_OP_14J1_122_1525_n22) );
  CKXOR2D0BWP12T30P140 U8 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[1]), .Z(
        DP_OP_14J1_122_1525_n21) );
  CKXOR2D0BWP12T30P140 U9 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[2]), .Z(
        DP_OP_14J1_122_1525_n20) );
  CKXOR2D0BWP12T30P140 U10 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[3]), .Z(
        DP_OP_14J1_122_1525_n19) );
  INR2D1BWP12T30P140 U11 ( .A1(AD), .B1(SU), .ZN(n1) );
  OAI21D0BWP12T30P140 U12 ( .A1(DP_OP_14J1_122_1525_n32), .A2(n1), .B(EU), 
        .ZN(n4) );
  INR2D1BWP12T30P140 U13 ( .A1(C2_DATA2_0), .B1(n4), .ZN(ALU_OUT[0]) );
  INR2D1BWP12T30P140 U14 ( .A1(C2_DATA2_1), .B1(n4), .ZN(ALU_OUT[1]) );
  INR2D1BWP12T30P140 U15 ( .A1(C2_DATA2_2), .B1(n4), .ZN(ALU_OUT[2]) );
  INR2D1BWP12T30P140 U16 ( .A1(C2_DATA2_3), .B1(n4), .ZN(ALU_OUT[3]) );
  INR2D1BWP12T30P140 U17 ( .A1(C2_DATA2_4), .B1(n4), .ZN(ALU_OUT[4]) );
  INR2D1BWP12T30P140 U18 ( .A1(C2_DATA2_5), .B1(n4), .ZN(ALU_OUT[5]) );
  INR2D1BWP12T30P140 U19 ( .A1(C2_DATA2_6), .B1(n4), .ZN(ALU_OUT[6]) );
  INR2D1BWP12T30P140 U20 ( .A1(C2_DATA2_7), .B1(n4), .ZN(ALU_OUT[7]) );
  CKXOR2D0BWP12T30P140 U21 ( .A1(DP_OP_14J1_122_1525_n32), .A2(ALU_B[8]), .Z(
        n2) );
  CKXOR2D0BWP12T30P140 U22 ( .A1(n2), .A2(ALU_A[8]), .Z(n3) );
  CKXOR2D0BWP12T30P140 U23 ( .A1(n3), .A2(DP_OP_14J1_122_1525_n2), .Z(n5) );
  INR2D1BWP12T30P140 U24 ( .A1(n5), .B1(n4), .ZN(ALU_OUT[8]) );
endmodule


module OREG ( clk, O_IN, LO, O_OUT );
  input [8:0] O_IN;
  output [8:0] O_OUT;
  input clk, LO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  DFQD2BWP12T30P140 O_OUT_r_reg_8_ ( .D(n9), .CP(clk), .Q(O_OUT[8]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_7_ ( .D(n8), .CP(clk), .Q(O_OUT[7]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_6_ ( .D(n7), .CP(clk), .Q(O_OUT[6]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_5_ ( .D(n6), .CP(clk), .Q(O_OUT[5]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_3_ ( .D(n4), .CP(clk), .Q(O_OUT[3]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_2_ ( .D(n3), .CP(clk), .Q(O_OUT[2]) );
  DFQD2BWP12T30P140 O_OUT_r_reg_1_ ( .D(n2), .CP(clk), .Q(O_OUT[1]) );
  DFQD1BWP12T30P140 O_OUT_r_reg_4_ ( .D(n5), .CP(clk), .Q(O_OUT[4]) );
  DFQD1BWP12T30P140 O_OUT_r_reg_0_ ( .D(n1), .CP(clk), .Q(O_OUT[0]) );
  CKMUX2D0BWP12T30P140 U2 ( .I0(O_IN[0]), .I1(O_OUT[0]), .S(LO), .Z(n1) );
  CKMUX2D0BWP12T30P140 U3 ( .I0(O_IN[1]), .I1(O_OUT[1]), .S(LO), .Z(n2) );
  CKMUX2D0BWP12T30P140 U4 ( .I0(O_IN[2]), .I1(O_OUT[2]), .S(LO), .Z(n3) );
  CKMUX2D0BWP12T30P140 U5 ( .I0(O_IN[3]), .I1(O_OUT[3]), .S(LO), .Z(n4) );
  CKMUX2D0BWP12T30P140 U6 ( .I0(O_IN[4]), .I1(O_OUT[4]), .S(LO), .Z(n5) );
  CKMUX2D0BWP12T30P140 U7 ( .I0(O_IN[5]), .I1(O_OUT[5]), .S(LO), .Z(n6) );
  CKMUX2D0BWP12T30P140 U8 ( .I0(O_IN[6]), .I1(O_OUT[6]), .S(LO), .Z(n7) );
  CKMUX2D0BWP12T30P140 U9 ( .I0(O_IN[7]), .I1(O_OUT[7]), .S(LO), .Z(n8) );
  CKMUX2D0BWP12T30P140 U10 ( .I0(O_IN[8]), .I1(O_OUT[8]), .S(LO), .Z(n9) );
endmodule


module M3CPU8 ( clk, rst, PC_o, MAR_o, SRAM_o, IR_o_1, IR_o_2, AR_o, PRE_o, 
        ROM_o, NANO_PRE_o, NANO_ROM_o, EP_o, CP_o, LM_o, CE_o, LI_o, EI_o, 
        CS_o, LA_o, EA_o, SU_o, AD_o, EU_o, LB_o, LO_o, LOAD_MICRO_o, 
        CLEAR_MICRO_o, INC_MICRO_o, B_out, ALU_out, A_out, OR_out );
  output [3:0] PC_o;
  output [3:0] MAR_o;
  output [8:0] SRAM_o;
  output [4:0] IR_o_1;
  output [3:0] IR_o_2;
  output [3:0] AR_o;
  output [3:0] PRE_o;
  output [4:0] ROM_o;
  output [4:0] NANO_PRE_o;
  output [16:0] NANO_ROM_o;
  output [8:0] B_out;
  output [8:0] ALU_out;
  output [8:0] A_out;
  output [8:0] OR_out;
  input clk, rst;
  output EP_o, CP_o, LM_o, CE_o, LI_o, EI_o, CS_o, LA_o, EA_o, SU_o, AD_o,
         EU_o, LB_o, LO_o, LOAD_MICRO_o, CLEAR_MICRO_o, INC_MICRO_o;
  wire   PRE_IN_4_, MICRO_ROM_IN_4_, n_0_net__3_, n_0_net__2_, n_0_net__1_,
         n_0_net__0_, n_1_net__8_, n_1_net__7_, n_1_net__6_, n_1_net__5_,
         n_1_net__4_, n_1_net__3_, n_1_net__2_, n_1_net__1_, n_1_net__0_, n4,
         n5, n6, n7, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [8:0] bus_8_2;

  PC UUT1 ( .clk(clk), .rst(rst), .EP(EP_o), .CP(CP_o), .PC_OUT(PC_o) );
  MAR UUT2 ( .clk(clk), .LM(LM_o), .PC_IN({n_0_net__3_, n_0_net__2_, 
        n_0_net__1_, n_0_net__0_}), .MAR_OUT(MAR_o) );
  SRAM UUT3 ( .CE(CE_o), .MAR_IN(MAR_o), .SRAM_OUT(SRAM_o) );
  IR UUT4 ( .clk(n6), .LI(LI_o), .EI(EI_o), .SRAM_IN(SRAM_o), .IR_OUT_1(IR_o_1), .IR_OUT_2(IR_o_2) );
  ADDR_ROM UUT5 ( .IR_OUT(IR_o_1), .AR_OUT({PRE_IN_4_, AR_o}) );
  MICRO_PROG_COUNTER UUT6 ( .clk(clk), .rst(rst), .AR_ROM_IN({PRE_IN_4_, AR_o}), .LOAD_MICRO(LOAD_MICRO_o), .INC_MICRO(INC_MICRO_o), .CLEAR_MICRO(
        CLEAR_MICRO_o), .PRE_OUT({MICRO_ROM_IN_4_, PRE_o}) );
  MICROCODE_ROM UUT7 ( .PRE_IN({MICRO_ROM_IN_4_, PRE_o}), .ROM_OUT({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, ROM_o[3:0]}) );
  NANO_PROG_COUNTER UUT8 ( .MCR_IN({n7, n7, ROM_o[3:0]}), .NANO_PRE_OUT({
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, NANO_PRE_o[3:0]}) );
  NANOCODE_ROM UUT9 ( .NANO_PRE_IN({n7, n7, NANO_PRE_o[3:0]}), .NANO_ROM_OUT(
        NANO_ROM_o) );
  NANOCODE_DECODER UUT10 ( .NANO_ROM_IN(NANO_ROM_o), .EP_o(EP_o), .CP_o(CP_o), 
        .LM_o(LM_o), .CE_o(CE_o), .LI_o(LI_o), .EI_o(EI_o), .CS_o(CS_o), 
        .LA_o(LA_o), .EA_o(EA_o), .SU_o(SU_o), .AD_o(AD_o), .EU_o(EU_o), 
        .LB_o(LB_o), .LO_o(LO_o), .LOAD_MICRO_o(LOAD_MICRO_o), .CLEAR_MICRO_o(
        CLEAR_MICRO_o), .INC_MICRO_o(INC_MICRO_o) );
  ACC UUT11 ( .clk(n6), .ACC_IN({n_1_net__8_, n_1_net__7_, n_1_net__6_, 
        n_1_net__5_, n_1_net__4_, n_1_net__3_, n_1_net__2_, n_1_net__1_, 
        n_1_net__0_}), .LA(LA_o), .EA(EA_o), .ACC_ALU(A_out), .ACC_BUS(bus_8_2) );
  BREG UUT12 ( .clk(n5), .B_IN(SRAM_o), .LB(LB_o), .B_OUT(B_out) );
  ALU UUT13 ( .ALU_A(A_out), .ALU_B(B_out), .SU(SU_o), .AD(AD_o), .EU(EU_o), 
        .ALU_OUT(ALU_out) );
  OREG UUT14 ( .clk(n5), .O_IN(bus_8_2), .LO(LO_o), .O_OUT(OR_out) );
  TIEHBWP12T30P140 U15 ( .Z(n4) );
  INVD0BWP12T30P140 U16 ( .I(n4), .ZN(NANO_PRE_o[4]) );
  INVD0BWP12T30P140 U17 ( .I(n4), .ZN(ROM_o[4]) );
  TIELBWP12T30P140 U18 ( .ZN(n7) );
  OR2D0BWP12T30P140 U19 ( .A1(SRAM_o[2]), .A2(ALU_out[2]), .Z(n_1_net__2_) );
  OR2D0BWP12T30P140 U20 ( .A1(SRAM_o[3]), .A2(ALU_out[3]), .Z(n_1_net__3_) );
  OR2D0BWP12T30P140 U21 ( .A1(SRAM_o[4]), .A2(ALU_out[4]), .Z(n_1_net__4_) );
  OR2D0BWP12T30P140 U22 ( .A1(SRAM_o[5]), .A2(ALU_out[5]), .Z(n_1_net__5_) );
  OR2D0BWP12T30P140 U23 ( .A1(SRAM_o[6]), .A2(ALU_out[6]), .Z(n_1_net__6_) );
  OR2D0BWP12T30P140 U24 ( .A1(SRAM_o[7]), .A2(ALU_out[7]), .Z(n_1_net__7_) );
  OR2D0BWP12T30P140 U25 ( .A1(SRAM_o[0]), .A2(ALU_out[0]), .Z(n_1_net__0_) );
  OR2D0BWP12T30P140 U26 ( .A1(SRAM_o[8]), .A2(ALU_out[8]), .Z(n_1_net__8_) );
  OR2D0BWP12T30P140 U27 ( .A1(SRAM_o[1]), .A2(ALU_out[1]), .Z(n_1_net__1_) );
  OR2D0BWP12T30P140 U28 ( .A1(PC_o[3]), .A2(IR_o_2[3]), .Z(n_0_net__3_) );
  OR2D0BWP12T30P140 U29 ( .A1(PC_o[0]), .A2(IR_o_2[0]), .Z(n_0_net__0_) );
  OR2D0BWP12T30P140 U30 ( .A1(PC_o[2]), .A2(IR_o_2[2]), .Z(n_0_net__2_) );
  OR2D0BWP12T30P140 U31 ( .A1(PC_o[1]), .A2(IR_o_2[1]), .Z(n_0_net__1_) );
  CKBD0BWP12T30P140 U32 ( .I(clk), .Z(n5) );
  CKBD0BWP12T30P140 U33 ( .I(clk), .Z(n6) );
endmodule

