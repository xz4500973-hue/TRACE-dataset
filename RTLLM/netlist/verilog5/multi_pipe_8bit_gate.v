/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:11:46 2026
/////////////////////////////////////////////////////////////


module multi_pipe_8bit ( clk, rst_n, mul_en_in, mul_a, mul_b, mul_en_out, 
        mul_out );
  input [7:0] mul_a;
  input [7:0] mul_b;
  output [15:0] mul_out;
  input clk, rst_n, mul_en_in;
  output mul_en_out;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N21, N22, N23, N24, N25, N26,
         N27, N28, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236;
  wire   [7:0] a_r;
  wire   [7:0] b_r;
  wire   [2:0] en_sr;
  wire   [15:0] sum_total;
  wire   [15:4] sum_high;
  wire   [11:4] sum_low;

  DFCNQD1BWP12T30P140 mul_out_reg_0_ ( .D(N196), .CP(n236), .CDN(n233), .Q(
        mul_out[0]) );
  DFCNQD1BWP12T30P140 mul_out_reg_1_ ( .D(N197), .CP(n235), .CDN(n233), .Q(
        mul_out[1]) );
  DFCNQD1BWP12T30P140 mul_out_reg_2_ ( .D(N198), .CP(n235), .CDN(n233), .Q(
        mul_out[2]) );
  DFCNQD1BWP12T30P140 mul_out_reg_3_ ( .D(N199), .CP(n235), .CDN(n233), .Q(
        mul_out[3]) );
  DFCNQD1BWP12T30P140 mul_out_reg_4_ ( .D(N200), .CP(n235), .CDN(n233), .Q(
        mul_out[4]) );
  DFCNQD1BWP12T30P140 mul_out_reg_5_ ( .D(N201), .CP(n235), .CDN(n233), .Q(
        mul_out[5]) );
  DFCNQD1BWP12T30P140 mul_out_reg_6_ ( .D(N202), .CP(n235), .CDN(n233), .Q(
        mul_out[6]) );
  DFCNQD1BWP12T30P140 mul_out_reg_7_ ( .D(N203), .CP(n235), .CDN(n233), .Q(
        mul_out[7]) );
  DFCNQD1BWP12T30P140 mul_out_reg_8_ ( .D(N204), .CP(n235), .CDN(n233), .Q(
        mul_out[8]) );
  DFCNQD1BWP12T30P140 mul_out_reg_9_ ( .D(N205), .CP(n235), .CDN(n233), .Q(
        mul_out[9]) );
  DFCNQD1BWP12T30P140 mul_out_reg_10_ ( .D(N206), .CP(n235), .CDN(n233), .Q(
        mul_out[10]) );
  DFCNQD1BWP12T30P140 mul_out_reg_11_ ( .D(N207), .CP(n235), .CDN(n233), .Q(
        mul_out[11]) );
  DFCNQD1BWP12T30P140 mul_out_reg_12_ ( .D(N208), .CP(n235), .CDN(n233), .Q(
        mul_out[12]) );
  DFCNQD1BWP12T30P140 mul_out_reg_13_ ( .D(N209), .CP(n234), .CDN(rst_n), .Q(
        mul_out[13]) );
  DFCNQD1BWP12T30P140 mul_out_reg_14_ ( .D(N210), .CP(n234), .CDN(rst_n), .Q(
        mul_out[14]) );
  DFCNQD1BWP12T30P140 mul_out_reg_15_ ( .D(N211), .CP(n234), .CDN(rst_n), .Q(
        mul_out[15]) );
  DFCNQD1BWP12T30P140 mul_en_out_reg ( .D(en_sr[2]), .CP(n234), .CDN(rst_n), 
        .Q(mul_en_out) );
  DFCNQD1BWP12T30P140 sum_high_reg_13_ ( .D(N176), .CP(clk), .CDN(n231), .Q(
        sum_high[13]) );
  DFCNQD1BWP12T30P140 a_r_reg_4_ ( .D(N16), .CP(n234), .CDN(rst_n), .Q(a_r[4])
         );
  DFCNQD1BWP12T30P140 a_r_reg_3_ ( .D(N15), .CP(n234), .CDN(rst_n), .Q(a_r[3])
         );
  DFCNQD1BWP12T30P140 sum_total_reg_15_ ( .D(N194), .CP(n234), .CDN(n232), .Q(
        sum_total[15]) );
  DFCNQD1BWP12T30P140 sum_total_reg_14_ ( .D(N193), .CP(clk), .CDN(n232), .Q(
        sum_total[14]) );
  DFCNQD1BWP12T30P140 sum_total_reg_13_ ( .D(N192), .CP(n236), .CDN(n232), .Q(
        sum_total[13]) );
  DFCNQD1BWP12T30P140 sum_total_reg_12_ ( .D(N191), .CP(n234), .CDN(n232), .Q(
        sum_total[12]) );
  DFCNQD1BWP12T30P140 sum_total_reg_11_ ( .D(N190), .CP(n235), .CDN(n232), .Q(
        sum_total[11]) );
  DFCNQD1BWP12T30P140 sum_total_reg_10_ ( .D(N189), .CP(clk), .CDN(n232), .Q(
        sum_total[10]) );
  DFCNQD1BWP12T30P140 sum_total_reg_9_ ( .D(N188), .CP(n235), .CDN(n231), .Q(
        sum_total[9]) );
  DFCNQD1BWP12T30P140 sum_total_reg_8_ ( .D(N187), .CP(n236), .CDN(n232), .Q(
        sum_total[8]) );
  DFCNQD1BWP12T30P140 sum_total_reg_7_ ( .D(N186), .CP(n236), .CDN(n233), .Q(
        sum_total[7]) );
  DFCNQD1BWP12T30P140 sum_total_reg_6_ ( .D(N185), .CP(n236), .CDN(rst_n), .Q(
        sum_total[6]) );
  DFCNQD1BWP12T30P140 sum_total_reg_5_ ( .D(N184), .CP(n236), .CDN(n231), .Q(
        sum_total[5]) );
  DFCNQD1BWP12T30P140 sum_total_reg_4_ ( .D(N183), .CP(n236), .CDN(n232), .Q(
        sum_total[4]) );
  DFCNQD1BWP12T30P140 sum_total_reg_3_ ( .D(N182), .CP(n236), .CDN(n233), .Q(
        sum_total[3]) );
  DFCNQD1BWP12T30P140 sum_total_reg_2_ ( .D(N181), .CP(n236), .CDN(rst_n), .Q(
        sum_total[2]) );
  DFCNQD1BWP12T30P140 sum_total_reg_1_ ( .D(N180), .CP(n236), .CDN(n231), .Q(
        sum_total[1]) );
  DFCNQD1BWP12T30P140 sum_total_reg_0_ ( .D(N179), .CP(n236), .CDN(n232), .Q(
        sum_total[0]) );
  DFCNQD1BWP12T30P140 b_r_reg_4_ ( .D(N25), .CP(clk), .CDN(n231), .Q(b_r[4])
         );
  DFCNQD1BWP12T30P140 sum_high_reg_4_ ( .D(N167), .CP(n236), .CDN(n232), .Q(
        sum_high[4]) );
  DFCNQD1BWP12T30P140 sum_high_reg_14_ ( .D(N177), .CP(n234), .CDN(n231), .Q(
        sum_high[14]) );
  DFCNQD1BWP12T30P140 sum_high_reg_12_ ( .D(N175), .CP(n236), .CDN(n231), .Q(
        sum_high[12]) );
  DFCNQD1BWP12T30P140 sum_high_reg_15_ ( .D(N178), .CP(n234), .CDN(n231), .Q(
        sum_high[15]) );
  DFCNQD1BWP12T30P140 sum_low_reg_4_ ( .D(N90), .CP(clk), .CDN(n231), .Q(
        sum_low[4]) );
  DFCNQD1BWP12T30P140 b_r_reg_0_ ( .D(N21), .CP(n236), .CDN(n232), .Q(b_r[0])
         );
  DFCNQD1BWP12T30P140 a_r_reg_5_ ( .D(N17), .CP(n234), .CDN(rst_n), .Q(a_r[5])
         );
  DFCNQD1BWP12T30P140 b_r_reg_5_ ( .D(N26), .CP(clk), .CDN(n233), .Q(b_r[5])
         );
  DFCNQD1BWP12T30P140 b_r_reg_6_ ( .D(N27), .CP(clk), .CDN(rst_n), .Q(b_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_7_ ( .D(N28), .CP(clk), .CDN(n232), .Q(b_r[7])
         );
  DFCNQD1BWP12T30P140 sum_low_reg_11_ ( .D(N97), .CP(n234), .CDN(n231), .Q(
        sum_low[11]) );
  DFCNQD1BWP12T30P140 sum_low_reg_10_ ( .D(N96), .CP(n235), .CDN(n232), .Q(
        sum_low[10]) );
  DFCNQD1BWP12T30P140 sum_low_reg_9_ ( .D(N95), .CP(clk), .CDN(n233), .Q(
        sum_low[9]) );
  DFCNQD1BWP12T30P140 sum_low_reg_8_ ( .D(N94), .CP(n236), .CDN(rst_n), .Q(
        sum_low[8]) );
  DFCNQD1BWP12T30P140 sum_low_reg_7_ ( .D(N93), .CP(n234), .CDN(n231), .Q(
        sum_low[7]) );
  DFCNQD1BWP12T30P140 sum_low_reg_6_ ( .D(N92), .CP(n235), .CDN(n231), .Q(
        sum_low[6]) );
  DFCNQD1BWP12T30P140 sum_low_reg_5_ ( .D(N91), .CP(clk), .CDN(n231), .Q(
        sum_low[5]) );
  DFCNQD1BWP12T30P140 sum_high_reg_11_ ( .D(N174), .CP(n235), .CDN(n231), .Q(
        sum_high[11]) );
  DFCNQD1BWP12T30P140 sum_high_reg_10_ ( .D(N173), .CP(clk), .CDN(n232), .Q(
        sum_high[10]) );
  DFCNQD1BWP12T30P140 sum_high_reg_9_ ( .D(N172), .CP(n235), .CDN(n232), .Q(
        sum_high[9]) );
  DFCNQD1BWP12T30P140 sum_high_reg_8_ ( .D(N171), .CP(n236), .CDN(n232), .Q(
        sum_high[8]) );
  DFCNQD1BWP12T30P140 sum_high_reg_7_ ( .D(N170), .CP(n234), .CDN(n232), .Q(
        sum_high[7]) );
  DFCNQD1BWP12T30P140 sum_high_reg_6_ ( .D(N169), .CP(n235), .CDN(n232), .Q(
        sum_high[6]) );
  DFCNQD1BWP12T30P140 sum_high_reg_5_ ( .D(N168), .CP(clk), .CDN(n232), .Q(
        sum_high[5]) );
  DFCNQD1BWP12T30P140 a_r_reg_7_ ( .D(N19), .CP(n234), .CDN(rst_n), .Q(a_r[7])
         );
  DFCNQD1BWP12T30P140 sum_low_reg_3_ ( .D(N89), .CP(n234), .CDN(n231), .Q(N182) );
  DFCNQD1BWP12T30P140 sum_low_reg_2_ ( .D(N88), .CP(n235), .CDN(n231), .Q(N181) );
  DFCNQD1BWP12T30P140 sum_low_reg_1_ ( .D(N87), .CP(clk), .CDN(n231), .Q(N180)
         );
  DFCNQD1BWP12T30P140 sum_low_reg_0_ ( .D(N86), .CP(clk), .CDN(n231), .Q(N179)
         );
  DFCNQD1BWP12T30P140 en_sr_reg_0_ ( .D(mul_en_in), .CP(n236), .CDN(n233), .Q(
        en_sr[0]) );
  DFCNQD1BWP12T30P140 en_sr_reg_1_ ( .D(en_sr[0]), .CP(n236), .CDN(rst_n), .Q(
        en_sr[1]) );
  DFCNQD1BWP12T30P140 a_r_reg_6_ ( .D(N18), .CP(n234), .CDN(rst_n), .Q(a_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_3_ ( .D(N24), .CP(n236), .CDN(n233), .Q(b_r[3])
         );
  DFCNQD1BWP12T30P140 b_r_reg_1_ ( .D(N22), .CP(clk), .CDN(n231), .Q(b_r[1])
         );
  DFCNQD1BWP12T30P140 b_r_reg_2_ ( .D(N23), .CP(clk), .CDN(n232), .Q(b_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_2_ ( .D(N14), .CP(n234), .CDN(rst_n), .Q(a_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_1_ ( .D(N13), .CP(n234), .CDN(rst_n), .Q(a_r[1])
         );
  DFCNQD1BWP12T30P140 a_r_reg_0_ ( .D(N12), .CP(n234), .CDN(n233), .Q(a_r[0])
         );
  DFCNQD1BWP12T30P140 en_sr_reg_2_ ( .D(en_sr[1]), .CP(n236), .CDN(rst_n), .Q(
        en_sr[2]) );
  INVD0BWP12T30P140 U133 ( .I(a_r[6]), .ZN(n120) );
  INVD0BWP12T30P140 U134 ( .I(a_r[5]), .ZN(n127) );
  INVD0BWP12T30P140 U135 ( .I(b_r[7]), .ZN(n57) );
  INVD0BWP12T30P140 U136 ( .I(b_r[6]), .ZN(n62) );
  NR4D0BWP12T30P140 U137 ( .A1(n120), .A2(n127), .A3(n57), .A4(n62), .ZN(n36)
         );
  INVD0BWP12T30P140 U138 ( .I(n36), .ZN(n84) );
  NR2D0BWP12T30P140 U139 ( .A1(n120), .A2(n57), .ZN(n34) );
  INVD0BWP12T30P140 U140 ( .I(a_r[7]), .ZN(n113) );
  NR2D0BWP12T30P140 U141 ( .A1(n113), .A2(n62), .ZN(n33) );
  ND4D0BWP12T30P140 U142 ( .A1(a_r[7]), .A2(a_r[6]), .A3(b_r[7]), .A4(b_r[6]), 
        .ZN(n83) );
  OAI21D0BWP12T30P140 U143 ( .A1(n34), .A2(n33), .B(n83), .ZN(n35) );
  MUX2ND0BWP12T30P140 U144 ( .I0(n36), .I1(n84), .S(n35), .ZN(n194) );
  ND2D0BWP12T30P140 U145 ( .A1(a_r[6]), .A2(b_r[6]), .ZN(n38) );
  ND2D0BWP12T30P140 U146 ( .A1(a_r[5]), .A2(b_r[7]), .ZN(n37) );
  AOI21D0BWP12T30P140 U147 ( .A1(n38), .A2(n37), .B(n36), .ZN(n41) );
  INVD0BWP12T30P140 U148 ( .I(b_r[5]), .ZN(n74) );
  NR2D0BWP12T30P140 U149 ( .A1(n113), .A2(n74), .ZN(n40) );
  INVD0BWP12T30P140 U150 ( .I(b_r[4]), .ZN(n89) );
  NR2D0BWP12T30P140 U151 ( .A1(n113), .A2(n89), .ZN(n44) );
  NR2D0BWP12T30P140 U152 ( .A1(n120), .A2(n74), .ZN(n43) );
  INVD0BWP12T30P140 U153 ( .I(a_r[4]), .ZN(n128) );
  NR2D0BWP12T30P140 U154 ( .A1(n57), .A2(n128), .ZN(n42) );
  FA1D0BWP12T30P140 U155 ( .A(n41), .B(n40), .CI(n39), .CO(n193), .S(n197) );
  FA1D0BWP12T30P140 U156 ( .A(n44), .B(n43), .CI(n42), .CO(n39), .S(n47) );
  NR2D0BWP12T30P140 U157 ( .A1(n127), .A2(n62), .ZN(n46) );
  NR2D0BWP12T30P140 U158 ( .A1(n120), .A2(n89), .ZN(n50) );
  NR2D0BWP12T30P140 U159 ( .A1(n127), .A2(n74), .ZN(n49) );
  INVD0BWP12T30P140 U160 ( .I(a_r[3]), .ZN(n138) );
  NR2D0BWP12T30P140 U161 ( .A1(n57), .A2(n138), .ZN(n48) );
  FA1D0BWP12T30P140 U162 ( .A(n47), .B(n46), .CI(n45), .CO(n196), .S(n200) );
  FA1D0BWP12T30P140 U163 ( .A(n50), .B(n49), .CI(n48), .CO(n45), .S(n53) );
  NR2D0BWP12T30P140 U164 ( .A1(n62), .A2(n128), .ZN(n52) );
  NR2D0BWP12T30P140 U165 ( .A1(n127), .A2(n89), .ZN(n56) );
  NR2D0BWP12T30P140 U166 ( .A1(n74), .A2(n128), .ZN(n55) );
  INVD0BWP12T30P140 U167 ( .I(a_r[2]), .ZN(n130) );
  NR2D0BWP12T30P140 U168 ( .A1(n57), .A2(n130), .ZN(n54) );
  FA1D0BWP12T30P140 U169 ( .A(n53), .B(n52), .CI(n51), .CO(n199), .S(n203) );
  FA1D0BWP12T30P140 U170 ( .A(n56), .B(n55), .CI(n54), .CO(n51), .S(n60) );
  NR2D0BWP12T30P140 U171 ( .A1(n62), .A2(n138), .ZN(n59) );
  NR2D0BWP12T30P140 U172 ( .A1(n89), .A2(n128), .ZN(n80) );
  NR2D0BWP12T30P140 U173 ( .A1(n74), .A2(n138), .ZN(n79) );
  INVD0BWP12T30P140 U174 ( .I(a_r[1]), .ZN(n104) );
  NR2D0BWP12T30P140 U175 ( .A1(n57), .A2(n104), .ZN(n78) );
  FA1D0BWP12T30P140 U176 ( .A(n60), .B(n59), .CI(n58), .CO(n202), .S(n61) );
  INVD0BWP12T30P140 U177 ( .I(n61), .ZN(n186) );
  ND2D0BWP12T30P140 U178 ( .A1(b_r[7]), .A2(a_r[0]), .ZN(n76) );
  NR3D0BWP12T30P140 U179 ( .A1(n130), .A2(n74), .A3(n76), .ZN(n75) );
  INVD0BWP12T30P140 U180 ( .I(a_r[0]), .ZN(n228) );
  NR4D0BWP12T30P140 U181 ( .A1(n62), .A2(n130), .A3(n228), .A4(n89), .ZN(n71)
         );
  NR2D0BWP12T30P140 U182 ( .A1(n62), .A2(n104), .ZN(n69) );
  NR2D0BWP12T30P140 U183 ( .A1(n89), .A2(n138), .ZN(n68) );
  NR2D0BWP12T30P140 U184 ( .A1(n75), .A2(n64), .ZN(n63) );
  ND2D0BWP12T30P140 U185 ( .A1(b_r[6]), .A2(a_r[2]), .ZN(n66) );
  OR2D0BWP12T30P140 U186 ( .A1(n63), .A2(n66), .Z(n185) );
  INVD0BWP12T30P140 U187 ( .I(n66), .ZN(n67) );
  AOI21D0BWP12T30P140 U188 ( .A1(n64), .A2(n75), .B(n63), .ZN(n65) );
  MUX2ND0BWP12T30P140 U189 ( .I0(n67), .I1(n66), .S(n65), .ZN(n190) );
  FA1D0BWP12T30P140 U190 ( .A(n71), .B(n69), .CI(n68), .CO(n64), .S(n70) );
  INVD0BWP12T30P140 U191 ( .I(n70), .ZN(n206) );
  ND2D0BWP12T30P140 U192 ( .A1(b_r[6]), .A2(a_r[0]), .ZN(n73) );
  ND2D0BWP12T30P140 U193 ( .A1(a_r[2]), .A2(b_r[4]), .ZN(n72) );
  AOI21D0BWP12T30P140 U194 ( .A1(n73), .A2(n72), .B(n71), .ZN(n210) );
  ND2D0BWP12T30P140 U195 ( .A1(a_r[1]), .A2(b_r[4]), .ZN(n218) );
  NR3D0BWP12T30P140 U196 ( .A1(n228), .A2(n74), .A3(n218), .ZN(n217) );
  AOI31D0BWP12T30P140 U197 ( .A1(a_r[1]), .A2(b_r[5]), .A3(n210), .B(n217), 
        .ZN(n205) );
  ND2D0BWP12T30P140 U198 ( .A1(a_r[2]), .A2(b_r[5]), .ZN(n77) );
  AO21D0BWP12T30P140 U199 ( .A1(n77), .A2(n76), .B(n75), .Z(n204) );
  FA1D0BWP12T30P140 U200 ( .A(n80), .B(n79), .CI(n78), .CO(n58), .S(n81) );
  INVD0BWP12T30P140 U201 ( .I(n81), .ZN(n188) );
  INVD0BWP12T30P140 U202 ( .I(n82), .ZN(n201) );
  ND2D0BWP12T30P140 U203 ( .A1(n84), .A2(n83), .ZN(n85) );
  NR2D0BWP12T30P140 U204 ( .A1(n86), .A2(n85), .ZN(n91) );
  AOI21D0BWP12T30P140 U205 ( .A1(n86), .A2(n85), .B(n91), .ZN(n88) );
  ND2D0BWP12T30P140 U206 ( .A1(a_r[7]), .A2(b_r[7]), .ZN(n90) );
  ND2D0BWP12T30P140 U207 ( .A1(n88), .A2(n90), .ZN(n87) );
  OAI21D0BWP12T30P140 U208 ( .A1(n88), .A2(n90), .B(n87), .ZN(N177) );
  NR2D0BWP12T30P140 U209 ( .A1(n228), .A2(n89), .ZN(N167) );
  AN2D0BWP12T30P140 U210 ( .A1(mul_en_in), .A2(mul_b[4]), .Z(N25) );
  NR2D0BWP12T30P140 U211 ( .A1(n91), .A2(n90), .ZN(N178) );
  ND2D0BWP12T30P140 U212 ( .A1(b_r[2]), .A2(a_r[2]), .ZN(n147) );
  INVD0BWP12T30P140 U213 ( .I(n147), .ZN(n94) );
  INVD0BWP12T30P140 U214 ( .I(b_r[2]), .ZN(n139) );
  INVD0BWP12T30P140 U215 ( .I(b_r[0]), .ZN(n227) );
  NR4D0BWP12T30P140 U216 ( .A1(n139), .A2(n130), .A3(n228), .A4(n227), .ZN(n98) );
  NR2D0BWP12T30P140 U217 ( .A1(n139), .A2(n104), .ZN(n96) );
  NR2D0BWP12T30P140 U218 ( .A1(n227), .A2(n138), .ZN(n95) );
  INVD0BWP12T30P140 U219 ( .I(b_r[3]), .ZN(n131) );
  INVD0BWP12T30P140 U220 ( .I(b_r[1]), .ZN(n129) );
  NR4D0BWP12T30P140 U221 ( .A1(n131), .A2(n130), .A3(n129), .A4(n228), .ZN(
        n101) );
  NR2D0BWP12T30P140 U222 ( .A1(n101), .A2(n92), .ZN(n148) );
  AOI21D0BWP12T30P140 U223 ( .A1(n92), .A2(n101), .B(n148), .ZN(n93) );
  MUX2ND0BWP12T30P140 U224 ( .I0(n94), .I1(n147), .S(n93), .ZN(n151) );
  FA1D0BWP12T30P140 U225 ( .A(n98), .B(n96), .CI(n95), .CO(n92), .S(n97) );
  INVD0BWP12T30P140 U226 ( .I(n97), .ZN(n222) );
  ND2D0BWP12T30P140 U227 ( .A1(b_r[2]), .A2(a_r[0]), .ZN(n100) );
  ND2D0BWP12T30P140 U228 ( .A1(a_r[2]), .A2(b_r[0]), .ZN(n99) );
  AOI21D0BWP12T30P140 U229 ( .A1(n100), .A2(n99), .B(n98), .ZN(n216) );
  NR4D0BWP12T30P140 U230 ( .A1(n129), .A2(n228), .A3(n227), .A4(n104), .ZN(
        n224) );
  AOI31D0BWP12T30P140 U231 ( .A1(a_r[1]), .A2(b_r[1]), .A3(n216), .B(n224), 
        .ZN(n221) );
  ND2D0BWP12T30P140 U232 ( .A1(a_r[2]), .A2(b_r[1]), .ZN(n103) );
  ND2D0BWP12T30P140 U233 ( .A1(b_r[3]), .A2(a_r[0]), .ZN(n102) );
  AO21D0BWP12T30P140 U234 ( .A1(n103), .A2(n102), .B(n101), .Z(n220) );
  NR2D0BWP12T30P140 U235 ( .A1(n227), .A2(n128), .ZN(n142) );
  NR2D0BWP12T30P140 U236 ( .A1(n129), .A2(n138), .ZN(n141) );
  NR2D0BWP12T30P140 U237 ( .A1(n131), .A2(n104), .ZN(n140) );
  INVD0BWP12T30P140 U238 ( .I(n105), .ZN(n149) );
  INVD0BWP12T30P140 U239 ( .I(n106), .ZN(N90) );
  AN2D0BWP12T30P140 U240 ( .A1(mul_en_in), .A2(mul_b[0]), .Z(N21) );
  AN2D0BWP12T30P140 U241 ( .A1(mul_en_in), .A2(mul_a[5]), .Z(N17) );
  AN2D0BWP12T30P140 U242 ( .A1(mul_en_in), .A2(mul_b[5]), .Z(N26) );
  AN2D0BWP12T30P140 U243 ( .A1(mul_en_in), .A2(mul_b[6]), .Z(N27) );
  AN2D0BWP12T30P140 U244 ( .A1(mul_en_in), .A2(mul_b[7]), .Z(N28) );
  NR4D0BWP12T30P140 U245 ( .A1(n131), .A2(n120), .A3(n139), .A4(n127), .ZN(
        n110) );
  INVD0BWP12T30P140 U246 ( .I(n110), .ZN(n154) );
  NR2D0BWP12T30P140 U247 ( .A1(n131), .A2(n120), .ZN(n108) );
  NR2D0BWP12T30P140 U248 ( .A1(n113), .A2(n139), .ZN(n107) );
  ND4D0BWP12T30P140 U249 ( .A1(a_r[7]), .A2(b_r[3]), .A3(a_r[6]), .A4(b_r[2]), 
        .ZN(n153) );
  OAI21D0BWP12T30P140 U250 ( .A1(n108), .A2(n107), .B(n153), .ZN(n109) );
  MUX2ND0BWP12T30P140 U251 ( .I0(n110), .I1(n154), .S(n109), .ZN(n163) );
  ND2D0BWP12T30P140 U252 ( .A1(a_r[6]), .A2(b_r[2]), .ZN(n112) );
  ND2D0BWP12T30P140 U253 ( .A1(b_r[3]), .A2(a_r[5]), .ZN(n111) );
  AOI21D0BWP12T30P140 U254 ( .A1(n112), .A2(n111), .B(n110), .ZN(n116) );
  NR2D0BWP12T30P140 U255 ( .A1(n113), .A2(n129), .ZN(n115) );
  NR2D0BWP12T30P140 U256 ( .A1(n113), .A2(n227), .ZN(n119) );
  NR2D0BWP12T30P140 U257 ( .A1(n120), .A2(n129), .ZN(n118) );
  NR2D0BWP12T30P140 U258 ( .A1(n131), .A2(n128), .ZN(n117) );
  FA1D0BWP12T30P140 U259 ( .A(n116), .B(n115), .CI(n114), .CO(n162), .S(n166)
         );
  FA1D0BWP12T30P140 U260 ( .A(n119), .B(n118), .CI(n117), .CO(n114), .S(n123)
         );
  NR2D0BWP12T30P140 U261 ( .A1(n139), .A2(n127), .ZN(n122) );
  NR2D0BWP12T30P140 U262 ( .A1(n120), .A2(n227), .ZN(n126) );
  NR2D0BWP12T30P140 U263 ( .A1(n127), .A2(n129), .ZN(n125) );
  NR2D0BWP12T30P140 U264 ( .A1(n131), .A2(n138), .ZN(n124) );
  FA1D0BWP12T30P140 U265 ( .A(n123), .B(n122), .CI(n121), .CO(n165), .S(n169)
         );
  FA1D0BWP12T30P140 U266 ( .A(n126), .B(n125), .CI(n124), .CO(n121), .S(n134)
         );
  NR2D0BWP12T30P140 U267 ( .A1(n139), .A2(n128), .ZN(n133) );
  NR2D0BWP12T30P140 U268 ( .A1(n127), .A2(n227), .ZN(n137) );
  NR2D0BWP12T30P140 U269 ( .A1(n129), .A2(n128), .ZN(n136) );
  NR2D0BWP12T30P140 U270 ( .A1(n131), .A2(n130), .ZN(n135) );
  FA1D0BWP12T30P140 U271 ( .A(n134), .B(n133), .CI(n132), .CO(n168), .S(n173)
         );
  FA1D0BWP12T30P140 U272 ( .A(n137), .B(n136), .CI(n135), .CO(n132), .S(n145)
         );
  NR2D0BWP12T30P140 U273 ( .A1(n139), .A2(n138), .ZN(n144) );
  FA1D0BWP12T30P140 U274 ( .A(n142), .B(n141), .CI(n140), .CO(n143), .S(n105)
         );
  FA1D0BWP12T30P140 U275 ( .A(n145), .B(n144), .CI(n143), .CO(n172), .S(n146)
         );
  INVD0BWP12T30P140 U276 ( .I(n146), .ZN(n178) );
  OR2D0BWP12T30P140 U277 ( .A1(n148), .A2(n147), .Z(n177) );
  FA1D0BWP12T30P140 U278 ( .A(n151), .B(n150), .CI(n149), .CO(n176), .S(n106)
         );
  INVD0BWP12T30P140 U279 ( .I(n152), .ZN(n171) );
  ND2D0BWP12T30P140 U280 ( .A1(n154), .A2(n153), .ZN(n156) );
  NR2D0BWP12T30P140 U281 ( .A1(n157), .A2(n156), .ZN(n155) );
  ND2D0BWP12T30P140 U282 ( .A1(a_r[7]), .A2(b_r[3]), .ZN(n159) );
  NR2D0BWP12T30P140 U283 ( .A1(n155), .A2(n159), .ZN(N97) );
  AOI21D0BWP12T30P140 U284 ( .A1(n157), .A2(n156), .B(n155), .ZN(n160) );
  ND2D0BWP12T30P140 U285 ( .A1(n160), .A2(n159), .ZN(n158) );
  OAI21D0BWP12T30P140 U286 ( .A1(n160), .A2(n159), .B(n158), .ZN(N96) );
  FA1D0BWP12T30P140 U287 ( .A(n163), .B(n162), .CI(n161), .CO(n157), .S(N95)
         );
  FA1D0BWP12T30P140 U288 ( .A(n166), .B(n165), .CI(n164), .CO(n161), .S(N94)
         );
  FA1D0BWP12T30P140 U289 ( .A(n169), .B(n168), .CI(n167), .CO(n164), .S(N93)
         );
  AN2D0BWP12T30P140 U290 ( .A1(sum_high[4]), .A2(sum_low[4]), .Z(n229) );
  ND2D0BWP12T30P140 U291 ( .A1(n170), .A2(sum_high[12]), .ZN(n175) );
  OA21D0BWP12T30P140 U292 ( .A1(n170), .A2(sum_high[12]), .B(n175), .Z(N191)
         );
  FA1D0BWP12T30P140 U293 ( .A(n173), .B(n172), .CI(n171), .CO(n167), .S(N92)
         );
  INVD0BWP12T30P140 U294 ( .I(sum_high[13]), .ZN(n174) );
  NR2D0BWP12T30P140 U295 ( .A1(n174), .A2(n175), .ZN(n180) );
  AOI21D0BWP12T30P140 U296 ( .A1(n175), .A2(n174), .B(n180), .ZN(N192) );
  FA1D0BWP12T30P140 U297 ( .A(n178), .B(n177), .CI(n176), .CO(n152), .S(n179)
         );
  INVD0BWP12T30P140 U298 ( .I(n179), .ZN(N91) );
  ND2D0BWP12T30P140 U299 ( .A1(n180), .A2(sum_high[14]), .ZN(n230) );
  OA21D0BWP12T30P140 U300 ( .A1(n180), .A2(sum_high[14]), .B(n230), .Z(N193)
         );
  FA1D0BWP12T30P140 U301 ( .A(sum_high[11]), .B(sum_low[11]), .CI(n181), .CO(
        n170), .S(N190) );
  FA1D0BWP12T30P140 U302 ( .A(sum_high[10]), .B(sum_low[10]), .CI(n182), .CO(
        n181), .S(N189) );
  FA1D0BWP12T30P140 U303 ( .A(sum_high[9]), .B(sum_low[9]), .CI(n183), .CO(
        n182), .S(N188) );
  AN2D0BWP12T30P140 U304 ( .A1(mul_en_in), .A2(mul_a[3]), .Z(N15) );
  FA1D0BWP12T30P140 U305 ( .A(n186), .B(n185), .CI(n184), .CO(n82), .S(n187)
         );
  INVD0BWP12T30P140 U306 ( .I(n187), .ZN(N172) );
  AN2D0BWP12T30P140 U307 ( .A1(en_sr[2]), .A2(sum_total[0]), .Z(N196) );
  AN2D0BWP12T30P140 U308 ( .A1(mul_en_in), .A2(mul_a[4]), .Z(N16) );
  FA1D0BWP12T30P140 U309 ( .A(n190), .B(n189), .CI(n188), .CO(n184), .S(n191)
         );
  INVD0BWP12T30P140 U310 ( .I(n191), .ZN(N171) );
  FA1D0BWP12T30P140 U311 ( .A(n194), .B(n193), .CI(n192), .CO(n86), .S(N176)
         );
  FA1D0BWP12T30P140 U312 ( .A(n197), .B(n196), .CI(n195), .CO(n192), .S(N175)
         );
  FA1D0BWP12T30P140 U313 ( .A(n200), .B(n199), .CI(n198), .CO(n195), .S(N174)
         );
  FA1D0BWP12T30P140 U314 ( .A(n203), .B(n202), .CI(n201), .CO(n198), .S(N173)
         );
  FA1D0BWP12T30P140 U315 ( .A(n206), .B(n205), .CI(n204), .CO(n189), .S(n207)
         );
  INVD0BWP12T30P140 U316 ( .I(n207), .ZN(N170) );
  ND2D0BWP12T30P140 U317 ( .A1(b_r[5]), .A2(a_r[1]), .ZN(n209) );
  OAI21D0BWP12T30P140 U318 ( .A1(n217), .A2(n209), .B(n210), .ZN(n208) );
  OAI31D0BWP12T30P140 U319 ( .A1(n217), .A2(n210), .A3(n209), .B(n208), .ZN(
        N169) );
  AN2D0BWP12T30P140 U320 ( .A1(en_sr[2]), .A2(sum_total[15]), .Z(N211) );
  FA1D0BWP12T30P140 U321 ( .A(sum_high[8]), .B(sum_low[8]), .CI(n211), .CO(
        n183), .S(N187) );
  FA1D0BWP12T30P140 U322 ( .A(sum_high[7]), .B(sum_low[7]), .CI(n212), .CO(
        n211), .S(N186) );
  FA1D0BWP12T30P140 U323 ( .A(sum_high[6]), .B(sum_low[6]), .CI(n213), .CO(
        n212), .S(N185) );
  FA1D0BWP12T30P140 U324 ( .A(sum_high[5]), .B(sum_low[5]), .CI(n229), .CO(
        n213), .S(N184) );
  ND2D0BWP12T30P140 U325 ( .A1(b_r[1]), .A2(a_r[1]), .ZN(n215) );
  OAI21D0BWP12T30P140 U326 ( .A1(n224), .A2(n215), .B(n216), .ZN(n214) );
  OAI31D0BWP12T30P140 U327 ( .A1(n224), .A2(n216), .A3(n215), .B(n214), .ZN(
        N88) );
  ND2D0BWP12T30P140 U328 ( .A1(a_r[0]), .A2(b_r[5]), .ZN(n219) );
  AOI21D0BWP12T30P140 U329 ( .A1(n219), .A2(n218), .B(n217), .ZN(N168) );
  AN2D0BWP12T30P140 U330 ( .A1(en_sr[2]), .A2(sum_total[14]), .Z(N210) );
  AN2D0BWP12T30P140 U331 ( .A1(en_sr[2]), .A2(sum_total[2]), .Z(N198) );
  AN2D0BWP12T30P140 U332 ( .A1(mul_en_in), .A2(mul_a[6]), .Z(N18) );
  AN2D0BWP12T30P140 U333 ( .A1(en_sr[2]), .A2(sum_total[1]), .Z(N197) );
  AN2D0BWP12T30P140 U334 ( .A1(mul_en_in), .A2(mul_a[7]), .Z(N19) );
  AN2D0BWP12T30P140 U335 ( .A1(mul_en_in), .A2(mul_b[3]), .Z(N24) );
  AN2D0BWP12T30P140 U336 ( .A1(en_sr[2]), .A2(sum_total[13]), .Z(N209) );
  FA1D0BWP12T30P140 U337 ( .A(n222), .B(n221), .CI(n220), .CO(n150), .S(n223)
         );
  INVD0BWP12T30P140 U338 ( .I(n223), .ZN(N89) );
  AN2D0BWP12T30P140 U339 ( .A1(en_sr[2]), .A2(sum_total[6]), .Z(N202) );
  AN2D0BWP12T30P140 U340 ( .A1(en_sr[2]), .A2(sum_total[12]), .Z(N208) );
  AN2D0BWP12T30P140 U341 ( .A1(en_sr[2]), .A2(sum_total[9]), .Z(N205) );
  AN2D0BWP12T30P140 U342 ( .A1(mul_en_in), .A2(mul_a[2]), .Z(N14) );
  AN2D0BWP12T30P140 U343 ( .A1(en_sr[2]), .A2(sum_total[5]), .Z(N201) );
  AN2D0BWP12T30P140 U344 ( .A1(en_sr[2]), .A2(sum_total[11]), .Z(N207) );
  AN2D0BWP12T30P140 U345 ( .A1(mul_en_in), .A2(mul_b[2]), .Z(N23) );
  ND2D0BWP12T30P140 U346 ( .A1(b_r[1]), .A2(a_r[0]), .ZN(n226) );
  ND2D0BWP12T30P140 U347 ( .A1(b_r[0]), .A2(a_r[1]), .ZN(n225) );
  AOI21D0BWP12T30P140 U348 ( .A1(n226), .A2(n225), .B(n224), .ZN(N87) );
  AN2D0BWP12T30P140 U349 ( .A1(en_sr[2]), .A2(sum_total[4]), .Z(N200) );
  AN2D0BWP12T30P140 U350 ( .A1(mul_en_in), .A2(mul_a[0]), .Z(N12) );
  AN2D0BWP12T30P140 U351 ( .A1(en_sr[2]), .A2(sum_total[10]), .Z(N206) );
  NR2D0BWP12T30P140 U352 ( .A1(n228), .A2(n227), .ZN(N86) );
  AN2D0BWP12T30P140 U353 ( .A1(en_sr[2]), .A2(sum_total[3]), .Z(N199) );
  AN2D0BWP12T30P140 U354 ( .A1(mul_en_in), .A2(mul_b[1]), .Z(N22) );
  AN2D0BWP12T30P140 U355 ( .A1(mul_en_in), .A2(mul_a[1]), .Z(N13) );
  AN2D0BWP12T30P140 U356 ( .A1(en_sr[2]), .A2(sum_total[7]), .Z(N203) );
  AN2D0BWP12T30P140 U357 ( .A1(en_sr[2]), .A2(sum_total[8]), .Z(N204) );
  CKBD0BWP12T30P140 U358 ( .I(clk), .Z(n235) );
  CKBD0BWP12T30P140 U359 ( .I(clk), .Z(n234) );
  CKBD0BWP12T30P140 U360 ( .I(clk), .Z(n236) );
  CKBD0BWP12T30P140 U361 ( .I(rst_n), .Z(n233) );
  CKBD0BWP12T30P140 U362 ( .I(rst_n), .Z(n232) );
  CKBD0BWP12T30P140 U363 ( .I(rst_n), .Z(n231) );
  IAO21D0BWP12T30P140 U364 ( .A1(sum_high[4]), .A2(sum_low[4]), .B(n229), .ZN(
        N183) );
  XNR2D0BWP12T30P140 U365 ( .A1(sum_high[15]), .A2(n230), .ZN(N194) );
endmodule

