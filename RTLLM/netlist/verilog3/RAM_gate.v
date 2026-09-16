/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:29:17 2026
/////////////////////////////////////////////////////////////


module RAM ( clk, rst_n, write_en, write_addr, write_data, read_en, read_addr, 
        read_data );
  input [7:0] write_addr;
  input [5:0] write_data;
  input [7:0] read_addr;
  output [5:0] read_data;
  input clk, rst_n, write_en, read_en;
  wire   N48, N49, N50, N51, N52, N53, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263;
  wire   [71:0] mem;

  DFCNQD1BWP12T30P140 read_data_reg_5_ ( .D(N53), .CP(n261), .CDN(n259), .Q(
        read_data[5]) );
  DFCNQD1BWP12T30P140 read_data_reg_4_ ( .D(N52), .CP(clk), .CDN(n259), .Q(
        read_data[4]) );
  DFCNQD1BWP12T30P140 read_data_reg_3_ ( .D(N51), .CP(n260), .CDN(n259), .Q(
        read_data[3]) );
  DFCNQD1BWP12T30P140 read_data_reg_2_ ( .D(N50), .CP(n260), .CDN(n259), .Q(
        read_data[2]) );
  DFCNQD1BWP12T30P140 read_data_reg_1_ ( .D(N49), .CP(n262), .CDN(n259), .Q(
        read_data[1]) );
  DFCNQD1BWP12T30P140 read_data_reg_0_ ( .D(N48), .CP(n263), .CDN(n259), .Q(
        read_data[0]) );
  DFCNQD1BWP12T30P140 mem_reg_0__4_ ( .D(n165), .CP(clk), .CDN(rst_n), .Q(
        mem[70]) );
  DFCNQD1BWP12T30P140 mem_reg_0__3_ ( .D(n164), .CP(clk), .CDN(rst_n), .Q(
        mem[69]) );
  DFCNQD1BWP12T30P140 mem_reg_0__2_ ( .D(n163), .CP(clk), .CDN(rst_n), .Q(
        mem[68]) );
  DFCNQD1BWP12T30P140 mem_reg_0__1_ ( .D(n162), .CP(clk), .CDN(rst_n), .Q(
        mem[67]) );
  DFCNQD1BWP12T30P140 mem_reg_0__0_ ( .D(n161), .CP(clk), .CDN(rst_n), .Q(
        mem[66]) );
  DFCNQD1BWP12T30P140 mem_reg_0__5_ ( .D(n166), .CP(clk), .CDN(rst_n), .Q(
        mem[71]) );
  DFCNQD1BWP12T30P140 mem_reg_8__0_ ( .D(n113), .CP(n260), .CDN(n258), .Q(
        mem[18]) );
  DFCNQD1BWP12T30P140 mem_reg_9__0_ ( .D(n107), .CP(n263), .CDN(n258), .Q(
        mem[12]) );
  DFCNQD1BWP12T30P140 mem_reg_10__0_ ( .D(n101), .CP(n261), .CDN(n259), .Q(
        mem[6]) );
  DFCNQD1BWP12T30P140 mem_reg_11__0_ ( .D(n95), .CP(n261), .CDN(rst_n), .Q(
        mem[0]) );
  DFCNQD1BWP12T30P140 mem_reg_1__0_ ( .D(n155), .CP(n263), .CDN(rst_n), .Q(
        mem[60]) );
  DFCNQD1BWP12T30P140 mem_reg_2__5_ ( .D(n154), .CP(n263), .CDN(n256), .Q(
        mem[59]) );
  DFCNQD1BWP12T30P140 mem_reg_2__4_ ( .D(n153), .CP(n263), .CDN(n256), .Q(
        mem[58]) );
  DFCNQD1BWP12T30P140 mem_reg_2__3_ ( .D(n152), .CP(n263), .CDN(n256), .Q(
        mem[57]) );
  DFCNQD1BWP12T30P140 mem_reg_2__2_ ( .D(n151), .CP(n263), .CDN(n256), .Q(
        mem[56]) );
  DFCNQD1BWP12T30P140 mem_reg_2__1_ ( .D(n150), .CP(n263), .CDN(n256), .Q(
        mem[55]) );
  DFCNQD1BWP12T30P140 mem_reg_3__5_ ( .D(n148), .CP(n262), .CDN(n256), .Q(
        mem[53]) );
  DFCNQD1BWP12T30P140 mem_reg_3__4_ ( .D(n147), .CP(n262), .CDN(n256), .Q(
        mem[52]) );
  DFCNQD1BWP12T30P140 mem_reg_3__3_ ( .D(n146), .CP(n262), .CDN(n256), .Q(
        mem[51]) );
  DFCNQD1BWP12T30P140 mem_reg_3__2_ ( .D(n145), .CP(n262), .CDN(n256), .Q(
        mem[50]) );
  DFCNQD1BWP12T30P140 mem_reg_3__1_ ( .D(n144), .CP(n262), .CDN(n256), .Q(
        mem[49]) );
  DFCNQD1BWP12T30P140 mem_reg_3__0_ ( .D(n143), .CP(n262), .CDN(n256), .Q(
        mem[48]) );
  DFCNQD1BWP12T30P140 mem_reg_6__5_ ( .D(n130), .CP(n261), .CDN(n257), .Q(
        mem[35]) );
  DFCNQD1BWP12T30P140 mem_reg_6__4_ ( .D(n129), .CP(n261), .CDN(n257), .Q(
        mem[34]) );
  DFCNQD1BWP12T30P140 mem_reg_6__3_ ( .D(n128), .CP(n261), .CDN(n258), .Q(
        mem[33]) );
  DFCNQD1BWP12T30P140 mem_reg_6__2_ ( .D(n127), .CP(n261), .CDN(n259), .Q(
        mem[32]) );
  DFCNQD1BWP12T30P140 mem_reg_6__1_ ( .D(n126), .CP(n261), .CDN(n257), .Q(
        mem[31]) );
  DFCNQD1BWP12T30P140 mem_reg_6__0_ ( .D(n125), .CP(n261), .CDN(n256), .Q(
        mem[30]) );
  DFCNQD1BWP12T30P140 mem_reg_7__5_ ( .D(n124), .CP(n260), .CDN(rst_n), .Q(
        mem[29]) );
  DFCNQD1BWP12T30P140 mem_reg_7__4_ ( .D(n123), .CP(n260), .CDN(n258), .Q(
        mem[28]) );
  DFCNQD1BWP12T30P140 mem_reg_7__3_ ( .D(n122), .CP(n260), .CDN(n259), .Q(
        mem[27]) );
  DFCNQD1BWP12T30P140 mem_reg_7__2_ ( .D(n121), .CP(n260), .CDN(n257), .Q(
        mem[26]) );
  DFCNQD1BWP12T30P140 mem_reg_7__1_ ( .D(n120), .CP(n260), .CDN(n256), .Q(
        mem[25]) );
  DFCNQD1BWP12T30P140 mem_reg_7__0_ ( .D(n119), .CP(n260), .CDN(n258), .Q(
        mem[24]) );
  DFCNQD1BWP12T30P140 mem_reg_10__5_ ( .D(n106), .CP(clk), .CDN(n258), .Q(
        mem[11]) );
  DFCNQD1BWP12T30P140 mem_reg_10__4_ ( .D(n105), .CP(n260), .CDN(n258), .Q(
        mem[10]) );
  DFCNQD1BWP12T30P140 mem_reg_10__3_ ( .D(n104), .CP(n262), .CDN(n258), .Q(
        mem[9]) );
  DFCNQD1BWP12T30P140 mem_reg_10__2_ ( .D(n103), .CP(n263), .CDN(n258), .Q(
        mem[8]) );
  DFCNQD1BWP12T30P140 mem_reg_10__1_ ( .D(n102), .CP(n261), .CDN(n259), .Q(
        mem[7]) );
  DFCNQD1BWP12T30P140 mem_reg_11__5_ ( .D(n100), .CP(n262), .CDN(n259), .Q(
        mem[5]) );
  DFCNQD1BWP12T30P140 mem_reg_11__4_ ( .D(n99), .CP(n260), .CDN(n259), .Q(
        mem[4]) );
  DFCNQD1BWP12T30P140 mem_reg_11__3_ ( .D(n98), .CP(n262), .CDN(n259), .Q(
        mem[3]) );
  DFCNQD1BWP12T30P140 mem_reg_11__2_ ( .D(n97), .CP(n263), .CDN(n259), .Q(
        mem[2]) );
  DFCNQD1BWP12T30P140 mem_reg_11__1_ ( .D(n96), .CP(n261), .CDN(n259), .Q(
        mem[1]) );
  DFCNQD1BWP12T30P140 mem_reg_1__5_ ( .D(n160), .CP(n263), .CDN(rst_n), .Q(
        mem[65]) );
  DFCNQD1BWP12T30P140 mem_reg_1__4_ ( .D(n159), .CP(n263), .CDN(rst_n), .Q(
        mem[64]) );
  DFCNQD1BWP12T30P140 mem_reg_1__3_ ( .D(n158), .CP(n263), .CDN(rst_n), .Q(
        mem[63]) );
  DFCNQD1BWP12T30P140 mem_reg_1__2_ ( .D(n157), .CP(n263), .CDN(rst_n), .Q(
        mem[62]) );
  DFCNQD1BWP12T30P140 mem_reg_1__1_ ( .D(n156), .CP(n263), .CDN(rst_n), .Q(
        mem[61]) );
  DFCNQD1BWP12T30P140 mem_reg_2__0_ ( .D(n149), .CP(n263), .CDN(n256), .Q(
        mem[54]) );
  DFCNQD1BWP12T30P140 mem_reg_4__5_ ( .D(n142), .CP(n262), .CDN(n256), .Q(
        mem[47]) );
  DFCNQD1BWP12T30P140 mem_reg_4__4_ ( .D(n141), .CP(n262), .CDN(n257), .Q(
        mem[46]) );
  DFCNQD1BWP12T30P140 mem_reg_4__3_ ( .D(n140), .CP(n262), .CDN(n257), .Q(
        mem[45]) );
  DFCNQD1BWP12T30P140 mem_reg_4__2_ ( .D(n139), .CP(n262), .CDN(n257), .Q(
        mem[44]) );
  DFCNQD1BWP12T30P140 mem_reg_4__1_ ( .D(n138), .CP(n262), .CDN(n257), .Q(
        mem[43]) );
  DFCNQD1BWP12T30P140 mem_reg_4__0_ ( .D(n137), .CP(n262), .CDN(n257), .Q(
        mem[42]) );
  DFCNQD1BWP12T30P140 mem_reg_5__5_ ( .D(n136), .CP(n261), .CDN(n257), .Q(
        mem[41]) );
  DFCNQD1BWP12T30P140 mem_reg_5__4_ ( .D(n135), .CP(n261), .CDN(n257), .Q(
        mem[40]) );
  DFCNQD1BWP12T30P140 mem_reg_5__3_ ( .D(n134), .CP(n261), .CDN(n257), .Q(
        mem[39]) );
  DFCNQD1BWP12T30P140 mem_reg_5__2_ ( .D(n133), .CP(n261), .CDN(n257), .Q(
        mem[38]) );
  DFCNQD1BWP12T30P140 mem_reg_5__1_ ( .D(n132), .CP(n261), .CDN(n257), .Q(
        mem[37]) );
  DFCNQD1BWP12T30P140 mem_reg_5__0_ ( .D(n131), .CP(n261), .CDN(n257), .Q(
        mem[36]) );
  DFCNQD1BWP12T30P140 mem_reg_8__5_ ( .D(n118), .CP(n260), .CDN(n259), .Q(
        mem[23]) );
  DFCNQD1BWP12T30P140 mem_reg_8__4_ ( .D(n117), .CP(n260), .CDN(n257), .Q(
        mem[22]) );
  DFCNQD1BWP12T30P140 mem_reg_8__3_ ( .D(n116), .CP(n260), .CDN(n256), .Q(
        mem[21]) );
  DFCNQD1BWP12T30P140 mem_reg_8__2_ ( .D(n115), .CP(n260), .CDN(n258), .Q(
        mem[20]) );
  DFCNQD1BWP12T30P140 mem_reg_8__1_ ( .D(n114), .CP(n260), .CDN(n258), .Q(
        mem[19]) );
  DFCNQD1BWP12T30P140 mem_reg_9__5_ ( .D(n112), .CP(clk), .CDN(n258), .Q(
        mem[17]) );
  DFCNQD1BWP12T30P140 mem_reg_9__4_ ( .D(n111), .CP(n260), .CDN(n258), .Q(
        mem[16]) );
  DFCNQD1BWP12T30P140 mem_reg_9__3_ ( .D(n110), .CP(n262), .CDN(n258), .Q(
        mem[15]) );
  DFCNQD1BWP12T30P140 mem_reg_9__2_ ( .D(n109), .CP(n263), .CDN(n258), .Q(
        mem[14]) );
  DFCNQD1BWP12T30P140 mem_reg_9__1_ ( .D(n108), .CP(clk), .CDN(n258), .Q(
        mem[13]) );
  INVD0BWP12T30P140 U175 ( .I(write_addr[0]), .ZN(n172) );
  ND3D0BWP12T30P140 U176 ( .A1(n172), .A2(write_addr[1]), .A3(write_en), .ZN(
        n171) );
  NR4D0BWP12T30P140 U177 ( .A1(write_addr[4]), .A2(write_addr[5]), .A3(
        write_addr[6]), .A4(write_addr[7]), .ZN(n167) );
  IND2D1BWP12T30P140 U178 ( .A1(write_addr[2]), .B1(n167), .ZN(n168) );
  IND2D1BWP12T30P140 U179 ( .A1(n168), .B1(write_addr[3]), .ZN(n192) );
  NR2D0BWP12T30P140 U180 ( .A1(n171), .A2(n192), .ZN(n195) );
  INVD0BWP12T30P140 U181 ( .I(write_data[5]), .ZN(n207) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n195), .A2(n207), .B1(mem[11]), .B2(n195), 
        .ZN(n106) );
  ND3D0BWP12T30P140 U183 ( .A1(write_addr[1]), .A2(write_addr[0]), .A3(
        write_en), .ZN(n170) );
  IND3D1BWP12T30P140 U184 ( .A1(write_addr[3]), .B1(write_addr[2]), .B2(n167), 
        .ZN(n184) );
  NR2D0BWP12T30P140 U185 ( .A1(n170), .A2(n184), .ZN(n185) );
  INVD0BWP12T30P140 U186 ( .I(write_data[1]), .ZN(n194) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n185), .A2(n194), .B1(mem[25]), .B2(n185), 
        .ZN(n120) );
  INVD0BWP12T30P140 U188 ( .I(write_data[4]), .ZN(n208) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n195), .A2(n208), .B1(mem[10]), .B2(n195), 
        .ZN(n105) );
  INVD0BWP12T30P140 U190 ( .I(write_data[2]), .ZN(n254) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n185), .A2(n254), .B1(mem[26]), .B2(n185), 
        .ZN(n121) );
  INVD0BWP12T30P140 U192 ( .I(write_data[3]), .ZN(n237) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n195), .A2(n237), .B1(mem[9]), .B2(n195), 
        .ZN(n104) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n185), .A2(n237), .B1(mem[27]), .B2(n185), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n195), .A2(n254), .B1(mem[8]), .B2(n195), 
        .ZN(n103) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n185), .A2(n208), .B1(mem[28]), .B2(n185), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n195), .A2(n194), .B1(mem[7]), .B2(n195), 
        .ZN(n102) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n185), .A2(n207), .B1(mem[29]), .B2(n185), 
        .ZN(n124) );
  NR2D0BWP12T30P140 U199 ( .A1(n170), .A2(n192), .ZN(n191) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n191), .A2(n207), .B1(mem[5]), .B2(n191), 
        .ZN(n100) );
  NR2D0BWP12T30P140 U201 ( .A1(n171), .A2(n184), .ZN(n169) );
  INVD0BWP12T30P140 U202 ( .I(write_data[0]), .ZN(n205) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n169), .A2(n205), .B1(mem[30]), .B2(n169), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n191), .A2(n208), .B1(mem[4]), .B2(n191), 
        .ZN(n99) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n169), .A2(n194), .B1(mem[31]), .B2(n169), 
        .ZN(n126) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n191), .A2(n237), .B1(mem[3]), .B2(n191), 
        .ZN(n98) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n169), .A2(n254), .B1(mem[32]), .B2(n169), 
        .ZN(n127) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n191), .A2(n254), .B1(mem[2]), .B2(n191), 
        .ZN(n97) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n169), .A2(n237), .B1(mem[33]), .B2(n169), 
        .ZN(n128) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n191), .A2(n194), .B1(mem[1]), .B2(n191), 
        .ZN(n96) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n169), .A2(n208), .B1(mem[34]), .B2(n169), 
        .ZN(n129) );
  OR2D0BWP12T30P140 U212 ( .A1(write_addr[3]), .A2(n168), .Z(n186) );
  IND3D1BWP12T30P140 U213 ( .A1(write_addr[1]), .B1(write_en), .B2(
        write_addr[0]), .ZN(n193) );
  NR2D0BWP12T30P140 U214 ( .A1(n186), .A2(n193), .ZN(n189) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n189), .A2(n207), .B1(mem[65]), .B2(n189), 
        .ZN(n160) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n169), .A2(n207), .B1(mem[35]), .B2(n169), 
        .ZN(n130) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n189), .A2(n208), .B1(mem[64]), .B2(n189), 
        .ZN(n159) );
  MAOI22D0BWP12T30P140 U218 ( .A1(n189), .A2(n237), .B1(mem[63]), .B2(n189), 
        .ZN(n158) );
  NR2D0BWP12T30P140 U219 ( .A1(n186), .A2(n170), .ZN(n173) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n173), .A2(n205), .B1(mem[48]), .B2(n173), 
        .ZN(n143) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n189), .A2(n254), .B1(mem[62]), .B2(n189), 
        .ZN(n157) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n189), .A2(n194), .B1(mem[61]), .B2(n189), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n173), .A2(n194), .B1(mem[49]), .B2(n173), 
        .ZN(n144) );
  NR2D0BWP12T30P140 U224 ( .A1(n186), .A2(n171), .ZN(n188) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n188), .A2(n205), .B1(mem[54]), .B2(n188), 
        .ZN(n149) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n173), .A2(n254), .B1(mem[50]), .B2(n173), 
        .ZN(n145) );
  IND3D1BWP12T30P140 U227 ( .A1(write_addr[1]), .B1(write_en), .B2(n172), .ZN(
        n187) );
  NR2D0BWP12T30P140 U228 ( .A1(n187), .A2(n184), .ZN(n183) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n183), .A2(n207), .B1(mem[47]), .B2(n183), 
        .ZN(n142) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n173), .A2(n237), .B1(mem[51]), .B2(n173), 
        .ZN(n146) );
  MAOI22D0BWP12T30P140 U231 ( .A1(n183), .A2(n208), .B1(mem[46]), .B2(n183), 
        .ZN(n141) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n173), .A2(n208), .B1(mem[52]), .B2(n173), 
        .ZN(n147) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n183), .A2(n237), .B1(mem[45]), .B2(n183), 
        .ZN(n140) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n173), .A2(n207), .B1(mem[53]), .B2(n173), 
        .ZN(n148) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n183), .A2(n254), .B1(mem[44]), .B2(n183), 
        .ZN(n139) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n188), .A2(n194), .B1(mem[55]), .B2(n188), 
        .ZN(n150) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n183), .A2(n194), .B1(mem[43]), .B2(n183), 
        .ZN(n138) );
  INR2D1BWP12T30P140 U238 ( .A1(read_addr[0]), .B1(read_addr[1]), .ZN(n241) );
  AN2D0BWP12T30P140 U239 ( .A1(read_addr[0]), .A2(read_addr[1]), .Z(n240) );
  AOI22D0BWP12T30P140 U240 ( .A1(n241), .A2(mem[17]), .B1(n240), .B2(mem[5]), 
        .ZN(n182) );
  NR2D0BWP12T30P140 U241 ( .A1(read_addr[1]), .A2(read_addr[0]), .ZN(n249) );
  INR2D1BWP12T30P140 U242 ( .A1(read_addr[1]), .B1(read_addr[0]), .ZN(n248) );
  AOI22D0BWP12T30P140 U243 ( .A1(n249), .A2(mem[71]), .B1(n248), .B2(mem[59]), 
        .ZN(n175) );
  AOI22D0BWP12T30P140 U244 ( .A1(n241), .A2(mem[65]), .B1(n240), .B2(mem[53]), 
        .ZN(n174) );
  ND2D0BWP12T30P140 U245 ( .A1(n175), .A2(n174), .ZN(n179) );
  INR3D1BWP12T30P140 U246 ( .A1(read_en), .B1(read_addr[3]), .B2(read_addr[2]), 
        .ZN(n246) );
  AOI22D0BWP12T30P140 U247 ( .A1(n241), .A2(mem[41]), .B1(n240), .B2(mem[29]), 
        .ZN(n177) );
  AOI22D0BWP12T30P140 U248 ( .A1(n249), .A2(mem[47]), .B1(n248), .B2(mem[35]), 
        .ZN(n176) );
  IND3D1BWP12T30P140 U249 ( .A1(read_addr[3]), .B1(read_en), .B2(read_addr[2]), 
        .ZN(n242) );
  AOI21D0BWP12T30P140 U250 ( .A1(n177), .A2(n176), .B(n242), .ZN(n178) );
  AOI21D0BWP12T30P140 U251 ( .A1(n179), .A2(n246), .B(n178), .ZN(n181) );
  AOI22D0BWP12T30P140 U252 ( .A1(n249), .A2(mem[23]), .B1(n248), .B2(mem[11]), 
        .ZN(n180) );
  ND2D0BWP12T30P140 U253 ( .A1(read_en), .A2(read_addr[3]), .ZN(n250) );
  AOI32D0BWP12T30P140 U254 ( .A1(n182), .A2(n181), .A3(n180), .B1(n250), .B2(
        n181), .ZN(N53) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n183), .A2(n205), .B1(mem[42]), .B2(n183), 
        .ZN(n137) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n188), .A2(n254), .B1(mem[56]), .B2(n188), 
        .ZN(n151) );
  NR2D0BWP12T30P140 U257 ( .A1(n193), .A2(n184), .ZN(n190) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n190), .A2(n207), .B1(mem[41]), .B2(n190), 
        .ZN(n136) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n188), .A2(n237), .B1(mem[57]), .B2(n188), 
        .ZN(n152) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n185), .A2(n205), .B1(mem[24]), .B2(n185), 
        .ZN(n119) );
  NR2D0BWP12T30P140 U261 ( .A1(n187), .A2(n192), .ZN(n206) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n206), .A2(n194), .B1(mem[19]), .B2(n206), 
        .ZN(n114) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n190), .A2(n208), .B1(mem[40]), .B2(n190), 
        .ZN(n135) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n188), .A2(n208), .B1(mem[58]), .B2(n188), 
        .ZN(n153) );
  NR2D0BWP12T30P140 U265 ( .A1(n187), .A2(n186), .ZN(n209) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n209), .A2(n194), .B1(mem[67]), .B2(n209), 
        .ZN(n162) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n190), .A2(n254), .B1(mem[38]), .B2(n190), 
        .ZN(n133) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n190), .A2(n237), .B1(mem[39]), .B2(n190), 
        .ZN(n134) );
  MAOI22D0BWP12T30P140 U269 ( .A1(n209), .A2(n254), .B1(mem[68]), .B2(n209), 
        .ZN(n163) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n188), .A2(n207), .B1(mem[59]), .B2(n188), 
        .ZN(n154) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n209), .A2(n237), .B1(mem[69]), .B2(n209), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n190), .A2(n194), .B1(mem[37]), .B2(n190), 
        .ZN(n132) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n206), .A2(n207), .B1(mem[23]), .B2(n206), 
        .ZN(n118) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n189), .A2(n205), .B1(mem[60]), .B2(n189), 
        .ZN(n155) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n206), .A2(n254), .B1(mem[20]), .B2(n206), 
        .ZN(n115) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n190), .A2(n205), .B1(mem[36]), .B2(n190), 
        .ZN(n131) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n209), .A2(n205), .B1(mem[66]), .B2(n209), 
        .ZN(n161) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n191), .A2(n205), .B1(mem[0]), .B2(n191), 
        .ZN(n95) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n207), .A2(n209), .B1(n209), .B2(mem[71]), 
        .ZN(n166) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n206), .A2(n208), .B1(mem[22]), .B2(n206), 
        .ZN(n117) );
  NR2D0BWP12T30P140 U281 ( .A1(n193), .A2(n192), .ZN(n255) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n255), .A2(n194), .B1(mem[13]), .B2(n255), 
        .ZN(n108) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n255), .A2(n205), .B1(mem[12]), .B2(n255), 
        .ZN(n107) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n195), .A2(n205), .B1(mem[6]), .B2(n195), 
        .ZN(n101) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n206), .A2(n237), .B1(mem[21]), .B2(n206), 
        .ZN(n116) );
  AOI22D0BWP12T30P140 U286 ( .A1(mem[12]), .A2(n241), .B1(mem[0]), .B2(n240), 
        .ZN(n204) );
  AOI22D0BWP12T30P140 U287 ( .A1(n249), .A2(mem[66]), .B1(n240), .B2(mem[48]), 
        .ZN(n197) );
  AOI22D0BWP12T30P140 U288 ( .A1(n248), .A2(mem[54]), .B1(n241), .B2(mem[60]), 
        .ZN(n196) );
  ND2D0BWP12T30P140 U289 ( .A1(n197), .A2(n196), .ZN(n201) );
  AOI22D0BWP12T30P140 U290 ( .A1(n241), .A2(mem[36]), .B1(n240), .B2(mem[24]), 
        .ZN(n199) );
  AOI22D0BWP12T30P140 U291 ( .A1(n249), .A2(mem[42]), .B1(n248), .B2(mem[30]), 
        .ZN(n198) );
  AOI21D0BWP12T30P140 U292 ( .A1(n199), .A2(n198), .B(n242), .ZN(n200) );
  AOI21D0BWP12T30P140 U293 ( .A1(n201), .A2(n246), .B(n200), .ZN(n203) );
  AOI22D0BWP12T30P140 U294 ( .A1(mem[18]), .A2(n249), .B1(mem[6]), .B2(n248), 
        .ZN(n202) );
  AOI32D0BWP12T30P140 U295 ( .A1(n204), .A2(n203), .A3(n202), .B1(n250), .B2(
        n203), .ZN(N48) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n206), .A2(n205), .B1(mem[18]), .B2(n206), 
        .ZN(n113) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n255), .A2(n207), .B1(mem[17]), .B2(n255), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n255), .A2(n208), .B1(mem[16]), .B2(n255), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n209), .A2(n208), .B1(mem[70]), .B2(n209), 
        .ZN(n165) );
  AOI22D0BWP12T30P140 U300 ( .A1(n241), .A2(mem[13]), .B1(n240), .B2(mem[1]), 
        .ZN(n218) );
  AOI22D0BWP12T30P140 U301 ( .A1(n249), .A2(mem[67]), .B1(n248), .B2(mem[55]), 
        .ZN(n211) );
  AOI22D0BWP12T30P140 U302 ( .A1(n241), .A2(mem[61]), .B1(n240), .B2(mem[49]), 
        .ZN(n210) );
  ND2D0BWP12T30P140 U303 ( .A1(n211), .A2(n210), .ZN(n215) );
  AOI22D0BWP12T30P140 U304 ( .A1(n241), .A2(mem[37]), .B1(n240), .B2(mem[25]), 
        .ZN(n213) );
  AOI22D0BWP12T30P140 U305 ( .A1(n249), .A2(mem[43]), .B1(n248), .B2(mem[31]), 
        .ZN(n212) );
  AOI21D0BWP12T30P140 U306 ( .A1(n213), .A2(n212), .B(n242), .ZN(n214) );
  AOI21D0BWP12T30P140 U307 ( .A1(n215), .A2(n246), .B(n214), .ZN(n217) );
  AOI22D0BWP12T30P140 U308 ( .A1(n249), .A2(mem[19]), .B1(n248), .B2(mem[7]), 
        .ZN(n216) );
  AOI32D0BWP12T30P140 U309 ( .A1(n218), .A2(n217), .A3(n216), .B1(n250), .B2(
        n217), .ZN(N49) );
  AOI22D0BWP12T30P140 U310 ( .A1(n241), .A2(mem[16]), .B1(n240), .B2(mem[4]), 
        .ZN(n227) );
  AOI22D0BWP12T30P140 U311 ( .A1(n249), .A2(mem[70]), .B1(n248), .B2(mem[58]), 
        .ZN(n220) );
  AOI22D0BWP12T30P140 U312 ( .A1(n241), .A2(mem[64]), .B1(n240), .B2(mem[52]), 
        .ZN(n219) );
  ND2D0BWP12T30P140 U313 ( .A1(n220), .A2(n219), .ZN(n224) );
  AOI22D0BWP12T30P140 U314 ( .A1(n241), .A2(mem[40]), .B1(n240), .B2(mem[28]), 
        .ZN(n222) );
  AOI22D0BWP12T30P140 U315 ( .A1(n249), .A2(mem[46]), .B1(n248), .B2(mem[34]), 
        .ZN(n221) );
  AOI21D0BWP12T30P140 U316 ( .A1(n222), .A2(n221), .B(n242), .ZN(n223) );
  AOI21D0BWP12T30P140 U317 ( .A1(n224), .A2(n246), .B(n223), .ZN(n226) );
  AOI22D0BWP12T30P140 U318 ( .A1(n249), .A2(mem[22]), .B1(n248), .B2(mem[10]), 
        .ZN(n225) );
  AOI32D0BWP12T30P140 U319 ( .A1(n227), .A2(n226), .A3(n225), .B1(n250), .B2(
        n226), .ZN(N52) );
  AOI22D0BWP12T30P140 U320 ( .A1(n241), .A2(mem[14]), .B1(n240), .B2(mem[2]), 
        .ZN(n236) );
  AOI22D0BWP12T30P140 U321 ( .A1(n249), .A2(mem[68]), .B1(n248), .B2(mem[56]), 
        .ZN(n229) );
  AOI22D0BWP12T30P140 U322 ( .A1(n241), .A2(mem[62]), .B1(n240), .B2(mem[50]), 
        .ZN(n228) );
  ND2D0BWP12T30P140 U323 ( .A1(n229), .A2(n228), .ZN(n233) );
  AOI22D0BWP12T30P140 U324 ( .A1(n241), .A2(mem[38]), .B1(n240), .B2(mem[26]), 
        .ZN(n231) );
  AOI22D0BWP12T30P140 U325 ( .A1(n249), .A2(mem[44]), .B1(n248), .B2(mem[32]), 
        .ZN(n230) );
  AOI21D0BWP12T30P140 U326 ( .A1(n231), .A2(n230), .B(n242), .ZN(n232) );
  AOI21D0BWP12T30P140 U327 ( .A1(n233), .A2(n246), .B(n232), .ZN(n235) );
  AOI22D0BWP12T30P140 U328 ( .A1(n249), .A2(mem[20]), .B1(n248), .B2(mem[8]), 
        .ZN(n234) );
  AOI32D0BWP12T30P140 U329 ( .A1(n236), .A2(n235), .A3(n234), .B1(n250), .B2(
        n235), .ZN(N50) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n255), .A2(n237), .B1(mem[15]), .B2(n255), 
        .ZN(n110) );
  AOI22D0BWP12T30P140 U331 ( .A1(n241), .A2(mem[15]), .B1(n240), .B2(mem[3]), 
        .ZN(n253) );
  AOI22D0BWP12T30P140 U332 ( .A1(n249), .A2(mem[69]), .B1(n248), .B2(mem[57]), 
        .ZN(n239) );
  AOI22D0BWP12T30P140 U333 ( .A1(n241), .A2(mem[63]), .B1(n240), .B2(mem[51]), 
        .ZN(n238) );
  ND2D0BWP12T30P140 U334 ( .A1(n239), .A2(n238), .ZN(n247) );
  AOI22D0BWP12T30P140 U335 ( .A1(n241), .A2(mem[39]), .B1(n240), .B2(mem[27]), 
        .ZN(n244) );
  AOI22D0BWP12T30P140 U336 ( .A1(n249), .A2(mem[45]), .B1(n248), .B2(mem[33]), 
        .ZN(n243) );
  AOI21D0BWP12T30P140 U337 ( .A1(n244), .A2(n243), .B(n242), .ZN(n245) );
  AOI21D0BWP12T30P140 U338 ( .A1(n247), .A2(n246), .B(n245), .ZN(n252) );
  AOI22D0BWP12T30P140 U339 ( .A1(n249), .A2(mem[21]), .B1(n248), .B2(mem[9]), 
        .ZN(n251) );
  AOI32D0BWP12T30P140 U340 ( .A1(n253), .A2(n252), .A3(n251), .B1(n250), .B2(
        n252), .ZN(N51) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n255), .A2(n254), .B1(mem[14]), .B2(n255), 
        .ZN(n109) );
  CKBD0BWP12T30P140 U342 ( .I(clk), .Z(n261) );
  CKBD0BWP12T30P140 U343 ( .I(clk), .Z(n263) );
  CKBD0BWP12T30P140 U344 ( .I(clk), .Z(n262) );
  CKBD0BWP12T30P140 U345 ( .I(clk), .Z(n260) );
  CKBD0BWP12T30P140 U346 ( .I(rst_n), .Z(n256) );
  CKBD0BWP12T30P140 U347 ( .I(rst_n), .Z(n257) );
  CKBD0BWP12T30P140 U348 ( .I(rst_n), .Z(n259) );
  CKBD0BWP12T30P140 U349 ( .I(rst_n), .Z(n258) );
endmodule

