/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:49:08 2026
/////////////////////////////////////////////////////////////


module multi_pipe_8bit ( clk, rst_n, mul_en_in, mul_a, mul_b, mul_en_out, 
        mul_out );
  input [7:0] mul_a;
  input [7:0] mul_b;
  output [15:0] mul_out;
  input clk, rst_n, mul_en_in;
  output mul_en_out;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, N178,
         N179, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
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
         n229, n230, n231, n232, n233, n234, n235, n236;
  wire   [7:0] a_r;
  wire   [7:0] b_r;
  wire   [2:0] en_sr;
  wire   [51:0] pipe;

  DFCNQD1BWP12T30P140 pipe_reg_1__13_ ( .D(N177), .CP(n235), .CDN(n231), .Q(
        pipe[41]) );
  DFCNQD1BWP12T30P140 a_r_reg_4_ ( .D(N18), .CP(clk), .CDN(n233), .Q(a_r[4])
         );
  DFCNQD1BWP12T30P140 a_r_reg_3_ ( .D(N17), .CP(n234), .CDN(rst_n), .Q(a_r[3])
         );
  DFCNQD1BWP12T30P140 pipe_reg_3__15_ ( .D(pipe[31]), .CP(clk), .CDN(n232), 
        .Q(pipe[15]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__14_ ( .D(pipe[30]), .CP(n234), .CDN(n232), 
        .Q(pipe[14]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__13_ ( .D(pipe[29]), .CP(n236), .CDN(n232), 
        .Q(pipe[13]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__12_ ( .D(pipe[28]), .CP(n234), .CDN(n232), 
        .Q(pipe[12]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__11_ ( .D(pipe[27]), .CP(n235), .CDN(n232), 
        .Q(pipe[11]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__10_ ( .D(pipe[26]), .CP(clk), .CDN(n232), 
        .Q(pipe[10]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__9_ ( .D(pipe[25]), .CP(n235), .CDN(n232), 
        .Q(pipe[9]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__8_ ( .D(pipe[24]), .CP(n236), .CDN(n233), 
        .Q(pipe[8]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__7_ ( .D(pipe[23]), .CP(n236), .CDN(n233), 
        .Q(pipe[7]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__6_ ( .D(pipe[22]), .CP(n234), .CDN(n233), 
        .Q(pipe[6]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__5_ ( .D(pipe[21]), .CP(n235), .CDN(n233), 
        .Q(pipe[5]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__4_ ( .D(pipe[20]), .CP(clk), .CDN(n233), .Q(
        pipe[4]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__3_ ( .D(pipe[19]), .CP(n236), .CDN(n233), 
        .Q(pipe[3]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__2_ ( .D(pipe[18]), .CP(n234), .CDN(n233), 
        .Q(pipe[2]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__1_ ( .D(pipe[17]), .CP(n235), .CDN(n233), 
        .Q(pipe[1]) );
  DFCNQD1BWP12T30P140 pipe_reg_3__0_ ( .D(pipe[16]), .CP(clk), .CDN(n233), .Q(
        pipe[0]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__4_ ( .D(N168), .CP(n235), .CDN(rst_n), .Q(
        pipe[32]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__14_ ( .D(N178), .CP(n235), .CDN(n231), .Q(
        pipe[42]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__12_ ( .D(N176), .CP(n235), .CDN(n231), .Q(
        pipe[40]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__15_ ( .D(N179), .CP(n235), .CDN(n231), .Q(
        pipe[43]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__4_ ( .D(N91), .CP(n236), .CDN(n231), .Q(
        pipe[44]) );
  DFCNQD1BWP12T30P140 a_r_reg_5_ ( .D(N19), .CP(n236), .CDN(n233), .Q(a_r[5])
         );
  DFCNQD1BWP12T30P140 b_r_reg_0_ ( .D(N22), .CP(n234), .CDN(n231), .Q(b_r[0])
         );
  DFCNQD1BWP12T30P140 b_r_reg_4_ ( .D(N26), .CP(n234), .CDN(rst_n), .Q(b_r[4])
         );
  DFCNQD1BWP12T30P140 en_sr_reg_0_ ( .D(mul_en_in), .CP(clk), .CDN(n233), .Q(
        en_sr[0]) );
  DFCNQD1BWP12T30P140 en_sr_reg_1_ ( .D(en_sr[0]), .CP(clk), .CDN(n232), .Q(
        en_sr[1]) );
  DFCNQD1BWP12T30P140 en_sr_reg_2_ ( .D(en_sr[1]), .CP(clk), .CDN(n231), .Q(
        en_sr[2]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__11_ ( .D(N98), .CP(n236), .CDN(n233), .Q(
        pipe[51]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__10_ ( .D(N97), .CP(n236), .CDN(n232), .Q(
        pipe[50]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__9_ ( .D(N96), .CP(n236), .CDN(rst_n), .Q(
        pipe[49]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__8_ ( .D(N95), .CP(n236), .CDN(n231), .Q(
        pipe[48]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__7_ ( .D(N94), .CP(n236), .CDN(n233), .Q(
        pipe[47]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__6_ ( .D(N93), .CP(n236), .CDN(n232), .Q(
        pipe[46]) );
  DFCNQD1BWP12T30P140 pipe_reg_0__5_ ( .D(N92), .CP(n236), .CDN(rst_n), .Q(
        pipe[45]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__11_ ( .D(N175), .CP(n235), .CDN(n231), .Q(
        pipe[39]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__10_ ( .D(N174), .CP(n235), .CDN(n231), .Q(
        pipe[38]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__9_ ( .D(N173), .CP(n235), .CDN(n231), .Q(
        pipe[37]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__8_ ( .D(N172), .CP(n235), .CDN(n231), .Q(
        pipe[36]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__7_ ( .D(N171), .CP(n235), .CDN(n231), .Q(
        pipe[35]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__6_ ( .D(N170), .CP(n235), .CDN(n233), .Q(
        pipe[34]) );
  DFCNQD1BWP12T30P140 pipe_reg_1__5_ ( .D(N169), .CP(n235), .CDN(n232), .Q(
        pipe[33]) );
  DFCNQD1BWP12T30P140 a_r_reg_7_ ( .D(N21), .CP(clk), .CDN(n233), .Q(a_r[7])
         );
  DFCNQD1BWP12T30P140 pipe_reg_0__3_ ( .D(N90), .CP(n236), .CDN(n231), .Q(N183) );
  DFCNQD1BWP12T30P140 pipe_reg_0__2_ ( .D(N89), .CP(n236), .CDN(n231), .Q(N182) );
  DFCNQD1BWP12T30P140 pipe_reg_0__1_ ( .D(N88), .CP(n236), .CDN(n231), .Q(N181) );
  DFCNQD1BWP12T30P140 pipe_reg_0__0_ ( .D(N87), .CP(n236), .CDN(n231), .Q(N180) );
  DFCNQD1BWP12T30P140 pipe_reg_2__15_ ( .D(N195), .CP(n234), .CDN(n232), .Q(
        pipe[31]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__14_ ( .D(N194), .CP(clk), .CDN(n233), .Q(
        pipe[30]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__13_ ( .D(N193), .CP(n236), .CDN(n232), .Q(
        pipe[29]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__12_ ( .D(N192), .CP(n234), .CDN(rst_n), .Q(
        pipe[28]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__11_ ( .D(N191), .CP(n235), .CDN(n231), .Q(
        pipe[27]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__10_ ( .D(N190), .CP(clk), .CDN(rst_n), .Q(
        pipe[26]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__9_ ( .D(N189), .CP(n235), .CDN(n233), .Q(
        pipe[25]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__8_ ( .D(N188), .CP(n236), .CDN(n232), .Q(
        pipe[24]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__7_ ( .D(N187), .CP(n236), .CDN(rst_n), .Q(
        pipe[23]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__6_ ( .D(N186), .CP(n234), .CDN(n231), .Q(
        pipe[22]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__5_ ( .D(N185), .CP(n235), .CDN(n232), .Q(
        pipe[21]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__4_ ( .D(N184), .CP(clk), .CDN(n232), .Q(
        pipe[20]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__3_ ( .D(N183), .CP(n234), .CDN(n232), .Q(
        pipe[19]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__2_ ( .D(N182), .CP(n235), .CDN(n232), .Q(
        pipe[18]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__1_ ( .D(N181), .CP(clk), .CDN(n232), .Q(
        pipe[17]) );
  DFCNQD1BWP12T30P140 pipe_reg_2__0_ ( .D(N180), .CP(clk), .CDN(n232), .Q(
        pipe[16]) );
  DFCNQD1BWP12T30P140 a_r_reg_6_ ( .D(N20), .CP(clk), .CDN(n233), .Q(a_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_3_ ( .D(N25), .CP(n234), .CDN(rst_n), .Q(b_r[3])
         );
  DFCNQD1BWP12T30P140 b_r_reg_1_ ( .D(N23), .CP(n234), .CDN(rst_n), .Q(b_r[1])
         );
  DFCNQD1BWP12T30P140 b_r_reg_7_ ( .D(N29), .CP(n234), .CDN(rst_n), .Q(b_r[7])
         );
  DFCNQD1BWP12T30P140 b_r_reg_6_ ( .D(N28), .CP(n234), .CDN(rst_n), .Q(b_r[6])
         );
  DFCNQD1BWP12T30P140 b_r_reg_2_ ( .D(N24), .CP(n234), .CDN(rst_n), .Q(b_r[2])
         );
  DFCNQD1BWP12T30P140 b_r_reg_5_ ( .D(N27), .CP(n234), .CDN(rst_n), .Q(b_r[5])
         );
  DFCNQD1BWP12T30P140 a_r_reg_2_ ( .D(N16), .CP(n234), .CDN(rst_n), .Q(a_r[2])
         );
  DFCNQD1BWP12T30P140 a_r_reg_1_ ( .D(N15), .CP(n234), .CDN(rst_n), .Q(a_r[1])
         );
  DFCNQD1BWP12T30P140 a_r_reg_0_ ( .D(N14), .CP(n234), .CDN(rst_n), .Q(a_r[0])
         );
  DFCNQD1BWP12T30P140 mul_en_out_reg ( .D(en_sr[2]), .CP(clk), .CDN(n233), .Q(
        mul_en_out) );
  AN2D0BWP12T30P140 U133 ( .A1(mul_en_in), .A2(mul_a[0]), .Z(N14) );
  AN2D0BWP12T30P140 U134 ( .A1(mul_en_in), .A2(mul_a[4]), .Z(N18) );
  AN2D0BWP12T30P140 U135 ( .A1(mul_en_in), .A2(mul_a[1]), .Z(N15) );
  ND2D0BWP12T30P140 U136 ( .A1(b_r[2]), .A2(a_r[2]), .ZN(n87) );
  INVD0BWP12T30P140 U137 ( .I(n87), .ZN(n35) );
  INVD0BWP12T30P140 U138 ( .I(b_r[2]), .ZN(n79) );
  INVD0BWP12T30P140 U139 ( .I(a_r[2]), .ZN(n127) );
  INVD0BWP12T30P140 U140 ( .I(a_r[0]), .ZN(n168) );
  INVD0BWP12T30P140 U141 ( .I(b_r[0]), .ZN(n167) );
  NR4D0BWP12T30P140 U142 ( .A1(n79), .A2(n127), .A3(n168), .A4(n167), .ZN(n39)
         );
  INVD0BWP12T30P140 U143 ( .I(a_r[1]), .ZN(n139) );
  NR2D0BWP12T30P140 U144 ( .A1(n79), .A2(n139), .ZN(n37) );
  INVD0BWP12T30P140 U145 ( .I(a_r[3]), .ZN(n137) );
  NR2D0BWP12T30P140 U146 ( .A1(n167), .A2(n137), .ZN(n36) );
  INVD0BWP12T30P140 U147 ( .I(b_r[3]), .ZN(n72) );
  INVD0BWP12T30P140 U148 ( .I(b_r[1]), .ZN(n71) );
  NR4D0BWP12T30P140 U149 ( .A1(n72), .A2(n127), .A3(n71), .A4(n168), .ZN(n42)
         );
  NR2D0BWP12T30P140 U150 ( .A1(n42), .A2(n33), .ZN(n88) );
  AOI21D0BWP12T30P140 U151 ( .A1(n33), .A2(n42), .B(n88), .ZN(n34) );
  MUX2ND0BWP12T30P140 U152 ( .I0(n35), .I1(n87), .S(n34), .ZN(n91) );
  FA1D0BWP12T30P140 U153 ( .A(n39), .B(n37), .CI(n36), .CO(n33), .S(n38) );
  INVD0BWP12T30P140 U154 ( .I(n38), .ZN(n195) );
  ND2D0BWP12T30P140 U155 ( .A1(b_r[2]), .A2(a_r[0]), .ZN(n41) );
  ND2D0BWP12T30P140 U156 ( .A1(a_r[2]), .A2(b_r[0]), .ZN(n40) );
  AOI21D0BWP12T30P140 U157 ( .A1(n41), .A2(n40), .B(n39), .ZN(n180) );
  NR4D0BWP12T30P140 U158 ( .A1(n71), .A2(n168), .A3(n167), .A4(n139), .ZN(n181) );
  AOI31D0BWP12T30P140 U159 ( .A1(a_r[1]), .A2(b_r[1]), .A3(n180), .B(n181), 
        .ZN(n194) );
  ND2D0BWP12T30P140 U160 ( .A1(a_r[2]), .A2(b_r[1]), .ZN(n44) );
  ND2D0BWP12T30P140 U161 ( .A1(b_r[3]), .A2(a_r[0]), .ZN(n43) );
  AO21D0BWP12T30P140 U162 ( .A1(n44), .A2(n43), .B(n42), .Z(n193) );
  INVD0BWP12T30P140 U163 ( .I(a_r[4]), .ZN(n135) );
  NR2D0BWP12T30P140 U164 ( .A1(n167), .A2(n135), .ZN(n82) );
  NR2D0BWP12T30P140 U165 ( .A1(n71), .A2(n137), .ZN(n81) );
  NR2D0BWP12T30P140 U166 ( .A1(n72), .A2(n139), .ZN(n80) );
  INVD0BWP12T30P140 U167 ( .I(n45), .ZN(n89) );
  INVD0BWP12T30P140 U168 ( .I(n46), .ZN(N91) );
  AN2D0BWP12T30P140 U169 ( .A1(mul_en_in), .A2(mul_a[2]), .Z(N16) );
  AN2D0BWP12T30P140 U170 ( .A1(mul_en_in), .A2(mul_a[3]), .Z(N17) );
  AN2D0BWP12T30P140 U171 ( .A1(mul_en_in), .A2(mul_b[5]), .Z(N27) );
  INVD0BWP12T30P140 U172 ( .I(b_r[6]), .ZN(n134) );
  INVD0BWP12T30P140 U173 ( .I(b_r[4]), .ZN(n136) );
  NR4D0BWP12T30P140 U174 ( .A1(n134), .A2(n127), .A3(n168), .A4(n136), .ZN(
        n147) );
  NR2D0BWP12T30P140 U175 ( .A1(n134), .A2(n139), .ZN(n146) );
  NR2D0BWP12T30P140 U176 ( .A1(n136), .A2(n137), .ZN(n145) );
  INVD0BWP12T30P140 U177 ( .I(n47), .ZN(n156) );
  ND2D0BWP12T30P140 U178 ( .A1(b_r[6]), .A2(a_r[0]), .ZN(n49) );
  ND2D0BWP12T30P140 U179 ( .A1(a_r[2]), .A2(b_r[4]), .ZN(n48) );
  AOI21D0BWP12T30P140 U180 ( .A1(n49), .A2(n48), .B(n147), .ZN(n208) );
  INVD0BWP12T30P140 U181 ( .I(b_r[5]), .ZN(n138) );
  ND2D0BWP12T30P140 U182 ( .A1(a_r[1]), .A2(b_r[4]), .ZN(n182) );
  NR3D0BWP12T30P140 U183 ( .A1(n168), .A2(n138), .A3(n182), .ZN(n209) );
  AOI31D0BWP12T30P140 U184 ( .A1(a_r[1]), .A2(b_r[5]), .A3(n208), .B(n209), 
        .ZN(n155) );
  ND2D0BWP12T30P140 U185 ( .A1(a_r[2]), .A2(b_r[5]), .ZN(n51) );
  ND2D0BWP12T30P140 U186 ( .A1(b_r[7]), .A2(a_r[0]), .ZN(n50) );
  NR3D0BWP12T30P140 U187 ( .A1(n127), .A2(n138), .A3(n50), .ZN(n149) );
  AO21D0BWP12T30P140 U188 ( .A1(n51), .A2(n50), .B(n149), .Z(n154) );
  INVD0BWP12T30P140 U189 ( .I(n52), .ZN(N171) );
  AN2D0BWP12T30P140 U190 ( .A1(mul_en_in), .A2(mul_b[2]), .Z(N24) );
  AN2D0BWP12T30P140 U191 ( .A1(mul_en_in), .A2(mul_b[0]), .Z(N22) );
  AN2D0BWP12T30P140 U192 ( .A1(mul_en_in), .A2(mul_b[6]), .Z(N28) );
  AN2D0BWP12T30P140 U193 ( .A1(mul_en_in), .A2(mul_b[7]), .Z(N29) );
  NR2D0BWP12T30P140 U194 ( .A1(n168), .A2(n136), .ZN(N168) );
  AN2D0BWP12T30P140 U195 ( .A1(mul_en_in), .A2(mul_b[1]), .Z(N23) );
  INVD0BWP12T30P140 U196 ( .I(a_r[6]), .ZN(n119) );
  INVD0BWP12T30P140 U197 ( .I(a_r[5]), .ZN(n126) );
  NR4D0BWP12T30P140 U198 ( .A1(n72), .A2(n119), .A3(n79), .A4(n126), .ZN(n56)
         );
  INVD0BWP12T30P140 U199 ( .I(n56), .ZN(n94) );
  NR2D0BWP12T30P140 U200 ( .A1(n72), .A2(n119), .ZN(n54) );
  INVD0BWP12T30P140 U201 ( .I(a_r[7]), .ZN(n112) );
  NR2D0BWP12T30P140 U202 ( .A1(n112), .A2(n79), .ZN(n53) );
  ND4D0BWP12T30P140 U203 ( .A1(a_r[7]), .A2(b_r[3]), .A3(a_r[6]), .A4(b_r[2]), 
        .ZN(n93) );
  OAI21D0BWP12T30P140 U204 ( .A1(n54), .A2(n53), .B(n93), .ZN(n55) );
  MUX2ND0BWP12T30P140 U205 ( .I0(n56), .I1(n94), .S(n55), .ZN(n105) );
  ND2D0BWP12T30P140 U206 ( .A1(a_r[6]), .A2(b_r[2]), .ZN(n58) );
  ND2D0BWP12T30P140 U207 ( .A1(b_r[3]), .A2(a_r[5]), .ZN(n57) );
  AOI21D0BWP12T30P140 U208 ( .A1(n58), .A2(n57), .B(n56), .ZN(n61) );
  NR2D0BWP12T30P140 U209 ( .A1(n112), .A2(n71), .ZN(n60) );
  NR2D0BWP12T30P140 U210 ( .A1(n112), .A2(n167), .ZN(n64) );
  NR2D0BWP12T30P140 U211 ( .A1(n119), .A2(n71), .ZN(n63) );
  NR2D0BWP12T30P140 U212 ( .A1(n72), .A2(n135), .ZN(n62) );
  FA1D0BWP12T30P140 U213 ( .A(n61), .B(n60), .CI(n59), .CO(n104), .S(n166) );
  FA1D0BWP12T30P140 U214 ( .A(n64), .B(n63), .CI(n62), .CO(n59), .S(n67) );
  NR2D0BWP12T30P140 U215 ( .A1(n79), .A2(n126), .ZN(n66) );
  NR2D0BWP12T30P140 U216 ( .A1(n119), .A2(n167), .ZN(n70) );
  NR2D0BWP12T30P140 U217 ( .A1(n126), .A2(n71), .ZN(n69) );
  NR2D0BWP12T30P140 U218 ( .A1(n72), .A2(n137), .ZN(n68) );
  FA1D0BWP12T30P140 U219 ( .A(n67), .B(n66), .CI(n65), .CO(n165), .S(n171) );
  FA1D0BWP12T30P140 U220 ( .A(n70), .B(n69), .CI(n68), .CO(n65), .S(n75) );
  NR2D0BWP12T30P140 U221 ( .A1(n79), .A2(n135), .ZN(n74) );
  NR2D0BWP12T30P140 U222 ( .A1(n126), .A2(n167), .ZN(n78) );
  NR2D0BWP12T30P140 U223 ( .A1(n71), .A2(n135), .ZN(n77) );
  NR2D0BWP12T30P140 U224 ( .A1(n72), .A2(n127), .ZN(n76) );
  FA1D0BWP12T30P140 U225 ( .A(n75), .B(n74), .CI(n73), .CO(n170), .S(n220) );
  FA1D0BWP12T30P140 U226 ( .A(n78), .B(n77), .CI(n76), .CO(n73), .S(n85) );
  NR2D0BWP12T30P140 U227 ( .A1(n79), .A2(n137), .ZN(n84) );
  FA1D0BWP12T30P140 U228 ( .A(n82), .B(n81), .CI(n80), .CO(n83), .S(n45) );
  FA1D0BWP12T30P140 U229 ( .A(n85), .B(n84), .CI(n83), .CO(n219), .S(n86) );
  INVD0BWP12T30P140 U230 ( .I(n86), .ZN(n216) );
  OR2D0BWP12T30P140 U231 ( .A1(n88), .A2(n87), .Z(n215) );
  FA1D0BWP12T30P140 U232 ( .A(n91), .B(n90), .CI(n89), .CO(n214), .S(n46) );
  INVD0BWP12T30P140 U233 ( .I(n92), .ZN(n218) );
  ND2D0BWP12T30P140 U234 ( .A1(n94), .A2(n93), .ZN(n97) );
  NR2D0BWP12T30P140 U235 ( .A1(n98), .A2(n97), .ZN(n96) );
  ND2D0BWP12T30P140 U236 ( .A1(a_r[7]), .A2(b_r[3]), .ZN(n100) );
  NR2D0BWP12T30P140 U237 ( .A1(n96), .A2(n100), .ZN(N98) );
  AN2D0BWP12T30P140 U238 ( .A1(mul_en_in), .A2(mul_b[3]), .Z(N25) );
  AN2D0BWP12T30P140 U239 ( .A1(pipe[32]), .A2(pipe[44]), .Z(n230) );
  ND2D0BWP12T30P140 U240 ( .A1(n222), .A2(pipe[40]), .ZN(n221) );
  INVD0BWP12T30P140 U241 ( .I(pipe[41]), .ZN(n95) );
  NR2D0BWP12T30P140 U242 ( .A1(n95), .A2(n221), .ZN(n102) );
  AOI21D0BWP12T30P140 U243 ( .A1(n221), .A2(n95), .B(n102), .ZN(N193) );
  AOI21D0BWP12T30P140 U244 ( .A1(n98), .A2(n97), .B(n96), .ZN(n101) );
  ND2D0BWP12T30P140 U245 ( .A1(n101), .A2(n100), .ZN(n99) );
  OAI21D0BWP12T30P140 U246 ( .A1(n101), .A2(n100), .B(n99), .ZN(N97) );
  AN2D0BWP12T30P140 U247 ( .A1(mul_en_in), .A2(mul_a[6]), .Z(N20) );
  ND2D0BWP12T30P140 U248 ( .A1(n102), .A2(pipe[42]), .ZN(n229) );
  OA21D0BWP12T30P140 U249 ( .A1(n102), .A2(pipe[42]), .B(n229), .Z(N194) );
  FA1D0BWP12T30P140 U250 ( .A(n105), .B(n104), .CI(n103), .CO(n98), .S(N96) );
  INVD0BWP12T30P140 U251 ( .I(b_r[7]), .ZN(n140) );
  NR4D0BWP12T30P140 U252 ( .A1(n119), .A2(n126), .A3(n140), .A4(n134), .ZN(
        n109) );
  INVD0BWP12T30P140 U253 ( .I(n109), .ZN(n163) );
  NR2D0BWP12T30P140 U254 ( .A1(n119), .A2(n140), .ZN(n107) );
  NR2D0BWP12T30P140 U255 ( .A1(n112), .A2(n134), .ZN(n106) );
  ND4D0BWP12T30P140 U256 ( .A1(a_r[7]), .A2(a_r[6]), .A3(b_r[7]), .A4(b_r[6]), 
        .ZN(n162) );
  OAI21D0BWP12T30P140 U257 ( .A1(n107), .A2(n106), .B(n162), .ZN(n108) );
  MUX2ND0BWP12T30P140 U258 ( .I0(n109), .I1(n163), .S(n108), .ZN(n192) );
  ND2D0BWP12T30P140 U259 ( .A1(a_r[6]), .A2(b_r[6]), .ZN(n111) );
  ND2D0BWP12T30P140 U260 ( .A1(a_r[5]), .A2(b_r[7]), .ZN(n110) );
  AOI21D0BWP12T30P140 U261 ( .A1(n111), .A2(n110), .B(n109), .ZN(n115) );
  NR2D0BWP12T30P140 U262 ( .A1(n112), .A2(n138), .ZN(n114) );
  NR2D0BWP12T30P140 U263 ( .A1(n112), .A2(n136), .ZN(n118) );
  NR2D0BWP12T30P140 U264 ( .A1(n119), .A2(n138), .ZN(n117) );
  NR2D0BWP12T30P140 U265 ( .A1(n140), .A2(n135), .ZN(n116) );
  FA1D0BWP12T30P140 U266 ( .A(n115), .B(n114), .CI(n113), .CO(n191), .S(n199)
         );
  FA1D0BWP12T30P140 U267 ( .A(n118), .B(n117), .CI(n116), .CO(n113), .S(n122)
         );
  NR2D0BWP12T30P140 U268 ( .A1(n126), .A2(n134), .ZN(n121) );
  NR2D0BWP12T30P140 U269 ( .A1(n119), .A2(n136), .ZN(n125) );
  NR2D0BWP12T30P140 U270 ( .A1(n126), .A2(n138), .ZN(n124) );
  NR2D0BWP12T30P140 U271 ( .A1(n140), .A2(n137), .ZN(n123) );
  FA1D0BWP12T30P140 U272 ( .A(n122), .B(n121), .CI(n120), .CO(n198), .S(n202)
         );
  FA1D0BWP12T30P140 U273 ( .A(n125), .B(n124), .CI(n123), .CO(n120), .S(n130)
         );
  NR2D0BWP12T30P140 U274 ( .A1(n134), .A2(n135), .ZN(n129) );
  NR2D0BWP12T30P140 U275 ( .A1(n126), .A2(n136), .ZN(n133) );
  NR2D0BWP12T30P140 U276 ( .A1(n138), .A2(n135), .ZN(n132) );
  NR2D0BWP12T30P140 U277 ( .A1(n140), .A2(n127), .ZN(n131) );
  FA1D0BWP12T30P140 U278 ( .A(n130), .B(n129), .CI(n128), .CO(n201), .S(n205)
         );
  FA1D0BWP12T30P140 U279 ( .A(n133), .B(n132), .CI(n131), .CO(n128), .S(n143)
         );
  NR2D0BWP12T30P140 U280 ( .A1(n134), .A2(n137), .ZN(n142) );
  NR2D0BWP12T30P140 U281 ( .A1(n136), .A2(n135), .ZN(n159) );
  NR2D0BWP12T30P140 U282 ( .A1(n138), .A2(n137), .ZN(n158) );
  NR2D0BWP12T30P140 U283 ( .A1(n140), .A2(n139), .ZN(n157) );
  FA1D0BWP12T30P140 U284 ( .A(n143), .B(n142), .CI(n141), .CO(n204), .S(n144)
         );
  INVD0BWP12T30P140 U285 ( .I(n144), .ZN(n212) );
  FA1D0BWP12T30P140 U286 ( .A(n147), .B(n146), .CI(n145), .CO(n150), .S(n47)
         );
  NR2D0BWP12T30P140 U287 ( .A1(n149), .A2(n150), .ZN(n148) );
  ND2D0BWP12T30P140 U288 ( .A1(b_r[6]), .A2(a_r[2]), .ZN(n152) );
  OR2D0BWP12T30P140 U289 ( .A1(n148), .A2(n152), .Z(n211) );
  INVD0BWP12T30P140 U290 ( .I(n152), .ZN(n153) );
  AOI21D0BWP12T30P140 U291 ( .A1(n150), .A2(n149), .B(n148), .ZN(n151) );
  MUX2ND0BWP12T30P140 U292 ( .I0(n153), .I1(n152), .S(n151), .ZN(n176) );
  FA1D0BWP12T30P140 U293 ( .A(n156), .B(n155), .CI(n154), .CO(n175), .S(n52)
         );
  FA1D0BWP12T30P140 U294 ( .A(n159), .B(n158), .CI(n157), .CO(n141), .S(n160)
         );
  INVD0BWP12T30P140 U295 ( .I(n160), .ZN(n174) );
  INVD0BWP12T30P140 U296 ( .I(n161), .ZN(n203) );
  ND2D0BWP12T30P140 U297 ( .A1(n163), .A2(n162), .ZN(n185) );
  NR2D0BWP12T30P140 U298 ( .A1(n186), .A2(n185), .ZN(n184) );
  ND2D0BWP12T30P140 U299 ( .A1(a_r[7]), .A2(b_r[7]), .ZN(n188) );
  NR2D0BWP12T30P140 U300 ( .A1(n184), .A2(n188), .ZN(N179) );
  FA1D0BWP12T30P140 U301 ( .A(n166), .B(n165), .CI(n164), .CO(n103), .S(N95)
         );
  NR2D0BWP12T30P140 U302 ( .A1(n168), .A2(n167), .ZN(N87) );
  FA1D0BWP12T30P140 U303 ( .A(n171), .B(n170), .CI(n169), .CO(n164), .S(N94)
         );
  AN2D0BWP12T30P140 U304 ( .A1(mul_en_in), .A2(mul_a[5]), .Z(N19) );
  ND2D0BWP12T30P140 U305 ( .A1(b_r[1]), .A2(a_r[0]), .ZN(n173) );
  ND2D0BWP12T30P140 U306 ( .A1(b_r[0]), .A2(a_r[1]), .ZN(n172) );
  AOI21D0BWP12T30P140 U307 ( .A1(n173), .A2(n172), .B(n181), .ZN(N88) );
  FA1D0BWP12T30P140 U308 ( .A(n176), .B(n175), .CI(n174), .CO(n210), .S(n177)
         );
  INVD0BWP12T30P140 U309 ( .I(n177), .ZN(N172) );
  ND2D0BWP12T30P140 U310 ( .A1(b_r[1]), .A2(a_r[1]), .ZN(n179) );
  OAI21D0BWP12T30P140 U311 ( .A1(n181), .A2(n179), .B(n180), .ZN(n178) );
  OAI31D0BWP12T30P140 U312 ( .A1(n181), .A2(n180), .A3(n179), .B(n178), .ZN(
        N89) );
  ND2D0BWP12T30P140 U313 ( .A1(a_r[0]), .A2(b_r[5]), .ZN(n183) );
  AOI21D0BWP12T30P140 U314 ( .A1(n183), .A2(n182), .B(n209), .ZN(N169) );
  AOI21D0BWP12T30P140 U315 ( .A1(n186), .A2(n185), .B(n184), .ZN(n189) );
  ND2D0BWP12T30P140 U316 ( .A1(n189), .A2(n188), .ZN(n187) );
  OAI21D0BWP12T30P140 U317 ( .A1(n189), .A2(n188), .B(n187), .ZN(N178) );
  FA1D0BWP12T30P140 U318 ( .A(n192), .B(n191), .CI(n190), .CO(n186), .S(N177)
         );
  FA1D0BWP12T30P140 U319 ( .A(n195), .B(n194), .CI(n193), .CO(n90), .S(n196)
         );
  INVD0BWP12T30P140 U320 ( .I(n196), .ZN(N90) );
  FA1D0BWP12T30P140 U321 ( .A(n199), .B(n198), .CI(n197), .CO(n190), .S(N176)
         );
  AN2D0BWP12T30P140 U322 ( .A1(mul_en_in), .A2(mul_a[7]), .Z(N21) );
  FA1D0BWP12T30P140 U323 ( .A(n202), .B(n201), .CI(n200), .CO(n197), .S(N175)
         );
  FA1D0BWP12T30P140 U324 ( .A(n205), .B(n204), .CI(n203), .CO(n200), .S(N174)
         );
  ND2D0BWP12T30P140 U325 ( .A1(b_r[5]), .A2(a_r[1]), .ZN(n207) );
  OAI21D0BWP12T30P140 U326 ( .A1(n209), .A2(n207), .B(n208), .ZN(n206) );
  OAI31D0BWP12T30P140 U327 ( .A1(n209), .A2(n208), .A3(n207), .B(n206), .ZN(
        N170) );
  FA1D0BWP12T30P140 U328 ( .A(n212), .B(n211), .CI(n210), .CO(n161), .S(n213)
         );
  INVD0BWP12T30P140 U329 ( .I(n213), .ZN(N173) );
  FA1D0BWP12T30P140 U330 ( .A(n216), .B(n215), .CI(n214), .CO(n92), .S(n217)
         );
  INVD0BWP12T30P140 U331 ( .I(n217), .ZN(N92) );
  AN2D0BWP12T30P140 U332 ( .A1(mul_en_in), .A2(mul_b[4]), .Z(N26) );
  FA1D0BWP12T30P140 U333 ( .A(n220), .B(n219), .CI(n218), .CO(n169), .S(N93)
         );
  OA21D0BWP12T30P140 U334 ( .A1(n222), .A2(pipe[40]), .B(n221), .Z(N192) );
  FA1D0BWP12T30P140 U335 ( .A(pipe[39]), .B(pipe[51]), .CI(n223), .CO(n222), 
        .S(N191) );
  FA1D0BWP12T30P140 U336 ( .A(pipe[38]), .B(pipe[50]), .CI(n224), .CO(n223), 
        .S(N190) );
  FA1D0BWP12T30P140 U337 ( .A(pipe[37]), .B(pipe[49]), .CI(n225), .CO(n224), 
        .S(N189) );
  FA1D0BWP12T30P140 U338 ( .A(pipe[36]), .B(pipe[48]), .CI(n226), .CO(n225), 
        .S(N188) );
  FA1D0BWP12T30P140 U339 ( .A(pipe[35]), .B(pipe[47]), .CI(n227), .CO(n226), 
        .S(N187) );
  FA1D0BWP12T30P140 U340 ( .A(pipe[34]), .B(pipe[46]), .CI(n228), .CO(n227), 
        .S(N186) );
  FA1D0BWP12T30P140 U341 ( .A(pipe[33]), .B(pipe[45]), .CI(n230), .CO(n228), 
        .S(N185) );
  CKBD0BWP12T30P140 U342 ( .I(clk), .Z(n235) );
  CKBD0BWP12T30P140 U343 ( .I(clk), .Z(n234) );
  CKBD0BWP12T30P140 U344 ( .I(clk), .Z(n236) );
  CKBD0BWP12T30P140 U345 ( .I(rst_n), .Z(n232) );
  CKBD0BWP12T30P140 U346 ( .I(rst_n), .Z(n233) );
  CKBD0BWP12T30P140 U347 ( .I(rst_n), .Z(n231) );
  AN2D0BWP12T30P140 U348 ( .A1(mul_en_out), .A2(pipe[15]), .Z(mul_out[15]) );
  AN2D0BWP12T30P140 U349 ( .A1(mul_en_out), .A2(pipe[1]), .Z(mul_out[1]) );
  AN2D0BWP12T30P140 U350 ( .A1(mul_en_out), .A2(pipe[0]), .Z(mul_out[0]) );
  AN2D0BWP12T30P140 U351 ( .A1(mul_en_out), .A2(pipe[3]), .Z(mul_out[3]) );
  AN2D0BWP12T30P140 U352 ( .A1(mul_en_out), .A2(pipe[2]), .Z(mul_out[2]) );
  AN2D0BWP12T30P140 U353 ( .A1(mul_en_out), .A2(pipe[5]), .Z(mul_out[5]) );
  AN2D0BWP12T30P140 U354 ( .A1(mul_en_out), .A2(pipe[6]), .Z(mul_out[6]) );
  AN2D0BWP12T30P140 U355 ( .A1(mul_en_out), .A2(pipe[7]), .Z(mul_out[7]) );
  AN2D0BWP12T30P140 U356 ( .A1(mul_en_out), .A2(pipe[8]), .Z(mul_out[8]) );
  AN2D0BWP12T30P140 U357 ( .A1(mul_en_out), .A2(pipe[9]), .Z(mul_out[9]) );
  AN2D0BWP12T30P140 U358 ( .A1(mul_en_out), .A2(pipe[10]), .Z(mul_out[10]) );
  AN2D0BWP12T30P140 U359 ( .A1(mul_en_out), .A2(pipe[11]), .Z(mul_out[11]) );
  AN2D0BWP12T30P140 U360 ( .A1(mul_en_out), .A2(pipe[12]), .Z(mul_out[12]) );
  AN2D0BWP12T30P140 U361 ( .A1(mul_en_out), .A2(pipe[13]), .Z(mul_out[13]) );
  AN2D0BWP12T30P140 U362 ( .A1(mul_en_out), .A2(pipe[14]), .Z(mul_out[14]) );
  AN2D0BWP12T30P140 U363 ( .A1(mul_en_out), .A2(pipe[4]), .Z(mul_out[4]) );
  XNR2D0BWP12T30P140 U364 ( .A1(pipe[43]), .A2(n229), .ZN(N195) );
  IAO21D0BWP12T30P140 U365 ( .A1(pipe[32]), .A2(pipe[44]), .B(n230), .ZN(N184)
         );
endmodule

