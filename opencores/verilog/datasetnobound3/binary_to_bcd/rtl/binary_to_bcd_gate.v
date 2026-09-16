/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:36:20 2026
/////////////////////////////////////////////////////////////


module binary_to_bcd ( clk_i, ce_i, rst_i, start_i, dat_binary_i, dat_bcd_o, 
        done_o );
  input [15:0] dat_binary_i;
  output [19:0] dat_bcd_o;
  input clk_i, ce_i, rst_i, start_i;
  output done_o;
  wire   bcd_next_0_, N74, N75, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215;
  wire   [15:1] bin_next;
  wire   [19:0] bcd_reg;
  wire   [1:0] state;
  wire   [3:0] bit_count;
  wire   [1:0] next_state;

  DFQD2BWP12T30P140 dat_bcd_o_reg_6_ ( .D(n80), .CP(clk_i), .Q(dat_bcd_o[6])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_2_ ( .D(n76), .CP(clk_i), .Q(dat_bcd_o[2])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_3_ ( .D(n77), .CP(clk_i), .Q(dat_bcd_o[3])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_4_ ( .D(n78), .CP(clk_i), .Q(dat_bcd_o[4])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_0_ ( .D(n94), .CP(clk_i), .Q(dat_bcd_o[0])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_5_ ( .D(n79), .CP(clk_i), .Q(dat_bcd_o[5])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_1_ ( .D(n75), .CP(clk_i), .Q(dat_bcd_o[1])
         );
  DFQD2BWP12T30P140 next_state_reg_1_ ( .D(n135), .CP(clk_i), .Q(next_state[1]) );
  DFQD2BWP12T30P140 next_state_reg_0_ ( .D(n74), .CP(clk_i), .Q(next_state[0])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_3_ ( .D(n130), .CP(clk_i), .Q(bcd_reg[3]) );
  DFQD2BWP12T30P140 bcd_reg_reg_2_ ( .D(n131), .CP(clk_i), .Q(bcd_reg[2]) );
  DFQD2BWP12T30P140 bit_count_reg_0_ ( .D(n113), .CP(clk_i), .Q(bit_count[0])
         );
  DFQD2BWP12T30P140 bit_count_reg_1_ ( .D(n112), .CP(clk_i), .Q(bit_count[1])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_1_ ( .D(n132), .CP(clk_i), .Q(bcd_reg[1]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_14_ ( .D(n88), .CP(n214), .Q(dat_bcd_o[14])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_10_ ( .D(n84), .CP(n213), .Q(dat_bcd_o[10])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_19_ ( .D(n93), .CP(n214), .Q(dat_bcd_o[19])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_18_ ( .D(n92), .CP(n214), .Q(dat_bcd_o[18])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_15_ ( .D(n89), .CP(n214), .Q(dat_bcd_o[15])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_11_ ( .D(n85), .CP(n213), .Q(dat_bcd_o[11])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_7_ ( .D(n81), .CP(n213), .Q(dat_bcd_o[7]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_16_ ( .D(n90), .CP(n214), .Q(dat_bcd_o[16])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_12_ ( .D(n86), .CP(n213), .Q(dat_bcd_o[12])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_8_ ( .D(n82), .CP(n213), .Q(dat_bcd_o[8]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_17_ ( .D(n91), .CP(n214), .Q(dat_bcd_o[17])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_13_ ( .D(n87), .CP(n214), .Q(dat_bcd_o[13])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_9_ ( .D(n83), .CP(n213), .Q(dat_bcd_o[9]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(N75), .CP(clk_i), .Q(state[1]) );
  DFQD2BWP12T30P140 bit_count_reg_3_ ( .D(n110), .CP(n215), .Q(bit_count[3])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_16_ ( .D(n117), .CP(n213), .Q(bcd_reg[16]) );
  DFQD2BWP12T30P140 bin_reg_reg_2_ ( .D(n108), .CP(n215), .Q(bin_next[3]) );
  DFQD2BWP12T30P140 bin_reg_reg_3_ ( .D(n107), .CP(n215), .Q(bin_next[4]) );
  DFQD2BWP12T30P140 bin_reg_reg_4_ ( .D(n106), .CP(n215), .Q(bin_next[5]) );
  DFQD2BWP12T30P140 bin_reg_reg_5_ ( .D(n105), .CP(n215), .Q(bin_next[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_6_ ( .D(n104), .CP(n215), .Q(bin_next[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_7_ ( .D(n103), .CP(n215), .Q(bin_next[8]) );
  DFQD2BWP12T30P140 bin_reg_reg_8_ ( .D(n102), .CP(n215), .Q(bin_next[9]) );
  DFQD2BWP12T30P140 bin_reg_reg_9_ ( .D(n101), .CP(n215), .Q(bin_next[10]) );
  DFQD2BWP12T30P140 bin_reg_reg_10_ ( .D(n100), .CP(n214), .Q(bin_next[11]) );
  DFQD2BWP12T30P140 bin_reg_reg_11_ ( .D(n99), .CP(n215), .Q(bin_next[12]) );
  DFQD2BWP12T30P140 bin_reg_reg_12_ ( .D(n98), .CP(n213), .Q(bin_next[13]) );
  DFQD2BWP12T30P140 bin_reg_reg_13_ ( .D(n97), .CP(n214), .Q(bin_next[14]) );
  DFQD2BWP12T30P140 bin_reg_reg_0_ ( .D(n134), .CP(n215), .Q(bin_next[1]) );
  DFQD2BWP12T30P140 bit_count_reg_2_ ( .D(n111), .CP(n215), .Q(bit_count[2])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_15_ ( .D(n118), .CP(n214), .Q(bcd_reg[15]) );
  DFQD2BWP12T30P140 bcd_reg_reg_11_ ( .D(n122), .CP(n213), .Q(bcd_reg[11]) );
  DFQD2BWP12T30P140 bcd_reg_reg_7_ ( .D(n126), .CP(n213), .Q(bcd_reg[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_15_ ( .D(n95), .CP(n213), .Q(bcd_next_0_) );
  DFQD2BWP12T30P140 bcd_reg_reg_0_ ( .D(n133), .CP(n215), .Q(bcd_reg[0]) );
  DFQD2BWP12T30P140 bcd_reg_reg_4_ ( .D(n129), .CP(n214), .Q(bcd_reg[4]) );
  DFQD2BWP12T30P140 bcd_reg_reg_8_ ( .D(n125), .CP(n215), .Q(bcd_reg[8]) );
  DFQD2BWP12T30P140 bcd_reg_reg_12_ ( .D(n121), .CP(n213), .Q(bcd_reg[12]) );
  DFQD2BWP12T30P140 bcd_reg_reg_14_ ( .D(n119), .CP(n214), .Q(bcd_reg[14]) );
  DFQD2BWP12T30P140 bcd_reg_reg_10_ ( .D(n123), .CP(n213), .Q(bcd_reg[10]) );
  DFQD2BWP12T30P140 bcd_reg_reg_6_ ( .D(n127), .CP(n213), .Q(bcd_reg[6]) );
  DFQD2BWP12T30P140 bcd_reg_reg_18_ ( .D(n115), .CP(n214), .Q(bcd_reg[18]) );
  DFQD2BWP12T30P140 bcd_reg_reg_9_ ( .D(n124), .CP(n213), .Q(bcd_reg[9]) );
  DFQD2BWP12T30P140 bcd_reg_reg_5_ ( .D(n128), .CP(n213), .Q(bcd_reg[5]) );
  DFQD2BWP12T30P140 bcd_reg_reg_17_ ( .D(n116), .CP(n214), .Q(bcd_reg[17]) );
  DFQD1BWP12T30P140 state_reg_0_ ( .D(N74), .CP(clk_i), .Q(state[0]) );
  DFQD1BWP12T30P140 bin_reg_reg_1_ ( .D(n109), .CP(n215), .Q(bin_next[2]) );
  DFQD1BWP12T30P140 bin_reg_reg_14_ ( .D(n96), .CP(n215), .Q(bin_next[15]) );
  DFQD1BWP12T30P140 bcd_reg_reg_13_ ( .D(n120), .CP(n214), .Q(bcd_reg[13]) );
  DFQD1BWP12T30P140 bcd_reg_reg_19_ ( .D(n114), .CP(n214), .Q(bcd_reg[19]) );
  CKBD0BWP12T30P140 U141 ( .I(n212), .Z(n136) );
  INVD0BWP12T30P140 U142 ( .I(bcd_reg[4]), .ZN(n163) );
  INVD0BWP12T30P140 U143 ( .I(bcd_reg[7]), .ZN(n170) );
  OAI21D0BWP12T30P140 U144 ( .A1(bcd_reg[5]), .A2(bcd_reg[4]), .B(bcd_reg[6]), 
        .ZN(n169) );
  ND2D0BWP12T30P140 U145 ( .A1(n170), .A2(n169), .ZN(n205) );
  ND2D0BWP12T30P140 U146 ( .A1(n163), .A2(n205), .ZN(n146) );
  NR2D0BWP12T30P140 U147 ( .A1(bcd_reg[5]), .A2(bcd_reg[4]), .ZN(n167) );
  AOI22D0BWP12T30P140 U148 ( .A1(bcd_reg[5]), .A2(n146), .B1(bcd_reg[7]), .B2(
        n167), .ZN(n152) );
  INVD0BWP12T30P140 U149 ( .I(state[0]), .ZN(n141) );
  NR2D0BWP12T30P140 U150 ( .A1(state[1]), .A2(n141), .ZN(n139) );
  INVD0BWP12T30P140 U151 ( .I(bit_count[3]), .ZN(n195) );
  INVD0BWP12T30P140 U152 ( .I(bit_count[2]), .ZN(n198) );
  ND2D0BWP12T30P140 U153 ( .A1(bit_count[1]), .A2(bit_count[0]), .ZN(n137) );
  INR4D0BWP12T30P140 U154 ( .A1(ce_i), .B1(n195), .B2(n198), .B3(n137), .ZN(
        n154) );
  INVD0BWP12T30P140 U155 ( .I(start_i), .ZN(n138) );
  AOI31D0BWP12T30P140 U156 ( .A1(n139), .A2(n154), .A3(n138), .B(rst_i), .ZN(
        n212) );
  NR2D0BWP12T30P140 U157 ( .A1(rst_i), .A2(n212), .ZN(n211) );
  INVD0BWP12T30P140 U158 ( .I(n211), .ZN(n200) );
  MOAI22D0BWP12T30P140 U159 ( .A1(n152), .A2(n200), .B1(dat_bcd_o[6]), .B2(
        n212), .ZN(n80) );
  NR2D0BWP12T30P140 U160 ( .A1(state[0]), .A2(state[1]), .ZN(done_o) );
  INVD0BWP12T30P140 U161 ( .I(bcd_reg[18]), .ZN(n150) );
  NR2D0BWP12T30P140 U162 ( .A1(bcd_reg[16]), .A2(bcd_reg[17]), .ZN(n148) );
  INVD0BWP12T30P140 U163 ( .I(n148), .ZN(n140) );
  AOI32D0BWP12T30P140 U164 ( .A1(bcd_reg[19]), .A2(n150), .A3(n140), .B1(n148), 
        .B2(bcd_reg[18]), .ZN(n188) );
  INR3D1BWP12T30P140 U165 ( .A1(ce_i), .B1(state[1]), .B2(n141), .ZN(n142) );
  AO211D0BWP12T30P140 U166 ( .A1(start_i), .A2(done_o), .B(rst_i), .C(n142), 
        .Z(n182) );
  INVD0BWP12T30P140 U167 ( .I(n182), .ZN(n187) );
  INVD0BWP12T30P140 U168 ( .I(rst_i), .ZN(n201) );
  ND2D0BWP12T30P140 U169 ( .A1(state[0]), .A2(n201), .ZN(n194) );
  OR2D0BWP12T30P140 U170 ( .A1(n187), .A2(n194), .Z(n180) );
  MOAI22D0BWP12T30P140 U171 ( .A1(n188), .A2(n180), .B1(n187), .B2(bcd_reg[19]), .ZN(n114) );
  INVD0BWP12T30P140 U172 ( .I(bcd_reg[0]), .ZN(n165) );
  INVD0BWP12T30P140 U173 ( .I(bcd_reg[3]), .ZN(n158) );
  OAI21D0BWP12T30P140 U174 ( .A1(bcd_reg[1]), .A2(bcd_reg[0]), .B(bcd_reg[2]), 
        .ZN(n145) );
  ND2D0BWP12T30P140 U175 ( .A1(n158), .A2(n145), .ZN(n162) );
  ND2D0BWP12T30P140 U176 ( .A1(n165), .A2(n162), .ZN(n151) );
  NR2D0BWP12T30P140 U177 ( .A1(bcd_reg[1]), .A2(bcd_reg[0]), .ZN(n143) );
  AOI22D0BWP12T30P140 U178 ( .A1(bcd_reg[1]), .A2(n151), .B1(bcd_reg[3]), .B2(
        n143), .ZN(n160) );
  MOAI22D0BWP12T30P140 U179 ( .A1(n160), .A2(n200), .B1(dat_bcd_o[2]), .B2(
        n212), .ZN(n76) );
  INVD0BWP12T30P140 U180 ( .I(n180), .ZN(n191) );
  INVD0BWP12T30P140 U181 ( .I(bcd_reg[16]), .ZN(n176) );
  AOI32D0BWP12T30P140 U182 ( .A1(bcd_reg[18]), .A2(n176), .A3(bcd_reg[17]), 
        .B1(bcd_reg[19]), .B2(n176), .ZN(n149) );
  OAI31D0BWP12T30P140 U183 ( .A1(bcd_reg[18]), .A2(bcd_reg[19]), .A3(n176), 
        .B(n149), .ZN(n202) );
  AO22D0BWP12T30P140 U184 ( .A1(n187), .A2(bcd_reg[17]), .B1(n191), .B2(n202), 
        .Z(n116) );
  INVD0BWP12T30P140 U185 ( .I(n143), .ZN(n144) );
  AOI32D0BWP12T30P140 U186 ( .A1(bcd_reg[3]), .A2(n145), .A3(n144), .B1(
        bcd_reg[2]), .B2(n145), .ZN(n157) );
  MOAI22D0BWP12T30P140 U187 ( .A1(n200), .A2(n157), .B1(n212), .B2(
        dat_bcd_o[3]), .ZN(n77) );
  OAI21D0BWP12T30P140 U188 ( .A1(n205), .A2(n163), .B(n146), .ZN(n147) );
  AO22D0BWP12T30P140 U189 ( .A1(n187), .A2(bcd_reg[5]), .B1(n191), .B2(n147), 
        .Z(n128) );
  AO22D0BWP12T30P140 U190 ( .A1(n211), .A2(n162), .B1(dat_bcd_o[4]), .B2(n212), 
        .Z(n78) );
  INVD0BWP12T30P140 U191 ( .I(bcd_reg[11]), .ZN(n175) );
  OAI21D0BWP12T30P140 U192 ( .A1(bcd_reg[9]), .A2(bcd_reg[8]), .B(bcd_reg[10]), 
        .ZN(n174) );
  ND2D0BWP12T30P140 U193 ( .A1(n175), .A2(n174), .ZN(n209) );
  INVD0BWP12T30P140 U194 ( .I(bcd_reg[8]), .ZN(n161) );
  ND2D0BWP12T30P140 U195 ( .A1(n161), .A2(n209), .ZN(n153) );
  OAI21D0BWP12T30P140 U196 ( .A1(n209), .A2(n161), .B(n153), .ZN(n210) );
  AO22D0BWP12T30P140 U197 ( .A1(n187), .A2(bcd_reg[9]), .B1(n191), .B2(n210), 
        .Z(n124) );
  AO22D0BWP12T30P140 U198 ( .A1(bcd_next_0_), .A2(n211), .B1(n212), .B2(
        dat_bcd_o[0]), .Z(n94) );
  INVD0BWP12T30P140 U199 ( .I(bcd_reg[15]), .ZN(n181) );
  OAI21D0BWP12T30P140 U200 ( .A1(bcd_reg[13]), .A2(bcd_reg[12]), .B(
        bcd_reg[14]), .ZN(n179) );
  ND2D0BWP12T30P140 U201 ( .A1(n181), .A2(n179), .ZN(n203) );
  INVD0BWP12T30P140 U202 ( .I(bcd_reg[12]), .ZN(n159) );
  ND2D0BWP12T30P140 U203 ( .A1(n159), .A2(n203), .ZN(n156) );
  OAI21D0BWP12T30P140 U204 ( .A1(n203), .A2(n159), .B(n156), .ZN(n204) );
  AO22D0BWP12T30P140 U205 ( .A1(n187), .A2(bcd_reg[13]), .B1(n191), .B2(n204), 
        .Z(n120) );
  AO22D0BWP12T30P140 U206 ( .A1(n212), .A2(dat_bcd_o[5]), .B1(n211), .B2(n147), 
        .Z(n79) );
  AOI22D0BWP12T30P140 U207 ( .A1(bcd_reg[17]), .A2(n149), .B1(n148), .B2(
        bcd_reg[19]), .ZN(n189) );
  OAI22D0BWP12T30P140 U208 ( .A1(n189), .A2(n180), .B1(n182), .B2(n150), .ZN(
        n115) );
  OAI21D0BWP12T30P140 U209 ( .A1(n162), .A2(n165), .B(n151), .ZN(n166) );
  AO22D0BWP12T30P140 U210 ( .A1(n212), .A2(dat_bcd_o[1]), .B1(n211), .B2(n166), 
        .Z(n75) );
  MOAI22D0BWP12T30P140 U211 ( .A1(n152), .A2(n180), .B1(n187), .B2(bcd_reg[6]), 
        .ZN(n127) );
  AN2D0BWP12T30P140 U212 ( .A1(next_state[1]), .A2(rst_i), .Z(n135) );
  NR2D0BWP12T30P140 U213 ( .A1(bcd_reg[9]), .A2(bcd_reg[8]), .ZN(n172) );
  AOI22D0BWP12T30P140 U214 ( .A1(bcd_reg[9]), .A2(n153), .B1(bcd_reg[11]), 
        .B2(n172), .ZN(n183) );
  MOAI22D0BWP12T30P140 U215 ( .A1(n183), .A2(n180), .B1(n187), .B2(bcd_reg[10]), .ZN(n123) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n201), .A2(start_i), .B1(n154), .B2(n194), 
        .ZN(n155) );
  MOAI22D0BWP12T30P140 U217 ( .A1(state[1]), .A2(n155), .B1(rst_i), .B2(
        next_state[0]), .ZN(n74) );
  NR2D0BWP12T30P140 U218 ( .A1(bcd_reg[13]), .A2(bcd_reg[12]), .ZN(n177) );
  AOI22D0BWP12T30P140 U219 ( .A1(bcd_reg[13]), .A2(n156), .B1(bcd_reg[15]), 
        .B2(n177), .ZN(n171) );
  MOAI22D0BWP12T30P140 U220 ( .A1(n171), .A2(n180), .B1(n187), .B2(bcd_reg[14]), .ZN(n119) );
  OAI22D0BWP12T30P140 U221 ( .A1(n182), .A2(n158), .B1(n180), .B2(n157), .ZN(
        n130) );
  MOAI22D0BWP12T30P140 U222 ( .A1(n182), .A2(n159), .B1(n209), .B2(n191), .ZN(
        n121) );
  MOAI22D0BWP12T30P140 U223 ( .A1(n160), .A2(n180), .B1(n187), .B2(bcd_reg[2]), 
        .ZN(n131) );
  MOAI22D0BWP12T30P140 U224 ( .A1(n182), .A2(n161), .B1(n205), .B2(n191), .ZN(
        n125) );
  INVD0BWP12T30P140 U225 ( .I(bit_count[0]), .ZN(n185) );
  AOI22D0BWP12T30P140 U226 ( .A1(bit_count[0]), .A2(n182), .B1(n180), .B2(n185), .ZN(n113) );
  MOAI22D0BWP12T30P140 U227 ( .A1(n182), .A2(n163), .B1(n162), .B2(n191), .ZN(
        n129) );
  INVD0BWP12T30P140 U228 ( .I(n194), .ZN(n184) );
  AOI21D0BWP12T30P140 U229 ( .A1(n184), .A2(n185), .B(n187), .ZN(n164) );
  INVD0BWP12T30P140 U230 ( .I(bit_count[1]), .ZN(n186) );
  OAI32D0BWP12T30P140 U231 ( .A1(bit_count[1]), .A2(n185), .A3(n180), .B1(n164), .B2(n186), .ZN(n112) );
  INVD0BWP12T30P140 U232 ( .I(n180), .ZN(n206) );
  MOAI22D0BWP12T30P140 U233 ( .A1(n182), .A2(n165), .B1(n206), .B2(bcd_next_0_), .ZN(n133) );
  AO22D0BWP12T30P140 U234 ( .A1(n187), .A2(bcd_reg[1]), .B1(n191), .B2(n166), 
        .Z(n132) );
  INVD0BWP12T30P140 U235 ( .I(n182), .ZN(n208) );
  NR3D0BWP12T30P140 U236 ( .A1(rst_i), .A2(state[0]), .A3(n187), .ZN(n207) );
  AO222D0BWP12T30P140 U237 ( .A1(n208), .A2(bcd_next_0_), .B1(n207), .B2(
        dat_binary_i[15]), .C1(n191), .C2(bin_next[15]), .Z(n95) );
  AN2D0BWP12T30P140 U238 ( .A1(next_state[0]), .A2(n201), .Z(N74) );
  INVD0BWP12T30P140 U239 ( .I(n167), .ZN(n168) );
  AOI32D0BWP12T30P140 U240 ( .A1(bcd_reg[7]), .A2(n169), .A3(n168), .B1(
        bcd_reg[6]), .B2(n169), .ZN(n199) );
  OAI22D0BWP12T30P140 U241 ( .A1(n182), .A2(n170), .B1(n180), .B2(n199), .ZN(
        n126) );
  MOAI22D0BWP12T30P140 U242 ( .A1(n171), .A2(n200), .B1(dat_bcd_o[14]), .B2(
        n212), .ZN(n88) );
  INVD0BWP12T30P140 U243 ( .I(n172), .ZN(n173) );
  AOI32D0BWP12T30P140 U244 ( .A1(bcd_reg[11]), .A2(n174), .A3(n173), .B1(
        bcd_reg[10]), .B2(n174), .ZN(n192) );
  OAI22D0BWP12T30P140 U245 ( .A1(n182), .A2(n175), .B1(n180), .B2(n192), .ZN(
        n122) );
  MOAI22D0BWP12T30P140 U246 ( .A1(n182), .A2(n176), .B1(n203), .B2(n191), .ZN(
        n117) );
  INVD0BWP12T30P140 U247 ( .I(n177), .ZN(n178) );
  AOI32D0BWP12T30P140 U248 ( .A1(bcd_reg[15]), .A2(n179), .A3(n178), .B1(
        bcd_reg[14]), .B2(n179), .ZN(n190) );
  OAI22D0BWP12T30P140 U249 ( .A1(n182), .A2(n181), .B1(n180), .B2(n190), .ZN(
        n118) );
  MOAI22D0BWP12T30P140 U250 ( .A1(n183), .A2(n200), .B1(dat_bcd_o[10]), .B2(
        n212), .ZN(n84) );
  OAI32D0BWP12T30P140 U251 ( .A1(n186), .A2(n187), .A3(n185), .B1(n184), .B2(
        n187), .ZN(n193) );
  ND3D0BWP12T30P140 U252 ( .A1(bit_count[1]), .A2(bit_count[0]), .A3(n191), 
        .ZN(n197) );
  AOI22D0BWP12T30P140 U253 ( .A1(bit_count[2]), .A2(n193), .B1(n197), .B2(n198), .ZN(n111) );
  AO222D0BWP12T30P140 U254 ( .A1(n187), .A2(bin_next[2]), .B1(bin_next[1]), 
        .B2(n191), .C1(n207), .C2(dat_binary_i[1]), .Z(n109) );
  AO22D0BWP12T30P140 U255 ( .A1(n187), .A2(bin_next[1]), .B1(n207), .B2(
        dat_binary_i[0]), .Z(n134) );
  MOAI22D0BWP12T30P140 U256 ( .A1(n188), .A2(n200), .B1(n212), .B2(
        dat_bcd_o[19]), .ZN(n93) );
  AO222D0BWP12T30P140 U257 ( .A1(n208), .A2(bin_next[15]), .B1(n207), .B2(
        dat_binary_i[14]), .C1(n206), .C2(bin_next[14]), .Z(n96) );
  AO222D0BWP12T30P140 U258 ( .A1(n208), .A2(bin_next[7]), .B1(n207), .B2(
        dat_binary_i[6]), .C1(n206), .C2(bin_next[6]), .Z(n104) );
  AO222D0BWP12T30P140 U259 ( .A1(n208), .A2(bin_next[14]), .B1(n207), .B2(
        dat_binary_i[13]), .C1(n206), .C2(bin_next[13]), .Z(n97) );
  MOAI22D0BWP12T30P140 U260 ( .A1(n189), .A2(n200), .B1(n212), .B2(
        dat_bcd_o[18]), .ZN(n92) );
  AO222D0BWP12T30P140 U261 ( .A1(n208), .A2(bin_next[13]), .B1(n207), .B2(
        dat_binary_i[12]), .C1(n206), .C2(bin_next[12]), .Z(n98) );
  AO222D0BWP12T30P140 U262 ( .A1(n208), .A2(bin_next[5]), .B1(n207), .B2(
        dat_binary_i[4]), .C1(n206), .C2(bin_next[4]), .Z(n106) );
  AO222D0BWP12T30P140 U263 ( .A1(n208), .A2(bin_next[12]), .B1(n207), .B2(
        dat_binary_i[11]), .C1(n206), .C2(bin_next[11]), .Z(n99) );
  MOAI22D0BWP12T30P140 U264 ( .A1(n200), .A2(n190), .B1(n212), .B2(
        dat_bcd_o[15]), .ZN(n89) );
  AO222D0BWP12T30P140 U265 ( .A1(n208), .A2(bin_next[11]), .B1(n207), .B2(
        dat_binary_i[10]), .C1(n206), .C2(bin_next[10]), .Z(n100) );
  AO222D0BWP12T30P140 U266 ( .A1(n208), .A2(bin_next[3]), .B1(bin_next[2]), 
        .B2(n191), .C1(n207), .C2(dat_binary_i[2]), .Z(n108) );
  AO222D0BWP12T30P140 U267 ( .A1(n208), .A2(bin_next[10]), .B1(n207), .B2(
        dat_binary_i[9]), .C1(n206), .C2(bin_next[9]), .Z(n101) );
  MOAI22D0BWP12T30P140 U268 ( .A1(n200), .A2(n192), .B1(n212), .B2(
        dat_bcd_o[11]), .ZN(n85) );
  AO222D0BWP12T30P140 U269 ( .A1(n208), .A2(bin_next[9]), .B1(n207), .B2(
        dat_binary_i[8]), .C1(n206), .C2(bin_next[8]), .Z(n102) );
  OA21D0BWP12T30P140 U270 ( .A1(n194), .A2(bit_count[2]), .B(n193), .Z(n196)
         );
  OAI32D0BWP12T30P140 U271 ( .A1(bit_count[3]), .A2(n198), .A3(n197), .B1(n196), .B2(n195), .ZN(n110) );
  AO222D0BWP12T30P140 U272 ( .A1(n208), .A2(bin_next[8]), .B1(n207), .B2(
        dat_binary_i[7]), .C1(n206), .C2(bin_next[7]), .Z(n103) );
  MOAI22D0BWP12T30P140 U273 ( .A1(n200), .A2(n199), .B1(n212), .B2(
        dat_bcd_o[7]), .ZN(n81) );
  AN2D0BWP12T30P140 U274 ( .A1(next_state[1]), .A2(n201), .Z(N75) );
  AO22D0BWP12T30P140 U275 ( .A1(n212), .A2(dat_bcd_o[17]), .B1(n211), .B2(n202), .Z(n91) );
  AO222D0BWP12T30P140 U276 ( .A1(n208), .A2(bin_next[6]), .B1(n207), .B2(
        dat_binary_i[5]), .C1(n206), .C2(bin_next[5]), .Z(n105) );
  AO22D0BWP12T30P140 U277 ( .A1(n211), .A2(n203), .B1(dat_bcd_o[16]), .B2(n212), .Z(n90) );
  AO22D0BWP12T30P140 U278 ( .A1(n136), .A2(dat_bcd_o[13]), .B1(n211), .B2(n204), .Z(n87) );
  AO22D0BWP12T30P140 U279 ( .A1(n211), .A2(n205), .B1(dat_bcd_o[8]), .B2(n212), 
        .Z(n82) );
  AO222D0BWP12T30P140 U280 ( .A1(n208), .A2(bin_next[4]), .B1(n207), .B2(
        dat_binary_i[3]), .C1(n206), .C2(bin_next[3]), .Z(n107) );
  AO22D0BWP12T30P140 U281 ( .A1(n211), .A2(n209), .B1(dat_bcd_o[12]), .B2(n212), .Z(n86) );
  AO22D0BWP12T30P140 U282 ( .A1(n136), .A2(dat_bcd_o[9]), .B1(n211), .B2(n210), 
        .Z(n83) );
  CKBD0BWP12T30P140 U283 ( .I(clk_i), .Z(n215) );
  CKBD0BWP12T30P140 U284 ( .I(clk_i), .Z(n214) );
  CKBD0BWP12T30P140 U285 ( .I(clk_i), .Z(n213) );
endmodule

