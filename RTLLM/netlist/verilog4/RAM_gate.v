/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:51:36 2026
/////////////////////////////////////////////////////////////


module RAM ( clk, rst_n, write_en, write_addr, write_data, read_en, read_addr, 
        read_data );
  input [7:0] write_addr;
  input [5:0] write_data;
  input [7:0] read_addr;
  output [5:0] read_data;
  input clk, rst_n, write_en, read_en;
  wire   N89, N90, N91, N92, N93, N94, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276;
  wire   [71:0] mem;
  wire   [5:0] rd_data_r;

  DFCNQD1BWP12T30P140 read_data_reg_5_ ( .D(N94), .CP(clk), .CDN(rst_n), .Q(
        read_data[5]) );
  DFCNQD1BWP12T30P140 read_data_reg_4_ ( .D(N93), .CP(clk), .CDN(rst_n), .Q(
        read_data[4]) );
  DFCNQD1BWP12T30P140 read_data_reg_3_ ( .D(N92), .CP(clk), .CDN(rst_n), .Q(
        read_data[3]) );
  DFCNQD1BWP12T30P140 read_data_reg_2_ ( .D(N91), .CP(clk), .CDN(rst_n), .Q(
        read_data[2]) );
  DFCNQD1BWP12T30P140 read_data_reg_1_ ( .D(N90), .CP(clk), .CDN(rst_n), .Q(
        read_data[1]) );
  DFCNQD1BWP12T30P140 read_data_reg_0_ ( .D(N89), .CP(clk), .CDN(rst_n), .Q(
        read_data[0]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_5_ ( .D(n107), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[5]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_4_ ( .D(n106), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[4]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_3_ ( .D(n105), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[3]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_2_ ( .D(n104), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[2]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_1_ ( .D(n103), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[1]) );
  DFCNQD1BWP12T30P140 rd_data_r_reg_0_ ( .D(n102), .CP(clk), .CDN(rst_n), .Q(
        rd_data_r[0]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n179), .CP(n275), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_0__4_ ( .D(n178), .CP(n273), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n176), .CP(n273), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n175), .CP(n273), .Q(mem[67]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n174), .CP(n273), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n173), .CP(n273), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_1__4_ ( .D(n172), .CP(n273), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n171), .CP(n273), .Q(mem[63]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n170), .CP(n273), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n169), .CP(n273), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n168), .CP(n273), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_6__5_ ( .D(n143), .CP(n276), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_6__4_ ( .D(n142), .CP(n275), .Q(mem[34]) );
  DFQD2BWP12T30P140 mem_reg_6__3_ ( .D(n141), .CP(n275), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_6__2_ ( .D(n140), .CP(n275), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n139), .CP(n275), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_7__5_ ( .D(n137), .CP(n275), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_7__4_ ( .D(n136), .CP(n275), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_7__3_ ( .D(n135), .CP(n275), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_7__2_ ( .D(n134), .CP(n275), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n133), .CP(n275), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n132), .CP(n275), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_8__5_ ( .D(n131), .CP(n276), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_8__4_ ( .D(n130), .CP(n276), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_8__3_ ( .D(n129), .CP(n276), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_8__2_ ( .D(n128), .CP(n276), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n127), .CP(n276), .Q(mem[19]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n126), .CP(n276), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_9__5_ ( .D(n125), .CP(n276), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_9__4_ ( .D(n124), .CP(n276), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_9__2_ ( .D(n122), .CP(n276), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n121), .CP(n276), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_9__0_ ( .D(n120), .CP(n276), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n167), .CP(n273), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n166), .CP(n274), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n165), .CP(n274), .Q(mem[57]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n164), .CP(n274), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n163), .CP(n274), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n162), .CP(n274), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n161), .CP(n274), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n160), .CP(n274), .Q(mem[52]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n159), .CP(n274), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n158), .CP(n274), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n157), .CP(n274), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_4__5_ ( .D(n155), .CP(n274), .Q(mem[47]) );
  DFQD2BWP12T30P140 mem_reg_4__4_ ( .D(n154), .CP(n275), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_4__3_ ( .D(n153), .CP(n274), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_4__2_ ( .D(n152), .CP(n273), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n151), .CP(n276), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n150), .CP(n275), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_5__5_ ( .D(n149), .CP(n274), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_5__4_ ( .D(n148), .CP(n273), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_5__3_ ( .D(n147), .CP(n276), .Q(mem[39]) );
  DFQD2BWP12T30P140 mem_reg_5__2_ ( .D(n146), .CP(n275), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n145), .CP(n274), .Q(mem[37]) );
  DFQD2BWP12T30P140 mem_reg_5__0_ ( .D(n144), .CP(n273), .Q(mem[36]) );
  DFQD2BWP12T30P140 mem_reg_10__5_ ( .D(n119), .CP(n276), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_10__4_ ( .D(n118), .CP(n275), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_10__2_ ( .D(n116), .CP(n274), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n115), .CP(n273), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_10__0_ ( .D(n114), .CP(n276), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_11__5_ ( .D(n113), .CP(n275), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_11__4_ ( .D(n112), .CP(n273), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_11__3_ ( .D(n111), .CP(n274), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_11__2_ ( .D(n110), .CP(n273), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n109), .CP(n276), .Q(mem[1]) );
  DFQD1BWP12T30P140 mem_reg_0__3_ ( .D(n177), .CP(n273), .Q(mem[69]) );
  DFQD1BWP12T30P140 mem_reg_6__0_ ( .D(n138), .CP(n275), .Q(mem[30]) );
  DFQD1BWP12T30P140 mem_reg_9__3_ ( .D(n123), .CP(n276), .Q(mem[15]) );
  DFQD1BWP12T30P140 mem_reg_3__0_ ( .D(n156), .CP(n274), .Q(mem[48]) );
  DFQD1BWP12T30P140 mem_reg_10__3_ ( .D(n117), .CP(n274), .Q(mem[9]) );
  DFQD1BWP12T30P140 mem_reg_11__0_ ( .D(n108), .CP(n275), .Q(mem[0]) );
  INVD0BWP12T30P140 U188 ( .I(write_addr[0]), .ZN(n218) );
  NR4D0BWP12T30P140 U189 ( .A1(write_addr[6]), .A2(write_addr[7]), .A3(
        write_addr[4]), .A4(write_addr[5]), .ZN(n180) );
  ND2D0BWP12T30P140 U190 ( .A1(write_en), .A2(n180), .ZN(n181) );
  INR3D1BWP12T30P140 U191 ( .A1(write_addr[2]), .B1(write_addr[3]), .B2(n181), 
        .ZN(n190) );
  ND2D0BWP12T30P140 U192 ( .A1(write_addr[1]), .A2(n190), .ZN(n182) );
  NR2D0BWP12T30P140 U193 ( .A1(n218), .A2(n182), .ZN(n191) );
  INVD0BWP12T30P140 U194 ( .I(write_data[4]), .ZN(n238) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n191), .A2(n238), .B1(mem[28]), .B2(n191), 
        .ZN(n136) );
  INVD0BWP12T30P140 U196 ( .I(write_data[2]), .ZN(n237) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n191), .A2(n237), .B1(mem[26]), .B2(n191), 
        .ZN(n134) );
  INVD0BWP12T30P140 U198 ( .I(write_data[1]), .ZN(n270) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n191), .A2(n270), .B1(mem[25]), .B2(n191), 
        .ZN(n133) );
  INVD0BWP12T30P140 U200 ( .I(write_data[5]), .ZN(n239) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n191), .A2(n239), .B1(mem[29]), .B2(n191), 
        .ZN(n137) );
  INVD0BWP12T30P140 U202 ( .I(write_data[0]), .ZN(n251) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n191), .A2(n251), .B1(mem[24]), .B2(n191), 
        .ZN(n132) );
  NR2D0BWP12T30P140 U204 ( .A1(write_addr[2]), .A2(n181), .ZN(n184) );
  ND2D0BWP12T30P140 U205 ( .A1(n184), .A2(n218), .ZN(n195) );
  INVD0BWP12T30P140 U206 ( .I(write_addr[3]), .ZN(n193) );
  NR3D0BWP12T30P140 U207 ( .A1(write_addr[1]), .A2(n195), .A3(n193), .ZN(n183)
         );
  MAOI22D0BWP12T30P140 U208 ( .A1(n183), .A2(n239), .B1(mem[23]), .B2(n183), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U209 ( .A1(write_addr[0]), .A2(n182), .ZN(n185) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n185), .A2(n251), .B1(mem[30]), .B2(n185), 
        .ZN(n138) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n183), .A2(n238), .B1(mem[22]), .B2(n183), 
        .ZN(n130) );
  INVD0BWP12T30P140 U212 ( .I(write_data[3]), .ZN(n252) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n183), .A2(n252), .B1(mem[21]), .B2(n183), 
        .ZN(n129) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n185), .A2(n270), .B1(mem[31]), .B2(n185), 
        .ZN(n139) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n183), .A2(n237), .B1(mem[20]), .B2(n183), 
        .ZN(n128) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n183), .A2(n270), .B1(mem[19]), .B2(n183), 
        .ZN(n127) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n185), .A2(n237), .B1(mem[32]), .B2(n185), 
        .ZN(n140) );
  MAOI22D0BWP12T30P140 U218 ( .A1(n183), .A2(n251), .B1(mem[18]), .B2(n183), 
        .ZN(n126) );
  ND2D0BWP12T30P140 U219 ( .A1(n184), .A2(write_addr[0]), .ZN(n192) );
  NR3D0BWP12T30P140 U220 ( .A1(write_addr[1]), .A2(n193), .A3(n192), .ZN(n186)
         );
  MAOI22D0BWP12T30P140 U221 ( .A1(n186), .A2(n239), .B1(mem[17]), .B2(n186), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n185), .A2(n252), .B1(mem[33]), .B2(n185), 
        .ZN(n141) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n186), .A2(n238), .B1(mem[16]), .B2(n186), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n186), .A2(n252), .B1(mem[15]), .B2(n186), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n185), .A2(n238), .B1(mem[34]), .B2(n185), 
        .ZN(n142) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n186), .A2(n237), .B1(mem[14]), .B2(n186), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n186), .A2(n270), .B1(mem[13]), .B2(n186), 
        .ZN(n121) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n185), .A2(n239), .B1(mem[35]), .B2(n185), 
        .ZN(n143) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n186), .A2(n251), .B1(mem[12]), .B2(n186), 
        .ZN(n120) );
  INVD0BWP12T30P140 U230 ( .I(write_addr[1]), .ZN(n194) );
  NR3D0BWP12T30P140 U231 ( .A1(write_addr[3]), .A2(n194), .A3(n195), .ZN(n187)
         );
  MAOI22D0BWP12T30P140 U232 ( .A1(n187), .A2(n239), .B1(mem[59]), .B2(n187), 
        .ZN(n167) );
  NR3D0BWP12T30P140 U233 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n192), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n188), .A2(n251), .B1(mem[60]), .B2(n188), 
        .ZN(n168) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n187), .A2(n238), .B1(mem[58]), .B2(n187), 
        .ZN(n166) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n187), .A2(n252), .B1(mem[57]), .B2(n187), 
        .ZN(n165) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n188), .A2(n270), .B1(mem[61]), .B2(n188), 
        .ZN(n169) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n187), .A2(n237), .B1(mem[56]), .B2(n187), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n187), .A2(n270), .B1(mem[55]), .B2(n187), 
        .ZN(n163) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n188), .A2(n237), .B1(mem[62]), .B2(n188), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n187), .A2(n251), .B1(mem[54]), .B2(n187), 
        .ZN(n162) );
  NR3D0BWP12T30P140 U242 ( .A1(write_addr[3]), .A2(n194), .A3(n192), .ZN(n189)
         );
  MAOI22D0BWP12T30P140 U243 ( .A1(n189), .A2(n239), .B1(mem[53]), .B2(n189), 
        .ZN(n161) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n188), .A2(n252), .B1(mem[63]), .B2(n188), 
        .ZN(n171) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n189), .A2(n238), .B1(mem[52]), .B2(n189), 
        .ZN(n160) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n189), .A2(n252), .B1(mem[51]), .B2(n189), 
        .ZN(n159) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n188), .A2(n238), .B1(mem[64]), .B2(n188), 
        .ZN(n172) );
  MAOI22D0BWP12T30P140 U248 ( .A1(n189), .A2(n237), .B1(mem[50]), .B2(n189), 
        .ZN(n158) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n189), .A2(n270), .B1(mem[49]), .B2(n189), 
        .ZN(n157) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n188), .A2(n239), .B1(mem[65]), .B2(n188), 
        .ZN(n173) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n189), .A2(n251), .B1(mem[48]), .B2(n189), 
        .ZN(n156) );
  ND2D0BWP12T30P140 U252 ( .A1(n190), .A2(n194), .ZN(n217) );
  NR2D0BWP12T30P140 U253 ( .A1(write_addr[0]), .A2(n217), .ZN(n207) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n207), .A2(n239), .B1(mem[47]), .B2(n207), 
        .ZN(n155) );
  NR3D0BWP12T30P140 U255 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n195), 
        .ZN(n240) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n240), .A2(n251), .B1(mem[66]), .B2(n240), 
        .ZN(n174) );
  MAOI22D0BWP12T30P140 U257 ( .A1(n207), .A2(n238), .B1(mem[46]), .B2(n207), 
        .ZN(n154) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n191), .A2(n252), .B1(mem[27]), .B2(n191), 
        .ZN(n135) );
  NR3D0BWP12T30P140 U259 ( .A1(n194), .A2(n193), .A3(n192), .ZN(n271) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n271), .A2(n237), .B1(mem[2]), .B2(n271), 
        .ZN(n110) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n207), .A2(n252), .B1(mem[45]), .B2(n207), 
        .ZN(n153) );
  NR3D0BWP12T30P140 U262 ( .A1(n195), .A2(n194), .A3(n193), .ZN(n253) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n253), .A2(n239), .B1(mem[11]), .B2(n253), 
        .ZN(n119) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n240), .A2(n270), .B1(mem[67]), .B2(n240), 
        .ZN(n175) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n207), .A2(n237), .B1(mem[44]), .B2(n207), 
        .ZN(n152) );
  MAOI22D0BWP12T30P140 U266 ( .A1(n253), .A2(n238), .B1(mem[10]), .B2(n253), 
        .ZN(n118) );
  INVD0BWP12T30P140 U267 ( .I(read_addr[1]), .ZN(n196) );
  AN2D0BWP12T30P140 U268 ( .A1(read_addr[0]), .A2(n196), .Z(n257) );
  NR2D0BWP12T30P140 U269 ( .A1(read_addr[0]), .A2(n196), .ZN(n258) );
  AOI22D0BWP12T30P140 U270 ( .A1(mem[62]), .A2(n257), .B1(mem[56]), .B2(n258), 
        .ZN(n206) );
  INVD0BWP12T30P140 U271 ( .I(read_en), .ZN(n272) );
  AOI22D0BWP12T30P140 U272 ( .A1(mem[14]), .A2(n257), .B1(mem[8]), .B2(n258), 
        .ZN(n198) );
  NR2D0BWP12T30P140 U273 ( .A1(read_addr[0]), .A2(read_addr[1]), .ZN(n265) );
  INR2D1BWP12T30P140 U274 ( .A1(read_addr[0]), .B1(n196), .ZN(n264) );
  AOI22D0BWP12T30P140 U275 ( .A1(mem[20]), .A2(n265), .B1(mem[2]), .B2(n264), 
        .ZN(n197) );
  ND2D0BWP12T30P140 U276 ( .A1(read_addr[3]), .A2(read_en), .ZN(n254) );
  AOI21D0BWP12T30P140 U277 ( .A1(n198), .A2(n197), .B(n254), .ZN(n203) );
  AOI22D0BWP12T30P140 U278 ( .A1(mem[32]), .A2(n258), .B1(mem[38]), .B2(n257), 
        .ZN(n201) );
  AOI22D0BWP12T30P140 U279 ( .A1(mem[26]), .A2(n264), .B1(mem[44]), .B2(n265), 
        .ZN(n200) );
  NR2D0BWP12T30P140 U280 ( .A1(read_addr[3]), .A2(n272), .ZN(n199) );
  ND2D0BWP12T30P140 U281 ( .A1(read_addr[2]), .A2(n199), .ZN(n259) );
  AOI21D0BWP12T30P140 U282 ( .A1(n201), .A2(n200), .B(n259), .ZN(n202) );
  AOI211D0BWP12T30P140 U283 ( .A1(rd_data_r[2]), .A2(n272), .B(n203), .C(n202), 
        .ZN(n205) );
  AOI22D0BWP12T30P140 U284 ( .A1(mem[68]), .A2(n265), .B1(mem[50]), .B2(n264), 
        .ZN(n204) );
  OR3D0BWP12T30P140 U285 ( .A1(read_addr[2]), .A2(read_addr[3]), .A3(n272), 
        .Z(n266) );
  AOI32D0BWP12T30P140 U286 ( .A1(n206), .A2(n205), .A3(n204), .B1(n266), .B2(
        n205), .ZN(n104) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n207), .A2(n270), .B1(mem[43]), .B2(n207), 
        .ZN(n151) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n240), .A2(n237), .B1(mem[68]), .B2(n240), 
        .ZN(n176) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n207), .A2(n251), .B1(mem[42]), .B2(n207), 
        .ZN(n150) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n253), .A2(n237), .B1(mem[8]), .B2(n253), 
        .ZN(n116) );
  AOI22D0BWP12T30P140 U291 ( .A1(mem[64]), .A2(n257), .B1(mem[58]), .B2(n258), 
        .ZN(n216) );
  AOI22D0BWP12T30P140 U292 ( .A1(mem[16]), .A2(n257), .B1(mem[10]), .B2(n258), 
        .ZN(n209) );
  AOI22D0BWP12T30P140 U293 ( .A1(mem[22]), .A2(n265), .B1(mem[4]), .B2(n264), 
        .ZN(n208) );
  AOI21D0BWP12T30P140 U294 ( .A1(n209), .A2(n208), .B(n254), .ZN(n213) );
  AOI22D0BWP12T30P140 U295 ( .A1(mem[34]), .A2(n258), .B1(mem[40]), .B2(n257), 
        .ZN(n211) );
  AOI22D0BWP12T30P140 U296 ( .A1(mem[28]), .A2(n264), .B1(mem[46]), .B2(n265), 
        .ZN(n210) );
  AOI21D0BWP12T30P140 U297 ( .A1(n211), .A2(n210), .B(n259), .ZN(n212) );
  AOI211D0BWP12T30P140 U298 ( .A1(rd_data_r[4]), .A2(n272), .B(n213), .C(n212), 
        .ZN(n215) );
  AOI22D0BWP12T30P140 U299 ( .A1(mem[70]), .A2(n265), .B1(mem[52]), .B2(n264), 
        .ZN(n214) );
  AOI32D0BWP12T30P140 U300 ( .A1(n216), .A2(n215), .A3(n214), .B1(n266), .B2(
        n215), .ZN(n106) );
  NR2D0BWP12T30P140 U301 ( .A1(n218), .A2(n217), .ZN(n241) );
  MAOI22D0BWP12T30P140 U302 ( .A1(n241), .A2(n239), .B1(mem[41]), .B2(n241), 
        .ZN(n149) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n240), .A2(n252), .B1(mem[69]), .B2(n240), 
        .ZN(n177) );
  AOI22D0BWP12T30P140 U304 ( .A1(mem[65]), .A2(n257), .B1(mem[59]), .B2(n258), 
        .ZN(n227) );
  AOI22D0BWP12T30P140 U305 ( .A1(mem[17]), .A2(n257), .B1(mem[11]), .B2(n258), 
        .ZN(n220) );
  AOI22D0BWP12T30P140 U306 ( .A1(mem[23]), .A2(n265), .B1(mem[5]), .B2(n264), 
        .ZN(n219) );
  AOI21D0BWP12T30P140 U307 ( .A1(n220), .A2(n219), .B(n254), .ZN(n224) );
  AOI22D0BWP12T30P140 U308 ( .A1(mem[35]), .A2(n258), .B1(mem[41]), .B2(n257), 
        .ZN(n222) );
  AOI22D0BWP12T30P140 U309 ( .A1(mem[29]), .A2(n264), .B1(mem[47]), .B2(n265), 
        .ZN(n221) );
  AOI21D0BWP12T30P140 U310 ( .A1(n222), .A2(n221), .B(n259), .ZN(n223) );
  AOI211D0BWP12T30P140 U311 ( .A1(rd_data_r[5]), .A2(n272), .B(n224), .C(n223), 
        .ZN(n226) );
  AOI22D0BWP12T30P140 U312 ( .A1(mem[71]), .A2(n265), .B1(mem[53]), .B2(n264), 
        .ZN(n225) );
  AOI32D0BWP12T30P140 U313 ( .A1(n227), .A2(n226), .A3(n225), .B1(n266), .B2(
        n226), .ZN(n107) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n241), .A2(n238), .B1(mem[40]), .B2(n241), 
        .ZN(n148) );
  AOI22D0BWP12T30P140 U315 ( .A1(mem[60]), .A2(n257), .B1(mem[54]), .B2(n258), 
        .ZN(n236) );
  AOI22D0BWP12T30P140 U316 ( .A1(mem[12]), .A2(n257), .B1(mem[6]), .B2(n258), 
        .ZN(n229) );
  AOI22D0BWP12T30P140 U317 ( .A1(mem[18]), .A2(n265), .B1(mem[0]), .B2(n264), 
        .ZN(n228) );
  AOI21D0BWP12T30P140 U318 ( .A1(n229), .A2(n228), .B(n254), .ZN(n233) );
  AOI22D0BWP12T30P140 U319 ( .A1(mem[30]), .A2(n258), .B1(mem[36]), .B2(n257), 
        .ZN(n231) );
  AOI22D0BWP12T30P140 U320 ( .A1(mem[24]), .A2(n264), .B1(mem[42]), .B2(n265), 
        .ZN(n230) );
  AOI21D0BWP12T30P140 U321 ( .A1(n231), .A2(n230), .B(n259), .ZN(n232) );
  AOI211D0BWP12T30P140 U322 ( .A1(rd_data_r[0]), .A2(n272), .B(n233), .C(n232), 
        .ZN(n235) );
  AOI22D0BWP12T30P140 U323 ( .A1(mem[66]), .A2(n265), .B1(mem[48]), .B2(n264), 
        .ZN(n234) );
  AOI32D0BWP12T30P140 U324 ( .A1(n236), .A2(n235), .A3(n234), .B1(n266), .B2(
        n235), .ZN(n102) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n241), .A2(n252), .B1(mem[39]), .B2(n241), 
        .ZN(n147) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n271), .A2(n239), .B1(mem[5]), .B2(n271), 
        .ZN(n113) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n240), .A2(n238), .B1(mem[70]), .B2(n240), 
        .ZN(n178) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n241), .A2(n237), .B1(mem[38]), .B2(n241), 
        .ZN(n146) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n271), .A2(n238), .B1(mem[4]), .B2(n271), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n241), .A2(n270), .B1(mem[37]), .B2(n241), 
        .ZN(n145) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n240), .A2(n239), .B1(mem[71]), .B2(n240), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U332 ( .A1(n241), .A2(n251), .B1(mem[36]), .B2(n241), 
        .ZN(n144) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n271), .A2(n251), .B1(mem[0]), .B2(n271), 
        .ZN(n108) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n271), .A2(n252), .B1(mem[3]), .B2(n271), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n253), .A2(n270), .B1(mem[7]), .B2(n253), 
        .ZN(n115) );
  AOI22D0BWP12T30P140 U336 ( .A1(mem[61]), .A2(n257), .B1(mem[55]), .B2(n258), 
        .ZN(n250) );
  AOI22D0BWP12T30P140 U337 ( .A1(mem[13]), .A2(n257), .B1(mem[7]), .B2(n258), 
        .ZN(n243) );
  AOI22D0BWP12T30P140 U338 ( .A1(mem[19]), .A2(n265), .B1(mem[1]), .B2(n264), 
        .ZN(n242) );
  AOI21D0BWP12T30P140 U339 ( .A1(n243), .A2(n242), .B(n254), .ZN(n247) );
  AOI22D0BWP12T30P140 U340 ( .A1(mem[31]), .A2(n258), .B1(mem[37]), .B2(n257), 
        .ZN(n245) );
  AOI22D0BWP12T30P140 U341 ( .A1(mem[25]), .A2(n264), .B1(mem[43]), .B2(n265), 
        .ZN(n244) );
  AOI21D0BWP12T30P140 U342 ( .A1(n245), .A2(n244), .B(n259), .ZN(n246) );
  AOI211D0BWP12T30P140 U343 ( .A1(rd_data_r[1]), .A2(n272), .B(n247), .C(n246), 
        .ZN(n249) );
  AOI22D0BWP12T30P140 U344 ( .A1(mem[67]), .A2(n265), .B1(mem[49]), .B2(n264), 
        .ZN(n248) );
  AOI32D0BWP12T30P140 U345 ( .A1(n250), .A2(n249), .A3(n248), .B1(n266), .B2(
        n249), .ZN(n103) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n253), .A2(n251), .B1(mem[6]), .B2(n253), 
        .ZN(n114) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n253), .A2(n252), .B1(mem[9]), .B2(n253), 
        .ZN(n117) );
  AOI22D0BWP12T30P140 U348 ( .A1(mem[63]), .A2(n257), .B1(mem[57]), .B2(n258), 
        .ZN(n269) );
  AOI22D0BWP12T30P140 U349 ( .A1(mem[15]), .A2(n257), .B1(mem[9]), .B2(n258), 
        .ZN(n256) );
  AOI22D0BWP12T30P140 U350 ( .A1(mem[21]), .A2(n265), .B1(mem[3]), .B2(n264), 
        .ZN(n255) );
  AOI21D0BWP12T30P140 U351 ( .A1(n256), .A2(n255), .B(n254), .ZN(n263) );
  AOI22D0BWP12T30P140 U352 ( .A1(mem[33]), .A2(n258), .B1(mem[39]), .B2(n257), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U353 ( .A1(mem[27]), .A2(n264), .B1(mem[45]), .B2(n265), 
        .ZN(n260) );
  AOI21D0BWP12T30P140 U354 ( .A1(n261), .A2(n260), .B(n259), .ZN(n262) );
  AOI211D0BWP12T30P140 U355 ( .A1(rd_data_r[3]), .A2(n272), .B(n263), .C(n262), 
        .ZN(n268) );
  AOI22D0BWP12T30P140 U356 ( .A1(mem[69]), .A2(n265), .B1(mem[51]), .B2(n264), 
        .ZN(n267) );
  AOI32D0BWP12T30P140 U357 ( .A1(n269), .A2(n268), .A3(n267), .B1(n266), .B2(
        n268), .ZN(n105) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n271), .A2(n270), .B1(mem[1]), .B2(n271), 
        .ZN(n109) );
  CKBD0BWP12T30P140 U359 ( .I(clk), .Z(n275) );
  CKBD0BWP12T30P140 U360 ( .I(clk), .Z(n276) );
  CKBD0BWP12T30P140 U361 ( .I(clk), .Z(n273) );
  CKBD0BWP12T30P140 U362 ( .I(clk), .Z(n274) );
  INR2D1BWP12T30P140 U363 ( .A1(rd_data_r[0]), .B1(n272), .ZN(N89) );
  INR2D1BWP12T30P140 U364 ( .A1(rd_data_r[1]), .B1(n272), .ZN(N90) );
  INR2D1BWP12T30P140 U365 ( .A1(rd_data_r[2]), .B1(n272), .ZN(N91) );
  INR2D1BWP12T30P140 U366 ( .A1(rd_data_r[3]), .B1(n272), .ZN(N92) );
  INR2D1BWP12T30P140 U367 ( .A1(rd_data_r[4]), .B1(n272), .ZN(N93) );
  INR2D1BWP12T30P140 U368 ( .A1(rd_data_r[5]), .B1(n272), .ZN(N94) );
endmodule

