/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:26:51 2026
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
  wire   [15:6] s3;
  wire   [13:4] s2;
  wire   [11:2] s1;
  wire   [9:2] s0;

  DFCNQD1BWP12T30P140 out_r_reg_15_ ( .D(N136), .CP(clk), .CDN(rst_n), .Q(
        out_r[15]) );
  DFCNQD1BWP12T30P140 out_r_reg_14_ ( .D(N135), .CP(clk), .CDN(rst_n), .Q(
        out_r[14]) );
  DFCNQD1BWP12T30P140 out_r_reg_13_ ( .D(N134), .CP(clk), .CDN(rst_n), .Q(
        out_r[13]) );
  DFCNQD1BWP12T30P140 out_r_reg_12_ ( .D(N133), .CP(clk), .CDN(rst_n), .Q(
        out_r[12]) );
  DFCNQD1BWP12T30P140 out_r_reg_11_ ( .D(N132), .CP(clk), .CDN(rst_n), .Q(
        out_r[11]) );
  DFCNQD1BWP12T30P140 out_r_reg_10_ ( .D(N131), .CP(clk), .CDN(rst_n), .Q(
        out_r[10]) );
  DFCNQD1BWP12T30P140 out_r_reg_9_ ( .D(N130), .CP(clk), .CDN(rst_n), .Q(
        out_r[9]) );
  DFCNQD1BWP12T30P140 out_r_reg_8_ ( .D(N129), .CP(clk), .CDN(rst_n), .Q(
        out_r[8]) );
  DFCNQD1BWP12T30P140 mul_en_out_reg ( .D(en_sr[2]), .CP(n267), .CDN(n262), 
        .Q(mul_en_out) );
  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(N138), .CP(n264), .CDN(n262), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(N139), .CP(clk), .CDN(n262), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(N140), .CP(n266), .CDN(n263), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(N141), .CP(n265), .CDN(n263), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(N142), .CP(n264), .CDN(n263), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(N143), .CP(n264), .CDN(n263), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(N144), .CP(n264), .CDN(n263), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(N145), .CP(n264), .CDN(n263), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_8_ ( .D(N146), .CP(n264), .CDN(n263), .Q(
        mul_out[8]) );
  DFCNQD1BWP12T30P140 mul_out_reg_9_ ( .D(N147), .CP(n264), .CDN(n263), .Q(
        mul_out[9]) );
  DFCNQD1BWP12T30P140 mul_out_reg_10_ ( .D(N148), .CP(n264), .CDN(n263), .Q(
        mul_out[10]) );
  DFCNQD1BWP12T30P140 mul_out_reg_11_ ( .D(N149), .CP(n264), .CDN(n263), .Q(
        mul_out[11]) );
  DFCNQD1BWP12T30P140 mul_out_reg_12_ ( .D(N150), .CP(n264), .CDN(n263), .Q(
        mul_out[12]) );
  DFCNQD1BWP12T30P140 mul_out_reg_13_ ( .D(N151), .CP(n264), .CDN(n263), .Q(
        mul_out[13]) );
  DFCNQD1BWP12T30P140 mul_out_reg_14_ ( .D(N152), .CP(n264), .CDN(n263), .Q(
        mul_out[14]) );
  DFCNQD1BWP12T30P140 mul_out_reg_15_ ( .D(N153), .CP(n264), .CDN(rst_n), .Q(
        mul_out[15]) );
  DFCNQD1BWP12T30P140 out_r_reg_7_ ( .D(N128), .CP(clk), .CDN(rst_n), .Q(
        out_r[7]) );
  DFCNQD1BWP12T30P140 out_r_reg_6_ ( .D(N127), .CP(n266), .CDN(rst_n), .Q(
        out_r[6]) );
  DFCNQD1BWP12T30P140 out_r_reg_5_ ( .D(N126), .CP(n265), .CDN(rst_n), .Q(
        out_r[5]) );
  DFCNQD1BWP12T30P140 out_r_reg_4_ ( .D(N125), .CP(n264), .CDN(rst_n), .Q(
        out_r[4]) );
  DFCNQD1BWP12T30P140 out_r_reg_3_ ( .D(N124), .CP(n267), .CDN(n260), .Q(
        out_r[3]) );
  DFCNQD1BWP12T30P140 out_r_reg_2_ ( .D(N123), .CP(clk), .CDN(n261), .Q(
        out_r[2]) );
  DFCNQD1BWP12T30P140 out_r_reg_1_ ( .D(N122), .CP(n266), .CDN(n263), .Q(
        out_r[1]) );
  DFCNQD1BWP12T30P140 out_r_reg_0_ ( .D(N121), .CP(n265), .CDN(n262), .Q(
        out_r[0]) );
  DFCNQD1BWP12T30P140 s1_reg_6_ ( .D(N53), .CP(n267), .CDN(n260), .Q(s1[6]) );
  DFCNQD1BWP12T30P140 s1_reg_2_ ( .D(N49), .CP(n267), .CDN(n261), .Q(s1[2]) );
  DFCNQD1BWP12T30P140 s2_reg_13_ ( .D(N72), .CP(n267), .CDN(n260), .Q(s2[13])
         );
  DFCNQD1BWP12T30P140 s2_reg_11_ ( .D(N70), .CP(n267), .CDN(n263), .Q(s2[11])
         );
  DFCNQD1BWP12T30P140 s2_reg_10_ ( .D(N69), .CP(n267), .CDN(rst_n), .Q(s2[10])
         );
  DFCNQD1BWP12T30P140 s2_reg_4_ ( .D(N63), .CP(n266), .CDN(n261), .Q(s2[4]) );
  DFCNQD1BWP12T30P140 s3_reg_13_ ( .D(N86), .CP(n265), .CDN(n260), .Q(s3[13])
         );
  DFCNQD1BWP12T30P140 s3_reg_11_ ( .D(N84), .CP(n264), .CDN(n260), .Q(s3[11])
         );
  DFCNQD1BWP12T30P140 s3_reg_10_ ( .D(N83), .CP(n265), .CDN(n260), .Q(s3[10])
         );
  DFCNQD1BWP12T30P140 s3_reg_6_ ( .D(N79), .CP(n266), .CDN(n260), .Q(s3[6]) );
  DFCNQD1BWP12T30P140 s0_reg_4_ ( .D(N41), .CP(n266), .CDN(n261), .Q(s0[4]) );
  DFCNQD1BWP12T30P140 s0_reg_2_ ( .D(N39), .CP(n266), .CDN(n261), .Q(s0[2]) );
  DFCNQD1BWP12T30P140 s3_reg_15_ ( .D(N88), .CP(n265), .CDN(n263), .Q(s3[15])
         );
  DFCNQD1BWP12T30P140 s1_reg_9_ ( .D(N56), .CP(n264), .CDN(n261), .Q(s1[9]) );
  DFCNQD1BWP12T30P140 s1_reg_8_ ( .D(N55), .CP(n267), .CDN(n263), .Q(s1[8]) );
  DFCNQD1BWP12T30P140 s1_reg_7_ ( .D(N54), .CP(n267), .CDN(n263), .Q(s1[7]) );
  DFCNQD1BWP12T30P140 s2_reg_5_ ( .D(N64), .CP(n264), .CDN(n262), .Q(s2[5]) );
  DFCNQD1BWP12T30P140 b_r_reg_1_ ( .D(N30), .CP(n267), .CDN(n262), .Q(b_r[1])
         );
  DFCNQD1BWP12T30P140 b_r_reg_0_ ( .D(N29), .CP(n267), .CDN(n262), .Q(b_r[0])
         );
  DFCNQD1BWP12T30P140 s1_reg_5_ ( .D(N52), .CP(n267), .CDN(n262), .Q(s1[5]) );
  DFCNQD1BWP12T30P140 s1_reg_3_ ( .D(N50), .CP(n267), .CDN(n262), .Q(s1[3]) );
  DFCNQD1BWP12T30P140 s2_reg_12_ ( .D(N71), .CP(n267), .CDN(n261), .Q(s2[12])
         );
  DFCNQD1BWP12T30P140 s2_reg_6_ ( .D(N65), .CP(n267), .CDN(n262), .Q(s2[6]) );
  DFCNQD1BWP12T30P140 s3_reg_9_ ( .D(N82), .CP(n266), .CDN(n260), .Q(s3[9]) );
  DFCNQD1BWP12T30P140 s3_reg_8_ ( .D(N81), .CP(n264), .CDN(n260), .Q(s3[8]) );
  DFCNQD1BWP12T30P140 s3_reg_7_ ( .D(N80), .CP(n266), .CDN(n260), .Q(s3[7]) );
  DFCNQD1BWP12T30P140 s1_reg_11_ ( .D(N58), .CP(clk), .CDN(n260), .Q(s1[11])
         );
  DFCNQD1BWP12T30P140 s1_reg_10_ ( .D(N57), .CP(n266), .CDN(n260), .Q(s1[10])
         );
  DFCNQD1BWP12T30P140 s1_reg_4_ ( .D(N51), .CP(n267), .CDN(n261), .Q(s1[4]) );
  DFCNQD1BWP12T30P140 s2_reg_9_ ( .D(N68), .CP(n267), .CDN(n260), .Q(s2[9]) );
  DFCNQD1BWP12T30P140 s2_reg_8_ ( .D(N67), .CP(n267), .CDN(n263), .Q(s2[8]) );
  DFCNQD1BWP12T30P140 s2_reg_7_ ( .D(N66), .CP(clk), .CDN(n262), .Q(s2[7]) );
  DFCNQD1BWP12T30P140 s3_reg_14_ ( .D(N87), .CP(n265), .CDN(rst_n), .Q(s3[14])
         );
  DFCNQD1BWP12T30P140 s3_reg_12_ ( .D(N85), .CP(n267), .CDN(n260), .Q(s3[12])
         );
  DFCNQD1BWP12T30P140 s0_reg_9_ ( .D(N46), .CP(n266), .CDN(n260), .Q(s0[9]) );
  DFCNQD1BWP12T30P140 s0_reg_8_ ( .D(N45), .CP(n266), .CDN(n260), .Q(s0[8]) );
  DFCNQD1BWP12T30P140 s0_reg_7_ ( .D(N44), .CP(n266), .CDN(n260), .Q(s0[7]) );
  DFCNQD1BWP12T30P140 s0_reg_6_ ( .D(N43), .CP(n266), .CDN(n260), .Q(s0[6]) );
  DFCNQD1BWP12T30P140 s0_reg_5_ ( .D(N42), .CP(n266), .CDN(n260), .Q(s0[5]) );
  DFCNQD1BWP12T30P140 s0_reg_3_ ( .D(N40), .CP(n266), .CDN(n261), .Q(s0[3]) );
  DFCNQD1BWP12T30P140 s0_reg_1_ ( .D(N38), .CP(n266), .CDN(n261), .Q(N122) );
  DFCNQD1BWP12T30P140 s0_reg_0_ ( .D(N37), .CP(n266), .CDN(n261), .Q(N121) );
  DFCNQD1BWP12T30P140 en_sr_reg_0_ ( .D(mul_en_in), .CP(n264), .CDN(rst_n), 
        .Q(en_sr[0]) );
  DFCNQD1BWP12T30P140 en_sr_reg_1_ ( .D(en_sr[0]), .CP(n266), .CDN(n262), .Q(
        en_sr[1]) );
  DFCNQD1BWP12T30P140 a_r_reg_2_ ( .D(N23), .CP(n265), .CDN(n261), .Q(a_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_7_ ( .D(N28), .CP(n265), .CDN(n261), .Q(a_r[7])
         );
  DFCNQD1BWP12T30P140 a_r_reg_0_ ( .D(N21), .CP(n265), .CDN(n261), .Q(a_r[0])
         );
  DFCNQD1BWP12T30P140 b_r_reg_6_ ( .D(N35), .CP(n265), .CDN(n262), .Q(b_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_4_ ( .D(N33), .CP(n265), .CDN(n262), .Q(b_r[4])
         );
  DFCNQD1BWP12T30P140 b_r_reg_2_ ( .D(N31), .CP(n265), .CDN(n262), .Q(b_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_6_ ( .D(N27), .CP(n265), .CDN(n261), .Q(a_r[6])
         );
  DFCNQD1BWP12T30P140 a_r_reg_5_ ( .D(N26), .CP(n265), .CDN(n261), .Q(a_r[5])
         );
  DFCNQD1BWP12T30P140 a_r_reg_4_ ( .D(N25), .CP(n265), .CDN(n261), .Q(a_r[4])
         );
  DFCNQD1BWP12T30P140 a_r_reg_3_ ( .D(N24), .CP(n265), .CDN(n261), .Q(a_r[3])
         );
  DFCNQD1BWP12T30P140 b_r_reg_7_ ( .D(N36), .CP(n265), .CDN(n262), .Q(b_r[7])
         );
  DFCNQD1BWP12T30P140 b_r_reg_5_ ( .D(N34), .CP(n265), .CDN(n262), .Q(b_r[5])
         );
  DFCNQD1BWP12T30P140 b_r_reg_3_ ( .D(N32), .CP(n264), .CDN(n262), .Q(b_r[3])
         );
  DFCNQD1BWP12T30P140 a_r_reg_1_ ( .D(N22), .CP(n265), .CDN(n261), .Q(a_r[1])
         );
  DFCNQD1BWP12T30P140 en_sr_reg_2_ ( .D(en_sr[1]), .CP(n267), .CDN(n262), .Q(
        en_sr[2]) );
  AN2D0BWP12T30P140 U149 ( .A1(mul_en_in), .A2(mul_a[1]), .Z(N22) );
  AN2D0BWP12T30P140 U150 ( .A1(mul_en_in), .A2(mul_b[3]), .Z(N32) );
  ND2D0BWP12T30P140 U151 ( .A1(b_r[1]), .A2(a_r[0]), .ZN(n99) );
  ND2D0BWP12T30P140 U152 ( .A1(a_r[1]), .A2(b_r[0]), .ZN(n98) );
  AN4D0BWP12T30P140 U153 ( .A1(a_r[1]), .A2(b_r[1]), .A3(a_r[0]), .A4(b_r[0]), 
        .Z(n152) );
  AOI21D0BWP12T30P140 U154 ( .A1(n99), .A2(n98), .B(n152), .ZN(N38) );
  AN2D0BWP12T30P140 U155 ( .A1(mul_en_in), .A2(mul_b[5]), .Z(N34) );
  AN2D0BWP12T30P140 U156 ( .A1(en_sr[2]), .A2(out_r[0]), .Z(N138) );
  INVD0BWP12T30P140 U157 ( .I(a_r[0]), .ZN(n171) );
  INVD0BWP12T30P140 U158 ( .I(b_r[4]), .ZN(n138) );
  NR2D0BWP12T30P140 U159 ( .A1(n171), .A2(n138), .ZN(N63) );
  ND2D0BWP12T30P140 U160 ( .A1(a_r[1]), .A2(b_r[5]), .ZN(n179) );
  INVD0BWP12T30P140 U161 ( .I(n179), .ZN(n139) );
  AOI22D0BWP12T30P140 U162 ( .A1(a_r[1]), .A2(b_r[4]), .B1(a_r[0]), .B2(b_r[5]), .ZN(n100) );
  AOI21D0BWP12T30P140 U163 ( .A1(N63), .A2(n139), .B(n100), .ZN(N64) );
  AN2D0BWP12T30P140 U164 ( .A1(mul_en_in), .A2(mul_b[7]), .Z(N36) );
  AN2D0BWP12T30P140 U165 ( .A1(en_sr[2]), .A2(out_r[1]), .Z(N139) );
  AN2D0BWP12T30P140 U166 ( .A1(s2[13]), .A2(s3[13]), .Z(n256) );
  IAO21D0BWP12T30P140 U167 ( .A1(s2[13]), .A2(s3[13]), .B(n256), .ZN(n255) );
  AN2D0BWP12T30P140 U168 ( .A1(s2[11]), .A2(s3[11]), .Z(n112) );
  IAO21D0BWP12T30P140 U169 ( .A1(s2[11]), .A2(s3[11]), .B(n112), .ZN(n101) );
  AN2D0BWP12T30P140 U170 ( .A1(s2[10]), .A2(s3[10]), .Z(n102) );
  FA1D0BWP12T30P140 U171 ( .A(s1[11]), .B(n101), .CI(n102), .CO(n115), .S(n118) );
  IAO21D0BWP12T30P140 U172 ( .A1(s2[10]), .A2(s3[10]), .B(n102), .ZN(n103) );
  FA1D0BWP12T30P140 U173 ( .A(s1[10]), .B(n104), .CI(n103), .CO(n117), .S(n121) );
  FA1D0BWP12T30P140 U174 ( .A(s0[9]), .B(s3[9]), .CI(s1[9]), .CO(n104), .S(
        n105) );
  FA1D0BWP12T30P140 U175 ( .A(s2[9]), .B(n106), .CI(n105), .CO(n120), .S(n124)
         );
  FA1D0BWP12T30P140 U176 ( .A(s0[8]), .B(s3[8]), .CI(s1[8]), .CO(n106), .S(
        n107) );
  FA1D0BWP12T30P140 U177 ( .A(s2[8]), .B(n108), .CI(n107), .CO(n123), .S(n127)
         );
  AN2D0BWP12T30P140 U178 ( .A1(s1[6]), .A2(s3[6]), .Z(n110) );
  IAO21D0BWP12T30P140 U179 ( .A1(s1[6]), .A2(s3[6]), .B(n110), .ZN(n109) );
  FA1D0BWP12T30P140 U180 ( .A(s0[6]), .B(s2[6]), .CI(n109), .CO(n111), .S(n170) );
  AN2D0BWP12T30P140 U181 ( .A1(s1[2]), .A2(s0[2]), .Z(n259) );
  AN2D0BWP12T30P140 U182 ( .A1(s2[4]), .A2(s0[4]), .Z(n176) );
  IAO21D0BWP12T30P140 U183 ( .A1(s2[4]), .A2(s0[4]), .B(n176), .ZN(n181) );
  FA1D0BWP12T30P140 U184 ( .A(s0[5]), .B(s1[5]), .CI(s2[5]), .CO(n169), .S(
        n175) );
  FA1D0BWP12T30P140 U185 ( .A(s2[7]), .B(n111), .CI(n110), .CO(n126), .S(n166)
         );
  FA1D0BWP12T30P140 U186 ( .A(s0[7]), .B(s3[7]), .CI(s1[7]), .CO(n108), .S(
        n165) );
  FA1D0BWP12T30P140 U187 ( .A(s3[12]), .B(s2[12]), .CI(n112), .CO(n254), .S(
        n113) );
  FA1D0BWP12T30P140 U188 ( .A(n115), .B(n114), .CI(n113), .CO(n253), .S(N133)
         );
  FA1D0BWP12T30P140 U189 ( .A(n118), .B(n117), .CI(n116), .CO(n114), .S(N132)
         );
  FA1D0BWP12T30P140 U190 ( .A(n121), .B(n120), .CI(n119), .CO(n116), .S(N131)
         );
  FA1D0BWP12T30P140 U191 ( .A(n124), .B(n123), .CI(n122), .CO(n119), .S(N130)
         );
  FA1D0BWP12T30P140 U192 ( .A(n127), .B(n126), .CI(n125), .CO(n122), .S(N129)
         );
  AN2D0BWP12T30P140 U193 ( .A1(mul_en_in), .A2(mul_a[3]), .Z(N24) );
  AN2D0BWP12T30P140 U194 ( .A1(en_sr[2]), .A2(out_r[2]), .Z(N140) );
  AN2D0BWP12T30P140 U195 ( .A1(mul_en_in), .A2(mul_a[4]), .Z(N25) );
  AN2D0BWP12T30P140 U196 ( .A1(en_sr[2]), .A2(out_r[3]), .Z(N141) );
  AN2D0BWP12T30P140 U197 ( .A1(mul_en_in), .A2(mul_b[1]), .Z(N30) );
  AN2D0BWP12T30P140 U198 ( .A1(mul_en_in), .A2(mul_a[5]), .Z(N26) );
  AN2D0BWP12T30P140 U199 ( .A1(en_sr[2]), .A2(out_r[4]), .Z(N142) );
  INVD0BWP12T30P140 U200 ( .I(b_r[2]), .ZN(n128) );
  NR2D0BWP12T30P140 U201 ( .A1(n171), .A2(n128), .ZN(N49) );
  INVD0BWP12T30P140 U202 ( .I(a_r[2]), .ZN(n173) );
  NR2D0BWP12T30P140 U203 ( .A1(n173), .A2(n128), .ZN(n147) );
  ND2D0BWP12T30P140 U204 ( .A1(a_r[1]), .A2(b_r[3]), .ZN(n146) );
  INVD0BWP12T30P140 U205 ( .I(n146), .ZN(n149) );
  OAI21D0BWP12T30P140 U206 ( .A1(n147), .A2(N49), .B(n149), .ZN(n143) );
  ND2D0BWP12T30P140 U207 ( .A1(b_r[2]), .A2(a_r[3]), .ZN(n142) );
  ND2D0BWP12T30P140 U208 ( .A1(a_r[2]), .A2(b_r[3]), .ZN(n141) );
  ND2D0BWP12T30P140 U209 ( .A1(b_r[2]), .A2(a_r[4]), .ZN(n234) );
  ND2D0BWP12T30P140 U210 ( .A1(b_r[3]), .A2(a_r[3]), .ZN(n233) );
  ND2D0BWP12T30P140 U211 ( .A1(b_r[2]), .A2(a_r[5]), .ZN(n157) );
  ND2D0BWP12T30P140 U212 ( .A1(b_r[3]), .A2(a_r[4]), .ZN(n156) );
  ND2D0BWP12T30P140 U213 ( .A1(b_r[2]), .A2(a_r[6]), .ZN(n135) );
  ND2D0BWP12T30P140 U214 ( .A1(b_r[3]), .A2(a_r[5]), .ZN(n134) );
  INVD0BWP12T30P140 U215 ( .I(n129), .ZN(N55) );
  AN2D0BWP12T30P140 U216 ( .A1(mul_en_in), .A2(mul_a[6]), .Z(N27) );
  AN2D0BWP12T30P140 U217 ( .A1(en_sr[2]), .A2(out_r[5]), .Z(N143) );
  AOI21D0BWP12T30P140 U218 ( .A1(b_r[0]), .A2(a_r[2]), .B(n152), .ZN(n151) );
  ND2D0BWP12T30P140 U219 ( .A1(a_r[1]), .A2(b_r[1]), .ZN(n154) );
  NR2D0BWP12T30P140 U220 ( .A1(n151), .A2(n154), .ZN(n200) );
  INVD0BWP12T30P140 U221 ( .I(b_r[1]), .ZN(n185) );
  NR2D0BWP12T30P140 U222 ( .A1(n185), .A2(n173), .ZN(n199) );
  INVD0BWP12T30P140 U223 ( .I(b_r[0]), .ZN(n150) );
  INVD0BWP12T30P140 U224 ( .I(a_r[3]), .ZN(n130) );
  NR2D0BWP12T30P140 U225 ( .A1(n150), .A2(n130), .ZN(n198) );
  NR2D0BWP12T30P140 U226 ( .A1(n185), .A2(n130), .ZN(n196) );
  INVD0BWP12T30P140 U227 ( .I(a_r[4]), .ZN(n131) );
  NR2D0BWP12T30P140 U228 ( .A1(n150), .A2(n131), .ZN(n195) );
  NR2D0BWP12T30P140 U229 ( .A1(n185), .A2(n131), .ZN(n193) );
  INVD0BWP12T30P140 U230 ( .I(a_r[5]), .ZN(n132) );
  NR2D0BWP12T30P140 U231 ( .A1(n150), .A2(n132), .ZN(n192) );
  NR2D0BWP12T30P140 U232 ( .A1(n185), .A2(n132), .ZN(n190) );
  INVD0BWP12T30P140 U233 ( .I(a_r[6]), .ZN(n133) );
  NR2D0BWP12T30P140 U234 ( .A1(n150), .A2(n133), .ZN(n189) );
  NR2D0BWP12T30P140 U235 ( .A1(n185), .A2(n133), .ZN(n187) );
  INVD0BWP12T30P140 U236 ( .I(a_r[7]), .ZN(n227) );
  NR2D0BWP12T30P140 U237 ( .A1(n150), .A2(n227), .ZN(n186) );
  AN2D0BWP12T30P140 U238 ( .A1(n184), .A2(a_r[7]), .Z(N46) );
  AN2D0BWP12T30P140 U239 ( .A1(mul_en_in), .A2(mul_b[2]), .Z(N31) );
  AN2D0BWP12T30P140 U240 ( .A1(en_sr[2]), .A2(out_r[6]), .Z(N144) );
  AN2D0BWP12T30P140 U241 ( .A1(mul_en_in), .A2(mul_b[0]), .Z(N29) );
  AN2D0BWP12T30P140 U242 ( .A1(mul_en_in), .A2(mul_b[4]), .Z(N33) );
  AN2D0BWP12T30P140 U243 ( .A1(en_sr[2]), .A2(out_r[7]), .Z(N145) );
  FA1D0BWP12T30P140 U244 ( .A(n136), .B(n135), .CI(n134), .CO(n209), .S(n129)
         );
  ND2D0BWP12T30P140 U245 ( .A1(b_r[2]), .A2(a_r[7]), .ZN(n208) );
  ND2D0BWP12T30P140 U246 ( .A1(b_r[3]), .A2(a_r[6]), .ZN(n207) );
  INVD0BWP12T30P140 U247 ( .I(n137), .ZN(N56) );
  AN2D0BWP12T30P140 U248 ( .A1(mul_en_in), .A2(mul_b[6]), .Z(N35) );
  AN2D0BWP12T30P140 U249 ( .A1(en_sr[2]), .A2(out_r[8]), .Z(N146) );
  NR2D0BWP12T30P140 U250 ( .A1(n173), .A2(n138), .ZN(n180) );
  OAI21D0BWP12T30P140 U251 ( .A1(n180), .A2(N63), .B(n139), .ZN(n162) );
  ND2D0BWP12T30P140 U252 ( .A1(b_r[4]), .A2(a_r[3]), .ZN(n161) );
  ND2D0BWP12T30P140 U253 ( .A1(a_r[2]), .A2(b_r[5]), .ZN(n160) );
  INVD0BWP12T30P140 U254 ( .I(n140), .ZN(N66) );
  AN2D0BWP12T30P140 U255 ( .A1(mul_en_in), .A2(mul_a[0]), .Z(N21) );
  AN2D0BWP12T30P140 U256 ( .A1(en_sr[2]), .A2(out_r[9]), .Z(N147) );
  FA1D0BWP12T30P140 U257 ( .A(n143), .B(n142), .CI(n141), .CO(n235), .S(n144)
         );
  INVD0BWP12T30P140 U258 ( .I(n144), .ZN(N52) );
  AN2D0BWP12T30P140 U259 ( .A1(mul_en_in), .A2(mul_a[7]), .Z(N28) );
  AN2D0BWP12T30P140 U260 ( .A1(en_sr[2]), .A2(out_r[10]), .Z(N148) );
  AN2D0BWP12T30P140 U261 ( .A1(mul_en_in), .A2(mul_a[2]), .Z(N23) );
  AN2D0BWP12T30P140 U262 ( .A1(en_sr[2]), .A2(out_r[11]), .Z(N149) );
  OAI21D0BWP12T30P140 U263 ( .A1(N49), .A2(n146), .B(n147), .ZN(n145) );
  OAI31D0BWP12T30P140 U264 ( .A1(N49), .A2(n147), .A3(n146), .B(n145), .ZN(N51) );
  AN2D0BWP12T30P140 U265 ( .A1(en_sr[2]), .A2(out_r[12]), .Z(N150) );
  AOI22D0BWP12T30P140 U266 ( .A1(a_r[1]), .A2(b_r[2]), .B1(a_r[0]), .B2(b_r[3]), .ZN(n148) );
  AOI21D0BWP12T30P140 U267 ( .A1(N49), .A2(n149), .B(n148), .ZN(N50) );
  AN2D0BWP12T30P140 U268 ( .A1(en_sr[2]), .A2(out_r[13]), .Z(N151) );
  NR2D0BWP12T30P140 U269 ( .A1(n171), .A2(n150), .ZN(N37) );
  AOI21D0BWP12T30P140 U270 ( .A1(n152), .A2(a_r[2]), .B(n151), .ZN(n155) );
  ND2D0BWP12T30P140 U271 ( .A1(n155), .A2(n154), .ZN(n153) );
  OAI21D0BWP12T30P140 U272 ( .A1(n155), .A2(n154), .B(n153), .ZN(N39) );
  AN2D0BWP12T30P140 U273 ( .A1(en_sr[2]), .A2(out_r[14]), .Z(N152) );
  FA1D0BWP12T30P140 U274 ( .A(n158), .B(n157), .CI(n156), .CO(n136), .S(n159)
         );
  INVD0BWP12T30P140 U275 ( .I(n159), .ZN(N54) );
  AN2D0BWP12T30P140 U276 ( .A1(en_sr[2]), .A2(out_r[15]), .Z(N153) );
  FA1D0BWP12T30P140 U277 ( .A(n162), .B(n161), .CI(n160), .CO(n247), .S(n140)
         );
  ND2D0BWP12T30P140 U278 ( .A1(b_r[4]), .A2(a_r[4]), .ZN(n246) );
  ND2D0BWP12T30P140 U279 ( .A1(b_r[5]), .A2(a_r[3]), .ZN(n245) );
  ND2D0BWP12T30P140 U280 ( .A1(b_r[4]), .A2(a_r[5]), .ZN(n230) );
  ND2D0BWP12T30P140 U281 ( .A1(b_r[5]), .A2(a_r[4]), .ZN(n229) );
  ND2D0BWP12T30P140 U282 ( .A1(b_r[4]), .A2(a_r[6]), .ZN(n204) );
  ND2D0BWP12T30P140 U283 ( .A1(b_r[5]), .A2(a_r[5]), .ZN(n203) );
  ND2D0BWP12T30P140 U284 ( .A1(b_r[4]), .A2(a_r[7]), .ZN(n238) );
  ND2D0BWP12T30P140 U285 ( .A1(b_r[5]), .A2(a_r[6]), .ZN(n237) );
  NR2D0BWP12T30P140 U286 ( .A1(n164), .A2(n227), .ZN(N72) );
  INVD0BWP12T30P140 U287 ( .I(b_r[5]), .ZN(n163) );
  AOI211D0BWP12T30P140 U288 ( .A1(n164), .A2(n227), .B(N72), .C(n163), .ZN(N71) );
  FA1D0BWP12T30P140 U289 ( .A(n167), .B(n166), .CI(n165), .CO(n125), .S(N128)
         );
  FA1D0BWP12T30P140 U290 ( .A(n170), .B(n169), .CI(n168), .CO(n167), .S(N127)
         );
  INVD0BWP12T30P140 U291 ( .I(b_r[6]), .ZN(n172) );
  NR2D0BWP12T30P140 U292 ( .A1(n171), .A2(n172), .ZN(N79) );
  NR2D0BWP12T30P140 U293 ( .A1(n173), .A2(n172), .ZN(n213) );
  ND2D0BWP12T30P140 U294 ( .A1(a_r[1]), .A2(b_r[7]), .ZN(n201) );
  OAI21D0BWP12T30P140 U295 ( .A1(N79), .A2(n201), .B(n213), .ZN(n174) );
  OAI31D0BWP12T30P140 U296 ( .A1(N79), .A2(n213), .A3(n201), .B(n174), .ZN(N81) );
  FA1D0BWP12T30P140 U297 ( .A(n177), .B(n176), .CI(n175), .CO(n168), .S(N126)
         );
  OAI21D0BWP12T30P140 U298 ( .A1(N63), .A2(n179), .B(n180), .ZN(n178) );
  OAI31D0BWP12T30P140 U299 ( .A1(N63), .A2(n180), .A3(n179), .B(n178), .ZN(N65) );
  FA1D0BWP12T30P140 U300 ( .A(s1[4]), .B(n182), .CI(n181), .CO(n177), .S(N125)
         );
  ND2D0BWP12T30P140 U301 ( .A1(n184), .A2(n227), .ZN(n183) );
  OAI31D0BWP12T30P140 U302 ( .A1(n185), .A2(n184), .A3(n227), .B(n183), .ZN(
        N45) );
  FA1D0BWP12T30P140 U303 ( .A(n188), .B(n187), .CI(n186), .CO(n184), .S(N44)
         );
  FA1D0BWP12T30P140 U304 ( .A(n191), .B(n190), .CI(n189), .CO(n188), .S(N43)
         );
  FA1D0BWP12T30P140 U305 ( .A(n194), .B(n193), .CI(n192), .CO(n191), .S(N42)
         );
  FA1D0BWP12T30P140 U306 ( .A(n197), .B(n196), .CI(n195), .CO(n194), .S(N41)
         );
  FA1D0BWP12T30P140 U307 ( .A(n200), .B(n199), .CI(n198), .CO(n197), .S(N40)
         );
  FA1D0BWP12T30P140 U308 ( .A(s0[3]), .B(s1[3]), .CI(n259), .CO(n182), .S(N124) );
  INVD0BWP12T30P140 U309 ( .I(n201), .ZN(n212) );
  AOI22D0BWP12T30P140 U310 ( .A1(a_r[1]), .A2(b_r[6]), .B1(a_r[0]), .B2(b_r[7]), .ZN(n202) );
  AOI21D0BWP12T30P140 U311 ( .A1(N79), .A2(n212), .B(n202), .ZN(N80) );
  FA1D0BWP12T30P140 U312 ( .A(n205), .B(n204), .CI(n203), .CO(n239), .S(n206)
         );
  INVD0BWP12T30P140 U313 ( .I(n206), .ZN(N69) );
  FA1D0BWP12T30P140 U314 ( .A(n209), .B(n208), .CI(n207), .CO(n211), .S(n137)
         );
  NR2D0BWP12T30P140 U315 ( .A1(n211), .A2(n227), .ZN(N58) );
  INVD0BWP12T30P140 U316 ( .I(b_r[3]), .ZN(n210) );
  AOI211D0BWP12T30P140 U317 ( .A1(n211), .A2(n227), .B(N58), .C(n210), .ZN(N57) );
  OAI21D0BWP12T30P140 U318 ( .A1(n213), .A2(N79), .B(n212), .ZN(n217) );
  ND2D0BWP12T30P140 U319 ( .A1(b_r[6]), .A2(a_r[3]), .ZN(n216) );
  ND2D0BWP12T30P140 U320 ( .A1(a_r[2]), .A2(b_r[7]), .ZN(n215) );
  ND2D0BWP12T30P140 U321 ( .A1(b_r[6]), .A2(a_r[4]), .ZN(n220) );
  ND2D0BWP12T30P140 U322 ( .A1(b_r[7]), .A2(a_r[3]), .ZN(n219) );
  ND2D0BWP12T30P140 U323 ( .A1(b_r[6]), .A2(a_r[5]), .ZN(n242) );
  ND2D0BWP12T30P140 U324 ( .A1(b_r[7]), .A2(a_r[4]), .ZN(n241) );
  ND2D0BWP12T30P140 U325 ( .A1(b_r[6]), .A2(a_r[6]), .ZN(n224) );
  ND2D0BWP12T30P140 U326 ( .A1(b_r[7]), .A2(a_r[5]), .ZN(n223) );
  INVD0BWP12T30P140 U327 ( .I(n214), .ZN(N85) );
  FA1D0BWP12T30P140 U328 ( .A(n217), .B(n216), .CI(n215), .CO(n221), .S(n218)
         );
  INVD0BWP12T30P140 U329 ( .I(n218), .ZN(N82) );
  FA1D0BWP12T30P140 U330 ( .A(n221), .B(n220), .CI(n219), .CO(n243), .S(n222)
         );
  INVD0BWP12T30P140 U331 ( .I(n222), .ZN(N83) );
  FA1D0BWP12T30P140 U332 ( .A(n225), .B(n224), .CI(n223), .CO(n251), .S(n214)
         );
  ND2D0BWP12T30P140 U333 ( .A1(b_r[6]), .A2(a_r[7]), .ZN(n250) );
  ND2D0BWP12T30P140 U334 ( .A1(b_r[7]), .A2(a_r[6]), .ZN(n249) );
  NR2D0BWP12T30P140 U335 ( .A1(n228), .A2(n227), .ZN(N88) );
  INVD0BWP12T30P140 U336 ( .I(b_r[7]), .ZN(n226) );
  AOI211D0BWP12T30P140 U337 ( .A1(n228), .A2(n227), .B(N88), .C(n226), .ZN(N87) );
  FA1D0BWP12T30P140 U338 ( .A(n231), .B(n230), .CI(n229), .CO(n205), .S(n232)
         );
  INVD0BWP12T30P140 U339 ( .I(n232), .ZN(N68) );
  FA1D0BWP12T30P140 U340 ( .A(n235), .B(n234), .CI(n233), .CO(n158), .S(n236)
         );
  INVD0BWP12T30P140 U341 ( .I(n236), .ZN(N53) );
  FA1D0BWP12T30P140 U342 ( .A(n239), .B(n238), .CI(n237), .CO(n164), .S(n240)
         );
  INVD0BWP12T30P140 U343 ( .I(n240), .ZN(N70) );
  FA1D0BWP12T30P140 U344 ( .A(n243), .B(n242), .CI(n241), .CO(n225), .S(n244)
         );
  INVD0BWP12T30P140 U345 ( .I(n244), .ZN(N84) );
  FA1D0BWP12T30P140 U346 ( .A(n247), .B(n246), .CI(n245), .CO(n231), .S(n248)
         );
  INVD0BWP12T30P140 U347 ( .I(n248), .ZN(N67) );
  FA1D0BWP12T30P140 U348 ( .A(n251), .B(n250), .CI(n249), .CO(n228), .S(n252)
         );
  INVD0BWP12T30P140 U349 ( .I(n252), .ZN(N86) );
  CKBD0BWP12T30P140 U350 ( .I(clk), .Z(n267) );
  CKBD0BWP12T30P140 U351 ( .I(clk), .Z(n264) );
  CKBD0BWP12T30P140 U352 ( .I(clk), .Z(n265) );
  CKBD0BWP12T30P140 U353 ( .I(clk), .Z(n266) );
  CKBD0BWP12T30P140 U354 ( .I(rst_n), .Z(n263) );
  CKBD0BWP12T30P140 U355 ( .I(rst_n), .Z(n260) );
  CKBD0BWP12T30P140 U356 ( .I(rst_n), .Z(n261) );
  CKBD0BWP12T30P140 U357 ( .I(rst_n), .Z(n262) );
  FA1D0BWP12T30P140 U358 ( .A(n255), .B(n254), .CI(n253), .CO(n257), .S(N134)
         );
  FA1D0BWP12T30P140 U359 ( .A(s3[14]), .B(n257), .CI(n256), .CO(n258), .S(N135) );
  CKXOR2D0BWP12T30P140 U360 ( .A1(s3[15]), .A2(n258), .Z(N136) );
  IAO21D0BWP12T30P140 U361 ( .A1(s1[2]), .A2(s0[2]), .B(n259), .ZN(N123) );
endmodule

