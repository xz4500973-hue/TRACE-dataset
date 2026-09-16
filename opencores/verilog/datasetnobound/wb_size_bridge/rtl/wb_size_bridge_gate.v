/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:50:34 2026
/////////////////////////////////////////////////////////////


module wb_size_bridge ( wb_hi_clk_i, wb_hi_rst_i, wb_hi_dat_o, wb_hi_dat_i, 
        wb_hi_adr_i, wb_hi_cyc_i, wb_hi_stb_i, wb_hi_we_i, wb_hi_sel_i, 
        wb_hi_ack_o, wb_hi_err_o, wb_hi_rty_o, wb_lo_clk_o, wb_lo_rst_o, 
        wb_lo_dat_i, wb_lo_dat_o, wb_lo_adr_o, wb_lo_cyc_o, wb_lo_stb_o, 
        wb_lo_we_o, wb_lo_sel_o, wb_lo_ack_i, wb_lo_err_i, wb_lo_rty_i, 
        lo_byte_if_i );
  output [31:0] wb_hi_dat_o;
  input [31:0] wb_hi_dat_i;
  input [31:0] wb_hi_adr_i;
  input [3:0] wb_hi_sel_i;
  input [15:0] wb_lo_dat_i;
  output [15:0] wb_lo_dat_o;
  output [31:0] wb_lo_adr_o;
  output [1:0] wb_lo_sel_o;
  input wb_hi_clk_i, wb_hi_rst_i, wb_hi_cyc_i, wb_hi_stb_i, wb_hi_we_i,
         wb_lo_ack_i, wb_lo_err_i, wb_lo_rty_i, lo_byte_if_i;
  output wb_hi_ack_o, wb_hi_err_o, wb_hi_rty_o, wb_lo_clk_o, wb_lo_rst_o,
         wb_lo_cyc_o, wb_lo_stb_o, wb_lo_we_o;
  wire   n112, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252;
  wire   [3:0] state;
  wire   [3:0] next_state;
  wire   [31:0] read_buffer;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(next_state[0]), .CP(wb_lo_clk_o), 
        .SDN(n112), .Q(state[0]) );
  DFQD2BWP12T30P140 read_buffer_reg_15_ ( .D(wb_hi_dat_o[15]), .CP(wb_hi_clk_i), .Q(read_buffer[15]) );
  DFQD2BWP12T30P140 read_buffer_reg_14_ ( .D(wb_hi_dat_o[14]), .CP(wb_hi_clk_i), .Q(read_buffer[14]) );
  DFQD2BWP12T30P140 read_buffer_reg_13_ ( .D(wb_hi_dat_o[13]), .CP(wb_hi_clk_i), .Q(read_buffer[13]) );
  DFQD2BWP12T30P140 read_buffer_reg_12_ ( .D(wb_hi_dat_o[12]), .CP(wb_hi_clk_i), .Q(read_buffer[12]) );
  DFQD2BWP12T30P140 read_buffer_reg_7_ ( .D(wb_hi_dat_o[7]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[7]) );
  DFQD2BWP12T30P140 read_buffer_reg_6_ ( .D(wb_hi_dat_o[6]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[6]) );
  DFQD2BWP12T30P140 read_buffer_reg_5_ ( .D(wb_hi_dat_o[5]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[5]) );
  DFQD2BWP12T30P140 read_buffer_reg_4_ ( .D(wb_hi_dat_o[4]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[4]) );
  DFQD2BWP12T30P140 read_buffer_reg_3_ ( .D(wb_hi_dat_o[3]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[3]) );
  DFQD2BWP12T30P140 read_buffer_reg_2_ ( .D(wb_hi_dat_o[2]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[2]) );
  DFQD2BWP12T30P140 read_buffer_reg_0_ ( .D(wb_hi_dat_o[0]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[0]) );
  DFQD2BWP12T30P140 read_buffer_reg_16_ ( .D(wb_hi_dat_o[16]), .CP(wb_hi_clk_i), .Q(read_buffer[16]) );
  DFQD2BWP12T30P140 read_buffer_reg_31_ ( .D(wb_hi_dat_o[31]), .CP(wb_lo_clk_o), .Q(read_buffer[31]) );
  DFQD2BWP12T30P140 read_buffer_reg_29_ ( .D(wb_hi_dat_o[29]), .CP(wb_lo_clk_o), .Q(read_buffer[29]) );
  DFQD2BWP12T30P140 read_buffer_reg_28_ ( .D(wb_hi_dat_o[28]), .CP(wb_lo_clk_o), .Q(read_buffer[28]) );
  DFQD2BWP12T30P140 read_buffer_reg_27_ ( .D(wb_hi_dat_o[27]), .CP(wb_lo_clk_o), .Q(read_buffer[27]) );
  DFQD2BWP12T30P140 read_buffer_reg_26_ ( .D(wb_hi_dat_o[26]), .CP(wb_lo_clk_o), .Q(read_buffer[26]) );
  DFQD2BWP12T30P140 read_buffer_reg_25_ ( .D(wb_hi_dat_o[25]), .CP(wb_lo_clk_o), .Q(read_buffer[25]) );
  DFQD2BWP12T30P140 read_buffer_reg_24_ ( .D(wb_hi_dat_o[24]), .CP(wb_lo_clk_o), .Q(read_buffer[24]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(next_state[3]), .CP(wb_lo_clk_o), 
        .CDN(n112), .Q(state[3]) );
  DFQD2BWP12T30P140 read_buffer_reg_11_ ( .D(wb_hi_dat_o[11]), .CP(wb_lo_clk_o), .Q(read_buffer[11]) );
  DFQD2BWP12T30P140 read_buffer_reg_10_ ( .D(wb_hi_dat_o[10]), .CP(wb_hi_clk_i), .Q(read_buffer[10]) );
  DFQD2BWP12T30P140 read_buffer_reg_9_ ( .D(wb_hi_dat_o[9]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[9]) );
  DFQD2BWP12T30P140 read_buffer_reg_8_ ( .D(wb_hi_dat_o[8]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[8]) );
  DFQD2BWP12T30P140 read_buffer_reg_1_ ( .D(wb_hi_dat_o[1]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[1]) );
  DFQD2BWP12T30P140 read_buffer_reg_23_ ( .D(wb_hi_dat_o[23]), .CP(wb_hi_clk_i), .Q(read_buffer[23]) );
  DFQD2BWP12T30P140 read_buffer_reg_22_ ( .D(wb_hi_dat_o[22]), .CP(wb_lo_clk_o), .Q(read_buffer[22]) );
  DFQD2BWP12T30P140 read_buffer_reg_20_ ( .D(wb_hi_dat_o[20]), .CP(wb_lo_clk_o), .Q(read_buffer[20]) );
  DFQD2BWP12T30P140 read_buffer_reg_19_ ( .D(wb_hi_dat_o[19]), .CP(wb_hi_clk_i), .Q(read_buffer[19]) );
  DFQD2BWP12T30P140 read_buffer_reg_18_ ( .D(wb_hi_dat_o[18]), .CP(wb_lo_clk_o), .Q(read_buffer[18]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(next_state[2]), .CP(wb_lo_clk_o), 
        .CDN(n112), .Q(state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next_state[1]), .CP(wb_lo_clk_o), 
        .CDN(n112), .Q(state[1]) );
  DFQD1BWP12T30P140 read_buffer_reg_30_ ( .D(wb_hi_dat_o[30]), .CP(wb_lo_clk_o), .Q(read_buffer[30]) );
  DFQD1BWP12T30P140 read_buffer_reg_21_ ( .D(wb_hi_dat_o[21]), .CP(wb_hi_clk_i), .Q(read_buffer[21]) );
  DFQD1BWP12T30P140 read_buffer_reg_17_ ( .D(wb_hi_dat_o[17]), .CP(wb_lo_clk_o), .Q(read_buffer[17]) );
  CKBD0BWP12T30P140 U174 ( .I(wb_hi_stb_i), .Z(wb_lo_stb_o) );
  CKBD0BWP12T30P140 U175 ( .I(wb_hi_cyc_i), .Z(wb_lo_cyc_o) );
  CKBD0BWP12T30P140 U176 ( .I(wb_hi_adr_i[2]), .Z(wb_lo_adr_o[2]) );
  CKBD0BWP12T30P140 U177 ( .I(wb_hi_adr_i[3]), .Z(wb_lo_adr_o[3]) );
  CKBD0BWP12T30P140 U178 ( .I(wb_hi_adr_i[4]), .Z(wb_lo_adr_o[4]) );
  CKBD0BWP12T30P140 U179 ( .I(wb_hi_adr_i[5]), .Z(wb_lo_adr_o[5]) );
  CKBD0BWP12T30P140 U180 ( .I(wb_hi_adr_i[6]), .Z(wb_lo_adr_o[6]) );
  CKBD0BWP12T30P140 U181 ( .I(wb_hi_adr_i[7]), .Z(wb_lo_adr_o[7]) );
  CKBD0BWP12T30P140 U182 ( .I(wb_hi_adr_i[8]), .Z(wb_lo_adr_o[8]) );
  CKBD0BWP12T30P140 U183 ( .I(wb_hi_adr_i[9]), .Z(wb_lo_adr_o[9]) );
  CKBD0BWP12T30P140 U184 ( .I(wb_hi_adr_i[10]), .Z(wb_lo_adr_o[10]) );
  CKBD0BWP12T30P140 U185 ( .I(wb_hi_adr_i[11]), .Z(wb_lo_adr_o[11]) );
  CKBD0BWP12T30P140 U186 ( .I(wb_hi_adr_i[12]), .Z(wb_lo_adr_o[12]) );
  CKBD0BWP12T30P140 U187 ( .I(wb_hi_adr_i[13]), .Z(wb_lo_adr_o[13]) );
  CKBD0BWP12T30P140 U188 ( .I(wb_hi_adr_i[14]), .Z(wb_lo_adr_o[14]) );
  CKBD0BWP12T30P140 U189 ( .I(wb_hi_adr_i[15]), .Z(wb_lo_adr_o[15]) );
  CKBD0BWP12T30P140 U190 ( .I(wb_hi_adr_i[16]), .Z(wb_lo_adr_o[16]) );
  CKBD0BWP12T30P140 U191 ( .I(wb_hi_adr_i[17]), .Z(wb_lo_adr_o[17]) );
  CKBD0BWP12T30P140 U192 ( .I(wb_hi_adr_i[18]), .Z(wb_lo_adr_o[18]) );
  CKBD0BWP12T30P140 U193 ( .I(wb_hi_adr_i[19]), .Z(wb_lo_adr_o[19]) );
  CKBD0BWP12T30P140 U194 ( .I(wb_hi_adr_i[20]), .Z(wb_lo_adr_o[20]) );
  CKBD0BWP12T30P140 U195 ( .I(wb_hi_adr_i[21]), .Z(wb_lo_adr_o[21]) );
  CKBD0BWP12T30P140 U196 ( .I(wb_hi_adr_i[22]), .Z(wb_lo_adr_o[22]) );
  CKBD0BWP12T30P140 U197 ( .I(wb_hi_adr_i[23]), .Z(wb_lo_adr_o[23]) );
  CKBD0BWP12T30P140 U198 ( .I(wb_hi_adr_i[24]), .Z(wb_lo_adr_o[24]) );
  CKBD0BWP12T30P140 U199 ( .I(wb_hi_adr_i[25]), .Z(wb_lo_adr_o[25]) );
  CKBD0BWP12T30P140 U200 ( .I(wb_hi_adr_i[26]), .Z(wb_lo_adr_o[26]) );
  CKBD0BWP12T30P140 U201 ( .I(wb_hi_adr_i[27]), .Z(wb_lo_adr_o[27]) );
  CKBD0BWP12T30P140 U202 ( .I(wb_hi_adr_i[28]), .Z(wb_lo_adr_o[28]) );
  CKBD0BWP12T30P140 U203 ( .I(wb_hi_adr_i[29]), .Z(wb_lo_adr_o[29]) );
  CKBD0BWP12T30P140 U204 ( .I(wb_hi_adr_i[30]), .Z(wb_lo_adr_o[30]) );
  CKBD0BWP12T30P140 U205 ( .I(wb_hi_adr_i[31]), .Z(wb_lo_adr_o[31]) );
  CKBD0BWP12T30P140 U206 ( .I(wb_hi_rst_i), .Z(wb_lo_rst_o) );
  CKBD0BWP12T30P140 U207 ( .I(wb_lo_rty_i), .Z(wb_hi_rty_o) );
  INR4D0BWP12T30P140 U208 ( .A1(state[0]), .B1(state[3]), .B2(state[2]), .B3(
        state[1]), .ZN(n174) );
  INVD0BWP12T30P140 U209 ( .I(n174), .ZN(n166) );
  ND2D0BWP12T30P140 U210 ( .A1(wb_hi_stb_i), .A2(wb_hi_cyc_i), .ZN(n251) );
  INVD0BWP12T30P140 U211 ( .I(wb_lo_ack_i), .ZN(n153) );
  NR2D0BWP12T30P140 U212 ( .A1(n251), .A2(n153), .ZN(n177) );
  INVD0BWP12T30P140 U213 ( .I(lo_byte_if_i), .ZN(n227) );
  ND4D0BWP12T30P140 U214 ( .A1(wb_hi_sel_i[2]), .A2(wb_hi_sel_i[3]), .A3(
        wb_hi_sel_i[0]), .A4(wb_hi_sel_i[1]), .ZN(n185) );
  NR2D0BWP12T30P140 U215 ( .A1(n227), .A2(n185), .ZN(n175) );
  INVD0BWP12T30P140 U216 ( .I(wb_hi_sel_i[3]), .ZN(n224) );
  INVD0BWP12T30P140 U217 ( .I(wb_hi_sel_i[2]), .ZN(n220) );
  NR2D0BWP12T30P140 U218 ( .A1(wb_hi_sel_i[2]), .A2(wb_hi_sel_i[3]), .ZN(n171)
         );
  CKND2D1BWP12T30P140 U219 ( .A1(lo_byte_if_i), .A2(n171), .ZN(n162) );
  OAI31D0BWP12T30P140 U220 ( .A1(lo_byte_if_i), .A2(n224), .A3(n220), .B(n162), 
        .ZN(n148) );
  INVD0BWP12T30P140 U221 ( .I(wb_hi_sel_i[0]), .ZN(n221) );
  INVD0BWP12T30P140 U222 ( .I(wb_hi_sel_i[1]), .ZN(n218) );
  CKND2D1BWP12T30P140 U223 ( .A1(n221), .A2(n218), .ZN(n170) );
  NR4D0BWP12T30P140 U224 ( .A1(n220), .A2(n224), .A3(n227), .A4(n170), .ZN(
        n159) );
  AOI31D0BWP12T30P140 U225 ( .A1(wb_hi_sel_i[1]), .A2(wb_hi_sel_i[0]), .A3(
        n148), .B(n159), .ZN(n173) );
  IND2D1BWP12T30P140 U226 ( .A1(n173), .B1(n177), .ZN(n156) );
  IOA21D0BWP12T30P140 U227 ( .A1(n177), .A2(n175), .B(n156), .ZN(n176) );
  INVD0BWP12T30P140 U228 ( .I(state[3]), .ZN(n150) );
  NR2D0BWP12T30P140 U229 ( .A1(state[0]), .A2(state[2]), .ZN(n149) );
  ND3D0BWP12T30P140 U230 ( .A1(n150), .A2(n149), .A3(state[1]), .ZN(n186) );
  INVD0BWP12T30P140 U231 ( .I(n186), .ZN(n154) );
  NR4D0BWP12T30P140 U232 ( .A1(state[0]), .A2(state[2]), .A3(state[1]), .A4(
        n150), .ZN(n163) );
  INR4D0BWP12T30P140 U233 ( .A1(state[2]), .B1(state[0]), .B2(state[3]), .B3(
        state[1]), .ZN(n168) );
  NR3D0BWP12T30P140 U234 ( .A1(n174), .A2(n163), .A3(n168), .ZN(n151) );
  AOI22D0BWP12T30P140 U235 ( .A1(n154), .A2(wb_lo_ack_i), .B1(n151), .B2(n186), 
        .ZN(n152) );
  OAI21D0BWP12T30P140 U236 ( .A1(n166), .A2(n176), .B(n152), .ZN(next_state[0]) );
  AOI22D0BWP12T30P140 U237 ( .A1(wb_lo_ack_i), .A2(n168), .B1(n154), .B2(n153), 
        .ZN(n155) );
  OAI21D0BWP12T30P140 U238 ( .A1(n166), .A2(n156), .B(n155), .ZN(next_state[1]) );
  INVD0BWP12T30P140 U239 ( .I(n163), .ZN(n158) );
  MAOI22D0BWP12T30P140 U240 ( .A1(wb_lo_ack_i), .A2(n158), .B1(n168), .B2(
        wb_lo_ack_i), .ZN(next_state[2]) );
  ND2D0BWP12T30P140 U241 ( .A1(n175), .A2(n177), .ZN(n157) );
  OAI22D0BWP12T30P140 U242 ( .A1(wb_lo_ack_i), .A2(n158), .B1(n166), .B2(n157), 
        .ZN(next_state[3]) );
  INVD0BWP12T30P140 U243 ( .I(wb_hi_rst_i), .ZN(n112) );
  INVD0BWP12T30P140 U244 ( .I(wb_hi_we_i), .ZN(n181) );
  NR2D0BWP12T30P140 U245 ( .A1(n251), .A2(n181), .ZN(wb_lo_we_o) );
  NR3D0BWP12T30P140 U246 ( .A1(n224), .A2(n227), .A3(n170), .ZN(n161) );
  IAO21D1BWP12T30P140 U247 ( .A1(n175), .A2(n159), .B(n186), .ZN(n160) );
  AOI31D0BWP12T30P140 U248 ( .A1(n174), .A2(n161), .A3(n220), .B(n160), .ZN(
        n228) );
  AOI221D0BWP12T30P140 U249 ( .A1(wb_hi_sel_i[0]), .A2(n186), .B1(n221), .B2(
        n166), .C(n162), .ZN(n164) );
  AOI22D0BWP12T30P140 U250 ( .A1(wb_hi_sel_i[1]), .A2(n164), .B1(n175), .B2(
        n163), .ZN(n230) );
  CKND2D1BWP12T30P140 U251 ( .A1(n228), .A2(n230), .ZN(wb_lo_adr_o[0]) );
  AOI21D0BWP12T30P140 U252 ( .A1(wb_hi_sel_i[0]), .A2(n171), .B(n175), .ZN(
        n165) );
  NR2D0BWP12T30P140 U253 ( .A1(lo_byte_if_i), .A2(n166), .ZN(n222) );
  IOA21D1BWP12T30P140 U254 ( .A1(n171), .A2(n170), .B(n185), .ZN(n172) );
  CKND2D1BWP12T30P140 U255 ( .A1(n222), .A2(n172), .ZN(n225) );
  OAI21D0BWP12T30P140 U256 ( .A1(n165), .A2(n166), .B(n225), .ZN(n180) );
  NR3D0BWP12T30P140 U257 ( .A1(n220), .A2(n166), .A3(n170), .ZN(n167) );
  AOI21D0BWP12T30P140 U258 ( .A1(n175), .A2(n168), .B(n167), .ZN(n198) );
  ND2D0BWP12T30P140 U259 ( .A1(n228), .A2(n198), .ZN(n226) );
  INVD0BWP12T30P140 U260 ( .I(n226), .ZN(n169) );
  OAI21D0BWP12T30P140 U261 ( .A1(wb_lo_adr_o[0]), .A2(n180), .B(n169), .ZN(
        wb_lo_adr_o[1]) );
  CKMUX2D0BWP12T30P140 U262 ( .I0(wb_hi_dat_i[8]), .I1(wb_hi_dat_i[24]), .S(
        n225), .Z(wb_lo_dat_o[8]) );
  CKMUX2D0BWP12T30P140 U263 ( .I0(wb_hi_dat_i[9]), .I1(wb_hi_dat_i[25]), .S(
        n225), .Z(wb_lo_dat_o[9]) );
  CKMUX2D0BWP12T30P140 U264 ( .I0(wb_hi_dat_i[10]), .I1(wb_hi_dat_i[26]), .S(
        n225), .Z(wb_lo_dat_o[10]) );
  CKMUX2D0BWP12T30P140 U265 ( .I0(wb_hi_dat_i[11]), .I1(wb_hi_dat_i[27]), .S(
        n225), .Z(wb_lo_dat_o[11]) );
  CKMUX2D0BWP12T30P140 U266 ( .I0(wb_hi_dat_i[12]), .I1(wb_hi_dat_i[28]), .S(
        n225), .Z(wb_lo_dat_o[12]) );
  CKMUX2D0BWP12T30P140 U267 ( .I0(wb_hi_dat_i[13]), .I1(wb_hi_dat_i[29]), .S(
        n225), .Z(wb_lo_dat_o[13]) );
  CKMUX2D0BWP12T30P140 U268 ( .I0(wb_hi_dat_i[14]), .I1(wb_hi_dat_i[30]), .S(
        n225), .Z(wb_lo_dat_o[14]) );
  CKMUX2D0BWP12T30P140 U269 ( .I0(wb_hi_dat_i[15]), .I1(wb_hi_dat_i[31]), .S(
        n225), .Z(wb_lo_dat_o[15]) );
  BUFFD1BWP12T30P140 U270 ( .I(wb_hi_clk_i), .Z(wb_lo_clk_o) );
  NR2D0BWP12T30P140 U271 ( .A1(n171), .A2(n170), .ZN(n183) );
  NR2D0BWP12T30P140 U272 ( .A1(n183), .A2(n172), .ZN(n252) );
  IND4D1BWP12T30P140 U273 ( .A1(n175), .B1(n174), .B2(n173), .B3(n177), .ZN(
        n179) );
  AOI21D0BWP12T30P140 U274 ( .A1(n252), .A2(n177), .B(n176), .ZN(n178) );
  OAI22D0BWP12T30P140 U275 ( .A1(n252), .A2(n179), .B1(n178), .B2(n186), .ZN(
        wb_hi_ack_o) );
  CKND2D1BWP12T30P140 U276 ( .A1(n181), .A2(n180), .ZN(n182) );
  CKMUX2D0BWP12T30P140 U277 ( .I0(wb_lo_dat_i[0]), .I1(read_buffer[0]), .S(
        n182), .Z(wb_hi_dat_o[0]) );
  CKMUX2D0BWP12T30P140 U278 ( .I0(wb_lo_dat_i[1]), .I1(read_buffer[1]), .S(
        n182), .Z(wb_hi_dat_o[1]) );
  CKMUX2D0BWP12T30P140 U279 ( .I0(wb_lo_dat_i[2]), .I1(read_buffer[2]), .S(
        n182), .Z(wb_hi_dat_o[2]) );
  CKMUX2D0BWP12T30P140 U280 ( .I0(wb_lo_dat_i[3]), .I1(read_buffer[3]), .S(
        n182), .Z(wb_hi_dat_o[3]) );
  CKMUX2D0BWP12T30P140 U281 ( .I0(wb_lo_dat_i[4]), .I1(read_buffer[4]), .S(
        n182), .Z(wb_hi_dat_o[4]) );
  CKMUX2D0BWP12T30P140 U282 ( .I0(wb_lo_dat_i[5]), .I1(read_buffer[5]), .S(
        n182), .Z(wb_hi_dat_o[5]) );
  CKMUX2D0BWP12T30P140 U283 ( .I0(wb_lo_dat_i[6]), .I1(read_buffer[6]), .S(
        n182), .Z(wb_hi_dat_o[6]) );
  CKMUX2D0BWP12T30P140 U284 ( .I0(wb_lo_dat_i[7]), .I1(read_buffer[7]), .S(
        n182), .Z(wb_hi_dat_o[7]) );
  AO21D0BWP12T30P140 U285 ( .A1(n230), .A2(n225), .B(wb_hi_we_i), .Z(n197) );
  CKND2D1BWP12T30P140 U286 ( .A1(n222), .A2(n183), .ZN(n184) );
  OA31D0BWP12T30P140 U287 ( .A1(lo_byte_if_i), .A2(n186), .A3(n185), .B(n184), 
        .Z(n200) );
  CKND2D1BWP12T30P140 U288 ( .A1(n225), .A2(n200), .ZN(n194) );
  INVD0BWP12T30P140 U289 ( .I(n194), .ZN(n195) );
  AOI22D0BWP12T30P140 U290 ( .A1(n195), .A2(wb_lo_dat_i[0]), .B1(
        wb_lo_dat_i[8]), .B2(n194), .ZN(n202) );
  CKND2D1BWP12T30P140 U291 ( .A1(n197), .A2(read_buffer[8]), .ZN(n187) );
  OAI21D0BWP12T30P140 U292 ( .A1(n197), .A2(n202), .B(n187), .ZN(
        wb_hi_dat_o[8]) );
  AOI22D0BWP12T30P140 U293 ( .A1(n195), .A2(wb_lo_dat_i[1]), .B1(
        wb_lo_dat_i[9]), .B2(n194), .ZN(n204) );
  CKND2D1BWP12T30P140 U294 ( .A1(n197), .A2(read_buffer[9]), .ZN(n188) );
  OAI21D0BWP12T30P140 U295 ( .A1(n197), .A2(n204), .B(n188), .ZN(
        wb_hi_dat_o[9]) );
  AOI22D0BWP12T30P140 U296 ( .A1(n195), .A2(wb_lo_dat_i[2]), .B1(
        wb_lo_dat_i[10]), .B2(n194), .ZN(n206) );
  CKND2D1BWP12T30P140 U297 ( .A1(n197), .A2(read_buffer[10]), .ZN(n189) );
  OAI21D0BWP12T30P140 U298 ( .A1(n197), .A2(n206), .B(n189), .ZN(
        wb_hi_dat_o[10]) );
  AOI22D0BWP12T30P140 U299 ( .A1(n195), .A2(wb_lo_dat_i[3]), .B1(
        wb_lo_dat_i[11]), .B2(n194), .ZN(n208) );
  CKND2D1BWP12T30P140 U300 ( .A1(n197), .A2(read_buffer[11]), .ZN(n190) );
  OAI21D0BWP12T30P140 U301 ( .A1(n197), .A2(n208), .B(n190), .ZN(
        wb_hi_dat_o[11]) );
  AOI22D0BWP12T30P140 U302 ( .A1(n195), .A2(wb_lo_dat_i[4]), .B1(
        wb_lo_dat_i[12]), .B2(n194), .ZN(n210) );
  CKND2D1BWP12T30P140 U303 ( .A1(n197), .A2(read_buffer[12]), .ZN(n191) );
  OAI21D0BWP12T30P140 U304 ( .A1(n197), .A2(n210), .B(n191), .ZN(
        wb_hi_dat_o[12]) );
  AOI22D0BWP12T30P140 U305 ( .A1(n195), .A2(wb_lo_dat_i[5]), .B1(
        wb_lo_dat_i[13]), .B2(n194), .ZN(n212) );
  CKND2D1BWP12T30P140 U306 ( .A1(n197), .A2(read_buffer[13]), .ZN(n192) );
  OAI21D0BWP12T30P140 U307 ( .A1(n197), .A2(n212), .B(n192), .ZN(
        wb_hi_dat_o[13]) );
  AOI22D0BWP12T30P140 U308 ( .A1(n195), .A2(wb_lo_dat_i[6]), .B1(
        wb_lo_dat_i[14]), .B2(n194), .ZN(n214) );
  CKND2D1BWP12T30P140 U309 ( .A1(n197), .A2(read_buffer[14]), .ZN(n193) );
  OAI21D0BWP12T30P140 U310 ( .A1(n197), .A2(n214), .B(n193), .ZN(
        wb_hi_dat_o[14]) );
  AOI22D0BWP12T30P140 U311 ( .A1(n195), .A2(wb_lo_dat_i[7]), .B1(
        wb_lo_dat_i[15]), .B2(n194), .ZN(n216) );
  CKND2D1BWP12T30P140 U312 ( .A1(n197), .A2(read_buffer[15]), .ZN(n196) );
  OAI21D0BWP12T30P140 U313 ( .A1(n197), .A2(n216), .B(n196), .ZN(
        wb_hi_dat_o[15]) );
  AOI21D0BWP12T30P140 U314 ( .A1(n198), .A2(n200), .B(wb_hi_we_i), .ZN(n199)
         );
  CKMUX2D0BWP12T30P140 U315 ( .I0(read_buffer[16]), .I1(wb_lo_dat_i[0]), .S(
        n199), .Z(wb_hi_dat_o[16]) );
  CKMUX2D0BWP12T30P140 U316 ( .I0(read_buffer[17]), .I1(wb_lo_dat_i[1]), .S(
        n199), .Z(wb_hi_dat_o[17]) );
  CKMUX2D0BWP12T30P140 U317 ( .I0(read_buffer[18]), .I1(wb_lo_dat_i[2]), .S(
        n199), .Z(wb_hi_dat_o[18]) );
  CKMUX2D0BWP12T30P140 U318 ( .I0(read_buffer[19]), .I1(wb_lo_dat_i[3]), .S(
        n199), .Z(wb_hi_dat_o[19]) );
  CKMUX2D0BWP12T30P140 U319 ( .I0(read_buffer[20]), .I1(wb_lo_dat_i[4]), .S(
        n199), .Z(wb_hi_dat_o[20]) );
  CKMUX2D0BWP12T30P140 U320 ( .I0(read_buffer[21]), .I1(wb_lo_dat_i[5]), .S(
        n199), .Z(wb_hi_dat_o[21]) );
  CKMUX2D0BWP12T30P140 U321 ( .I0(read_buffer[22]), .I1(wb_lo_dat_i[6]), .S(
        n199), .Z(wb_hi_dat_o[22]) );
  CKMUX2D0BWP12T30P140 U322 ( .I0(read_buffer[23]), .I1(wb_lo_dat_i[7]), .S(
        n199), .Z(wb_hi_dat_o[23]) );
  AO21D0BWP12T30P140 U323 ( .A1(n228), .A2(n200), .B(wb_hi_we_i), .Z(n217) );
  CKND2D1BWP12T30P140 U324 ( .A1(n217), .A2(read_buffer[24]), .ZN(n201) );
  OAI21D0BWP12T30P140 U325 ( .A1(n217), .A2(n202), .B(n201), .ZN(
        wb_hi_dat_o[24]) );
  CKND2D1BWP12T30P140 U326 ( .A1(n217), .A2(read_buffer[25]), .ZN(n203) );
  OAI21D0BWP12T30P140 U327 ( .A1(n217), .A2(n204), .B(n203), .ZN(
        wb_hi_dat_o[25]) );
  CKND2D1BWP12T30P140 U328 ( .A1(n217), .A2(read_buffer[26]), .ZN(n205) );
  OAI21D0BWP12T30P140 U329 ( .A1(n217), .A2(n206), .B(n205), .ZN(
        wb_hi_dat_o[26]) );
  CKND2D1BWP12T30P140 U330 ( .A1(n217), .A2(read_buffer[27]), .ZN(n207) );
  OAI21D0BWP12T30P140 U331 ( .A1(n217), .A2(n208), .B(n207), .ZN(
        wb_hi_dat_o[27]) );
  CKND2D1BWP12T30P140 U332 ( .A1(n217), .A2(read_buffer[28]), .ZN(n209) );
  OAI21D0BWP12T30P140 U333 ( .A1(n217), .A2(n210), .B(n209), .ZN(
        wb_hi_dat_o[28]) );
  CKND2D1BWP12T30P140 U334 ( .A1(n217), .A2(read_buffer[29]), .ZN(n211) );
  OAI21D0BWP12T30P140 U335 ( .A1(n217), .A2(n212), .B(n211), .ZN(
        wb_hi_dat_o[29]) );
  CKND2D1BWP12T30P140 U336 ( .A1(n217), .A2(read_buffer[30]), .ZN(n213) );
  OAI21D0BWP12T30P140 U337 ( .A1(n217), .A2(n214), .B(n213), .ZN(
        wb_hi_dat_o[30]) );
  CKND2D1BWP12T30P140 U338 ( .A1(n217), .A2(read_buffer[31]), .ZN(n215) );
  OAI21D0BWP12T30P140 U339 ( .A1(n217), .A2(n216), .B(n215), .ZN(
        wb_hi_dat_o[31]) );
  AOI221D0BWP12T30P140 U340 ( .A1(wb_hi_sel_i[3]), .A2(wb_hi_sel_i[1]), .B1(
        n224), .B2(n218), .C(wb_hi_sel_i[0]), .ZN(n219) );
  ND3D0BWP12T30P140 U341 ( .A1(n220), .A2(n219), .A3(n222), .ZN(wb_lo_sel_o[0]) );
  AOI221D0BWP12T30P140 U342 ( .A1(wb_hi_sel_i[0]), .A2(wb_hi_sel_i[2]), .B1(
        n221), .B2(n220), .C(wb_hi_sel_i[1]), .ZN(n223) );
  ND3D0BWP12T30P140 U343 ( .A1(n224), .A2(n223), .A3(n222), .ZN(wb_lo_sel_o[1]) );
  OAI21D0BWP12T30P140 U344 ( .A1(n227), .A2(n226), .B(n225), .ZN(n229) );
  NR2D0BWP12T30P140 U345 ( .A1(wb_lo_adr_o[0]), .A2(n229), .ZN(n246) );
  INVD0BWP12T30P140 U346 ( .I(n228), .ZN(n245) );
  AOI22D0BWP12T30P140 U347 ( .A1(n246), .A2(wb_hi_dat_i[16]), .B1(
        wb_hi_dat_i[24]), .B2(n245), .ZN(n232) );
  INR2D1BWP12T30P140 U348 ( .A1(n229), .B1(wb_lo_adr_o[0]), .ZN(n248) );
  INVD0BWP12T30P140 U349 ( .I(n230), .ZN(n247) );
  AOI22D0BWP12T30P140 U350 ( .A1(n248), .A2(wb_hi_dat_i[0]), .B1(
        wb_hi_dat_i[8]), .B2(n247), .ZN(n231) );
  ND2D0BWP12T30P140 U351 ( .A1(n232), .A2(n231), .ZN(wb_lo_dat_o[0]) );
  AOI22D0BWP12T30P140 U352 ( .A1(n246), .A2(wb_hi_dat_i[17]), .B1(n245), .B2(
        wb_hi_dat_i[25]), .ZN(n234) );
  AOI22D0BWP12T30P140 U353 ( .A1(n248), .A2(wb_hi_dat_i[1]), .B1(n247), .B2(
        wb_hi_dat_i[9]), .ZN(n233) );
  ND2D0BWP12T30P140 U354 ( .A1(n234), .A2(n233), .ZN(wb_lo_dat_o[1]) );
  AOI22D0BWP12T30P140 U355 ( .A1(n246), .A2(wb_hi_dat_i[18]), .B1(n245), .B2(
        wb_hi_dat_i[26]), .ZN(n236) );
  AOI22D0BWP12T30P140 U356 ( .A1(n248), .A2(wb_hi_dat_i[2]), .B1(n247), .B2(
        wb_hi_dat_i[10]), .ZN(n235) );
  ND2D0BWP12T30P140 U357 ( .A1(n236), .A2(n235), .ZN(wb_lo_dat_o[2]) );
  AOI22D0BWP12T30P140 U358 ( .A1(n246), .A2(wb_hi_dat_i[19]), .B1(n245), .B2(
        wb_hi_dat_i[27]), .ZN(n238) );
  AOI22D0BWP12T30P140 U359 ( .A1(n248), .A2(wb_hi_dat_i[3]), .B1(n247), .B2(
        wb_hi_dat_i[11]), .ZN(n237) );
  ND2D0BWP12T30P140 U360 ( .A1(n238), .A2(n237), .ZN(wb_lo_dat_o[3]) );
  AOI22D0BWP12T30P140 U361 ( .A1(n246), .A2(wb_hi_dat_i[20]), .B1(n245), .B2(
        wb_hi_dat_i[28]), .ZN(n240) );
  AOI22D0BWP12T30P140 U362 ( .A1(n248), .A2(wb_hi_dat_i[4]), .B1(n247), .B2(
        wb_hi_dat_i[12]), .ZN(n239) );
  ND2D0BWP12T30P140 U363 ( .A1(n240), .A2(n239), .ZN(wb_lo_dat_o[4]) );
  AOI22D0BWP12T30P140 U364 ( .A1(n246), .A2(wb_hi_dat_i[21]), .B1(n245), .B2(
        wb_hi_dat_i[29]), .ZN(n242) );
  AOI22D0BWP12T30P140 U365 ( .A1(n248), .A2(wb_hi_dat_i[5]), .B1(n247), .B2(
        wb_hi_dat_i[13]), .ZN(n241) );
  ND2D0BWP12T30P140 U366 ( .A1(n242), .A2(n241), .ZN(wb_lo_dat_o[5]) );
  AOI22D0BWP12T30P140 U367 ( .A1(n246), .A2(wb_hi_dat_i[22]), .B1(n245), .B2(
        wb_hi_dat_i[30]), .ZN(n244) );
  AOI22D0BWP12T30P140 U368 ( .A1(n248), .A2(wb_hi_dat_i[6]), .B1(n247), .B2(
        wb_hi_dat_i[14]), .ZN(n243) );
  ND2D0BWP12T30P140 U369 ( .A1(n244), .A2(n243), .ZN(wb_lo_dat_o[6]) );
  AOI22D0BWP12T30P140 U370 ( .A1(n246), .A2(wb_hi_dat_i[23]), .B1(n245), .B2(
        wb_hi_dat_i[31]), .ZN(n250) );
  AOI22D0BWP12T30P140 U371 ( .A1(n248), .A2(wb_hi_dat_i[7]), .B1(n247), .B2(
        wb_hi_dat_i[15]), .ZN(n249) );
  ND2D0BWP12T30P140 U372 ( .A1(n250), .A2(n249), .ZN(wb_lo_dat_o[7]) );
  IAO21D0BWP12T30P140 U373 ( .A1(n252), .A2(wb_lo_err_i), .B(n251), .ZN(
        wb_hi_err_o) );
endmodule

