/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:39:55 2026
/////////////////////////////////////////////////////////////


module multi_pipe_8bit ( clk, rst_n, mul_a, mul_b, mul_en_in, mul_en_out, 
        mul_out );
  input [7:0] mul_a;
  input [7:0] mul_b;
  output [15:0] mul_out;
  input clk, rst_n, mul_en_in;
  output mul_en_out;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N79, N80, N81, N82,
         N83, N84, N85, N86, N87, N88, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278;
  wire   [2:0] mul_en_out_reg0;
  wire   [7:0] mul_a_reg;
  wire   [7:0] mul_b_reg;
  wire   [37:0] sum;
  wire   [15:0] mul_out_reg;

  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(N138), .CP(clk), .CDN(n273), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 sum_reg_1__6_ ( .D(N53), .CP(clk), .CDN(n271), .Q(
        sum[12]) );
  DFCNQD1BWP12T30P140 sum_reg_1__2_ ( .D(N49), .CP(clk), .CDN(n272), .Q(sum[8]) );
  DFCNQD1BWP12T30P140 mul_en_out_reg ( .D(mul_en_out_reg0[2]), .CP(n275), 
        .CDN(n274), .Q(mul_en_out) );
  DFCNQD1BWP12T30P140 mul_out_reg_15_ ( .D(N153), .CP(n277), .CDN(n272), .Q(
        mul_out[15]) );
  DFCNQD1BWP12T30P140 mul_out_reg_14_ ( .D(N152), .CP(n277), .CDN(n272), .Q(
        mul_out[14]) );
  DFCNQD1BWP12T30P140 mul_out_reg_13_ ( .D(N151), .CP(n278), .CDN(n272), .Q(
        mul_out[13]) );
  DFCNQD1BWP12T30P140 mul_out_reg_12_ ( .D(N150), .CP(n278), .CDN(n271), .Q(
        mul_out[12]) );
  DFCNQD1BWP12T30P140 mul_out_reg_11_ ( .D(N149), .CP(n278), .CDN(n271), .Q(
        mul_out[11]) );
  DFCNQD1BWP12T30P140 mul_out_reg_10_ ( .D(N148), .CP(n278), .CDN(n271), .Q(
        mul_out[10]) );
  DFCNQD1BWP12T30P140 mul_out_reg_9_ ( .D(N147), .CP(n278), .CDN(n271), .Q(
        mul_out[9]) );
  DFCNQD1BWP12T30P140 mul_out_reg_8_ ( .D(N146), .CP(n278), .CDN(n271), .Q(
        mul_out[8]) );
  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(N145), .CP(n278), .CDN(n271), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(N144), .CP(n278), .CDN(n271), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(N143), .CP(n278), .CDN(n271), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(N142), .CP(n278), .CDN(n271), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(N141), .CP(n278), .CDN(n271), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(N140), .CP(n278), .CDN(n271), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(N139), .CP(n278), .CDN(n271), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_15_ ( .D(N136), .CP(n275), .CDN(n273), 
        .Q(mul_out_reg[15]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_14_ ( .D(N135), .CP(n276), .CDN(n273), 
        .Q(mul_out_reg[14]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_13_ ( .D(N134), .CP(n278), .CDN(n273), 
        .Q(mul_out_reg[13]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_12_ ( .D(N133), .CP(n277), .CDN(n273), 
        .Q(mul_out_reg[12]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_11_ ( .D(N132), .CP(n275), .CDN(n273), 
        .Q(mul_out_reg[11]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_10_ ( .D(N131), .CP(n277), .CDN(n273), 
        .Q(mul_out_reg[10]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_9_ ( .D(N130), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[9]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_8_ ( .D(N129), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[8]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_7_ ( .D(N128), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_6_ ( .D(N127), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_5_ ( .D(N126), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_4_ ( .D(N125), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_3_ ( .D(N124), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_2_ ( .D(N123), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_1_ ( .D(N122), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_reg_0_ ( .D(N121), .CP(n277), .CDN(n272), 
        .Q(mul_out_reg[0]) );
  DFCNQD1BWP12T30P140 sum_reg_1__9_ ( .D(N56), .CP(clk), .CDN(n274), .Q(
        sum[15]) );
  DFCNQD1BWP12T30P140 sum_reg_1__8_ ( .D(N55), .CP(clk), .CDN(rst_n), .Q(
        sum[14]) );
  DFCNQD1BWP12T30P140 sum_reg_1__7_ ( .D(N54), .CP(clk), .CDN(n273), .Q(
        sum[13]) );
  DFCNQD1BWP12T30P140 sum_reg_2__13_ ( .D(N72), .CP(n276), .CDN(n274), .Q(
        sum[27]) );
  DFCNQD1BWP12T30P140 sum_reg_2__11_ ( .D(N70), .CP(n278), .CDN(n274), .Q(
        sum[25]) );
  DFCNQD1BWP12T30P140 sum_reg_2__10_ ( .D(N69), .CP(n277), .CDN(n274), .Q(
        sum[24]) );
  DFCNQD1BWP12T30P140 sum_reg_2__4_ ( .D(N63), .CP(n275), .CDN(n274), .Q(
        sum[18]) );
  DFCNQD1BWP12T30P140 sum_reg_3__13_ ( .D(N86), .CP(n276), .CDN(rst_n), .Q(
        sum[35]) );
  DFCNQD1BWP12T30P140 sum_reg_3__11_ ( .D(N84), .CP(n276), .CDN(rst_n), .Q(
        sum[33]) );
  DFCNQD1BWP12T30P140 sum_reg_3__10_ ( .D(N83), .CP(n276), .CDN(rst_n), .Q(
        sum[32]) );
  DFCNQD1BWP12T30P140 sum_reg_3__6_ ( .D(N79), .CP(n278), .CDN(n274), .Q(
        sum[28]) );
  DFCNQD1BWP12T30P140 sum_reg_0__4_ ( .D(N41), .CP(n276), .CDN(n273), .Q(
        sum[2]) );
  DFCNQD1BWP12T30P140 sum_reg_0__2_ ( .D(N39), .CP(n278), .CDN(n273), .Q(
        sum[0]) );
  DFCNQD1BWP12T30P140 sum_reg_1__5_ ( .D(N52), .CP(clk), .CDN(n271), .Q(
        sum[11]) );
  DFCNQD1BWP12T30P140 sum_reg_1__3_ ( .D(N50), .CP(clk), .CDN(n272), .Q(sum[9]) );
  DFCNQD1BWP12T30P140 sum_reg_1__11_ ( .D(N58), .CP(clk), .CDN(n274), .Q(
        sum[17]) );
  DFCNQD1BWP12T30P140 sum_reg_1__10_ ( .D(N57), .CP(clk), .CDN(n274), .Q(
        sum[16]) );
  DFCNQD1BWP12T30P140 sum_reg_1__4_ ( .D(N51), .CP(clk), .CDN(rst_n), .Q(
        sum[10]) );
  DFCNQD1BWP12T30P140 sum_reg_0__9_ ( .D(N46), .CP(clk), .CDN(n273), .Q(sum[7]) );
  DFCNQD1BWP12T30P140 sum_reg_0__8_ ( .D(N45), .CP(clk), .CDN(n271), .Q(sum[6]) );
  DFCNQD1BWP12T30P140 sum_reg_3__15_ ( .D(N88), .CP(n276), .CDN(rst_n), .Q(
        sum[37]) );
  DFCNQD1BWP12T30P140 mul_en_out_reg_reg_0_ ( .D(mul_en_in), .CP(clk), .CDN(
        n271), .Q(mul_en_out_reg0[0]) );
  DFCNQD1BWP12T30P140 sum_reg_2__5_ ( .D(N64), .CP(n276), .CDN(n274), .Q(
        sum[19]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_7_ ( .D(N19), .CP(n275), .CDN(n273), .Q(
        mul_a_reg[7]) );
  DFCNQD1BWP12T30P140 sum_reg_3__9_ ( .D(N82), .CP(n276), .CDN(rst_n), .Q(
        sum[31]) );
  DFCNQD1BWP12T30P140 sum_reg_3__8_ ( .D(N81), .CP(n278), .CDN(rst_n), .Q(
        sum[30]) );
  DFCNQD1BWP12T30P140 sum_reg_3__7_ ( .D(N80), .CP(n277), .CDN(n274), .Q(
        sum[29]) );
  DFCNQD1BWP12T30P140 sum_reg_2__12_ ( .D(N71), .CP(n275), .CDN(n274), .Q(
        sum[26]) );
  DFCNQD1BWP12T30P140 sum_reg_2__6_ ( .D(N65), .CP(n277), .CDN(n274), .Q(
        sum[20]) );
  DFCNQD1BWP12T30P140 sum_reg_3__14_ ( .D(N87), .CP(n276), .CDN(rst_n), .Q(
        sum[36]) );
  DFCNQD1BWP12T30P140 sum_reg_3__12_ ( .D(N85), .CP(n276), .CDN(rst_n), .Q(
        sum[34]) );
  DFCNQD1BWP12T30P140 sum_reg_2__9_ ( .D(N68), .CP(n276), .CDN(n274), .Q(
        sum[23]) );
  DFCNQD1BWP12T30P140 sum_reg_2__8_ ( .D(N67), .CP(n278), .CDN(n274), .Q(
        sum[22]) );
  DFCNQD1BWP12T30P140 sum_reg_2__7_ ( .D(N66), .CP(n277), .CDN(n274), .Q(
        sum[21]) );
  DFCNQD1BWP12T30P140 sum_reg_0__7_ ( .D(N44), .CP(n277), .CDN(n272), .Q(
        sum[5]) );
  DFCNQD1BWP12T30P140 sum_reg_0__6_ ( .D(N43), .CP(n275), .CDN(n273), .Q(
        sum[4]) );
  DFCNQD1BWP12T30P140 sum_reg_0__5_ ( .D(N42), .CP(n276), .CDN(n273), .Q(
        sum[3]) );
  DFCNQD1BWP12T30P140 sum_reg_0__3_ ( .D(N40), .CP(n278), .CDN(n273), .Q(
        sum[1]) );
  DFCNQD1BWP12T30P140 mul_en_out_reg_reg_1_ ( .D(mul_en_out_reg0[0]), .CP(n275), .CDN(n272), .Q(mul_en_out_reg0[1]) );
  DFCNQD1BWP12T30P140 sum_reg_0__1_ ( .D(N38), .CP(n277), .CDN(n273), .Q(N122)
         );
  DFCNQD1BWP12T30P140 sum_reg_0__0_ ( .D(N37), .CP(n275), .CDN(n273), .Q(N121)
         );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_1_ ( .D(N13), .CP(n276), .CDN(rst_n), .Q(
        mul_a_reg[1]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_0_ ( .D(N12), .CP(n275), .CDN(n271), .Q(
        mul_a_reg[0]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_2_ ( .D(N14), .CP(n276), .CDN(rst_n), .Q(
        mul_a_reg[2]) );
  DFQD2BWP12T30P140 mul_b_reg_reg_0_ ( .D(n99), .CP(n275), .Q(mul_b_reg[0]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_6_ ( .D(N18), .CP(n276), .CDN(n274), .Q(
        mul_a_reg[6]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_5_ ( .D(N17), .CP(n276), .CDN(rst_n), .Q(
        mul_a_reg[5]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_4_ ( .D(N16), .CP(n276), .CDN(rst_n), .Q(
        mul_a_reg[4]) );
  DFCNQD1BWP12T30P140 mul_a_reg_reg_3_ ( .D(N15), .CP(n276), .CDN(rst_n), .Q(
        mul_a_reg[3]) );
  DFQD2BWP12T30P140 mul_b_reg_reg_6_ ( .D(n105), .CP(n275), .Q(mul_b_reg[6])
         );
  DFQD2BWP12T30P140 mul_b_reg_reg_4_ ( .D(n103), .CP(n275), .Q(mul_b_reg[4])
         );
  DFQD2BWP12T30P140 mul_b_reg_reg_2_ ( .D(n101), .CP(n275), .Q(mul_b_reg[2])
         );
  DFQD2BWP12T30P140 mul_b_reg_reg_7_ ( .D(n106), .CP(n275), .Q(mul_b_reg[7])
         );
  DFCNQD1BWP12T30P140 mul_en_out_reg_reg_2_ ( .D(mul_en_out_reg0[1]), .CP(n275), .CDN(n271), .Q(mul_en_out_reg0[2]) );
  DFQD1BWP12T30P140 mul_b_reg_reg_1_ ( .D(n100), .CP(n275), .Q(mul_b_reg[1])
         );
  DFQD1BWP12T30P140 mul_b_reg_reg_5_ ( .D(n104), .CP(n275), .Q(mul_b_reg[5])
         );
  DFQD1BWP12T30P140 mul_b_reg_reg_3_ ( .D(n102), .CP(n275), .Q(mul_b_reg[3])
         );
  INVD0BWP12T30P140 U150 ( .I(mul_a_reg[0]), .ZN(n224) );
  INVD0BWP12T30P140 U151 ( .I(mul_b_reg[2]), .ZN(n253) );
  NR2D0BWP12T30P140 U152 ( .A1(n224), .A2(n253), .ZN(N49) );
  INVD0BWP12T30P140 U153 ( .I(mul_a_reg[2]), .ZN(n186) );
  NR2D0BWP12T30P140 U154 ( .A1(n186), .A2(n253), .ZN(n184) );
  INVD0BWP12T30P140 U155 ( .I(mul_a_reg[1]), .ZN(n185) );
  INVD0BWP12T30P140 U156 ( .I(mul_b_reg[3]), .ZN(n223) );
  NR2D0BWP12T30P140 U157 ( .A1(n185), .A2(n223), .ZN(n181) );
  OAI21D0BWP12T30P140 U158 ( .A1(n184), .A2(N49), .B(n181), .ZN(n174) );
  ND2D0BWP12T30P140 U159 ( .A1(mul_b_reg[2]), .A2(mul_a_reg[3]), .ZN(n173) );
  ND2D0BWP12T30P140 U160 ( .A1(mul_a_reg[2]), .A2(mul_b_reg[3]), .ZN(n172) );
  ND2D0BWP12T30P140 U161 ( .A1(mul_b_reg[2]), .A2(mul_a_reg[4]), .ZN(n147) );
  ND2D0BWP12T30P140 U162 ( .A1(mul_b_reg[3]), .A2(mul_a_reg[3]), .ZN(n146) );
  INVD0BWP12T30P140 U163 ( .I(n107), .ZN(N53) );
  AN2D0BWP12T30P140 U164 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[15]), .Z(
        N153) );
  AN2D0BWP12T30P140 U165 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[14]), .Z(
        N152) );
  AN2D0BWP12T30P140 U166 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[13]), .Z(
        N151) );
  AN2D0BWP12T30P140 U167 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[12]), .Z(
        N150) );
  AN2D0BWP12T30P140 U168 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[11]), .Z(
        N149) );
  AN2D0BWP12T30P140 U169 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[10]), .Z(
        N148) );
  AN2D0BWP12T30P140 U170 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[9]), .Z(
        N147) );
  AN2D0BWP12T30P140 U171 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[8]), .Z(
        N146) );
  AN2D0BWP12T30P140 U172 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[7]), .Z(
        N145) );
  AN2D0BWP12T30P140 U173 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[6]), .Z(
        N144) );
  AN2D0BWP12T30P140 U174 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[5]), .Z(
        N143) );
  AN2D0BWP12T30P140 U175 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[4]), .Z(
        N142) );
  AN2D0BWP12T30P140 U176 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[3]), .Z(
        N141) );
  AN2D0BWP12T30P140 U177 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[2]), .Z(
        N140) );
  AN2D0BWP12T30P140 U178 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[1]), .Z(
        N139) );
  AN2D0BWP12T30P140 U179 ( .A1(sum[27]), .A2(sum[35]), .Z(n260) );
  IAO21D0BWP12T30P140 U180 ( .A1(sum[27]), .A2(sum[35]), .B(n260), .ZN(n259)
         );
  AN2D0BWP12T30P140 U181 ( .A1(sum[25]), .A2(sum[33]), .Z(n119) );
  IAO21D0BWP12T30P140 U182 ( .A1(sum[25]), .A2(sum[33]), .B(n119), .ZN(n108)
         );
  AN2D0BWP12T30P140 U183 ( .A1(sum[24]), .A2(sum[32]), .Z(n109) );
  FA1D0BWP12T30P140 U184 ( .A(sum[17]), .B(n108), .CI(n109), .CO(n122), .S(
        n125) );
  IAO21D0BWP12T30P140 U185 ( .A1(sum[24]), .A2(sum[32]), .B(n109), .ZN(n110)
         );
  FA1D0BWP12T30P140 U186 ( .A(sum[16]), .B(n111), .CI(n110), .CO(n124), .S(
        n128) );
  FA1D0BWP12T30P140 U187 ( .A(sum[7]), .B(sum[31]), .CI(sum[15]), .CO(n111), 
        .S(n112) );
  FA1D0BWP12T30P140 U188 ( .A(sum[23]), .B(n113), .CI(n112), .CO(n127), .S(
        n131) );
  FA1D0BWP12T30P140 U189 ( .A(sum[6]), .B(sum[30]), .CI(sum[14]), .CO(n113), 
        .S(n114) );
  FA1D0BWP12T30P140 U190 ( .A(sum[22]), .B(n115), .CI(n114), .CO(n130), .S(
        n134) );
  AN2D0BWP12T30P140 U191 ( .A1(sum[12]), .A2(sum[28]), .Z(n117) );
  IAO21D0BWP12T30P140 U192 ( .A1(sum[12]), .A2(sum[28]), .B(n117), .ZN(n116)
         );
  FA1D0BWP12T30P140 U193 ( .A(sum[4]), .B(sum[20]), .CI(n116), .CO(n118), .S(
        n140) );
  AN2D0BWP12T30P140 U194 ( .A1(sum[8]), .A2(sum[0]), .Z(n263) );
  AN2D0BWP12T30P140 U195 ( .A1(sum[18]), .A2(sum[2]), .Z(n142) );
  IAO21D0BWP12T30P140 U196 ( .A1(sum[18]), .A2(sum[2]), .B(n142), .ZN(n144) );
  FA1D0BWP12T30P140 U197 ( .A(sum[3]), .B(sum[11]), .CI(sum[19]), .CO(n139), 
        .S(n141) );
  FA1D0BWP12T30P140 U198 ( .A(sum[21]), .B(n118), .CI(n117), .CO(n133), .S(
        n136) );
  FA1D0BWP12T30P140 U199 ( .A(sum[5]), .B(sum[29]), .CI(sum[13]), .CO(n115), 
        .S(n135) );
  FA1D0BWP12T30P140 U200 ( .A(sum[34]), .B(sum[26]), .CI(n119), .CO(n258), .S(
        n120) );
  FA1D0BWP12T30P140 U201 ( .A(n122), .B(n121), .CI(n120), .CO(n257), .S(N133)
         );
  FA1D0BWP12T30P140 U202 ( .A(n125), .B(n124), .CI(n123), .CO(n121), .S(N132)
         );
  FA1D0BWP12T30P140 U203 ( .A(n128), .B(n127), .CI(n126), .CO(n123), .S(N131)
         );
  FA1D0BWP12T30P140 U204 ( .A(n131), .B(n130), .CI(n129), .CO(n126), .S(N130)
         );
  FA1D0BWP12T30P140 U205 ( .A(n134), .B(n133), .CI(n132), .CO(n129), .S(N129)
         );
  FA1D0BWP12T30P140 U206 ( .A(n137), .B(n136), .CI(n135), .CO(n132), .S(N128)
         );
  FA1D0BWP12T30P140 U207 ( .A(n140), .B(n139), .CI(n138), .CO(n137), .S(N127)
         );
  FA1D0BWP12T30P140 U208 ( .A(n143), .B(n142), .CI(n141), .CO(n138), .S(N126)
         );
  FA1D0BWP12T30P140 U209 ( .A(sum[10]), .B(n145), .CI(n144), .CO(n143), .S(
        N125) );
  FA1D0BWP12T30P140 U210 ( .A(sum[1]), .B(sum[9]), .CI(n263), .CO(n145), .S(
        N124) );
  FA1D0BWP12T30P140 U211 ( .A(n148), .B(n147), .CI(n146), .CO(n156), .S(n107)
         );
  ND2D0BWP12T30P140 U212 ( .A1(mul_b_reg[2]), .A2(mul_a_reg[5]), .ZN(n155) );
  ND2D0BWP12T30P140 U213 ( .A1(mul_b_reg[3]), .A2(mul_a_reg[4]), .ZN(n154) );
  ND2D0BWP12T30P140 U214 ( .A1(mul_b_reg[2]), .A2(mul_a_reg[6]), .ZN(n151) );
  ND2D0BWP12T30P140 U215 ( .A1(mul_b_reg[3]), .A2(mul_a_reg[5]), .ZN(n150) );
  ND2D0BWP12T30P140 U216 ( .A1(mul_b_reg[2]), .A2(mul_a_reg[7]), .ZN(n178) );
  ND2D0BWP12T30P140 U217 ( .A1(mul_b_reg[3]), .A2(mul_a_reg[6]), .ZN(n177) );
  INVD0BWP12T30P140 U218 ( .I(n149), .ZN(N56) );
  FA1D0BWP12T30P140 U219 ( .A(n152), .B(n151), .CI(n150), .CO(n179), .S(n153)
         );
  INVD0BWP12T30P140 U220 ( .I(n153), .ZN(N55) );
  FA1D0BWP12T30P140 U221 ( .A(n156), .B(n155), .CI(n154), .CO(n152), .S(n157)
         );
  INVD0BWP12T30P140 U222 ( .I(n157), .ZN(N54) );
  INVD0BWP12T30P140 U223 ( .I(mul_b_reg[4]), .ZN(n252) );
  NR2D0BWP12T30P140 U224 ( .A1(n224), .A2(n252), .ZN(N63) );
  NR2D0BWP12T30P140 U225 ( .A1(n186), .A2(n252), .ZN(n210) );
  INVD0BWP12T30P140 U226 ( .I(mul_b_reg[5]), .ZN(n237) );
  NR2D0BWP12T30P140 U227 ( .A1(n185), .A2(n237), .ZN(n207) );
  OAI21D0BWP12T30P140 U228 ( .A1(n210), .A2(N63), .B(n207), .ZN(n247) );
  ND2D0BWP12T30P140 U229 ( .A1(mul_b_reg[4]), .A2(mul_a_reg[3]), .ZN(n246) );
  ND2D0BWP12T30P140 U230 ( .A1(mul_a_reg[2]), .A2(mul_b_reg[5]), .ZN(n245) );
  ND2D0BWP12T30P140 U231 ( .A1(mul_b_reg[4]), .A2(mul_a_reg[4]), .ZN(n242) );
  ND2D0BWP12T30P140 U232 ( .A1(mul_b_reg[5]), .A2(mul_a_reg[3]), .ZN(n241) );
  ND2D0BWP12T30P140 U233 ( .A1(mul_b_reg[4]), .A2(mul_a_reg[5]), .ZN(n220) );
  ND2D0BWP12T30P140 U234 ( .A1(mul_b_reg[5]), .A2(mul_a_reg[4]), .ZN(n219) );
  ND2D0BWP12T30P140 U235 ( .A1(mul_b_reg[4]), .A2(mul_a_reg[6]), .ZN(n160) );
  ND2D0BWP12T30P140 U236 ( .A1(mul_b_reg[5]), .A2(mul_a_reg[5]), .ZN(n159) );
  ND2D0BWP12T30P140 U237 ( .A1(mul_b_reg[4]), .A2(mul_a_reg[7]), .ZN(n204) );
  ND2D0BWP12T30P140 U238 ( .A1(mul_b_reg[5]), .A2(mul_a_reg[6]), .ZN(n203) );
  INVD0BWP12T30P140 U239 ( .I(n158), .ZN(N70) );
  FA1D0BWP12T30P140 U240 ( .A(n161), .B(n160), .CI(n159), .CO(n205), .S(n162)
         );
  INVD0BWP12T30P140 U241 ( .I(n162), .ZN(N69) );
  INVD0BWP12T30P140 U242 ( .I(mul_b_reg[6]), .ZN(n256) );
  NR2D0BWP12T30P140 U243 ( .A1(n224), .A2(n256), .ZN(N79) );
  NR2D0BWP12T30P140 U244 ( .A1(n186), .A2(n256), .ZN(n200) );
  INVD0BWP12T30P140 U245 ( .I(mul_b_reg[7]), .ZN(n249) );
  NR2D0BWP12T30P140 U246 ( .A1(n185), .A2(n249), .ZN(n202) );
  OAI21D0BWP12T30P140 U247 ( .A1(n200), .A2(N79), .B(n202), .ZN(n196) );
  ND2D0BWP12T30P140 U248 ( .A1(mul_b_reg[6]), .A2(mul_a_reg[3]), .ZN(n195) );
  ND2D0BWP12T30P140 U249 ( .A1(mul_a_reg[2]), .A2(mul_b_reg[7]), .ZN(n194) );
  ND2D0BWP12T30P140 U250 ( .A1(mul_b_reg[6]), .A2(mul_a_reg[4]), .ZN(n169) );
  ND2D0BWP12T30P140 U251 ( .A1(mul_b_reg[7]), .A2(mul_a_reg[3]), .ZN(n168) );
  ND2D0BWP12T30P140 U252 ( .A1(mul_b_reg[6]), .A2(mul_a_reg[5]), .ZN(n165) );
  ND2D0BWP12T30P140 U253 ( .A1(mul_b_reg[7]), .A2(mul_a_reg[4]), .ZN(n164) );
  ND2D0BWP12T30P140 U254 ( .A1(mul_b_reg[6]), .A2(mul_a_reg[6]), .ZN(n216) );
  ND2D0BWP12T30P140 U255 ( .A1(mul_b_reg[7]), .A2(mul_a_reg[5]), .ZN(n215) );
  ND2D0BWP12T30P140 U256 ( .A1(mul_b_reg[6]), .A2(mul_a_reg[7]), .ZN(n212) );
  ND2D0BWP12T30P140 U257 ( .A1(mul_b_reg[7]), .A2(mul_a_reg[6]), .ZN(n211) );
  INVD0BWP12T30P140 U258 ( .I(n163), .ZN(N86) );
  FA1D0BWP12T30P140 U259 ( .A(n166), .B(n165), .CI(n164), .CO(n217), .S(n167)
         );
  INVD0BWP12T30P140 U260 ( .I(n167), .ZN(N84) );
  FA1D0BWP12T30P140 U261 ( .A(n170), .B(n169), .CI(n168), .CO(n166), .S(n171)
         );
  INVD0BWP12T30P140 U262 ( .I(n171), .ZN(N83) );
  FA1D0BWP12T30P140 U263 ( .A(n174), .B(n173), .CI(n172), .CO(n148), .S(n175)
         );
  INVD0BWP12T30P140 U264 ( .I(n175), .ZN(N52) );
  AOI22D0BWP12T30P140 U265 ( .A1(mul_a_reg[1]), .A2(mul_b_reg[2]), .B1(
        mul_a_reg[0]), .B2(mul_b_reg[3]), .ZN(n176) );
  AOI21D0BWP12T30P140 U266 ( .A1(N49), .A2(n181), .B(n176), .ZN(N50) );
  FA1D0BWP12T30P140 U267 ( .A(n179), .B(n178), .CI(n177), .CO(n180), .S(n149)
         );
  INVD0BWP12T30P140 U268 ( .I(mul_a_reg[7]), .ZN(n264) );
  NR2D0BWP12T30P140 U269 ( .A1(n180), .A2(n264), .ZN(N58) );
  AOI211D0BWP12T30P140 U270 ( .A1(n180), .A2(n264), .B(N58), .C(n223), .ZN(N57) );
  INVD0BWP12T30P140 U271 ( .I(n181), .ZN(n183) );
  OAI21D0BWP12T30P140 U272 ( .A1(N49), .A2(n183), .B(n184), .ZN(n182) );
  OAI31D0BWP12T30P140 U273 ( .A1(N49), .A2(n184), .A3(n183), .B(n182), .ZN(N51) );
  INVD0BWP12T30P140 U274 ( .I(mul_b_reg[1]), .ZN(n193) );
  INVD0BWP12T30P140 U275 ( .I(mul_b_reg[0]), .ZN(n254) );
  NR4D0BWP12T30P140 U276 ( .A1(n185), .A2(n193), .A3(n224), .A4(n254), .ZN(
        n267) );
  AOI21D0BWP12T30P140 U277 ( .A1(mul_b_reg[0]), .A2(mul_a_reg[2]), .B(n267), 
        .ZN(n266) );
  NR2D0BWP12T30P140 U278 ( .A1(n185), .A2(n193), .ZN(n269) );
  INVD0BWP12T30P140 U279 ( .I(n269), .ZN(n270) );
  NR2D0BWP12T30P140 U280 ( .A1(n266), .A2(n270), .ZN(n240) );
  NR2D0BWP12T30P140 U281 ( .A1(n193), .A2(n186), .ZN(n239) );
  INVD0BWP12T30P140 U282 ( .I(mul_a_reg[3]), .ZN(n187) );
  NR2D0BWP12T30P140 U283 ( .A1(n254), .A2(n187), .ZN(n238) );
  NR2D0BWP12T30P140 U284 ( .A1(n193), .A2(n187), .ZN(n235) );
  INVD0BWP12T30P140 U285 ( .I(mul_a_reg[4]), .ZN(n188) );
  NR2D0BWP12T30P140 U286 ( .A1(n254), .A2(n188), .ZN(n234) );
  NR2D0BWP12T30P140 U287 ( .A1(n193), .A2(n188), .ZN(n232) );
  INVD0BWP12T30P140 U288 ( .I(mul_a_reg[5]), .ZN(n189) );
  NR2D0BWP12T30P140 U289 ( .A1(n254), .A2(n189), .ZN(n231) );
  NR2D0BWP12T30P140 U290 ( .A1(n193), .A2(n189), .ZN(n229) );
  INVD0BWP12T30P140 U291 ( .I(mul_a_reg[6]), .ZN(n190) );
  NR2D0BWP12T30P140 U292 ( .A1(n254), .A2(n190), .ZN(n228) );
  NR2D0BWP12T30P140 U293 ( .A1(n193), .A2(n190), .ZN(n226) );
  NR2D0BWP12T30P140 U294 ( .A1(n254), .A2(n264), .ZN(n225) );
  ND2D0BWP12T30P140 U295 ( .A1(n265), .A2(n264), .ZN(n191) );
  OAI31D0BWP12T30P140 U296 ( .A1(n193), .A2(n265), .A3(n264), .B(n191), .ZN(
        N45) );
  AN2D0BWP12T30P140 U297 ( .A1(mul_en_out_reg0[2]), .A2(mul_out_reg[0]), .Z(
        N138) );
  AOI22D0BWP12T30P140 U298 ( .A1(mul_a_reg[1]), .A2(mul_b_reg[4]), .B1(
        mul_a_reg[0]), .B2(mul_b_reg[5]), .ZN(n192) );
  AOI21D0BWP12T30P140 U299 ( .A1(N63), .A2(n207), .B(n192), .ZN(N64) );
  AN2D0BWP12T30P140 U300 ( .A1(mul_en_in), .A2(n272), .Z(n255) );
  MOAI22D0BWP12T30P140 U301 ( .A1(n193), .A2(n273), .B1(n255), .B2(mul_b[1]), 
        .ZN(n100) );
  AN2D0BWP12T30P140 U302 ( .A1(mul_en_in), .A2(mul_a[7]), .Z(N19) );
  FA1D0BWP12T30P140 U303 ( .A(n196), .B(n195), .CI(n194), .CO(n170), .S(n197)
         );
  INVD0BWP12T30P140 U304 ( .I(n197), .ZN(N82) );
  INVD0BWP12T30P140 U305 ( .I(n202), .ZN(n199) );
  OAI21D0BWP12T30P140 U306 ( .A1(N79), .A2(n199), .B(n200), .ZN(n198) );
  OAI31D0BWP12T30P140 U307 ( .A1(N79), .A2(n200), .A3(n199), .B(n198), .ZN(N81) );
  AOI22D0BWP12T30P140 U308 ( .A1(mul_a_reg[1]), .A2(mul_b_reg[6]), .B1(
        mul_a_reg[0]), .B2(mul_b_reg[7]), .ZN(n201) );
  AOI21D0BWP12T30P140 U309 ( .A1(N79), .A2(n202), .B(n201), .ZN(N80) );
  FA1D0BWP12T30P140 U310 ( .A(n205), .B(n204), .CI(n203), .CO(n206), .S(n158)
         );
  NR2D0BWP12T30P140 U311 ( .A1(n206), .A2(n264), .ZN(N72) );
  AOI211D0BWP12T30P140 U312 ( .A1(n206), .A2(n264), .B(N72), .C(n237), .ZN(N71) );
  INVD0BWP12T30P140 U313 ( .I(n207), .ZN(n209) );
  OAI21D0BWP12T30P140 U314 ( .A1(N63), .A2(n209), .B(n210), .ZN(n208) );
  OAI31D0BWP12T30P140 U315 ( .A1(N63), .A2(n210), .A3(n209), .B(n208), .ZN(N65) );
  FA1D0BWP12T30P140 U316 ( .A(n213), .B(n212), .CI(n211), .CO(n214), .S(n163)
         );
  NR2D0BWP12T30P140 U317 ( .A1(n214), .A2(n264), .ZN(N88) );
  AOI211D0BWP12T30P140 U318 ( .A1(n214), .A2(n264), .B(N88), .C(n249), .ZN(N87) );
  FA1D0BWP12T30P140 U319 ( .A(n217), .B(n216), .CI(n215), .CO(n213), .S(n218)
         );
  INVD0BWP12T30P140 U320 ( .I(n218), .ZN(N85) );
  AN2D0BWP12T30P140 U321 ( .A1(mul_en_in), .A2(mul_a[3]), .Z(N15) );
  AN2D0BWP12T30P140 U322 ( .A1(mul_en_in), .A2(mul_a[6]), .Z(N18) );
  AN2D0BWP12T30P140 U323 ( .A1(mul_en_in), .A2(mul_a[1]), .Z(N13) );
  FA1D0BWP12T30P140 U324 ( .A(n221), .B(n220), .CI(n219), .CO(n161), .S(n222)
         );
  INVD0BWP12T30P140 U325 ( .I(n222), .ZN(N68) );
  MOAI22D0BWP12T30P140 U326 ( .A1(n223), .A2(n274), .B1(n255), .B2(mul_b[3]), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U327 ( .A1(n224), .A2(n254), .ZN(N37) );
  FA1D0BWP12T30P140 U328 ( .A(n227), .B(n226), .CI(n225), .CO(n265), .S(N44)
         );
  FA1D0BWP12T30P140 U329 ( .A(n230), .B(n229), .CI(n228), .CO(n227), .S(N43)
         );
  FA1D0BWP12T30P140 U330 ( .A(n233), .B(n232), .CI(n231), .CO(n230), .S(N42)
         );
  FA1D0BWP12T30P140 U331 ( .A(n236), .B(n235), .CI(n234), .CO(n233), .S(N41)
         );
  MOAI22D0BWP12T30P140 U332 ( .A1(n237), .A2(rst_n), .B1(n255), .B2(mul_b[5]), 
        .ZN(n104) );
  AN2D0BWP12T30P140 U333 ( .A1(mul_en_in), .A2(mul_a[5]), .Z(N17) );
  FA1D0BWP12T30P140 U334 ( .A(n240), .B(n239), .CI(n238), .CO(n236), .S(N40)
         );
  FA1D0BWP12T30P140 U335 ( .A(n243), .B(n242), .CI(n241), .CO(n221), .S(n244)
         );
  INVD0BWP12T30P140 U336 ( .I(n244), .ZN(N67) );
  FA1D0BWP12T30P140 U337 ( .A(n247), .B(n246), .CI(n245), .CO(n243), .S(n248)
         );
  INVD0BWP12T30P140 U338 ( .I(n248), .ZN(N66) );
  MOAI22D0BWP12T30P140 U339 ( .A1(n249), .A2(n273), .B1(n255), .B2(mul_b[7]), 
        .ZN(n106) );
  ND2D0BWP12T30P140 U340 ( .A1(mul_b_reg[1]), .A2(mul_a_reg[0]), .ZN(n251) );
  ND2D0BWP12T30P140 U341 ( .A1(mul_a_reg[1]), .A2(mul_b_reg[0]), .ZN(n250) );
  AOI21D0BWP12T30P140 U342 ( .A1(n251), .A2(n250), .B(n267), .ZN(N38) );
  AN2D0BWP12T30P140 U343 ( .A1(mul_en_in), .A2(mul_a[0]), .Z(N12) );
  MOAI22D0BWP12T30P140 U344 ( .A1(n252), .A2(n274), .B1(n255), .B2(mul_b[4]), 
        .ZN(n103) );
  MOAI22D0BWP12T30P140 U345 ( .A1(n253), .A2(n274), .B1(n255), .B2(mul_b[2]), 
        .ZN(n101) );
  MOAI22D0BWP12T30P140 U346 ( .A1(n254), .A2(n272), .B1(n255), .B2(mul_b[0]), 
        .ZN(n99) );
  AN2D0BWP12T30P140 U347 ( .A1(mul_en_in), .A2(mul_a[4]), .Z(N16) );
  AN2D0BWP12T30P140 U348 ( .A1(mul_en_in), .A2(mul_a[2]), .Z(N14) );
  MOAI22D0BWP12T30P140 U349 ( .A1(n256), .A2(n273), .B1(n255), .B2(mul_b[6]), 
        .ZN(n105) );
  CKBD0BWP12T30P140 U350 ( .I(clk), .Z(n277) );
  CKBD0BWP12T30P140 U351 ( .I(clk), .Z(n278) );
  CKBD0BWP12T30P140 U352 ( .I(clk), .Z(n275) );
  CKBD0BWP12T30P140 U353 ( .I(clk), .Z(n276) );
  CKBD0BWP12T30P140 U354 ( .I(rst_n), .Z(n271) );
  CKBD0BWP12T30P140 U355 ( .I(rst_n), .Z(n272) );
  CKBD0BWP12T30P140 U356 ( .I(rst_n), .Z(n273) );
  CKBD0BWP12T30P140 U357 ( .I(rst_n), .Z(n274) );
  FA1D0BWP12T30P140 U358 ( .A(n259), .B(n258), .CI(n257), .CO(n261), .S(N134)
         );
  FA1D0BWP12T30P140 U359 ( .A(sum[36]), .B(n261), .CI(n260), .CO(n262), .S(
        N135) );
  CKXOR2D0BWP12T30P140 U360 ( .A1(sum[37]), .A2(n262), .Z(N136) );
  IAO21D0BWP12T30P140 U361 ( .A1(sum[8]), .A2(sum[0]), .B(n263), .ZN(N123) );
  INR2D1BWP12T30P140 U362 ( .A1(n265), .B1(n264), .ZN(N46) );
  AOI21D0BWP12T30P140 U363 ( .A1(mul_a_reg[2]), .A2(n267), .B(n266), .ZN(n268)
         );
  MUX2ND0BWP12T30P140 U364 ( .I0(n270), .I1(n269), .S(n268), .ZN(N39) );
endmodule

