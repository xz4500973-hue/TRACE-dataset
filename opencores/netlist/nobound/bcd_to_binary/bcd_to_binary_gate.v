/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:08:12 2026
/////////////////////////////////////////////////////////////


module bcd_to_binary ( clk_i, ce_i, rst_i, start_i, dat_bcd_i, dat_binary_o, 
        done_o );
  input [19:0] dat_bcd_i;
  output [15:0] dat_binary_o;
  input clk_i, ce_i, rst_i, start_i;
  output done_o;
  wire   busy_bit, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209;
  wire   [16:1] bcd_reg;
  wire   [15:0] bin_next;
  wire   [18:16] bcd_next;
  wire   [3:0] bit_count;

  DFQD2BWP12T30P140 bcd_reg_reg_18_ ( .D(n79), .CP(clk_i), .Q(bcd_next[17]) );
  DFQD2BWP12T30P140 bcd_reg_reg_17_ ( .D(n80), .CP(clk_i), .Q(bcd_next[16]) );
  DFQD2BWP12T30P140 bcd_reg_reg_19_ ( .D(n78), .CP(clk_i), .Q(bcd_next[18]) );
  DFQD2BWP12T30P140 bcd_reg_reg_15_ ( .D(n82), .CP(clk_i), .Q(bcd_reg[15]) );
  DFQD2BWP12T30P140 bcd_reg_reg_14_ ( .D(n83), .CP(clk_i), .Q(bcd_reg[14]) );
  DFQD2BWP12T30P140 busy_bit_reg ( .D(n129), .CP(clk_i), .Q(busy_bit) );
  DFQD2BWP12T30P140 dat_binary_o_reg_0_ ( .D(n112), .CP(n208), .Q(
        dat_binary_o[0]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_1_ ( .D(n111), .CP(n208), .Q(
        dat_binary_o[1]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_2_ ( .D(n110), .CP(n208), .Q(
        dat_binary_o[2]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_3_ ( .D(n109), .CP(n208), .Q(
        dat_binary_o[3]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_4_ ( .D(n108), .CP(n208), .Q(
        dat_binary_o[4]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_5_ ( .D(n107), .CP(n208), .Q(
        dat_binary_o[5]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_6_ ( .D(n106), .CP(n208), .Q(
        dat_binary_o[6]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_7_ ( .D(n105), .CP(n208), .Q(
        dat_binary_o[7]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_9_ ( .D(n103), .CP(n208), .Q(
        dat_binary_o[9]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_10_ ( .D(n102), .CP(n208), .Q(
        dat_binary_o[10]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_11_ ( .D(n101), .CP(n209), .Q(
        dat_binary_o[11]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_12_ ( .D(n100), .CP(clk_i), .Q(
        dat_binary_o[12]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_13_ ( .D(n99), .CP(n209), .Q(
        dat_binary_o[13]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_14_ ( .D(n98), .CP(n208), .Q(
        dat_binary_o[14]) );
  DFQD2BWP12T30P140 dat_binary_o_reg_15_ ( .D(n97), .CP(n209), .Q(
        dat_binary_o[15]) );
  DFQD2BWP12T30P140 bcd_reg_reg_13_ ( .D(n84), .CP(clk_i), .Q(bcd_reg[13]) );
  DFQD2BWP12T30P140 bcd_reg_reg_16_ ( .D(n81), .CP(clk_i), .Q(bcd_reg[16]) );
  DFQD2BWP12T30P140 bit_count_reg_2_ ( .D(n77), .CP(n209), .Q(bit_count[2]) );
  DFQD2BWP12T30P140 bit_count_reg_3_ ( .D(n130), .CP(clk_i), .Q(bit_count[3])
         );
  DFQD2BWP12T30P140 bin_reg_reg_1_ ( .D(n128), .CP(n208), .Q(bin_next[0]) );
  DFQD2BWP12T30P140 bit_count_reg_1_ ( .D(n76), .CP(n208), .Q(bit_count[1]) );
  DFQD2BWP12T30P140 bcd_reg_reg_11_ ( .D(n86), .CP(n208), .Q(bcd_reg[11]) );
  DFQD2BWP12T30P140 bcd_reg_reg_0_ ( .D(n113), .CP(n209), .Q(bin_next[15]) );
  DFQD2BWP12T30P140 bin_reg_reg_15_ ( .D(n114), .CP(n209), .Q(bin_next[14]) );
  DFQD2BWP12T30P140 bin_reg_reg_14_ ( .D(n115), .CP(n209), .Q(bin_next[13]) );
  DFQD2BWP12T30P140 bin_reg_reg_13_ ( .D(n116), .CP(n209), .Q(bin_next[12]) );
  DFQD2BWP12T30P140 bin_reg_reg_12_ ( .D(n117), .CP(n209), .Q(bin_next[11]) );
  DFQD2BWP12T30P140 bin_reg_reg_11_ ( .D(n118), .CP(n209), .Q(bin_next[10]) );
  DFQD2BWP12T30P140 bin_reg_reg_10_ ( .D(n119), .CP(n209), .Q(bin_next[9]) );
  DFQD2BWP12T30P140 bin_reg_reg_9_ ( .D(n120), .CP(n209), .Q(bin_next[8]) );
  DFQD2BWP12T30P140 bin_reg_reg_8_ ( .D(n121), .CP(n209), .Q(bin_next[7]) );
  DFQD2BWP12T30P140 bin_reg_reg_7_ ( .D(n122), .CP(n209), .Q(bin_next[6]) );
  DFQD2BWP12T30P140 bin_reg_reg_6_ ( .D(n123), .CP(n209), .Q(bin_next[5]) );
  DFQD2BWP12T30P140 bin_reg_reg_5_ ( .D(n124), .CP(n209), .Q(bin_next[4]) );
  DFQD2BWP12T30P140 bin_reg_reg_4_ ( .D(n125), .CP(n208), .Q(bin_next[3]) );
  DFQD2BWP12T30P140 bin_reg_reg_3_ ( .D(n126), .CP(n208), .Q(bin_next[2]) );
  DFQD2BWP12T30P140 bcd_reg_reg_4_ ( .D(n93), .CP(clk_i), .Q(bcd_reg[4]) );
  DFQD2BWP12T30P140 bcd_reg_reg_10_ ( .D(n87), .CP(n208), .Q(bcd_reg[10]) );
  DFQD2BWP12T30P140 bcd_reg_reg_6_ ( .D(n91), .CP(n209), .Q(bcd_reg[6]) );
  DFQD2BWP12T30P140 bcd_reg_reg_3_ ( .D(n94), .CP(clk_i), .Q(bcd_reg[3]) );
  DFQD2BWP12T30P140 bcd_reg_reg_12_ ( .D(n85), .CP(n208), .Q(bcd_reg[12]) );
  DFQD2BWP12T30P140 bcd_reg_reg_8_ ( .D(n89), .CP(n209), .Q(bcd_reg[8]) );
  DFQD2BWP12T30P140 bcd_reg_reg_9_ ( .D(n88), .CP(clk_i), .Q(bcd_reg[9]) );
  DFQD2BWP12T30P140 bcd_reg_reg_5_ ( .D(n92), .CP(n208), .Q(bcd_reg[5]) );
  DFQD2BWP12T30P140 bcd_reg_reg_1_ ( .D(n96), .CP(n209), .Q(bcd_reg[1]) );
  DFQD2BWP12T30P140 bit_count_reg_0_ ( .D(n131), .CP(clk_i), .Q(bit_count[0])
         );
  DFQD1BWP12T30P140 dat_binary_o_reg_8_ ( .D(n104), .CP(clk_i), .Q(
        dat_binary_o[8]) );
  DFQD1BWP12T30P140 bcd_reg_reg_7_ ( .D(n90), .CP(n209), .Q(bcd_reg[7]) );
  DFQD1BWP12T30P140 bin_reg_reg_2_ ( .D(n127), .CP(n208), .Q(bin_next[1]) );
  DFQD1BWP12T30P140 bcd_reg_reg_2_ ( .D(n95), .CP(clk_i), .Q(bcd_reg[2]) );
  INVD0BWP12T30P140 U135 ( .I(n188), .ZN(n132) );
  INVD0BWP12T30P140 U136 ( .I(busy_bit), .ZN(done_o) );
  INVD0BWP12T30P140 U137 ( .I(bit_count[1]), .ZN(n164) );
  INVD0BWP12T30P140 U138 ( .I(bit_count[2]), .ZN(n161) );
  INVD0BWP12T30P140 U139 ( .I(bit_count[0]), .ZN(n134) );
  INR4D0BWP12T30P140 U140 ( .A1(bit_count[3]), .B1(n164), .B2(n161), .B3(n134), 
        .ZN(n144) );
  ND2D0BWP12T30P140 U141 ( .A1(busy_bit), .A2(ce_i), .ZN(n158) );
  NR2D0BWP12T30P140 U142 ( .A1(n144), .A2(n158), .ZN(n162) );
  INVD0BWP12T30P140 U143 ( .I(rst_i), .ZN(n133) );
  ND2D0BWP12T30P140 U144 ( .A1(n162), .A2(n133), .ZN(n170) );
  INVD0BWP12T30P140 U145 ( .I(n170), .ZN(n204) );
  CKBD0BWP12T30P140 U146 ( .I(n204), .Z(n194) );
  ND3D0BWP12T30P140 U147 ( .A1(done_o), .A2(n133), .A3(start_i), .ZN(n188) );
  INVD0BWP12T30P140 U148 ( .I(n188), .ZN(n201) );
  NR2D0BWP12T30P140 U149 ( .A1(n194), .A2(n201), .ZN(n200) );
  AO22D0BWP12T30P140 U150 ( .A1(n204), .A2(bin_next[6]), .B1(n200), .B2(
        bin_next[5]), .Z(n123) );
  INVD0BWP12T30P140 U151 ( .I(n200), .ZN(n166) );
  INVD0BWP12T30P140 U152 ( .I(n166), .ZN(n190) );
  AO222D0BWP12T30P140 U153 ( .A1(n194), .A2(bcd_next[18]), .B1(n190), .B2(
        bcd_next[17]), .C1(dat_bcd_i[18]), .C2(n132), .Z(n79) );
  OAI32D0BWP12T30P140 U154 ( .A1(n134), .A2(n162), .A3(done_o), .B1(
        bit_count[0]), .B2(n158), .ZN(n131) );
  AO222D0BWP12T30P140 U155 ( .A1(n194), .A2(bcd_next[17]), .B1(n190), .B2(
        bcd_next[16]), .C1(dat_bcd_i[17]), .C2(n201), .Z(n80) );
  ND2D0BWP12T30P140 U156 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .ZN(n193) );
  MAOI22D0BWP12T30P140 U157 ( .A1(bcd_reg[2]), .A2(n193), .B1(n193), .B2(
        bcd_reg[2]), .ZN(n136) );
  AOI22D0BWP12T30P140 U158 ( .A1(n201), .A2(dat_bcd_i[1]), .B1(n190), .B2(
        bcd_reg[1]), .ZN(n135) );
  OAI21D0BWP12T30P140 U159 ( .A1(n170), .A2(n136), .B(n135), .ZN(n96) );
  AO22D0BWP12T30P140 U160 ( .A1(n201), .A2(dat_bcd_i[19]), .B1(n200), .B2(
        bcd_next[18]), .Z(n78) );
  ND3D0BWP12T30P140 U161 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .A3(bcd_reg[14]), .ZN(n203) );
  INVD0BWP12T30P140 U162 ( .I(bcd_reg[16]), .ZN(n139) );
  OAI21D0BWP12T30P140 U163 ( .A1(n170), .A2(n139), .B(n166), .ZN(n137) );
  AOI22D0BWP12T30P140 U164 ( .A1(n201), .A2(dat_bcd_i[15]), .B1(bcd_reg[15]), 
        .B2(n137), .ZN(n138) );
  OAI21D0BWP12T30P140 U165 ( .A1(n170), .A2(n203), .B(n138), .ZN(n82) );
  INVD0BWP12T30P140 U166 ( .I(bcd_reg[15]), .ZN(n141) );
  AOI21D0BWP12T30P140 U167 ( .A1(bcd_reg[13]), .A2(bcd_reg[14]), .B(n139), 
        .ZN(n140) );
  MUX2ND0BWP12T30P140 U168 ( .I0(bcd_reg[15]), .I1(n141), .S(n140), .ZN(n143)
         );
  AOI22D0BWP12T30P140 U169 ( .A1(n201), .A2(dat_bcd_i[14]), .B1(n190), .B2(
        bcd_reg[14]), .ZN(n142) );
  OAI21D0BWP12T30P140 U170 ( .A1(n170), .A2(n143), .B(n142), .ZN(n83) );
  INR4D0BWP12T30P140 U171 ( .A1(n144), .B1(n158), .B2(rst_i), .B3(start_i), 
        .ZN(n171) );
  NR2D0BWP12T30P140 U172 ( .A1(rst_i), .A2(n171), .ZN(n189) );
  AO22D0BWP12T30P140 U173 ( .A1(bin_next[0]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[0]), .Z(n112) );
  AOI21D0BWP12T30P140 U174 ( .A1(bcd_reg[2]), .A2(bcd_reg[1]), .B(bcd_reg[3]), 
        .ZN(n146) );
  INVD0BWP12T30P140 U175 ( .I(bcd_reg[4]), .ZN(n173) );
  AOI22D0BWP12T30P140 U176 ( .A1(n201), .A2(dat_bcd_i[3]), .B1(n190), .B2(
        bcd_reg[3]), .ZN(n145) );
  OAI31D0BWP12T30P140 U177 ( .A1(n146), .A2(n170), .A3(n173), .B(n145), .ZN(
        n94) );
  AO22D0BWP12T30P140 U178 ( .A1(n204), .A2(bin_next[14]), .B1(n200), .B2(
        bin_next[13]), .Z(n115) );
  INVD0BWP12T30P140 U179 ( .I(bcd_reg[7]), .ZN(n148) );
  INVD0BWP12T30P140 U180 ( .I(bcd_reg[8]), .ZN(n167) );
  AOI21D0BWP12T30P140 U181 ( .A1(bcd_reg[5]), .A2(bcd_reg[6]), .B(n167), .ZN(
        n147) );
  MUX2ND0BWP12T30P140 U182 ( .I0(bcd_reg[7]), .I1(n148), .S(n147), .ZN(n150)
         );
  AOI22D0BWP12T30P140 U183 ( .A1(n201), .A2(dat_bcd_i[6]), .B1(n190), .B2(
        bcd_reg[6]), .ZN(n149) );
  OAI21D0BWP12T30P140 U184 ( .A1(n170), .A2(n150), .B(n149), .ZN(n91) );
  AO22D0BWP12T30P140 U185 ( .A1(bin_next[1]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[1]), .Z(n111) );
  INVD0BWP12T30P140 U186 ( .I(bcd_reg[11]), .ZN(n152) );
  INVD0BWP12T30P140 U187 ( .I(bcd_reg[12]), .ZN(n155) );
  AOI21D0BWP12T30P140 U188 ( .A1(bcd_reg[9]), .A2(bcd_reg[10]), .B(n155), .ZN(
        n151) );
  MUX2ND0BWP12T30P140 U189 ( .I0(bcd_reg[11]), .I1(n152), .S(n151), .ZN(n154)
         );
  AOI22D0BWP12T30P140 U190 ( .A1(n201), .A2(dat_bcd_i[10]), .B1(n200), .B2(
        bcd_reg[10]), .ZN(n153) );
  OAI21D0BWP12T30P140 U191 ( .A1(n170), .A2(n154), .B(n153), .ZN(n87) );
  AO22D0BWP12T30P140 U192 ( .A1(bin_next[2]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[2]), .Z(n110) );
  AO22D0BWP12T30P140 U193 ( .A1(n194), .A2(bin_next[2]), .B1(n200), .B2(
        bin_next[1]), .Z(n127) );
  ND3D0BWP12T30P140 U194 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .A3(bcd_reg[10]), 
        .ZN(n181) );
  OAI21D0BWP12T30P140 U195 ( .A1(n170), .A2(n155), .B(n166), .ZN(n156) );
  AOI22D0BWP12T30P140 U196 ( .A1(n201), .A2(dat_bcd_i[11]), .B1(bcd_reg[11]), 
        .B2(n156), .ZN(n157) );
  OAI21D0BWP12T30P140 U197 ( .A1(n170), .A2(n181), .B(n157), .ZN(n86) );
  AO22D0BWP12T30P140 U198 ( .A1(n204), .A2(bin_next[3]), .B1(n190), .B2(
        bin_next[2]), .Z(n126) );
  AO22D0BWP12T30P140 U199 ( .A1(bin_next[3]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[3]), .Z(n109) );
  AO22D0BWP12T30P140 U200 ( .A1(n194), .A2(bin_next[4]), .B1(n200), .B2(
        bin_next[3]), .Z(n125) );
  AO22D0BWP12T30P140 U201 ( .A1(n204), .A2(bin_next[1]), .B1(n190), .B2(
        bin_next[0]), .Z(n128) );
  AO22D0BWP12T30P140 U202 ( .A1(n204), .A2(bin_next[5]), .B1(n190), .B2(
        bin_next[4]), .Z(n124) );
  AO22D0BWP12T30P140 U203 ( .A1(bin_next[4]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[4]), .Z(n108) );
  AO22D0BWP12T30P140 U204 ( .A1(n194), .A2(bin_next[13]), .B1(n190), .B2(
        bin_next[12]), .Z(n116) );
  OAI22D0BWP12T30P140 U205 ( .A1(bit_count[0]), .A2(n158), .B1(n162), .B2(
        done_o), .ZN(n163) );
  IAO21D0BWP12T30P140 U206 ( .A1(n158), .A2(bit_count[1]), .B(n163), .ZN(n159)
         );
  ND3D0BWP12T30P140 U207 ( .A1(bit_count[1]), .A2(bit_count[0]), .A3(n162), 
        .ZN(n160) );
  AOI22D0BWP12T30P140 U208 ( .A1(bit_count[2]), .A2(n159), .B1(n160), .B2(n161), .ZN(n77) );
  AO22D0BWP12T30P140 U209 ( .A1(n204), .A2(bin_next[7]), .B1(n190), .B2(
        bin_next[6]), .Z(n122) );
  AO22D0BWP12T30P140 U210 ( .A1(bin_next[5]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[5]), .Z(n107) );
  AO22D0BWP12T30P140 U211 ( .A1(n194), .A2(bin_next[8]), .B1(n200), .B2(
        bin_next[7]), .Z(n121) );
  AO22D0BWP12T30P140 U212 ( .A1(bin_next[15]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[15]), .Z(n97) );
  AO22D0BWP12T30P140 U213 ( .A1(n204), .A2(bin_next[9]), .B1(n190), .B2(
        bin_next[8]), .Z(n120) );
  AO22D0BWP12T30P140 U214 ( .A1(bin_next[6]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[6]), .Z(n106) );
  AO22D0BWP12T30P140 U215 ( .A1(n194), .A2(bin_next[10]), .B1(n200), .B2(
        bin_next[9]), .Z(n119) );
  AO22D0BWP12T30P140 U216 ( .A1(bin_next[8]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[8]), .Z(n104) );
  AO22D0BWP12T30P140 U217 ( .A1(n204), .A2(bin_next[11]), .B1(n190), .B2(
        bin_next[10]), .Z(n118) );
  AO22D0BWP12T30P140 U218 ( .A1(bin_next[7]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[7]), .Z(n105) );
  AO22D0BWP12T30P140 U219 ( .A1(n194), .A2(bin_next[12]), .B1(n200), .B2(
        bin_next[11]), .Z(n117) );
  AO22D0BWP12T30P140 U220 ( .A1(bin_next[9]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[9]), .Z(n103) );
  AO22D0BWP12T30P140 U221 ( .A1(bin_next[10]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[10]), .Z(n102) );
  MOAI22D0BWP12T30P140 U222 ( .A1(n161), .A2(n160), .B1(bit_count[3]), .B2(
        busy_bit), .ZN(n130) );
  AO22D0BWP12T30P140 U223 ( .A1(bin_next[12]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[12]), .Z(n100) );
  AO22D0BWP12T30P140 U224 ( .A1(n194), .A2(bin_next[15]), .B1(n200), .B2(
        bin_next[14]), .Z(n114) );
  AO22D0BWP12T30P140 U225 ( .A1(bin_next[11]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[11]), .Z(n101) );
  ND2D0BWP12T30P140 U226 ( .A1(bit_count[0]), .A2(n162), .ZN(n165) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n165), .A2(n164), .B1(n164), .B2(n163), .ZN(
        n76) );
  AO222D0BWP12T30P140 U228 ( .A1(n204), .A2(bcd_next[16]), .B1(n190), .B2(
        bcd_reg[16]), .C1(dat_bcd_i[16]), .C2(n201), .Z(n81) );
  ND3D0BWP12T30P140 U229 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .A3(bcd_reg[6]), 
        .ZN(n177) );
  OAI21D0BWP12T30P140 U230 ( .A1(n170), .A2(n167), .B(n166), .ZN(n168) );
  AOI22D0BWP12T30P140 U231 ( .A1(n201), .A2(dat_bcd_i[7]), .B1(bcd_reg[7]), 
        .B2(n168), .ZN(n169) );
  OAI21D0BWP12T30P140 U232 ( .A1(n170), .A2(n177), .B(n169), .ZN(n90) );
  AO22D0BWP12T30P140 U233 ( .A1(bin_next[13]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[13]), .Z(n99) );
  AO22D0BWP12T30P140 U234 ( .A1(bin_next[14]), .A2(n171), .B1(n189), .B2(
        dat_binary_o[14]), .Z(n98) );
  CKBD0BWP12T30P140 U235 ( .I(clk_i), .Z(n209) );
  CKBD0BWP12T30P140 U236 ( .I(clk_i), .Z(n208) );
  AN2D0BWP12T30P140 U237 ( .A1(bcd_reg[1]), .A2(bcd_reg[2]), .Z(n174) );
  OAI21D0BWP12T30P140 U238 ( .A1(n174), .A2(n173), .B(bcd_reg[3]), .ZN(n172)
         );
  OAI31D0BWP12T30P140 U239 ( .A1(n174), .A2(bcd_reg[3]), .A3(n173), .B(n172), 
        .ZN(n175) );
  AOI22D0BWP12T30P140 U240 ( .A1(n204), .A2(n175), .B1(n201), .B2(dat_bcd_i[2]), .ZN(n176) );
  IOA21D0BWP12T30P140 U241 ( .A1(n190), .A2(bcd_reg[2]), .B(n176), .ZN(n95) );
  AOI22D0BWP12T30P140 U242 ( .A1(n201), .A2(dat_bcd_i[5]), .B1(n200), .B2(
        bcd_reg[5]), .ZN(n180) );
  ND2D0BWP12T30P140 U243 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .ZN(n197) );
  INVD0BWP12T30P140 U244 ( .I(n197), .ZN(n178) );
  OAI211D0BWP12T30P140 U245 ( .A1(n178), .A2(bcd_reg[6]), .B(n194), .C(n177), 
        .ZN(n179) );
  ND2D0BWP12T30P140 U246 ( .A1(n180), .A2(n179), .ZN(n92) );
  AOI22D0BWP12T30P140 U247 ( .A1(n201), .A2(dat_bcd_i[9]), .B1(n200), .B2(
        bcd_reg[9]), .ZN(n184) );
  ND2D0BWP12T30P140 U248 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .ZN(n185) );
  INVD0BWP12T30P140 U249 ( .I(n185), .ZN(n182) );
  OAI211D0BWP12T30P140 U250 ( .A1(n182), .A2(bcd_reg[10]), .B(n204), .C(n181), 
        .ZN(n183) );
  ND2D0BWP12T30P140 U251 ( .A1(n184), .A2(n183), .ZN(n88) );
  AOI22D0BWP12T30P140 U252 ( .A1(n201), .A2(dat_bcd_i[8]), .B1(n190), .B2(
        bcd_reg[8]), .ZN(n187) );
  OAI211D0BWP12T30P140 U253 ( .A1(bcd_reg[12]), .A2(bcd_reg[9]), .B(n194), .C(
        n185), .ZN(n186) );
  ND2D0BWP12T30P140 U254 ( .A1(n187), .A2(n186), .ZN(n89) );
  IOA21D0BWP12T30P140 U255 ( .A1(busy_bit), .A2(n189), .B(n188), .ZN(n129) );
  AOI22D0BWP12T30P140 U256 ( .A1(n201), .A2(dat_bcd_i[12]), .B1(n190), .B2(
        bcd_reg[12]), .ZN(n192) );
  ND2D0BWP12T30P140 U257 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .ZN(n202) );
  OAI211D0BWP12T30P140 U258 ( .A1(bcd_reg[16]), .A2(bcd_reg[13]), .B(n194), 
        .C(n202), .ZN(n191) );
  ND2D0BWP12T30P140 U259 ( .A1(n192), .A2(n191), .ZN(n85) );
  AOI22D0BWP12T30P140 U260 ( .A1(n201), .A2(dat_bcd_i[0]), .B1(n200), .B2(
        bin_next[15]), .ZN(n196) );
  OAI211D0BWP12T30P140 U261 ( .A1(bcd_reg[4]), .A2(bcd_reg[1]), .B(n194), .C(
        n193), .ZN(n195) );
  ND2D0BWP12T30P140 U262 ( .A1(n196), .A2(n195), .ZN(n113) );
  AOI22D0BWP12T30P140 U263 ( .A1(n201), .A2(dat_bcd_i[4]), .B1(n200), .B2(
        bcd_reg[4]), .ZN(n199) );
  OAI211D0BWP12T30P140 U264 ( .A1(bcd_reg[8]), .A2(bcd_reg[5]), .B(n204), .C(
        n197), .ZN(n198) );
  ND2D0BWP12T30P140 U265 ( .A1(n199), .A2(n198), .ZN(n93) );
  AOI22D0BWP12T30P140 U266 ( .A1(n201), .A2(dat_bcd_i[13]), .B1(n200), .B2(
        bcd_reg[13]), .ZN(n207) );
  INVD0BWP12T30P140 U267 ( .I(n202), .ZN(n205) );
  OAI211D0BWP12T30P140 U268 ( .A1(n205), .A2(bcd_reg[14]), .B(n204), .C(n203), 
        .ZN(n206) );
  ND2D0BWP12T30P140 U269 ( .A1(n207), .A2(n206), .ZN(n84) );
endmodule

