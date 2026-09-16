/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:07:16 2026
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
  wire   N111, N112, n111, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245;
  wire   [1:0] state;
  wire   [31:0] read_buffer;

  DFQD2BWP12T30P140 read_buffer_reg_31_ ( .D(wb_hi_dat_o[31]), .CP(wb_hi_clk_i), .Q(read_buffer[31]) );
  DFQD2BWP12T30P140 read_buffer_reg_30_ ( .D(wb_hi_dat_o[30]), .CP(wb_hi_clk_i), .Q(read_buffer[30]) );
  DFQD2BWP12T30P140 read_buffer_reg_29_ ( .D(wb_hi_dat_o[29]), .CP(wb_hi_clk_i), .Q(read_buffer[29]) );
  DFQD2BWP12T30P140 read_buffer_reg_28_ ( .D(wb_hi_dat_o[28]), .CP(wb_hi_clk_i), .Q(read_buffer[28]) );
  DFQD2BWP12T30P140 read_buffer_reg_27_ ( .D(wb_hi_dat_o[27]), .CP(wb_hi_clk_i), .Q(read_buffer[27]) );
  DFQD2BWP12T30P140 read_buffer_reg_26_ ( .D(wb_hi_dat_o[26]), .CP(wb_hi_clk_i), .Q(read_buffer[26]) );
  DFQD2BWP12T30P140 read_buffer_reg_25_ ( .D(wb_hi_dat_o[25]), .CP(wb_hi_clk_i), .Q(read_buffer[25]) );
  DFQD2BWP12T30P140 read_buffer_reg_23_ ( .D(wb_hi_dat_o[23]), .CP(wb_hi_clk_i), .Q(read_buffer[23]) );
  DFQD2BWP12T30P140 read_buffer_reg_22_ ( .D(wb_hi_dat_o[22]), .CP(wb_hi_clk_i), .Q(read_buffer[22]) );
  DFQD2BWP12T30P140 read_buffer_reg_21_ ( .D(wb_hi_dat_o[21]), .CP(wb_hi_clk_i), .Q(read_buffer[21]) );
  DFQD2BWP12T30P140 read_buffer_reg_20_ ( .D(wb_hi_dat_o[20]), .CP(wb_hi_clk_i), .Q(read_buffer[20]) );
  DFQD2BWP12T30P140 read_buffer_reg_0_ ( .D(wb_hi_dat_o[0]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[0]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(N111), .CP(wb_lo_clk_o), .CDN(n111), 
        .Q(state[0]) );
  DFQD2BWP12T30P140 read_buffer_reg_8_ ( .D(wb_hi_dat_o[8]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[8]) );
  DFQD2BWP12T30P140 read_buffer_reg_6_ ( .D(wb_hi_dat_o[6]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[6]) );
  DFQD2BWP12T30P140 read_buffer_reg_5_ ( .D(wb_hi_dat_o[5]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[5]) );
  DFQD2BWP12T30P140 read_buffer_reg_4_ ( .D(wb_hi_dat_o[4]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[4]) );
  DFQD2BWP12T30P140 read_buffer_reg_3_ ( .D(wb_hi_dat_o[3]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[3]) );
  DFQD2BWP12T30P140 read_buffer_reg_2_ ( .D(wb_hi_dat_o[2]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[2]) );
  DFQD2BWP12T30P140 read_buffer_reg_1_ ( .D(wb_hi_dat_o[1]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[1]) );
  DFQD2BWP12T30P140 read_buffer_reg_24_ ( .D(wb_hi_dat_o[24]), .CP(wb_lo_clk_o), .Q(read_buffer[24]) );
  DFQD2BWP12T30P140 read_buffer_reg_15_ ( .D(wb_hi_dat_o[15]), .CP(wb_hi_clk_i), .Q(read_buffer[15]) );
  DFQD2BWP12T30P140 read_buffer_reg_14_ ( .D(wb_hi_dat_o[14]), .CP(wb_lo_clk_o), .Q(read_buffer[14]) );
  DFQD2BWP12T30P140 read_buffer_reg_13_ ( .D(wb_hi_dat_o[13]), .CP(wb_hi_clk_i), .Q(read_buffer[13]) );
  DFQD2BWP12T30P140 read_buffer_reg_12_ ( .D(wb_hi_dat_o[12]), .CP(wb_lo_clk_o), .Q(read_buffer[12]) );
  DFQD2BWP12T30P140 read_buffer_reg_11_ ( .D(wb_hi_dat_o[11]), .CP(wb_hi_clk_i), .Q(read_buffer[11]) );
  DFQD2BWP12T30P140 read_buffer_reg_10_ ( .D(wb_hi_dat_o[10]), .CP(wb_lo_clk_o), .Q(read_buffer[10]) );
  DFQD2BWP12T30P140 read_buffer_reg_9_ ( .D(wb_hi_dat_o[9]), .CP(wb_hi_clk_i), 
        .Q(read_buffer[9]) );
  DFQD2BWP12T30P140 read_buffer_reg_18_ ( .D(wb_hi_dat_o[18]), .CP(wb_lo_clk_o), .Q(read_buffer[18]) );
  DFQD2BWP12T30P140 read_buffer_reg_17_ ( .D(wb_hi_dat_o[17]), .CP(wb_lo_clk_o), .Q(read_buffer[17]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(N112), .CP(wb_lo_clk_o), .CDN(n111), 
        .Q(state[1]) );
  DFQD1BWP12T30P140 read_buffer_reg_7_ ( .D(wb_hi_dat_o[7]), .CP(wb_lo_clk_o), 
        .Q(read_buffer[7]) );
  DFQD1BWP12T30P140 read_buffer_reg_19_ ( .D(wb_hi_dat_o[19]), .CP(wb_lo_clk_o), .Q(read_buffer[19]) );
  DFQD1BWP12T30P140 read_buffer_reg_16_ ( .D(wb_hi_dat_o[16]), .CP(wb_lo_clk_o), .Q(read_buffer[16]) );
  INVD0BWP12T30P140 U171 ( .I(state[1]), .ZN(n167) );
  INVD0BWP12T30P140 U172 ( .I(wb_hi_we_i), .ZN(n192) );
  NR2D0BWP12T30P140 U173 ( .A1(lo_byte_if_i), .A2(n154), .ZN(n210) );
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
  INVD1BWP12T30P140 U208 ( .I(state[0]), .ZN(n165) );
  CKND2D1BWP12T30P140 U209 ( .A1(n165), .A2(n167), .ZN(n174) );
  INVD0BWP12T30P140 U210 ( .I(n174), .ZN(n245) );
  ND2D0BWP12T30P140 U211 ( .A1(wb_hi_cyc_i), .A2(wb_hi_stb_i), .ZN(n238) );
  INVD0BWP12T30P140 U212 ( .I(lo_byte_if_i), .ZN(n244) );
  CKND2D1BWP12T30P140 U213 ( .A1(wb_hi_sel_i[0]), .A2(wb_hi_sel_i[1]), .ZN(
        n159) );
  CKND2D1BWP12T30P140 U214 ( .A1(wb_hi_sel_i[2]), .A2(wb_hi_sel_i[3]), .ZN(
        n151) );
  NR2D0BWP12T30P140 U215 ( .A1(n159), .A2(n151), .ZN(n158) );
  INVD0BWP12T30P140 U216 ( .I(n158), .ZN(n176) );
  NR3D0BWP12T30P140 U217 ( .A1(n238), .A2(n244), .A3(n176), .ZN(n145) );
  ND3D0BWP12T30P140 U218 ( .A1(n245), .A2(wb_lo_ack_i), .A3(n145), .ZN(n149)
         );
  NR2D0BWP12T30P140 U219 ( .A1(wb_hi_sel_i[0]), .A2(wb_hi_sel_i[1]), .ZN(n172)
         );
  INVD0BWP12T30P140 U220 ( .I(n172), .ZN(n170) );
  NR2D0BWP12T30P140 U221 ( .A1(n151), .A2(n170), .ZN(n155) );
  NR2D0BWP12T30P140 U222 ( .A1(wb_hi_sel_i[2]), .A2(wb_hi_sel_i[3]), .ZN(n171)
         );
  IND2D1BWP12T30P140 U223 ( .A1(n159), .B1(n171), .ZN(n166) );
  IND2D1BWP12T30P140 U224 ( .A1(n155), .B1(n166), .ZN(n234) );
  NR2D0BWP12T30P140 U225 ( .A1(n244), .A2(n234), .ZN(n146) );
  AOI211D0BWP12T30P140 U226 ( .A1(n244), .A2(n176), .B(n146), .C(n238), .ZN(
        n147) );
  OAI211D0BWP12T30P140 U227 ( .A1(state[1]), .A2(n147), .B(wb_lo_ack_i), .C(
        n165), .ZN(n148) );
  OAI211D0BWP12T30P140 U228 ( .A1(wb_lo_ack_i), .A2(n165), .B(n149), .C(n148), 
        .ZN(N111) );
  INVD0BWP12T30P140 U229 ( .I(wb_lo_ack_i), .ZN(n239) );
  NR2D0BWP12T30P140 U230 ( .A1(state[0]), .A2(n239), .ZN(n150) );
  OAI21D0BWP12T30P140 U231 ( .A1(n150), .A2(n167), .B(n149), .ZN(N112) );
  INVD0BWP12T30P140 U232 ( .I(wb_hi_rst_i), .ZN(n111) );
  NR2D0BWP12T30P140 U233 ( .A1(state[1]), .A2(n165), .ZN(n236) );
  INVD0BWP12T30P140 U234 ( .I(wb_hi_sel_i[1]), .ZN(n162) );
  AOI21D0BWP12T30P140 U235 ( .A1(n151), .A2(wb_hi_sel_i[0]), .B(n162), .ZN(
        n152) );
  AOI211D0BWP12T30P140 U236 ( .A1(n162), .A2(wb_hi_sel_i[0]), .B(n152), .C(
        n171), .ZN(n153) );
  AOI22D0BWP12T30P140 U237 ( .A1(n158), .A2(n236), .B1(n245), .B2(n153), .ZN(
        n154) );
  INVD0BWP12T30P140 U238 ( .I(wb_hi_sel_i[3]), .ZN(n243) );
  NR4D0BWP12T30P140 U239 ( .A1(wb_hi_sel_i[2]), .A2(n243), .A3(n174), .A4(n170), .ZN(n163) );
  AOI21D0BWP12T30P140 U240 ( .A1(n155), .A2(n236), .B(n163), .ZN(n157) );
  INVD0BWP12T30P140 U241 ( .I(n236), .ZN(n156) );
  OAI211D0BWP12T30P140 U242 ( .A1(n165), .A2(n167), .B(n158), .C(lo_byte_if_i), 
        .ZN(n164) );
  OAI22D0BWP12T30P140 U243 ( .A1(n157), .A2(n244), .B1(n156), .B2(n164), .ZN(
        n227) );
  OAI21D0BWP12T30P140 U244 ( .A1(n210), .A2(n227), .B(n192), .ZN(n209) );
  AOI21D0BWP12T30P140 U245 ( .A1(n159), .A2(n170), .B(n158), .ZN(n160) );
  AOI211D0BWP12T30P140 U246 ( .A1(n160), .A2(n166), .B(lo_byte_if_i), .C(n174), 
        .ZN(n179) );
  NR2D0BWP12T30P140 U247 ( .A1(n210), .A2(n179), .ZN(n187) );
  INVD0BWP12T30P140 U248 ( .I(n187), .ZN(n186) );
  AOI22D0BWP12T30P140 U249 ( .A1(n187), .A2(wb_lo_dat_i[7]), .B1(
        wb_lo_dat_i[15]), .B2(n186), .ZN(n190) );
  CKND2D1BWP12T30P140 U250 ( .A1(n209), .A2(read_buffer[31]), .ZN(n161) );
  OAI21D0BWP12T30P140 U251 ( .A1(n209), .A2(n190), .B(n161), .ZN(
        wb_hi_dat_o[31]) );
  NR2D0BWP12T30P140 U252 ( .A1(n192), .A2(n238), .ZN(wb_lo_we_o) );
  INVD0BWP12T30P140 U253 ( .I(n171), .ZN(n175) );
  NR4D0BWP12T30P140 U254 ( .A1(wb_hi_sel_i[0]), .A2(n162), .A3(n174), .A4(n175), .ZN(n168) );
  OAI21D0BWP12T30P140 U255 ( .A1(n163), .A2(n168), .B(n244), .ZN(
        wb_lo_sel_o[0]) );
  CKMUX2D0BWP12T30P140 U256 ( .I0(wb_hi_dat_i[8]), .I1(wb_hi_dat_i[24]), .S(
        n210), .Z(wb_lo_dat_o[8]) );
  CKND2D1BWP12T30P140 U257 ( .A1(wb_hi_sel_i[2]), .A2(n172), .ZN(n240) );
  OAI22D0BWP12T30P140 U258 ( .A1(n167), .A2(n164), .B1(n174), .B2(n240), .ZN(
        n193) );
  NR2D0BWP12T30P140 U259 ( .A1(n193), .A2(n227), .ZN(n211) );
  INVD0BWP12T30P140 U260 ( .I(n210), .ZN(n212) );
  CKND2D1BWP12T30P140 U261 ( .A1(n211), .A2(n212), .ZN(wb_lo_adr_o[1]) );
  AOI221D0BWP12T30P140 U262 ( .A1(state[1]), .A2(n176), .B1(n167), .B2(n166), 
        .C(n165), .ZN(n169) );
  OA21D0BWP12T30P140 U263 ( .A1(n169), .A2(n168), .B(lo_byte_if_i), .Z(n229)
         );
  OR2D0BWP12T30P140 U264 ( .A1(n227), .A2(n229), .Z(wb_lo_adr_o[0]) );
  CKMUX2D0BWP12T30P140 U265 ( .I0(wb_hi_dat_i[10]), .I1(wb_hi_dat_i[26]), .S(
        n210), .Z(wb_lo_dat_o[10]) );
  CKMUX2D0BWP12T30P140 U266 ( .I0(wb_hi_dat_i[11]), .I1(wb_hi_dat_i[27]), .S(
        n210), .Z(wb_lo_dat_o[11]) );
  CKMUX2D0BWP12T30P140 U267 ( .I0(wb_hi_dat_i[12]), .I1(wb_hi_dat_i[28]), .S(
        n210), .Z(wb_lo_dat_o[12]) );
  CKMUX2D0BWP12T30P140 U268 ( .I0(wb_hi_dat_i[13]), .I1(wb_hi_dat_i[29]), .S(
        n210), .Z(wb_lo_dat_o[13]) );
  CKMUX2D0BWP12T30P140 U269 ( .I0(wb_hi_dat_i[14]), .I1(wb_hi_dat_i[30]), .S(
        n210), .Z(wb_lo_dat_o[14]) );
  CKMUX2D0BWP12T30P140 U270 ( .I0(wb_hi_dat_i[15]), .I1(wb_hi_dat_i[31]), .S(
        n210), .Z(wb_lo_dat_o[15]) );
  BUFFD1BWP12T30P140 U271 ( .I(wb_hi_clk_i), .Z(wb_lo_clk_o) );
  AOI22D0BWP12T30P140 U272 ( .A1(n172), .A2(n175), .B1(n171), .B2(n170), .ZN(
        n233) );
  AOI21D0BWP12T30P140 U273 ( .A1(n176), .A2(n233), .B(wb_lo_err_i), .ZN(n173)
         );
  NR2D0BWP12T30P140 U274 ( .A1(n238), .A2(n173), .ZN(wb_hi_err_o) );
  INVD0BWP12T30P140 U275 ( .I(wb_hi_sel_i[0]), .ZN(n241) );
  AOI211D0BWP12T30P140 U276 ( .A1(n176), .A2(n175), .B(n241), .C(n174), .ZN(
        n177) );
  OAI21D0BWP12T30P140 U277 ( .A1(n179), .A2(n177), .B(n192), .ZN(n178) );
  CKMUX2D0BWP12T30P140 U278 ( .I0(wb_lo_dat_i[0]), .I1(read_buffer[0]), .S(
        n178), .Z(wb_hi_dat_o[0]) );
  CKMUX2D0BWP12T30P140 U279 ( .I0(wb_lo_dat_i[1]), .I1(read_buffer[1]), .S(
        n178), .Z(wb_hi_dat_o[1]) );
  CKMUX2D0BWP12T30P140 U280 ( .I0(wb_lo_dat_i[2]), .I1(read_buffer[2]), .S(
        n178), .Z(wb_hi_dat_o[2]) );
  CKMUX2D0BWP12T30P140 U281 ( .I0(wb_lo_dat_i[3]), .I1(read_buffer[3]), .S(
        n178), .Z(wb_hi_dat_o[3]) );
  CKMUX2D0BWP12T30P140 U282 ( .I0(wb_lo_dat_i[4]), .I1(read_buffer[4]), .S(
        n178), .Z(wb_hi_dat_o[4]) );
  CKMUX2D0BWP12T30P140 U283 ( .I0(wb_lo_dat_i[5]), .I1(read_buffer[5]), .S(
        n178), .Z(wb_hi_dat_o[5]) );
  CKMUX2D0BWP12T30P140 U284 ( .I0(wb_lo_dat_i[6]), .I1(read_buffer[6]), .S(
        n178), .Z(wb_hi_dat_o[6]) );
  CKMUX2D0BWP12T30P140 U285 ( .I0(wb_lo_dat_i[7]), .I1(read_buffer[7]), .S(
        n178), .Z(wb_hi_dat_o[7]) );
  OAI21D0BWP12T30P140 U286 ( .A1(n229), .A2(n179), .B(n192), .ZN(n191) );
  AOI22D0BWP12T30P140 U287 ( .A1(n187), .A2(wb_lo_dat_i[0]), .B1(
        wb_lo_dat_i[8]), .B2(n186), .ZN(n196) );
  CKND2D1BWP12T30P140 U288 ( .A1(n191), .A2(read_buffer[8]), .ZN(n180) );
  OAI21D0BWP12T30P140 U289 ( .A1(n191), .A2(n196), .B(n180), .ZN(
        wb_hi_dat_o[8]) );
  AOI22D0BWP12T30P140 U290 ( .A1(n187), .A2(wb_lo_dat_i[1]), .B1(
        wb_lo_dat_i[9]), .B2(n186), .ZN(n198) );
  CKND2D1BWP12T30P140 U291 ( .A1(n191), .A2(read_buffer[9]), .ZN(n181) );
  OAI21D0BWP12T30P140 U292 ( .A1(n191), .A2(n198), .B(n181), .ZN(
        wb_hi_dat_o[9]) );
  AOI22D0BWP12T30P140 U293 ( .A1(n187), .A2(wb_lo_dat_i[2]), .B1(
        wb_lo_dat_i[10]), .B2(n186), .ZN(n200) );
  CKND2D1BWP12T30P140 U294 ( .A1(n191), .A2(read_buffer[10]), .ZN(n182) );
  OAI21D0BWP12T30P140 U295 ( .A1(n191), .A2(n200), .B(n182), .ZN(
        wb_hi_dat_o[10]) );
  AOI22D0BWP12T30P140 U296 ( .A1(n187), .A2(wb_lo_dat_i[3]), .B1(
        wb_lo_dat_i[11]), .B2(n186), .ZN(n202) );
  CKND2D1BWP12T30P140 U297 ( .A1(n191), .A2(read_buffer[11]), .ZN(n183) );
  OAI21D0BWP12T30P140 U298 ( .A1(n191), .A2(n202), .B(n183), .ZN(
        wb_hi_dat_o[11]) );
  AOI22D0BWP12T30P140 U299 ( .A1(n187), .A2(wb_lo_dat_i[4]), .B1(
        wb_lo_dat_i[12]), .B2(n186), .ZN(n204) );
  CKND2D1BWP12T30P140 U300 ( .A1(n191), .A2(read_buffer[12]), .ZN(n184) );
  OAI21D0BWP12T30P140 U301 ( .A1(n191), .A2(n204), .B(n184), .ZN(
        wb_hi_dat_o[12]) );
  AOI22D0BWP12T30P140 U302 ( .A1(n187), .A2(wb_lo_dat_i[5]), .B1(
        wb_lo_dat_i[13]), .B2(n186), .ZN(n206) );
  CKND2D1BWP12T30P140 U303 ( .A1(n191), .A2(read_buffer[13]), .ZN(n185) );
  OAI21D0BWP12T30P140 U304 ( .A1(n191), .A2(n206), .B(n185), .ZN(
        wb_hi_dat_o[13]) );
  AOI22D0BWP12T30P140 U305 ( .A1(n187), .A2(wb_lo_dat_i[6]), .B1(
        wb_lo_dat_i[14]), .B2(n186), .ZN(n208) );
  CKND2D1BWP12T30P140 U306 ( .A1(n191), .A2(read_buffer[14]), .ZN(n188) );
  OAI21D0BWP12T30P140 U307 ( .A1(n191), .A2(n208), .B(n188), .ZN(
        wb_hi_dat_o[14]) );
  CKND2D1BWP12T30P140 U308 ( .A1(n191), .A2(read_buffer[15]), .ZN(n189) );
  OAI21D0BWP12T30P140 U309 ( .A1(n191), .A2(n190), .B(n189), .ZN(
        wb_hi_dat_o[15]) );
  OAI21D0BWP12T30P140 U310 ( .A1(n210), .A2(n193), .B(n192), .ZN(n194) );
  CKMUX2D0BWP12T30P140 U311 ( .I0(wb_lo_dat_i[0]), .I1(read_buffer[16]), .S(
        n194), .Z(wb_hi_dat_o[16]) );
  CKMUX2D0BWP12T30P140 U312 ( .I0(wb_lo_dat_i[1]), .I1(read_buffer[17]), .S(
        n194), .Z(wb_hi_dat_o[17]) );
  CKMUX2D0BWP12T30P140 U313 ( .I0(wb_lo_dat_i[2]), .I1(read_buffer[18]), .S(
        n194), .Z(wb_hi_dat_o[18]) );
  CKMUX2D0BWP12T30P140 U314 ( .I0(wb_lo_dat_i[3]), .I1(read_buffer[19]), .S(
        n194), .Z(wb_hi_dat_o[19]) );
  CKMUX2D0BWP12T30P140 U315 ( .I0(wb_lo_dat_i[4]), .I1(read_buffer[20]), .S(
        n194), .Z(wb_hi_dat_o[20]) );
  CKMUX2D0BWP12T30P140 U316 ( .I0(wb_lo_dat_i[5]), .I1(read_buffer[21]), .S(
        n194), .Z(wb_hi_dat_o[21]) );
  CKMUX2D0BWP12T30P140 U317 ( .I0(wb_lo_dat_i[6]), .I1(read_buffer[22]), .S(
        n194), .Z(wb_hi_dat_o[22]) );
  CKMUX2D0BWP12T30P140 U318 ( .I0(wb_lo_dat_i[7]), .I1(read_buffer[23]), .S(
        n194), .Z(wb_hi_dat_o[23]) );
  CKND2D1BWP12T30P140 U319 ( .A1(n209), .A2(read_buffer[24]), .ZN(n195) );
  OAI21D0BWP12T30P140 U320 ( .A1(n209), .A2(n196), .B(n195), .ZN(
        wb_hi_dat_o[24]) );
  CKND2D1BWP12T30P140 U321 ( .A1(n209), .A2(read_buffer[25]), .ZN(n197) );
  OAI21D0BWP12T30P140 U322 ( .A1(n209), .A2(n198), .B(n197), .ZN(
        wb_hi_dat_o[25]) );
  CKND2D1BWP12T30P140 U323 ( .A1(n209), .A2(read_buffer[26]), .ZN(n199) );
  OAI21D0BWP12T30P140 U324 ( .A1(n209), .A2(n200), .B(n199), .ZN(
        wb_hi_dat_o[26]) );
  CKND2D1BWP12T30P140 U325 ( .A1(n209), .A2(read_buffer[27]), .ZN(n201) );
  OAI21D0BWP12T30P140 U326 ( .A1(n209), .A2(n202), .B(n201), .ZN(
        wb_hi_dat_o[27]) );
  CKND2D1BWP12T30P140 U327 ( .A1(n209), .A2(read_buffer[28]), .ZN(n203) );
  OAI21D0BWP12T30P140 U328 ( .A1(n209), .A2(n204), .B(n203), .ZN(
        wb_hi_dat_o[28]) );
  CKND2D1BWP12T30P140 U329 ( .A1(n209), .A2(read_buffer[29]), .ZN(n205) );
  OAI21D0BWP12T30P140 U330 ( .A1(n209), .A2(n206), .B(n205), .ZN(
        wb_hi_dat_o[29]) );
  CKND2D1BWP12T30P140 U331 ( .A1(n209), .A2(read_buffer[30]), .ZN(n207) );
  OAI21D0BWP12T30P140 U332 ( .A1(n209), .A2(n208), .B(n207), .ZN(
        wb_hi_dat_o[30]) );
  CKMUX2D0BWP12T30P140 U333 ( .I0(wb_hi_dat_i[9]), .I1(wb_hi_dat_i[25]), .S(
        n210), .Z(wb_lo_dat_o[9]) );
  AOI21D0BWP12T30P140 U334 ( .A1(n212), .A2(n211), .B(wb_lo_adr_o[0]), .ZN(
        n228) );
  AOI22D0BWP12T30P140 U335 ( .A1(n228), .A2(wb_hi_dat_i[16]), .B1(
        wb_hi_dat_i[24]), .B2(n227), .ZN(n214) );
  NR2D0BWP12T30P140 U336 ( .A1(wb_lo_adr_o[1]), .A2(wb_lo_adr_o[0]), .ZN(n230)
         );
  AOI22D0BWP12T30P140 U337 ( .A1(n230), .A2(wb_hi_dat_i[0]), .B1(
        wb_hi_dat_i[8]), .B2(n229), .ZN(n213) );
  ND2D0BWP12T30P140 U338 ( .A1(n214), .A2(n213), .ZN(wb_lo_dat_o[0]) );
  AOI22D0BWP12T30P140 U339 ( .A1(n228), .A2(wb_hi_dat_i[18]), .B1(n227), .B2(
        wb_hi_dat_i[26]), .ZN(n216) );
  AOI22D0BWP12T30P140 U340 ( .A1(n230), .A2(wb_hi_dat_i[2]), .B1(n229), .B2(
        wb_hi_dat_i[10]), .ZN(n215) );
  ND2D0BWP12T30P140 U341 ( .A1(n216), .A2(n215), .ZN(wb_lo_dat_o[2]) );
  AOI22D0BWP12T30P140 U342 ( .A1(n228), .A2(wb_hi_dat_i[19]), .B1(n227), .B2(
        wb_hi_dat_i[27]), .ZN(n218) );
  AOI22D0BWP12T30P140 U343 ( .A1(n230), .A2(wb_hi_dat_i[3]), .B1(n229), .B2(
        wb_hi_dat_i[11]), .ZN(n217) );
  ND2D0BWP12T30P140 U344 ( .A1(n218), .A2(n217), .ZN(wb_lo_dat_o[3]) );
  AOI22D0BWP12T30P140 U345 ( .A1(n228), .A2(wb_hi_dat_i[20]), .B1(n227), .B2(
        wb_hi_dat_i[28]), .ZN(n220) );
  AOI22D0BWP12T30P140 U346 ( .A1(n230), .A2(wb_hi_dat_i[4]), .B1(n229), .B2(
        wb_hi_dat_i[12]), .ZN(n219) );
  ND2D0BWP12T30P140 U347 ( .A1(n220), .A2(n219), .ZN(wb_lo_dat_o[4]) );
  AOI22D0BWP12T30P140 U348 ( .A1(n228), .A2(wb_hi_dat_i[21]), .B1(n227), .B2(
        wb_hi_dat_i[29]), .ZN(n222) );
  AOI22D0BWP12T30P140 U349 ( .A1(n230), .A2(wb_hi_dat_i[5]), .B1(n229), .B2(
        wb_hi_dat_i[13]), .ZN(n221) );
  ND2D0BWP12T30P140 U350 ( .A1(n222), .A2(n221), .ZN(wb_lo_dat_o[5]) );
  AOI22D0BWP12T30P140 U351 ( .A1(n228), .A2(wb_hi_dat_i[22]), .B1(n227), .B2(
        wb_hi_dat_i[30]), .ZN(n224) );
  AOI22D0BWP12T30P140 U352 ( .A1(n230), .A2(wb_hi_dat_i[6]), .B1(n229), .B2(
        wb_hi_dat_i[14]), .ZN(n223) );
  ND2D0BWP12T30P140 U353 ( .A1(n224), .A2(n223), .ZN(wb_lo_dat_o[6]) );
  AOI22D0BWP12T30P140 U354 ( .A1(n228), .A2(wb_hi_dat_i[23]), .B1(n227), .B2(
        wb_hi_dat_i[31]), .ZN(n226) );
  AOI22D0BWP12T30P140 U355 ( .A1(n230), .A2(wb_hi_dat_i[7]), .B1(n229), .B2(
        wb_hi_dat_i[15]), .ZN(n225) );
  ND2D0BWP12T30P140 U356 ( .A1(n226), .A2(n225), .ZN(wb_lo_dat_o[7]) );
  AOI22D0BWP12T30P140 U357 ( .A1(n228), .A2(wb_hi_dat_i[17]), .B1(n227), .B2(
        wb_hi_dat_i[25]), .ZN(n232) );
  AOI22D0BWP12T30P140 U358 ( .A1(n230), .A2(wb_hi_dat_i[1]), .B1(n229), .B2(
        wb_hi_dat_i[9]), .ZN(n231) );
  ND2D0BWP12T30P140 U359 ( .A1(n232), .A2(n231), .ZN(wb_lo_dat_o[1]) );
  AOI21D0BWP12T30P140 U360 ( .A1(lo_byte_if_i), .A2(n234), .B(n233), .ZN(n235)
         );
  MUX2ND0BWP12T30P140 U361 ( .I0(n236), .I1(n245), .S(n235), .ZN(n237) );
  NR3D0BWP12T30P140 U362 ( .A1(n239), .A2(n238), .A3(n237), .ZN(wb_hi_ack_o)
         );
  OAI31D0BWP12T30P140 U363 ( .A1(wb_hi_sel_i[1]), .A2(wb_hi_sel_i[2]), .A3(
        n241), .B(n240), .ZN(n242) );
  ND4D0BWP12T30P140 U364 ( .A1(n245), .A2(n244), .A3(n243), .A4(n242), .ZN(
        wb_lo_sel_o[1]) );
endmodule

