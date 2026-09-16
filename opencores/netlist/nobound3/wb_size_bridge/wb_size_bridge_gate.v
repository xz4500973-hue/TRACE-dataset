/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:56:43 2026
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
  wire   n97, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n295, n296, n297;
  wire   [3:0] state;
  wire   [3:0] next_state;
  wire   [31:0] read_buffer;

  DFSNQD1BWP12T30P140 state_reg_0_ ( .D(next_state[0]), .CP(wb_lo_clk_o), 
        .SDN(n295), .Q(state[0]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_31_ ( .D(read_buffer[31]), .CP(wb_lo_clk_o), .CDN(n295), .Q(wb_hi_dat_o[31]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_30_ ( .D(read_buffer[30]), .CP(wb_lo_clk_o), .CDN(n295), .Q(wb_hi_dat_o[30]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_29_ ( .D(read_buffer[29]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[29]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_28_ ( .D(read_buffer[28]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[28]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_27_ ( .D(read_buffer[27]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[27]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_26_ ( .D(read_buffer[26]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[26]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_25_ ( .D(read_buffer[25]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[25]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_24_ ( .D(read_buffer[24]), .CP(n297), 
        .CDN(n97), .Q(wb_hi_dat_o[24]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_23_ ( .D(read_buffer[23]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[23]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_22_ ( .D(read_buffer[22]), .CP(n297), 
        .CDN(n97), .Q(wb_hi_dat_o[22]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_21_ ( .D(read_buffer[21]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[21]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_20_ ( .D(read_buffer[20]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[20]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_19_ ( .D(read_buffer[19]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[19]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_18_ ( .D(read_buffer[18]), .CP(n297), 
        .CDN(n295), .Q(wb_hi_dat_o[18]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_17_ ( .D(read_buffer[17]), .CP(wb_lo_clk_o), .CDN(n97), .Q(wb_hi_dat_o[17]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_16_ ( .D(read_buffer[16]), .CP(n297), 
        .CDN(n97), .Q(wb_hi_dat_o[16]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_15_ ( .D(read_buffer[15]), .CP(n296), 
        .CDN(n97), .Q(wb_hi_dat_o[15]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_14_ ( .D(read_buffer[14]), .CP(n297), 
        .CDN(n97), .Q(wb_hi_dat_o[14]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_13_ ( .D(read_buffer[13]), .CP(wb_hi_clk_i), .CDN(n97), .Q(wb_hi_dat_o[13]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_12_ ( .D(read_buffer[12]), .CP(wb_lo_clk_o), .CDN(n97), .Q(wb_hi_dat_o[12]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_11_ ( .D(read_buffer[11]), .CP(n296), 
        .CDN(n97), .Q(wb_hi_dat_o[11]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_10_ ( .D(read_buffer[10]), .CP(n297), 
        .CDN(n97), .Q(wb_hi_dat_o[10]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_9_ ( .D(read_buffer[9]), .CP(wb_lo_clk_o), 
        .CDN(n97), .Q(wb_hi_dat_o[9]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_8_ ( .D(read_buffer[8]), .CP(n296), .CDN(
        n97), .Q(wb_hi_dat_o[8]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_7_ ( .D(read_buffer[7]), .CP(n297), .CDN(
        n97), .Q(wb_hi_dat_o[7]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_6_ ( .D(read_buffer[6]), .CP(wb_lo_clk_o), 
        .CDN(n97), .Q(wb_hi_dat_o[6]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_5_ ( .D(read_buffer[5]), .CP(wb_lo_clk_o), 
        .CDN(n97), .Q(wb_hi_dat_o[5]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_4_ ( .D(read_buffer[4]), .CP(n296), .CDN(
        n97), .Q(wb_hi_dat_o[4]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_3_ ( .D(read_buffer[3]), .CP(n297), .CDN(
        n295), .Q(wb_hi_dat_o[3]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_2_ ( .D(read_buffer[2]), .CP(n296), .CDN(
        n97), .Q(wb_hi_dat_o[2]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_1_ ( .D(read_buffer[1]), .CP(wb_hi_clk_i), 
        .CDN(n295), .Q(wb_hi_dat_o[1]) );
  DFCNQD1BWP12T30P140 read_pipe_reg_0_ ( .D(read_buffer[0]), .CP(n297), .CDN(
        n295), .Q(wb_hi_dat_o[0]) );
  DFCNQD1BWP12T30P140 state_reg_2_ ( .D(next_state[2]), .CP(wb_lo_clk_o), 
        .CDN(n295), .Q(state[2]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(next_state[1]), .CP(wb_lo_clk_o), 
        .CDN(n97), .Q(state[1]) );
  DFCNQD1BWP12T30P140 state_reg_3_ ( .D(next_state[3]), .CP(wb_lo_clk_o), 
        .CDN(n295), .Q(state[3]) );
  DFQD2BWP12T30P140 read_buffer_reg_31_ ( .D(n164), .CP(wb_hi_clk_i), .Q(
        read_buffer[31]) );
  DFQD2BWP12T30P140 read_buffer_reg_30_ ( .D(n163), .CP(wb_hi_clk_i), .Q(
        read_buffer[30]) );
  DFQD2BWP12T30P140 read_buffer_reg_29_ ( .D(n162), .CP(wb_hi_clk_i), .Q(
        read_buffer[29]) );
  DFQD2BWP12T30P140 read_buffer_reg_28_ ( .D(n161), .CP(wb_hi_clk_i), .Q(
        read_buffer[28]) );
  DFQD2BWP12T30P140 read_buffer_reg_27_ ( .D(n160), .CP(wb_hi_clk_i), .Q(
        read_buffer[27]) );
  DFQD2BWP12T30P140 read_buffer_reg_26_ ( .D(n159), .CP(wb_hi_clk_i), .Q(
        read_buffer[26]) );
  DFQD2BWP12T30P140 read_buffer_reg_25_ ( .D(n158), .CP(wb_hi_clk_i), .Q(
        read_buffer[25]) );
  DFQD2BWP12T30P140 read_buffer_reg_24_ ( .D(n157), .CP(wb_hi_clk_i), .Q(
        read_buffer[24]) );
  DFQD2BWP12T30P140 read_buffer_reg_22_ ( .D(n155), .CP(wb_hi_clk_i), .Q(
        read_buffer[22]) );
  DFQD2BWP12T30P140 read_buffer_reg_21_ ( .D(n154), .CP(wb_hi_clk_i), .Q(
        read_buffer[21]) );
  DFQD2BWP12T30P140 read_buffer_reg_20_ ( .D(n153), .CP(wb_hi_clk_i), .Q(
        read_buffer[20]) );
  DFQD2BWP12T30P140 read_buffer_reg_19_ ( .D(n152), .CP(n296), .Q(
        read_buffer[19]) );
  DFQD2BWP12T30P140 read_buffer_reg_18_ ( .D(n151), .CP(n296), .Q(
        read_buffer[18]) );
  DFQD2BWP12T30P140 read_buffer_reg_17_ ( .D(n150), .CP(n296), .Q(
        read_buffer[17]) );
  DFQD2BWP12T30P140 read_buffer_reg_16_ ( .D(n149), .CP(n296), .Q(
        read_buffer[16]) );
  DFQD2BWP12T30P140 read_buffer_reg_15_ ( .D(n148), .CP(n296), .Q(
        read_buffer[15]) );
  DFQD2BWP12T30P140 read_buffer_reg_14_ ( .D(n147), .CP(n296), .Q(
        read_buffer[14]) );
  DFQD2BWP12T30P140 read_buffer_reg_13_ ( .D(n146), .CP(n296), .Q(
        read_buffer[13]) );
  DFQD2BWP12T30P140 read_buffer_reg_12_ ( .D(n145), .CP(n296), .Q(
        read_buffer[12]) );
  DFQD2BWP12T30P140 read_buffer_reg_11_ ( .D(n144), .CP(n296), .Q(
        read_buffer[11]) );
  DFQD2BWP12T30P140 read_buffer_reg_10_ ( .D(n143), .CP(n296), .Q(
        read_buffer[10]) );
  DFQD2BWP12T30P140 read_buffer_reg_9_ ( .D(n142), .CP(n296), .Q(
        read_buffer[9]) );
  DFQD2BWP12T30P140 read_buffer_reg_8_ ( .D(n141), .CP(n296), .Q(
        read_buffer[8]) );
  DFQD2BWP12T30P140 read_buffer_reg_7_ ( .D(n140), .CP(wb_lo_clk_o), .Q(
        read_buffer[7]) );
  DFQD2BWP12T30P140 read_buffer_reg_6_ ( .D(n139), .CP(wb_lo_clk_o), .Q(
        read_buffer[6]) );
  DFQD2BWP12T30P140 read_buffer_reg_5_ ( .D(n138), .CP(wb_lo_clk_o), .Q(
        read_buffer[5]) );
  DFQD2BWP12T30P140 read_buffer_reg_4_ ( .D(n137), .CP(wb_lo_clk_o), .Q(
        read_buffer[4]) );
  DFQD2BWP12T30P140 read_buffer_reg_3_ ( .D(n136), .CP(wb_lo_clk_o), .Q(
        read_buffer[3]) );
  DFQD2BWP12T30P140 read_buffer_reg_2_ ( .D(n135), .CP(wb_lo_clk_o), .Q(
        read_buffer[2]) );
  DFQD1BWP12T30P140 read_buffer_reg_23_ ( .D(n156), .CP(wb_hi_clk_i), .Q(
        read_buffer[23]) );
  DFQD1BWP12T30P140 read_buffer_reg_0_ ( .D(n133), .CP(n296), .Q(
        read_buffer[0]) );
  DFQD1BWP12T30P140 read_buffer_reg_1_ ( .D(n134), .CP(wb_lo_clk_o), .Q(
        read_buffer[1]) );
  ND2D0BWP12T30P140 U159 ( .A1(n228), .A2(n229), .ZN(wb_lo_adr_o[1]) );
  ND2D0BWP12T30P140 U160 ( .A1(n230), .A2(n231), .ZN(wb_lo_adr_o[0]) );
  ND2D0BWP12T30P140 U161 ( .A1(n227), .A2(n207), .ZN(n255) );
  ND2D0BWP12T30P140 U162 ( .A1(n257), .A2(n260), .ZN(n178) );
  INVD0BWP12T30P140 U163 ( .I(lo_byte_if_i), .ZN(n227) );
  CKBD0BWP12T30P140 U164 ( .I(wb_hi_clk_i), .Z(wb_lo_clk_o) );
  CKBD0BWP12T30P140 U165 ( .I(wb_hi_stb_i), .Z(wb_lo_stb_o) );
  CKBD0BWP12T30P140 U166 ( .I(wb_hi_cyc_i), .Z(wb_lo_cyc_o) );
  CKBD0BWP12T30P140 U167 ( .I(wb_hi_adr_i[2]), .Z(wb_lo_adr_o[2]) );
  CKBD0BWP12T30P140 U168 ( .I(wb_hi_adr_i[3]), .Z(wb_lo_adr_o[3]) );
  CKBD0BWP12T30P140 U169 ( .I(wb_hi_adr_i[4]), .Z(wb_lo_adr_o[4]) );
  CKBD0BWP12T30P140 U170 ( .I(wb_hi_adr_i[5]), .Z(wb_lo_adr_o[5]) );
  CKBD0BWP12T30P140 U171 ( .I(wb_hi_adr_i[6]), .Z(wb_lo_adr_o[6]) );
  CKBD0BWP12T30P140 U172 ( .I(wb_hi_adr_i[7]), .Z(wb_lo_adr_o[7]) );
  CKBD0BWP12T30P140 U173 ( .I(wb_hi_adr_i[8]), .Z(wb_lo_adr_o[8]) );
  CKBD0BWP12T30P140 U174 ( .I(wb_hi_adr_i[9]), .Z(wb_lo_adr_o[9]) );
  CKBD0BWP12T30P140 U175 ( .I(wb_hi_adr_i[10]), .Z(wb_lo_adr_o[10]) );
  CKBD0BWP12T30P140 U176 ( .I(wb_hi_adr_i[11]), .Z(wb_lo_adr_o[11]) );
  CKBD0BWP12T30P140 U177 ( .I(wb_hi_adr_i[12]), .Z(wb_lo_adr_o[12]) );
  CKBD0BWP12T30P140 U178 ( .I(wb_hi_adr_i[13]), .Z(wb_lo_adr_o[13]) );
  CKBD0BWP12T30P140 U179 ( .I(wb_hi_adr_i[14]), .Z(wb_lo_adr_o[14]) );
  CKBD0BWP12T30P140 U180 ( .I(wb_hi_adr_i[15]), .Z(wb_lo_adr_o[15]) );
  CKBD0BWP12T30P140 U181 ( .I(wb_hi_adr_i[16]), .Z(wb_lo_adr_o[16]) );
  CKBD0BWP12T30P140 U182 ( .I(wb_hi_adr_i[17]), .Z(wb_lo_adr_o[17]) );
  CKBD0BWP12T30P140 U183 ( .I(wb_hi_adr_i[18]), .Z(wb_lo_adr_o[18]) );
  CKBD0BWP12T30P140 U184 ( .I(wb_hi_adr_i[19]), .Z(wb_lo_adr_o[19]) );
  CKBD0BWP12T30P140 U185 ( .I(wb_hi_adr_i[20]), .Z(wb_lo_adr_o[20]) );
  CKBD0BWP12T30P140 U186 ( .I(wb_hi_adr_i[21]), .Z(wb_lo_adr_o[21]) );
  CKBD0BWP12T30P140 U187 ( .I(wb_hi_adr_i[22]), .Z(wb_lo_adr_o[22]) );
  CKBD0BWP12T30P140 U188 ( .I(wb_hi_adr_i[23]), .Z(wb_lo_adr_o[23]) );
  CKBD0BWP12T30P140 U189 ( .I(wb_hi_adr_i[24]), .Z(wb_lo_adr_o[24]) );
  CKBD0BWP12T30P140 U190 ( .I(wb_hi_adr_i[25]), .Z(wb_lo_adr_o[25]) );
  CKBD0BWP12T30P140 U191 ( .I(wb_hi_adr_i[26]), .Z(wb_lo_adr_o[26]) );
  CKBD0BWP12T30P140 U192 ( .I(wb_hi_adr_i[27]), .Z(wb_lo_adr_o[27]) );
  CKBD0BWP12T30P140 U193 ( .I(wb_hi_adr_i[28]), .Z(wb_lo_adr_o[28]) );
  CKBD0BWP12T30P140 U194 ( .I(wb_hi_adr_i[29]), .Z(wb_lo_adr_o[29]) );
  CKBD0BWP12T30P140 U195 ( .I(wb_hi_adr_i[30]), .Z(wb_lo_adr_o[30]) );
  CKBD0BWP12T30P140 U196 ( .I(wb_hi_adr_i[31]), .Z(wb_lo_adr_o[31]) );
  CKBD0BWP12T30P140 U197 ( .I(wb_hi_rst_i), .Z(wb_lo_rst_o) );
  CKBD0BWP12T30P140 U198 ( .I(wb_lo_rty_i), .Z(wb_hi_rty_o) );
  NR2D0BWP12T30P140 U199 ( .A1(wb_hi_sel_i[2]), .A2(wb_hi_sel_i[3]), .ZN(n175)
         );
  INVD0BWP12T30P140 U200 ( .I(wb_hi_sel_i[0]), .ZN(n257) );
  INVD0BWP12T30P140 U201 ( .I(wb_hi_sel_i[1]), .ZN(n260) );
  INVD0BWP12T30P140 U202 ( .I(wb_hi_sel_i[2]), .ZN(n256) );
  INVD0BWP12T30P140 U203 ( .I(wb_hi_sel_i[3]), .ZN(n259) );
  NR4D0BWP12T30P140 U204 ( .A1(n257), .A2(n256), .A3(n259), .A4(n260), .ZN(
        n165) );
  AOI21D0BWP12T30P140 U205 ( .A1(n175), .A2(n178), .B(n165), .ZN(n220) );
  NR2D0BWP12T30P140 U206 ( .A1(state[1]), .A2(state[2]), .ZN(n167) );
  IND3D1BWP12T30P140 U207 ( .A1(state[3]), .B1(n167), .B2(state[0]), .ZN(n226)
         );
  INVD0BWP12T30P140 U208 ( .I(n226), .ZN(n207) );
  OR2D0BWP12T30P140 U209 ( .A1(n220), .A2(n255), .Z(n177) );
  INVD0BWP12T30P140 U210 ( .I(n165), .ZN(n174) );
  NR2D0BWP12T30P140 U211 ( .A1(n174), .A2(n227), .ZN(n179) );
  AOI32D0BWP12T30P140 U212 ( .A1(wb_hi_sel_i[0]), .A2(n207), .A3(n175), .B1(
        n179), .B2(n207), .ZN(n166) );
  AOI21D0BWP12T30P140 U213 ( .A1(n177), .A2(n166), .B(wb_hi_we_i), .ZN(n188)
         );
  INVD0BWP12T30P140 U214 ( .I(wb_lo_dat_i[1]), .ZN(n190) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n188), .A2(n190), .B1(read_buffer[1]), .B2(
        n188), .ZN(n134) );
  ND3D0BWP12T30P140 U216 ( .A1(wb_hi_cyc_i), .A2(wb_hi_stb_i), .A3(wb_lo_ack_i), .ZN(n223) );
  INVD0BWP12T30P140 U217 ( .I(n223), .ZN(n206) );
  IND3D1BWP12T30P140 U218 ( .A1(state[0]), .B1(n167), .B2(state[3]), .ZN(n198)
         );
  INVD0BWP12T30P140 U219 ( .I(n198), .ZN(n173) );
  NR2D0BWP12T30P140 U220 ( .A1(n207), .A2(n173), .ZN(n170) );
  INVD0BWP12T30P140 U221 ( .I(state[1]), .ZN(n169) );
  NR4D0BWP12T30P140 U222 ( .A1(state[3]), .A2(state[2]), .A3(state[0]), .A4(
        n169), .ZN(n222) );
  INVD0BWP12T30P140 U223 ( .I(n222), .ZN(n183) );
  NR2D0BWP12T30P140 U224 ( .A1(state[3]), .A2(state[0]), .ZN(n168) );
  ND3D0BWP12T30P140 U225 ( .A1(n169), .A2(n168), .A3(state[2]), .ZN(n213) );
  AOI32D0BWP12T30P140 U226 ( .A1(n170), .A2(n183), .A3(n213), .B1(wb_lo_ack_i), 
        .B2(n222), .ZN(n171) );
  ND3D0BWP12T30P140 U227 ( .A1(wb_hi_sel_i[1]), .A2(lo_byte_if_i), .A3(n175), 
        .ZN(n205) );
  OR4D0BWP12T30P140 U228 ( .A1(n178), .A2(n256), .A3(n259), .A4(n227), .Z(n204) );
  OAI211D0BWP12T30P140 U229 ( .A1(n257), .A2(n205), .B(n204), .C(n174), .ZN(
        n221) );
  AOI32D0BWP12T30P140 U230 ( .A1(n206), .A2(n171), .A3(n221), .B1(n226), .B2(
        n171), .ZN(next_state[0]) );
  INVD0BWP12T30P140 U231 ( .I(wb_lo_dat_i[2]), .ZN(n202) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n188), .A2(n202), .B1(read_buffer[2]), .B2(
        n188), .ZN(n135) );
  AOI221D0BWP12T30P140 U233 ( .A1(wb_hi_sel_i[0]), .A2(n183), .B1(n257), .B2(
        n226), .C(n205), .ZN(n172) );
  AOI21D0BWP12T30P140 U234 ( .A1(n179), .A2(n173), .B(n172), .ZN(n231) );
  AOI21D0BWP12T30P140 U235 ( .A1(n231), .A2(n177), .B(wb_hi_we_i), .ZN(n201)
         );
  NR2D0BWP12T30P140 U236 ( .A1(lo_byte_if_i), .A2(n174), .ZN(n209) );
  INVD0BWP12T30P140 U237 ( .I(n255), .ZN(n176) );
  NR2D0BWP12T30P140 U238 ( .A1(n175), .A2(n178), .ZN(n219) );
  AOI22D0BWP12T30P140 U239 ( .A1(n222), .A2(n209), .B1(n176), .B2(n219), .ZN(
        n228) );
  ND2D0BWP12T30P140 U240 ( .A1(n177), .A2(n228), .ZN(n199) );
  INVD0BWP12T30P140 U241 ( .I(n199), .ZN(n200) );
  AOI22D0BWP12T30P140 U242 ( .A1(n200), .A2(wb_lo_dat_i[0]), .B1(
        wb_lo_dat_i[8]), .B2(n199), .ZN(n185) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n201), .A2(n185), .B1(read_buffer[8]), .B2(
        n201), .ZN(n141) );
  INVD0BWP12T30P140 U244 ( .I(wb_lo_dat_i[3]), .ZN(n195) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n188), .A2(n195), .B1(read_buffer[3]), .B2(
        n188), .ZN(n136) );
  AOI22D0BWP12T30P140 U246 ( .A1(n200), .A2(wb_lo_dat_i[1]), .B1(
        wb_lo_dat_i[9]), .B2(n199), .ZN(n189) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n201), .A2(n189), .B1(read_buffer[9]), .B2(
        n201), .ZN(n142) );
  INVD0BWP12T30P140 U248 ( .I(wb_lo_dat_i[4]), .ZN(n180) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n188), .A2(n180), .B1(read_buffer[4]), .B2(
        n188), .ZN(n137) );
  AOI22D0BWP12T30P140 U250 ( .A1(n200), .A2(wb_lo_dat_i[2]), .B1(
        wb_lo_dat_i[10]), .B2(n199), .ZN(n187) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n201), .A2(n187), .B1(read_buffer[10]), .B2(
        n201), .ZN(n143) );
  INVD0BWP12T30P140 U252 ( .I(wb_lo_dat_i[5]), .ZN(n186) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n188), .A2(n186), .B1(read_buffer[5]), .B2(
        n188), .ZN(n138) );
  NR2D0BWP12T30P140 U254 ( .A1(n226), .A2(n178), .ZN(n182) );
  INVD0BWP12T30P140 U255 ( .I(n179), .ZN(n193) );
  MAOI22D0BWP12T30P140 U256 ( .A1(wb_hi_sel_i[2]), .A2(n182), .B1(n193), .B2(
        n213), .ZN(n218) );
  AOI21D0BWP12T30P140 U257 ( .A1(n218), .A2(n228), .B(wb_hi_we_i), .ZN(n217)
         );
  MAOI22D0BWP12T30P140 U258 ( .A1(n217), .A2(n180), .B1(read_buffer[20]), .B2(
        n217), .ZN(n153) );
  INVD0BWP12T30P140 U259 ( .I(wb_lo_dat_i[6]), .ZN(n181) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n188), .A2(n181), .B1(read_buffer[6]), .B2(
        n188), .ZN(n139) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n217), .A2(n181), .B1(read_buffer[22]), .B2(
        n217), .ZN(n155) );
  INVD0BWP12T30P140 U262 ( .I(wb_lo_dat_i[7]), .ZN(n216) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n188), .A2(n216), .B1(read_buffer[7]), .B2(
        n188), .ZN(n140) );
  ND4D0BWP12T30P140 U264 ( .A1(wb_hi_sel_i[3]), .A2(lo_byte_if_i), .A3(n182), 
        .A4(n256), .ZN(n184) );
  AO32D0BWP12T30P140 U265 ( .A1(n193), .A2(n184), .A3(n204), .B1(n183), .B2(
        n184), .Z(n230) );
  AOI21D0BWP12T30P140 U266 ( .A1(n230), .A2(n228), .B(wb_hi_we_i), .ZN(n215)
         );
  MAOI22D0BWP12T30P140 U267 ( .A1(n215), .A2(n185), .B1(read_buffer[24]), .B2(
        n215), .ZN(n157) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n217), .A2(n186), .B1(read_buffer[21]), .B2(
        n217), .ZN(n154) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n215), .A2(n187), .B1(read_buffer[26]), .B2(
        n215), .ZN(n159) );
  INVD0BWP12T30P140 U270 ( .I(wb_lo_dat_i[0]), .ZN(n196) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n188), .A2(n196), .B1(read_buffer[0]), .B2(
        n188), .ZN(n133) );
  AOI22D0BWP12T30P140 U272 ( .A1(n200), .A2(wb_lo_dat_i[4]), .B1(
        wb_lo_dat_i[12]), .B2(n199), .ZN(n194) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n215), .A2(n194), .B1(read_buffer[28]), .B2(
        n215), .ZN(n161) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n215), .A2(n189), .B1(read_buffer[25]), .B2(
        n215), .ZN(n158) );
  AOI22D0BWP12T30P140 U275 ( .A1(n200), .A2(wb_lo_dat_i[6]), .B1(
        wb_lo_dat_i[14]), .B2(n199), .ZN(n197) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n215), .A2(n197), .B1(read_buffer[30]), .B2(
        n215), .ZN(n163) );
  AOI22D0BWP12T30P140 U277 ( .A1(n200), .A2(wb_lo_dat_i[3]), .B1(
        wb_lo_dat_i[11]), .B2(n199), .ZN(n191) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n215), .A2(n191), .B1(read_buffer[27]), .B2(
        n215), .ZN(n160) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n217), .A2(n190), .B1(read_buffer[17]), .B2(
        n217), .ZN(n150) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n201), .A2(n191), .B1(read_buffer[11]), .B2(
        n201), .ZN(n144) );
  ND2D0BWP12T30P140 U281 ( .A1(n207), .A2(n206), .ZN(n192) );
  OAI22D0BWP12T30P140 U282 ( .A1(wb_lo_ack_i), .A2(n198), .B1(n193), .B2(n192), 
        .ZN(next_state[3]) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n201), .A2(n194), .B1(read_buffer[12]), .B2(
        n201), .ZN(n145) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n217), .A2(n195), .B1(read_buffer[19]), .B2(
        n217), .ZN(n152) );
  AOI22D0BWP12T30P140 U285 ( .A1(n200), .A2(wb_lo_dat_i[5]), .B1(
        wb_lo_dat_i[13]), .B2(n199), .ZN(n214) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n201), .A2(n214), .B1(read_buffer[13]), .B2(
        n201), .ZN(n146) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n217), .A2(n196), .B1(read_buffer[16]), .B2(
        n217), .ZN(n149) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n201), .A2(n197), .B1(read_buffer[14]), .B2(
        n201), .ZN(n147) );
  INVD0BWP12T30P140 U289 ( .I(wb_lo_ack_i), .ZN(n212) );
  AOI22D0BWP12T30P140 U290 ( .A1(wb_lo_ack_i), .A2(n198), .B1(n213), .B2(n212), 
        .ZN(next_state[2]) );
  AOI22D0BWP12T30P140 U291 ( .A1(n200), .A2(wb_lo_dat_i[7]), .B1(
        wb_lo_dat_i[15]), .B2(n199), .ZN(n203) );
  MAOI22D0BWP12T30P140 U292 ( .A1(n201), .A2(n203), .B1(read_buffer[15]), .B2(
        n201), .ZN(n148) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n217), .A2(n202), .B1(read_buffer[18]), .B2(
        n217), .ZN(n151) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n215), .A2(n203), .B1(read_buffer[31]), .B2(
        n215), .ZN(n164) );
  OAI21D0BWP12T30P140 U295 ( .A1(n257), .A2(n205), .B(n204), .ZN(n208) );
  OAI211D0BWP12T30P140 U296 ( .A1(n209), .A2(n208), .B(n207), .C(n206), .ZN(
        n211) );
  ND2D0BWP12T30P140 U297 ( .A1(n212), .A2(n222), .ZN(n210) );
  OAI211D0BWP12T30P140 U298 ( .A1(n213), .A2(n212), .B(n211), .C(n210), .ZN(
        next_state[1]) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n215), .A2(n214), .B1(read_buffer[29]), .B2(
        n215), .ZN(n162) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n217), .A2(n216), .B1(read_buffer[23]), .B2(
        n217), .ZN(n156) );
  CKBD0BWP12T30P140 U301 ( .I(wb_hi_clk_i), .Z(n297) );
  CKBD0BWP12T30P140 U302 ( .I(wb_hi_clk_i), .Z(n296) );
  INVD0BWP12T30P140 U303 ( .I(wb_hi_rst_i), .ZN(n97) );
  CKBD0BWP12T30P140 U304 ( .I(n97), .Z(n295) );
  AN2D0BWP12T30P140 U305 ( .A1(n218), .A2(n230), .Z(n229) );
  CKMUX2D0BWP12T30P140 U306 ( .I0(wb_hi_dat_i[24]), .I1(wb_hi_dat_i[8]), .S(
        n228), .Z(wb_lo_dat_o[8]) );
  CKMUX2D0BWP12T30P140 U307 ( .I0(wb_hi_dat_i[25]), .I1(wb_hi_dat_i[9]), .S(
        n228), .Z(wb_lo_dat_o[9]) );
  CKMUX2D0BWP12T30P140 U308 ( .I0(wb_hi_dat_i[26]), .I1(wb_hi_dat_i[10]), .S(
        n228), .Z(wb_lo_dat_o[10]) );
  CKMUX2D0BWP12T30P140 U309 ( .I0(wb_hi_dat_i[27]), .I1(wb_hi_dat_i[11]), .S(
        n228), .Z(wb_lo_dat_o[11]) );
  CKMUX2D0BWP12T30P140 U310 ( .I0(wb_hi_dat_i[28]), .I1(wb_hi_dat_i[12]), .S(
        n228), .Z(wb_lo_dat_o[12]) );
  CKMUX2D0BWP12T30P140 U311 ( .I0(wb_hi_dat_i[29]), .I1(wb_hi_dat_i[13]), .S(
        n228), .Z(wb_lo_dat_o[13]) );
  CKMUX2D0BWP12T30P140 U312 ( .I0(wb_hi_dat_i[30]), .I1(wb_hi_dat_i[14]), .S(
        n228), .Z(wb_lo_dat_o[14]) );
  CKMUX2D0BWP12T30P140 U313 ( .I0(wb_hi_dat_i[31]), .I1(wb_hi_dat_i[15]), .S(
        n228), .Z(wb_lo_dat_o[15]) );
  INR2D1BWP12T30P140 U314 ( .A1(n220), .B1(n219), .ZN(n252) );
  NR2D0BWP12T30P140 U315 ( .A1(n252), .A2(n221), .ZN(n225) );
  NR2D0BWP12T30P140 U316 ( .A1(n225), .A2(n222), .ZN(n224) );
  AOI211D0BWP12T30P140 U317 ( .A1(n226), .A2(n225), .B(n224), .C(n223), .ZN(
        wb_hi_ack_o) );
  AOI221D0BWP12T30P140 U318 ( .A1(n229), .A2(lo_byte_if_i), .B1(n228), .B2(
        n227), .C(wb_lo_adr_o[0]), .ZN(n247) );
  INVD0BWP12T30P140 U319 ( .I(n230), .ZN(n246) );
  AOI22D0BWP12T30P140 U320 ( .A1(n247), .A2(wb_hi_dat_i[16]), .B1(
        wb_hi_dat_i[24]), .B2(n246), .ZN(n233) );
  NR2D0BWP12T30P140 U321 ( .A1(wb_lo_adr_o[1]), .A2(wb_lo_adr_o[0]), .ZN(n249)
         );
  INVD0BWP12T30P140 U322 ( .I(n231), .ZN(n248) );
  AOI22D0BWP12T30P140 U323 ( .A1(n249), .A2(wb_hi_dat_i[0]), .B1(
        wb_hi_dat_i[8]), .B2(n248), .ZN(n232) );
  ND2D0BWP12T30P140 U324 ( .A1(n233), .A2(n232), .ZN(wb_lo_dat_o[0]) );
  AOI22D0BWP12T30P140 U325 ( .A1(n247), .A2(wb_hi_dat_i[17]), .B1(n246), .B2(
        wb_hi_dat_i[25]), .ZN(n235) );
  AOI22D0BWP12T30P140 U326 ( .A1(n249), .A2(wb_hi_dat_i[1]), .B1(n248), .B2(
        wb_hi_dat_i[9]), .ZN(n234) );
  ND2D0BWP12T30P140 U327 ( .A1(n235), .A2(n234), .ZN(wb_lo_dat_o[1]) );
  AOI22D0BWP12T30P140 U328 ( .A1(n247), .A2(wb_hi_dat_i[18]), .B1(n246), .B2(
        wb_hi_dat_i[26]), .ZN(n237) );
  AOI22D0BWP12T30P140 U329 ( .A1(n249), .A2(wb_hi_dat_i[2]), .B1(n248), .B2(
        wb_hi_dat_i[10]), .ZN(n236) );
  ND2D0BWP12T30P140 U330 ( .A1(n237), .A2(n236), .ZN(wb_lo_dat_o[2]) );
  AOI22D0BWP12T30P140 U331 ( .A1(n247), .A2(wb_hi_dat_i[19]), .B1(n246), .B2(
        wb_hi_dat_i[27]), .ZN(n239) );
  AOI22D0BWP12T30P140 U332 ( .A1(n249), .A2(wb_hi_dat_i[3]), .B1(n248), .B2(
        wb_hi_dat_i[11]), .ZN(n238) );
  ND2D0BWP12T30P140 U333 ( .A1(n239), .A2(n238), .ZN(wb_lo_dat_o[3]) );
  AOI22D0BWP12T30P140 U334 ( .A1(n247), .A2(wb_hi_dat_i[20]), .B1(n246), .B2(
        wb_hi_dat_i[28]), .ZN(n241) );
  AOI22D0BWP12T30P140 U335 ( .A1(n249), .A2(wb_hi_dat_i[4]), .B1(n248), .B2(
        wb_hi_dat_i[12]), .ZN(n240) );
  ND2D0BWP12T30P140 U336 ( .A1(n241), .A2(n240), .ZN(wb_lo_dat_o[4]) );
  AOI22D0BWP12T30P140 U337 ( .A1(n247), .A2(wb_hi_dat_i[21]), .B1(n246), .B2(
        wb_hi_dat_i[29]), .ZN(n243) );
  AOI22D0BWP12T30P140 U338 ( .A1(n249), .A2(wb_hi_dat_i[5]), .B1(n248), .B2(
        wb_hi_dat_i[13]), .ZN(n242) );
  ND2D0BWP12T30P140 U339 ( .A1(n243), .A2(n242), .ZN(wb_lo_dat_o[5]) );
  AOI22D0BWP12T30P140 U340 ( .A1(n247), .A2(wb_hi_dat_i[22]), .B1(n246), .B2(
        wb_hi_dat_i[30]), .ZN(n245) );
  AOI22D0BWP12T30P140 U341 ( .A1(n249), .A2(wb_hi_dat_i[6]), .B1(n248), .B2(
        wb_hi_dat_i[14]), .ZN(n244) );
  ND2D0BWP12T30P140 U342 ( .A1(n245), .A2(n244), .ZN(wb_lo_dat_o[6]) );
  AOI22D0BWP12T30P140 U343 ( .A1(n247), .A2(wb_hi_dat_i[23]), .B1(n246), .B2(
        wb_hi_dat_i[31]), .ZN(n251) );
  AOI22D0BWP12T30P140 U344 ( .A1(n249), .A2(wb_hi_dat_i[7]), .B1(n248), .B2(
        wb_hi_dat_i[15]), .ZN(n250) );
  ND2D0BWP12T30P140 U345 ( .A1(n251), .A2(n250), .ZN(wb_lo_dat_o[7]) );
  ND2D0BWP12T30P140 U346 ( .A1(wb_hi_cyc_i), .A2(wb_hi_stb_i), .ZN(n253) );
  IAO21D0BWP12T30P140 U347 ( .A1(n252), .A2(wb_lo_err_i), .B(n253), .ZN(
        wb_hi_err_o) );
  INR2D1BWP12T30P140 U348 ( .A1(wb_hi_we_i), .B1(n253), .ZN(wb_lo_we_o) );
  AOI221D0BWP12T30P140 U349 ( .A1(wb_hi_sel_i[3]), .A2(wb_hi_sel_i[1]), .B1(
        n259), .B2(n260), .C(n255), .ZN(n254) );
  ND3D0BWP12T30P140 U350 ( .A1(n256), .A2(n257), .A3(n254), .ZN(wb_lo_sel_o[0]) );
  AOI221D0BWP12T30P140 U351 ( .A1(wb_hi_sel_i[0]), .A2(wb_hi_sel_i[2]), .B1(
        n257), .B2(n256), .C(n255), .ZN(n258) );
  ND3D0BWP12T30P140 U352 ( .A1(n260), .A2(n259), .A3(n258), .ZN(wb_lo_sel_o[1]) );
endmodule

