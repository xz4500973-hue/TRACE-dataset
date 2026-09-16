/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:08:41 2026
/////////////////////////////////////////////////////////////


module binary_to_bcd ( clk_i, ce_i, rst_i, start_i, dat_binary_i, dat_bcd_o, 
        done_o );
  input [15:0] dat_binary_i;
  output [19:0] dat_bcd_o;
  input clk_i, ce_i, rst_i, start_i;
  output done_o;
  wire   bcd_next_0_, busy_bit, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206;
  wire   [15:1] bin_next;
  wire   [19:0] bcd_reg;
  wire   [3:0] bit_count;

  DFQD2BWP12T30P140 dat_bcd_o_reg_2_ ( .D(n89), .CP(clk_i), .Q(dat_bcd_o[2])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_3_ ( .D(n88), .CP(clk_i), .Q(dat_bcd_o[3])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_4_ ( .D(n87), .CP(clk_i), .Q(dat_bcd_o[4])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_1_ ( .D(n90), .CP(clk_i), .Q(dat_bcd_o[1])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_0_ ( .D(n91), .CP(clk_i), .Q(dat_bcd_o[0])
         );
  DFQD2BWP12T30P140 bit_count_reg_2_ ( .D(n71), .CP(clk_i), .Q(bit_count[2])
         );
  DFQD2BWP12T30P140 bit_count_reg_3_ ( .D(n129), .CP(clk_i), .Q(bit_count[3])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_3_ ( .D(n124), .CP(clk_i), .Q(bcd_reg[3]) );
  DFQD2BWP12T30P140 bit_count_reg_1_ ( .D(n70), .CP(clk_i), .Q(bit_count[1])
         );
  DFQD2BWP12T30P140 bcd_reg_reg_2_ ( .D(n125), .CP(clk_i), .Q(bcd_reg[2]) );
  DFQD2BWP12T30P140 bcd_reg_reg_1_ ( .D(n126), .CP(clk_i), .Q(bcd_reg[1]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_16_ ( .D(n75), .CP(n205), .Q(dat_bcd_o[16])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_14_ ( .D(n77), .CP(n205), .Q(dat_bcd_o[14])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_10_ ( .D(n81), .CP(n204), .Q(dat_bcd_o[10])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_18_ ( .D(n73), .CP(n205), .Q(dat_bcd_o[18])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_19_ ( .D(n72), .CP(n205), .Q(dat_bcd_o[19])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_15_ ( .D(n76), .CP(n205), .Q(dat_bcd_o[15])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_11_ ( .D(n80), .CP(n204), .Q(dat_bcd_o[11])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_7_ ( .D(n84), .CP(n204), .Q(dat_bcd_o[7]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_12_ ( .D(n79), .CP(n204), .Q(dat_bcd_o[12])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_8_ ( .D(n83), .CP(n204), .Q(dat_bcd_o[8]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_17_ ( .D(n74), .CP(n205), .Q(dat_bcd_o[17])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_13_ ( .D(n78), .CP(n205), .Q(dat_bcd_o[13])
         );
  DFQD2BWP12T30P140 dat_bcd_o_reg_9_ ( .D(n82), .CP(n205), .Q(dat_bcd_o[9]) );
  DFQD2BWP12T30P140 dat_bcd_o_reg_5_ ( .D(n86), .CP(n204), .Q(dat_bcd_o[5]) );
  DFQD2BWP12T30P140 bit_count_reg_0_ ( .D(n130), .CP(clk_i), .Q(bit_count[0])
         );
  DFQD2BWP12T30P140 bin_reg_reg_1_ ( .D(n106), .CP(n206), .Q(bin_next[2]) );
  DFQD2BWP12T30P140 bin_reg_reg_2_ ( .D(n105), .CP(n206), .Q(bin_next[3]) );
  DFQD2BWP12T30P140 bin_reg_reg_4_ ( .D(n103), .CP(n206), .Q(bin_next[5]) );
  DFQD2BWP12T30P140 bin_reg_reg_5_ ( .D(n102), .CP(n206), .Q(bin_next[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_6_ ( .D(n101), .CP(n206), .Q(bin_next[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_7_ ( .D(n100), .CP(n206), .Q(bin_next[8]) );
  DFQD2BWP12T30P140 bin_reg_reg_8_ ( .D(n99), .CP(n206), .Q(bin_next[9]) );
  DFQD2BWP12T30P140 bin_reg_reg_9_ ( .D(n98), .CP(n206), .Q(bin_next[10]) );
  DFQD2BWP12T30P140 bin_reg_reg_10_ ( .D(n97), .CP(n206), .Q(bin_next[11]) );
  DFQD2BWP12T30P140 bin_reg_reg_11_ ( .D(n96), .CP(n206), .Q(bin_next[12]) );
  DFQD2BWP12T30P140 bin_reg_reg_12_ ( .D(n95), .CP(n204), .Q(bin_next[13]) );
  DFQD2BWP12T30P140 bin_reg_reg_13_ ( .D(n94), .CP(n205), .Q(bin_next[14]) );
  DFQD2BWP12T30P140 bin_reg_reg_14_ ( .D(n93), .CP(n206), .Q(bin_next[15]) );
  DFQD2BWP12T30P140 bcd_reg_reg_16_ ( .D(n111), .CP(n204), .Q(bcd_reg[16]) );
  DFQD2BWP12T30P140 bin_reg_reg_0_ ( .D(n107), .CP(n206), .Q(bin_next[1]) );
  DFQD2BWP12T30P140 busy_bit_reg ( .D(n128), .CP(clk_i), .Q(busy_bit) );
  DFQD2BWP12T30P140 bcd_reg_reg_11_ ( .D(n116), .CP(n204), .Q(bcd_reg[11]) );
  DFQD2BWP12T30P140 bcd_reg_reg_7_ ( .D(n120), .CP(n204), .Q(bcd_reg[7]) );
  DFQD2BWP12T30P140 bcd_reg_reg_18_ ( .D(n109), .CP(n205), .Q(bcd_reg[18]) );
  DFQD2BWP12T30P140 bcd_reg_reg_14_ ( .D(n113), .CP(n205), .Q(bcd_reg[14]) );
  DFQD2BWP12T30P140 bcd_reg_reg_10_ ( .D(n117), .CP(n204), .Q(bcd_reg[10]) );
  DFQD2BWP12T30P140 bcd_reg_reg_6_ ( .D(n121), .CP(n204), .Q(bcd_reg[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_15_ ( .D(n92), .CP(n206), .Q(bcd_next_0_) );
  DFQD2BWP12T30P140 bcd_reg_reg_0_ ( .D(n127), .CP(n204), .Q(bcd_reg[0]) );
  DFQD2BWP12T30P140 bcd_reg_reg_4_ ( .D(n123), .CP(n205), .Q(bcd_reg[4]) );
  DFQD2BWP12T30P140 bcd_reg_reg_17_ ( .D(n110), .CP(n206), .Q(bcd_reg[17]) );
  DFQD2BWP12T30P140 bcd_reg_reg_13_ ( .D(n114), .CP(n205), .Q(bcd_reg[13]) );
  DFQD2BWP12T30P140 bcd_reg_reg_9_ ( .D(n118), .CP(n205), .Q(bcd_reg[9]) );
  DFQD2BWP12T30P140 bcd_reg_reg_5_ ( .D(n122), .CP(n204), .Q(bcd_reg[5]) );
  DFQD2BWP12T30P140 bcd_reg_reg_8_ ( .D(n119), .CP(n204), .Q(bcd_reg[8]) );
  DFQD1BWP12T30P140 dat_bcd_o_reg_6_ ( .D(n85), .CP(n204), .Q(dat_bcd_o[6]) );
  DFQD1BWP12T30P140 bin_reg_reg_3_ ( .D(n104), .CP(n206), .Q(bin_next[4]) );
  DFQD1BWP12T30P140 bcd_reg_reg_15_ ( .D(n112), .CP(n205), .Q(bcd_reg[15]) );
  DFQD1BWP12T30P140 bcd_reg_reg_12_ ( .D(n115), .CP(n205), .Q(bcd_reg[12]) );
  DFQD1BWP12T30P140 bcd_reg_reg_19_ ( .D(n108), .CP(n206), .Q(bcd_reg[19]) );
  CKBD0BWP12T30P140 U134 ( .I(n201), .Z(n131) );
  INR3D1BWP12T30P140 U135 ( .A1(start_i), .B1(rst_i), .B2(busy_bit), .ZN(n197)
         );
  INVD0BWP12T30P140 U136 ( .I(bit_count[1]), .ZN(n153) );
  INVD0BWP12T30P140 U137 ( .I(bit_count[2]), .ZN(n148) );
  INVD0BWP12T30P140 U138 ( .I(bit_count[0]), .ZN(n195) );
  INR4D0BWP12T30P140 U139 ( .A1(bit_count[3]), .B1(n153), .B2(n148), .B3(n195), 
        .ZN(n134) );
  ND2D0BWP12T30P140 U140 ( .A1(busy_bit), .A2(ce_i), .ZN(n193) );
  NR2D0BWP12T30P140 U141 ( .A1(n134), .A2(n193), .ZN(n194) );
  INVD0BWP12T30P140 U142 ( .I(rst_i), .ZN(n132) );
  ND2D0BWP12T30P140 U143 ( .A1(n194), .A2(n132), .ZN(n177) );
  INVD0BWP12T30P140 U144 ( .I(n177), .ZN(n185) );
  CKBD0BWP12T30P140 U145 ( .I(n185), .Z(n199) );
  OR2D0BWP12T30P140 U146 ( .A1(n185), .A2(n197), .Z(n183) );
  INVD0BWP12T30P140 U147 ( .I(n183), .ZN(n198) );
  AO222D0BWP12T30P140 U148 ( .A1(n199), .A2(bin_next[2]), .B1(n198), .B2(
        bin_next[3]), .C1(n197), .C2(dat_binary_i[2]), .Z(n105) );
  INVD0BWP12T30P140 U149 ( .I(bcd_reg[18]), .ZN(n163) );
  NR2D0BWP12T30P140 U150 ( .A1(bcd_reg[16]), .A2(bcd_reg[17]), .ZN(n162) );
  INVD0BWP12T30P140 U151 ( .I(n162), .ZN(n133) );
  AOI32D0BWP12T30P140 U152 ( .A1(bcd_reg[19]), .A2(n163), .A3(n133), .B1(n162), 
        .B2(bcd_reg[18]), .ZN(n187) );
  INVD0BWP12T30P140 U153 ( .I(bcd_reg[19]), .ZN(n144) );
  OAI22D0BWP12T30P140 U154 ( .A1(n177), .A2(n187), .B1(n183), .B2(n144), .ZN(
        n108) );
  NR2D0BWP12T30P140 U155 ( .A1(bcd_reg[1]), .A2(bcd_reg[0]), .ZN(n135) );
  INVD0BWP12T30P140 U156 ( .I(bcd_reg[0]), .ZN(n140) );
  INVD0BWP12T30P140 U157 ( .I(bcd_reg[3]), .ZN(n151) );
  OAI21D0BWP12T30P140 U158 ( .A1(bcd_reg[1]), .A2(bcd_reg[0]), .B(bcd_reg[2]), 
        .ZN(n137) );
  ND2D0BWP12T30P140 U159 ( .A1(n151), .A2(n137), .ZN(n149) );
  ND2D0BWP12T30P140 U160 ( .A1(n140), .A2(n149), .ZN(n139) );
  AOI22D0BWP12T30P140 U161 ( .A1(bcd_reg[3]), .A2(n135), .B1(bcd_reg[1]), .B2(
        n139), .ZN(n155) );
  INR4D0BWP12T30P140 U162 ( .A1(n134), .B1(start_i), .B2(n193), .B3(rst_i), 
        .ZN(n203) );
  INVD0BWP12T30P140 U163 ( .I(n203), .ZN(n192) );
  NR2D0BWP12T30P140 U164 ( .A1(rst_i), .A2(n203), .ZN(n201) );
  MOAI22D0BWP12T30P140 U165 ( .A1(n155), .A2(n192), .B1(dat_bcd_o[2]), .B2(
        n201), .ZN(n89) );
  INVD0BWP12T30P140 U166 ( .I(n183), .ZN(n179) );
  INVD0BWP12T30P140 U167 ( .I(bcd_reg[11]), .ZN(n172) );
  OAI21D0BWP12T30P140 U168 ( .A1(bcd_reg[9]), .A2(bcd_reg[8]), .B(bcd_reg[10]), 
        .ZN(n171) );
  ND2D0BWP12T30P140 U169 ( .A1(n172), .A2(n171), .ZN(n188) );
  AO22D0BWP12T30P140 U170 ( .A1(n179), .A2(bcd_reg[12]), .B1(n188), .B2(n185), 
        .Z(n115) );
  INVD0BWP12T30P140 U171 ( .I(n135), .ZN(n136) );
  AOI32D0BWP12T30P140 U172 ( .A1(bcd_reg[3]), .A2(n137), .A3(n136), .B1(
        bcd_reg[2]), .B2(n137), .ZN(n150) );
  MOAI22D0BWP12T30P140 U173 ( .A1(n192), .A2(n150), .B1(n201), .B2(
        dat_bcd_o[3]), .ZN(n88) );
  INVD0BWP12T30P140 U174 ( .I(bcd_reg[7]), .ZN(n167) );
  OAI21D0BWP12T30P140 U175 ( .A1(bcd_reg[5]), .A2(bcd_reg[4]), .B(bcd_reg[6]), 
        .ZN(n166) );
  ND2D0BWP12T30P140 U176 ( .A1(n167), .A2(n166), .ZN(n190) );
  AO22D0BWP12T30P140 U177 ( .A1(n179), .A2(bcd_reg[8]), .B1(n190), .B2(n185), 
        .Z(n119) );
  AO22D0BWP12T30P140 U178 ( .A1(n203), .A2(n149), .B1(dat_bcd_o[4]), .B2(n201), 
        .Z(n87) );
  INVD0BWP12T30P140 U179 ( .I(bcd_reg[4]), .ZN(n138) );
  ND2D0BWP12T30P140 U180 ( .A1(n138), .A2(n190), .ZN(n156) );
  OAI21D0BWP12T30P140 U181 ( .A1(n190), .A2(n138), .B(n156), .ZN(n180) );
  AO22D0BWP12T30P140 U182 ( .A1(n185), .A2(n180), .B1(n179), .B2(bcd_reg[5]), 
        .Z(n122) );
  OAI21D0BWP12T30P140 U183 ( .A1(n149), .A2(n140), .B(n139), .ZN(n157) );
  AO22D0BWP12T30P140 U184 ( .A1(n203), .A2(n157), .B1(n201), .B2(dat_bcd_o[1]), 
        .Z(n90) );
  INVD0BWP12T30P140 U185 ( .I(bcd_reg[8]), .ZN(n141) );
  ND2D0BWP12T30P140 U186 ( .A1(n141), .A2(n188), .ZN(n158) );
  OAI21D0BWP12T30P140 U187 ( .A1(n188), .A2(n141), .B(n158), .ZN(n196) );
  AO22D0BWP12T30P140 U188 ( .A1(n199), .A2(n196), .B1(n179), .B2(bcd_reg[9]), 
        .Z(n118) );
  AO22D0BWP12T30P140 U189 ( .A1(n203), .A2(bcd_next_0_), .B1(n201), .B2(
        dat_bcd_o[0]), .Z(n91) );
  INVD0BWP12T30P140 U190 ( .I(bcd_reg[15]), .ZN(n176) );
  OAI21D0BWP12T30P140 U191 ( .A1(bcd_reg[13]), .A2(bcd_reg[12]), .B(
        bcd_reg[14]), .ZN(n175) );
  ND2D0BWP12T30P140 U192 ( .A1(n176), .A2(n175), .ZN(n181) );
  INVD0BWP12T30P140 U193 ( .I(bcd_reg[12]), .ZN(n142) );
  ND2D0BWP12T30P140 U194 ( .A1(n142), .A2(n181), .ZN(n159) );
  OAI21D0BWP12T30P140 U195 ( .A1(n181), .A2(n142), .B(n159), .ZN(n200) );
  AO22D0BWP12T30P140 U196 ( .A1(n185), .A2(n200), .B1(n179), .B2(bcd_reg[13]), 
        .Z(n114) );
  INVD0BWP12T30P140 U197 ( .I(busy_bit), .ZN(done_o) );
  OAI22D0BWP12T30P140 U198 ( .A1(bit_count[0]), .A2(n193), .B1(n194), .B2(
        done_o), .ZN(n152) );
  IAO21D0BWP12T30P140 U199 ( .A1(n193), .A2(bit_count[1]), .B(n152), .ZN(n143)
         );
  ND3D0BWP12T30P140 U200 ( .A1(bit_count[1]), .A2(bit_count[0]), .A3(n194), 
        .ZN(n147) );
  AOI22D0BWP12T30P140 U201 ( .A1(bit_count[2]), .A2(n143), .B1(n147), .B2(n148), .ZN(n71) );
  INVD0BWP12T30P140 U202 ( .I(bcd_reg[16]), .ZN(n182) );
  ND2D0BWP12T30P140 U203 ( .A1(n163), .A2(n144), .ZN(n146) );
  OAI211D0BWP12T30P140 U204 ( .A1(bcd_reg[19]), .A2(bcd_reg[17]), .B(n146), 
        .C(n182), .ZN(n145) );
  OAI21D0BWP12T30P140 U205 ( .A1(n182), .A2(n146), .B(n145), .ZN(n202) );
  AO22D0BWP12T30P140 U206 ( .A1(n185), .A2(n202), .B1(n179), .B2(bcd_reg[17]), 
        .Z(n110) );
  MOAI22D0BWP12T30P140 U207 ( .A1(n148), .A2(n147), .B1(bit_count[3]), .B2(
        busy_bit), .ZN(n129) );
  AO22D0BWP12T30P140 U208 ( .A1(bcd_reg[4]), .A2(n179), .B1(n149), .B2(n185), 
        .Z(n123) );
  OAI22D0BWP12T30P140 U209 ( .A1(n151), .A2(n183), .B1(n177), .B2(n150), .ZN(
        n124) );
  AO22D0BWP12T30P140 U210 ( .A1(bcd_reg[0]), .A2(n179), .B1(n185), .B2(
        bcd_next_0_), .Z(n127) );
  ND2D0BWP12T30P140 U211 ( .A1(bit_count[0]), .A2(n194), .ZN(n154) );
  MAOI22D0BWP12T30P140 U212 ( .A1(n154), .A2(n153), .B1(n153), .B2(n152), .ZN(
        n70) );
  AO222D0BWP12T30P140 U213 ( .A1(n199), .A2(bin_next[15]), .B1(n198), .B2(
        bcd_next_0_), .C1(n197), .C2(dat_binary_i[15]), .Z(n92) );
  MOAI22D0BWP12T30P140 U214 ( .A1(n155), .A2(n177), .B1(bcd_reg[2]), .B2(n179), 
        .ZN(n125) );
  NR2D0BWP12T30P140 U215 ( .A1(bcd_reg[5]), .A2(bcd_reg[4]), .ZN(n164) );
  AOI22D0BWP12T30P140 U216 ( .A1(bcd_reg[7]), .A2(n164), .B1(bcd_reg[5]), .B2(
        n156), .ZN(n178) );
  MOAI22D0BWP12T30P140 U217 ( .A1(n178), .A2(n177), .B1(n179), .B2(bcd_reg[6]), 
        .ZN(n121) );
  AO22D0BWP12T30P140 U218 ( .A1(bcd_reg[1]), .A2(n179), .B1(n185), .B2(n157), 
        .Z(n126) );
  NR2D0BWP12T30P140 U219 ( .A1(bcd_reg[9]), .A2(bcd_reg[8]), .ZN(n169) );
  AOI22D0BWP12T30P140 U220 ( .A1(bcd_reg[11]), .A2(n169), .B1(bcd_reg[9]), 
        .B2(n158), .ZN(n168) );
  MOAI22D0BWP12T30P140 U221 ( .A1(n168), .A2(n177), .B1(n179), .B2(bcd_reg[10]), .ZN(n117) );
  AO22D0BWP12T30P140 U222 ( .A1(dat_bcd_o[16]), .A2(n201), .B1(n203), .B2(n181), .Z(n75) );
  NR2D0BWP12T30P140 U223 ( .A1(bcd_reg[13]), .A2(bcd_reg[12]), .ZN(n173) );
  AOI22D0BWP12T30P140 U224 ( .A1(bcd_reg[15]), .A2(n173), .B1(bcd_reg[13]), 
        .B2(n159), .ZN(n160) );
  MOAI22D0BWP12T30P140 U225 ( .A1(n160), .A2(n177), .B1(n179), .B2(bcd_reg[14]), .ZN(n113) );
  MOAI22D0BWP12T30P140 U226 ( .A1(n160), .A2(n192), .B1(dat_bcd_o[14]), .B2(
        n201), .ZN(n77) );
  OAI21D0BWP12T30P140 U227 ( .A1(bcd_reg[18]), .A2(bcd_reg[19]), .B(n182), 
        .ZN(n161) );
  AOI22D0BWP12T30P140 U228 ( .A1(bcd_reg[19]), .A2(n162), .B1(bcd_reg[17]), 
        .B2(n161), .ZN(n184) );
  OAI22D0BWP12T30P140 U229 ( .A1(n184), .A2(n177), .B1(n183), .B2(n163), .ZN(
        n109) );
  AO222D0BWP12T30P140 U230 ( .A1(n199), .A2(bin_next[4]), .B1(n198), .B2(
        bin_next[5]), .C1(n197), .C2(dat_binary_i[4]), .Z(n103) );
  INVD0BWP12T30P140 U231 ( .I(n164), .ZN(n165) );
  AOI32D0BWP12T30P140 U232 ( .A1(bcd_reg[7]), .A2(n166), .A3(n165), .B1(
        bcd_reg[6]), .B2(n166), .ZN(n186) );
  OAI22D0BWP12T30P140 U233 ( .A1(n177), .A2(n186), .B1(n183), .B2(n167), .ZN(
        n120) );
  MOAI22D0BWP12T30P140 U234 ( .A1(n168), .A2(n192), .B1(dat_bcd_o[10]), .B2(
        n201), .ZN(n81) );
  INVD0BWP12T30P140 U235 ( .I(n169), .ZN(n170) );
  AOI32D0BWP12T30P140 U236 ( .A1(bcd_reg[11]), .A2(n171), .A3(n170), .B1(
        bcd_reg[10]), .B2(n171), .ZN(n191) );
  OAI22D0BWP12T30P140 U237 ( .A1(n177), .A2(n191), .B1(n183), .B2(n172), .ZN(
        n116) );
  AO222D0BWP12T30P140 U238 ( .A1(n199), .A2(bin_next[11]), .B1(n198), .B2(
        bin_next[12]), .C1(n197), .C2(dat_binary_i[11]), .Z(n96) );
  INVD0BWP12T30P140 U239 ( .I(n173), .ZN(n174) );
  AOI32D0BWP12T30P140 U240 ( .A1(bcd_reg[15]), .A2(n175), .A3(n174), .B1(
        bcd_reg[14]), .B2(n175), .ZN(n189) );
  OAI22D0BWP12T30P140 U241 ( .A1(n177), .A2(n189), .B1(n183), .B2(n176), .ZN(
        n112) );
  AO21D0BWP12T30P140 U242 ( .A1(busy_bit), .A2(n131), .B(n197), .Z(n128) );
  MOAI22D0BWP12T30P140 U243 ( .A1(n178), .A2(n192), .B1(dat_bcd_o[6]), .B2(
        n201), .ZN(n85) );
  AO22D0BWP12T30P140 U244 ( .A1(n197), .A2(dat_binary_i[0]), .B1(n179), .B2(
        bin_next[1]), .Z(n107) );
  AO22D0BWP12T30P140 U245 ( .A1(n203), .A2(n180), .B1(n201), .B2(dat_bcd_o[5]), 
        .Z(n86) );
  MOAI22D0BWP12T30P140 U246 ( .A1(n183), .A2(n182), .B1(n185), .B2(n181), .ZN(
        n111) );
  MOAI22D0BWP12T30P140 U247 ( .A1(n184), .A2(n192), .B1(n201), .B2(
        dat_bcd_o[18]), .ZN(n73) );
  AO222D0BWP12T30P140 U248 ( .A1(n185), .A2(bin_next[14]), .B1(n198), .B2(
        bin_next[15]), .C1(n197), .C2(dat_binary_i[14]), .Z(n93) );
  MOAI22D0BWP12T30P140 U249 ( .A1(n192), .A2(n186), .B1(n201), .B2(
        dat_bcd_o[7]), .ZN(n84) );
  AO222D0BWP12T30P140 U250 ( .A1(n199), .A2(bin_next[13]), .B1(n198), .B2(
        bin_next[14]), .C1(n197), .C2(dat_binary_i[13]), .Z(n94) );
  MOAI22D0BWP12T30P140 U251 ( .A1(n192), .A2(n187), .B1(n201), .B2(
        dat_bcd_o[19]), .ZN(n72) );
  AO222D0BWP12T30P140 U252 ( .A1(n199), .A2(bin_next[12]), .B1(n198), .B2(
        bin_next[13]), .C1(n197), .C2(dat_binary_i[12]), .Z(n95) );
  AO22D0BWP12T30P140 U253 ( .A1(n203), .A2(n188), .B1(dat_bcd_o[12]), .B2(n201), .Z(n79) );
  AO222D0BWP12T30P140 U254 ( .A1(n199), .A2(bin_next[8]), .B1(n198), .B2(
        bin_next[9]), .C1(n197), .C2(dat_binary_i[8]), .Z(n99) );
  MOAI22D0BWP12T30P140 U255 ( .A1(n192), .A2(n189), .B1(n201), .B2(
        dat_bcd_o[15]), .ZN(n76) );
  AO222D0BWP12T30P140 U256 ( .A1(n199), .A2(bin_next[10]), .B1(n198), .B2(
        bin_next[11]), .C1(n197), .C2(dat_binary_i[10]), .Z(n97) );
  AO22D0BWP12T30P140 U257 ( .A1(n203), .A2(n190), .B1(dat_bcd_o[8]), .B2(n201), 
        .Z(n83) );
  AO222D0BWP12T30P140 U258 ( .A1(n199), .A2(bin_next[9]), .B1(n198), .B2(
        bin_next[10]), .C1(n197), .C2(dat_binary_i[9]), .Z(n98) );
  MOAI22D0BWP12T30P140 U259 ( .A1(n192), .A2(n191), .B1(n131), .B2(
        dat_bcd_o[11]), .ZN(n80) );
  AO222D0BWP12T30P140 U260 ( .A1(n199), .A2(bin_next[5]), .B1(n198), .B2(
        bin_next[6]), .C1(n197), .C2(dat_binary_i[5]), .Z(n102) );
  OAI32D0BWP12T30P140 U261 ( .A1(n195), .A2(n194), .A3(done_o), .B1(
        bit_count[0]), .B2(n193), .ZN(n130) );
  AO222D0BWP12T30P140 U262 ( .A1(n199), .A2(bin_next[7]), .B1(n198), .B2(
        bin_next[8]), .C1(n197), .C2(dat_binary_i[7]), .Z(n100) );
  AO22D0BWP12T30P140 U263 ( .A1(n203), .A2(n196), .B1(n201), .B2(dat_bcd_o[9]), 
        .Z(n82) );
  AO222D0BWP12T30P140 U264 ( .A1(n199), .A2(bin_next[6]), .B1(n198), .B2(
        bin_next[7]), .C1(n197), .C2(dat_binary_i[6]), .Z(n101) );
  AO222D0BWP12T30P140 U265 ( .A1(n199), .A2(bin_next[1]), .B1(n198), .B2(
        bin_next[2]), .C1(n197), .C2(dat_binary_i[1]), .Z(n106) );
  AO222D0BWP12T30P140 U266 ( .A1(n199), .A2(bin_next[3]), .B1(n198), .B2(
        bin_next[4]), .C1(n197), .C2(dat_binary_i[3]), .Z(n104) );
  AO22D0BWP12T30P140 U267 ( .A1(n203), .A2(n200), .B1(n201), .B2(dat_bcd_o[13]), .Z(n78) );
  AO22D0BWP12T30P140 U268 ( .A1(n203), .A2(n202), .B1(n201), .B2(dat_bcd_o[17]), .Z(n74) );
  CKBD0BWP12T30P140 U269 ( .I(clk_i), .Z(n206) );
  CKBD0BWP12T30P140 U270 ( .I(clk_i), .Z(n205) );
  CKBD0BWP12T30P140 U271 ( .I(clk_i), .Z(n204) );
endmodule

