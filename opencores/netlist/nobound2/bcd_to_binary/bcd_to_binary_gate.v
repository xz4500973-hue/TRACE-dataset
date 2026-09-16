/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:09:02 2026
/////////////////////////////////////////////////////////////


module bcd_to_binary ( clk_i, ce_i, rst_i, start_i, dat_bcd_i, dat_binary_o, 
        done_o );
  input [19:0] dat_bcd_i;
  output [15:0] dat_binary_o;
  input clk_i, ce_i, rst_i, start_i;
  output done_o;
  wire   busy_bit, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192;
  wire   [16:1] bcd_reg;
  wire   [15:0] bin_next;
  wire   [18:16] bcd_next;
  wire   [3:0] bit_count;

  DFQD2BWP12T30P140 bcd_reg_reg_18_ ( .D(n105), .CP(clk_i), .Q(bcd_next[17])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_17_ ( .D(n106), .CP(clk_i), .Q(bcd_next[16])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_19_ ( .D(n104), .CP(clk_i), .Q(bcd_next[18])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_16_ ( .D(n107), .CP(clk_i), .Q(bcd_reg[16]) );
  DFQD2BWP12T30P140 bcd_reg_reg_15_ ( .D(n108), .CP(clk_i), .Q(bcd_reg[15]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_15_ ( .D(n74), .CP(n192), .Q(
        dat_binary_o[15]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_0_ ( .D(n89), .CP(n191), .Q(
        dat_binary_o[0]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_1_ ( .D(n88), .CP(n191), .Q(
        dat_binary_o[1]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_2_ ( .D(n87), .CP(n191), .Q(
        dat_binary_o[2]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_3_ ( .D(n86), .CP(n191), .Q(
        dat_binary_o[3]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_4_ ( .D(n85), .CP(n191), .Q(
        dat_binary_o[4]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_5_ ( .D(n84), .CP(n191), .Q(
        dat_binary_o[5]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_6_ ( .D(n83), .CP(n191), .Q(
        dat_binary_o[6]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_7_ ( .D(n82), .CP(n191), .Q(
        dat_binary_o[7]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_9_ ( .D(n80), .CP(clk_i), .Q(
        dat_binary_o[9]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_10_ ( .D(n79), .CP(n191), .Q(
        dat_binary_o[10]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_11_ ( .D(n78), .CP(n192), .Q(
        dat_binary_o[11]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_12_ ( .D(n77), .CP(clk_i), .Q(
        dat_binary_o[12]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_13_ ( .D(n76), .CP(n191), .Q(
        dat_binary_o[13]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_14_ ( .D(n75), .CP(n192), .Q(
        dat_binary_o[14]) );
  DFQD2BWP12T30P140 bcd_reg_reg_13_ ( .D(n110), .CP(clk_i), .Q(bcd_reg[13]) );
  DFQD2BWP12T30P140 bcd_reg_reg_14_ ( .D(n109), .CP(clk_i), .Q(bcd_reg[14]) );
  DFQD2BWP12T30P140 bit_count_reg_3_ ( .D(n126), .CP(n191), .Q(bit_count[3])
         );
  DFQD2BWP12T30P140 bin_reg_reg_1_ ( .D(n103), .CP(n191), .Q(bin_next[0]) );
  DFQD2BWP12T30P140 bit_count_reg_2_ ( .D(n73), .CP(clk_i), .Q(bit_count[2])
         );
  DFQD2BWP12T30P140 busy_bit_reg ( .D(n125), .CP(clk_i), .Q(busy_bit) );
  DFQD2BWP12T30P140 bcd_reg_reg_0_ ( .D(n123), .CP(n192), .Q(bin_next[15]) );
  DFQD2BWP12T30P140 bin_reg_reg_15_ ( .D(n90), .CP(n192), .Q(bin_next[14]) );
  DFQD2BWP12T30P140 bin_reg_reg_13_ ( .D(n92), .CP(n192), .Q(bin_next[12]) );
  DFQD2BWP12T30P140 bin_reg_reg_12_ ( .D(n93), .CP(n192), .Q(bin_next[11]) );
  DFQD2BWP12T30P140 bin_reg_reg_11_ ( .D(n94), .CP(n192), .Q(bin_next[10]) );
  DFQD2BWP12T30P140 bin_reg_reg_10_ ( .D(n95), .CP(n192), .Q(bin_next[9]) );
  DFQD2BWP12T30P140 bin_reg_reg_9_ ( .D(n96), .CP(n192), .Q(bin_next[8]) );
  DFQD2BWP12T30P140 bin_reg_reg_8_ ( .D(n97), .CP(n192), .Q(bin_next[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_7_ ( .D(n98), .CP(n192), .Q(bin_next[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_6_ ( .D(n99), .CP(n192), .Q(bin_next[5]) );
  DFQD2BWP12T30P140 bin_reg_reg_5_ ( .D(n100), .CP(n191), .Q(bin_next[4]) );
  DFQD2BWP12T30P140 bin_reg_reg_4_ ( .D(n101), .CP(n191), .Q(bin_next[3]) );
  DFQD2BWP12T30P140 bin_reg_reg_3_ ( .D(n102), .CP(n191), .Q(bin_next[2]) );
  DFQD2BWP12T30P140 bin_reg_reg_2_ ( .D(n124), .CP(n191), .Q(bin_next[1]) );
  DFQD2BWP12T30P140 bcd_reg_reg_4_ ( .D(n119), .CP(clk_i), .Q(bcd_reg[4]) );
  DFQD2BWP12T30P140 bit_count_reg_0_ ( .D(n127), .CP(n192), .Q(bit_count[0])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_8_ ( .D(n115), .CP(n191), .Q(bcd_reg[8]) );
  DFQD2BWP12T30P140 bcd_reg_reg_11_ ( .D(n112), .CP(n192), .Q(bcd_reg[11]) );
  DFQD2BWP12T30P140 bcd_reg_reg_7_ ( .D(n116), .CP(clk_i), .Q(bcd_reg[7]) );
  DFQD2BWP12T30P140 bcd_reg_reg_3_ ( .D(n120), .CP(n192), .Q(bcd_reg[3]) );
  DFQD2BWP12T30P140 bcd_reg_reg_1_ ( .D(n122), .CP(n191), .Q(bcd_reg[1]) );
  DFQD2BWP12T30P140 bcd_reg_reg_9_ ( .D(n114), .CP(n192), .Q(bcd_reg[9]) );
  DFQD2BWP12T30P140 bcd_reg_reg_5_ ( .D(n118), .CP(clk_i), .Q(bcd_reg[5]) );
  DFQD2BWP12T30P140 bcd_reg_reg_10_ ( .D(n113), .CP(clk_i), .Q(bcd_reg[10]) );
  DFQD2BWP12T30P140 bcd_reg_reg_6_ ( .D(n117), .CP(n191), .Q(bcd_reg[6]) );
  DFQD2BWP12T30P140 bcd_reg_reg_2_ ( .D(n121), .CP(n192), .Q(bcd_reg[2]) );
  DFQD1BWP12T30P140 dat_binary_o_reg_8_ ( .D(n81), .CP(n192), .Q(
        dat_binary_o[8]) );
  DFQD1BWP12T30P140 bin_reg_reg_14_ ( .D(n91), .CP(n192), .Q(bin_next[13]) );
  DFQD1BWP12T30P140 bcd_reg_reg_12_ ( .D(n111), .CP(n191), .Q(bcd_reg[12]) );
  DFQD1BWP12T30P140 bit_count_reg_1_ ( .D(n72), .CP(clk_i), .Q(bit_count[1])
         );
  CKBD0BWP12T30P140 U131 ( .I(n186), .Z(n128) );
  ND2D0BWP12T30P140 U132 ( .A1(busy_bit), .A2(ce_i), .ZN(n169) );
  ND4D0BWP12T30P140 U133 ( .A1(bit_count[2]), .A2(bit_count[1]), .A3(
        bit_count[0]), .A4(bit_count[3]), .ZN(n145) );
  IND2D1BWP12T30P140 U134 ( .A1(n169), .B1(n145), .ZN(n129) );
  OR2D0BWP12T30P140 U135 ( .A1(rst_i), .A2(n129), .Z(n163) );
  INVD0BWP12T30P140 U136 ( .I(n163), .ZN(n159) );
  INR3D1BWP12T30P140 U137 ( .A1(start_i), .B1(busy_bit), .B2(rst_i), .ZN(n186)
         );
  INR3D1BWP12T30P140 U138 ( .A1(n129), .B1(rst_i), .B2(n186), .ZN(n175) );
  CKBD0BWP12T30P140 U139 ( .I(n175), .Z(n185) );
  AO22D0BWP12T30P140 U140 ( .A1(n159), .A2(bin_next[3]), .B1(n185), .B2(
        bin_next[2]), .Z(n102) );
  INVD0BWP12T30P140 U141 ( .I(bit_count[0]), .ZN(n157) );
  NR2D0BWP12T30P140 U142 ( .A1(n157), .A2(n129), .ZN(n160) );
  ND2D0BWP12T30P140 U143 ( .A1(busy_bit), .A2(n129), .ZN(n158) );
  OAI21D0BWP12T30P140 U144 ( .A1(bit_count[0]), .A2(n169), .B(n158), .ZN(n168)
         );
  CKMUX2D0BWP12T30P140 U145 ( .I0(n160), .I1(n168), .S(bit_count[1]), .Z(n72)
         );
  AO222D0BWP12T30P140 U146 ( .A1(n159), .A2(bcd_next[18]), .B1(n185), .B2(
        bcd_next[17]), .C1(n186), .C2(dat_bcd_i[18]), .Z(n105) );
  AN2D0BWP12T30P140 U147 ( .A1(bcd_reg[1]), .A2(bcd_reg[2]), .Z(n131) );
  INVD0BWP12T30P140 U148 ( .I(bcd_reg[4]), .ZN(n149) );
  OAI21D0BWP12T30P140 U149 ( .A1(n131), .A2(n149), .B(bcd_reg[3]), .ZN(n130)
         );
  OAI31D0BWP12T30P140 U150 ( .A1(n131), .A2(bcd_reg[3]), .A3(n149), .B(n130), 
        .ZN(n132) );
  INVD0BWP12T30P140 U151 ( .I(n163), .ZN(n188) );
  AO222D0BWP12T30P140 U152 ( .A1(n132), .A2(n188), .B1(n185), .B2(bcd_reg[2]), 
        .C1(n186), .C2(dat_bcd_i[2]), .Z(n121) );
  AO222D0BWP12T30P140 U153 ( .A1(n159), .A2(bcd_next[17]), .B1(n185), .B2(
        bcd_next[16]), .C1(n186), .C2(dat_bcd_i[17]), .Z(n106) );
  AN2D0BWP12T30P140 U154 ( .A1(bcd_reg[5]), .A2(bcd_reg[6]), .Z(n134) );
  INVD0BWP12T30P140 U155 ( .I(bcd_reg[8]), .ZN(n152) );
  OAI21D0BWP12T30P140 U156 ( .A1(n134), .A2(n152), .B(bcd_reg[7]), .ZN(n133)
         );
  OAI31D0BWP12T30P140 U157 ( .A1(n134), .A2(bcd_reg[7]), .A3(n152), .B(n133), 
        .ZN(n135) );
  AO222D0BWP12T30P140 U158 ( .A1(n135), .A2(n188), .B1(n185), .B2(bcd_reg[6]), 
        .C1(n186), .C2(dat_bcd_i[6]), .Z(n117) );
  AO22D0BWP12T30P140 U159 ( .A1(n186), .A2(dat_bcd_i[19]), .B1(n175), .B2(
        bcd_next[18]), .Z(n104) );
  AN2D0BWP12T30P140 U160 ( .A1(bcd_reg[9]), .A2(bcd_reg[10]), .Z(n137) );
  INVD0BWP12T30P140 U161 ( .I(bcd_reg[12]), .ZN(n155) );
  OAI21D0BWP12T30P140 U162 ( .A1(n137), .A2(n155), .B(bcd_reg[11]), .ZN(n136)
         );
  OAI31D0BWP12T30P140 U163 ( .A1(n137), .A2(bcd_reg[11]), .A3(n155), .B(n136), 
        .ZN(n138) );
  AO222D0BWP12T30P140 U164 ( .A1(n138), .A2(n188), .B1(n185), .B2(bcd_reg[10]), 
        .C1(n186), .C2(dat_bcd_i[10]), .Z(n113) );
  AO222D0BWP12T30P140 U165 ( .A1(n159), .A2(bcd_next[16]), .B1(n185), .B2(
        bcd_reg[16]), .C1(n186), .C2(dat_bcd_i[16]), .Z(n107) );
  ND2D0BWP12T30P140 U166 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .ZN(n182) );
  MAOI22D0BWP12T30P140 U167 ( .A1(bcd_reg[6]), .A2(n182), .B1(n182), .B2(
        bcd_reg[6]), .ZN(n140) );
  AOI22D0BWP12T30P140 U168 ( .A1(n186), .A2(dat_bcd_i[5]), .B1(n175), .B2(
        bcd_reg[5]), .ZN(n139) );
  OAI21D0BWP12T30P140 U169 ( .A1(n163), .A2(n140), .B(n139), .ZN(n118) );
  AOI21D0BWP12T30P140 U170 ( .A1(bcd_reg[14]), .A2(bcd_reg[13]), .B(
        bcd_reg[15]), .ZN(n142) );
  INVD0BWP12T30P140 U171 ( .I(bcd_reg[16]), .ZN(n165) );
  AOI22D0BWP12T30P140 U172 ( .A1(n186), .A2(dat_bcd_i[15]), .B1(n185), .B2(
        bcd_reg[15]), .ZN(n141) );
  OAI31D0BWP12T30P140 U173 ( .A1(n142), .A2(n163), .A3(n165), .B(n141), .ZN(
        n108) );
  ND2D0BWP12T30P140 U174 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .ZN(n176) );
  MAOI22D0BWP12T30P140 U175 ( .A1(bcd_reg[10]), .A2(n176), .B1(n176), .B2(
        bcd_reg[10]), .ZN(n144) );
  AOI22D0BWP12T30P140 U176 ( .A1(n186), .A2(dat_bcd_i[9]), .B1(n185), .B2(
        bcd_reg[9]), .ZN(n143) );
  OAI21D0BWP12T30P140 U177 ( .A1(n163), .A2(n144), .B(n143), .ZN(n114) );
  NR4D0BWP12T30P140 U178 ( .A1(rst_i), .A2(start_i), .A3(n169), .A4(n145), 
        .ZN(n174) );
  NR2D0BWP12T30P140 U179 ( .A1(rst_i), .A2(n174), .ZN(n173) );
  AO22D0BWP12T30P140 U180 ( .A1(bin_next[15]), .A2(n174), .B1(n173), .B2(
        dat_binary_o[15]), .Z(n74) );
  ND2D0BWP12T30P140 U181 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .ZN(n187) );
  MAOI22D0BWP12T30P140 U182 ( .A1(bcd_reg[2]), .A2(n187), .B1(n187), .B2(
        bcd_reg[2]), .ZN(n147) );
  AOI22D0BWP12T30P140 U183 ( .A1(bcd_reg[1]), .A2(n175), .B1(n186), .B2(
        dat_bcd_i[1]), .ZN(n146) );
  OAI21D0BWP12T30P140 U184 ( .A1(n163), .A2(n147), .B(n146), .ZN(n122) );
  AO22D0BWP12T30P140 U185 ( .A1(n159), .A2(bin_next[10]), .B1(n175), .B2(
        bin_next[9]), .Z(n95) );
  AOI21D0BWP12T30P140 U186 ( .A1(bcd_reg[2]), .A2(bcd_reg[1]), .B(bcd_reg[3]), 
        .ZN(n150) );
  AOI22D0BWP12T30P140 U187 ( .A1(n186), .A2(dat_bcd_i[3]), .B1(n185), .B2(
        bcd_reg[3]), .ZN(n148) );
  OAI31D0BWP12T30P140 U188 ( .A1(n150), .A2(n163), .A3(n149), .B(n148), .ZN(
        n120) );
  AO22D0BWP12T30P140 U189 ( .A1(n174), .A2(bin_next[0]), .B1(n173), .B2(
        dat_binary_o[0]), .Z(n89) );
  AOI21D0BWP12T30P140 U190 ( .A1(bcd_reg[6]), .A2(bcd_reg[5]), .B(bcd_reg[7]), 
        .ZN(n153) );
  AOI22D0BWP12T30P140 U191 ( .A1(n186), .A2(dat_bcd_i[7]), .B1(n175), .B2(
        bcd_reg[7]), .ZN(n151) );
  OAI31D0BWP12T30P140 U192 ( .A1(n153), .A2(n163), .A3(n152), .B(n151), .ZN(
        n116) );
  AO22D0BWP12T30P140 U193 ( .A1(n188), .A2(bin_next[12]), .B1(n175), .B2(
        bin_next[11]), .Z(n93) );
  AOI21D0BWP12T30P140 U194 ( .A1(bcd_reg[10]), .A2(bcd_reg[9]), .B(bcd_reg[11]), .ZN(n156) );
  AOI22D0BWP12T30P140 U195 ( .A1(n186), .A2(dat_bcd_i[11]), .B1(n175), .B2(
        bcd_reg[11]), .ZN(n154) );
  OAI31D0BWP12T30P140 U196 ( .A1(n156), .A2(n163), .A3(n155), .B(n154), .ZN(
        n112) );
  AO22D0BWP12T30P140 U197 ( .A1(n174), .A2(bin_next[1]), .B1(n173), .B2(
        dat_binary_o[1]), .Z(n88) );
  AO22D0BWP12T30P140 U198 ( .A1(n188), .A2(bin_next[14]), .B1(n175), .B2(
        bin_next[13]), .Z(n91) );
  AO22D0BWP12T30P140 U199 ( .A1(n174), .A2(bin_next[2]), .B1(n173), .B2(
        dat_binary_o[2]), .Z(n87) );
  AOI22D0BWP12T30P140 U200 ( .A1(bit_count[0]), .A2(n158), .B1(n169), .B2(n157), .ZN(n127) );
  AO22D0BWP12T30P140 U201 ( .A1(n174), .A2(bin_next[3]), .B1(n173), .B2(
        dat_binary_o[3]), .Z(n86) );
  AO22D0BWP12T30P140 U202 ( .A1(n174), .A2(bin_next[11]), .B1(n173), .B2(
        dat_binary_o[11]), .Z(n78) );
  AO22D0BWP12T30P140 U203 ( .A1(n188), .A2(bin_next[2]), .B1(n175), .B2(
        bin_next[1]), .Z(n124) );
  AO22D0BWP12T30P140 U204 ( .A1(n174), .A2(bin_next[4]), .B1(n173), .B2(
        dat_binary_o[4]), .Z(n85) );
  AO22D0BWP12T30P140 U205 ( .A1(n159), .A2(bin_next[1]), .B1(n175), .B2(
        bin_next[0]), .Z(n103) );
  AO22D0BWP12T30P140 U206 ( .A1(n174), .A2(bin_next[12]), .B1(n173), .B2(
        dat_binary_o[12]), .Z(n77) );
  AO22D0BWP12T30P140 U207 ( .A1(n159), .A2(bin_next[4]), .B1(n175), .B2(
        bin_next[3]), .Z(n101) );
  AO22D0BWP12T30P140 U208 ( .A1(n174), .A2(bin_next[5]), .B1(n173), .B2(
        dat_binary_o[5]), .Z(n84) );
  AO22D0BWP12T30P140 U209 ( .A1(n159), .A2(bin_next[5]), .B1(n175), .B2(
        bin_next[4]), .Z(n100) );
  AO22D0BWP12T30P140 U210 ( .A1(n174), .A2(bin_next[9]), .B1(n173), .B2(
        dat_binary_o[9]), .Z(n80) );
  AO22D0BWP12T30P140 U211 ( .A1(n159), .A2(bin_next[6]), .B1(n175), .B2(
        bin_next[5]), .Z(n99) );
  AO22D0BWP12T30P140 U212 ( .A1(n174), .A2(bin_next[6]), .B1(n173), .B2(
        dat_binary_o[6]), .Z(n83) );
  AO22D0BWP12T30P140 U213 ( .A1(n159), .A2(bin_next[7]), .B1(n175), .B2(
        bin_next[6]), .Z(n98) );
  AO22D0BWP12T30P140 U214 ( .A1(n174), .A2(bin_next[10]), .B1(n173), .B2(
        dat_binary_o[10]), .Z(n79) );
  AO22D0BWP12T30P140 U215 ( .A1(n159), .A2(bin_next[8]), .B1(n175), .B2(
        bin_next[7]), .Z(n97) );
  AO22D0BWP12T30P140 U216 ( .A1(n174), .A2(bin_next[7]), .B1(n173), .B2(
        dat_binary_o[7]), .Z(n82) );
  AO22D0BWP12T30P140 U217 ( .A1(n159), .A2(bin_next[9]), .B1(n185), .B2(
        bin_next[8]), .Z(n96) );
  AO21D0BWP12T30P140 U218 ( .A1(busy_bit), .A2(n173), .B(n186), .Z(n125) );
  AO22D0BWP12T30P140 U219 ( .A1(n188), .A2(bin_next[13]), .B1(n185), .B2(
        bin_next[12]), .Z(n92) );
  AO22D0BWP12T30P140 U220 ( .A1(n174), .A2(bin_next[8]), .B1(n173), .B2(
        dat_binary_o[8]), .Z(n81) );
  AO22D0BWP12T30P140 U221 ( .A1(n188), .A2(bin_next[11]), .B1(n185), .B2(
        bin_next[10]), .Z(n94) );
  AO22D0BWP12T30P140 U222 ( .A1(n174), .A2(bin_next[14]), .B1(n173), .B2(
        dat_binary_o[14]), .Z(n75) );
  AO22D0BWP12T30P140 U223 ( .A1(n159), .A2(bin_next[15]), .B1(n175), .B2(
        bin_next[14]), .Z(n90) );
  INVD0BWP12T30P140 U224 ( .I(bit_count[2]), .ZN(n170) );
  ND2D0BWP12T30P140 U225 ( .A1(bit_count[1]), .A2(n160), .ZN(n171) );
  MOAI22D0BWP12T30P140 U226 ( .A1(n170), .A2(n171), .B1(busy_bit), .B2(
        bit_count[3]), .ZN(n126) );
  ND2D0BWP12T30P140 U227 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .ZN(n179) );
  MAOI22D0BWP12T30P140 U228 ( .A1(bcd_reg[14]), .A2(n179), .B1(n179), .B2(
        bcd_reg[14]), .ZN(n162) );
  AOI22D0BWP12T30P140 U229 ( .A1(n186), .A2(dat_bcd_i[13]), .B1(n185), .B2(
        bcd_reg[13]), .ZN(n161) );
  OAI21D0BWP12T30P140 U230 ( .A1(n163), .A2(n162), .B(n161), .ZN(n110) );
  AN2D0BWP12T30P140 U231 ( .A1(bcd_reg[13]), .A2(bcd_reg[14]), .Z(n166) );
  OAI21D0BWP12T30P140 U232 ( .A1(n166), .A2(n165), .B(bcd_reg[15]), .ZN(n164)
         );
  OAI31D0BWP12T30P140 U233 ( .A1(n166), .A2(bcd_reg[15]), .A3(n165), .B(n164), 
        .ZN(n167) );
  AO222D0BWP12T30P140 U234 ( .A1(n167), .A2(n188), .B1(n185), .B2(bcd_reg[14]), 
        .C1(n186), .C2(dat_bcd_i[14]), .Z(n109) );
  IAO21D0BWP12T30P140 U235 ( .A1(n169), .A2(bit_count[1]), .B(n168), .ZN(n172)
         );
  AOI22D0BWP12T30P140 U236 ( .A1(bit_count[2]), .A2(n172), .B1(n171), .B2(n170), .ZN(n73) );
  AO22D0BWP12T30P140 U237 ( .A1(n174), .A2(bin_next[13]), .B1(n173), .B2(
        dat_binary_o[13]), .Z(n76) );
  CKBD0BWP12T30P140 U238 ( .I(clk_i), .Z(n192) );
  CKBD0BWP12T30P140 U239 ( .I(clk_i), .Z(n191) );
  INVD0BWP12T30P140 U240 ( .I(busy_bit), .ZN(done_o) );
  AOI22D0BWP12T30P140 U241 ( .A1(n128), .A2(dat_bcd_i[8]), .B1(n175), .B2(
        bcd_reg[8]), .ZN(n178) );
  OAI211D0BWP12T30P140 U242 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .B(n188), .C(
        n176), .ZN(n177) );
  ND2D0BWP12T30P140 U243 ( .A1(n178), .A2(n177), .ZN(n115) );
  AOI22D0BWP12T30P140 U244 ( .A1(n128), .A2(dat_bcd_i[12]), .B1(n185), .B2(
        bcd_reg[12]), .ZN(n181) );
  OAI211D0BWP12T30P140 U245 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .B(n188), 
        .C(n179), .ZN(n180) );
  ND2D0BWP12T30P140 U246 ( .A1(n181), .A2(n180), .ZN(n111) );
  AOI22D0BWP12T30P140 U247 ( .A1(bcd_reg[4]), .A2(n185), .B1(n186), .B2(
        dat_bcd_i[4]), .ZN(n184) );
  OAI211D0BWP12T30P140 U248 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .B(n188), .C(
        n182), .ZN(n183) );
  ND2D0BWP12T30P140 U249 ( .A1(n184), .A2(n183), .ZN(n119) );
  AOI22D0BWP12T30P140 U250 ( .A1(n128), .A2(dat_bcd_i[0]), .B1(bin_next[15]), 
        .B2(n185), .ZN(n190) );
  OAI211D0BWP12T30P140 U251 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .B(n188), .C(
        n187), .ZN(n189) );
  ND2D0BWP12T30P140 U252 ( .A1(n190), .A2(n189), .ZN(n123) );
endmodule

