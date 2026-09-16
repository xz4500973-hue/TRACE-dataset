/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:59:44 2026
/////////////////////////////////////////////////////////////


module adder_pipe_64bit ( clk, rst_n, i_en, adda, addb, result, o_en );
  input [63:0] adda;
  input [63:0] addb;
  output [64:0] result;
  input clk, rst_n, i_en;
  output o_en;
  wire   en1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206;

  DFCNQD1BWP12T30P140 s_lo_reg_31_ ( .D(n65), .CP(clk), .CDN(rst_n), .Q(
        result[31]) );
  DFCNQD1BWP12T30P140 s_lo_reg_30_ ( .D(n64), .CP(clk), .CDN(rst_n), .Q(
        result[30]) );
  DFCNQD1BWP12T30P140 s_lo_reg_29_ ( .D(n63), .CP(clk), .CDN(rst_n), .Q(
        result[29]) );
  DFCNQD1BWP12T30P140 s_lo_reg_28_ ( .D(n62), .CP(clk), .CDN(rst_n), .Q(
        result[28]) );
  DFCNQD1BWP12T30P140 s_lo_reg_27_ ( .D(n61), .CP(clk), .CDN(rst_n), .Q(
        result[27]) );
  DFCNQD1BWP12T30P140 s_lo_reg_26_ ( .D(n60), .CP(clk), .CDN(rst_n), .Q(
        result[26]) );
  DFCNQD1BWP12T30P140 s_lo_reg_25_ ( .D(n59), .CP(clk), .CDN(rst_n), .Q(
        result[25]) );
  DFCNQD1BWP12T30P140 o_en_reg ( .D(en1), .CP(n204), .CDN(rst_n), .Q(o_en) );
  DFCNQD1BWP12T30P140 s_lo_reg_0_ ( .D(n34), .CP(n204), .CDN(n202), .Q(
        result[0]) );
  DFCNQD1BWP12T30P140 s_lo_reg_24_ ( .D(n58), .CP(n206), .CDN(rst_n), .Q(
        result[24]) );
  DFCNQD1BWP12T30P140 s_lo_reg_23_ ( .D(n57), .CP(n206), .CDN(rst_n), .Q(
        result[23]) );
  DFCNQD1BWP12T30P140 s_lo_reg_22_ ( .D(n56), .CP(n206), .CDN(rst_n), .Q(
        result[22]) );
  DFCNQD1BWP12T30P140 s_lo_reg_21_ ( .D(n55), .CP(n206), .CDN(rst_n), .Q(
        result[21]) );
  DFCNQD1BWP12T30P140 s_lo_reg_20_ ( .D(n54), .CP(n206), .CDN(rst_n), .Q(
        result[20]) );
  DFCNQD1BWP12T30P140 s_lo_reg_19_ ( .D(n53), .CP(n206), .CDN(n201), .Q(
        result[19]) );
  DFCNQD1BWP12T30P140 s_lo_reg_18_ ( .D(n52), .CP(n206), .CDN(n201), .Q(
        result[18]) );
  DFCNQD1BWP12T30P140 s_lo_reg_17_ ( .D(n51), .CP(n206), .CDN(n201), .Q(
        result[17]) );
  DFCNQD1BWP12T30P140 s_lo_reg_16_ ( .D(n50), .CP(n206), .CDN(n201), .Q(
        result[16]) );
  DFCNQD1BWP12T30P140 s_lo_reg_15_ ( .D(n49), .CP(n206), .CDN(n201), .Q(
        result[15]) );
  DFCNQD1BWP12T30P140 s_lo_reg_14_ ( .D(n48), .CP(n206), .CDN(n201), .Q(
        result[14]) );
  DFCNQD1BWP12T30P140 s_lo_reg_13_ ( .D(n47), .CP(n206), .CDN(n201), .Q(
        result[13]) );
  DFCNQD1BWP12T30P140 s_lo_reg_12_ ( .D(n46), .CP(n205), .CDN(n201), .Q(
        result[12]) );
  DFCNQD1BWP12T30P140 s_lo_reg_11_ ( .D(n45), .CP(n205), .CDN(n201), .Q(
        result[11]) );
  DFCNQD1BWP12T30P140 s_lo_reg_10_ ( .D(n44), .CP(n205), .CDN(n201), .Q(
        result[10]) );
  DFCNQD1BWP12T30P140 s_lo_reg_9_ ( .D(n43), .CP(n205), .CDN(n201), .Q(
        result[9]) );
  DFCNQD1BWP12T30P140 s_lo_reg_8_ ( .D(n42), .CP(n205), .CDN(n201), .Q(
        result[8]) );
  DFCNQD1BWP12T30P140 s_lo_reg_7_ ( .D(n41), .CP(n205), .CDN(n201), .Q(
        result[7]) );
  DFCNQD1BWP12T30P140 s_lo_reg_6_ ( .D(n40), .CP(n205), .CDN(n202), .Q(
        result[6]) );
  DFCNQD1BWP12T30P140 s_lo_reg_5_ ( .D(n39), .CP(n205), .CDN(n202), .Q(
        result[5]) );
  DFCNQD1BWP12T30P140 s_lo_reg_4_ ( .D(n38), .CP(n205), .CDN(n202), .Q(
        result[4]) );
  DFCNQD1BWP12T30P140 s_lo_reg_3_ ( .D(n37), .CP(n205), .CDN(n202), .Q(
        result[3]) );
  DFCNQD1BWP12T30P140 s_lo_reg_2_ ( .D(n36), .CP(n205), .CDN(n202), .Q(
        result[2]) );
  DFCNQD1BWP12T30P140 s_lo_reg_1_ ( .D(n35), .CP(n205), .CDN(n202), .Q(
        result[1]) );
  DFCNQD1BWP12T30P140 s_hi_reg_32_ ( .D(n33), .CP(n204), .CDN(n202), .Q(
        result[64]) );
  DFCNQD1BWP12T30P140 s_hi_reg_31_ ( .D(n32), .CP(n204), .CDN(n202), .Q(
        result[63]) );
  DFCNQD1BWP12T30P140 s_hi_reg_30_ ( .D(n31), .CP(n204), .CDN(n202), .Q(
        result[62]) );
  DFCNQD1BWP12T30P140 s_hi_reg_29_ ( .D(n30), .CP(n204), .CDN(n202), .Q(
        result[61]) );
  DFCNQD1BWP12T30P140 s_hi_reg_28_ ( .D(n29), .CP(n204), .CDN(n202), .Q(
        result[60]) );
  DFCNQD1BWP12T30P140 s_hi_reg_27_ ( .D(n28), .CP(n204), .CDN(n202), .Q(
        result[59]) );
  DFCNQD1BWP12T30P140 s_hi_reg_26_ ( .D(n27), .CP(n204), .CDN(n202), .Q(
        result[58]) );
  DFCNQD1BWP12T30P140 s_hi_reg_25_ ( .D(n26), .CP(n204), .CDN(n201), .Q(
        result[57]) );
  DFCNQD1BWP12T30P140 s_hi_reg_24_ ( .D(n25), .CP(n204), .CDN(n203), .Q(
        result[56]) );
  DFCNQD1BWP12T30P140 s_hi_reg_23_ ( .D(n24), .CP(n204), .CDN(n202), .Q(
        result[55]) );
  DFCNQD1BWP12T30P140 s_hi_reg_22_ ( .D(n23), .CP(n204), .CDN(n201), .Q(
        result[54]) );
  DFCNQD1BWP12T30P140 s_hi_reg_21_ ( .D(n22), .CP(n205), .CDN(rst_n), .Q(
        result[53]) );
  DFCNQD1BWP12T30P140 s_hi_reg_20_ ( .D(n21), .CP(clk), .CDN(n203), .Q(
        result[52]) );
  DFCNQD1BWP12T30P140 s_hi_reg_19_ ( .D(n20), .CP(n204), .CDN(n202), .Q(
        result[51]) );
  DFCNQD1BWP12T30P140 s_hi_reg_18_ ( .D(n19), .CP(n206), .CDN(n201), .Q(
        result[50]) );
  DFCNQD1BWP12T30P140 s_hi_reg_17_ ( .D(n18), .CP(n205), .CDN(n203), .Q(
        result[49]) );
  DFCNQD1BWP12T30P140 s_hi_reg_16_ ( .D(n17), .CP(clk), .CDN(n202), .Q(
        result[48]) );
  DFCNQD1BWP12T30P140 s_hi_reg_15_ ( .D(n16), .CP(n204), .CDN(n201), .Q(
        result[47]) );
  DFCNQD1BWP12T30P140 s_hi_reg_14_ ( .D(n15), .CP(n206), .CDN(n203), .Q(
        result[46]) );
  DFCNQD1BWP12T30P140 s_hi_reg_13_ ( .D(n14), .CP(n205), .CDN(n203), .Q(
        result[45]) );
  DFCNQD1BWP12T30P140 s_hi_reg_12_ ( .D(n13), .CP(clk), .CDN(n203), .Q(
        result[44]) );
  DFCNQD1BWP12T30P140 s_hi_reg_11_ ( .D(n12), .CP(clk), .CDN(n203), .Q(
        result[43]) );
  DFCNQD1BWP12T30P140 s_hi_reg_10_ ( .D(n11), .CP(clk), .CDN(n203), .Q(
        result[42]) );
  DFCNQD1BWP12T30P140 s_hi_reg_9_ ( .D(n10), .CP(n206), .CDN(n203), .Q(
        result[41]) );
  DFCNQD1BWP12T30P140 s_hi_reg_8_ ( .D(n9), .CP(n205), .CDN(n203), .Q(
        result[40]) );
  DFCNQD1BWP12T30P140 s_hi_reg_7_ ( .D(n8), .CP(clk), .CDN(n203), .Q(
        result[39]) );
  DFCNQD1BWP12T30P140 s_hi_reg_6_ ( .D(n7), .CP(n204), .CDN(n203), .Q(
        result[38]) );
  DFCNQD1BWP12T30P140 s_hi_reg_5_ ( .D(n6), .CP(n204), .CDN(n203), .Q(
        result[37]) );
  DFCNQD1BWP12T30P140 s_hi_reg_4_ ( .D(n5), .CP(n206), .CDN(n203), .Q(
        result[36]) );
  DFCNQD1BWP12T30P140 s_hi_reg_3_ ( .D(n4), .CP(n205), .CDN(n203), .Q(
        result[35]) );
  DFCNQD1BWP12T30P140 s_hi_reg_2_ ( .D(n3), .CP(n206), .CDN(n203), .Q(
        result[34]) );
  DFCNQD1BWP12T30P140 s_hi_reg_1_ ( .D(n2), .CP(n204), .CDN(n203), .Q(
        result[33]) );
  DFCNQD1BWP12T30P140 s_hi_reg_0_ ( .D(n1), .CP(n206), .CDN(rst_n), .Q(
        result[32]) );
  DFCNQD1BWP12T30P140 en1_reg ( .D(n200), .CP(n205), .CDN(rst_n), .Q(en1) );
  CKBD0BWP12T30P140 U68 ( .I(i_en), .Z(n200) );
  ND2D0BWP12T30P140 U69 ( .A1(addb[0]), .A2(adda[0]), .ZN(n181) );
  INVD0BWP12T30P140 U70 ( .I(adda[1]), .ZN(n66) );
  INVD0BWP12T30P140 U71 ( .I(addb[1]), .ZN(n182) );
  MAOI222D0BWP12T30P140 U72 ( .A(n181), .B(n66), .C(n182), .ZN(n193) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(result[45]), .I1(n67), .S(n200), .Z(n14) );
  FA1D0BWP12T30P140 U74 ( .A(adda[30]), .B(addb[30]), .CI(n68), .CO(n128), .S(
        n69) );
  CKBD0BWP12T30P140 U75 ( .I(i_en), .Z(n173) );
  CKMUX2D0BWP12T30P140 U76 ( .I0(result[30]), .I1(n69), .S(n173), .Z(n64) );
  FA1D0BWP12T30P140 U77 ( .A(addb[32]), .B(adda[32]), .CI(n70), .CO(n76), .S(
        n71) );
  CKBD0BWP12T30P140 U78 ( .I(i_en), .Z(n198) );
  CKMUX2D0BWP12T30P140 U79 ( .I0(result[32]), .I1(n71), .S(n198), .Z(n1) );
  FA1D0BWP12T30P140 U80 ( .A(adda[29]), .B(addb[29]), .CI(n72), .CO(n68), .S(
        n73) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(result[29]), .I1(n73), .S(i_en), .Z(n63) );
  FA1D0BWP12T30P140 U82 ( .A(adda[28]), .B(addb[28]), .CI(n74), .CO(n72), .S(
        n75) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(result[28]), .I1(n75), .S(i_en), .Z(n62) );
  FA1D0BWP12T30P140 U84 ( .A(addb[33]), .B(adda[33]), .CI(n76), .CO(n82), .S(
        n77) );
  CKMUX2D0BWP12T30P140 U85 ( .I0(result[33]), .I1(n77), .S(n200), .Z(n2) );
  FA1D0BWP12T30P140 U86 ( .A(adda[27]), .B(addb[27]), .CI(n78), .CO(n74), .S(
        n79) );
  CKMUX2D0BWP12T30P140 U87 ( .I0(result[27]), .I1(n79), .S(i_en), .Z(n61) );
  FA1D0BWP12T30P140 U88 ( .A(adda[26]), .B(addb[26]), .CI(n80), .CO(n78), .S(
        n81) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(result[26]), .I1(n81), .S(i_en), .Z(n60) );
  FA1D0BWP12T30P140 U90 ( .A(addb[34]), .B(adda[34]), .CI(n82), .CO(n88), .S(
        n83) );
  CKMUX2D0BWP12T30P140 U91 ( .I0(result[34]), .I1(n83), .S(n200), .Z(n3) );
  FA1D0BWP12T30P140 U92 ( .A(adda[25]), .B(addb[25]), .CI(n84), .CO(n80), .S(
        n85) );
  CKMUX2D0BWP12T30P140 U93 ( .I0(result[25]), .I1(n85), .S(i_en), .Z(n59) );
  FA1D0BWP12T30P140 U94 ( .A(addb[41]), .B(adda[41]), .CI(n86), .CO(n92), .S(
        n87) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(result[41]), .I1(n87), .S(n200), .Z(n10) );
  FA1D0BWP12T30P140 U96 ( .A(addb[35]), .B(adda[35]), .CI(n88), .CO(n94), .S(
        n89) );
  CKMUX2D0BWP12T30P140 U97 ( .I0(result[35]), .I1(n89), .S(n200), .Z(n4) );
  INVD0BWP12T30P140 U98 ( .I(result[0]), .ZN(n91) );
  OAI211D0BWP12T30P140 U99 ( .A1(addb[0]), .A2(adda[0]), .B(i_en), .C(n181), 
        .ZN(n90) );
  OAI21D0BWP12T30P140 U100 ( .A1(i_en), .A2(n91), .B(n90), .ZN(n34) );
  FA1D0BWP12T30P140 U101 ( .A(addb[42]), .B(adda[42]), .CI(n92), .CO(n98), .S(
        n93) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(result[42]), .I1(n93), .S(n200), .Z(n11) );
  FA1D0BWP12T30P140 U103 ( .A(addb[36]), .B(adda[36]), .CI(n94), .CO(n100), 
        .S(n95) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(result[36]), .I1(n95), .S(n200), .Z(n5) );
  FA1D0BWP12T30P140 U105 ( .A(adda[24]), .B(addb[24]), .CI(n96), .CO(n84), .S(
        n97) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(result[24]), .I1(n97), .S(n173), .Z(n58) );
  FA1D0BWP12T30P140 U107 ( .A(addb[43]), .B(adda[43]), .CI(n98), .CO(n104), 
        .S(n99) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(result[43]), .I1(n99), .S(n200), .Z(n12) );
  FA1D0BWP12T30P140 U109 ( .A(addb[37]), .B(adda[37]), .CI(n100), .CO(n106), 
        .S(n101) );
  CKMUX2D0BWP12T30P140 U110 ( .I0(result[37]), .I1(n101), .S(n200), .Z(n6) );
  FA1D0BWP12T30P140 U111 ( .A(adda[23]), .B(addb[23]), .CI(n102), .CO(n96), 
        .S(n103) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(result[23]), .I1(n103), .S(n173), .Z(n57) );
  FA1D0BWP12T30P140 U113 ( .A(addb[44]), .B(adda[44]), .CI(n104), .CO(n110), 
        .S(n105) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(result[44]), .I1(n105), .S(n200), .Z(n13) );
  FA1D0BWP12T30P140 U115 ( .A(addb[38]), .B(adda[38]), .CI(n106), .CO(n112), 
        .S(n107) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(result[38]), .I1(n107), .S(n200), .Z(n7) );
  FA1D0BWP12T30P140 U117 ( .A(adda[22]), .B(addb[22]), .CI(n108), .CO(n102), 
        .S(n109) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(result[22]), .I1(n109), .S(n173), .Z(n56) );
  FA1D0BWP12T30P140 U119 ( .A(addb[45]), .B(adda[45]), .CI(n110), .CO(n116), 
        .S(n67) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(result[59]), .I1(n111), .S(n198), .Z(n28) );
  FA1D0BWP12T30P140 U121 ( .A(addb[39]), .B(adda[39]), .CI(n112), .CO(n118), 
        .S(n113) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(result[39]), .I1(n113), .S(n200), .Z(n8) );
  FA1D0BWP12T30P140 U123 ( .A(adda[21]), .B(addb[21]), .CI(n114), .CO(n108), 
        .S(n115) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(result[21]), .I1(n115), .S(n173), .Z(n55) );
  FA1D0BWP12T30P140 U125 ( .A(addb[46]), .B(adda[46]), .CI(n116), .CO(n122), 
        .S(n117) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(result[46]), .I1(n117), .S(n200), .Z(n15) );
  FA1D0BWP12T30P140 U127 ( .A(addb[40]), .B(adda[40]), .CI(n118), .CO(n86), 
        .S(n119) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(result[40]), .I1(n119), .S(n200), .Z(n9) );
  FA1D0BWP12T30P140 U129 ( .A(adda[20]), .B(addb[20]), .CI(n120), .CO(n114), 
        .S(n121) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(result[20]), .I1(n121), .S(n173), .Z(n54) );
  FA1D0BWP12T30P140 U131 ( .A(addb[47]), .B(adda[47]), .CI(n122), .CO(n166), 
        .S(n123) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(result[47]), .I1(n123), .S(n200), .Z(n16) );
  FA1D0BWP12T30P140 U133 ( .A(adda[13]), .B(addb[13]), .CI(n124), .CO(n156), 
        .S(n125) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(result[13]), .I1(n125), .S(n173), .Z(n47) );
  FA1D0BWP12T30P140 U135 ( .A(adda[19]), .B(addb[19]), .CI(n126), .CO(n120), 
        .S(n127) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(result[19]), .I1(n127), .S(n173), .Z(n53) );
  FA1D0BWP12T30P140 U137 ( .A(adda[31]), .B(addb[31]), .CI(n128), .CO(n70), 
        .S(n129) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(result[31]), .I1(n129), .S(n200), .Z(n65) );
  FA1D0BWP12T30P140 U139 ( .A(adda[12]), .B(addb[12]), .CI(n130), .CO(n124), 
        .S(n131) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(result[12]), .I1(n131), .S(n173), .Z(n46) );
  FA1D0BWP12T30P140 U141 ( .A(adda[18]), .B(addb[18]), .CI(n132), .CO(n126), 
        .S(n133) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(result[18]), .I1(n133), .S(n173), .Z(n52) );
  FA1D0BWP12T30P140 U143 ( .A(addb[49]), .B(adda[49]), .CI(n134), .CO(n140), 
        .S(n135) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(result[49]), .I1(n135), .S(n200), .Z(n18) );
  FA1D0BWP12T30P140 U145 ( .A(adda[11]), .B(addb[11]), .CI(n136), .CO(n130), 
        .S(n137) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(result[11]), .I1(n137), .S(n173), .Z(n45) );
  FA1D0BWP12T30P140 U147 ( .A(adda[17]), .B(addb[17]), .CI(n138), .CO(n132), 
        .S(n139) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(result[17]), .I1(n139), .S(n173), .Z(n51) );
  FA1D0BWP12T30P140 U149 ( .A(addb[50]), .B(adda[50]), .CI(n140), .CO(n146), 
        .S(n141) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(result[50]), .I1(n141), .S(n200), .Z(n19) );
  FA1D0BWP12T30P140 U151 ( .A(adda[10]), .B(addb[10]), .CI(n142), .CO(n136), 
        .S(n143) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(result[10]), .I1(n143), .S(n173), .Z(n44) );
  FA1D0BWP12T30P140 U153 ( .A(adda[16]), .B(addb[16]), .CI(n144), .CO(n138), 
        .S(n145) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(result[16]), .I1(n145), .S(n173), .Z(n50) );
  FA1D0BWP12T30P140 U155 ( .A(addb[51]), .B(adda[51]), .CI(n146), .CO(n152), 
        .S(n147) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(result[51]), .I1(n147), .S(n198), .Z(n20) );
  FA1D0BWP12T30P140 U157 ( .A(adda[9]), .B(addb[9]), .CI(n148), .CO(n142), .S(
        n149) );
  CKMUX2D0BWP12T30P140 U158 ( .I0(result[9]), .I1(n149), .S(n173), .Z(n43) );
  FA1D0BWP12T30P140 U159 ( .A(adda[15]), .B(addb[15]), .CI(n150), .CO(n144), 
        .S(n151) );
  CKMUX2D0BWP12T30P140 U160 ( .I0(result[15]), .I1(n151), .S(n173), .Z(n49) );
  FA1D0BWP12T30P140 U161 ( .A(addb[52]), .B(adda[52]), .CI(n152), .CO(n158), 
        .S(n153) );
  CKMUX2D0BWP12T30P140 U162 ( .I0(result[52]), .I1(n153), .S(n198), .Z(n21) );
  FA1D0BWP12T30P140 U163 ( .A(adda[8]), .B(addb[8]), .CI(n154), .CO(n148), .S(
        n155) );
  CKMUX2D0BWP12T30P140 U164 ( .I0(result[8]), .I1(n155), .S(n173), .Z(n42) );
  FA1D0BWP12T30P140 U165 ( .A(adda[14]), .B(addb[14]), .CI(n156), .CO(n150), 
        .S(n157) );
  CKMUX2D0BWP12T30P140 U166 ( .I0(result[14]), .I1(n157), .S(n173), .Z(n48) );
  FA1D0BWP12T30P140 U167 ( .A(addb[53]), .B(adda[53]), .CI(n158), .CO(n164), 
        .S(n159) );
  CKMUX2D0BWP12T30P140 U168 ( .I0(result[53]), .I1(n159), .S(n198), .Z(n22) );
  FA1D0BWP12T30P140 U169 ( .A(adda[7]), .B(addb[7]), .CI(n160), .CO(n154), .S(
        n161) );
  CKMUX2D0BWP12T30P140 U170 ( .I0(result[7]), .I1(n161), .S(n173), .Z(n41) );
  FA1D0BWP12T30P140 U171 ( .A(addb[59]), .B(adda[59]), .CI(n162), .CO(n168), 
        .S(n111) );
  CKMUX2D0BWP12T30P140 U172 ( .I0(result[60]), .I1(n163), .S(n198), .Z(n29) );
  FA1D0BWP12T30P140 U173 ( .A(addb[54]), .B(adda[54]), .CI(n164), .CO(n170), 
        .S(n165) );
  CKMUX2D0BWP12T30P140 U174 ( .I0(result[54]), .I1(n165), .S(n198), .Z(n23) );
  FA1D0BWP12T30P140 U175 ( .A(addb[48]), .B(adda[48]), .CI(n166), .CO(n134), 
        .S(n167) );
  CKMUX2D0BWP12T30P140 U176 ( .I0(result[48]), .I1(n167), .S(n200), .Z(n17) );
  FA1D0BWP12T30P140 U177 ( .A(addb[60]), .B(adda[60]), .CI(n168), .CO(n175), 
        .S(n163) );
  CKMUX2D0BWP12T30P140 U178 ( .I0(result[61]), .I1(n169), .S(n198), .Z(n30) );
  FA1D0BWP12T30P140 U179 ( .A(addb[55]), .B(adda[55]), .CI(n170), .CO(n177), 
        .S(n171) );
  CKMUX2D0BWP12T30P140 U180 ( .I0(result[55]), .I1(n171), .S(n198), .Z(n24) );
  FA1D0BWP12T30P140 U181 ( .A(adda[5]), .B(addb[5]), .CI(n172), .CO(n197), .S(
        n174) );
  CKMUX2D0BWP12T30P140 U182 ( .I0(result[5]), .I1(n174), .S(n173), .Z(n39) );
  FA1D0BWP12T30P140 U183 ( .A(addb[61]), .B(adda[61]), .CI(n175), .CO(n189), 
        .S(n169) );
  CKMUX2D0BWP12T30P140 U184 ( .I0(result[62]), .I1(n176), .S(n198), .Z(n31) );
  FA1D0BWP12T30P140 U185 ( .A(addb[56]), .B(adda[56]), .CI(n177), .CO(n185), 
        .S(n178) );
  CKMUX2D0BWP12T30P140 U186 ( .I0(result[56]), .I1(n178), .S(n198), .Z(n25) );
  FA1D0BWP12T30P140 U187 ( .A(adda[4]), .B(addb[4]), .CI(n179), .CO(n172), .S(
        n180) );
  CKMUX2D0BWP12T30P140 U188 ( .I0(result[4]), .I1(n180), .S(n198), .Z(n38) );
  MUX2ND0BWP12T30P140 U189 ( .I0(addb[1]), .I1(n182), .S(n181), .ZN(n183) );
  MAOI22D0BWP12T30P140 U190 ( .A1(adda[1]), .A2(n183), .B1(n183), .B2(adda[1]), 
        .ZN(n184) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(result[1]), .I1(n184), .S(n198), .Z(n35) );
  FA1D0BWP12T30P140 U192 ( .A(addb[57]), .B(adda[57]), .CI(n185), .CO(n191), 
        .S(n186) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(result[57]), .I1(n186), .S(n198), .Z(n26) );
  FA1D0BWP12T30P140 U194 ( .A(adda[3]), .B(addb[3]), .CI(n187), .CO(n179), .S(
        n188) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(result[3]), .I1(n188), .S(n198), .Z(n37) );
  FA1D0BWP12T30P140 U196 ( .A(addb[62]), .B(adda[62]), .CI(n189), .CO(n195), 
        .S(n176) );
  CKMUX2D0BWP12T30P140 U197 ( .I0(result[64]), .I1(n190), .S(n198), .Z(n33) );
  FA1D0BWP12T30P140 U198 ( .A(addb[58]), .B(adda[58]), .CI(n191), .CO(n162), 
        .S(n192) );
  CKMUX2D0BWP12T30P140 U199 ( .I0(result[58]), .I1(n192), .S(n198), .Z(n27) );
  FA1D0BWP12T30P140 U200 ( .A(adda[2]), .B(addb[2]), .CI(n193), .CO(n187), .S(
        n194) );
  CKMUX2D0BWP12T30P140 U201 ( .I0(result[2]), .I1(n194), .S(n198), .Z(n36) );
  FA1D0BWP12T30P140 U202 ( .A(addb[63]), .B(adda[63]), .CI(n195), .CO(n190), 
        .S(n196) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(result[63]), .I1(n196), .S(n198), .Z(n32) );
  FA1D0BWP12T30P140 U204 ( .A(adda[6]), .B(addb[6]), .CI(n197), .CO(n160), .S(
        n199) );
  CKMUX2D0BWP12T30P140 U205 ( .I0(result[6]), .I1(n199), .S(n198), .Z(n40) );
  CKBD0BWP12T30P140 U206 ( .I(clk), .Z(n205) );
  CKBD0BWP12T30P140 U207 ( .I(clk), .Z(n206) );
  CKBD0BWP12T30P140 U208 ( .I(clk), .Z(n204) );
  CKBD0BWP12T30P140 U209 ( .I(rst_n), .Z(n201) );
  CKBD0BWP12T30P140 U210 ( .I(rst_n), .Z(n202) );
  CKBD0BWP12T30P140 U211 ( .I(rst_n), .Z(n203) );
endmodule

