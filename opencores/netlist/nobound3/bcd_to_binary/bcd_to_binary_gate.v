/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:35:49 2026
/////////////////////////////////////////////////////////////


module bcd_to_binary ( clk_i, ce_i, rst_i, start_i, dat_bcd_i, dat_binary_o, 
        done_o );
  input [19:0] dat_bcd_i;
  output [15:0] dat_binary_o;
  input clk_i, ce_i, rst_i, start_i;
  output done_o;
  wire   N68, N69, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212;
  wire   [16:1] bcd_reg;
  wire   [15:0] bin_next;
  wire   [18:16] bcd_next;
  wire   [1:0] state;
  wire   [3:0] bit_count;
  wire   [1:0] next_state;

  DFQD2BWP12T30P140 bcd_reg_reg_18_ ( .D(n101), .CP(clk_i), .Q(bcd_next[17])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_17_ ( .D(n102), .CP(clk_i), .Q(bcd_next[16])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_19_ ( .D(n100), .CP(clk_i), .Q(bcd_next[18])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_15_ ( .D(n104), .CP(clk_i), .Q(bcd_reg[15]) );
  DFQD2BWP12T30P140 bcd_reg_reg_14_ ( .D(n105), .CP(clk_i), .Q(bcd_reg[14]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(N68), .CP(clk_i), .Q(state[0]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(N69), .CP(clk_i), .Q(state[1]) );
  DFQD2BWP12T30P140 bit_count_reg_0_ ( .D(n99), .CP(clk_i), .Q(bit_count[0])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_12_ ( .D(n107), .CP(clk_i), .Q(bcd_reg[12]) );
  DFQD2BWP12T30P140 next_state_reg_0_ ( .D(n79), .CP(n210), .Q(next_state[0])
         );
  DFQD2BWP12T30P140 dat_binary_o_reg_15_ ( .D(n94), .CP(n212), .Q(
        dat_binary_o[15]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_14_ ( .D(n93), .CP(n212), .Q(
        dat_binary_o[14]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_13_ ( .D(n92), .CP(n212), .Q(
        dat_binary_o[13]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_12_ ( .D(n91), .CP(n212), .Q(
        dat_binary_o[12]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_10_ ( .D(n89), .CP(n211), .Q(
        dat_binary_o[10]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_9_ ( .D(n88), .CP(n211), .Q(
        dat_binary_o[9]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_8_ ( .D(n87), .CP(n211), .Q(
        dat_binary_o[8]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_7_ ( .D(n86), .CP(n211), .Q(
        dat_binary_o[7]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_6_ ( .D(n85), .CP(n211), .Q(
        dat_binary_o[6]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_5_ ( .D(n84), .CP(n211), .Q(
        dat_binary_o[5]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_4_ ( .D(n83), .CP(n210), .Q(
        dat_binary_o[4]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_3_ ( .D(n82), .CP(n210), .Q(
        dat_binary_o[3]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_2_ ( .D(n81), .CP(n210), .Q(
        dat_binary_o[2]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_1_ ( .D(n80), .CP(n210), .Q(
        dat_binary_o[1]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_0_ ( .D(n95), .CP(n210), .Q(
        dat_binary_o[0]) );
  DFQD2BWP12T30P140 bcd_reg_reg_13_ ( .D(n106), .CP(clk_i), .Q(bcd_reg[13]) );
  DFQD2BWP12T30P140 bcd_reg_reg_16_ ( .D(n103), .CP(clk_i), .Q(bcd_reg[16]) );
  DFQD2BWP12T30P140 bin_reg_reg_1_ ( .D(n134), .CP(n210), .Q(bin_next[0]) );
  DFQD2BWP12T30P140 bcd_reg_reg_0_ ( .D(n119), .CP(n212), .Q(bin_next[15]) );
  DFQD2BWP12T30P140 bin_reg_reg_15_ ( .D(n120), .CP(n212), .Q(bin_next[14]) );
  DFQD2BWP12T30P140 bin_reg_reg_14_ ( .D(n121), .CP(n212), .Q(bin_next[13]) );
  DFQD2BWP12T30P140 bin_reg_reg_13_ ( .D(n122), .CP(n212), .Q(bin_next[12]) );
  DFQD2BWP12T30P140 bin_reg_reg_12_ ( .D(n123), .CP(n212), .Q(bin_next[11]) );
  DFQD2BWP12T30P140 bin_reg_reg_11_ ( .D(n124), .CP(n211), .Q(bin_next[10]) );
  DFQD2BWP12T30P140 bin_reg_reg_10_ ( .D(n125), .CP(n211), .Q(bin_next[9]) );
  DFQD2BWP12T30P140 bin_reg_reg_9_ ( .D(n126), .CP(n211), .Q(bin_next[8]) );
  DFQD2BWP12T30P140 bin_reg_reg_8_ ( .D(n127), .CP(n211), .Q(bin_next[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_7_ ( .D(n128), .CP(n211), .Q(bin_next[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_6_ ( .D(n129), .CP(n211), .Q(bin_next[5]) );
  DFQD2BWP12T30P140 bin_reg_reg_5_ ( .D(n130), .CP(n210), .Q(bin_next[4]) );
  DFQD2BWP12T30P140 bin_reg_reg_4_ ( .D(n131), .CP(n210), .Q(bin_next[3]) );
  DFQD2BWP12T30P140 bin_reg_reg_3_ ( .D(n132), .CP(n210), .Q(bin_next[2]) );
  DFQD2BWP12T30P140 bit_count_reg_3_ ( .D(n96), .CP(n212), .Q(bit_count[3]) );
  DFQD2BWP12T30P140 bit_count_reg_2_ ( .D(n97), .CP(n212), .Q(bit_count[2]) );
  DFQD2BWP12T30P140 bcd_reg_reg_8_ ( .D(n111), .CP(n211), .Q(bcd_reg[8]) );
  DFQD2BWP12T30P140 bcd_reg_reg_4_ ( .D(n115), .CP(n210), .Q(bcd_reg[4]) );
  DFQD2BWP12T30P140 bit_count_reg_1_ ( .D(n98), .CP(n212), .Q(bit_count[1]) );
  DFQD2BWP12T30P140 bcd_reg_reg_11_ ( .D(n108), .CP(n210), .Q(bcd_reg[11]) );
  DFQD2BWP12T30P140 bcd_reg_reg_7_ ( .D(n112), .CP(n211), .Q(bcd_reg[7]) );
  DFQD2BWP12T30P140 bcd_reg_reg_3_ ( .D(n116), .CP(n212), .Q(bcd_reg[3]) );
  DFQD2BWP12T30P140 bcd_reg_reg_9_ ( .D(n110), .CP(n210), .Q(bcd_reg[9]) );
  DFQD2BWP12T30P140 bcd_reg_reg_5_ ( .D(n114), .CP(n211), .Q(bcd_reg[5]) );
  DFQD2BWP12T30P140 bcd_reg_reg_1_ ( .D(n118), .CP(n212), .Q(bcd_reg[1]) );
  DFQD2BWP12T30P140 bcd_reg_reg_10_ ( .D(n109), .CP(n210), .Q(bcd_reg[10]) );
  DFQD2BWP12T30P140 bcd_reg_reg_6_ ( .D(n113), .CP(n211), .Q(bcd_reg[6]) );
  DFQD1BWP12T30P140 dat_binary_o_reg_11_ ( .D(n90), .CP(n212), .Q(
        dat_binary_o[11]) );
  DFQD1BWP12T30P140 next_state_reg_1_ ( .D(n135), .CP(n210), .Q(next_state[1])
         );
  DFQD1BWP12T30P140 bin_reg_reg_2_ ( .D(n133), .CP(n210), .Q(bin_next[1]) );
  DFQD1BWP12T30P140 bcd_reg_reg_2_ ( .D(n117), .CP(n212), .Q(bcd_reg[2]) );
  ND3D0BWP12T30P140 U141 ( .A1(bit_count[2]), .A2(bit_count[1]), .A3(
        bit_count[0]), .ZN(n184) );
  IND3D1BWP12T30P140 U142 ( .A1(n184), .B1(bit_count[3]), .B2(ce_i), .ZN(n172)
         );
  INR4D0BWP12T30P140 U143 ( .A1(state[0]), .B1(start_i), .B2(state[1]), .B3(
        n172), .ZN(n136) );
  NR2D0BWP12T30P140 U144 ( .A1(rst_i), .A2(n136), .ZN(n188) );
  NR2D0BWP12T30P140 U145 ( .A1(rst_i), .A2(n188), .ZN(n187) );
  AO22D0BWP12T30P140 U146 ( .A1(n188), .A2(dat_binary_o[5]), .B1(n187), .B2(
        bin_next[5]), .Z(n84) );
  NR2D0BWP12T30P140 U147 ( .A1(state[0]), .A2(state[1]), .ZN(done_o) );
  AN2D0BWP12T30P140 U148 ( .A1(bcd_reg[1]), .A2(bcd_reg[2]), .Z(n138) );
  INVD0BWP12T30P140 U149 ( .I(bcd_reg[4]), .ZN(n162) );
  OAI21D0BWP12T30P140 U150 ( .A1(n138), .A2(n162), .B(bcd_reg[3]), .ZN(n137)
         );
  OAI31D0BWP12T30P140 U151 ( .A1(n138), .A2(bcd_reg[3]), .A3(n162), .B(n137), 
        .ZN(n141) );
  INVD0BWP12T30P140 U152 ( .I(rst_i), .ZN(n209) );
  ND2D0BWP12T30P140 U153 ( .A1(n209), .A2(state[0]), .ZN(n181) );
  INVD0BWP12T30P140 U154 ( .I(state[1]), .ZN(n139) );
  OAI21D0BWP12T30P140 U155 ( .A1(state[0]), .A2(start_i), .B(n139), .ZN(n140)
         );
  MOAI22D0BWP12T30P140 U156 ( .A1(ce_i), .A2(n181), .B1(n209), .B2(n140), .ZN(
        n197) );
  INVD0BWP12T30P140 U157 ( .I(n197), .ZN(n167) );
  INVD0BWP12T30P140 U158 ( .I(n167), .ZN(n201) );
  OR2D0BWP12T30P140 U159 ( .A1(n181), .A2(n201), .Z(n185) );
  INVD0BWP12T30P140 U160 ( .I(n185), .ZN(n205) );
  AN3D0BWP12T30P140 U161 ( .A1(start_i), .A2(done_o), .A3(n209), .Z(n202) );
  AO222D0BWP12T30P140 U162 ( .A1(n141), .A2(n205), .B1(n201), .B2(bcd_reg[2]), 
        .C1(dat_bcd_i[2]), .C2(n202), .Z(n117) );
  AO222D0BWP12T30P140 U163 ( .A1(n201), .A2(bcd_next[17]), .B1(n202), .B2(
        dat_bcd_i[18]), .C1(bcd_next[18]), .C2(n205), .Z(n101) );
  AN2D0BWP12T30P140 U164 ( .A1(bcd_reg[5]), .A2(bcd_reg[6]), .Z(n143) );
  INVD0BWP12T30P140 U165 ( .I(bcd_reg[8]), .ZN(n165) );
  OAI21D0BWP12T30P140 U166 ( .A1(n143), .A2(n165), .B(bcd_reg[7]), .ZN(n142)
         );
  OAI31D0BWP12T30P140 U167 ( .A1(n143), .A2(bcd_reg[7]), .A3(n165), .B(n142), 
        .ZN(n144) );
  AO222D0BWP12T30P140 U168 ( .A1(n144), .A2(n205), .B1(n201), .B2(bcd_reg[6]), 
        .C1(dat_bcd_i[6]), .C2(n202), .Z(n113) );
  AO222D0BWP12T30P140 U169 ( .A1(n201), .A2(bcd_next[16]), .B1(n202), .B2(
        dat_bcd_i[17]), .C1(bcd_next[17]), .C2(n205), .Z(n102) );
  AN2D0BWP12T30P140 U170 ( .A1(bcd_reg[9]), .A2(bcd_reg[10]), .Z(n146) );
  INVD0BWP12T30P140 U171 ( .I(bcd_reg[12]), .ZN(n169) );
  OAI21D0BWP12T30P140 U172 ( .A1(n146), .A2(n169), .B(bcd_reg[11]), .ZN(n145)
         );
  OAI31D0BWP12T30P140 U173 ( .A1(n146), .A2(bcd_reg[11]), .A3(n169), .B(n145), 
        .ZN(n147) );
  AO222D0BWP12T30P140 U174 ( .A1(n147), .A2(n205), .B1(n201), .B2(bcd_reg[10]), 
        .C1(dat_bcd_i[10]), .C2(n202), .Z(n109) );
  AO22D0BWP12T30P140 U175 ( .A1(dat_bcd_i[19]), .A2(n202), .B1(bcd_next[18]), 
        .B2(n197), .Z(n100) );
  ND2D0BWP12T30P140 U176 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .ZN(n198) );
  MAOI22D0BWP12T30P140 U177 ( .A1(bcd_reg[2]), .A2(n198), .B1(n198), .B2(
        bcd_reg[2]), .ZN(n149) );
  AOI22D0BWP12T30P140 U178 ( .A1(dat_bcd_i[1]), .A2(n202), .B1(bcd_reg[1]), 
        .B2(n197), .ZN(n148) );
  OAI21D0BWP12T30P140 U179 ( .A1(n185), .A2(n149), .B(n148), .ZN(n118) );
  INVD0BWP12T30P140 U180 ( .I(bcd_reg[15]), .ZN(n156) );
  ND3D0BWP12T30P140 U181 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .A3(bcd_reg[14]), .ZN(n204) );
  INVD0BWP12T30P140 U182 ( .I(bcd_reg[16]), .ZN(n154) );
  AOI211D0BWP12T30P140 U183 ( .A1(n204), .A2(n156), .B(n154), .C(n185), .ZN(
        n150) );
  AOI21D0BWP12T30P140 U184 ( .A1(n202), .A2(dat_bcd_i[15]), .B(n150), .ZN(n151) );
  OAI21D0BWP12T30P140 U185 ( .A1(n167), .A2(n156), .B(n151), .ZN(n104) );
  ND2D0BWP12T30P140 U186 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .ZN(n191) );
  MAOI22D0BWP12T30P140 U187 ( .A1(bcd_reg[6]), .A2(n191), .B1(n191), .B2(
        bcd_reg[6]), .ZN(n153) );
  AOI22D0BWP12T30P140 U188 ( .A1(dat_bcd_i[5]), .A2(n202), .B1(bcd_reg[5]), 
        .B2(n197), .ZN(n152) );
  OAI21D0BWP12T30P140 U189 ( .A1(n185), .A2(n153), .B(n152), .ZN(n114) );
  AOI21D0BWP12T30P140 U190 ( .A1(bcd_reg[13]), .A2(bcd_reg[14]), .B(n154), 
        .ZN(n155) );
  MUX2ND0BWP12T30P140 U191 ( .I0(bcd_reg[15]), .I1(n156), .S(n155), .ZN(n158)
         );
  AOI22D0BWP12T30P140 U192 ( .A1(dat_bcd_i[14]), .A2(n202), .B1(bcd_reg[14]), 
        .B2(n201), .ZN(n157) );
  OAI21D0BWP12T30P140 U193 ( .A1(n185), .A2(n158), .B(n157), .ZN(n105) );
  ND2D0BWP12T30P140 U194 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .ZN(n194) );
  MAOI22D0BWP12T30P140 U195 ( .A1(bcd_reg[10]), .A2(n194), .B1(n194), .B2(
        bcd_reg[10]), .ZN(n160) );
  AOI22D0BWP12T30P140 U196 ( .A1(dat_bcd_i[9]), .A2(n202), .B1(bcd_reg[9]), 
        .B2(n197), .ZN(n159) );
  OAI21D0BWP12T30P140 U197 ( .A1(n185), .A2(n160), .B(n159), .ZN(n110) );
  INVD0BWP12T30P140 U198 ( .I(next_state[0]), .ZN(n173) );
  NR2D0BWP12T30P140 U199 ( .A1(rst_i), .A2(n173), .ZN(N68) );
  AOI21D0BWP12T30P140 U200 ( .A1(bcd_reg[2]), .A2(bcd_reg[1]), .B(bcd_reg[3]), 
        .ZN(n163) );
  AOI22D0BWP12T30P140 U201 ( .A1(dat_bcd_i[3]), .A2(n202), .B1(bcd_reg[3]), 
        .B2(n197), .ZN(n161) );
  OAI31D0BWP12T30P140 U202 ( .A1(n163), .A2(n185), .A3(n162), .B(n161), .ZN(
        n116) );
  AOI21D0BWP12T30P140 U203 ( .A1(bcd_reg[6]), .A2(bcd_reg[5]), .B(bcd_reg[7]), 
        .ZN(n166) );
  AOI22D0BWP12T30P140 U204 ( .A1(dat_bcd_i[7]), .A2(n202), .B1(bcd_reg[7]), 
        .B2(n197), .ZN(n164) );
  OAI31D0BWP12T30P140 U205 ( .A1(n166), .A2(n185), .A3(n165), .B(n164), .ZN(
        n112) );
  INVD0BWP12T30P140 U206 ( .I(bit_count[0]), .ZN(n176) );
  AOI22D0BWP12T30P140 U207 ( .A1(bit_count[0]), .A2(n167), .B1(n185), .B2(n176), .ZN(n99) );
  AOI21D0BWP12T30P140 U208 ( .A1(bcd_reg[10]), .A2(bcd_reg[9]), .B(bcd_reg[11]), .ZN(n170) );
  AOI22D0BWP12T30P140 U209 ( .A1(dat_bcd_i[11]), .A2(n202), .B1(bcd_reg[11]), 
        .B2(n201), .ZN(n168) );
  OAI31D0BWP12T30P140 U210 ( .A1(n170), .A2(n185), .A3(n169), .B(n168), .ZN(
        n108) );
  INVD0BWP12T30P140 U211 ( .I(n181), .ZN(n175) );
  AOI21D0BWP12T30P140 U212 ( .A1(n175), .A2(n176), .B(n201), .ZN(n171) );
  INVD0BWP12T30P140 U213 ( .I(bit_count[1]), .ZN(n177) );
  OAI32D0BWP12T30P140 U214 ( .A1(bit_count[1]), .A2(n176), .A3(n185), .B1(n171), .B2(n177), .ZN(n98) );
  AOI22D0BWP12T30P140 U215 ( .A1(n175), .A2(n172), .B1(start_i), .B2(n209), 
        .ZN(n174) );
  OAI22D0BWP12T30P140 U216 ( .A1(state[1]), .A2(n174), .B1(n209), .B2(n173), 
        .ZN(n79) );
  AO22D0BWP12T30P140 U217 ( .A1(n188), .A2(dat_binary_o[7]), .B1(n187), .B2(
        bin_next[7]), .Z(n86) );
  AO22D0BWP12T30P140 U218 ( .A1(n188), .A2(dat_binary_o[15]), .B1(n187), .B2(
        bin_next[15]), .Z(n94) );
  ND2D0BWP12T30P140 U219 ( .A1(bit_count[1]), .A2(bit_count[0]), .ZN(n179) );
  OAI32D0BWP12T30P140 U220 ( .A1(n177), .A2(n201), .A3(n176), .B1(n175), .B2(
        n197), .ZN(n180) );
  INVD0BWP12T30P140 U221 ( .I(bit_count[2]), .ZN(n178) );
  OAI32D0BWP12T30P140 U222 ( .A1(bit_count[2]), .A2(n179), .A3(n185), .B1(n180), .B2(n178), .ZN(n97) );
  AO22D0BWP12T30P140 U223 ( .A1(n188), .A2(dat_binary_o[14]), .B1(n187), .B2(
        bin_next[14]), .Z(n93) );
  OA21D0BWP12T30P140 U224 ( .A1(n181), .A2(bit_count[2]), .B(n180), .Z(n183)
         );
  INVD0BWP12T30P140 U225 ( .I(bit_count[3]), .ZN(n182) );
  OAI32D0BWP12T30P140 U226 ( .A1(bit_count[3]), .A2(n184), .A3(n185), .B1(n183), .B2(n182), .ZN(n96) );
  AO22D0BWP12T30P140 U227 ( .A1(n188), .A2(dat_binary_o[10]), .B1(n187), .B2(
        bin_next[10]), .Z(n89) );
  AO22D0BWP12T30P140 U228 ( .A1(bin_next[2]), .A2(n205), .B1(bin_next[1]), 
        .B2(n201), .Z(n133) );
  AO22D0BWP12T30P140 U229 ( .A1(n188), .A2(dat_binary_o[13]), .B1(n187), .B2(
        bin_next[13]), .Z(n92) );
  AO22D0BWP12T30P140 U230 ( .A1(bin_next[3]), .A2(n205), .B1(bin_next[2]), 
        .B2(n197), .Z(n132) );
  AO22D0BWP12T30P140 U231 ( .A1(n188), .A2(dat_binary_o[9]), .B1(n187), .B2(
        bin_next[9]), .Z(n88) );
  AO22D0BWP12T30P140 U232 ( .A1(bin_next[4]), .A2(n205), .B1(bin_next[3]), 
        .B2(n201), .Z(n131) );
  AO22D0BWP12T30P140 U233 ( .A1(n188), .A2(dat_binary_o[12]), .B1(n187), .B2(
        bin_next[12]), .Z(n91) );
  INVD0BWP12T30P140 U234 ( .I(n185), .ZN(n186) );
  AO22D0BWP12T30P140 U235 ( .A1(bin_next[5]), .A2(n186), .B1(bin_next[4]), 
        .B2(n201), .Z(n130) );
  AO22D0BWP12T30P140 U236 ( .A1(n188), .A2(dat_binary_o[4]), .B1(n187), .B2(
        bin_next[4]), .Z(n83) );
  AO22D0BWP12T30P140 U237 ( .A1(bin_next[6]), .A2(n186), .B1(bin_next[5]), 
        .B2(n201), .Z(n129) );
  AO22D0BWP12T30P140 U238 ( .A1(n188), .A2(dat_binary_o[11]), .B1(n187), .B2(
        bin_next[11]), .Z(n90) );
  AO22D0BWP12T30P140 U239 ( .A1(bin_next[7]), .A2(n186), .B1(bin_next[6]), 
        .B2(n197), .Z(n128) );
  AO222D0BWP12T30P140 U240 ( .A1(n201), .A2(bcd_reg[16]), .B1(n202), .B2(
        dat_bcd_i[16]), .C1(bcd_next[16]), .C2(n205), .Z(n103) );
  AO22D0BWP12T30P140 U241 ( .A1(bin_next[8]), .A2(n186), .B1(bin_next[7]), 
        .B2(n201), .Z(n127) );
  AO22D0BWP12T30P140 U242 ( .A1(n188), .A2(dat_binary_o[6]), .B1(n187), .B2(
        bin_next[6]), .Z(n85) );
  AO22D0BWP12T30P140 U243 ( .A1(bin_next[9]), .A2(n186), .B1(bin_next[8]), 
        .B2(n197), .Z(n126) );
  AO22D0BWP12T30P140 U244 ( .A1(n188), .A2(dat_binary_o[8]), .B1(n187), .B2(
        bin_next[8]), .Z(n87) );
  AO22D0BWP12T30P140 U245 ( .A1(bin_next[10]), .A2(n186), .B1(bin_next[9]), 
        .B2(n197), .Z(n125) );
  AO22D0BWP12T30P140 U246 ( .A1(bin_next[11]), .A2(n186), .B1(bin_next[10]), 
        .B2(n197), .Z(n124) );
  AO22D0BWP12T30P140 U247 ( .A1(bin_next[12]), .A2(n186), .B1(bin_next[11]), 
        .B2(n197), .Z(n123) );
  AO22D0BWP12T30P140 U248 ( .A1(bin_next[13]), .A2(n186), .B1(bin_next[12]), 
        .B2(n197), .Z(n122) );
  AO22D0BWP12T30P140 U249 ( .A1(bin_next[14]), .A2(n186), .B1(bin_next[13]), 
        .B2(n197), .Z(n121) );
  AO22D0BWP12T30P140 U250 ( .A1(bin_next[15]), .A2(n186), .B1(bin_next[14]), 
        .B2(n201), .Z(n120) );
  AO22D0BWP12T30P140 U251 ( .A1(bin_next[1]), .A2(n186), .B1(bin_next[0]), 
        .B2(n197), .Z(n134) );
  AO22D0BWP12T30P140 U252 ( .A1(n188), .A2(dat_binary_o[0]), .B1(n187), .B2(
        bin_next[0]), .Z(n95) );
  AO22D0BWP12T30P140 U253 ( .A1(n188), .A2(dat_binary_o[1]), .B1(n187), .B2(
        bin_next[1]), .Z(n80) );
  AO22D0BWP12T30P140 U254 ( .A1(n188), .A2(dat_binary_o[2]), .B1(n187), .B2(
        bin_next[2]), .Z(n81) );
  AO22D0BWP12T30P140 U255 ( .A1(n188), .A2(dat_binary_o[3]), .B1(n187), .B2(
        bin_next[3]), .Z(n82) );
  CKBD0BWP12T30P140 U256 ( .I(clk_i), .Z(n211) );
  CKBD0BWP12T30P140 U257 ( .I(clk_i), .Z(n210) );
  CKBD0BWP12T30P140 U258 ( .I(clk_i), .Z(n212) );
  AOI22D0BWP12T30P140 U259 ( .A1(dat_bcd_i[12]), .A2(n202), .B1(bcd_reg[12]), 
        .B2(n201), .ZN(n190) );
  ND2D0BWP12T30P140 U260 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .ZN(n203) );
  OAI211D0BWP12T30P140 U261 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .B(n205), 
        .C(n203), .ZN(n189) );
  ND2D0BWP12T30P140 U262 ( .A1(n190), .A2(n189), .ZN(n107) );
  AOI22D0BWP12T30P140 U263 ( .A1(dat_bcd_i[4]), .A2(n202), .B1(bcd_reg[4]), 
        .B2(n201), .ZN(n193) );
  OAI211D0BWP12T30P140 U264 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .B(n205), .C(
        n191), .ZN(n192) );
  ND2D0BWP12T30P140 U265 ( .A1(n193), .A2(n192), .ZN(n115) );
  AOI22D0BWP12T30P140 U266 ( .A1(dat_bcd_i[8]), .A2(n202), .B1(bcd_reg[8]), 
        .B2(n197), .ZN(n196) );
  OAI211D0BWP12T30P140 U267 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .B(n205), .C(
        n194), .ZN(n195) );
  ND2D0BWP12T30P140 U268 ( .A1(n196), .A2(n195), .ZN(n111) );
  AOI22D0BWP12T30P140 U269 ( .A1(dat_bcd_i[0]), .A2(n202), .B1(bin_next[15]), 
        .B2(n197), .ZN(n200) );
  OAI211D0BWP12T30P140 U270 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .B(n205), .C(
        n198), .ZN(n199) );
  ND2D0BWP12T30P140 U271 ( .A1(n200), .A2(n199), .ZN(n119) );
  AOI22D0BWP12T30P140 U272 ( .A1(dat_bcd_i[13]), .A2(n202), .B1(bcd_reg[13]), 
        .B2(n201), .ZN(n208) );
  INVD0BWP12T30P140 U273 ( .I(n203), .ZN(n206) );
  OAI211D0BWP12T30P140 U274 ( .A1(n206), .A2(bcd_reg[14]), .B(n205), .C(n204), 
        .ZN(n207) );
  ND2D0BWP12T30P140 U275 ( .A1(n208), .A2(n207), .ZN(n106) );
  INR2D1BWP12T30P140 U276 ( .A1(next_state[1]), .B1(rst_i), .ZN(N69) );
  INR2D1BWP12T30P140 U277 ( .A1(next_state[1]), .B1(n209), .ZN(n135) );
endmodule

