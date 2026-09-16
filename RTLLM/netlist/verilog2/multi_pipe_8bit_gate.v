/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:03:36 2026
/////////////////////////////////////////////////////////////


module multi_pipe_8bit ( clk, rst_n, mul_en_in, mul_a, mul_b, mul_en_out, 
        mul_out );
  input [7:0] mul_a;
  input [7:0] mul_b;
  output [15:0] mul_out;
  input clk, rst_n, mul_en_in;
  output mul_en_out;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
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
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267;
  wire   [7:0] b_r;
  wire   [7:0] a_r;
  wire   [2:0] en_sr;
  wire   [15:0] out_r;
  wire   [37:0] sum;

  DFCNQD1BWP12T30P140 mul_en_out_reg ( .D(en_sr[2]), .CP(n266), .CDN(n260), 
        .Q(mul_en_out) );
  DFCNQD1BWP12T30P140 mul_out_reg_15_ ( .D(N153), .CP(n265), .CDN(n260), .Q(
        mul_out[15]) );
  DFCNQD1BWP12T30P140 mul_out_reg_14_ ( .D(N152), .CP(clk), .CDN(n260), .Q(
        mul_out[14]) );
  DFCNQD1BWP12T30P140 mul_out_reg_13_ ( .D(N151), .CP(n266), .CDN(n260), .Q(
        mul_out[13]) );
  DFCNQD1BWP12T30P140 mul_out_reg_12_ ( .D(N150), .CP(n264), .CDN(n261), .Q(
        mul_out[12]) );
  DFCNQD1BWP12T30P140 mul_out_reg_11_ ( .D(N149), .CP(n267), .CDN(n261), .Q(
        mul_out[11]) );
  DFCNQD1BWP12T30P140 mul_out_reg_10_ ( .D(N148), .CP(n265), .CDN(n261), .Q(
        mul_out[10]) );
  DFCNQD1BWP12T30P140 mul_out_reg_9_ ( .D(N147), .CP(n264), .CDN(n261), .Q(
        mul_out[9]) );
  DFCNQD1BWP12T30P140 mul_out_reg_8_ ( .D(N146), .CP(n267), .CDN(n261), .Q(
        mul_out[8]) );
  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(N145), .CP(n265), .CDN(n261), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(N144), .CP(clk), .CDN(n262), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(N143), .CP(n266), .CDN(n262), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(N142), .CP(n264), .CDN(n262), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(N141), .CP(n267), .CDN(n262), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(N140), .CP(n267), .CDN(n262), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(N139), .CP(n267), .CDN(n262), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(N138), .CP(n267), .CDN(n262), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 out_r_reg_15_ ( .D(N136), .CP(n264), .CDN(n260), .Q(
        out_r[15]) );
  DFCNQD1BWP12T30P140 out_r_reg_14_ ( .D(N135), .CP(clk), .CDN(n260), .Q(
        out_r[14]) );
  DFCNQD1BWP12T30P140 out_r_reg_13_ ( .D(N134), .CP(n266), .CDN(n260), .Q(
        out_r[13]) );
  DFCNQD1BWP12T30P140 out_r_reg_12_ ( .D(N133), .CP(n264), .CDN(n261), .Q(
        out_r[12]) );
  DFCNQD1BWP12T30P140 out_r_reg_11_ ( .D(N132), .CP(n267), .CDN(n261), .Q(
        out_r[11]) );
  DFCNQD1BWP12T30P140 out_r_reg_10_ ( .D(N131), .CP(n265), .CDN(n261), .Q(
        out_r[10]) );
  DFCNQD1BWP12T30P140 out_r_reg_9_ ( .D(N130), .CP(n266), .CDN(n261), .Q(
        out_r[9]) );
  DFCNQD1BWP12T30P140 out_r_reg_8_ ( .D(N129), .CP(n267), .CDN(n261), .Q(
        out_r[8]) );
  DFCNQD1BWP12T30P140 out_r_reg_7_ ( .D(N128), .CP(n265), .CDN(n261), .Q(
        out_r[7]) );
  DFCNQD1BWP12T30P140 out_r_reg_6_ ( .D(N127), .CP(clk), .CDN(n261), .Q(
        out_r[6]) );
  DFCNQD1BWP12T30P140 out_r_reg_5_ ( .D(N126), .CP(n266), .CDN(n262), .Q(
        out_r[5]) );
  DFCNQD1BWP12T30P140 out_r_reg_4_ ( .D(N125), .CP(n264), .CDN(n262), .Q(
        out_r[4]) );
  DFCNQD1BWP12T30P140 out_r_reg_3_ ( .D(N124), .CP(clk), .CDN(n262), .Q(
        out_r[3]) );
  DFCNQD1BWP12T30P140 out_r_reg_2_ ( .D(N123), .CP(n267), .CDN(n262), .Q(
        out_r[2]) );
  DFCNQD1BWP12T30P140 out_r_reg_1_ ( .D(N122), .CP(n267), .CDN(n262), .Q(
        out_r[1]) );
  DFCNQD1BWP12T30P140 out_r_reg_0_ ( .D(N121), .CP(n267), .CDN(n262), .Q(
        out_r[0]) );
  DFCNQD1BWP12T30P140 sum_reg_1__6_ ( .D(N53), .CP(n266), .CDN(n263), .Q(
        sum[24]) );
  DFCNQD1BWP12T30P140 sum_reg_1__2_ ( .D(N49), .CP(n265), .CDN(n263), .Q(
        sum[20]) );
  DFCNQD1BWP12T30P140 sum_reg_2__13_ ( .D(N72), .CP(n265), .CDN(n263), .Q(
        sum[19]) );
  DFCNQD1BWP12T30P140 sum_reg_2__11_ ( .D(N70), .CP(n265), .CDN(n263), .Q(
        sum[17]) );
  DFCNQD1BWP12T30P140 sum_reg_2__10_ ( .D(N69), .CP(n265), .CDN(n263), .Q(
        sum[16]) );
  DFCNQD1BWP12T30P140 sum_reg_2__4_ ( .D(N63), .CP(n264), .CDN(n262), .Q(
        sum[10]) );
  DFCNQD1BWP12T30P140 sum_reg_0__4_ ( .D(N41), .CP(n266), .CDN(n263), .Q(
        sum[32]) );
  DFCNQD1BWP12T30P140 sum_reg_0__2_ ( .D(N39), .CP(n266), .CDN(n262), .Q(
        sum[30]) );
  DFCNQD1BWP12T30P140 sum_reg_3__13_ ( .D(N86), .CP(n264), .CDN(n260), .Q(
        sum[7]) );
  DFCNQD1BWP12T30P140 sum_reg_3__11_ ( .D(N84), .CP(n264), .CDN(n261), .Q(
        sum[5]) );
  DFCNQD1BWP12T30P140 sum_reg_3__10_ ( .D(N83), .CP(n264), .CDN(n261), .Q(
        sum[4]) );
  DFCNQD1BWP12T30P140 sum_reg_3__6_ ( .D(N79), .CP(n264), .CDN(rst_n), .Q(
        sum[0]) );
  DFCNQD1BWP12T30P140 sum_reg_3__15_ ( .D(N88), .CP(n264), .CDN(n263), .Q(
        sum[9]) );
  DFCNQD1BWP12T30P140 sum_reg_1__9_ ( .D(N56), .CP(n266), .CDN(n260), .Q(
        sum[27]) );
  DFCNQD1BWP12T30P140 sum_reg_1__8_ ( .D(N55), .CP(n266), .CDN(n263), .Q(
        sum[26]) );
  DFCNQD1BWP12T30P140 sum_reg_1__7_ ( .D(N54), .CP(n266), .CDN(n263), .Q(
        sum[25]) );
  DFCNQD1BWP12T30P140 sum_reg_2__5_ ( .D(N64), .CP(n265), .CDN(n262), .Q(
        sum[11]) );
  DFCNQD1BWP12T30P140 a_r_reg_2_ ( .D(N23), .CP(clk), .CDN(rst_n), .Q(a_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_7_ ( .D(N28), .CP(clk), .CDN(rst_n), .Q(a_r[7])
         );
  DFCNQD1BWP12T30P140 b_r_reg_1_ ( .D(N30), .CP(n267), .CDN(n260), .Q(b_r[1])
         );
  DFCNQD1BWP12T30P140 b_r_reg_0_ ( .D(N29), .CP(n265), .CDN(n260), .Q(b_r[0])
         );
  DFCNQD1BWP12T30P140 sum_reg_1__5_ ( .D(N52), .CP(n266), .CDN(n263), .Q(
        sum[23]) );
  DFCNQD1BWP12T30P140 sum_reg_1__3_ ( .D(N50), .CP(n265), .CDN(n263), .Q(
        sum[21]) );
  DFCNQD1BWP12T30P140 sum_reg_2__12_ ( .D(N71), .CP(n265), .CDN(n263), .Q(
        sum[18]) );
  DFCNQD1BWP12T30P140 sum_reg_2__6_ ( .D(N65), .CP(n265), .CDN(n260), .Q(
        sum[12]) );
  DFCNQD1BWP12T30P140 sum_reg_3__9_ ( .D(N82), .CP(n264), .CDN(n262), .Q(
        sum[3]) );
  DFCNQD1BWP12T30P140 sum_reg_3__8_ ( .D(N81), .CP(n264), .CDN(n260), .Q(
        sum[2]) );
  DFCNQD1BWP12T30P140 sum_reg_3__7_ ( .D(N80), .CP(n264), .CDN(n261), .Q(
        sum[1]) );
  DFCNQD1BWP12T30P140 a_r_reg_0_ ( .D(N21), .CP(clk), .CDN(rst_n), .Q(a_r[0])
         );
  DFCNQD1BWP12T30P140 sum_reg_0__9_ ( .D(N46), .CP(n267), .CDN(n263), .Q(
        sum[37]) );
  DFCNQD1BWP12T30P140 sum_reg_0__8_ ( .D(N45), .CP(n267), .CDN(n262), .Q(
        sum[36]) );
  DFCNQD1BWP12T30P140 sum_reg_0__7_ ( .D(N44), .CP(n267), .CDN(n260), .Q(
        sum[35]) );
  DFCNQD1BWP12T30P140 sum_reg_0__6_ ( .D(N43), .CP(n267), .CDN(n261), .Q(
        sum[34]) );
  DFCNQD1BWP12T30P140 sum_reg_0__5_ ( .D(N42), .CP(n267), .CDN(n263), .Q(
        sum[33]) );
  DFCNQD1BWP12T30P140 sum_reg_0__3_ ( .D(N40), .CP(n266), .CDN(n261), .Q(
        sum[31]) );
  DFCNQD1BWP12T30P140 sum_reg_1__11_ ( .D(N58), .CP(n266), .CDN(rst_n), .Q(
        sum[29]) );
  DFCNQD1BWP12T30P140 sum_reg_1__10_ ( .D(N57), .CP(n266), .CDN(n263), .Q(
        sum[28]) );
  DFCNQD1BWP12T30P140 sum_reg_1__4_ ( .D(N51), .CP(n265), .CDN(n263), .Q(
        sum[22]) );
  DFCNQD1BWP12T30P140 sum_reg_2__9_ ( .D(N68), .CP(n265), .CDN(n263), .Q(
        sum[15]) );
  DFCNQD1BWP12T30P140 sum_reg_2__8_ ( .D(N67), .CP(n265), .CDN(n263), .Q(
        sum[14]) );
  DFCNQD1BWP12T30P140 sum_reg_2__7_ ( .D(N66), .CP(n265), .CDN(n261), .Q(
        sum[13]) );
  DFCNQD1BWP12T30P140 sum_reg_3__14_ ( .D(N87), .CP(n264), .CDN(rst_n), .Q(
        sum[8]) );
  DFCNQD1BWP12T30P140 sum_reg_3__12_ ( .D(N85), .CP(n264), .CDN(n263), .Q(
        sum[6]) );
  DFCNQD1BWP12T30P140 en_sr_reg_0_ ( .D(mul_en_in), .CP(n264), .CDN(rst_n), 
        .Q(en_sr[0]) );
  DFCNQD1BWP12T30P140 en_sr_reg_1_ ( .D(en_sr[0]), .CP(n267), .CDN(n260), .Q(
        en_sr[1]) );
  DFCNQD1BWP12T30P140 sum_reg_0__1_ ( .D(N38), .CP(n266), .CDN(n262), .Q(N122)
         );
  DFCNQD1BWP12T30P140 sum_reg_0__0_ ( .D(N37), .CP(n266), .CDN(n260), .Q(N121)
         );
  DFCNQD1BWP12T30P140 a_r_reg_6_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(a_r[6])
         );
  DFCNQD1BWP12T30P140 a_r_reg_5_ ( .D(N26), .CP(clk), .CDN(rst_n), .Q(a_r[5])
         );
  DFCNQD1BWP12T30P140 a_r_reg_4_ ( .D(N25), .CP(clk), .CDN(rst_n), .Q(a_r[4])
         );
  DFCNQD1BWP12T30P140 a_r_reg_3_ ( .D(N24), .CP(clk), .CDN(rst_n), .Q(a_r[3])
         );
  DFCNQD1BWP12T30P140 b_r_reg_6_ ( .D(N35), .CP(n264), .CDN(rst_n), .Q(b_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_4_ ( .D(N33), .CP(n266), .CDN(rst_n), .Q(b_r[4])
         );
  DFCNQD1BWP12T30P140 b_r_reg_2_ ( .D(N31), .CP(n264), .CDN(n260), .Q(b_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_1_ ( .D(N22), .CP(clk), .CDN(rst_n), .Q(a_r[1])
         );
  DFCNQD1BWP12T30P140 b_r_reg_7_ ( .D(N36), .CP(n267), .CDN(rst_n), .Q(b_r[7])
         );
  DFCNQD1BWP12T30P140 b_r_reg_5_ ( .D(N34), .CP(n265), .CDN(rst_n), .Q(b_r[5])
         );
  DFCNQD1BWP12T30P140 b_r_reg_3_ ( .D(N32), .CP(n267), .CDN(n260), .Q(b_r[3])
         );
  DFCNQD1BWP12T30P140 en_sr_reg_2_ ( .D(en_sr[1]), .CP(n265), .CDN(n260), .Q(
        en_sr[2]) );
  AN2D0BWP12T30P140 U149 ( .A1(en_sr[2]), .A2(out_r[15]), .Z(N153) );
  INVD0BWP12T30P140 U150 ( .I(a_r[0]), .ZN(n252) );
  INVD0BWP12T30P140 U151 ( .I(b_r[6]), .ZN(n98) );
  NR2D0BWP12T30P140 U152 ( .A1(n252), .A2(n98), .ZN(N79) );
  INVD0BWP12T30P140 U153 ( .I(a_r[2]), .ZN(n153) );
  NR2D0BWP12T30P140 U154 ( .A1(n153), .A2(n98), .ZN(n148) );
  ND2D0BWP12T30P140 U155 ( .A1(a_r[1]), .A2(b_r[7]), .ZN(n147) );
  INVD0BWP12T30P140 U156 ( .I(n147), .ZN(n150) );
  OAI21D0BWP12T30P140 U157 ( .A1(n148), .A2(N79), .B(n150), .ZN(n144) );
  ND2D0BWP12T30P140 U158 ( .A1(b_r[6]), .A2(a_r[3]), .ZN(n143) );
  ND2D0BWP12T30P140 U159 ( .A1(a_r[2]), .A2(b_r[7]), .ZN(n142) );
  ND2D0BWP12T30P140 U160 ( .A1(b_r[6]), .A2(a_r[4]), .ZN(n103) );
  ND2D0BWP12T30P140 U161 ( .A1(b_r[7]), .A2(a_r[3]), .ZN(n102) );
  ND2D0BWP12T30P140 U162 ( .A1(b_r[6]), .A2(a_r[5]), .ZN(n165) );
  ND2D0BWP12T30P140 U163 ( .A1(b_r[7]), .A2(a_r[4]), .ZN(n164) );
  INVD0BWP12T30P140 U164 ( .I(n99), .ZN(N84) );
  AN4D0BWP12T30P140 U165 ( .A1(a_r[1]), .A2(b_r[1]), .A3(a_r[0]), .A4(b_r[0]), 
        .Z(n248) );
  AOI21D0BWP12T30P140 U166 ( .A1(b_r[0]), .A2(a_r[2]), .B(n248), .ZN(n152) );
  AOI21D0BWP12T30P140 U167 ( .A1(n248), .A2(a_r[2]), .B(n152), .ZN(n101) );
  ND2D0BWP12T30P140 U168 ( .A1(a_r[1]), .A2(b_r[1]), .ZN(n151) );
  ND2D0BWP12T30P140 U169 ( .A1(n101), .A2(n151), .ZN(n100) );
  OAI21D0BWP12T30P140 U170 ( .A1(n101), .A2(n151), .B(n100), .ZN(N39) );
  FA1D0BWP12T30P140 U171 ( .A(n104), .B(n103), .CI(n102), .CO(n166), .S(n105)
         );
  INVD0BWP12T30P140 U172 ( .I(n105), .ZN(N83) );
  INVD0BWP12T30P140 U173 ( .I(b_r[2]), .ZN(n106) );
  NR2D0BWP12T30P140 U174 ( .A1(n252), .A2(n106), .ZN(N49) );
  NR2D0BWP12T30P140 U175 ( .A1(n153), .A2(n106), .ZN(n229) );
  ND2D0BWP12T30P140 U176 ( .A1(a_r[1]), .A2(b_r[3]), .ZN(n228) );
  INVD0BWP12T30P140 U177 ( .I(n228), .ZN(n133) );
  OAI21D0BWP12T30P140 U178 ( .A1(n229), .A2(N49), .B(n133), .ZN(n130) );
  ND2D0BWP12T30P140 U179 ( .A1(b_r[2]), .A2(a_r[3]), .ZN(n129) );
  ND2D0BWP12T30P140 U180 ( .A1(a_r[2]), .A2(b_r[3]), .ZN(n128) );
  ND2D0BWP12T30P140 U181 ( .A1(b_r[2]), .A2(a_r[4]), .ZN(n125) );
  ND2D0BWP12T30P140 U182 ( .A1(b_r[3]), .A2(a_r[3]), .ZN(n124) );
  ND2D0BWP12T30P140 U183 ( .A1(b_r[2]), .A2(a_r[5]), .ZN(n119) );
  ND2D0BWP12T30P140 U184 ( .A1(b_r[3]), .A2(a_r[4]), .ZN(n118) );
  ND2D0BWP12T30P140 U185 ( .A1(b_r[2]), .A2(a_r[6]), .ZN(n111) );
  ND2D0BWP12T30P140 U186 ( .A1(b_r[3]), .A2(a_r[5]), .ZN(n110) );
  ND2D0BWP12T30P140 U187 ( .A1(b_r[2]), .A2(a_r[7]), .ZN(n219) );
  ND2D0BWP12T30P140 U188 ( .A1(b_r[3]), .A2(a_r[6]), .ZN(n218) );
  INVD0BWP12T30P140 U189 ( .I(n107), .ZN(N56) );
  INVD0BWP12T30P140 U190 ( .I(b_r[4]), .ZN(n108) );
  NR2D0BWP12T30P140 U191 ( .A1(n252), .A2(n108), .ZN(N63) );
  NR2D0BWP12T30P140 U192 ( .A1(n153), .A2(n108), .ZN(n141) );
  ND2D0BWP12T30P140 U193 ( .A1(a_r[1]), .A2(b_r[5]), .ZN(n140) );
  INVD0BWP12T30P140 U194 ( .I(n140), .ZN(n123) );
  OAI21D0BWP12T30P140 U195 ( .A1(n141), .A2(N63), .B(n123), .ZN(n225) );
  ND2D0BWP12T30P140 U196 ( .A1(b_r[4]), .A2(a_r[3]), .ZN(n224) );
  ND2D0BWP12T30P140 U197 ( .A1(a_r[2]), .A2(b_r[5]), .ZN(n223) );
  ND2D0BWP12T30P140 U198 ( .A1(b_r[4]), .A2(a_r[4]), .ZN(n245) );
  ND2D0BWP12T30P140 U199 ( .A1(b_r[5]), .A2(a_r[3]), .ZN(n244) );
  ND2D0BWP12T30P140 U200 ( .A1(b_r[4]), .A2(a_r[5]), .ZN(n237) );
  ND2D0BWP12T30P140 U201 ( .A1(b_r[5]), .A2(a_r[4]), .ZN(n236) );
  ND2D0BWP12T30P140 U202 ( .A1(b_r[4]), .A2(a_r[6]), .ZN(n115) );
  ND2D0BWP12T30P140 U203 ( .A1(b_r[5]), .A2(a_r[5]), .ZN(n114) );
  INVD0BWP12T30P140 U204 ( .I(n109), .ZN(N69) );
  FA1D0BWP12T30P140 U205 ( .A(n112), .B(n111), .CI(n110), .CO(n220), .S(n113)
         );
  INVD0BWP12T30P140 U206 ( .I(n113), .ZN(N55) );
  FA1D0BWP12T30P140 U207 ( .A(n116), .B(n115), .CI(n114), .CO(n136), .S(n109)
         );
  ND2D0BWP12T30P140 U208 ( .A1(b_r[4]), .A2(a_r[7]), .ZN(n135) );
  ND2D0BWP12T30P140 U209 ( .A1(b_r[5]), .A2(a_r[6]), .ZN(n134) );
  INVD0BWP12T30P140 U210 ( .I(n117), .ZN(N70) );
  FA1D0BWP12T30P140 U211 ( .A(n120), .B(n119), .CI(n118), .CO(n112), .S(n121)
         );
  INVD0BWP12T30P140 U212 ( .I(n121), .ZN(N54) );
  AOI22D0BWP12T30P140 U213 ( .A1(a_r[1]), .A2(b_r[4]), .B1(a_r[0]), .B2(b_r[5]), .ZN(n122) );
  AOI21D0BWP12T30P140 U214 ( .A1(N63), .A2(n123), .B(n122), .ZN(N64) );
  AN2D0BWP12T30P140 U215 ( .A1(mul_en_in), .A2(mul_a[2]), .Z(N23) );
  AN2D0BWP12T30P140 U216 ( .A1(mul_en_in), .A2(mul_a[7]), .Z(N28) );
  AN2D0BWP12T30P140 U217 ( .A1(mul_en_in), .A2(mul_b[1]), .Z(N30) );
  FA1D0BWP12T30P140 U218 ( .A(n126), .B(n125), .CI(n124), .CO(n120), .S(n127)
         );
  INVD0BWP12T30P140 U219 ( .I(n127), .ZN(N53) );
  AN2D0BWP12T30P140 U220 ( .A1(mul_en_in), .A2(mul_b[0]), .Z(N29) );
  FA1D0BWP12T30P140 U221 ( .A(n130), .B(n129), .CI(n128), .CO(n126), .S(n131)
         );
  INVD0BWP12T30P140 U222 ( .I(n131), .ZN(N52) );
  AOI22D0BWP12T30P140 U223 ( .A1(a_r[1]), .A2(b_r[2]), .B1(a_r[0]), .B2(b_r[3]), .ZN(n132) );
  AOI21D0BWP12T30P140 U224 ( .A1(N49), .A2(n133), .B(n132), .ZN(N50) );
  FA1D0BWP12T30P140 U225 ( .A(n136), .B(n135), .CI(n134), .CO(n138), .S(n117)
         );
  INVD0BWP12T30P140 U226 ( .I(a_r[7]), .ZN(n234) );
  NR2D0BWP12T30P140 U227 ( .A1(n138), .A2(n234), .ZN(N72) );
  INVD0BWP12T30P140 U228 ( .I(b_r[5]), .ZN(n137) );
  AOI211D0BWP12T30P140 U229 ( .A1(n138), .A2(n234), .B(N72), .C(n137), .ZN(N71) );
  OAI21D0BWP12T30P140 U230 ( .A1(N63), .A2(n140), .B(n141), .ZN(n139) );
  OAI31D0BWP12T30P140 U231 ( .A1(N63), .A2(n141), .A3(n140), .B(n139), .ZN(N65) );
  FA1D0BWP12T30P140 U232 ( .A(n144), .B(n143), .CI(n142), .CO(n104), .S(n145)
         );
  INVD0BWP12T30P140 U233 ( .I(n145), .ZN(N82) );
  OAI21D0BWP12T30P140 U234 ( .A1(N79), .A2(n147), .B(n148), .ZN(n146) );
  OAI31D0BWP12T30P140 U235 ( .A1(N79), .A2(n148), .A3(n147), .B(n146), .ZN(N81) );
  AOI22D0BWP12T30P140 U236 ( .A1(a_r[1]), .A2(b_r[6]), .B1(a_r[0]), .B2(b_r[7]), .ZN(n149) );
  AOI21D0BWP12T30P140 U237 ( .A1(N79), .A2(n150), .B(n149), .ZN(N80) );
  AN2D0BWP12T30P140 U238 ( .A1(mul_en_in), .A2(mul_a[0]), .Z(N21) );
  NR2D0BWP12T30P140 U239 ( .A1(n152), .A2(n151), .ZN(n217) );
  INVD0BWP12T30P140 U240 ( .I(b_r[1]), .ZN(n160) );
  NR2D0BWP12T30P140 U241 ( .A1(n160), .A2(n153), .ZN(n216) );
  INVD0BWP12T30P140 U242 ( .I(b_r[0]), .ZN(n251) );
  INVD0BWP12T30P140 U243 ( .I(a_r[3]), .ZN(n154) );
  NR2D0BWP12T30P140 U244 ( .A1(n251), .A2(n154), .ZN(n215) );
  NR2D0BWP12T30P140 U245 ( .A1(n160), .A2(n154), .ZN(n213) );
  INVD0BWP12T30P140 U246 ( .I(a_r[4]), .ZN(n155) );
  NR2D0BWP12T30P140 U247 ( .A1(n251), .A2(n155), .ZN(n212) );
  NR2D0BWP12T30P140 U248 ( .A1(n160), .A2(n155), .ZN(n210) );
  INVD0BWP12T30P140 U249 ( .I(a_r[5]), .ZN(n156) );
  NR2D0BWP12T30P140 U250 ( .A1(n251), .A2(n156), .ZN(n209) );
  NR2D0BWP12T30P140 U251 ( .A1(n160), .A2(n156), .ZN(n207) );
  INVD0BWP12T30P140 U252 ( .I(a_r[6]), .ZN(n157) );
  NR2D0BWP12T30P140 U253 ( .A1(n251), .A2(n157), .ZN(n206) );
  NR2D0BWP12T30P140 U254 ( .A1(n160), .A2(n157), .ZN(n162) );
  NR2D0BWP12T30P140 U255 ( .A1(n251), .A2(n234), .ZN(n161) );
  AN2D0BWP12T30P140 U256 ( .A1(n159), .A2(a_r[7]), .Z(N46) );
  ND2D0BWP12T30P140 U257 ( .A1(n159), .A2(n234), .ZN(n158) );
  OAI31D0BWP12T30P140 U258 ( .A1(n160), .A2(n159), .A3(n234), .B(n158), .ZN(
        N45) );
  FA1D0BWP12T30P140 U259 ( .A(n163), .B(n162), .CI(n161), .CO(n159), .S(N44)
         );
  FA1D0BWP12T30P140 U260 ( .A(n166), .B(n165), .CI(n164), .CO(n242), .S(n99)
         );
  ND2D0BWP12T30P140 U261 ( .A1(b_r[6]), .A2(a_r[6]), .ZN(n241) );
  ND2D0BWP12T30P140 U262 ( .A1(b_r[7]), .A2(a_r[5]), .ZN(n240) );
  ND2D0BWP12T30P140 U263 ( .A1(b_r[6]), .A2(a_r[7]), .ZN(n231) );
  ND2D0BWP12T30P140 U264 ( .A1(b_r[7]), .A2(a_r[6]), .ZN(n230) );
  INVD0BWP12T30P140 U265 ( .I(n167), .ZN(N86) );
  AN2D0BWP12T30P140 U266 ( .A1(sum[19]), .A2(sum[7]), .Z(n257) );
  IAO21D0BWP12T30P140 U267 ( .A1(sum[19]), .A2(sum[7]), .B(n257), .ZN(n256) );
  AN2D0BWP12T30P140 U268 ( .A1(sum[17]), .A2(sum[5]), .Z(n179) );
  IAO21D0BWP12T30P140 U269 ( .A1(sum[17]), .A2(sum[5]), .B(n179), .ZN(n168) );
  AN2D0BWP12T30P140 U270 ( .A1(sum[16]), .A2(sum[4]), .Z(n169) );
  FA1D0BWP12T30P140 U271 ( .A(sum[29]), .B(n168), .CI(n169), .CO(n182), .S(
        n185) );
  IAO21D0BWP12T30P140 U272 ( .A1(sum[16]), .A2(sum[4]), .B(n169), .ZN(n170) );
  FA1D0BWP12T30P140 U273 ( .A(sum[28]), .B(n171), .CI(n170), .CO(n184), .S(
        n188) );
  FA1D0BWP12T30P140 U274 ( .A(sum[37]), .B(sum[3]), .CI(sum[27]), .CO(n171), 
        .S(n172) );
  FA1D0BWP12T30P140 U275 ( .A(sum[15]), .B(n173), .CI(n172), .CO(n187), .S(
        n191) );
  FA1D0BWP12T30P140 U276 ( .A(sum[36]), .B(sum[2]), .CI(sum[26]), .CO(n173), 
        .S(n174) );
  FA1D0BWP12T30P140 U277 ( .A(sum[14]), .B(n175), .CI(n174), .CO(n190), .S(
        n194) );
  AN2D0BWP12T30P140 U278 ( .A1(sum[24]), .A2(sum[0]), .Z(n177) );
  IAO21D0BWP12T30P140 U279 ( .A1(sum[24]), .A2(sum[0]), .B(n177), .ZN(n176) );
  FA1D0BWP12T30P140 U280 ( .A(sum[34]), .B(sum[12]), .CI(n176), .CO(n178), .S(
        n200) );
  AN2D0BWP12T30P140 U281 ( .A1(sum[20]), .A2(sum[30]), .Z(n253) );
  AN2D0BWP12T30P140 U282 ( .A1(sum[10]), .A2(sum[32]), .Z(n202) );
  IAO21D0BWP12T30P140 U283 ( .A1(sum[10]), .A2(sum[32]), .B(n202), .ZN(n204)
         );
  FA1D0BWP12T30P140 U284 ( .A(sum[33]), .B(sum[23]), .CI(sum[11]), .CO(n199), 
        .S(n201) );
  FA1D0BWP12T30P140 U285 ( .A(sum[13]), .B(n178), .CI(n177), .CO(n193), .S(
        n196) );
  FA1D0BWP12T30P140 U286 ( .A(sum[35]), .B(sum[1]), .CI(sum[25]), .CO(n175), 
        .S(n195) );
  FA1D0BWP12T30P140 U287 ( .A(sum[6]), .B(sum[18]), .CI(n179), .CO(n255), .S(
        n180) );
  FA1D0BWP12T30P140 U288 ( .A(n182), .B(n181), .CI(n180), .CO(n254), .S(N133)
         );
  FA1D0BWP12T30P140 U289 ( .A(n185), .B(n184), .CI(n183), .CO(n181), .S(N132)
         );
  FA1D0BWP12T30P140 U290 ( .A(n188), .B(n187), .CI(n186), .CO(n183), .S(N131)
         );
  FA1D0BWP12T30P140 U291 ( .A(n191), .B(n190), .CI(n189), .CO(n186), .S(N130)
         );
  FA1D0BWP12T30P140 U292 ( .A(n194), .B(n193), .CI(n192), .CO(n189), .S(N129)
         );
  FA1D0BWP12T30P140 U293 ( .A(n197), .B(n196), .CI(n195), .CO(n192), .S(N128)
         );
  FA1D0BWP12T30P140 U294 ( .A(n200), .B(n199), .CI(n198), .CO(n197), .S(N127)
         );
  FA1D0BWP12T30P140 U295 ( .A(n203), .B(n202), .CI(n201), .CO(n198), .S(N126)
         );
  FA1D0BWP12T30P140 U296 ( .A(sum[22]), .B(n205), .CI(n204), .CO(n203), .S(
        N125) );
  FA1D0BWP12T30P140 U297 ( .A(sum[31]), .B(sum[21]), .CI(n253), .CO(n205), .S(
        N124) );
  FA1D0BWP12T30P140 U298 ( .A(n208), .B(n207), .CI(n206), .CO(n163), .S(N43)
         );
  FA1D0BWP12T30P140 U299 ( .A(n211), .B(n210), .CI(n209), .CO(n208), .S(N42)
         );
  FA1D0BWP12T30P140 U300 ( .A(n214), .B(n213), .CI(n212), .CO(n211), .S(N41)
         );
  FA1D0BWP12T30P140 U301 ( .A(n217), .B(n216), .CI(n215), .CO(n214), .S(N40)
         );
  AN2D0BWP12T30P140 U302 ( .A1(en_sr[2]), .A2(out_r[13]), .Z(N151) );
  FA1D0BWP12T30P140 U303 ( .A(n220), .B(n219), .CI(n218), .CO(n222), .S(n107)
         );
  NR2D0BWP12T30P140 U304 ( .A1(n222), .A2(n234), .ZN(N58) );
  INVD0BWP12T30P140 U305 ( .I(b_r[3]), .ZN(n221) );
  AOI211D0BWP12T30P140 U306 ( .A1(n222), .A2(n234), .B(N58), .C(n221), .ZN(N57) );
  AN2D0BWP12T30P140 U307 ( .A1(en_sr[2]), .A2(out_r[0]), .Z(N138) );
  AN2D0BWP12T30P140 U308 ( .A1(mul_en_in), .A2(mul_b[6]), .Z(N35) );
  FA1D0BWP12T30P140 U309 ( .A(n225), .B(n224), .CI(n223), .CO(n246), .S(n226)
         );
  INVD0BWP12T30P140 U310 ( .I(n226), .ZN(N66) );
  OAI21D0BWP12T30P140 U311 ( .A1(N49), .A2(n228), .B(n229), .ZN(n227) );
  OAI31D0BWP12T30P140 U312 ( .A1(N49), .A2(n229), .A3(n228), .B(n227), .ZN(N51) );
  AN2D0BWP12T30P140 U313 ( .A1(mul_en_in), .A2(mul_b[4]), .Z(N33) );
  AN2D0BWP12T30P140 U314 ( .A1(en_sr[2]), .A2(out_r[1]), .Z(N139) );
  FA1D0BWP12T30P140 U315 ( .A(n232), .B(n231), .CI(n230), .CO(n235), .S(n167)
         );
  NR2D0BWP12T30P140 U316 ( .A1(n235), .A2(n234), .ZN(N88) );
  INVD0BWP12T30P140 U317 ( .I(b_r[7]), .ZN(n233) );
  AOI211D0BWP12T30P140 U318 ( .A1(n235), .A2(n234), .B(N88), .C(n233), .ZN(N87) );
  AN2D0BWP12T30P140 U319 ( .A1(en_sr[2]), .A2(out_r[5]), .Z(N143) );
  FA1D0BWP12T30P140 U320 ( .A(n238), .B(n237), .CI(n236), .CO(n116), .S(n239)
         );
  INVD0BWP12T30P140 U321 ( .I(n239), .ZN(N68) );
  AN2D0BWP12T30P140 U322 ( .A1(en_sr[2]), .A2(out_r[2]), .Z(N140) );
  FA1D0BWP12T30P140 U323 ( .A(n242), .B(n241), .CI(n240), .CO(n232), .S(n243)
         );
  INVD0BWP12T30P140 U324 ( .I(n243), .ZN(N85) );
  AN2D0BWP12T30P140 U325 ( .A1(mul_en_in), .A2(mul_a[6]), .Z(N27) );
  FA1D0BWP12T30P140 U326 ( .A(n246), .B(n245), .CI(n244), .CO(n238), .S(n247)
         );
  INVD0BWP12T30P140 U327 ( .I(n247), .ZN(N67) );
  AN2D0BWP12T30P140 U328 ( .A1(mul_en_in), .A2(mul_a[4]), .Z(N25) );
  AN2D0BWP12T30P140 U329 ( .A1(en_sr[2]), .A2(out_r[3]), .Z(N141) );
  AN2D0BWP12T30P140 U330 ( .A1(en_sr[2]), .A2(out_r[7]), .Z(N145) );
  AN2D0BWP12T30P140 U331 ( .A1(mul_en_in), .A2(mul_b[5]), .Z(N34) );
  AN2D0BWP12T30P140 U332 ( .A1(mul_en_in), .A2(mul_b[3]), .Z(N32) );
  AN2D0BWP12T30P140 U333 ( .A1(en_sr[2]), .A2(out_r[4]), .Z(N142) );
  ND2D0BWP12T30P140 U334 ( .A1(b_r[1]), .A2(a_r[0]), .ZN(n250) );
  ND2D0BWP12T30P140 U335 ( .A1(a_r[1]), .A2(b_r[0]), .ZN(n249) );
  AOI21D0BWP12T30P140 U336 ( .A1(n250), .A2(n249), .B(n248), .ZN(N38) );
  AN2D0BWP12T30P140 U337 ( .A1(en_sr[2]), .A2(out_r[11]), .Z(N149) );
  AN2D0BWP12T30P140 U338 ( .A1(en_sr[2]), .A2(out_r[6]), .Z(N144) );
  AN2D0BWP12T30P140 U339 ( .A1(en_sr[2]), .A2(out_r[9]), .Z(N147) );
  AN2D0BWP12T30P140 U340 ( .A1(en_sr[2]), .A2(out_r[12]), .Z(N150) );
  NR2D0BWP12T30P140 U341 ( .A1(n252), .A2(n251), .ZN(N37) );
  AN2D0BWP12T30P140 U342 ( .A1(mul_en_in), .A2(mul_a[5]), .Z(N26) );
  AN2D0BWP12T30P140 U343 ( .A1(mul_en_in), .A2(mul_a[1]), .Z(N22) );
  AN2D0BWP12T30P140 U344 ( .A1(en_sr[2]), .A2(out_r[8]), .Z(N146) );
  AN2D0BWP12T30P140 U345 ( .A1(mul_en_in), .A2(mul_b[7]), .Z(N36) );
  AN2D0BWP12T30P140 U346 ( .A1(mul_en_in), .A2(mul_b[2]), .Z(N31) );
  AN2D0BWP12T30P140 U347 ( .A1(mul_en_in), .A2(mul_a[3]), .Z(N24) );
  AN2D0BWP12T30P140 U348 ( .A1(en_sr[2]), .A2(out_r[10]), .Z(N148) );
  AN2D0BWP12T30P140 U349 ( .A1(en_sr[2]), .A2(out_r[14]), .Z(N152) );
  CKBD0BWP12T30P140 U350 ( .I(clk), .Z(n265) );
  CKBD0BWP12T30P140 U351 ( .I(clk), .Z(n267) );
  CKBD0BWP12T30P140 U352 ( .I(clk), .Z(n264) );
  CKBD0BWP12T30P140 U353 ( .I(clk), .Z(n266) );
  CKBD0BWP12T30P140 U354 ( .I(rst_n), .Z(n261) );
  CKBD0BWP12T30P140 U355 ( .I(rst_n), .Z(n260) );
  CKBD0BWP12T30P140 U356 ( .I(rst_n), .Z(n262) );
  CKBD0BWP12T30P140 U357 ( .I(rst_n), .Z(n263) );
  IAO21D0BWP12T30P140 U358 ( .A1(sum[20]), .A2(sum[30]), .B(n253), .ZN(N123)
         );
  FA1D0BWP12T30P140 U359 ( .A(n256), .B(n255), .CI(n254), .CO(n258), .S(N134)
         );
  FA1D0BWP12T30P140 U360 ( .A(sum[8]), .B(n258), .CI(n257), .CO(n259), .S(N135) );
  CKXOR2D0BWP12T30P140 U361 ( .A1(sum[9]), .A2(n259), .Z(N136) );
endmodule

