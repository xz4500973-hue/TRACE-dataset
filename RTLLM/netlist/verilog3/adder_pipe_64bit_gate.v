/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:14:25 2026
/////////////////////////////////////////////////////////////


module adder_pipe_64bit ( clk, rst_n, i_en, adda, addb, result, o_en );
  input [63:0] adda;
  input [63:0] addb;
  output [64:0] result;
  input clk, rst_n, i_en;
  output o_en;
  wire   en0, en1, en2, c2, c1, c0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
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
         n207;

  DFCNQD1BWP12T30P140 o_en_reg ( .D(en2), .CP(clk), .CDN(n204), .Q(o_en) );
  DFCNQD1BWP12T30P140 sum3_reg_0_ ( .D(n68), .CP(clk), .CDN(n203), .Q(
        result[48]) );
  DFCNQD1BWP12T30P140 sum3_reg_16_ ( .D(n67), .CP(clk), .CDN(n202), .Q(
        result[64]) );
  DFCNQD1BWP12T30P140 sum3_reg_15_ ( .D(n66), .CP(clk), .CDN(n204), .Q(
        result[63]) );
  DFCNQD1BWP12T30P140 sum3_reg_14_ ( .D(n65), .CP(clk), .CDN(rst_n), .Q(
        result[62]) );
  DFCNQD1BWP12T30P140 sum3_reg_13_ ( .D(n64), .CP(clk), .CDN(rst_n), .Q(
        result[61]) );
  DFCNQD1BWP12T30P140 sum3_reg_12_ ( .D(n63), .CP(clk), .CDN(n203), .Q(
        result[60]) );
  DFCNQD1BWP12T30P140 sum3_reg_11_ ( .D(n62), .CP(clk), .CDN(n202), .Q(
        result[59]) );
  DFCNQD1BWP12T30P140 sum3_reg_10_ ( .D(n61), .CP(clk), .CDN(n204), .Q(
        result[58]) );
  DFCNQD1BWP12T30P140 sum0_reg_0_ ( .D(n33), .CP(n207), .CDN(rst_n), .Q(
        result[0]) );
  DFCNQD1BWP12T30P140 sum3_reg_9_ ( .D(n60), .CP(clk), .CDN(n203), .Q(
        result[57]) );
  DFCNQD1BWP12T30P140 sum3_reg_8_ ( .D(n59), .CP(n205), .CDN(n202), .Q(
        result[56]) );
  DFCNQD1BWP12T30P140 sum3_reg_7_ ( .D(n58), .CP(n206), .CDN(n204), .Q(
        result[55]) );
  DFCNQD1BWP12T30P140 sum3_reg_6_ ( .D(n57), .CP(n207), .CDN(rst_n), .Q(
        result[54]) );
  DFCNQD1BWP12T30P140 sum3_reg_5_ ( .D(n56), .CP(n205), .CDN(n203), .Q(
        result[53]) );
  DFCNQD1BWP12T30P140 sum3_reg_4_ ( .D(n55), .CP(n205), .CDN(n202), .Q(
        result[52]) );
  DFCNQD1BWP12T30P140 sum3_reg_3_ ( .D(n54), .CP(n206), .CDN(n204), .Q(
        result[51]) );
  DFCNQD1BWP12T30P140 sum3_reg_2_ ( .D(n53), .CP(n207), .CDN(rst_n), .Q(
        result[50]) );
  DFCNQD1BWP12T30P140 sum3_reg_1_ ( .D(n52), .CP(n206), .CDN(n203), .Q(
        result[49]) );
  DFCNQD1BWP12T30P140 sum0_reg_15_ ( .D(n48), .CP(n207), .CDN(rst_n), .Q(
        result[15]) );
  DFCNQD1BWP12T30P140 sum0_reg_14_ ( .D(n47), .CP(n207), .CDN(n202), .Q(
        result[14]) );
  DFCNQD1BWP12T30P140 sum0_reg_13_ ( .D(n46), .CP(n207), .CDN(n202), .Q(
        result[13]) );
  DFCNQD1BWP12T30P140 sum0_reg_12_ ( .D(n45), .CP(n207), .CDN(n202), .Q(
        result[12]) );
  DFCNQD1BWP12T30P140 sum0_reg_11_ ( .D(n44), .CP(n207), .CDN(n202), .Q(
        result[11]) );
  DFCNQD1BWP12T30P140 sum0_reg_10_ ( .D(n43), .CP(n207), .CDN(n202), .Q(
        result[10]) );
  DFCNQD1BWP12T30P140 sum0_reg_9_ ( .D(n42), .CP(n207), .CDN(n202), .Q(
        result[9]) );
  DFCNQD1BWP12T30P140 sum0_reg_8_ ( .D(n41), .CP(n207), .CDN(n202), .Q(
        result[8]) );
  DFCNQD1BWP12T30P140 sum0_reg_7_ ( .D(n40), .CP(n207), .CDN(n202), .Q(
        result[7]) );
  DFCNQD1BWP12T30P140 sum0_reg_6_ ( .D(n39), .CP(n207), .CDN(n202), .Q(
        result[6]) );
  DFCNQD1BWP12T30P140 sum0_reg_5_ ( .D(n38), .CP(n207), .CDN(n202), .Q(
        result[5]) );
  DFCNQD1BWP12T30P140 sum0_reg_4_ ( .D(n37), .CP(n207), .CDN(n202), .Q(
        result[4]) );
  DFCNQD1BWP12T30P140 sum0_reg_3_ ( .D(n36), .CP(n206), .CDN(n202), .Q(
        result[3]) );
  DFCNQD1BWP12T30P140 sum0_reg_2_ ( .D(n35), .CP(n206), .CDN(n202), .Q(
        result[2]) );
  DFCNQD1BWP12T30P140 sum0_reg_1_ ( .D(n34), .CP(n206), .CDN(n203), .Q(
        result[1]) );
  DFCNQD1BWP12T30P140 sum1_reg_15_ ( .D(n32), .CP(n206), .CDN(n203), .Q(
        result[31]) );
  DFCNQD1BWP12T30P140 sum1_reg_14_ ( .D(n31), .CP(n206), .CDN(n203), .Q(
        result[30]) );
  DFCNQD1BWP12T30P140 sum1_reg_13_ ( .D(n30), .CP(n206), .CDN(n203), .Q(
        result[29]) );
  DFCNQD1BWP12T30P140 sum1_reg_12_ ( .D(n29), .CP(n206), .CDN(n203), .Q(
        result[28]) );
  DFCNQD1BWP12T30P140 sum1_reg_11_ ( .D(n28), .CP(n206), .CDN(n203), .Q(
        result[27]) );
  DFCNQD1BWP12T30P140 sum1_reg_10_ ( .D(n27), .CP(n206), .CDN(n203), .Q(
        result[26]) );
  DFCNQD1BWP12T30P140 sum1_reg_9_ ( .D(n26), .CP(n206), .CDN(n203), .Q(
        result[25]) );
  DFCNQD1BWP12T30P140 sum1_reg_8_ ( .D(n25), .CP(n206), .CDN(n203), .Q(
        result[24]) );
  DFCNQD1BWP12T30P140 sum1_reg_7_ ( .D(n24), .CP(n206), .CDN(n203), .Q(
        result[23]) );
  DFCNQD1BWP12T30P140 sum1_reg_6_ ( .D(n23), .CP(n205), .CDN(n203), .Q(
        result[22]) );
  DFCNQD1BWP12T30P140 sum1_reg_5_ ( .D(n22), .CP(n205), .CDN(n203), .Q(
        result[21]) );
  DFCNQD1BWP12T30P140 sum1_reg_4_ ( .D(n21), .CP(n205), .CDN(n203), .Q(
        result[20]) );
  DFCNQD1BWP12T30P140 sum1_reg_3_ ( .D(n20), .CP(n205), .CDN(n204), .Q(
        result[19]) );
  DFCNQD1BWP12T30P140 sum1_reg_2_ ( .D(n19), .CP(n205), .CDN(n204), .Q(
        result[18]) );
  DFCNQD1BWP12T30P140 sum1_reg_1_ ( .D(n18), .CP(n205), .CDN(n204), .Q(
        result[17]) );
  DFCNQD1BWP12T30P140 sum1_reg_0_ ( .D(n17), .CP(n205), .CDN(n204), .Q(
        result[16]) );
  DFCNQD1BWP12T30P140 sum2_reg_15_ ( .D(n16), .CP(n205), .CDN(n204), .Q(
        result[47]) );
  DFCNQD1BWP12T30P140 sum2_reg_14_ ( .D(n15), .CP(n205), .CDN(n204), .Q(
        result[46]) );
  DFCNQD1BWP12T30P140 sum2_reg_13_ ( .D(n14), .CP(n205), .CDN(n204), .Q(
        result[45]) );
  DFCNQD1BWP12T30P140 sum2_reg_12_ ( .D(n13), .CP(n205), .CDN(n204), .Q(
        result[44]) );
  DFCNQD1BWP12T30P140 sum2_reg_11_ ( .D(n12), .CP(n205), .CDN(n204), .Q(
        result[43]) );
  DFCNQD1BWP12T30P140 sum2_reg_10_ ( .D(n11), .CP(clk), .CDN(n204), .Q(
        result[42]) );
  DFCNQD1BWP12T30P140 sum2_reg_9_ ( .D(n10), .CP(n205), .CDN(n204), .Q(
        result[41]) );
  DFCNQD1BWP12T30P140 sum2_reg_8_ ( .D(n9), .CP(n206), .CDN(n204), .Q(
        result[40]) );
  DFCNQD1BWP12T30P140 sum2_reg_7_ ( .D(n8), .CP(n207), .CDN(n204), .Q(
        result[39]) );
  DFCNQD1BWP12T30P140 sum2_reg_6_ ( .D(n7), .CP(clk), .CDN(rst_n), .Q(
        result[38]) );
  DFCNQD1BWP12T30P140 sum2_reg_5_ ( .D(n6), .CP(n205), .CDN(rst_n), .Q(
        result[37]) );
  DFCNQD1BWP12T30P140 sum2_reg_4_ ( .D(n5), .CP(n206), .CDN(rst_n), .Q(
        result[36]) );
  DFCNQD1BWP12T30P140 sum2_reg_3_ ( .D(n4), .CP(n207), .CDN(rst_n), .Q(
        result[35]) );
  DFCNQD1BWP12T30P140 sum2_reg_2_ ( .D(n3), .CP(n205), .CDN(rst_n), .Q(
        result[34]) );
  DFCNQD1BWP12T30P140 sum2_reg_1_ ( .D(n2), .CP(n206), .CDN(rst_n), .Q(
        result[33]) );
  DFCNQD1BWP12T30P140 sum2_reg_0_ ( .D(n1), .CP(n207), .CDN(rst_n), .Q(
        result[32]) );
  DFCNQD1BWP12T30P140 c2_reg ( .D(n51), .CP(n205), .CDN(n202), .Q(c2) );
  DFCNQD1BWP12T30P140 c1_reg ( .D(n50), .CP(n206), .CDN(n204), .Q(c1) );
  DFCNQD1BWP12T30P140 c0_reg ( .D(n49), .CP(n207), .CDN(rst_n), .Q(c0) );
  DFCNQD1BWP12T30P140 en0_reg ( .D(i_en), .CP(clk), .CDN(rst_n), .Q(en0) );
  DFCNQD1BWP12T30P140 en1_reg ( .D(en0), .CP(clk), .CDN(rst_n), .Q(en1) );
  DFCNQD1BWP12T30P140 en2_reg ( .D(en1), .CP(clk), .CDN(rst_n), .Q(en2) );
  CKMUX2D0BWP12T30P140 U72 ( .I0(result[48]), .I1(n70), .S(en2), .Z(n68) );
  FA1D0BWP12T30P140 U73 ( .A(c2), .B(addb[48]), .CI(adda[48]), .CO(n147), .S(
        n70) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(result[64]), .I1(n71), .S(en2), .Z(n67) );
  FA1D0BWP12T30P140 U75 ( .A(addb[63]), .B(adda[63]), .CI(n72), .CO(n71), .S(
        n73) );
  CKMUX2D0BWP12T30P140 U76 ( .I0(result[63]), .I1(n73), .S(en2), .Z(n66) );
  FA1D0BWP12T30P140 U77 ( .A(addb[62]), .B(adda[62]), .CI(n74), .CO(n72), .S(
        n75) );
  CKMUX2D0BWP12T30P140 U78 ( .I0(result[62]), .I1(n75), .S(en2), .Z(n65) );
  FA1D0BWP12T30P140 U79 ( .A(addb[61]), .B(adda[61]), .CI(n76), .CO(n74), .S(
        n77) );
  CKMUX2D0BWP12T30P140 U80 ( .I0(result[61]), .I1(n77), .S(en2), .Z(n64) );
  ND2D0BWP12T30P140 U81 ( .A1(addb[0]), .A2(adda[0]), .ZN(n149) );
  INVD0BWP12T30P140 U82 ( .I(adda[1]), .ZN(n78) );
  INVD0BWP12T30P140 U83 ( .I(addb[1]), .ZN(n150) );
  MAOI222D0BWP12T30P140 U84 ( .A(n149), .B(n78), .C(n150), .ZN(n105) );
  CKMUX2D0BWP12T30P140 U85 ( .I0(c0), .I1(n79), .S(i_en), .Z(n49) );
  FA1D0BWP12T30P140 U86 ( .A(addb[60]), .B(adda[60]), .CI(n80), .CO(n76), .S(
        n81) );
  CKMUX2D0BWP12T30P140 U87 ( .I0(result[60]), .I1(n81), .S(en2), .Z(n63) );
  FA1D0BWP12T30P140 U88 ( .A(addb[59]), .B(adda[59]), .CI(n82), .CO(n80), .S(
        n83) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(result[59]), .I1(n83), .S(en2), .Z(n62) );
  CKMUX2D0BWP12T30P140 U90 ( .I0(c1), .I1(n84), .S(en0), .Z(n50) );
  FA1D0BWP12T30P140 U91 ( .A(addb[58]), .B(adda[58]), .CI(n85), .CO(n82), .S(
        n86) );
  CKMUX2D0BWP12T30P140 U92 ( .I0(result[58]), .I1(n86), .S(en2), .Z(n61) );
  INVD0BWP12T30P140 U93 ( .I(result[0]), .ZN(n88) );
  OAI211D0BWP12T30P140 U94 ( .A1(addb[0]), .A2(adda[0]), .B(i_en), .C(n149), 
        .ZN(n87) );
  OAI21D0BWP12T30P140 U95 ( .A1(i_en), .A2(n88), .B(n87), .ZN(n33) );
  CKMUX2D0BWP12T30P140 U96 ( .I0(c2), .I1(n89), .S(en1), .Z(n51) );
  FA1D0BWP12T30P140 U97 ( .A(adda[11]), .B(addb[11]), .CI(n90), .CO(n168), .S(
        n91) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(result[11]), .I1(n91), .S(i_en), .Z(n44) );
  FA1D0BWP12T30P140 U99 ( .A(c1), .B(addb[32]), .CI(adda[32]), .CO(n95), .S(
        n92) );
  CKMUX2D0BWP12T30P140 U100 ( .I0(result[32]), .I1(n92), .S(en1), .Z(n1) );
  FA1D0BWP12T30P140 U101 ( .A(addb[57]), .B(adda[57]), .CI(n93), .CO(n85), .S(
        n94) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(result[57]), .I1(n94), .S(en2), .Z(n60) );
  FA1D0BWP12T30P140 U103 ( .A(addb[33]), .B(adda[33]), .CI(n95), .CO(n99), .S(
        n96) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(result[33]), .I1(n96), .S(en1), .Z(n2) );
  FA1D0BWP12T30P140 U105 ( .A(addb[17]), .B(adda[17]), .CI(n97), .CO(n188), 
        .S(n98) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(result[17]), .I1(n98), .S(en0), .Z(n18) );
  FA1D0BWP12T30P140 U107 ( .A(addb[34]), .B(adda[34]), .CI(n99), .CO(n103), 
        .S(n100) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(result[34]), .I1(n100), .S(en1), .Z(n3) );
  FA1D0BWP12T30P140 U109 ( .A(addb[56]), .B(adda[56]), .CI(n101), .CO(n93), 
        .S(n102) );
  CKMUX2D0BWP12T30P140 U110 ( .I0(result[56]), .I1(n102), .S(en2), .Z(n59) );
  FA1D0BWP12T30P140 U111 ( .A(addb[35]), .B(adda[35]), .CI(n103), .CO(n107), 
        .S(n104) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(result[35]), .I1(n104), .S(en1), .Z(n4) );
  FA1D0BWP12T30P140 U113 ( .A(adda[2]), .B(addb[2]), .CI(n105), .CO(n137), .S(
        n106) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(result[2]), .I1(n106), .S(i_en), .Z(n35) );
  FA1D0BWP12T30P140 U115 ( .A(addb[36]), .B(adda[36]), .CI(n107), .CO(n111), 
        .S(n108) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(result[36]), .I1(n108), .S(en1), .Z(n5) );
  FA1D0BWP12T30P140 U117 ( .A(addb[55]), .B(adda[55]), .CI(n109), .CO(n101), 
        .S(n110) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(result[55]), .I1(n110), .S(en2), .Z(n58) );
  FA1D0BWP12T30P140 U119 ( .A(addb[37]), .B(adda[37]), .CI(n111), .CO(n115), 
        .S(n112) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(result[37]), .I1(n112), .S(en1), .Z(n6) );
  FA1D0BWP12T30P140 U121 ( .A(adda[7]), .B(addb[7]), .CI(n113), .CO(n176), .S(
        n114) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(result[7]), .I1(n114), .S(i_en), .Z(n40) );
  FA1D0BWP12T30P140 U123 ( .A(addb[38]), .B(adda[38]), .CI(n115), .CO(n121), 
        .S(n116) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(result[38]), .I1(n116), .S(en1), .Z(n7) );
  FA1D0BWP12T30P140 U125 ( .A(addb[54]), .B(adda[54]), .CI(n117), .CO(n109), 
        .S(n118) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(result[54]), .I1(n118), .S(en2), .Z(n57) );
  FA1D0BWP12T30P140 U127 ( .A(adda[6]), .B(addb[6]), .CI(n119), .CO(n113), .S(
        n120) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(result[6]), .I1(n120), .S(i_en), .Z(n39) );
  FA1D0BWP12T30P140 U129 ( .A(addb[39]), .B(adda[39]), .CI(n121), .CO(n127), 
        .S(n122) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(result[39]), .I1(n122), .S(en1), .Z(n8) );
  FA1D0BWP12T30P140 U131 ( .A(addb[53]), .B(adda[53]), .CI(n123), .CO(n117), 
        .S(n124) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(result[53]), .I1(n124), .S(en2), .Z(n56) );
  FA1D0BWP12T30P140 U133 ( .A(adda[5]), .B(addb[5]), .CI(n125), .CO(n119), .S(
        n126) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(result[5]), .I1(n126), .S(i_en), .Z(n38) );
  FA1D0BWP12T30P140 U135 ( .A(addb[40]), .B(adda[40]), .CI(n127), .CO(n133), 
        .S(n128) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(result[40]), .I1(n128), .S(en1), .Z(n9) );
  FA1D0BWP12T30P140 U137 ( .A(addb[52]), .B(adda[52]), .CI(n129), .CO(n123), 
        .S(n130) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(result[52]), .I1(n130), .S(en2), .Z(n55) );
  FA1D0BWP12T30P140 U139 ( .A(adda[4]), .B(addb[4]), .CI(n131), .CO(n125), .S(
        n132) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(result[4]), .I1(n132), .S(i_en), .Z(n37) );
  FA1D0BWP12T30P140 U141 ( .A(addb[41]), .B(adda[41]), .CI(n133), .CO(n139), 
        .S(n134) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(result[41]), .I1(n134), .S(en1), .Z(n10) );
  FA1D0BWP12T30P140 U143 ( .A(addb[51]), .B(adda[51]), .CI(n135), .CO(n129), 
        .S(n136) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(result[51]), .I1(n136), .S(en2), .Z(n54) );
  FA1D0BWP12T30P140 U145 ( .A(adda[3]), .B(addb[3]), .CI(n137), .CO(n131), .S(
        n138) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(result[3]), .I1(n138), .S(i_en), .Z(n36) );
  FA1D0BWP12T30P140 U147 ( .A(addb[42]), .B(adda[42]), .CI(n139), .CO(n145), 
        .S(n140) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(result[42]), .I1(n140), .S(en1), .Z(n11) );
  FA1D0BWP12T30P140 U149 ( .A(addb[50]), .B(adda[50]), .CI(n141), .CO(n135), 
        .S(n142) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(result[50]), .I1(n142), .S(en2), .Z(n53) );
  FA1D0BWP12T30P140 U151 ( .A(addb[26]), .B(adda[26]), .CI(n143), .CO(n166), 
        .S(n144) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(result[26]), .I1(n144), .S(en0), .Z(n27) );
  FA1D0BWP12T30P140 U153 ( .A(addb[43]), .B(adda[43]), .CI(n145), .CO(n153), 
        .S(n146) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(result[43]), .I1(n146), .S(en1), .Z(n12) );
  FA1D0BWP12T30P140 U155 ( .A(addb[49]), .B(adda[49]), .CI(n147), .CO(n141), 
        .S(n148) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(result[49]), .I1(n148), .S(en2), .Z(n52) );
  MUX2ND0BWP12T30P140 U157 ( .I0(addb[1]), .I1(n150), .S(n149), .ZN(n151) );
  MAOI22D0BWP12T30P140 U158 ( .A1(adda[1]), .A2(n151), .B1(n151), .B2(adda[1]), 
        .ZN(n152) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(result[1]), .I1(n152), .S(i_en), .Z(n34) );
  FA1D0BWP12T30P140 U160 ( .A(addb[44]), .B(adda[44]), .CI(n153), .CO(n159), 
        .S(n154) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(result[44]), .I1(n154), .S(en1), .Z(n13) );
  FA1D0BWP12T30P140 U162 ( .A(adda[15]), .B(addb[15]), .CI(n155), .CO(n79), 
        .S(n156) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(result[15]), .I1(n156), .S(i_en), .Z(n48) );
  FA1D0BWP12T30P140 U164 ( .A(adda[14]), .B(addb[14]), .CI(n157), .CO(n155), 
        .S(n158) );
  CKMUX2D0BWP12T30P140 U165 ( .I0(result[14]), .I1(n158), .S(i_en), .Z(n47) );
  FA1D0BWP12T30P140 U166 ( .A(addb[45]), .B(adda[45]), .CI(n159), .CO(n164), 
        .S(n160) );
  CKMUX2D0BWP12T30P140 U167 ( .I0(result[45]), .I1(n160), .S(en1), .Z(n14) );
  FA1D0BWP12T30P140 U168 ( .A(c0), .B(addb[16]), .CI(adda[16]), .CO(n97), .S(
        n161) );
  CKMUX2D0BWP12T30P140 U169 ( .I0(result[16]), .I1(n161), .S(en0), .Z(n17) );
  FA1D0BWP12T30P140 U170 ( .A(adda[13]), .B(addb[13]), .CI(n162), .CO(n157), 
        .S(n163) );
  CKMUX2D0BWP12T30P140 U171 ( .I0(result[13]), .I1(n163), .S(i_en), .Z(n46) );
  FA1D0BWP12T30P140 U172 ( .A(addb[46]), .B(adda[46]), .CI(n164), .CO(n170), 
        .S(n165) );
  CKMUX2D0BWP12T30P140 U173 ( .I0(result[46]), .I1(n165), .S(en1), .Z(n15) );
  FA1D0BWP12T30P140 U174 ( .A(addb[27]), .B(adda[27]), .CI(n166), .CO(n172), 
        .S(n167) );
  CKMUX2D0BWP12T30P140 U175 ( .I0(result[27]), .I1(n167), .S(en0), .Z(n28) );
  FA1D0BWP12T30P140 U176 ( .A(adda[12]), .B(addb[12]), .CI(n168), .CO(n162), 
        .S(n169) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(result[12]), .I1(n169), .S(i_en), .Z(n45) );
  FA1D0BWP12T30P140 U178 ( .A(addb[47]), .B(adda[47]), .CI(n170), .CO(n89), 
        .S(n171) );
  CKMUX2D0BWP12T30P140 U179 ( .I0(result[47]), .I1(n171), .S(en1), .Z(n16) );
  FA1D0BWP12T30P140 U180 ( .A(addb[28]), .B(adda[28]), .CI(n172), .CO(n182), 
        .S(n173) );
  CKMUX2D0BWP12T30P140 U181 ( .I0(result[28]), .I1(n173), .S(en0), .Z(n29) );
  FA1D0BWP12T30P140 U182 ( .A(addb[22]), .B(adda[22]), .CI(n174), .CO(n194), 
        .S(n175) );
  CKMUX2D0BWP12T30P140 U183 ( .I0(result[22]), .I1(n175), .S(en0), .Z(n23) );
  FA1D0BWP12T30P140 U184 ( .A(adda[8]), .B(addb[8]), .CI(n176), .CO(n186), .S(
        n177) );
  CKMUX2D0BWP12T30P140 U185 ( .I0(result[8]), .I1(n177), .S(i_en), .Z(n41) );
  FA1D0BWP12T30P140 U186 ( .A(addb[19]), .B(adda[19]), .CI(n178), .CO(n184), 
        .S(n179) );
  CKMUX2D0BWP12T30P140 U187 ( .I0(result[19]), .I1(n179), .S(en0), .Z(n20) );
  FA1D0BWP12T30P140 U188 ( .A(adda[10]), .B(addb[10]), .CI(n180), .CO(n90), 
        .S(n181) );
  CKMUX2D0BWP12T30P140 U189 ( .I0(result[10]), .I1(n181), .S(i_en), .Z(n43) );
  FA1D0BWP12T30P140 U190 ( .A(addb[29]), .B(adda[29]), .CI(n182), .CO(n192), 
        .S(n183) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(result[29]), .I1(n183), .S(en0), .Z(n30) );
  FA1D0BWP12T30P140 U192 ( .A(addb[20]), .B(adda[20]), .CI(n184), .CO(n190), 
        .S(n185) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(result[20]), .I1(n185), .S(en0), .Z(n21) );
  FA1D0BWP12T30P140 U194 ( .A(adda[9]), .B(addb[9]), .CI(n186), .CO(n180), .S(
        n187) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(result[9]), .I1(n187), .S(i_en), .Z(n42) );
  FA1D0BWP12T30P140 U196 ( .A(addb[18]), .B(adda[18]), .CI(n188), .CO(n178), 
        .S(n189) );
  CKMUX2D0BWP12T30P140 U197 ( .I0(result[18]), .I1(n189), .S(en0), .Z(n19) );
  FA1D0BWP12T30P140 U198 ( .A(addb[21]), .B(adda[21]), .CI(n190), .CO(n174), 
        .S(n191) );
  CKMUX2D0BWP12T30P140 U199 ( .I0(result[21]), .I1(n191), .S(en0), .Z(n22) );
  FA1D0BWP12T30P140 U200 ( .A(addb[30]), .B(adda[30]), .CI(n192), .CO(n196), 
        .S(n193) );
  CKMUX2D0BWP12T30P140 U201 ( .I0(result[30]), .I1(n193), .S(en0), .Z(n31) );
  FA1D0BWP12T30P140 U202 ( .A(addb[23]), .B(adda[23]), .CI(n194), .CO(n200), 
        .S(n195) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(result[23]), .I1(n195), .S(en0), .Z(n24) );
  FA1D0BWP12T30P140 U204 ( .A(addb[31]), .B(adda[31]), .CI(n196), .CO(n84), 
        .S(n197) );
  CKMUX2D0BWP12T30P140 U205 ( .I0(result[31]), .I1(n197), .S(en0), .Z(n32) );
  FA1D0BWP12T30P140 U206 ( .A(addb[25]), .B(adda[25]), .CI(n198), .CO(n143), 
        .S(n199) );
  CKMUX2D0BWP12T30P140 U207 ( .I0(result[25]), .I1(n199), .S(en0), .Z(n26) );
  FA1D0BWP12T30P140 U208 ( .A(addb[24]), .B(adda[24]), .CI(n200), .CO(n198), 
        .S(n201) );
  CKMUX2D0BWP12T30P140 U209 ( .I0(result[24]), .I1(n201), .S(en0), .Z(n25) );
  CKBD0BWP12T30P140 U210 ( .I(clk), .Z(n207) );
  CKBD0BWP12T30P140 U211 ( .I(clk), .Z(n206) );
  CKBD0BWP12T30P140 U212 ( .I(clk), .Z(n205) );
  CKBD0BWP12T30P140 U213 ( .I(rst_n), .Z(n204) );
  CKBD0BWP12T30P140 U214 ( .I(rst_n), .Z(n202) );
  CKBD0BWP12T30P140 U215 ( .I(rst_n), .Z(n203) );
endmodule

