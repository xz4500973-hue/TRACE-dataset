/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:14:15 2026
/////////////////////////////////////////////////////////////


module RAM ( clk, rst_n, write_en, write_addr, write_data, read_en, read_addr, 
        read_data );
  input [7:0] write_addr;
  input [5:0] write_data;
  input [7:0] read_addr;
  output [5:0] read_data;
  input clk, rst_n, write_en, read_en;
  wire   N64, N65, N66, N67, N68, N69, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369;
  wire   [71:0] mem;

  DFCNQD1BWP12T30P140 read_data_reg_5_ ( .D(N69), .CP(clk), .CDN(rst_n), .Q(
        read_data[5]) );
  DFCNQD1BWP12T30P140 read_data_reg_4_ ( .D(N68), .CP(clk), .CDN(rst_n), .Q(
        read_data[4]) );
  DFCNQD1BWP12T30P140 read_data_reg_3_ ( .D(N67), .CP(clk), .CDN(rst_n), .Q(
        read_data[3]) );
  DFCNQD1BWP12T30P140 read_data_reg_2_ ( .D(N66), .CP(clk), .CDN(rst_n), .Q(
        read_data[2]) );
  DFCNQD1BWP12T30P140 read_data_reg_1_ ( .D(N65), .CP(clk), .CDN(rst_n), .Q(
        read_data[1]) );
  DFCNQD1BWP12T30P140 read_data_reg_0_ ( .D(N64), .CP(clk), .CDN(rst_n), .Q(
        read_data[0]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n248), .CP(n367), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_0__4_ ( .D(n247), .CP(n366), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n246), .CP(n366), .Q(mem[69]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n245), .CP(n366), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n244), .CP(n366), .Q(mem[67]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n243), .CP(n366), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n242), .CP(n366), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_1__4_ ( .D(n241), .CP(n366), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n239), .CP(n366), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n238), .CP(n366), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n237), .CP(n366), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n236), .CP(n366), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n235), .CP(n367), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n234), .CP(n366), .Q(mem[57]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n233), .CP(clk), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n232), .CP(n369), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n231), .CP(n368), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n230), .CP(n367), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n229), .CP(n366), .Q(mem[52]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n228), .CP(clk), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n227), .CP(n369), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n226), .CP(n368), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_6__5_ ( .D(n212), .CP(n366), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_6__4_ ( .D(n211), .CP(n367), .Q(mem[34]) );
  DFQD2BWP12T30P140 mem_reg_6__3_ ( .D(n210), .CP(n367), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_6__2_ ( .D(n209), .CP(n367), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n208), .CP(n367), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_6__0_ ( .D(n207), .CP(n367), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_7__5_ ( .D(n206), .CP(n367), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_7__4_ ( .D(n205), .CP(n367), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_7__3_ ( .D(n204), .CP(n367), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_7__2_ ( .D(n203), .CP(n367), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n202), .CP(n367), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n201), .CP(n367), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_8__5_ ( .D(n200), .CP(n368), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_8__4_ ( .D(n199), .CP(n368), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_8__2_ ( .D(n197), .CP(n368), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n196), .CP(n368), .Q(mem[19]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n195), .CP(n368), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_9__5_ ( .D(n194), .CP(n368), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_9__4_ ( .D(n193), .CP(n368), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_9__3_ ( .D(n192), .CP(n368), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_9__2_ ( .D(n191), .CP(n368), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n190), .CP(n368), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_9__0_ ( .D(n189), .CP(n368), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_10__5_ ( .D(n188), .CP(n369), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_10__4_ ( .D(n187), .CP(n369), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_10__3_ ( .D(n186), .CP(n369), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_10__2_ ( .D(n185), .CP(n369), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n184), .CP(n369), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_11__5_ ( .D(n182), .CP(n369), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_11__4_ ( .D(n181), .CP(n369), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_11__3_ ( .D(n180), .CP(n369), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_11__2_ ( .D(n179), .CP(n369), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n178), .CP(n369), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_11__0_ ( .D(n177), .CP(n369), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_4__5_ ( .D(n224), .CP(clk), .Q(mem[47]) );
  DFQD2BWP12T30P140 mem_reg_4__4_ ( .D(n223), .CP(clk), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_4__3_ ( .D(n222), .CP(n369), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_4__2_ ( .D(n221), .CP(n369), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n220), .CP(n368), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n219), .CP(n367), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_5__5_ ( .D(n218), .CP(n366), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_5__4_ ( .D(n217), .CP(n368), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_5__2_ ( .D(n215), .CP(n368), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n214), .CP(n367), .Q(mem[37]) );
  DFQD1BWP12T30P140 mem_reg_1__3_ ( .D(n240), .CP(n366), .Q(mem[63]) );
  DFQD1BWP12T30P140 mem_reg_3__0_ ( .D(n225), .CP(n367), .Q(mem[48]) );
  DFQD1BWP12T30P140 mem_reg_8__3_ ( .D(n198), .CP(n368), .Q(mem[21]) );
  DFQD1BWP12T30P140 mem_reg_10__0_ ( .D(n183), .CP(n369), .Q(mem[6]) );
  DFQD1BWP12T30P140 mem_reg_5__3_ ( .D(n216), .CP(n369), .Q(mem[39]) );
  DFQD1BWP12T30P140 mem_reg_5__0_ ( .D(n213), .CP(n366), .Q(mem[36]) );
  INVD0BWP12T30P140 U257 ( .I(read_addr[0]), .ZN(n249) );
  NR2D0BWP12T30P140 U258 ( .A1(read_addr[1]), .A2(n249), .ZN(n349) );
  ND2D0BWP12T30P140 U259 ( .A1(read_addr[1]), .A2(read_addr[0]), .ZN(n341) );
  INVD0BWP12T30P140 U260 ( .I(n341), .ZN(n350) );
  AOI22D0BWP12T30P140 U261 ( .A1(mem[17]), .A2(n349), .B1(mem[5]), .B2(n350), 
        .ZN(n257) );
  INVD0BWP12T30P140 U262 ( .I(mem[65]), .ZN(n276) );
  INVD0BWP12T30P140 U263 ( .I(n349), .ZN(n343) );
  INVD0BWP12T30P140 U264 ( .I(mem[53]), .ZN(n260) );
  OAI22D0BWP12T30P140 U265 ( .A1(n276), .A2(n343), .B1(n260), .B2(n341), .ZN(
        n254) );
  INR3D1BWP12T30P140 U266 ( .A1(read_en), .B1(read_addr[3]), .B2(read_addr[2]), 
        .ZN(n356) );
  INVD0BWP12T30P140 U267 ( .I(mem[71]), .ZN(n313) );
  NR2D0BWP12T30P140 U268 ( .A1(read_addr[1]), .A2(read_addr[0]), .ZN(n359) );
  INVD0BWP12T30P140 U269 ( .I(n359), .ZN(n347) );
  INVD0BWP12T30P140 U270 ( .I(mem[59]), .ZN(n266) );
  ND2D0BWP12T30P140 U271 ( .A1(read_addr[1]), .A2(n249), .ZN(n345) );
  OAI22D0BWP12T30P140 U272 ( .A1(n313), .A2(n347), .B1(n266), .B2(n345), .ZN(
        n253) );
  AOI22D0BWP12T30P140 U273 ( .A1(mem[29]), .A2(n350), .B1(n349), .B2(mem[41]), 
        .ZN(n251) );
  INVD0BWP12T30P140 U274 ( .I(n345), .ZN(n358) );
  AOI22D0BWP12T30P140 U275 ( .A1(mem[35]), .A2(n358), .B1(n359), .B2(mem[47]), 
        .ZN(n250) );
  IND3D1BWP12T30P140 U276 ( .A1(read_addr[3]), .B1(read_en), .B2(read_addr[2]), 
        .ZN(n351) );
  AOI21D0BWP12T30P140 U277 ( .A1(n251), .A2(n250), .B(n351), .ZN(n252) );
  AOI221D0BWP12T30P140 U278 ( .A1(n254), .A2(n356), .B1(n253), .B2(n356), .C(
        n252), .ZN(n256) );
  AOI22D0BWP12T30P140 U279 ( .A1(mem[23]), .A2(n359), .B1(mem[11]), .B2(n358), 
        .ZN(n255) );
  ND2D0BWP12T30P140 U280 ( .A1(read_en), .A2(read_addr[3]), .ZN(n360) );
  AOI32D0BWP12T30P140 U281 ( .A1(n257), .A2(n256), .A3(n255), .B1(n360), .B2(
        n256), .ZN(N69) );
  INVD0BWP12T30P140 U282 ( .I(write_addr[1]), .ZN(n282) );
  NR4D0BWP12T30P140 U283 ( .A1(write_addr[6]), .A2(write_addr[7]), .A3(
        write_addr[4]), .A4(write_addr[5]), .ZN(n258) );
  ND2D0BWP12T30P140 U284 ( .A1(write_en), .A2(n258), .ZN(n259) );
  NR2D0BWP12T30P140 U285 ( .A1(write_addr[2]), .A2(n259), .ZN(n263) );
  ND2D0BWP12T30P140 U286 ( .A1(n263), .A2(write_addr[0]), .ZN(n280) );
  NR3D0BWP12T30P140 U287 ( .A1(write_addr[3]), .A2(n282), .A3(n280), .ZN(n271)
         );
  INVD0BWP12T30P140 U288 ( .I(write_data[2]), .ZN(n297) );
  INVD0BWP12T30P140 U289 ( .I(mem[50]), .ZN(n327) );
  INVD0BWP12T30P140 U290 ( .I(n271), .ZN(n270) );
  AOI22D0BWP12T30P140 U291 ( .A1(n271), .A2(n297), .B1(n327), .B2(n270), .ZN(
        n227) );
  INVD0BWP12T30P140 U292 ( .I(write_data[0]), .ZN(n298) );
  INVD0BWP12T30P140 U293 ( .I(mem[48]), .ZN(n283) );
  AOI22D0BWP12T30P140 U294 ( .A1(n271), .A2(n298), .B1(n283), .B2(n270), .ZN(
        n225) );
  INR3D1BWP12T30P140 U295 ( .A1(write_addr[2]), .B1(write_addr[3]), .B2(n259), 
        .ZN(n272) );
  ND2D0BWP12T30P140 U296 ( .A1(write_addr[1]), .A2(n272), .ZN(n262) );
  NR2D0BWP12T30P140 U297 ( .A1(write_addr[0]), .A2(n262), .ZN(n261) );
  INVD0BWP12T30P140 U298 ( .I(write_data[5]), .ZN(n364) );
  MAOI22D0BWP12T30P140 U299 ( .A1(n261), .A2(n364), .B1(mem[35]), .B2(n261), 
        .ZN(n212) );
  INVD0BWP12T30P140 U300 ( .I(write_data[3]), .ZN(n339) );
  INVD0BWP12T30P140 U301 ( .I(mem[51]), .ZN(n300) );
  AOI22D0BWP12T30P140 U302 ( .A1(n271), .A2(n339), .B1(n300), .B2(n270), .ZN(
        n228) );
  INVD0BWP12T30P140 U303 ( .I(write_data[4]), .ZN(n295) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n261), .A2(n295), .B1(mem[34]), .B2(n261), 
        .ZN(n211) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n261), .A2(n339), .B1(mem[33]), .B2(n261), 
        .ZN(n210) );
  INVD0BWP12T30P140 U306 ( .I(mem[52]), .ZN(n315) );
  AOI22D0BWP12T30P140 U307 ( .A1(n271), .A2(n295), .B1(n315), .B2(n270), .ZN(
        n229) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n261), .A2(n297), .B1(mem[32]), .B2(n261), 
        .ZN(n209) );
  INVD0BWP12T30P140 U309 ( .I(write_data[1]), .ZN(n296) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n261), .A2(n296), .B1(mem[31]), .B2(n261), 
        .ZN(n208) );
  AOI22D0BWP12T30P140 U311 ( .A1(n271), .A2(n364), .B1(n260), .B2(n270), .ZN(
        n230) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n261), .A2(n298), .B1(mem[30]), .B2(n261), 
        .ZN(n207) );
  INVD0BWP12T30P140 U313 ( .I(write_addr[0]), .ZN(n273) );
  NR2D0BWP12T30P140 U314 ( .A1(n273), .A2(n262), .ZN(n264) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n264), .A2(n364), .B1(mem[29]), .B2(n264), 
        .ZN(n206) );
  ND2D0BWP12T30P140 U316 ( .A1(n263), .A2(n273), .ZN(n279) );
  NR3D0BWP12T30P140 U317 ( .A1(write_addr[3]), .A2(n282), .A3(n279), .ZN(n267)
         );
  INVD0BWP12T30P140 U318 ( .I(mem[54]), .ZN(n285) );
  INVD0BWP12T30P140 U319 ( .I(n267), .ZN(n265) );
  AOI22D0BWP12T30P140 U320 ( .A1(n267), .A2(n298), .B1(n285), .B2(n265), .ZN(
        n231) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n264), .A2(n295), .B1(mem[28]), .B2(n264), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n264), .A2(n339), .B1(mem[27]), .B2(n264), 
        .ZN(n204) );
  INVD0BWP12T30P140 U323 ( .I(mem[55]), .ZN(n346) );
  AOI22D0BWP12T30P140 U324 ( .A1(n267), .A2(n296), .B1(n346), .B2(n265), .ZN(
        n232) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n264), .A2(n297), .B1(mem[26]), .B2(n264), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n264), .A2(n296), .B1(mem[25]), .B2(n264), 
        .ZN(n202) );
  INVD0BWP12T30P140 U327 ( .I(mem[56]), .ZN(n329) );
  AOI22D0BWP12T30P140 U328 ( .A1(n267), .A2(n297), .B1(n329), .B2(n265), .ZN(
        n233) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n264), .A2(n298), .B1(mem[24]), .B2(n264), 
        .ZN(n201) );
  INVD0BWP12T30P140 U330 ( .I(write_addr[3]), .ZN(n281) );
  NR3D0BWP12T30P140 U331 ( .A1(write_addr[1]), .A2(n279), .A3(n281), .ZN(n268)
         );
  MAOI22D0BWP12T30P140 U332 ( .A1(n268), .A2(n364), .B1(mem[23]), .B2(n268), 
        .ZN(n200) );
  INVD0BWP12T30P140 U333 ( .I(mem[57]), .ZN(n302) );
  AOI22D0BWP12T30P140 U334 ( .A1(n267), .A2(n339), .B1(n302), .B2(n265), .ZN(
        n234) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n268), .A2(n295), .B1(mem[22]), .B2(n268), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n268), .A2(n339), .B1(mem[21]), .B2(n268), 
        .ZN(n198) );
  INVD0BWP12T30P140 U337 ( .I(mem[58]), .ZN(n317) );
  AOI22D0BWP12T30P140 U338 ( .A1(n267), .A2(n295), .B1(n317), .B2(n265), .ZN(
        n235) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n268), .A2(n297), .B1(mem[20]), .B2(n268), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n268), .A2(n296), .B1(mem[19]), .B2(n268), 
        .ZN(n196) );
  AOI22D0BWP12T30P140 U341 ( .A1(n267), .A2(n364), .B1(n266), .B2(n265), .ZN(
        n236) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n268), .A2(n298), .B1(mem[18]), .B2(n268), 
        .ZN(n195) );
  NR3D0BWP12T30P140 U343 ( .A1(write_addr[1]), .A2(n281), .A3(n280), .ZN(n269)
         );
  MAOI22D0BWP12T30P140 U344 ( .A1(n269), .A2(n364), .B1(mem[17]), .B2(n269), 
        .ZN(n194) );
  NR3D0BWP12T30P140 U345 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n280), 
        .ZN(n277) );
  INVD0BWP12T30P140 U346 ( .I(mem[60]), .ZN(n284) );
  INVD0BWP12T30P140 U347 ( .I(n277), .ZN(n275) );
  AOI22D0BWP12T30P140 U348 ( .A1(n277), .A2(n298), .B1(n284), .B2(n275), .ZN(
        n237) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n269), .A2(n295), .B1(mem[16]), .B2(n269), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n269), .A2(n339), .B1(mem[15]), .B2(n269), 
        .ZN(n192) );
  INVD0BWP12T30P140 U351 ( .I(mem[61]), .ZN(n344) );
  AOI22D0BWP12T30P140 U352 ( .A1(n277), .A2(n296), .B1(n344), .B2(n275), .ZN(
        n238) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n269), .A2(n297), .B1(mem[14]), .B2(n269), 
        .ZN(n191) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n269), .A2(n296), .B1(mem[13]), .B2(n269), 
        .ZN(n190) );
  INVD0BWP12T30P140 U355 ( .I(mem[62]), .ZN(n328) );
  AOI22D0BWP12T30P140 U356 ( .A1(n277), .A2(n297), .B1(n328), .B2(n275), .ZN(
        n239) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n269), .A2(n298), .B1(mem[12]), .B2(n269), 
        .ZN(n189) );
  NR3D0BWP12T30P140 U358 ( .A1(n279), .A2(n282), .A3(n281), .ZN(n278) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n278), .A2(n364), .B1(mem[11]), .B2(n278), 
        .ZN(n188) );
  INVD0BWP12T30P140 U360 ( .I(mem[63]), .ZN(n301) );
  AOI22D0BWP12T30P140 U361 ( .A1(n277), .A2(n339), .B1(n301), .B2(n275), .ZN(
        n240) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n278), .A2(n295), .B1(mem[10]), .B2(n278), 
        .ZN(n187) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n278), .A2(n339), .B1(mem[9]), .B2(n278), 
        .ZN(n186) );
  INVD0BWP12T30P140 U364 ( .I(mem[49]), .ZN(n342) );
  AOI22D0BWP12T30P140 U365 ( .A1(n271), .A2(n296), .B1(n342), .B2(n270), .ZN(
        n226) );
  ND2D0BWP12T30P140 U366 ( .A1(n272), .A2(n282), .ZN(n274) );
  NR2D0BWP12T30P140 U367 ( .A1(n273), .A2(n274), .ZN(n365) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n365), .A2(n297), .B1(mem[38]), .B2(n365), 
        .ZN(n215) );
  INVD0BWP12T30P140 U369 ( .I(mem[64]), .ZN(n316) );
  AOI22D0BWP12T30P140 U370 ( .A1(n277), .A2(n295), .B1(n316), .B2(n275), .ZN(
        n241) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n278), .A2(n297), .B1(mem[8]), .B2(n278), 
        .ZN(n185) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n365), .A2(n296), .B1(mem[37]), .B2(n365), 
        .ZN(n214) );
  NR2D0BWP12T30P140 U373 ( .A1(write_addr[0]), .A2(n274), .ZN(n340) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n340), .A2(n295), .B1(mem[46]), .B2(n340), 
        .ZN(n223) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n278), .A2(n296), .B1(mem[7]), .B2(n278), 
        .ZN(n184) );
  AOI22D0BWP12T30P140 U376 ( .A1(n277), .A2(n364), .B1(n276), .B2(n275), .ZN(
        n242) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n278), .A2(n298), .B1(mem[6]), .B2(n278), 
        .ZN(n183) );
  NR3D0BWP12T30P140 U378 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n279), 
        .ZN(n314) );
  INVD0BWP12T30P140 U379 ( .I(mem[70]), .ZN(n318) );
  INVD0BWP12T30P140 U380 ( .I(n314), .ZN(n312) );
  AOI22D0BWP12T30P140 U381 ( .A1(n314), .A2(n295), .B1(n318), .B2(n312), .ZN(
        n247) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n340), .A2(n297), .B1(mem[44]), .B2(n340), 
        .ZN(n221) );
  NR3D0BWP12T30P140 U383 ( .A1(n282), .A2(n281), .A3(n280), .ZN(n299) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n299), .A2(n364), .B1(mem[5]), .B2(n299), 
        .ZN(n182) );
  INVD0BWP12T30P140 U385 ( .I(mem[66]), .ZN(n286) );
  AOI22D0BWP12T30P140 U386 ( .A1(n314), .A2(n298), .B1(n286), .B2(n312), .ZN(
        n243) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n340), .A2(n296), .B1(mem[43]), .B2(n340), 
        .ZN(n220) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n299), .A2(n295), .B1(mem[4]), .B2(n299), 
        .ZN(n181) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n340), .A2(n298), .B1(mem[42]), .B2(n340), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n299), .A2(n339), .B1(mem[3]), .B2(n299), 
        .ZN(n180) );
  AOI22D0BWP12T30P140 U391 ( .A1(mem[12]), .A2(n349), .B1(mem[0]), .B2(n350), 
        .ZN(n294) );
  OAI22D0BWP12T30P140 U392 ( .A1(n284), .A2(n343), .B1(n283), .B2(n341), .ZN(
        n291) );
  OAI22D0BWP12T30P140 U393 ( .A1(n286), .A2(n347), .B1(n285), .B2(n345), .ZN(
        n290) );
  AOI22D0BWP12T30P140 U394 ( .A1(mem[24]), .A2(n350), .B1(n349), .B2(mem[36]), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U395 ( .A1(mem[30]), .A2(n358), .B1(n359), .B2(mem[42]), 
        .ZN(n287) );
  AOI21D0BWP12T30P140 U396 ( .A1(n288), .A2(n287), .B(n351), .ZN(n289) );
  AOI221D0BWP12T30P140 U397 ( .A1(n291), .A2(n356), .B1(n290), .B2(n356), .C(
        n289), .ZN(n293) );
  AOI22D0BWP12T30P140 U398 ( .A1(mem[18]), .A2(n359), .B1(mem[6]), .B2(n358), 
        .ZN(n292) );
  AOI32D0BWP12T30P140 U399 ( .A1(n294), .A2(n293), .A3(n292), .B1(n360), .B2(
        n293), .ZN(N64) );
  INVD0BWP12T30P140 U400 ( .I(mem[67]), .ZN(n348) );
  AOI22D0BWP12T30P140 U401 ( .A1(n314), .A2(n296), .B1(n348), .B2(n312), .ZN(
        n244) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n299), .A2(n297), .B1(mem[2]), .B2(n299), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n365), .A2(n298), .B1(mem[36]), .B2(n365), 
        .ZN(n213) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n365), .A2(n295), .B1(mem[40]), .B2(n365), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n299), .A2(n296), .B1(mem[1]), .B2(n299), 
        .ZN(n178) );
  INVD0BWP12T30P140 U406 ( .I(mem[68]), .ZN(n330) );
  AOI22D0BWP12T30P140 U407 ( .A1(n314), .A2(n297), .B1(n330), .B2(n312), .ZN(
        n245) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n299), .A2(n298), .B1(mem[0]), .B2(n299), 
        .ZN(n177) );
  AOI22D0BWP12T30P140 U409 ( .A1(mem[15]), .A2(n349), .B1(mem[3]), .B2(n350), 
        .ZN(n310) );
  OAI22D0BWP12T30P140 U410 ( .A1(n301), .A2(n343), .B1(n300), .B2(n341), .ZN(
        n307) );
  INVD0BWP12T30P140 U411 ( .I(mem[69]), .ZN(n311) );
  OAI22D0BWP12T30P140 U412 ( .A1(n311), .A2(n347), .B1(n302), .B2(n345), .ZN(
        n306) );
  AOI22D0BWP12T30P140 U413 ( .A1(mem[27]), .A2(n350), .B1(n349), .B2(mem[39]), 
        .ZN(n304) );
  AOI22D0BWP12T30P140 U414 ( .A1(mem[33]), .A2(n358), .B1(n359), .B2(mem[45]), 
        .ZN(n303) );
  AOI21D0BWP12T30P140 U415 ( .A1(n304), .A2(n303), .B(n351), .ZN(n305) );
  AOI221D0BWP12T30P140 U416 ( .A1(n307), .A2(n356), .B1(n306), .B2(n356), .C(
        n305), .ZN(n309) );
  AOI22D0BWP12T30P140 U417 ( .A1(mem[21]), .A2(n359), .B1(mem[9]), .B2(n358), 
        .ZN(n308) );
  AOI32D0BWP12T30P140 U418 ( .A1(n310), .A2(n309), .A3(n308), .B1(n360), .B2(
        n309), .ZN(N67) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n365), .A2(n339), .B1(mem[39]), .B2(n365), 
        .ZN(n216) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n340), .A2(n364), .B1(mem[47]), .B2(n340), 
        .ZN(n224) );
  AOI22D0BWP12T30P140 U421 ( .A1(n314), .A2(n339), .B1(n311), .B2(n312), .ZN(
        n246) );
  AOI22D0BWP12T30P140 U422 ( .A1(n314), .A2(n364), .B1(n313), .B2(n312), .ZN(
        n248) );
  AOI22D0BWP12T30P140 U423 ( .A1(mem[16]), .A2(n349), .B1(mem[4]), .B2(n350), 
        .ZN(n326) );
  OAI22D0BWP12T30P140 U424 ( .A1(n316), .A2(n343), .B1(n315), .B2(n341), .ZN(
        n323) );
  OAI22D0BWP12T30P140 U425 ( .A1(n318), .A2(n347), .B1(n317), .B2(n345), .ZN(
        n322) );
  AOI22D0BWP12T30P140 U426 ( .A1(mem[28]), .A2(n350), .B1(n349), .B2(mem[40]), 
        .ZN(n320) );
  AOI22D0BWP12T30P140 U427 ( .A1(mem[34]), .A2(n358), .B1(n359), .B2(mem[46]), 
        .ZN(n319) );
  AOI21D0BWP12T30P140 U428 ( .A1(n320), .A2(n319), .B(n351), .ZN(n321) );
  AOI221D0BWP12T30P140 U429 ( .A1(n323), .A2(n356), .B1(n322), .B2(n356), .C(
        n321), .ZN(n325) );
  AOI22D0BWP12T30P140 U430 ( .A1(mem[22]), .A2(n359), .B1(mem[10]), .B2(n358), 
        .ZN(n324) );
  AOI32D0BWP12T30P140 U431 ( .A1(n326), .A2(n325), .A3(n324), .B1(n360), .B2(
        n325), .ZN(N68) );
  AOI22D0BWP12T30P140 U432 ( .A1(mem[14]), .A2(n349), .B1(mem[2]), .B2(n350), 
        .ZN(n338) );
  OAI22D0BWP12T30P140 U433 ( .A1(n328), .A2(n343), .B1(n327), .B2(n341), .ZN(
        n335) );
  OAI22D0BWP12T30P140 U434 ( .A1(n330), .A2(n347), .B1(n329), .B2(n345), .ZN(
        n334) );
  AOI22D0BWP12T30P140 U435 ( .A1(mem[26]), .A2(n350), .B1(n349), .B2(mem[38]), 
        .ZN(n332) );
  AOI22D0BWP12T30P140 U436 ( .A1(mem[32]), .A2(n358), .B1(n359), .B2(mem[44]), 
        .ZN(n331) );
  AOI21D0BWP12T30P140 U437 ( .A1(n332), .A2(n331), .B(n351), .ZN(n333) );
  AOI221D0BWP12T30P140 U438 ( .A1(n335), .A2(n356), .B1(n334), .B2(n356), .C(
        n333), .ZN(n337) );
  AOI22D0BWP12T30P140 U439 ( .A1(mem[20]), .A2(n359), .B1(mem[8]), .B2(n358), 
        .ZN(n336) );
  AOI32D0BWP12T30P140 U440 ( .A1(n338), .A2(n337), .A3(n336), .B1(n360), .B2(
        n337), .ZN(N66) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n340), .A2(n339), .B1(mem[45]), .B2(n340), 
        .ZN(n222) );
  AOI22D0BWP12T30P140 U442 ( .A1(mem[13]), .A2(n349), .B1(mem[1]), .B2(n350), 
        .ZN(n363) );
  OAI22D0BWP12T30P140 U443 ( .A1(n344), .A2(n343), .B1(n342), .B2(n341), .ZN(
        n357) );
  OAI22D0BWP12T30P140 U444 ( .A1(n348), .A2(n347), .B1(n346), .B2(n345), .ZN(
        n355) );
  AOI22D0BWP12T30P140 U445 ( .A1(mem[25]), .A2(n350), .B1(n349), .B2(mem[37]), 
        .ZN(n353) );
  AOI22D0BWP12T30P140 U446 ( .A1(mem[31]), .A2(n358), .B1(n359), .B2(mem[43]), 
        .ZN(n352) );
  AOI21D0BWP12T30P140 U447 ( .A1(n353), .A2(n352), .B(n351), .ZN(n354) );
  AOI221D0BWP12T30P140 U448 ( .A1(n357), .A2(n356), .B1(n355), .B2(n356), .C(
        n354), .ZN(n362) );
  AOI22D0BWP12T30P140 U449 ( .A1(mem[19]), .A2(n359), .B1(mem[7]), .B2(n358), 
        .ZN(n361) );
  AOI32D0BWP12T30P140 U450 ( .A1(n363), .A2(n362), .A3(n361), .B1(n360), .B2(
        n362), .ZN(N65) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n365), .A2(n364), .B1(mem[41]), .B2(n365), 
        .ZN(n218) );
  CKBD0BWP12T30P140 U452 ( .I(clk), .Z(n366) );
  CKBD0BWP12T30P140 U453 ( .I(clk), .Z(n367) );
  CKBD0BWP12T30P140 U454 ( .I(clk), .Z(n368) );
  CKBD0BWP12T30P140 U455 ( .I(clk), .Z(n369) );
endmodule

