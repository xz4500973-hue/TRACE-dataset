/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:34:44 2026
/////////////////////////////////////////////////////////////


module accu ( clk, rst_n, data_in, valid_in, valid_out, data_out );
  input [7:0] data_in;
  output [9:0] data_out;
  input clk, rst_n, valid_in;
  output valid_out;
  wire   N103, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190;
  wire   [1:0] count;
  wire   [7:0] val0;
  wire   [7:0] val1;
  wire   [7:0] val2;

  DFCNQD1BWP12T30P140 data_out_reg_8_ ( .D(n45), .CP(clk), .CDN(rst_n), .Q(
        data_out[8]) );
  DFCNQD1BWP12T30P140 data_out_reg_7_ ( .D(n44), .CP(clk), .CDN(rst_n), .Q(
        data_out[7]) );
  DFCNQD1BWP12T30P140 data_out_reg_6_ ( .D(n43), .CP(clk), .CDN(rst_n), .Q(
        data_out[6]) );
  DFCNQD1BWP12T30P140 data_out_reg_5_ ( .D(n42), .CP(clk), .CDN(rst_n), .Q(
        data_out[5]) );
  DFCNQD1BWP12T30P140 data_out_reg_4_ ( .D(n41), .CP(clk), .CDN(rst_n), .Q(
        data_out[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_3_ ( .D(n40), .CP(clk), .CDN(rst_n), .Q(
        data_out[3]) );
  DFCNQD1BWP12T30P140 data_out_reg_2_ ( .D(n39), .CP(clk), .CDN(rst_n), .Q(
        data_out[2]) );
  DFCNQD1BWP12T30P140 data_out_reg_1_ ( .D(n38), .CP(clk), .CDN(rst_n), .Q(
        data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_0_ ( .D(n37), .CP(clk), .CDN(rst_n), .Q(
        data_out[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_9_ ( .D(n46), .CP(clk), .CDN(rst_n), .Q(
        data_out[9]) );
  DFCNQD1BWP12T30P140 valid_out_reg ( .D(N103), .CP(clk), .CDN(n189), .Q(
        valid_out) );
  DFCNQD1BWP12T30P140 val0_reg_0_ ( .D(n62), .CP(n190), .CDN(n189), .Q(val0[0]) );
  DFCNQD1BWP12T30P140 val1_reg_0_ ( .D(n70), .CP(n190), .CDN(n189), .Q(val1[0]) );
  DFCNQD1BWP12T30P140 count_reg_0_ ( .D(n71), .CP(clk), .CDN(n189), .Q(
        count[0]) );
  DFCNQD1BWP12T30P140 count_reg_1_ ( .D(n72), .CP(n190), .CDN(n189), .Q(
        count[1]) );
  DFCNQD1BWP12T30P140 val2_reg_0_ ( .D(n54), .CP(clk), .CDN(n189), .Q(val2[0])
         );
  DFCNQD1BWP12T30P140 val2_reg_1_ ( .D(n53), .CP(n190), .CDN(n189), .Q(val2[1]) );
  DFCNQD1BWP12T30P140 val1_reg_7_ ( .D(n63), .CP(clk), .CDN(rst_n), .Q(val1[7]) );
  DFCNQD1BWP12T30P140 val0_reg_2_ ( .D(n60), .CP(clk), .CDN(rst_n), .Q(val0[2]) );
  DFCNQD1BWP12T30P140 val0_reg_3_ ( .D(n59), .CP(n190), .CDN(n189), .Q(val0[3]) );
  DFCNQD1BWP12T30P140 val0_reg_4_ ( .D(n58), .CP(n190), .CDN(rst_n), .Q(
        val0[4]) );
  DFCNQD1BWP12T30P140 val0_reg_5_ ( .D(n57), .CP(n190), .CDN(n189), .Q(val0[5]) );
  DFCNQD1BWP12T30P140 val0_reg_6_ ( .D(n56), .CP(n190), .CDN(rst_n), .Q(
        val0[6]) );
  DFCNQD1BWP12T30P140 val0_reg_7_ ( .D(n55), .CP(n190), .CDN(n189), .Q(val0[7]) );
  DFCNQD1BWP12T30P140 val2_reg_2_ ( .D(n52), .CP(clk), .CDN(n189), .Q(val2[2])
         );
  DFCNQD1BWP12T30P140 val2_reg_3_ ( .D(n51), .CP(n190), .CDN(n189), .Q(val2[3]) );
  DFCNQD1BWP12T30P140 val2_reg_4_ ( .D(n50), .CP(clk), .CDN(n189), .Q(val2[4])
         );
  DFCNQD1BWP12T30P140 val2_reg_5_ ( .D(n49), .CP(n190), .CDN(n189), .Q(val2[5]) );
  DFCNQD1BWP12T30P140 val2_reg_6_ ( .D(n48), .CP(clk), .CDN(n189), .Q(val2[6])
         );
  DFCNQD1BWP12T30P140 val2_reg_7_ ( .D(n47), .CP(n190), .CDN(n189), .Q(val2[7]) );
  DFCNQD1BWP12T30P140 val0_reg_1_ ( .D(n61), .CP(n190), .CDN(n189), .Q(val0[1]) );
  DFCNQD1BWP12T30P140 val1_reg_1_ ( .D(n69), .CP(n190), .CDN(rst_n), .Q(
        val1[1]) );
  DFCNQD1BWP12T30P140 val1_reg_2_ ( .D(n68), .CP(n190), .CDN(n189), .Q(val1[2]) );
  DFCNQD1BWP12T30P140 val1_reg_3_ ( .D(n67), .CP(n190), .CDN(rst_n), .Q(
        val1[3]) );
  DFCNQD1BWP12T30P140 val1_reg_4_ ( .D(n66), .CP(n190), .CDN(n189), .Q(val1[4]) );
  DFCNQD1BWP12T30P140 val1_reg_5_ ( .D(n65), .CP(n190), .CDN(rst_n), .Q(
        val1[5]) );
  DFCNQD1BWP12T30P140 val1_reg_6_ ( .D(n64), .CP(n190), .CDN(rst_n), .Q(
        val1[6]) );
  INVD0BWP12T30P140 U75 ( .I(count[0]), .ZN(n165) );
  INR2D1BWP12T30P140 U76 ( .A1(valid_out), .B1(valid_in), .ZN(n166) );
  NR2D0BWP12T30P140 U77 ( .A1(n165), .A2(n166), .ZN(n170) );
  ND2D0BWP12T30P140 U78 ( .A1(count[1]), .A2(n170), .ZN(n145) );
  INVD0BWP12T30P140 U79 ( .I(n145), .ZN(N103) );
  INVD0BWP12T30P140 U80 ( .I(count[1]), .ZN(n169) );
  INVD0BWP12T30P140 U81 ( .I(n166), .ZN(n167) );
  ND3D0BWP12T30P140 U82 ( .A1(n169), .A2(n165), .A3(n167), .ZN(n188) );
  INVD0BWP12T30P140 U83 ( .I(n188), .ZN(n164) );
  ND2D0BWP12T30P140 U84 ( .A1(n164), .A2(data_in[7]), .ZN(n182) );
  NR3D0BWP12T30P140 U85 ( .A1(count[0]), .A2(n166), .A3(n169), .ZN(n179) );
  CKBD0BWP12T30P140 U86 ( .I(n179), .Z(n181) );
  INVD0BWP12T30P140 U87 ( .I(data_in[0]), .ZN(n172) );
  INVD0BWP12T30P140 U88 ( .I(val0[0]), .ZN(n161) );
  NR2D0BWP12T30P140 U89 ( .A1(n172), .A2(n161), .ZN(n88) );
  FA1D0BWP12T30P140 U90 ( .A(val0[6]), .B(data_in[6]), .CI(n83), .CO(n138), 
        .S(n102) );
  FA1D0BWP12T30P140 U91 ( .A(val0[5]), .B(data_in[5]), .CI(n84), .CO(n83), .S(
        n108) );
  FA1D0BWP12T30P140 U92 ( .A(val0[4]), .B(data_in[4]), .CI(n85), .CO(n84), .S(
        n114) );
  FA1D0BWP12T30P140 U93 ( .A(val0[3]), .B(data_in[3]), .CI(n86), .CO(n85), .S(
        n120) );
  FA1D0BWP12T30P140 U94 ( .A(val0[2]), .B(data_in[2]), .CI(n87), .CO(n86), .S(
        n126) );
  FA1D0BWP12T30P140 U95 ( .A(val0[1]), .B(data_in[1]), .CI(n88), .CO(n87), .S(
        n134) );
  AOI21D0BWP12T30P140 U96 ( .A1(n172), .A2(n161), .B(n88), .ZN(n152) );
  INVD0BWP12T30P140 U97 ( .I(n152), .ZN(n95) );
  INVD0BWP12T30P140 U98 ( .I(val1[0]), .ZN(n163) );
  NR2D0BWP12T30P140 U99 ( .A1(n95), .A2(n163), .ZN(n94) );
  FA1D0BWP12T30P140 U100 ( .A(val1[6]), .B(n102), .CI(n89), .CO(n139), .S(n101) );
  FA1D0BWP12T30P140 U101 ( .A(val1[5]), .B(n108), .CI(n90), .CO(n89), .S(n107)
         );
  FA1D0BWP12T30P140 U102 ( .A(val1[4]), .B(n114), .CI(n91), .CO(n90), .S(n113)
         );
  FA1D0BWP12T30P140 U103 ( .A(val1[3]), .B(n120), .CI(n92), .CO(n91), .S(n119)
         );
  FA1D0BWP12T30P140 U104 ( .A(val1[2]), .B(n126), .CI(n93), .CO(n92), .S(n125)
         );
  FA1D0BWP12T30P140 U105 ( .A(val1[1]), .B(n134), .CI(n94), .CO(n93), .S(n133)
         );
  AOI21D0BWP12T30P140 U106 ( .A1(n95), .A2(n163), .B(n94), .ZN(n151) );
  ND2D0BWP12T30P140 U107 ( .A1(n151), .A2(val2[0]), .ZN(n150) );
  INR2D1BWP12T30P140 U108 ( .A1(val2[1]), .B1(n150), .ZN(n130) );
  INR2D1BWP12T30P140 U109 ( .A1(n150), .B1(val2[1]), .ZN(n129) );
  IAO21D0BWP12T30P140 U110 ( .A1(n133), .A2(n130), .B(n129), .ZN(n123) );
  AOI22D0BWP12T30P140 U111 ( .A1(n181), .A2(n143), .B1(N103), .B2(n96), .ZN(
        n98) );
  ND2D0BWP12T30P140 U112 ( .A1(n169), .A2(n170), .ZN(n168) );
  INVD0BWP12T30P140 U113 ( .I(n168), .ZN(n176) );
  AOI22D0BWP12T30P140 U114 ( .A1(n166), .A2(data_out[7]), .B1(n176), .B2(n140), 
        .ZN(n97) );
  ND3D0BWP12T30P140 U115 ( .A1(n182), .A2(n98), .A3(n97), .ZN(n44) );
  ND2D0BWP12T30P140 U116 ( .A1(n164), .A2(data_in[6]), .ZN(n187) );
  FA1D0BWP12T30P140 U117 ( .A(val2[6]), .B(n101), .CI(n99), .CO(n142), .S(n100) );
  AOI22D0BWP12T30P140 U118 ( .A1(n181), .A2(n101), .B1(N103), .B2(n100), .ZN(
        n104) );
  CKBD0BWP12T30P140 U119 ( .I(n176), .Z(n178) );
  AOI22D0BWP12T30P140 U120 ( .A1(n166), .A2(data_out[6]), .B1(n178), .B2(n102), 
        .ZN(n103) );
  ND3D0BWP12T30P140 U121 ( .A1(n187), .A2(n104), .A3(n103), .ZN(n43) );
  INVD0BWP12T30P140 U122 ( .I(data_in[6]), .ZN(n171) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n178), .A2(n171), .B1(val1[6]), .B2(n176), 
        .ZN(n64) );
  ND2D0BWP12T30P140 U124 ( .A1(n164), .A2(data_in[5]), .ZN(n186) );
  FA1D0BWP12T30P140 U125 ( .A(val2[5]), .B(n107), .CI(n105), .CO(n99), .S(n106) );
  AOI22D0BWP12T30P140 U126 ( .A1(n181), .A2(n107), .B1(N103), .B2(n106), .ZN(
        n110) );
  AOI22D0BWP12T30P140 U127 ( .A1(n166), .A2(data_out[5]), .B1(n178), .B2(n108), 
        .ZN(n109) );
  ND3D0BWP12T30P140 U128 ( .A1(n186), .A2(n110), .A3(n109), .ZN(n42) );
  ND2D0BWP12T30P140 U129 ( .A1(n164), .A2(data_in[4]), .ZN(n185) );
  FA1D0BWP12T30P140 U130 ( .A(val2[4]), .B(n113), .CI(n111), .CO(n105), .S(
        n112) );
  AOI22D0BWP12T30P140 U131 ( .A1(n181), .A2(n113), .B1(N103), .B2(n112), .ZN(
        n116) );
  AOI22D0BWP12T30P140 U132 ( .A1(n166), .A2(data_out[4]), .B1(n176), .B2(n114), 
        .ZN(n115) );
  ND3D0BWP12T30P140 U133 ( .A1(n185), .A2(n116), .A3(n115), .ZN(n41) );
  INVD0BWP12T30P140 U134 ( .I(data_in[5]), .ZN(n173) );
  MAOI22D0BWP12T30P140 U135 ( .A1(n178), .A2(n173), .B1(val1[5]), .B2(n176), 
        .ZN(n65) );
  ND2D0BWP12T30P140 U136 ( .A1(n164), .A2(data_in[3]), .ZN(n184) );
  FA1D0BWP12T30P140 U137 ( .A(val2[3]), .B(n119), .CI(n117), .CO(n111), .S(
        n118) );
  AOI22D0BWP12T30P140 U138 ( .A1(n181), .A2(n119), .B1(N103), .B2(n118), .ZN(
        n122) );
  AOI22D0BWP12T30P140 U139 ( .A1(n166), .A2(data_out[3]), .B1(n178), .B2(n120), 
        .ZN(n121) );
  ND3D0BWP12T30P140 U140 ( .A1(n184), .A2(n122), .A3(n121), .ZN(n40) );
  ND2D0BWP12T30P140 U141 ( .A1(n164), .A2(data_in[2]), .ZN(n183) );
  FA1D0BWP12T30P140 U142 ( .A(val2[2]), .B(n125), .CI(n123), .CO(n117), .S(
        n124) );
  AOI22D0BWP12T30P140 U143 ( .A1(n181), .A2(n125), .B1(N103), .B2(n124), .ZN(
        n128) );
  AOI22D0BWP12T30P140 U144 ( .A1(n166), .A2(data_out[2]), .B1(n176), .B2(n126), 
        .ZN(n127) );
  ND3D0BWP12T30P140 U145 ( .A1(n183), .A2(n128), .A3(n127), .ZN(n39) );
  INVD0BWP12T30P140 U146 ( .I(data_in[4]), .ZN(n175) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n178), .A2(n175), .B1(val1[4]), .B2(n176), 
        .ZN(n66) );
  INVD0BWP12T30P140 U148 ( .I(n133), .ZN(n132) );
  NR2D0BWP12T30P140 U149 ( .A1(n130), .A2(n129), .ZN(n131) );
  MUX2ND0BWP12T30P140 U150 ( .I0(n133), .I1(n132), .S(n131), .ZN(n137) );
  AOI22D0BWP12T30P140 U151 ( .A1(n166), .A2(data_out[1]), .B1(n164), .B2(
        data_in[1]), .ZN(n136) );
  AOI22D0BWP12T30P140 U152 ( .A1(n178), .A2(n134), .B1(n181), .B2(n133), .ZN(
        n135) );
  OAI211D0BWP12T30P140 U153 ( .A1(n145), .A2(n137), .B(n136), .C(n135), .ZN(
        n38) );
  FA1D0BWP12T30P140 U154 ( .A(val0[7]), .B(data_in[7]), .CI(n138), .CO(n144), 
        .S(n140) );
  FA1D0BWP12T30P140 U155 ( .A(val1[7]), .B(n140), .CI(n139), .CO(n141), .S(
        n143) );
  ND2D0BWP12T30P140 U156 ( .A1(n144), .A2(n141), .ZN(n159) );
  NR2D0BWP12T30P140 U157 ( .A1(n144), .A2(n141), .ZN(n156) );
  INR2D1BWP12T30P140 U158 ( .A1(n159), .B1(n156), .ZN(n149) );
  FA1D0BWP12T30P140 U159 ( .A(val2[7]), .B(n143), .CI(n142), .CO(n146), .S(n96) );
  ND2D0BWP12T30P140 U160 ( .A1(N103), .A2(n146), .ZN(n157) );
  AOI22D0BWP12T30P140 U161 ( .A1(n166), .A2(data_out[8]), .B1(n176), .B2(n144), 
        .ZN(n148) );
  IAO21D0BWP12T30P140 U162 ( .A1(n146), .A2(n145), .B(n179), .ZN(n158) );
  IND2D1BWP12T30P140 U163 ( .A1(n158), .B1(n149), .ZN(n147) );
  OAI211D0BWP12T30P140 U164 ( .A1(n149), .A2(n157), .B(n148), .C(n147), .ZN(
        n45) );
  INVD0BWP12T30P140 U165 ( .I(data_in[3]), .ZN(n180) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n178), .A2(n180), .B1(val1[3]), .B2(n176), 
        .ZN(n67) );
  OAI211D0BWP12T30P140 U167 ( .A1(n151), .A2(val2[0]), .B(N103), .C(n150), 
        .ZN(n155) );
  AOI22D0BWP12T30P140 U168 ( .A1(n178), .A2(n152), .B1(n179), .B2(n151), .ZN(
        n154) );
  AOI22D0BWP12T30P140 U169 ( .A1(n166), .A2(data_out[0]), .B1(data_in[0]), 
        .B2(n164), .ZN(n153) );
  ND3D0BWP12T30P140 U170 ( .A1(n155), .A2(n154), .A3(n153), .ZN(n37) );
  INVD0BWP12T30P140 U171 ( .I(data_out[9]), .ZN(n160) );
  OAI222D0BWP12T30P140 U172 ( .A1(n160), .A2(n167), .B1(n159), .B2(n158), .C1(
        n157), .C2(n156), .ZN(n46) );
  INVD0BWP12T30P140 U173 ( .I(data_in[2]), .ZN(n162) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n178), .A2(n162), .B1(val1[2]), .B2(n176), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U175 ( .A1(n164), .A2(n172), .B1(n161), .B2(n188), .ZN(
        n62) );
  INVD0BWP12T30P140 U176 ( .I(data_in[1]), .ZN(n174) );
  MAOI22D0BWP12T30P140 U177 ( .A1(n178), .A2(n174), .B1(val1[1]), .B2(n176), 
        .ZN(n69) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n181), .A2(n162), .B1(val2[2]), .B2(n179), 
        .ZN(n52) );
  AOI22D0BWP12T30P140 U179 ( .A1(n178), .A2(n172), .B1(n163), .B2(n168), .ZN(
        n70) );
  MAOI22D0BWP12T30P140 U180 ( .A1(n164), .A2(n174), .B1(val0[1]), .B2(n164), 
        .ZN(n61) );
  AOI22D0BWP12T30P140 U181 ( .A1(count[0]), .A2(n167), .B1(n166), .B2(n165), 
        .ZN(n71) );
  INVD0BWP12T30P140 U182 ( .I(data_in[7]), .ZN(n177) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n181), .A2(n177), .B1(val2[7]), .B2(n179), 
        .ZN(n47) );
  OAI21D0BWP12T30P140 U184 ( .A1(n170), .A2(n169), .B(n168), .ZN(n72) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n179), .A2(n171), .B1(val2[6]), .B2(n179), 
        .ZN(n48) );
  MAOI22D0BWP12T30P140 U186 ( .A1(n181), .A2(n172), .B1(val2[0]), .B2(n179), 
        .ZN(n54) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n181), .A2(n173), .B1(val2[5]), .B2(n179), 
        .ZN(n49) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n181), .A2(n174), .B1(val2[1]), .B2(n179), 
        .ZN(n53) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n181), .A2(n175), .B1(val2[4]), .B2(n179), 
        .ZN(n50) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n178), .A2(n177), .B1(val1[7]), .B2(n176), 
        .ZN(n63) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n181), .A2(n180), .B1(val2[3]), .B2(n179), 
        .ZN(n51) );
  CKBD0BWP12T30P140 U192 ( .I(clk), .Z(n190) );
  CKBD0BWP12T30P140 U193 ( .I(rst_n), .Z(n189) );
  IOA21D0BWP12T30P140 U194 ( .A1(val0[7]), .A2(n188), .B(n182), .ZN(n55) );
  IOA21D0BWP12T30P140 U195 ( .A1(val0[2]), .A2(n188), .B(n183), .ZN(n60) );
  IOA21D0BWP12T30P140 U196 ( .A1(val0[3]), .A2(n188), .B(n184), .ZN(n59) );
  IOA21D0BWP12T30P140 U197 ( .A1(val0[4]), .A2(n188), .B(n185), .ZN(n58) );
  IOA21D0BWP12T30P140 U198 ( .A1(val0[5]), .A2(n188), .B(n186), .ZN(n57) );
  IOA21D0BWP12T30P140 U199 ( .A1(val0[6]), .A2(n188), .B(n187), .ZN(n56) );
endmodule

