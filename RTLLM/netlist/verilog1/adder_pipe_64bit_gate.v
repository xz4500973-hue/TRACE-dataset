/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:26:51 2026
/////////////////////////////////////////////////////////////


module adder_pipe_64bit ( clk, rst_n, i_en, adda, addb, result, o_en );
  input [63:0] adda;
  input [63:0] addb;
  output [64:0] result;
  input clk, rst_n, i_en;
  output o_en;
  wire   c1, c2, c3, stage1, stage2, stage3, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237;
  wire   [15:0] a2_ff1;
  wire   [15:0] b2_ff1;
  wire   [15:0] a3_ff2;
  wire   [15:0] b3_ff2;
  wire   [15:0] a4_ff3;
  wire   [15:0] b4_ff3;
  wire   [15:0] a4_ff1;
  wire   [15:0] b4_ff1;
  wire   [15:0] b4_ff2;
  wire   [15:0] a4_ff2;
  wire   [15:0] b3_ff1;
  wire   [15:0] a3_ff1;
  wire   [15:0] s1;
  wire   [15:0] s2;
  wire   [15:0] s3;
  wire   [15:0] s1_ff1;
  wire   [15:0] s2_ff1;
  wire   [15:0] s1_ff2;

  DFCNQD1BWP12T30P140 o_en_reg ( .D(stage3), .CP(n229), .CDN(n202), .Q(o_en)
         );
  DFCNQD1BWP12T30P140 s3_ff1_reg_15_ ( .D(s3[15]), .CP(n225), .CDN(n218), .Q(
        result[47]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_14_ ( .D(s3[14]), .CP(n225), .CDN(n218), .Q(
        result[46]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_13_ ( .D(s3[13]), .CP(n225), .CDN(n218), .Q(
        result[45]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_12_ ( .D(s3[12]), .CP(n225), .CDN(n218), .Q(
        result[44]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_11_ ( .D(s3[11]), .CP(n225), .CDN(n218), .Q(
        result[43]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_10_ ( .D(s3[10]), .CP(n225), .CDN(n218), .Q(
        result[42]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_9_ ( .D(s3[9]), .CP(n225), .CDN(n218), .Q(
        result[41]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_8_ ( .D(s3[8]), .CP(n225), .CDN(n218), .Q(
        result[40]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_13_ ( .D(s2_ff1[13]), .CP(n224), .CDN(n212), 
        .Q(result[29]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_12_ ( .D(s2_ff1[12]), .CP(n224), .CDN(n212), 
        .Q(result[28]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_11_ ( .D(s2_ff1[11]), .CP(n224), .CDN(n217), 
        .Q(result[27]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_10_ ( .D(s2_ff1[10]), .CP(n224), .CDN(n217), 
        .Q(result[26]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_9_ ( .D(s2_ff1[9]), .CP(n224), .CDN(n217), 
        .Q(result[25]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_8_ ( .D(s2_ff1[8]), .CP(n224), .CDN(n217), 
        .Q(result[24]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_1_ ( .D(s2_ff1[1]), .CP(n223), .CDN(n213), 
        .Q(result[17]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_0_ ( .D(s2_ff1[0]), .CP(n223), .CDN(n213), 
        .Q(result[16]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_3_ ( .D(s1_ff2[3]), .CP(n222), .CDN(n210), 
        .Q(result[3]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_2_ ( .D(s1_ff2[2]), .CP(n222), .CDN(n202), 
        .Q(result[2]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_1_ ( .D(s1_ff2[1]), .CP(n222), .CDN(n211), 
        .Q(result[1]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_0_ ( .D(s1_ff2[0]), .CP(n222), .CDN(n214), 
        .Q(result[0]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_7_ ( .D(s3[7]), .CP(n232), .CDN(n218), .Q(
        result[39]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_6_ ( .D(s3[6]), .CP(n232), .CDN(n218), .Q(
        result[38]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_5_ ( .D(s3[5]), .CP(n232), .CDN(n218), .Q(
        result[37]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_4_ ( .D(s3[4]), .CP(n232), .CDN(n212), .Q(
        result[36]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_3_ ( .D(s3[3]), .CP(n232), .CDN(n212), .Q(
        result[35]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_2_ ( .D(s3[2]), .CP(n232), .CDN(n212), .Q(
        result[34]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_1_ ( .D(s3[1]), .CP(n232), .CDN(n212), .Q(
        result[33]) );
  DFCNQD1BWP12T30P140 s3_ff1_reg_0_ ( .D(s3[0]), .CP(n232), .CDN(n212), .Q(
        result[32]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_15_ ( .D(s2_ff1[15]), .CP(n232), .CDN(n212), 
        .Q(result[31]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_14_ ( .D(s2_ff1[14]), .CP(n232), .CDN(n212), 
        .Q(result[30]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_7_ ( .D(s2_ff1[7]), .CP(n233), .CDN(n217), 
        .Q(result[23]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_6_ ( .D(s2_ff1[6]), .CP(n233), .CDN(n217), 
        .Q(result[22]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_5_ ( .D(s2_ff1[5]), .CP(n233), .CDN(n213), 
        .Q(result[21]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_4_ ( .D(s2_ff1[4]), .CP(n233), .CDN(n213), 
        .Q(result[20]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_3_ ( .D(s2_ff1[3]), .CP(n233), .CDN(n213), 
        .Q(result[19]) );
  DFCNQD1BWP12T30P140 s2_ff2_reg_2_ ( .D(s2_ff1[2]), .CP(n233), .CDN(n213), 
        .Q(result[18]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_15_ ( .D(s1_ff2[15]), .CP(clk), .CDN(n215), 
        .Q(result[15]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_14_ ( .D(s1_ff2[14]), .CP(n230), .CDN(n215), 
        .Q(result[14]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_13_ ( .D(s1_ff2[13]), .CP(n233), .CDN(n215), 
        .Q(result[13]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_12_ ( .D(s1_ff2[12]), .CP(n234), .CDN(n215), 
        .Q(result[12]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_11_ ( .D(s1_ff2[11]), .CP(n236), .CDN(n215), 
        .Q(result[11]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_10_ ( .D(s1_ff2[10]), .CP(n235), .CDN(n215), 
        .Q(result[10]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_9_ ( .D(s1_ff2[9]), .CP(n237), .CDN(n215), 
        .Q(result[9]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_8_ ( .D(s1_ff2[8]), .CP(n232), .CDN(n215), 
        .Q(result[8]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_7_ ( .D(s1_ff2[7]), .CP(n231), .CDN(n215), 
        .Q(result[7]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_6_ ( .D(s1_ff2[6]), .CP(clk), .CDN(n210), .Q(
        result[6]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_5_ ( .D(s1_ff2[5]), .CP(n227), .CDN(n209), 
        .Q(result[5]) );
  DFCNQD1BWP12T30P140 s1_ff3_reg_4_ ( .D(s1_ff2[4]), .CP(n228), .CDN(n205), 
        .Q(result[4]) );
  DFCNQD1BWP12T30P140 s4_reg_9_ ( .D(n11), .CP(n220), .CDN(n213), .Q(
        result[57]) );
  DFCNQD1BWP12T30P140 s4_reg_8_ ( .D(n10), .CP(n220), .CDN(n208), .Q(
        result[56]) );
  DFCNQD1BWP12T30P140 s4_reg_7_ ( .D(n9), .CP(n220), .CDN(n203), .Q(result[55]) );
  DFCNQD1BWP12T30P140 s4_reg_6_ ( .D(n8), .CP(n220), .CDN(n213), .Q(result[54]) );
  DFCNQD1BWP12T30P140 s4_reg_5_ ( .D(n7), .CP(n220), .CDN(n208), .Q(result[53]) );
  DFCNQD1BWP12T30P140 s4_reg_4_ ( .D(n6), .CP(n220), .CDN(n207), .Q(result[52]) );
  DFCNQD1BWP12T30P140 s4_reg_3_ ( .D(n5), .CP(n220), .CDN(n206), .Q(result[51]) );
  DFCNQD1BWP12T30P140 s4_reg_2_ ( .D(n4), .CP(n220), .CDN(n216), .Q(result[50]) );
  DFCNQD1BWP12T30P140 s4_reg_1_ ( .D(n3), .CP(n220), .CDN(n218), .Q(result[49]) );
  DFCNQD1BWP12T30P140 s4_reg_0_ ( .D(n2), .CP(n220), .CDN(n215), .Q(result[48]) );
  DFCNQD1BWP12T30P140 c4_reg ( .D(n1), .CP(n220), .CDN(n219), .Q(result[64])
         );
  DFCNQD1BWP12T30P140 s4_reg_15_ ( .D(n17), .CP(n237), .CDN(n207), .Q(
        result[63]) );
  DFCNQD1BWP12T30P140 s4_reg_14_ ( .D(n16), .CP(n237), .CDN(n206), .Q(
        result[62]) );
  DFCNQD1BWP12T30P140 s4_reg_13_ ( .D(n15), .CP(n237), .CDN(n216), .Q(
        result[61]) );
  DFCNQD1BWP12T30P140 s4_reg_12_ ( .D(n14), .CP(n237), .CDN(n218), .Q(
        result[60]) );
  DFCNQD1BWP12T30P140 s4_reg_11_ ( .D(n13), .CP(n237), .CDN(n215), .Q(
        result[59]) );
  DFCNQD1BWP12T30P140 s4_reg_10_ ( .D(n12), .CP(n237), .CDN(n219), .Q(
        result[58]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_0_ ( .D(a4_ff2[0]), .CP(n228), .CDN(n206), 
        .Q(a4_ff3[0]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_0_ ( .D(adda[16]), .CP(n220), .CDN(n209), .Q(
        a2_ff1[0]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_0_ ( .D(a3_ff1[0]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[0]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_0_ ( .D(b4_ff2[0]), .CP(n236), .CDN(n219), 
        .Q(b4_ff3[0]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_15_ ( .D(a4_ff2[15]), .CP(n223), .CDN(n217), 
        .Q(a4_ff3[15]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_14_ ( .D(a4_ff2[14]), .CP(n235), .CDN(n202), 
        .Q(a4_ff3[14]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_13_ ( .D(a4_ff2[13]), .CP(n225), .CDN(n211), 
        .Q(a4_ff3[13]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_12_ ( .D(a4_ff2[12]), .CP(n226), .CDN(n214), 
        .Q(a4_ff3[12]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_11_ ( .D(a4_ff2[11]), .CP(n234), .CDN(n207), 
        .Q(a4_ff3[11]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_10_ ( .D(a4_ff2[10]), .CP(n231), .CDN(n206), 
        .Q(a4_ff3[10]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_9_ ( .D(a4_ff2[9]), .CP(n227), .CDN(n215), 
        .Q(a4_ff3[9]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_8_ ( .D(a4_ff2[8]), .CP(n228), .CDN(n205), 
        .Q(a4_ff3[8]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_7_ ( .D(a4_ff2[7]), .CP(n229), .CDN(n207), 
        .Q(a4_ff3[7]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_6_ ( .D(a4_ff2[6]), .CP(n224), .CDN(n206), 
        .Q(a4_ff3[6]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_5_ ( .D(a4_ff2[5]), .CP(n232), .CDN(n217), 
        .Q(a4_ff3[5]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_4_ ( .D(a4_ff2[4]), .CP(n229), .CDN(n208), 
        .Q(a4_ff3[4]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_3_ ( .D(a4_ff2[3]), .CP(n222), .CDN(n206), 
        .Q(a4_ff3[3]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_2_ ( .D(a4_ff2[2]), .CP(n230), .CDN(n206), 
        .Q(a4_ff3[2]) );
  DFCNQD1BWP12T30P140 a4_ff3_reg_1_ ( .D(a4_ff2[1]), .CP(n229), .CDN(n206), 
        .Q(a4_ff3[1]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_3_ ( .D(adda[19]), .CP(n225), .CDN(n209), .Q(
        a2_ff1[3]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_2_ ( .D(adda[18]), .CP(n226), .CDN(n209), .Q(
        a2_ff1[2]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_1_ ( .D(adda[17]), .CP(n231), .CDN(n209), .Q(
        a2_ff1[1]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_11_ ( .D(a3_ff1[11]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[11]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_10_ ( .D(a3_ff1[10]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[10]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_9_ ( .D(a3_ff1[9]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[9]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_8_ ( .D(a3_ff1[8]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[8]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_7_ ( .D(a3_ff1[7]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[7]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_6_ ( .D(a3_ff1[6]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[6]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_5_ ( .D(a3_ff1[5]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[5]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_4_ ( .D(a3_ff1[4]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[4]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_3_ ( .D(a3_ff1[3]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[3]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_2_ ( .D(a3_ff1[2]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[2]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_1_ ( .D(a3_ff1[1]), .CP(n226), .CDN(n219), 
        .Q(a3_ff2[1]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_0_ ( .D(b3_ff1[0]), .CP(n225), .CDN(n218), 
        .Q(b3_ff2[0]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_15_ ( .D(adda[31]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[15]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_14_ ( .D(adda[30]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[14]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_13_ ( .D(adda[29]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[13]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_12_ ( .D(adda[28]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[12]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_11_ ( .D(adda[27]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[11]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_10_ ( .D(adda[26]), .CP(n230), .CDN(n208), 
        .Q(a2_ff1[10]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_9_ ( .D(adda[25]), .CP(n230), .CDN(n208), .Q(
        a2_ff1[9]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_8_ ( .D(adda[24]), .CP(n230), .CDN(n208), .Q(
        a2_ff1[8]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_7_ ( .D(adda[23]), .CP(n230), .CDN(n208), .Q(
        a2_ff1[7]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_6_ ( .D(adda[22]), .CP(n230), .CDN(n208), .Q(
        a2_ff1[6]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_5_ ( .D(adda[21]), .CP(n230), .CDN(n209), .Q(
        a2_ff1[5]) );
  DFCNQD1BWP12T30P140 a2_ff1_reg_4_ ( .D(adda[20]), .CP(n230), .CDN(n209), .Q(
        a2_ff1[4]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_0_ ( .D(addb[16]), .CP(n230), .CDN(n210), .Q(
        b2_ff1[0]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_15_ ( .D(a3_ff1[15]), .CP(n237), .CDN(n210), 
        .Q(a3_ff2[15]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_14_ ( .D(a3_ff1[14]), .CP(n228), .CDN(n210), 
        .Q(a3_ff2[14]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_13_ ( .D(a3_ff1[13]), .CP(n227), .CDN(n210), 
        .Q(a3_ff2[13]) );
  DFCNQD1BWP12T30P140 a3_ff2_reg_12_ ( .D(a3_ff1[12]), .CP(n227), .CDN(n210), 
        .Q(a3_ff2[12]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_15_ ( .D(b4_ff2[15]), .CP(n229), .CDN(n202), 
        .Q(b4_ff3[15]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_14_ ( .D(b4_ff2[14]), .CP(n229), .CDN(n202), 
        .Q(b4_ff3[14]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_13_ ( .D(b4_ff2[13]), .CP(n226), .CDN(n203), 
        .Q(b4_ff3[13]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_12_ ( .D(b4_ff2[12]), .CP(clk), .CDN(n203), 
        .Q(b4_ff3[12]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_11_ ( .D(b4_ff2[11]), .CP(n230), .CDN(n203), 
        .Q(b4_ff3[11]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_10_ ( .D(b4_ff2[10]), .CP(n233), .CDN(n203), 
        .Q(b4_ff3[10]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_9_ ( .D(b4_ff2[9]), .CP(n221), .CDN(n203), 
        .Q(b4_ff3[9]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_8_ ( .D(b4_ff2[8]), .CP(clk), .CDN(n204), .Q(
        b4_ff3[8]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_7_ ( .D(b4_ff2[7]), .CP(n222), .CDN(n204), 
        .Q(b4_ff3[7]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_6_ ( .D(b4_ff2[6]), .CP(n220), .CDN(n204), 
        .Q(b4_ff3[6]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_5_ ( .D(b4_ff2[5]), .CP(n227), .CDN(n204), 
        .Q(b4_ff3[5]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_4_ ( .D(b4_ff2[4]), .CP(n228), .CDN(n205), 
        .Q(b4_ff3[4]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_3_ ( .D(b4_ff2[3]), .CP(n229), .CDN(n205), 
        .Q(b4_ff3[3]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_2_ ( .D(b4_ff2[2]), .CP(n224), .CDN(n205), 
        .Q(b4_ff3[2]) );
  DFCNQD1BWP12T30P140 b4_ff3_reg_1_ ( .D(b4_ff2[1]), .CP(n237), .CDN(n205), 
        .Q(b4_ff3[1]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_15_ ( .D(addb[31]), .CP(n227), .CDN(n209), 
        .Q(b2_ff1[15]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_14_ ( .D(addb[30]), .CP(n237), .CDN(n209), 
        .Q(b2_ff1[14]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_13_ ( .D(addb[29]), .CP(n232), .CDN(n209), 
        .Q(b2_ff1[13]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_12_ ( .D(addb[28]), .CP(n222), .CDN(n209), 
        .Q(b2_ff1[12]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_11_ ( .D(addb[27]), .CP(n223), .CDN(n209), 
        .Q(b2_ff1[11]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_10_ ( .D(addb[26]), .CP(n235), .CDN(n209), 
        .Q(b2_ff1[10]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_9_ ( .D(addb[25]), .CP(n227), .CDN(n209), .Q(
        b2_ff1[9]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_8_ ( .D(addb[24]), .CP(n221), .CDN(n210), .Q(
        b2_ff1[8]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_3_ ( .D(b3_ff1[3]), .CP(n225), .CDN(n211), 
        .Q(b3_ff2[3]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_2_ ( .D(b3_ff1[2]), .CP(n225), .CDN(n211), 
        .Q(b3_ff2[2]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_1_ ( .D(b3_ff1[1]), .CP(n225), .CDN(n218), 
        .Q(b3_ff2[1]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_7_ ( .D(addb[23]), .CP(n228), .CDN(n210), .Q(
        b2_ff1[7]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_6_ ( .D(addb[22]), .CP(n229), .CDN(n210), .Q(
        b2_ff1[6]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_5_ ( .D(addb[21]), .CP(n224), .CDN(n210), .Q(
        b2_ff1[5]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_4_ ( .D(addb[20]), .CP(n223), .CDN(n210), .Q(
        b2_ff1[4]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_3_ ( .D(addb[19]), .CP(n221), .CDN(n210), .Q(
        b2_ff1[3]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_2_ ( .D(addb[18]), .CP(n228), .CDN(n210), .Q(
        b2_ff1[2]) );
  DFCNQD1BWP12T30P140 b2_ff1_reg_1_ ( .D(addb[17]), .CP(n222), .CDN(n210), .Q(
        b2_ff1[1]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_15_ ( .D(b3_ff1[15]), .CP(n231), .CDN(n219), 
        .Q(b3_ff2[15]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_14_ ( .D(b3_ff1[14]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[14]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_13_ ( .D(b3_ff1[13]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[13]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_12_ ( .D(b3_ff1[12]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[12]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_11_ ( .D(b3_ff1[11]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[11]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_10_ ( .D(b3_ff1[10]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[10]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_9_ ( .D(b3_ff1[9]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[9]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_8_ ( .D(b3_ff1[8]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[8]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_7_ ( .D(b3_ff1[7]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[7]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_6_ ( .D(b3_ff1[6]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[6]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_5_ ( .D(b3_ff1[5]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[5]) );
  DFCNQD1BWP12T30P140 b3_ff2_reg_4_ ( .D(b3_ff1[4]), .CP(n231), .CDN(n211), 
        .Q(b3_ff2[4]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_15_ ( .D(addb[63]), .CP(n229), .CDN(n202), 
        .Q(b4_ff1[15]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_15_ ( .D(b4_ff1[15]), .CP(n229), .CDN(n202), 
        .Q(b4_ff2[15]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_14_ ( .D(addb[62]), .CP(n229), .CDN(n202), 
        .Q(b4_ff1[14]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_14_ ( .D(b4_ff1[14]), .CP(n229), .CDN(n202), 
        .Q(b4_ff2[14]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_13_ ( .D(addb[61]), .CP(n229), .CDN(n202), 
        .Q(b4_ff1[13]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_13_ ( .D(b4_ff1[13]), .CP(n229), .CDN(n202), 
        .Q(b4_ff2[13]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_12_ ( .D(addb[60]), .CP(n234), .CDN(n203), 
        .Q(b4_ff1[12]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_12_ ( .D(b4_ff1[12]), .CP(n236), .CDN(n203), 
        .Q(b4_ff2[12]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_11_ ( .D(addb[59]), .CP(clk), .CDN(n203), .Q(
        b4_ff1[11]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_11_ ( .D(b4_ff1[11]), .CP(n235), .CDN(n203), 
        .Q(b4_ff2[11]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_10_ ( .D(addb[58]), .CP(n237), .CDN(n203), 
        .Q(b4_ff1[10]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_10_ ( .D(b4_ff1[10]), .CP(n232), .CDN(n203), 
        .Q(b4_ff2[10]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_9_ ( .D(addb[57]), .CP(n231), .CDN(n203), .Q(
        b4_ff1[9]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_9_ ( .D(b4_ff1[9]), .CP(clk), .CDN(n203), .Q(
        b4_ff2[9]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_8_ ( .D(addb[56]), .CP(n225), .CDN(n204), .Q(
        b4_ff1[8]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_8_ ( .D(b4_ff1[8]), .CP(n226), .CDN(n204), 
        .Q(b4_ff2[8]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_7_ ( .D(addb[55]), .CP(n225), .CDN(n204), .Q(
        b4_ff1[7]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_7_ ( .D(b4_ff1[7]), .CP(n230), .CDN(n204), 
        .Q(b4_ff2[7]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_6_ ( .D(addb[54]), .CP(n233), .CDN(n204), .Q(
        b4_ff1[6]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_6_ ( .D(b4_ff1[6]), .CP(n234), .CDN(n204), 
        .Q(b4_ff2[6]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_5_ ( .D(addb[53]), .CP(n236), .CDN(n204), .Q(
        b4_ff1[5]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_5_ ( .D(b4_ff1[5]), .CP(n221), .CDN(n204), 
        .Q(b4_ff2[5]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_4_ ( .D(addb[52]), .CP(n223), .CDN(n204), .Q(
        b4_ff1[4]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_4_ ( .D(b4_ff1[4]), .CP(n221), .CDN(n205), 
        .Q(b4_ff2[4]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_3_ ( .D(addb[51]), .CP(clk), .CDN(n205), .Q(
        b4_ff1[3]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_3_ ( .D(b4_ff1[3]), .CP(n222), .CDN(n205), 
        .Q(b4_ff2[3]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_2_ ( .D(addb[50]), .CP(n220), .CDN(n205), .Q(
        b4_ff1[2]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_2_ ( .D(b4_ff1[2]), .CP(n225), .CDN(n205), 
        .Q(b4_ff2[2]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_1_ ( .D(addb[49]), .CP(n226), .CDN(n205), .Q(
        b4_ff1[1]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_1_ ( .D(b4_ff1[1]), .CP(n223), .CDN(n205), 
        .Q(b4_ff2[1]) );
  DFCNQD1BWP12T30P140 b4_ff1_reg_0_ ( .D(addb[48]), .CP(n231), .CDN(n205), .Q(
        b4_ff1[0]) );
  DFCNQD1BWP12T30P140 b4_ff2_reg_0_ ( .D(b4_ff1[0]), .CP(n232), .CDN(n205), 
        .Q(b4_ff2[0]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_15_ ( .D(adda[63]), .CP(n227), .CDN(n210), 
        .Q(a4_ff1[15]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_15_ ( .D(a4_ff1[15]), .CP(n228), .CDN(n209), 
        .Q(a4_ff2[15]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_14_ ( .D(adda[62]), .CP(n229), .CDN(n205), 
        .Q(a4_ff1[14]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_14_ ( .D(a4_ff1[14]), .CP(n224), .CDN(n212), 
        .Q(a4_ff2[14]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_13_ ( .D(adda[61]), .CP(n223), .CDN(n204), 
        .Q(a4_ff1[13]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_13_ ( .D(a4_ff1[13]), .CP(n221), .CDN(n203), 
        .Q(a4_ff2[13]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_12_ ( .D(adda[60]), .CP(n224), .CDN(n213), 
        .Q(a4_ff1[12]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_12_ ( .D(a4_ff1[12]), .CP(n220), .CDN(rst_n), 
        .Q(a4_ff2[12]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_11_ ( .D(adda[59]), .CP(n230), .CDN(n215), 
        .Q(a4_ff1[11]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_11_ ( .D(a4_ff1[11]), .CP(n233), .CDN(n209), 
        .Q(a4_ff2[11]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_10_ ( .D(adda[58]), .CP(n234), .CDN(n206), 
        .Q(a4_ff1[10]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_10_ ( .D(a4_ff1[10]), .CP(n236), .CDN(n202), 
        .Q(a4_ff2[10]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_9_ ( .D(adda[57]), .CP(n224), .CDN(n209), .Q(
        a4_ff1[9]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_9_ ( .D(a4_ff1[9]), .CP(n235), .CDN(n218), 
        .Q(a4_ff2[9]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_8_ ( .D(adda[56]), .CP(n223), .CDN(n215), .Q(
        a4_ff1[8]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_8_ ( .D(a4_ff1[8]), .CP(n221), .CDN(n219), 
        .Q(a4_ff2[8]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_7_ ( .D(adda[55]), .CP(n224), .CDN(rst_n), 
        .Q(a4_ff1[7]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_7_ ( .D(a4_ff1[7]), .CP(n222), .CDN(n218), 
        .Q(a4_ff2[7]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_6_ ( .D(adda[54]), .CP(n220), .CDN(n209), .Q(
        a4_ff1[6]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_6_ ( .D(a4_ff1[6]), .CP(n220), .CDN(n218), 
        .Q(a4_ff2[6]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_5_ ( .D(adda[53]), .CP(n225), .CDN(n211), .Q(
        a4_ff1[5]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_5_ ( .D(a4_ff1[5]), .CP(n226), .CDN(n214), 
        .Q(a4_ff2[5]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_4_ ( .D(adda[52]), .CP(n233), .CDN(n214), .Q(
        a4_ff1[4]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_4_ ( .D(a4_ff1[4]), .CP(n234), .CDN(n210), 
        .Q(a4_ff2[4]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_3_ ( .D(adda[51]), .CP(n236), .CDN(n210), .Q(
        a4_ff1[3]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_3_ ( .D(a4_ff1[3]), .CP(n229), .CDN(rst_n), 
        .Q(a4_ff2[3]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_2_ ( .D(adda[50]), .CP(n235), .CDN(n206), .Q(
        a4_ff1[2]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_2_ ( .D(a4_ff1[2]), .CP(n237), .CDN(n206), 
        .Q(a4_ff2[2]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_1_ ( .D(adda[49]), .CP(n232), .CDN(n206), .Q(
        a4_ff1[1]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_1_ ( .D(a4_ff1[1]), .CP(n231), .CDN(n206), 
        .Q(a4_ff2[1]) );
  DFCNQD1BWP12T30P140 a4_ff1_reg_0_ ( .D(adda[48]), .CP(n224), .CDN(n206), .Q(
        a4_ff1[0]) );
  DFCNQD1BWP12T30P140 a4_ff2_reg_0_ ( .D(a4_ff1[0]), .CP(n223), .CDN(n206), 
        .Q(a4_ff2[0]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_15_ ( .D(addb[47]), .CP(n221), .CDN(n206), 
        .Q(b3_ff1[15]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_14_ ( .D(addb[46]), .CP(n229), .CDN(n206), 
        .Q(b3_ff1[14]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_13_ ( .D(addb[45]), .CP(n222), .CDN(n206), 
        .Q(b3_ff1[13]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_12_ ( .D(addb[44]), .CP(n220), .CDN(n207), 
        .Q(b3_ff1[12]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_11_ ( .D(addb[43]), .CP(n225), .CDN(n207), 
        .Q(b3_ff1[11]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_10_ ( .D(addb[42]), .CP(n226), .CDN(n207), 
        .Q(b3_ff1[10]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_9_ ( .D(addb[41]), .CP(n233), .CDN(n207), .Q(
        b3_ff1[9]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_8_ ( .D(addb[40]), .CP(n231), .CDN(n207), .Q(
        b3_ff1[8]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_7_ ( .D(addb[39]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[7]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_6_ ( .D(addb[38]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[6]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_5_ ( .D(addb[37]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[5]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_4_ ( .D(addb[36]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[4]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_3_ ( .D(addb[35]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[3]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_2_ ( .D(addb[34]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[2]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_1_ ( .D(addb[33]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[1]) );
  DFCNQD1BWP12T30P140 b3_ff1_reg_0_ ( .D(addb[32]), .CP(n228), .CDN(n207), .Q(
        b3_ff1[0]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_15_ ( .D(adda[47]), .CP(n228), .CDN(n216), 
        .Q(a3_ff1[15]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_14_ ( .D(adda[46]), .CP(n228), .CDN(n202), 
        .Q(a3_ff1[14]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_13_ ( .D(adda[45]), .CP(n228), .CDN(n211), 
        .Q(a3_ff1[13]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_12_ ( .D(adda[44]), .CP(n228), .CDN(n214), 
        .Q(a3_ff1[12]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_11_ ( .D(adda[43]), .CP(n227), .CDN(n210), 
        .Q(a3_ff1[11]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_10_ ( .D(adda[42]), .CP(n227), .CDN(n209), 
        .Q(a3_ff1[10]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_9_ ( .D(adda[41]), .CP(n227), .CDN(n205), .Q(
        a3_ff1[9]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_8_ ( .D(adda[40]), .CP(n227), .CDN(n212), .Q(
        a3_ff1[8]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_7_ ( .D(adda[39]), .CP(n227), .CDN(n204), .Q(
        a3_ff1[7]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_6_ ( .D(adda[38]), .CP(n227), .CDN(n203), .Q(
        a3_ff1[6]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_5_ ( .D(adda[37]), .CP(n227), .CDN(n213), .Q(
        a3_ff1[5]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_4_ ( .D(adda[36]), .CP(n227), .CDN(n208), .Q(
        a3_ff1[4]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_3_ ( .D(adda[35]), .CP(n227), .CDN(rst_n), 
        .Q(a3_ff1[3]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_2_ ( .D(adda[34]), .CP(n227), .CDN(n208), .Q(
        a3_ff1[2]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_1_ ( .D(adda[33]), .CP(n227), .CDN(n208), .Q(
        a3_ff1[1]) );
  DFCNQD1BWP12T30P140 a3_ff1_reg_0_ ( .D(adda[32]), .CP(n227), .CDN(n208), .Q(
        a3_ff1[0]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_13_ ( .D(s2[13]), .CP(n224), .CDN(n212), .Q(
        s2_ff1[13]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_12_ ( .D(s2[12]), .CP(n224), .CDN(n212), .Q(
        s2_ff1[12]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_11_ ( .D(s2[11]), .CP(n224), .CDN(n217), .Q(
        s2_ff1[11]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_10_ ( .D(s2[10]), .CP(n224), .CDN(n217), .Q(
        s2_ff1[10]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_9_ ( .D(s2[9]), .CP(n224), .CDN(n217), .Q(
        s2_ff1[9]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_8_ ( .D(s2[8]), .CP(n224), .CDN(n217), .Q(
        s2_ff1[8]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_1_ ( .D(s2[1]), .CP(n223), .CDN(n213), .Q(
        s2_ff1[1]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_0_ ( .D(s2[0]), .CP(n223), .CDN(n213), .Q(
        s2_ff1[0]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_15_ ( .D(s1[15]), .CP(n223), .CDN(n213), .Q(
        s1_ff1[15]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_15_ ( .D(s1_ff1[15]), .CP(n223), .CDN(n213), 
        .Q(s1_ff2[15]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_14_ ( .D(s1[14]), .CP(n223), .CDN(n216), .Q(
        s1_ff1[14]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_14_ ( .D(s1_ff1[14]), .CP(n223), .CDN(n216), 
        .Q(s1_ff2[14]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_13_ ( .D(s1[13]), .CP(n223), .CDN(n216), .Q(
        s1_ff1[13]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_13_ ( .D(s1_ff1[13]), .CP(n223), .CDN(n216), 
        .Q(s1_ff2[13]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_12_ ( .D(s1[12]), .CP(n223), .CDN(n216), .Q(
        s1_ff1[12]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_12_ ( .D(s1_ff1[12]), .CP(n223), .CDN(n216), 
        .Q(s1_ff2[12]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_5_ ( .D(s1[5]), .CP(n222), .CDN(n214), .Q(
        s1_ff1[5]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_5_ ( .D(s1_ff1[5]), .CP(n220), .CDN(n214), 
        .Q(s1_ff2[5]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_4_ ( .D(s1[4]), .CP(n225), .CDN(n214), .Q(
        s1_ff1[4]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_4_ ( .D(s1_ff1[4]), .CP(n226), .CDN(n214), 
        .Q(s1_ff2[4]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_3_ ( .D(s1[3]), .CP(clk), .CDN(n214), .Q(
        s1_ff1[3]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_3_ ( .D(s1_ff1[3]), .CP(n230), .CDN(n214), 
        .Q(s1_ff2[3]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_2_ ( .D(s1[2]), .CP(n233), .CDN(n214), .Q(
        s1_ff1[2]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_2_ ( .D(s1_ff1[2]), .CP(n234), .CDN(n214), 
        .Q(s1_ff2[2]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_1_ ( .D(s1[1]), .CP(n236), .CDN(n215), .Q(
        s1_ff1[1]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_1_ ( .D(s1_ff1[1]), .CP(n235), .CDN(n215), 
        .Q(s1_ff2[1]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_0_ ( .D(s1[0]), .CP(n237), .CDN(n215), .Q(
        s1_ff1[0]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_0_ ( .D(s1_ff1[0]), .CP(n232), .CDN(n215), 
        .Q(s1_ff2[0]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_15_ ( .D(s2[15]), .CP(n232), .CDN(n212), .Q(
        s2_ff1[15]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_14_ ( .D(s2[14]), .CP(n232), .CDN(n212), .Q(
        s2_ff1[14]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_7_ ( .D(s2[7]), .CP(n233), .CDN(n217), .Q(
        s2_ff1[7]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_6_ ( .D(s2[6]), .CP(n233), .CDN(n217), .Q(
        s2_ff1[6]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_5_ ( .D(s2[5]), .CP(n233), .CDN(n217), .Q(
        s2_ff1[5]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_4_ ( .D(s2[4]), .CP(n233), .CDN(n213), .Q(
        s2_ff1[4]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_3_ ( .D(s2[3]), .CP(n233), .CDN(n213), .Q(
        s2_ff1[3]) );
  DFCNQD1BWP12T30P140 s2_ff1_reg_2_ ( .D(s2[2]), .CP(n233), .CDN(n213), .Q(
        s2_ff1[2]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_11_ ( .D(s1[11]), .CP(n234), .CDN(n216), .Q(
        s1_ff1[11]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_11_ ( .D(s1_ff1[11]), .CP(n234), .CDN(n216), 
        .Q(s1_ff2[11]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_10_ ( .D(s1[10]), .CP(n234), .CDN(n216), .Q(
        s1_ff1[10]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_10_ ( .D(s1_ff1[10]), .CP(n234), .CDN(n216), 
        .Q(s1_ff2[10]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_9_ ( .D(s1[9]), .CP(n234), .CDN(n216), .Q(
        s1_ff1[9]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_9_ ( .D(s1_ff1[9]), .CP(n234), .CDN(n216), 
        .Q(s1_ff2[9]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_8_ ( .D(s1[8]), .CP(n234), .CDN(n216), .Q(
        s1_ff1[8]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_8_ ( .D(s1_ff1[8]), .CP(n234), .CDN(n214), 
        .Q(s1_ff2[8]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_7_ ( .D(s1[7]), .CP(n234), .CDN(n214), .Q(
        s1_ff1[7]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_7_ ( .D(s1_ff1[7]), .CP(n234), .CDN(n214), 
        .Q(s1_ff2[7]) );
  DFCNQD1BWP12T30P140 s1_ff1_reg_6_ ( .D(s1[6]), .CP(n234), .CDN(n214), .Q(
        s1_ff1[6]) );
  DFCNQD1BWP12T30P140 s1_ff2_reg_6_ ( .D(s1_ff1[6]), .CP(n234), .CDN(n214), 
        .Q(s1_ff2[6]) );
  DFCNQD1BWP12T30P140 c1_reg ( .D(n52), .CP(n220), .CDN(n202), .Q(c1) );
  DFCNQD1BWP12T30P140 c2_reg ( .D(n35), .CP(n236), .CDN(n212), .Q(c2) );
  DFCNQD1BWP12T30P140 c3_reg ( .D(n18), .CP(n237), .CDN(n217), .Q(c3) );
  DFCNQD1BWP12T30P140 s1_reg_0_ ( .D(n53), .CP(n235), .CDN(n209), .Q(s1[0]) );
  DFCNQD1BWP12T30P140 s1_reg_15_ ( .D(n68), .CP(n222), .CDN(n212), .Q(s1[15])
         );
  DFCNQD1BWP12T30P140 s1_reg_14_ ( .D(n67), .CP(n222), .CDN(n204), .Q(s1[14])
         );
  DFCNQD1BWP12T30P140 s1_reg_13_ ( .D(n66), .CP(n222), .CDN(n203), .Q(s1[13])
         );
  DFCNQD1BWP12T30P140 s1_reg_12_ ( .D(n65), .CP(n222), .CDN(n213), .Q(s1[12])
         );
  DFCNQD1BWP12T30P140 s1_reg_11_ ( .D(n64), .CP(n222), .CDN(n208), .Q(s1[11])
         );
  DFCNQD1BWP12T30P140 s1_reg_10_ ( .D(n63), .CP(n222), .CDN(n207), .Q(s1[10])
         );
  DFCNQD1BWP12T30P140 s1_reg_9_ ( .D(n62), .CP(n222), .CDN(n205), .Q(s1[9]) );
  DFCNQD1BWP12T30P140 s1_reg_8_ ( .D(n61), .CP(n222), .CDN(n212), .Q(s1[8]) );
  DFCNQD1BWP12T30P140 s2_reg_11_ ( .D(n47), .CP(n221), .CDN(n212), .Q(s2[11])
         );
  DFCNQD1BWP12T30P140 s2_reg_10_ ( .D(n46), .CP(n221), .CDN(n204), .Q(s2[10])
         );
  DFCNQD1BWP12T30P140 s2_reg_9_ ( .D(n45), .CP(n221), .CDN(n203), .Q(s2[9]) );
  DFCNQD1BWP12T30P140 s2_reg_8_ ( .D(n44), .CP(n221), .CDN(n213), .Q(s2[8]) );
  DFCNQD1BWP12T30P140 s2_reg_7_ ( .D(n43), .CP(n221), .CDN(n208), .Q(s2[7]) );
  DFCNQD1BWP12T30P140 s2_reg_6_ ( .D(n42), .CP(n221), .CDN(n207), .Q(s2[6]) );
  DFCNQD1BWP12T30P140 s2_reg_5_ ( .D(n41), .CP(n221), .CDN(n206), .Q(s2[5]) );
  DFCNQD1BWP12T30P140 s2_reg_4_ ( .D(n40), .CP(n221), .CDN(n219), .Q(s2[4]) );
  DFCNQD1BWP12T30P140 s2_reg_3_ ( .D(n39), .CP(n221), .CDN(n205), .Q(s2[3]) );
  DFCNQD1BWP12T30P140 s2_reg_2_ ( .D(n38), .CP(n221), .CDN(n216), .Q(s2[2]) );
  DFCNQD1BWP12T30P140 s2_reg_1_ ( .D(n37), .CP(n221), .CDN(n211), .Q(s2[1]) );
  DFCNQD1BWP12T30P140 s2_reg_0_ ( .D(n36), .CP(n221), .CDN(n205), .Q(s2[0]) );
  DFCNQD1BWP12T30P140 s1_reg_7_ ( .D(n60), .CP(n235), .CDN(n204), .Q(s1[7]) );
  DFCNQD1BWP12T30P140 s1_reg_6_ ( .D(n59), .CP(n235), .CDN(n203), .Q(s1[6]) );
  DFCNQD1BWP12T30P140 s1_reg_5_ ( .D(n58), .CP(n235), .CDN(n213), .Q(s1[5]) );
  DFCNQD1BWP12T30P140 s1_reg_4_ ( .D(n57), .CP(n235), .CDN(n208), .Q(s1[4]) );
  DFCNQD1BWP12T30P140 s1_reg_3_ ( .D(n56), .CP(n235), .CDN(n207), .Q(s1[3]) );
  DFCNQD1BWP12T30P140 s1_reg_2_ ( .D(n55), .CP(n235), .CDN(n206), .Q(s1[2]) );
  DFCNQD1BWP12T30P140 s1_reg_1_ ( .D(n54), .CP(n235), .CDN(n204), .Q(s1[1]) );
  DFCNQD1BWP12T30P140 s2_reg_15_ ( .D(n51), .CP(n235), .CDN(n204), .Q(s2[15])
         );
  DFCNQD1BWP12T30P140 s2_reg_14_ ( .D(n50), .CP(n235), .CDN(n216), .Q(s2[14])
         );
  DFCNQD1BWP12T30P140 s2_reg_13_ ( .D(n49), .CP(n235), .CDN(rst_n), .Q(s2[13])
         );
  DFCNQD1BWP12T30P140 s2_reg_12_ ( .D(n48), .CP(n235), .CDN(n217), .Q(s2[12])
         );
  DFCNQD1BWP12T30P140 s3_reg_15_ ( .D(n34), .CP(n236), .CDN(n214), .Q(s3[15])
         );
  DFCNQD1BWP12T30P140 s3_reg_14_ ( .D(n33), .CP(n236), .CDN(n212), .Q(s3[14])
         );
  DFCNQD1BWP12T30P140 s3_reg_13_ ( .D(n32), .CP(n236), .CDN(n216), .Q(s3[13])
         );
  DFCNQD1BWP12T30P140 s3_reg_12_ ( .D(n31), .CP(n236), .CDN(n218), .Q(s3[12])
         );
  DFCNQD1BWP12T30P140 s3_reg_11_ ( .D(n30), .CP(n236), .CDN(n215), .Q(s3[11])
         );
  DFCNQD1BWP12T30P140 s3_reg_10_ ( .D(n29), .CP(n236), .CDN(n219), .Q(s3[10])
         );
  DFCNQD1BWP12T30P140 s3_reg_9_ ( .D(n28), .CP(n236), .CDN(n217), .Q(s3[9]) );
  DFCNQD1BWP12T30P140 s3_reg_8_ ( .D(n27), .CP(n236), .CDN(n202), .Q(s3[8]) );
  DFCNQD1BWP12T30P140 s3_reg_7_ ( .D(n26), .CP(n236), .CDN(n211), .Q(s3[7]) );
  DFCNQD1BWP12T30P140 s3_reg_6_ ( .D(n25), .CP(n236), .CDN(n214), .Q(s3[6]) );
  DFCNQD1BWP12T30P140 s3_reg_5_ ( .D(n24), .CP(n236), .CDN(n210), .Q(s3[5]) );
  DFCNQD1BWP12T30P140 s3_reg_4_ ( .D(n23), .CP(n237), .CDN(rst_n), .Q(s3[4])
         );
  DFCNQD1BWP12T30P140 s3_reg_3_ ( .D(n22), .CP(n237), .CDN(n202), .Q(s3[3]) );
  DFCNQD1BWP12T30P140 s3_reg_2_ ( .D(n21), .CP(n237), .CDN(n217), .Q(s3[2]) );
  DFCNQD1BWP12T30P140 s3_reg_1_ ( .D(n20), .CP(n237), .CDN(rst_n), .Q(s3[1])
         );
  DFCNQD1BWP12T30P140 s3_reg_0_ ( .D(n19), .CP(n237), .CDN(n203), .Q(s3[0]) );
  DFCNQD1BWP12T30P140 stage1_reg ( .D(i_en), .CP(n229), .CDN(n202), .Q(stage1)
         );
  DFCNQD1BWP12T30P140 stage2_reg ( .D(stage1), .CP(n229), .CDN(n202), .Q(
        stage2) );
  DFCNQD1BWP12T30P140 stage3_reg ( .D(stage2), .CP(n229), .CDN(n202), .Q(
        stage3) );
  CKMUX2D0BWP12T30P140 U72 ( .I0(result[58]), .I1(n70), .S(stage3), .Z(n12) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(s2[9]), .I1(n71), .S(stage1), .Z(n45) );
  FA1D0BWP12T30P140 U74 ( .A(b4_ff3[10]), .B(a4_ff3[10]), .CI(n72), .CO(n78), 
        .S(n70) );
  CKMUX2D0BWP12T30P140 U75 ( .I0(result[59]), .I1(n73), .S(stage3), .Z(n13) );
  FA1D0BWP12T30P140 U76 ( .A(b2_ff1[8]), .B(a2_ff1[8]), .CI(n74), .CO(n76), 
        .S(n75) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(s2[8]), .I1(n75), .S(stage1), .Z(n44) );
  FA1D0BWP12T30P140 U78 ( .A(b2_ff1[9]), .B(a2_ff1[9]), .CI(n76), .CO(n153), 
        .S(n71) );
  CKMUX2D0BWP12T30P140 U79 ( .I0(s2[11]), .I1(n77), .S(stage1), .Z(n47) );
  FA1D0BWP12T30P140 U80 ( .A(b4_ff3[11]), .B(a4_ff3[11]), .CI(n78), .CO(n82), 
        .S(n73) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(result[60]), .I1(n79), .S(stage3), .Z(n14) );
  FA1D0BWP12T30P140 U82 ( .A(b2_ff1[7]), .B(a2_ff1[7]), .CI(n80), .CO(n74), 
        .S(n81) );
  CKMUX2D0BWP12T30P140 U83 ( .I0(s2[7]), .I1(n81), .S(stage1), .Z(n43) );
  FA1D0BWP12T30P140 U84 ( .A(b4_ff3[12]), .B(a4_ff3[12]), .CI(n82), .CO(n86), 
        .S(n79) );
  CKMUX2D0BWP12T30P140 U85 ( .I0(result[61]), .I1(n83), .S(stage3), .Z(n15) );
  FA1D0BWP12T30P140 U86 ( .A(b2_ff1[6]), .B(a2_ff1[6]), .CI(n84), .CO(n80), 
        .S(n85) );
  CKMUX2D0BWP12T30P140 U87 ( .I0(s2[6]), .I1(n85), .S(stage1), .Z(n42) );
  FA1D0BWP12T30P140 U88 ( .A(b4_ff3[13]), .B(a4_ff3[13]), .CI(n86), .CO(n92), 
        .S(n83) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(result[62]), .I1(n87), .S(stage3), .Z(n16) );
  FA1D0BWP12T30P140 U90 ( .A(b2_ff1[5]), .B(a2_ff1[5]), .CI(n88), .CO(n84), 
        .S(n89) );
  CKMUX2D0BWP12T30P140 U91 ( .I0(s2[5]), .I1(n89), .S(stage1), .Z(n41) );
  ND2D0BWP12T30P140 U92 ( .A1(addb[0]), .A2(adda[0]), .ZN(n164) );
  INVD0BWP12T30P140 U93 ( .I(adda[1]), .ZN(n90) );
  INVD0BWP12T30P140 U94 ( .I(addb[1]), .ZN(n142) );
  MAOI222D0BWP12T30P140 U95 ( .A(n164), .B(n90), .C(n142), .ZN(n138) );
  CKMUX2D0BWP12T30P140 U96 ( .I0(s1[8]), .I1(n91), .S(i_en), .Z(n61) );
  FA1D0BWP12T30P140 U97 ( .A(b4_ff3[14]), .B(a4_ff3[14]), .CI(n92), .CO(n96), 
        .S(n87) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(result[63]), .I1(n93), .S(stage3), .Z(n17) );
  FA1D0BWP12T30P140 U99 ( .A(b2_ff1[4]), .B(a2_ff1[4]), .CI(n94), .CO(n88), 
        .S(n95) );
  CKMUX2D0BWP12T30P140 U100 ( .I0(s2[4]), .I1(n95), .S(stage1), .Z(n40) );
  FA1D0BWP12T30P140 U101 ( .A(b4_ff3[15]), .B(a4_ff3[15]), .CI(n96), .CO(n97), 
        .S(n93) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(result[64]), .I1(n97), .S(stage3), .Z(n1) );
  FA1D0BWP12T30P140 U103 ( .A(b2_ff1[3]), .B(a2_ff1[3]), .CI(n98), .CO(n94), 
        .S(n99) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(s2[3]), .I1(n99), .S(stage1), .Z(n39) );
  FA1D0BWP12T30P140 U105 ( .A(c3), .B(b4_ff3[0]), .CI(a4_ff3[0]), .CO(n105), 
        .S(n100) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(result[48]), .I1(n100), .S(stage3), .Z(n2)
         );
  FA1D0BWP12T30P140 U107 ( .A(b2_ff1[2]), .B(a2_ff1[2]), .CI(n101), .CO(n98), 
        .S(n102) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(s2[2]), .I1(n102), .S(stage1), .Z(n38) );
  FA1D0BWP12T30P140 U109 ( .A(adda[8]), .B(addb[8]), .CI(n103), .CO(n116), .S(
        n91) );
  CKMUX2D0BWP12T30P140 U110 ( .I0(s1[9]), .I1(n104), .S(i_en), .Z(n62) );
  FA1D0BWP12T30P140 U111 ( .A(b4_ff3[1]), .B(a4_ff3[1]), .CI(n105), .CO(n109), 
        .S(n106) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(result[49]), .I1(n106), .S(stage3), .Z(n3)
         );
  FA1D0BWP12T30P140 U113 ( .A(b2_ff1[1]), .B(a2_ff1[1]), .CI(n107), .CO(n101), 
        .S(n108) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(s2[1]), .I1(n108), .S(stage1), .Z(n37) );
  FA1D0BWP12T30P140 U115 ( .A(b4_ff3[2]), .B(a4_ff3[2]), .CI(n109), .CO(n112), 
        .S(n110) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(result[50]), .I1(n110), .S(stage3), .Z(n4)
         );
  FA1D0BWP12T30P140 U117 ( .A(c1), .B(b2_ff1[0]), .CI(a2_ff1[0]), .CO(n107), 
        .S(n111) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(s2[0]), .I1(n111), .S(stage1), .Z(n36) );
  FA1D0BWP12T30P140 U119 ( .A(b4_ff3[3]), .B(a4_ff3[3]), .CI(n112), .CO(n118), 
        .S(n113) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(result[51]), .I1(n113), .S(stage3), .Z(n5)
         );
  FA1D0BWP12T30P140 U121 ( .A(adda[7]), .B(addb[7]), .CI(n114), .CO(n103), .S(
        n115) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(s1[7]), .I1(n115), .S(i_en), .Z(n60) );
  FA1D0BWP12T30P140 U123 ( .A(adda[9]), .B(addb[9]), .CI(n116), .CO(n130), .S(
        n104) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(s1[10]), .I1(n117), .S(i_en), .Z(n63) );
  FA1D0BWP12T30P140 U125 ( .A(b4_ff3[4]), .B(a4_ff3[4]), .CI(n118), .CO(n122), 
        .S(n119) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(result[52]), .I1(n119), .S(stage3), .Z(n6)
         );
  FA1D0BWP12T30P140 U127 ( .A(adda[6]), .B(addb[6]), .CI(n120), .CO(n114), .S(
        n121) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(s1[6]), .I1(n121), .S(i_en), .Z(n59) );
  FA1D0BWP12T30P140 U129 ( .A(b4_ff3[5]), .B(a4_ff3[5]), .CI(n122), .CO(n126), 
        .S(n123) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(result[53]), .I1(n123), .S(stage3), .Z(n7)
         );
  FA1D0BWP12T30P140 U131 ( .A(adda[5]), .B(addb[5]), .CI(n124), .CO(n120), .S(
        n125) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(s1[5]), .I1(n125), .S(i_en), .Z(n58) );
  FA1D0BWP12T30P140 U133 ( .A(b4_ff3[6]), .B(a4_ff3[6]), .CI(n126), .CO(n132), 
        .S(n127) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(result[54]), .I1(n127), .S(stage3), .Z(n8)
         );
  FA1D0BWP12T30P140 U135 ( .A(adda[4]), .B(addb[4]), .CI(n128), .CO(n124), .S(
        n129) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(s1[4]), .I1(n129), .S(i_en), .Z(n57) );
  FA1D0BWP12T30P140 U137 ( .A(adda[10]), .B(addb[10]), .CI(n130), .CO(n145), 
        .S(n117) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(s1[11]), .I1(n131), .S(i_en), .Z(n64) );
  FA1D0BWP12T30P140 U139 ( .A(b4_ff3[7]), .B(a4_ff3[7]), .CI(n132), .CO(n136), 
        .S(n133) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(result[55]), .I1(n133), .S(stage3), .Z(n9)
         );
  FA1D0BWP12T30P140 U141 ( .A(adda[3]), .B(addb[3]), .CI(n134), .CO(n128), .S(
        n135) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(s1[3]), .I1(n135), .S(i_en), .Z(n56) );
  FA1D0BWP12T30P140 U143 ( .A(b4_ff3[8]), .B(a4_ff3[8]), .CI(n136), .CO(n140), 
        .S(n137) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(result[56]), .I1(n137), .S(stage3), .Z(n10)
         );
  FA1D0BWP12T30P140 U145 ( .A(adda[2]), .B(addb[2]), .CI(n138), .CO(n134), .S(
        n139) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(s1[2]), .I1(n139), .S(i_en), .Z(n55) );
  FA1D0BWP12T30P140 U147 ( .A(b4_ff3[9]), .B(a4_ff3[9]), .CI(n140), .CO(n72), 
        .S(n141) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(result[57]), .I1(n141), .S(stage3), .Z(n11)
         );
  MUX2ND0BWP12T30P140 U149 ( .I0(addb[1]), .I1(n142), .S(n164), .ZN(n143) );
  MAOI22D0BWP12T30P140 U150 ( .A1(adda[1]), .A2(n143), .B1(n143), .B2(adda[1]), 
        .ZN(n144) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(s1[1]), .I1(n144), .S(i_en), .Z(n54) );
  FA1D0BWP12T30P140 U152 ( .A(adda[11]), .B(addb[11]), .CI(n145), .CO(n149), 
        .S(n131) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(s1[12]), .I1(n146), .S(i_en), .Z(n65) );
  FA1D0BWP12T30P140 U154 ( .A(b2_ff1[11]), .B(a2_ff1[11]), .CI(n147), .CO(n157), .S(n77) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(s2[15]), .I1(n148), .S(stage1), .Z(n51) );
  FA1D0BWP12T30P140 U156 ( .A(adda[12]), .B(addb[12]), .CI(n149), .CO(n155), 
        .S(n146) );
  CKMUX2D0BWP12T30P140 U157 ( .I0(s1[13]), .I1(n150), .S(i_en), .Z(n66) );
  FA1D0BWP12T30P140 U158 ( .A(b2_ff1[14]), .B(a2_ff1[14]), .CI(n151), .CO(n172), .S(n152) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(s2[14]), .I1(n152), .S(stage1), .Z(n50) );
  FA1D0BWP12T30P140 U160 ( .A(b2_ff1[10]), .B(a2_ff1[10]), .CI(n153), .CO(n147), .S(n154) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(s2[10]), .I1(n154), .S(stage1), .Z(n46) );
  FA1D0BWP12T30P140 U162 ( .A(adda[13]), .B(addb[13]), .CI(n155), .CO(n159), 
        .S(n150) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(s1[14]), .I1(n156), .S(i_en), .Z(n67) );
  FA1D0BWP12T30P140 U164 ( .A(b2_ff1[12]), .B(a2_ff1[12]), .CI(n157), .CO(n167), .S(n158) );
  CKMUX2D0BWP12T30P140 U165 ( .I0(s2[12]), .I1(n158), .S(stage1), .Z(n48) );
  FA1D0BWP12T30P140 U166 ( .A(adda[14]), .B(addb[14]), .CI(n159), .CO(n194), 
        .S(n156) );
  CKMUX2D0BWP12T30P140 U167 ( .I0(s1[15]), .I1(n160), .S(i_en), .Z(n68) );
  CKMUX2D0BWP12T30P140 U168 ( .I0(s3[15]), .I1(n161), .S(stage2), .Z(n34) );
  FA1D0BWP12T30P140 U169 ( .A(b3_ff2[14]), .B(a3_ff2[14]), .CI(n162), .CO(n182), .S(n163) );
  CKMUX2D0BWP12T30P140 U170 ( .I0(s3[14]), .I1(n163), .S(stage2), .Z(n33) );
  INVD0BWP12T30P140 U171 ( .I(s1[0]), .ZN(n166) );
  OAI211D0BWP12T30P140 U172 ( .A1(addb[0]), .A2(adda[0]), .B(i_en), .C(n164), 
        .ZN(n165) );
  OAI21D0BWP12T30P140 U173 ( .A1(i_en), .A2(n166), .B(n165), .ZN(n53) );
  FA1D0BWP12T30P140 U174 ( .A(b2_ff1[13]), .B(a2_ff1[13]), .CI(n167), .CO(n151), .S(n168) );
  CKMUX2D0BWP12T30P140 U175 ( .I0(s2[13]), .I1(n168), .S(stage1), .Z(n49) );
  FA1D0BWP12T30P140 U176 ( .A(b3_ff2[11]), .B(a3_ff2[11]), .CI(n169), .CO(n184), .S(n170) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(s3[11]), .I1(n170), .S(stage2), .Z(n30) );
  FA1D0BWP12T30P140 U178 ( .A(c2), .B(b3_ff2[0]), .CI(a3_ff2[0]), .CO(n200), 
        .S(n171) );
  CKMUX2D0BWP12T30P140 U179 ( .I0(s3[0]), .I1(n171), .S(stage2), .Z(n19) );
  FA1D0BWP12T30P140 U180 ( .A(b2_ff1[15]), .B(a2_ff1[15]), .CI(n172), .CO(n173), .S(n148) );
  CKMUX2D0BWP12T30P140 U181 ( .I0(c2), .I1(n173), .S(stage1), .Z(n35) );
  FA1D0BWP12T30P140 U182 ( .A(b3_ff2[13]), .B(a3_ff2[13]), .CI(n174), .CO(n162), .S(n175) );
  CKMUX2D0BWP12T30P140 U183 ( .I0(s3[13]), .I1(n175), .S(stage2), .Z(n32) );
  FA1D0BWP12T30P140 U184 ( .A(b3_ff2[10]), .B(a3_ff2[10]), .CI(n176), .CO(n169), .S(n177) );
  CKMUX2D0BWP12T30P140 U185 ( .I0(s3[10]), .I1(n177), .S(stage2), .Z(n29) );
  FA1D0BWP12T30P140 U186 ( .A(b3_ff2[2]), .B(a3_ff2[2]), .CI(n178), .CO(n198), 
        .S(n179) );
  CKMUX2D0BWP12T30P140 U187 ( .I0(s3[2]), .I1(n179), .S(stage2), .Z(n21) );
  FA1D0BWP12T30P140 U188 ( .A(b3_ff2[6]), .B(a3_ff2[6]), .CI(n180), .CO(n196), 
        .S(n181) );
  CKMUX2D0BWP12T30P140 U189 ( .I0(s3[6]), .I1(n181), .S(stage2), .Z(n25) );
  FA1D0BWP12T30P140 U190 ( .A(b3_ff2[15]), .B(a3_ff2[15]), .CI(n182), .CO(n183), .S(n161) );
  CKMUX2D0BWP12T30P140 U191 ( .I0(c3), .I1(n183), .S(stage2), .Z(n18) );
  FA1D0BWP12T30P140 U192 ( .A(b3_ff2[12]), .B(a3_ff2[12]), .CI(n184), .CO(n174), .S(n185) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(s3[12]), .I1(n185), .S(stage2), .Z(n31) );
  FA1D0BWP12T30P140 U194 ( .A(b3_ff2[9]), .B(a3_ff2[9]), .CI(n186), .CO(n176), 
        .S(n187) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(s3[9]), .I1(n187), .S(stage2), .Z(n28) );
  FA1D0BWP12T30P140 U196 ( .A(b3_ff2[5]), .B(a3_ff2[5]), .CI(n188), .CO(n180), 
        .S(n189) );
  CKMUX2D0BWP12T30P140 U197 ( .I0(s3[5]), .I1(n189), .S(stage2), .Z(n24) );
  FA1D0BWP12T30P140 U198 ( .A(b3_ff2[4]), .B(a3_ff2[4]), .CI(n190), .CO(n188), 
        .S(n191) );
  CKMUX2D0BWP12T30P140 U199 ( .I0(s3[4]), .I1(n191), .S(stage2), .Z(n23) );
  FA1D0BWP12T30P140 U200 ( .A(b3_ff2[8]), .B(a3_ff2[8]), .CI(n192), .CO(n186), 
        .S(n193) );
  CKMUX2D0BWP12T30P140 U201 ( .I0(s3[8]), .I1(n193), .S(stage2), .Z(n27) );
  FA1D0BWP12T30P140 U202 ( .A(adda[15]), .B(addb[15]), .CI(n194), .CO(n195), 
        .S(n160) );
  CKMUX2D0BWP12T30P140 U203 ( .I0(c1), .I1(n195), .S(i_en), .Z(n52) );
  FA1D0BWP12T30P140 U204 ( .A(b3_ff2[7]), .B(a3_ff2[7]), .CI(n196), .CO(n192), 
        .S(n197) );
  CKMUX2D0BWP12T30P140 U205 ( .I0(s3[7]), .I1(n197), .S(stage2), .Z(n26) );
  FA1D0BWP12T30P140 U206 ( .A(b3_ff2[3]), .B(a3_ff2[3]), .CI(n198), .CO(n190), 
        .S(n199) );
  CKMUX2D0BWP12T30P140 U207 ( .I0(s3[3]), .I1(n199), .S(stage2), .Z(n22) );
  FA1D0BWP12T30P140 U208 ( .A(b3_ff2[1]), .B(a3_ff2[1]), .CI(n200), .CO(n178), 
        .S(n201) );
  CKMUX2D0BWP12T30P140 U209 ( .I0(s3[1]), .I1(n201), .S(stage2), .Z(n20) );
  CKBD0BWP12T30P140 U210 ( .I(clk), .Z(n231) );
  CKBD0BWP12T30P140 U211 ( .I(n231), .Z(n226) );
  CKBD0BWP12T30P140 U212 ( .I(clk), .Z(n232) );
  CKBD0BWP12T30P140 U213 ( .I(n232), .Z(n225) );
  CKBD0BWP12T30P140 U214 ( .I(clk), .Z(n237) );
  CKBD0BWP12T30P140 U215 ( .I(n237), .Z(n220) );
  CKBD0BWP12T30P140 U216 ( .I(clk), .Z(n235) );
  CKBD0BWP12T30P140 U217 ( .I(n235), .Z(n222) );
  CKBD0BWP12T30P140 U218 ( .I(clk), .Z(n236) );
  CKBD0BWP12T30P140 U219 ( .I(n236), .Z(n221) );
  CKBD0BWP12T30P140 U220 ( .I(clk), .Z(n234) );
  CKBD0BWP12T30P140 U221 ( .I(n234), .Z(n223) );
  CKBD0BWP12T30P140 U222 ( .I(clk), .Z(n233) );
  CKBD0BWP12T30P140 U223 ( .I(n233), .Z(n224) );
  CKBD0BWP12T30P140 U224 ( .I(clk), .Z(n229) );
  CKBD0BWP12T30P140 U225 ( .I(clk), .Z(n228) );
  CKBD0BWP12T30P140 U226 ( .I(clk), .Z(n230) );
  CKBD0BWP12T30P140 U227 ( .I(n230), .Z(n227) );
  CKBD0BWP12T30P140 U228 ( .I(rst_n), .Z(n206) );
  CKBD0BWP12T30P140 U229 ( .I(rst_n), .Z(n207) );
  CKBD0BWP12T30P140 U230 ( .I(rst_n), .Z(n208) );
  CKBD0BWP12T30P140 U231 ( .I(rst_n), .Z(n216) );
  CKBD0BWP12T30P140 U232 ( .I(n216), .Z(n213) );
  CKBD0BWP12T30P140 U233 ( .I(rst_n), .Z(n203) );
  CKBD0BWP12T30P140 U234 ( .I(rst_n), .Z(n204) );
  CKBD0BWP12T30P140 U235 ( .I(rst_n), .Z(n217) );
  CKBD0BWP12T30P140 U236 ( .I(n217), .Z(n212) );
  CKBD0BWP12T30P140 U237 ( .I(rst_n), .Z(n205) );
  CKBD0BWP12T30P140 U238 ( .I(rst_n), .Z(n209) );
  CKBD0BWP12T30P140 U239 ( .I(rst_n), .Z(n219) );
  CKBD0BWP12T30P140 U240 ( .I(n219), .Z(n210) );
  CKBD0BWP12T30P140 U241 ( .I(rst_n), .Z(n215) );
  CKBD0BWP12T30P140 U242 ( .I(n215), .Z(n214) );
  CKBD0BWP12T30P140 U243 ( .I(rst_n), .Z(n218) );
  CKBD0BWP12T30P140 U244 ( .I(n218), .Z(n211) );
  CKBD0BWP12T30P140 U245 ( .I(rst_n), .Z(n202) );
endmodule

