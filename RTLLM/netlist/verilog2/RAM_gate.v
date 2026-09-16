/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:06:05 2026
/////////////////////////////////////////////////////////////


module RAM ( clk, rst_n, write_en, write_addr, write_data, read_en, read_addr, 
        read_data );
  input [7:0] write_addr;
  input [5:0] write_data;
  input [7:0] read_addr;
  output [5:0] read_data;
  input clk, rst_n, write_en, read_en;
  wire   N89, N90, N91, N92, N93, N94, n177, n178, n179, n180, n181, n182,
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
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373;
  wire   [71:0] mem;

  DFCNQD1BWP12T30P140 mem_reg_0__5_ ( .D(n248), .CP(clk), .CDN(rst_n), .Q(
        mem[71]) );
  DFCNQD1BWP12T30P140 mem_reg_0__4_ ( .D(n247), .CP(clk), .CDN(rst_n), .Q(
        mem[70]) );
  DFCNQD1BWP12T30P140 mem_reg_0__3_ ( .D(n246), .CP(clk), .CDN(rst_n), .Q(
        mem[69]) );
  DFCNQD1BWP12T30P140 mem_reg_0__2_ ( .D(n245), .CP(clk), .CDN(rst_n), .Q(
        mem[68]) );
  DFCNQD1BWP12T30P140 mem_reg_0__1_ ( .D(n244), .CP(clk), .CDN(rst_n), .Q(
        mem[67]) );
  DFCNQD1BWP12T30P140 mem_reg_0__0_ ( .D(n243), .CP(clk), .CDN(rst_n), .Q(
        mem[66]) );
  DFCNQD1BWP12T30P140 read_data_reg_5_ ( .D(N94), .CP(n370), .CDN(n369), .Q(
        read_data[5]) );
  DFCNQD1BWP12T30P140 read_data_reg_4_ ( .D(N93), .CP(n370), .CDN(n369), .Q(
        read_data[4]) );
  DFCNQD1BWP12T30P140 read_data_reg_3_ ( .D(N92), .CP(n370), .CDN(n369), .Q(
        read_data[3]) );
  DFCNQD1BWP12T30P140 read_data_reg_2_ ( .D(N91), .CP(n370), .CDN(n369), .Q(
        read_data[2]) );
  DFCNQD1BWP12T30P140 read_data_reg_1_ ( .D(N90), .CP(n370), .CDN(n369), .Q(
        read_data[1]) );
  DFCNQD1BWP12T30P140 read_data_reg_0_ ( .D(N89), .CP(n370), .CDN(n369), .Q(
        read_data[0]) );
  DFCNQD1BWP12T30P140 mem_reg_1__5_ ( .D(n242), .CP(n373), .CDN(rst_n), .Q(
        mem[65]) );
  DFCNQD1BWP12T30P140 mem_reg_1__4_ ( .D(n241), .CP(n373), .CDN(rst_n), .Q(
        mem[64]) );
  DFCNQD1BWP12T30P140 mem_reg_1__3_ ( .D(n240), .CP(n373), .CDN(rst_n), .Q(
        mem[63]) );
  DFCNQD1BWP12T30P140 mem_reg_1__2_ ( .D(n239), .CP(n373), .CDN(rst_n), .Q(
        mem[62]) );
  DFCNQD1BWP12T30P140 mem_reg_1__1_ ( .D(n238), .CP(n373), .CDN(rst_n), .Q(
        mem[61]) );
  DFCNQD1BWP12T30P140 mem_reg_1__0_ ( .D(n237), .CP(n373), .CDN(rst_n), .Q(
        mem[60]) );
  DFCNQD1BWP12T30P140 mem_reg_2__5_ ( .D(n236), .CP(n373), .CDN(n366), .Q(
        mem[59]) );
  DFCNQD1BWP12T30P140 mem_reg_2__4_ ( .D(n235), .CP(n373), .CDN(n366), .Q(
        mem[58]) );
  DFCNQD1BWP12T30P140 mem_reg_2__3_ ( .D(n234), .CP(n373), .CDN(n366), .Q(
        mem[57]) );
  DFCNQD1BWP12T30P140 mem_reg_2__2_ ( .D(n233), .CP(n373), .CDN(n366), .Q(
        mem[56]) );
  DFCNQD1BWP12T30P140 mem_reg_2__1_ ( .D(n232), .CP(n373), .CDN(n366), .Q(
        mem[55]) );
  DFCNQD1BWP12T30P140 mem_reg_2__0_ ( .D(n231), .CP(n373), .CDN(n366), .Q(
        mem[54]) );
  DFCNQD1BWP12T30P140 mem_reg_3__5_ ( .D(n230), .CP(n372), .CDN(n366), .Q(
        mem[53]) );
  DFCNQD1BWP12T30P140 mem_reg_3__4_ ( .D(n229), .CP(n372), .CDN(n366), .Q(
        mem[52]) );
  DFCNQD1BWP12T30P140 mem_reg_3__3_ ( .D(n228), .CP(n372), .CDN(n366), .Q(
        mem[51]) );
  DFCNQD1BWP12T30P140 mem_reg_3__2_ ( .D(n227), .CP(n372), .CDN(n366), .Q(
        mem[50]) );
  DFCNQD1BWP12T30P140 mem_reg_3__1_ ( .D(n226), .CP(n372), .CDN(n366), .Q(
        mem[49]) );
  DFCNQD1BWP12T30P140 mem_reg_3__0_ ( .D(n225), .CP(n372), .CDN(n366), .Q(
        mem[48]) );
  DFCNQD1BWP12T30P140 mem_reg_6__5_ ( .D(n212), .CP(n371), .CDN(n367), .Q(
        mem[35]) );
  DFCNQD1BWP12T30P140 mem_reg_6__4_ ( .D(n211), .CP(n371), .CDN(n367), .Q(
        mem[34]) );
  DFCNQD1BWP12T30P140 mem_reg_6__3_ ( .D(n210), .CP(n371), .CDN(n368), .Q(
        mem[33]) );
  DFCNQD1BWP12T30P140 mem_reg_6__2_ ( .D(n209), .CP(n371), .CDN(n369), .Q(
        mem[32]) );
  DFCNQD1BWP12T30P140 mem_reg_6__1_ ( .D(n208), .CP(n371), .CDN(n367), .Q(
        mem[31]) );
  DFCNQD1BWP12T30P140 mem_reg_6__0_ ( .D(n207), .CP(n371), .CDN(n366), .Q(
        mem[30]) );
  DFCNQD1BWP12T30P140 mem_reg_7__5_ ( .D(n206), .CP(n371), .CDN(rst_n), .Q(
        mem[29]) );
  DFCNQD1BWP12T30P140 mem_reg_7__4_ ( .D(n205), .CP(n372), .CDN(n368), .Q(
        mem[28]) );
  DFCNQD1BWP12T30P140 mem_reg_7__3_ ( .D(n204), .CP(clk), .CDN(n369), .Q(
        mem[27]) );
  DFCNQD1BWP12T30P140 mem_reg_7__2_ ( .D(n203), .CP(n370), .CDN(n367), .Q(
        mem[26]) );
  DFCNQD1BWP12T30P140 mem_reg_7__1_ ( .D(n202), .CP(n373), .CDN(n366), .Q(
        mem[25]) );
  DFCNQD1BWP12T30P140 mem_reg_7__0_ ( .D(n201), .CP(n371), .CDN(n368), .Q(
        mem[24]) );
  DFCNQD1BWP12T30P140 mem_reg_8__5_ ( .D(n200), .CP(n372), .CDN(n369), .Q(
        mem[23]) );
  DFCNQD1BWP12T30P140 mem_reg_8__4_ ( .D(n199), .CP(clk), .CDN(n367), .Q(
        mem[22]) );
  DFCNQD1BWP12T30P140 mem_reg_8__3_ ( .D(n198), .CP(n370), .CDN(n366), .Q(
        mem[21]) );
  DFCNQD1BWP12T30P140 mem_reg_8__2_ ( .D(n197), .CP(n373), .CDN(n368), .Q(
        mem[20]) );
  DFCNQD1BWP12T30P140 mem_reg_8__1_ ( .D(n196), .CP(n371), .CDN(n368), .Q(
        mem[19]) );
  DFCNQD1BWP12T30P140 mem_reg_8__0_ ( .D(n195), .CP(clk), .CDN(n368), .Q(
        mem[18]) );
  DFCNQD1BWP12T30P140 mem_reg_9__5_ ( .D(n194), .CP(n372), .CDN(n368), .Q(
        mem[17]) );
  DFCNQD1BWP12T30P140 mem_reg_9__4_ ( .D(n193), .CP(clk), .CDN(n368), .Q(
        mem[16]) );
  DFCNQD1BWP12T30P140 mem_reg_9__3_ ( .D(n192), .CP(n370), .CDN(n368), .Q(
        mem[15]) );
  DFCNQD1BWP12T30P140 mem_reg_9__2_ ( .D(n191), .CP(n370), .CDN(n368), .Q(
        mem[14]) );
  DFCNQD1BWP12T30P140 mem_reg_9__1_ ( .D(n190), .CP(n373), .CDN(n368), .Q(
        mem[13]) );
  DFCNQD1BWP12T30P140 mem_reg_9__0_ ( .D(n189), .CP(n371), .CDN(n368), .Q(
        mem[12]) );
  DFCNQD1BWP12T30P140 mem_reg_10__5_ ( .D(n188), .CP(n372), .CDN(n368), .Q(
        mem[11]) );
  DFCNQD1BWP12T30P140 mem_reg_10__4_ ( .D(n187), .CP(n373), .CDN(n368), .Q(
        mem[10]) );
  DFCNQD1BWP12T30P140 mem_reg_10__3_ ( .D(n186), .CP(n370), .CDN(n368), .Q(
        mem[9]) );
  DFCNQD1BWP12T30P140 mem_reg_10__2_ ( .D(n185), .CP(n373), .CDN(n368), .Q(
        mem[8]) );
  DFCNQD1BWP12T30P140 mem_reg_10__1_ ( .D(n184), .CP(n371), .CDN(n369), .Q(
        mem[7]) );
  DFCNQD1BWP12T30P140 mem_reg_10__0_ ( .D(n183), .CP(n372), .CDN(n369), .Q(
        mem[6]) );
  DFCNQD1BWP12T30P140 mem_reg_11__5_ ( .D(n182), .CP(n370), .CDN(n369), .Q(
        mem[5]) );
  DFCNQD1BWP12T30P140 mem_reg_11__4_ ( .D(n181), .CP(n370), .CDN(n369), .Q(
        mem[4]) );
  DFCNQD1BWP12T30P140 mem_reg_11__3_ ( .D(n180), .CP(n370), .CDN(n369), .Q(
        mem[3]) );
  DFCNQD1BWP12T30P140 mem_reg_11__2_ ( .D(n179), .CP(n370), .CDN(n369), .Q(
        mem[2]) );
  DFCNQD1BWP12T30P140 mem_reg_11__1_ ( .D(n178), .CP(n370), .CDN(n369), .Q(
        mem[1]) );
  DFCNQD1BWP12T30P140 mem_reg_11__0_ ( .D(n177), .CP(n370), .CDN(rst_n), .Q(
        mem[0]) );
  DFCNQD1BWP12T30P140 mem_reg_4__5_ ( .D(n224), .CP(n372), .CDN(n366), .Q(
        mem[47]) );
  DFCNQD1BWP12T30P140 mem_reg_4__4_ ( .D(n223), .CP(n372), .CDN(n367), .Q(
        mem[46]) );
  DFCNQD1BWP12T30P140 mem_reg_4__3_ ( .D(n222), .CP(n372), .CDN(n367), .Q(
        mem[45]) );
  DFCNQD1BWP12T30P140 mem_reg_4__2_ ( .D(n221), .CP(n372), .CDN(n367), .Q(
        mem[44]) );
  DFCNQD1BWP12T30P140 mem_reg_4__1_ ( .D(n220), .CP(n372), .CDN(n367), .Q(
        mem[43]) );
  DFCNQD1BWP12T30P140 mem_reg_4__0_ ( .D(n219), .CP(n372), .CDN(n367), .Q(
        mem[42]) );
  DFCNQD1BWP12T30P140 mem_reg_5__5_ ( .D(n218), .CP(n371), .CDN(n367), .Q(
        mem[41]) );
  DFCNQD1BWP12T30P140 mem_reg_5__4_ ( .D(n217), .CP(n371), .CDN(n367), .Q(
        mem[40]) );
  DFCNQD1BWP12T30P140 mem_reg_5__3_ ( .D(n216), .CP(n371), .CDN(n367), .Q(
        mem[39]) );
  DFCNQD1BWP12T30P140 mem_reg_5__2_ ( .D(n215), .CP(n371), .CDN(n367), .Q(
        mem[38]) );
  DFCNQD1BWP12T30P140 mem_reg_5__1_ ( .D(n214), .CP(n371), .CDN(n367), .Q(
        mem[37]) );
  DFCNQD1BWP12T30P140 mem_reg_5__0_ ( .D(n213), .CP(n371), .CDN(n367), .Q(
        mem[36]) );
  NR4D0BWP12T30P140 U257 ( .A1(write_addr[6]), .A2(write_addr[7]), .A3(
        write_addr[4]), .A4(write_addr[5]), .ZN(n249) );
  ND2D0BWP12T30P140 U258 ( .A1(write_en), .A2(n249), .ZN(n340) );
  NR2D0BWP12T30P140 U259 ( .A1(write_addr[2]), .A2(n340), .ZN(n315) );
  INVD0BWP12T30P140 U260 ( .I(write_addr[0]), .ZN(n351) );
  ND2D0BWP12T30P140 U261 ( .A1(n315), .A2(n351), .ZN(n346) );
  NR3D0BWP12T30P140 U262 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n346), 
        .ZN(n319) );
  INVD0BWP12T30P140 U263 ( .I(write_data[4]), .ZN(n362) );
  INVD0BWP12T30P140 U264 ( .I(mem[70]), .ZN(n259) );
  INVD0BWP12T30P140 U265 ( .I(n319), .ZN(n317) );
  AOI22D0BWP12T30P140 U266 ( .A1(n319), .A2(n362), .B1(n259), .B2(n317), .ZN(
        n247) );
  INVD0BWP12T30P140 U267 ( .I(write_data[3]), .ZN(n363) );
  INVD0BWP12T30P140 U268 ( .I(mem[69]), .ZN(n268) );
  AOI22D0BWP12T30P140 U269 ( .A1(n319), .A2(n363), .B1(n268), .B2(n317), .ZN(
        n246) );
  INVD0BWP12T30P140 U270 ( .I(write_data[2]), .ZN(n361) );
  INVD0BWP12T30P140 U271 ( .I(mem[68]), .ZN(n277) );
  AOI22D0BWP12T30P140 U272 ( .A1(n319), .A2(n361), .B1(n277), .B2(n317), .ZN(
        n245) );
  INVD0BWP12T30P140 U273 ( .I(write_data[1]), .ZN(n359) );
  INVD0BWP12T30P140 U274 ( .I(mem[67]), .ZN(n286) );
  AOI22D0BWP12T30P140 U275 ( .A1(n319), .A2(n359), .B1(n286), .B2(n317), .ZN(
        n244) );
  INVD0BWP12T30P140 U276 ( .I(write_data[0]), .ZN(n356) );
  INVD0BWP12T30P140 U277 ( .I(mem[66]), .ZN(n299) );
  AOI22D0BWP12T30P140 U278 ( .A1(n319), .A2(n356), .B1(n299), .B2(n317), .ZN(
        n243) );
  INVD0BWP12T30P140 U279 ( .I(read_addr[0]), .ZN(n250) );
  NR2D0BWP12T30P140 U280 ( .A1(read_addr[1]), .A2(n250), .ZN(n300) );
  ND2D0BWP12T30P140 U281 ( .A1(read_addr[1]), .A2(read_addr[0]), .ZN(n295) );
  INVD0BWP12T30P140 U282 ( .I(n295), .ZN(n301) );
  AOI22D0BWP12T30P140 U283 ( .A1(mem[17]), .A2(n300), .B1(mem[5]), .B2(n301), 
        .ZN(n258) );
  INVD0BWP12T30P140 U284 ( .I(mem[65]), .ZN(n316) );
  INVD0BWP12T30P140 U285 ( .I(n300), .ZN(n296) );
  INVD0BWP12T30P140 U286 ( .I(mem[53]), .ZN(n332) );
  OAI22D0BWP12T30P140 U287 ( .A1(n316), .A2(n296), .B1(n332), .B2(n295), .ZN(
        n255) );
  INR3D1BWP12T30P140 U288 ( .A1(read_en), .B1(read_addr[3]), .B2(read_addr[2]), 
        .ZN(n307) );
  INVD0BWP12T30P140 U289 ( .I(mem[71]), .ZN(n318) );
  NR2D0BWP12T30P140 U290 ( .A1(read_addr[1]), .A2(read_addr[0]), .ZN(n310) );
  INVD0BWP12T30P140 U291 ( .I(n310), .ZN(n298) );
  INVD0BWP12T30P140 U292 ( .I(mem[59]), .ZN(n324) );
  ND2D0BWP12T30P140 U293 ( .A1(read_addr[1]), .A2(n250), .ZN(n297) );
  OAI22D0BWP12T30P140 U294 ( .A1(n318), .A2(n298), .B1(n324), .B2(n297), .ZN(
        n254) );
  AOI22D0BWP12T30P140 U295 ( .A1(mem[29]), .A2(n301), .B1(n300), .B2(mem[41]), 
        .ZN(n252) );
  INVD0BWP12T30P140 U296 ( .I(n297), .ZN(n309) );
  AOI22D0BWP12T30P140 U297 ( .A1(mem[35]), .A2(n309), .B1(n310), .B2(mem[47]), 
        .ZN(n251) );
  IND3D1BWP12T30P140 U298 ( .A1(read_addr[3]), .B1(read_en), .B2(read_addr[2]), 
        .ZN(n302) );
  AOI21D0BWP12T30P140 U299 ( .A1(n252), .A2(n251), .B(n302), .ZN(n253) );
  AOI221D0BWP12T30P140 U300 ( .A1(n255), .A2(n307), .B1(n254), .B2(n307), .C(
        n253), .ZN(n257) );
  AOI22D0BWP12T30P140 U301 ( .A1(mem[23]), .A2(n310), .B1(mem[11]), .B2(n309), 
        .ZN(n256) );
  ND2D0BWP12T30P140 U302 ( .A1(read_en), .A2(read_addr[3]), .ZN(n311) );
  AOI32D0BWP12T30P140 U303 ( .A1(n258), .A2(n257), .A3(n256), .B1(n311), .B2(
        n257), .ZN(N94) );
  AOI22D0BWP12T30P140 U304 ( .A1(mem[16]), .A2(n300), .B1(mem[4]), .B2(n301), 
        .ZN(n267) );
  INVD0BWP12T30P140 U305 ( .I(mem[64]), .ZN(n348) );
  INVD0BWP12T30P140 U306 ( .I(mem[52]), .ZN(n333) );
  OAI22D0BWP12T30P140 U307 ( .A1(n348), .A2(n296), .B1(n333), .B2(n295), .ZN(
        n264) );
  INVD0BWP12T30P140 U308 ( .I(mem[58]), .ZN(n325) );
  OAI22D0BWP12T30P140 U309 ( .A1(n259), .A2(n298), .B1(n325), .B2(n297), .ZN(
        n263) );
  AOI22D0BWP12T30P140 U310 ( .A1(mem[28]), .A2(n301), .B1(n300), .B2(mem[40]), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U311 ( .A1(mem[34]), .A2(n309), .B1(n310), .B2(mem[46]), 
        .ZN(n260) );
  AOI21D0BWP12T30P140 U312 ( .A1(n261), .A2(n260), .B(n302), .ZN(n262) );
  AOI221D0BWP12T30P140 U313 ( .A1(n264), .A2(n307), .B1(n263), .B2(n307), .C(
        n262), .ZN(n266) );
  AOI22D0BWP12T30P140 U314 ( .A1(mem[22]), .A2(n310), .B1(mem[10]), .B2(n309), 
        .ZN(n265) );
  AOI32D0BWP12T30P140 U315 ( .A1(n267), .A2(n266), .A3(n265), .B1(n311), .B2(
        n266), .ZN(N93) );
  AOI22D0BWP12T30P140 U316 ( .A1(mem[15]), .A2(n300), .B1(mem[3]), .B2(n301), 
        .ZN(n276) );
  INVD0BWP12T30P140 U317 ( .I(mem[63]), .ZN(n320) );
  INVD0BWP12T30P140 U318 ( .I(mem[51]), .ZN(n334) );
  OAI22D0BWP12T30P140 U319 ( .A1(n320), .A2(n296), .B1(n334), .B2(n295), .ZN(
        n273) );
  INVD0BWP12T30P140 U320 ( .I(mem[57]), .ZN(n326) );
  OAI22D0BWP12T30P140 U321 ( .A1(n268), .A2(n298), .B1(n326), .B2(n297), .ZN(
        n272) );
  AOI22D0BWP12T30P140 U322 ( .A1(mem[27]), .A2(n301), .B1(n300), .B2(mem[39]), 
        .ZN(n270) );
  AOI22D0BWP12T30P140 U323 ( .A1(mem[33]), .A2(n309), .B1(n310), .B2(mem[45]), 
        .ZN(n269) );
  AOI21D0BWP12T30P140 U324 ( .A1(n270), .A2(n269), .B(n302), .ZN(n271) );
  AOI221D0BWP12T30P140 U325 ( .A1(n273), .A2(n307), .B1(n272), .B2(n307), .C(
        n271), .ZN(n275) );
  AOI22D0BWP12T30P140 U326 ( .A1(mem[21]), .A2(n310), .B1(mem[9]), .B2(n309), 
        .ZN(n274) );
  AOI32D0BWP12T30P140 U327 ( .A1(n276), .A2(n275), .A3(n274), .B1(n311), .B2(
        n275), .ZN(N92) );
  AOI22D0BWP12T30P140 U328 ( .A1(mem[14]), .A2(n300), .B1(mem[2]), .B2(n301), 
        .ZN(n285) );
  INVD0BWP12T30P140 U329 ( .I(mem[62]), .ZN(n321) );
  INVD0BWP12T30P140 U330 ( .I(mem[50]), .ZN(n335) );
  OAI22D0BWP12T30P140 U331 ( .A1(n321), .A2(n296), .B1(n335), .B2(n295), .ZN(
        n282) );
  INVD0BWP12T30P140 U332 ( .I(mem[56]), .ZN(n327) );
  OAI22D0BWP12T30P140 U333 ( .A1(n277), .A2(n298), .B1(n327), .B2(n297), .ZN(
        n281) );
  AOI22D0BWP12T30P140 U334 ( .A1(mem[26]), .A2(n301), .B1(n300), .B2(mem[38]), 
        .ZN(n279) );
  AOI22D0BWP12T30P140 U335 ( .A1(mem[32]), .A2(n309), .B1(n310), .B2(mem[44]), 
        .ZN(n278) );
  AOI21D0BWP12T30P140 U336 ( .A1(n279), .A2(n278), .B(n302), .ZN(n280) );
  AOI221D0BWP12T30P140 U337 ( .A1(n282), .A2(n307), .B1(n281), .B2(n307), .C(
        n280), .ZN(n284) );
  AOI22D0BWP12T30P140 U338 ( .A1(mem[20]), .A2(n310), .B1(mem[8]), .B2(n309), 
        .ZN(n283) );
  AOI32D0BWP12T30P140 U339 ( .A1(n285), .A2(n284), .A3(n283), .B1(n311), .B2(
        n284), .ZN(N91) );
  AOI22D0BWP12T30P140 U340 ( .A1(mem[13]), .A2(n300), .B1(mem[1]), .B2(n301), 
        .ZN(n294) );
  INVD0BWP12T30P140 U341 ( .I(mem[61]), .ZN(n322) );
  INVD0BWP12T30P140 U342 ( .I(mem[49]), .ZN(n336) );
  OAI22D0BWP12T30P140 U343 ( .A1(n322), .A2(n296), .B1(n336), .B2(n295), .ZN(
        n291) );
  INVD0BWP12T30P140 U344 ( .I(mem[55]), .ZN(n328) );
  OAI22D0BWP12T30P140 U345 ( .A1(n286), .A2(n298), .B1(n328), .B2(n297), .ZN(
        n290) );
  AOI22D0BWP12T30P140 U346 ( .A1(mem[25]), .A2(n301), .B1(n300), .B2(mem[37]), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U347 ( .A1(mem[31]), .A2(n309), .B1(n310), .B2(mem[43]), 
        .ZN(n287) );
  AOI21D0BWP12T30P140 U348 ( .A1(n288), .A2(n287), .B(n302), .ZN(n289) );
  AOI221D0BWP12T30P140 U349 ( .A1(n291), .A2(n307), .B1(n290), .B2(n307), .C(
        n289), .ZN(n293) );
  AOI22D0BWP12T30P140 U350 ( .A1(mem[19]), .A2(n310), .B1(mem[7]), .B2(n309), 
        .ZN(n292) );
  AOI32D0BWP12T30P140 U351 ( .A1(n294), .A2(n293), .A3(n292), .B1(n311), .B2(
        n293), .ZN(N90) );
  AOI22D0BWP12T30P140 U352 ( .A1(mem[12]), .A2(n300), .B1(mem[0]), .B2(n301), 
        .ZN(n314) );
  INVD0BWP12T30P140 U353 ( .I(mem[60]), .ZN(n323) );
  INVD0BWP12T30P140 U354 ( .I(mem[48]), .ZN(n338) );
  OAI22D0BWP12T30P140 U355 ( .A1(n323), .A2(n296), .B1(n338), .B2(n295), .ZN(
        n308) );
  INVD0BWP12T30P140 U356 ( .I(mem[54]), .ZN(n330) );
  OAI22D0BWP12T30P140 U357 ( .A1(n299), .A2(n298), .B1(n330), .B2(n297), .ZN(
        n306) );
  AOI22D0BWP12T30P140 U358 ( .A1(mem[24]), .A2(n301), .B1(n300), .B2(mem[36]), 
        .ZN(n304) );
  AOI22D0BWP12T30P140 U359 ( .A1(mem[30]), .A2(n309), .B1(n310), .B2(mem[42]), 
        .ZN(n303) );
  AOI21D0BWP12T30P140 U360 ( .A1(n304), .A2(n303), .B(n302), .ZN(n305) );
  AOI221D0BWP12T30P140 U361 ( .A1(n308), .A2(n307), .B1(n306), .B2(n307), .C(
        n305), .ZN(n313) );
  AOI22D0BWP12T30P140 U362 ( .A1(mem[18]), .A2(n310), .B1(mem[6]), .B2(n309), 
        .ZN(n312) );
  AOI32D0BWP12T30P140 U363 ( .A1(n314), .A2(n313), .A3(n312), .B1(n311), .B2(
        n313), .ZN(N89) );
  ND2D0BWP12T30P140 U364 ( .A1(n315), .A2(write_addr[0]), .ZN(n353) );
  NR3D0BWP12T30P140 U365 ( .A1(write_addr[1]), .A2(write_addr[3]), .A3(n353), 
        .ZN(n349) );
  INVD0BWP12T30P140 U366 ( .I(write_data[5]), .ZN(n364) );
  INVD0BWP12T30P140 U367 ( .I(n349), .ZN(n347) );
  AOI22D0BWP12T30P140 U368 ( .A1(n349), .A2(n364), .B1(n316), .B2(n347), .ZN(
        n242) );
  AOI22D0BWP12T30P140 U369 ( .A1(n319), .A2(n364), .B1(n318), .B2(n317), .ZN(
        n248) );
  AOI22D0BWP12T30P140 U370 ( .A1(n349), .A2(n363), .B1(n320), .B2(n347), .ZN(
        n240) );
  AOI22D0BWP12T30P140 U371 ( .A1(n349), .A2(n361), .B1(n321), .B2(n347), .ZN(
        n239) );
  AOI22D0BWP12T30P140 U372 ( .A1(n349), .A2(n359), .B1(n322), .B2(n347), .ZN(
        n238) );
  AOI22D0BWP12T30P140 U373 ( .A1(n349), .A2(n356), .B1(n323), .B2(n347), .ZN(
        n237) );
  INVD0BWP12T30P140 U374 ( .I(write_addr[1]), .ZN(n355) );
  NR3D0BWP12T30P140 U375 ( .A1(write_addr[3]), .A2(n355), .A3(n346), .ZN(n331)
         );
  INVD0BWP12T30P140 U376 ( .I(n331), .ZN(n329) );
  AOI22D0BWP12T30P140 U377 ( .A1(n331), .A2(n364), .B1(n324), .B2(n329), .ZN(
        n236) );
  AOI22D0BWP12T30P140 U378 ( .A1(n331), .A2(n362), .B1(n325), .B2(n329), .ZN(
        n235) );
  AOI22D0BWP12T30P140 U379 ( .A1(n331), .A2(n363), .B1(n326), .B2(n329), .ZN(
        n234) );
  AOI22D0BWP12T30P140 U380 ( .A1(n331), .A2(n361), .B1(n327), .B2(n329), .ZN(
        n233) );
  AOI22D0BWP12T30P140 U381 ( .A1(n331), .A2(n359), .B1(n328), .B2(n329), .ZN(
        n232) );
  AOI22D0BWP12T30P140 U382 ( .A1(n331), .A2(n356), .B1(n330), .B2(n329), .ZN(
        n231) );
  NR3D0BWP12T30P140 U383 ( .A1(write_addr[3]), .A2(n355), .A3(n353), .ZN(n339)
         );
  INVD0BWP12T30P140 U384 ( .I(n339), .ZN(n337) );
  AOI22D0BWP12T30P140 U385 ( .A1(n339), .A2(n364), .B1(n332), .B2(n337), .ZN(
        n230) );
  AOI22D0BWP12T30P140 U386 ( .A1(n339), .A2(n362), .B1(n333), .B2(n337), .ZN(
        n229) );
  AOI22D0BWP12T30P140 U387 ( .A1(n339), .A2(n363), .B1(n334), .B2(n337), .ZN(
        n228) );
  AOI22D0BWP12T30P140 U388 ( .A1(n339), .A2(n361), .B1(n335), .B2(n337), .ZN(
        n227) );
  AOI22D0BWP12T30P140 U389 ( .A1(n339), .A2(n359), .B1(n336), .B2(n337), .ZN(
        n226) );
  AOI22D0BWP12T30P140 U390 ( .A1(n339), .A2(n356), .B1(n338), .B2(n337), .ZN(
        n225) );
  INR3D1BWP12T30P140 U391 ( .A1(write_addr[2]), .B1(write_addr[3]), .B2(n340), 
        .ZN(n350) );
  ND2D0BWP12T30P140 U392 ( .A1(write_addr[1]), .A2(n350), .ZN(n342) );
  NR2D0BWP12T30P140 U393 ( .A1(write_addr[0]), .A2(n342), .ZN(n341) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n341), .A2(n364), .B1(mem[35]), .B2(n341), 
        .ZN(n212) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n341), .A2(n362), .B1(mem[34]), .B2(n341), 
        .ZN(n211) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n341), .A2(n363), .B1(mem[33]), .B2(n341), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n341), .A2(n361), .B1(mem[32]), .B2(n341), 
        .ZN(n209) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n341), .A2(n359), .B1(mem[31]), .B2(n341), 
        .ZN(n208) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n341), .A2(n356), .B1(mem[30]), .B2(n341), 
        .ZN(n207) );
  NR2D0BWP12T30P140 U400 ( .A1(n351), .A2(n342), .ZN(n343) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n343), .A2(n364), .B1(mem[29]), .B2(n343), 
        .ZN(n206) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n343), .A2(n362), .B1(mem[28]), .B2(n343), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n343), .A2(n363), .B1(mem[27]), .B2(n343), 
        .ZN(n204) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n343), .A2(n361), .B1(mem[26]), .B2(n343), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n343), .A2(n359), .B1(mem[25]), .B2(n343), 
        .ZN(n202) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n343), .A2(n356), .B1(mem[24]), .B2(n343), 
        .ZN(n201) );
  INVD0BWP12T30P140 U407 ( .I(write_addr[3]), .ZN(n354) );
  NR3D0BWP12T30P140 U408 ( .A1(write_addr[1]), .A2(n346), .A3(n354), .ZN(n344)
         );
  MAOI22D0BWP12T30P140 U409 ( .A1(n344), .A2(n364), .B1(mem[23]), .B2(n344), 
        .ZN(n200) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n344), .A2(n362), .B1(mem[22]), .B2(n344), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n344), .A2(n363), .B1(mem[21]), .B2(n344), 
        .ZN(n198) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n344), .A2(n361), .B1(mem[20]), .B2(n344), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n344), .A2(n359), .B1(mem[19]), .B2(n344), 
        .ZN(n196) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n344), .A2(n356), .B1(mem[18]), .B2(n344), 
        .ZN(n195) );
  NR3D0BWP12T30P140 U415 ( .A1(write_addr[1]), .A2(n354), .A3(n353), .ZN(n345)
         );
  MAOI22D0BWP12T30P140 U416 ( .A1(n345), .A2(n364), .B1(mem[17]), .B2(n345), 
        .ZN(n194) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n345), .A2(n362), .B1(mem[16]), .B2(n345), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n345), .A2(n363), .B1(mem[15]), .B2(n345), 
        .ZN(n192) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n345), .A2(n361), .B1(mem[14]), .B2(n345), 
        .ZN(n191) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n345), .A2(n359), .B1(mem[13]), .B2(n345), 
        .ZN(n190) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n345), .A2(n356), .B1(mem[12]), .B2(n345), 
        .ZN(n189) );
  NR3D0BWP12T30P140 U422 ( .A1(n346), .A2(n355), .A3(n354), .ZN(n357) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n357), .A2(n364), .B1(mem[11]), .B2(n357), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n357), .A2(n362), .B1(mem[10]), .B2(n357), 
        .ZN(n187) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n357), .A2(n363), .B1(mem[9]), .B2(n357), 
        .ZN(n186) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n357), .A2(n361), .B1(mem[8]), .B2(n357), 
        .ZN(n185) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n357), .A2(n359), .B1(mem[7]), .B2(n357), 
        .ZN(n184) );
  AOI22D0BWP12T30P140 U428 ( .A1(n349), .A2(n362), .B1(n348), .B2(n347), .ZN(
        n241) );
  ND2D0BWP12T30P140 U429 ( .A1(n350), .A2(n355), .ZN(n352) );
  NR2D0BWP12T30P140 U430 ( .A1(n351), .A2(n352), .ZN(n360) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n360), .A2(n364), .B1(mem[41]), .B2(n360), 
        .ZN(n218) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n360), .A2(n356), .B1(mem[36]), .B2(n360), 
        .ZN(n213) );
  NR2D0BWP12T30P140 U433 ( .A1(write_addr[0]), .A2(n352), .ZN(n365) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n365), .A2(n356), .B1(mem[42]), .B2(n365), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n360), .A2(n359), .B1(mem[37]), .B2(n360), 
        .ZN(n214) );
  NR3D0BWP12T30P140 U436 ( .A1(n355), .A2(n354), .A3(n353), .ZN(n358) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n358), .A2(n361), .B1(mem[2]), .B2(n358), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n358), .A2(n364), .B1(mem[5]), .B2(n358), 
        .ZN(n182) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n358), .A2(n356), .B1(mem[0]), .B2(n358), 
        .ZN(n177) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n360), .A2(n361), .B1(mem[38]), .B2(n360), 
        .ZN(n215) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n357), .A2(n356), .B1(mem[6]), .B2(n357), 
        .ZN(n183) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n358), .A2(n362), .B1(mem[4]), .B2(n358), 
        .ZN(n181) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n358), .A2(n359), .B1(mem[1]), .B2(n358), 
        .ZN(n178) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n358), .A2(n363), .B1(mem[3]), .B2(n358), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n365), .A2(n359), .B1(mem[43]), .B2(n365), 
        .ZN(n220) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n360), .A2(n363), .B1(mem[39]), .B2(n360), 
        .ZN(n216) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n360), .A2(n362), .B1(mem[40]), .B2(n360), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n365), .A2(n361), .B1(mem[44]), .B2(n365), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n365), .A2(n362), .B1(mem[46]), .B2(n365), 
        .ZN(n223) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n365), .A2(n363), .B1(mem[45]), .B2(n365), 
        .ZN(n222) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n365), .A2(n364), .B1(mem[47]), .B2(n365), 
        .ZN(n224) );
  CKBD0BWP12T30P140 U452 ( .I(clk), .Z(n372) );
  CKBD0BWP12T30P140 U453 ( .I(clk), .Z(n371) );
  CKBD0BWP12T30P140 U454 ( .I(clk), .Z(n373) );
  CKBD0BWP12T30P140 U455 ( .I(clk), .Z(n370) );
  CKBD0BWP12T30P140 U456 ( .I(rst_n), .Z(n366) );
  CKBD0BWP12T30P140 U457 ( .I(rst_n), .Z(n367) );
  CKBD0BWP12T30P140 U458 ( .I(rst_n), .Z(n369) );
  CKBD0BWP12T30P140 U459 ( .I(rst_n), .Z(n368) );
endmodule

