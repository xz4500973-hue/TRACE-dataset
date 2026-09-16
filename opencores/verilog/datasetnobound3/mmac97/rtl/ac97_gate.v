/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:30:57 2026
/////////////////////////////////////////////////////////////


module asfifo_data_width2_address_width6_1 ( data_out, empty, read_en, 
        clk_read, data_in, full, write_en, clk_write, rst );
  output [1:0] data_out;
  input [1:0] data_in;
  input read_en, clk_read, write_en, clk_write, rst;
  output empty, full;
  wire   n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377;
  wire   [5:0] wr_ptr;
  wire   [127:0] mem;
  wire   [5:0] rd_ptr;

  DFCNQD1BWP12T30P140 rd_ptr_reg_3_ ( .D(n235), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[3]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_1_ ( .D(n237), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_reg_1_ ( .D(n232), .CP(clk_read), .CDN(n371), .Q(data_out[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_0_ ( .D(n230), .CP(n376), .CDN(n371), .Q(
        wr_ptr[0]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_4_ ( .D(n234), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[4]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_3_ ( .D(n228), .CP(n376), .CDN(n371), .Q(
        wr_ptr[3]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n102), .CP(n376), .Q(mem[123]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n103), .CP(n376), .Q(mem[122]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n104), .CP(n376), .Q(mem[121]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n105), .CP(n376), .Q(mem[120]) );
  DFQD2BWP12T30P140 mem_reg_6__0_ ( .D(n111), .CP(n375), .Q(mem[114]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n112), .CP(n375), .Q(mem[113]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n113), .CP(n375), .Q(mem[112]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n118), .CP(n374), .Q(mem[107]) );
  DFQD2BWP12T30P140 mem_reg_10__0_ ( .D(n119), .CP(n374), .Q(mem[106]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n120), .CP(n374), .Q(mem[105]) );
  DFQD2BWP12T30P140 mem_reg_11__0_ ( .D(n121), .CP(n374), .Q(mem[104]) );
  DFQD2BWP12T30P140 mem_reg_14__1_ ( .D(n126), .CP(n374), .Q(mem[99]) );
  DFQD2BWP12T30P140 mem_reg_14__0_ ( .D(n127), .CP(n374), .Q(mem[98]) );
  DFQD2BWP12T30P140 mem_reg_15__1_ ( .D(n128), .CP(n374), .Q(mem[97]) );
  DFQD2BWP12T30P140 mem_reg_15__0_ ( .D(n129), .CP(n374), .Q(mem[96]) );
  DFQD2BWP12T30P140 mem_reg_18__1_ ( .D(n134), .CP(n373), .Q(mem[91]) );
  DFQD2BWP12T30P140 mem_reg_18__0_ ( .D(n135), .CP(n373), .Q(mem[90]) );
  DFQD2BWP12T30P140 mem_reg_19__1_ ( .D(n136), .CP(n373), .Q(mem[89]) );
  DFQD2BWP12T30P140 mem_reg_22__1_ ( .D(n142), .CP(n372), .Q(mem[83]) );
  DFQD2BWP12T30P140 mem_reg_22__0_ ( .D(n143), .CP(n372), .Q(mem[82]) );
  DFQD2BWP12T30P140 mem_reg_23__1_ ( .D(n144), .CP(n372), .Q(mem[81]) );
  DFQD2BWP12T30P140 mem_reg_23__0_ ( .D(n145), .CP(n372), .Q(mem[80]) );
  DFQD2BWP12T30P140 mem_reg_26__1_ ( .D(n150), .CP(n372), .Q(mem[75]) );
  DFQD2BWP12T30P140 mem_reg_26__0_ ( .D(n151), .CP(n372), .Q(mem[74]) );
  DFQD2BWP12T30P140 mem_reg_27__1_ ( .D(n152), .CP(n372), .Q(mem[73]) );
  DFQD2BWP12T30P140 mem_reg_27__0_ ( .D(n153), .CP(n372), .Q(mem[72]) );
  DFQD2BWP12T30P140 mem_reg_30__1_ ( .D(n158), .CP(n373), .Q(mem[67]) );
  DFQD2BWP12T30P140 mem_reg_30__0_ ( .D(n159), .CP(n372), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_31__1_ ( .D(n160), .CP(n376), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_31__0_ ( .D(n161), .CP(n377), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_34__1_ ( .D(n166), .CP(n373), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_34__0_ ( .D(n167), .CP(n372), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_35__0_ ( .D(n169), .CP(n376), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_38__1_ ( .D(n174), .CP(n372), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_38__0_ ( .D(n175), .CP(n372), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_39__1_ ( .D(n176), .CP(n376), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_39__0_ ( .D(n177), .CP(n377), .Q(mem[48]) );
  DFQD2BWP12T30P140 mem_reg_42__1_ ( .D(n182), .CP(n375), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_42__0_ ( .D(n183), .CP(n374), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_43__1_ ( .D(n184), .CP(n373), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_43__0_ ( .D(n185), .CP(n372), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_46__0_ ( .D(n191), .CP(n372), .Q(mem[34]) );
  DFQD2BWP12T30P140 mem_reg_50__1_ ( .D(n198), .CP(n375), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_50__0_ ( .D(n199), .CP(n374), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_51__1_ ( .D(n200), .CP(n373), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_51__0_ ( .D(n201), .CP(n372), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_55__1_ ( .D(n208), .CP(n377), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_58__1_ ( .D(n214), .CP(n377), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_58__0_ ( .D(n215), .CP(n377), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_59__1_ ( .D(n216), .CP(n377), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_62__1_ ( .D(n222), .CP(n377), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n98), .CP(n376), .Q(mem[127]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n99), .CP(n376), .Q(mem[126]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n100), .CP(n376), .Q(mem[125]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n101), .CP(n376), .Q(mem[124]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n106), .CP(n375), .Q(mem[119]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n107), .CP(n375), .Q(mem[118]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n108), .CP(n375), .Q(mem[117]) );
  DFQD2BWP12T30P140 mem_reg_5__0_ ( .D(n109), .CP(n375), .Q(mem[116]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n114), .CP(n375), .Q(mem[111]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n116), .CP(n375), .Q(mem[109]) );
  DFQD2BWP12T30P140 mem_reg_9__0_ ( .D(n117), .CP(n375), .Q(mem[108]) );
  DFQD2BWP12T30P140 mem_reg_12__1_ ( .D(n122), .CP(n374), .Q(mem[103]) );
  DFQD2BWP12T30P140 mem_reg_12__0_ ( .D(n123), .CP(n374), .Q(mem[102]) );
  DFQD2BWP12T30P140 mem_reg_13__1_ ( .D(n124), .CP(n374), .Q(mem[101]) );
  DFQD2BWP12T30P140 mem_reg_13__0_ ( .D(n125), .CP(n374), .Q(mem[100]) );
  DFQD2BWP12T30P140 mem_reg_16__1_ ( .D(n130), .CP(n373), .Q(mem[95]) );
  DFQD2BWP12T30P140 mem_reg_16__0_ ( .D(n131), .CP(n373), .Q(mem[94]) );
  DFQD2BWP12T30P140 mem_reg_17__1_ ( .D(n132), .CP(n373), .Q(mem[93]) );
  DFQD2BWP12T30P140 mem_reg_17__0_ ( .D(n133), .CP(n373), .Q(mem[92]) );
  DFQD2BWP12T30P140 mem_reg_20__1_ ( .D(n138), .CP(n373), .Q(mem[87]) );
  DFQD2BWP12T30P140 mem_reg_20__0_ ( .D(n139), .CP(n373), .Q(mem[86]) );
  DFQD2BWP12T30P140 mem_reg_21__1_ ( .D(n140), .CP(n373), .Q(mem[85]) );
  DFQD2BWP12T30P140 mem_reg_21__0_ ( .D(n141), .CP(n373), .Q(mem[84]) );
  DFQD2BWP12T30P140 mem_reg_24__0_ ( .D(n147), .CP(n372), .Q(mem[78]) );
  DFQD2BWP12T30P140 mem_reg_25__1_ ( .D(n148), .CP(n372), .Q(mem[77]) );
  DFQD2BWP12T30P140 mem_reg_25__0_ ( .D(n149), .CP(n372), .Q(mem[76]) );
  DFQD2BWP12T30P140 mem_reg_28__1_ ( .D(n154), .CP(n376), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_28__0_ ( .D(n155), .CP(n377), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_29__1_ ( .D(n156), .CP(n375), .Q(mem[69]) );
  DFQD2BWP12T30P140 mem_reg_29__0_ ( .D(n157), .CP(n374), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_32__1_ ( .D(n162), .CP(n375), .Q(mem[63]) );
  DFQD2BWP12T30P140 mem_reg_32__0_ ( .D(n163), .CP(n374), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_33__1_ ( .D(n164), .CP(n373), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_33__0_ ( .D(n165), .CP(n372), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_36__1_ ( .D(n170), .CP(n377), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_36__0_ ( .D(n171), .CP(n375), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_37__1_ ( .D(n172), .CP(n374), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_40__1_ ( .D(n178), .CP(n375), .Q(mem[47]) );
  DFQD2BWP12T30P140 mem_reg_41__1_ ( .D(n180), .CP(n376), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_41__0_ ( .D(n181), .CP(n377), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_44__1_ ( .D(n186), .CP(n374), .Q(mem[39]) );
  DFQD2BWP12T30P140 mem_reg_44__0_ ( .D(n187), .CP(n374), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_45__1_ ( .D(n188), .CP(n376), .Q(mem[37]) );
  DFQD2BWP12T30P140 mem_reg_45__0_ ( .D(n189), .CP(n377), .Q(mem[36]) );
  DFQD2BWP12T30P140 mem_reg_48__1_ ( .D(n194), .CP(n375), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_49__1_ ( .D(n197), .CP(n376), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_49__0_ ( .D(n196), .CP(n377), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_52__1_ ( .D(n202), .CP(n377), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_53__1_ ( .D(n204), .CP(n377), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_56__1_ ( .D(n210), .CP(n377), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_56__0_ ( .D(n211), .CP(n375), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_57__0_ ( .D(n213), .CP(n373), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_60__1_ ( .D(n218), .CP(n377), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_61__1_ ( .D(n220), .CP(n377), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_63__1_ ( .D(n225), .CP(n377), .Q(mem[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_4_ ( .D(n227), .CP(n376), .CDN(n371), .Q(
        wr_ptr[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_reg_0_ ( .D(n238), .CP(clk_read), .CDN(n371), .Q(data_out[0]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_1_ ( .D(n231), .CP(n376), .CDN(n371), .Q(
        wr_ptr[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_2_ ( .D(n229), .CP(n376), .CDN(n371), .Q(
        wr_ptr[2]) );
  DFQD2BWP12T30P140 mem_reg_46__1_ ( .D(n190), .CP(clk_write), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_47__1_ ( .D(n192), .CP(clk_write), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_47__0_ ( .D(n193), .CP(clk_write), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_54__0_ ( .D(n207), .CP(clk_write), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_55__0_ ( .D(n209), .CP(clk_write), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_59__0_ ( .D(n217), .CP(clk_write), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_40__0_ ( .D(n179), .CP(clk_write), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_48__0_ ( .D(n195), .CP(clk_write), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_52__0_ ( .D(n203), .CP(clk_write), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_53__0_ ( .D(n205), .CP(clk_write), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_60__0_ ( .D(n219), .CP(clk_write), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_61__0_ ( .D(n221), .CP(clk_write), .Q(mem[4]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_5_ ( .D(n233), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[5]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_5_ ( .D(n226), .CP(n377), .CDN(n371), .Q(
        wr_ptr[5]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_2_ ( .D(n236), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[2]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_0_ ( .D(n239), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[0]) );
  DFQD1BWP12T30P140 mem_reg_6__1_ ( .D(n110), .CP(n375), .Q(mem[115]) );
  DFQD1BWP12T30P140 mem_reg_19__0_ ( .D(n137), .CP(n373), .Q(mem[88]) );
  DFQD1BWP12T30P140 mem_reg_35__1_ ( .D(n168), .CP(n373), .Q(mem[57]) );
  DFQD1BWP12T30P140 mem_reg_54__1_ ( .D(n206), .CP(n377), .Q(mem[19]) );
  DFQD1BWP12T30P140 mem_reg_8__0_ ( .D(n115), .CP(n375), .Q(mem[110]) );
  DFQD1BWP12T30P140 mem_reg_24__1_ ( .D(n146), .CP(n372), .Q(mem[79]) );
  DFQD1BWP12T30P140 mem_reg_37__0_ ( .D(n173), .CP(n373), .Q(mem[52]) );
  DFQD1BWP12T30P140 mem_reg_57__1_ ( .D(n212), .CP(n374), .Q(mem[13]) );
  DFQD1BWP12T30P140 mem_reg_63__0_ ( .D(n224), .CP(clk_write), .Q(mem[0]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n223), .CP(clk_write), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(wr_ptr[1]), .ZN(n38) );
  INVD0BWP12T30P140 U4 ( .I(wr_ptr[0]), .ZN(n230) );
  ND3D0BWP12T30P140 U5 ( .A1(n230), .A2(n38), .A3(wr_ptr[2]), .ZN(n350) );
  NR3D0BWP12T30P140 U6 ( .A1(wr_ptr[3]), .A2(wr_ptr[4]), .A3(rst), .ZN(n10) );
  INVD0BWP12T30P140 U7 ( .I(wr_ptr[5]), .ZN(n370) );
  ND2D0BWP12T30P140 U8 ( .A1(n10), .A2(n370), .ZN(n34) );
  NR2D0BWP12T30P140 U9 ( .A1(n350), .A2(n34), .ZN(n2) );
  INVD0BWP12T30P140 U10 ( .I(data_in[0]), .ZN(n348) );
  CKBD0BWP12T30P140 U11 ( .I(n348), .Z(n328) );
  MAOI22D0BWP12T30P140 U12 ( .A1(n2), .A2(n328), .B1(mem[118]), .B2(n2), .ZN(
        n107) );
  INVD0BWP12T30P140 U13 ( .I(data_in[1]), .ZN(n361) );
  CKBD0BWP12T30P140 U14 ( .I(n361), .Z(n356) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n2), .A2(n356), .B1(mem[119]), .B2(n2), .ZN(
        n106) );
  NR2D0BWP12T30P140 U16 ( .A1(wr_ptr[1]), .A2(n230), .ZN(n309) );
  INVD0BWP12T30P140 U17 ( .I(wr_ptr[2]), .ZN(n311) );
  ND2D0BWP12T30P140 U18 ( .A1(n309), .A2(n311), .ZN(n352) );
  NR2D0BWP12T30P140 U19 ( .A1(n352), .A2(n34), .ZN(n3) );
  CKBD0BWP12T30P140 U20 ( .I(n348), .Z(n321) );
  MAOI22D0BWP12T30P140 U21 ( .A1(n3), .A2(n321), .B1(mem[124]), .B2(n3), .ZN(
        n101) );
  MAOI22D0BWP12T30P140 U22 ( .A1(n3), .A2(n356), .B1(mem[125]), .B2(n3), .ZN(
        n100) );
  ND3D0BWP12T30P140 U23 ( .A1(n230), .A2(n38), .A3(n311), .ZN(n347) );
  NR2D0BWP12T30P140 U24 ( .A1(n347), .A2(n34), .ZN(n4) );
  CKBD0BWP12T30P140 U25 ( .I(n348), .Z(n360) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n4), .A2(n360), .B1(mem[126]), .B2(n4), .ZN(
        n99) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n4), .A2(n356), .B1(mem[127]), .B2(n4), .ZN(
        n98) );
  INVD0BWP12T30P140 U28 ( .I(wr_ptr[4]), .ZN(n364) );
  INVD0BWP12T30P140 U29 ( .I(wr_ptr[3]), .ZN(n365) );
  NR3D0BWP12T30P140 U30 ( .A1(rst), .A2(n364), .A3(n365), .ZN(n15) );
  ND2D0BWP12T30P140 U31 ( .A1(wr_ptr[5]), .A2(n15), .ZN(n248) );
  ND3D0BWP12T30P140 U32 ( .A1(n230), .A2(wr_ptr[1]), .A3(wr_ptr[2]), .ZN(n31)
         );
  NR2D0BWP12T30P140 U33 ( .A1(n248), .A2(n31), .ZN(n327) );
  CKBD0BWP12T30P140 U34 ( .I(n361), .Z(n343) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n327), .A2(n343), .B1(mem[3]), .B2(n327), 
        .ZN(n222) );
  NR2D0BWP12T30P140 U36 ( .A1(n38), .A2(n230), .ZN(n312) );
  ND2D0BWP12T30P140 U37 ( .A1(n312), .A2(n311), .ZN(n310) );
  NR2D0BWP12T30P140 U38 ( .A1(n248), .A2(n310), .ZN(n318) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n318), .A2(n356), .B1(mem[9]), .B2(n318), 
        .ZN(n216) );
  ND3D0BWP12T30P140 U40 ( .A1(n230), .A2(n311), .A3(wr_ptr[1]), .ZN(n35) );
  NR2D0BWP12T30P140 U41 ( .A1(n248), .A2(n35), .ZN(n5) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n5), .A2(n328), .B1(mem[10]), .B2(n5), .ZN(
        n215) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n5), .A2(n361), .B1(mem[11]), .B2(n5), .ZN(
        n214) );
  ND2D0BWP12T30P140 U44 ( .A1(wr_ptr[2]), .A2(n312), .ZN(n363) );
  NR3D0BWP12T30P140 U45 ( .A1(wr_ptr[3]), .A2(rst), .A3(n364), .ZN(n20) );
  ND2D0BWP12T30P140 U46 ( .A1(wr_ptr[5]), .A2(n20), .ZN(n245) );
  NR2D0BWP12T30P140 U47 ( .A1(n363), .A2(n245), .ZN(n317) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n317), .A2(n361), .B1(mem[17]), .B2(n317), 
        .ZN(n208) );
  NR2D0BWP12T30P140 U49 ( .A1(n31), .A2(n245), .ZN(n316) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n316), .A2(n361), .B1(mem[19]), .B2(n316), 
        .ZN(n206) );
  NR2D0BWP12T30P140 U51 ( .A1(n310), .A2(n245), .ZN(n6) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n6), .A2(n328), .B1(mem[24]), .B2(n6), .ZN(
        n201) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n6), .A2(n361), .B1(mem[25]), .B2(n6), .ZN(
        n200) );
  NR2D0BWP12T30P140 U54 ( .A1(n35), .A2(n245), .ZN(n7) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n7), .A2(n321), .B1(mem[26]), .B2(n7), .ZN(
        n199) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n7), .A2(n361), .B1(mem[27]), .B2(n7), .ZN(
        n198) );
  NR3D0BWP12T30P140 U57 ( .A1(wr_ptr[4]), .A2(rst), .A3(n365), .ZN(n25) );
  ND2D0BWP12T30P140 U58 ( .A1(wr_ptr[5]), .A2(n25), .ZN(n314) );
  NR2D0BWP12T30P140 U59 ( .A1(n31), .A2(n314), .ZN(n313) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n313), .A2(n321), .B1(mem[34]), .B2(n313), 
        .ZN(n191) );
  NR2D0BWP12T30P140 U61 ( .A1(n310), .A2(n314), .ZN(n8) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n8), .A2(n321), .B1(mem[40]), .B2(n8), .ZN(
        n185) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n8), .A2(n361), .B1(mem[41]), .B2(n8), .ZN(
        n184) );
  NR2D0BWP12T30P140 U64 ( .A1(n35), .A2(n314), .ZN(n9) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n9), .A2(n321), .B1(mem[42]), .B2(n9), .ZN(
        n183) );
  CKBD0BWP12T30P140 U66 ( .I(n361), .Z(n354) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n9), .A2(n354), .B1(mem[43]), .B2(n9), .ZN(
        n182) );
  ND2D0BWP12T30P140 U68 ( .A1(wr_ptr[5]), .A2(n10), .ZN(n358) );
  NR2D0BWP12T30P140 U69 ( .A1(n363), .A2(n358), .ZN(n11) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n11), .A2(n321), .B1(mem[48]), .B2(n11), .ZN(
        n177) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n11), .A2(n361), .B1(mem[49]), .B2(n11), .ZN(
        n176) );
  NR2D0BWP12T30P140 U72 ( .A1(n31), .A2(n358), .ZN(n12) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n12), .A2(n321), .B1(mem[50]), .B2(n12), .ZN(
        n175) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n12), .A2(n354), .B1(mem[51]), .B2(n12), .ZN(
        n174) );
  NR2D0BWP12T30P140 U75 ( .A1(n310), .A2(n358), .ZN(n13) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n13), .A2(n360), .B1(mem[56]), .B2(n13), .ZN(
        n169) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n13), .A2(n354), .B1(mem[57]), .B2(n13), .ZN(
        n168) );
  NR2D0BWP12T30P140 U78 ( .A1(n35), .A2(n358), .ZN(n14) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n14), .A2(n360), .B1(mem[58]), .B2(n14), .ZN(
        n167) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n14), .A2(n354), .B1(mem[59]), .B2(n14), .ZN(
        n166) );
  ND2D0BWP12T30P140 U81 ( .A1(n15), .A2(n370), .ZN(n342) );
  NR2D0BWP12T30P140 U82 ( .A1(n363), .A2(n342), .ZN(n16) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n16), .A2(n360), .B1(mem[64]), .B2(n16), .ZN(
        n161) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n16), .A2(n354), .B1(mem[65]), .B2(n16), .ZN(
        n160) );
  NR2D0BWP12T30P140 U85 ( .A1(n31), .A2(n342), .ZN(n17) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n17), .A2(n360), .B1(mem[66]), .B2(n17), .ZN(
        n159) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n17), .A2(n354), .B1(mem[67]), .B2(n17), .ZN(
        n158) );
  NR2D0BWP12T30P140 U88 ( .A1(n310), .A2(n342), .ZN(n18) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n18), .A2(n360), .B1(mem[72]), .B2(n18), .ZN(
        n153) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n18), .A2(n354), .B1(mem[73]), .B2(n18), .ZN(
        n152) );
  NR2D0BWP12T30P140 U91 ( .A1(n35), .A2(n342), .ZN(n19) );
  MAOI22D0BWP12T30P140 U92 ( .A1(n19), .A2(n360), .B1(mem[74]), .B2(n19), .ZN(
        n151) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n19), .A2(n354), .B1(mem[75]), .B2(n19), .ZN(
        n150) );
  ND2D0BWP12T30P140 U94 ( .A1(n20), .A2(n370), .ZN(n335) );
  NR2D0BWP12T30P140 U95 ( .A1(n363), .A2(n335), .ZN(n21) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n21), .A2(n328), .B1(mem[80]), .B2(n21), .ZN(
        n145) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n21), .A2(n343), .B1(mem[81]), .B2(n21), .ZN(
        n144) );
  NR2D0BWP12T30P140 U98 ( .A1(n31), .A2(n335), .ZN(n22) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n22), .A2(n321), .B1(mem[82]), .B2(n22), .ZN(
        n143) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n22), .A2(n343), .B1(mem[83]), .B2(n22), 
        .ZN(n142) );
  NR2D0BWP12T30P140 U101 ( .A1(n310), .A2(n335), .ZN(n23) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n23), .A2(n328), .B1(mem[88]), .B2(n23), 
        .ZN(n137) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n23), .A2(n343), .B1(mem[89]), .B2(n23), 
        .ZN(n136) );
  NR2D0BWP12T30P140 U104 ( .A1(n35), .A2(n335), .ZN(n24) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n24), .A2(n321), .B1(mem[90]), .B2(n24), 
        .ZN(n135) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n24), .A2(n343), .B1(mem[91]), .B2(n24), 
        .ZN(n134) );
  ND2D0BWP12T30P140 U107 ( .A1(n25), .A2(n370), .ZN(n346) );
  NR2D0BWP12T30P140 U108 ( .A1(n363), .A2(n346), .ZN(n26) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n26), .A2(n328), .B1(mem[96]), .B2(n26), 
        .ZN(n129) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n26), .A2(n343), .B1(mem[97]), .B2(n26), 
        .ZN(n128) );
  NR2D0BWP12T30P140 U111 ( .A1(n31), .A2(n346), .ZN(n27) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n27), .A2(n321), .B1(mem[98]), .B2(n27), 
        .ZN(n127) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n27), .A2(n343), .B1(mem[99]), .B2(n27), 
        .ZN(n126) );
  NR2D0BWP12T30P140 U114 ( .A1(n310), .A2(n346), .ZN(n28) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n28), .A2(n348), .B1(mem[104]), .B2(n28), 
        .ZN(n121) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n28), .A2(n343), .B1(mem[105]), .B2(n28), 
        .ZN(n120) );
  NR2D0BWP12T30P140 U117 ( .A1(n35), .A2(n346), .ZN(n29) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n29), .A2(n348), .B1(mem[106]), .B2(n29), 
        .ZN(n119) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n29), .A2(n356), .B1(mem[107]), .B2(n29), 
        .ZN(n118) );
  NR2D0BWP12T30P140 U120 ( .A1(n363), .A2(n34), .ZN(n30) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n30), .A2(n348), .B1(mem[112]), .B2(n30), 
        .ZN(n113) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n30), .A2(n356), .B1(mem[113]), .B2(n30), 
        .ZN(n112) );
  ND2D0BWP12T30P140 U123 ( .A1(wr_ptr[2]), .A2(n309), .ZN(n359) );
  NR2D0BWP12T30P140 U124 ( .A1(n359), .A2(n34), .ZN(n240) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n240), .A2(n356), .B1(mem[117]), .B2(n240), 
        .ZN(n108) );
  NR2D0BWP12T30P140 U126 ( .A1(n31), .A2(n34), .ZN(n32) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n32), .A2(n348), .B1(mem[114]), .B2(n32), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n32), .A2(n356), .B1(mem[115]), .B2(n32), 
        .ZN(n110) );
  NR2D0BWP12T30P140 U129 ( .A1(n310), .A2(n34), .ZN(n33) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n33), .A2(n348), .B1(mem[120]), .B2(n33), 
        .ZN(n105) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n33), .A2(n356), .B1(mem[121]), .B2(n33), 
        .ZN(n104) );
  NR2D0BWP12T30P140 U132 ( .A1(n35), .A2(n34), .ZN(n36) );
  MAOI22D0BWP12T30P140 U133 ( .A1(n36), .A2(n328), .B1(mem[122]), .B2(n36), 
        .ZN(n103) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n36), .A2(n356), .B1(mem[123]), .B2(n36), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U135 ( .A1(n365), .A2(n363), .ZN(n366) );
  AOI21D0BWP12T30P140 U136 ( .A1(n365), .A2(n363), .B(n366), .ZN(n228) );
  OAI22D0BWP12T30P140 U137 ( .A1(rd_ptr[1]), .A2(n38), .B1(rd_ptr[4]), .B2(
        n364), .ZN(n37) );
  AOI221D0BWP12T30P140 U138 ( .A1(n364), .A2(rd_ptr[4]), .B1(n38), .B2(
        rd_ptr[1]), .C(n37), .ZN(n43) );
  OAI22D0BWP12T30P140 U139 ( .A1(rd_ptr[0]), .A2(n230), .B1(rd_ptr[5]), .B2(
        n370), .ZN(n39) );
  AOI221D0BWP12T30P140 U140 ( .A1(n370), .A2(rd_ptr[5]), .B1(n230), .B2(
        rd_ptr[0]), .C(n39), .ZN(n42) );
  OAI22D0BWP12T30P140 U141 ( .A1(rd_ptr[2]), .A2(n311), .B1(rd_ptr[3]), .B2(
        n365), .ZN(n40) );
  AOI221D0BWP12T30P140 U142 ( .A1(n365), .A2(rd_ptr[3]), .B1(n311), .B2(
        rd_ptr[2]), .C(n40), .ZN(n41) );
  AN3D0BWP12T30P140 U143 ( .A1(n43), .A2(n42), .A3(n41), .Z(empty) );
  INVD0BWP12T30P140 U144 ( .I(rd_ptr[3]), .ZN(n97) );
  INVD0BWP12T30P140 U145 ( .I(rd_ptr[1]), .ZN(n95) );
  INR2D1BWP12T30P140 U146 ( .A1(read_en), .B1(empty), .ZN(n332) );
  ND2D0BWP12T30P140 U147 ( .A1(rd_ptr[0]), .A2(n332), .ZN(n331) );
  NR2D0BWP12T30P140 U148 ( .A1(n95), .A2(n331), .ZN(n330) );
  ND2D0BWP12T30P140 U149 ( .A1(rd_ptr[2]), .A2(n330), .ZN(n329) );
  NR2D0BWP12T30P140 U150 ( .A1(n97), .A2(n329), .ZN(n96) );
  ND2D0BWP12T30P140 U151 ( .A1(rd_ptr[4]), .A2(n96), .ZN(n367) );
  OA21D0BWP12T30P140 U152 ( .A1(rd_ptr[4]), .A2(n96), .B(n367), .Z(n234) );
  INVD0BWP12T30P140 U153 ( .I(rd_ptr[4]), .ZN(n56) );
  NR2D0BWP12T30P140 U154 ( .A1(n97), .A2(n56), .ZN(n295) );
  ND2D0BWP12T30P140 U155 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n45) );
  INVD0BWP12T30P140 U156 ( .I(rd_ptr[2]), .ZN(n44) );
  NR2D0BWP12T30P140 U157 ( .A1(n45), .A2(n44), .ZN(n283) );
  INVD0BWP12T30P140 U158 ( .I(rd_ptr[0]), .ZN(n46) );
  NR3D0BWP12T30P140 U159 ( .A1(rd_ptr[1]), .A2(n46), .A3(n44), .ZN(n282) );
  AOI22D0BWP12T30P140 U160 ( .A1(n283), .A2(mem[65]), .B1(n282), .B2(mem[69]), 
        .ZN(n50) );
  NR3D0BWP12T30P140 U161 ( .A1(rd_ptr[0]), .A2(n95), .A3(n44), .ZN(n285) );
  NR3D0BWP12T30P140 U162 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n44), .ZN(n284)
         );
  AOI22D0BWP12T30P140 U163 ( .A1(n285), .A2(mem[67]), .B1(n284), .B2(mem[71]), 
        .ZN(n49) );
  NR2D0BWP12T30P140 U164 ( .A1(rd_ptr[2]), .A2(n45), .ZN(n287) );
  NR3D0BWP12T30P140 U165 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n46), .ZN(n286)
         );
  AOI22D0BWP12T30P140 U166 ( .A1(n287), .A2(mem[73]), .B1(n286), .B2(mem[77]), 
        .ZN(n48) );
  NR3D0BWP12T30P140 U167 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n95), .ZN(n289)
         );
  NR3D0BWP12T30P140 U168 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U169 ( .A1(n289), .A2(mem[75]), .B1(n288), .B2(mem[79]), 
        .ZN(n47) );
  ND4D0BWP12T30P140 U170 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(n51) );
  AOI21D0BWP12T30P140 U171 ( .A1(n295), .A2(n51), .B(rd_ptr[5]), .ZN(n93) );
  ND2D0BWP12T30P140 U172 ( .A1(n97), .A2(n56), .ZN(n299) );
  INVD0BWP12T30P140 U173 ( .I(n299), .ZN(n264) );
  AOI22D0BWP12T30P140 U174 ( .A1(n283), .A2(mem[113]), .B1(n282), .B2(mem[117]), .ZN(n55) );
  AOI22D0BWP12T30P140 U175 ( .A1(n285), .A2(mem[115]), .B1(n284), .B2(mem[119]), .ZN(n54) );
  AOI22D0BWP12T30P140 U176 ( .A1(n287), .A2(mem[121]), .B1(n286), .B2(mem[125]), .ZN(n53) );
  AOI22D0BWP12T30P140 U177 ( .A1(n289), .A2(mem[123]), .B1(n288), .B2(mem[127]), .ZN(n52) );
  ND4D0BWP12T30P140 U178 ( .A1(n55), .A2(n54), .A3(n53), .A4(n52), .ZN(n62) );
  NR2D0BWP12T30P140 U179 ( .A1(rd_ptr[3]), .A2(n56), .ZN(n297) );
  AOI22D0BWP12T30P140 U180 ( .A1(n283), .A2(mem[81]), .B1(n282), .B2(mem[85]), 
        .ZN(n60) );
  AOI22D0BWP12T30P140 U181 ( .A1(n285), .A2(mem[83]), .B1(n284), .B2(mem[87]), 
        .ZN(n59) );
  AOI22D0BWP12T30P140 U182 ( .A1(n287), .A2(mem[89]), .B1(n286), .B2(mem[93]), 
        .ZN(n58) );
  AOI22D0BWP12T30P140 U183 ( .A1(n289), .A2(mem[91]), .B1(n288), .B2(mem[95]), 
        .ZN(n57) );
  ND4D0BWP12T30P140 U184 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(n61) );
  AOI22D0BWP12T30P140 U185 ( .A1(n264), .A2(n62), .B1(n297), .B2(n61), .ZN(n92) );
  NR2D0BWP12T30P140 U186 ( .A1(rd_ptr[4]), .A2(n97), .ZN(n303) );
  AOI22D0BWP12T30P140 U187 ( .A1(n283), .A2(mem[97]), .B1(n282), .B2(mem[101]), 
        .ZN(n66) );
  AOI22D0BWP12T30P140 U188 ( .A1(n285), .A2(mem[99]), .B1(n284), .B2(mem[103]), 
        .ZN(n65) );
  AOI22D0BWP12T30P140 U189 ( .A1(n287), .A2(mem[105]), .B1(n286), .B2(mem[109]), .ZN(n64) );
  AOI22D0BWP12T30P140 U190 ( .A1(n289), .A2(mem[107]), .B1(n288), .B2(mem[111]), .ZN(n63) );
  ND4D0BWP12T30P140 U191 ( .A1(n66), .A2(n65), .A3(n64), .A4(n63), .ZN(n67) );
  ND2D0BWP12T30P140 U192 ( .A1(n303), .A2(n67), .ZN(n91) );
  AOI22D0BWP12T30P140 U193 ( .A1(n283), .A2(mem[33]), .B1(n282), .B2(mem[37]), 
        .ZN(n71) );
  AOI22D0BWP12T30P140 U194 ( .A1(n285), .A2(mem[35]), .B1(n284), .B2(mem[39]), 
        .ZN(n70) );
  AOI22D0BWP12T30P140 U195 ( .A1(n287), .A2(mem[41]), .B1(n286), .B2(mem[45]), 
        .ZN(n69) );
  AOI22D0BWP12T30P140 U196 ( .A1(n289), .A2(mem[43]), .B1(n288), .B2(mem[47]), 
        .ZN(n68) );
  ND4D0BWP12T30P140 U197 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .ZN(n89) );
  AOI22D0BWP12T30P140 U198 ( .A1(n283), .A2(mem[49]), .B1(n282), .B2(mem[53]), 
        .ZN(n75) );
  AOI22D0BWP12T30P140 U199 ( .A1(n285), .A2(mem[51]), .B1(n284), .B2(mem[55]), 
        .ZN(n74) );
  AOI22D0BWP12T30P140 U200 ( .A1(n287), .A2(mem[57]), .B1(n286), .B2(mem[61]), 
        .ZN(n73) );
  AOI22D0BWP12T30P140 U201 ( .A1(n289), .A2(mem[59]), .B1(n288), .B2(mem[63]), 
        .ZN(n72) );
  AN4D0BWP12T30P140 U202 ( .A1(n75), .A2(n74), .A3(n73), .A4(n72), .Z(n87) );
  AOI22D0BWP12T30P140 U203 ( .A1(n283), .A2(mem[17]), .B1(n282), .B2(mem[21]), 
        .ZN(n79) );
  AOI22D0BWP12T30P140 U204 ( .A1(n285), .A2(mem[19]), .B1(n284), .B2(mem[23]), 
        .ZN(n78) );
  AOI22D0BWP12T30P140 U205 ( .A1(n287), .A2(mem[25]), .B1(n286), .B2(mem[29]), 
        .ZN(n77) );
  AOI22D0BWP12T30P140 U206 ( .A1(n289), .A2(mem[27]), .B1(n288), .B2(mem[31]), 
        .ZN(n76) );
  ND4D0BWP12T30P140 U207 ( .A1(n79), .A2(n78), .A3(n77), .A4(n76), .ZN(n85) );
  AOI22D0BWP12T30P140 U208 ( .A1(n283), .A2(mem[1]), .B1(n282), .B2(mem[5]), 
        .ZN(n83) );
  AOI22D0BWP12T30P140 U209 ( .A1(n285), .A2(mem[3]), .B1(n284), .B2(mem[7]), 
        .ZN(n82) );
  AOI22D0BWP12T30P140 U210 ( .A1(n287), .A2(mem[9]), .B1(n286), .B2(mem[13]), 
        .ZN(n81) );
  AOI22D0BWP12T30P140 U211 ( .A1(n289), .A2(mem[11]), .B1(n288), .B2(mem[15]), 
        .ZN(n80) );
  ND4D0BWP12T30P140 U212 ( .A1(n83), .A2(n82), .A3(n81), .A4(n80), .ZN(n84) );
  AOI22D0BWP12T30P140 U213 ( .A1(n297), .A2(n85), .B1(n295), .B2(n84), .ZN(n86) );
  OAI211D0BWP12T30P140 U214 ( .A1(n87), .A2(n299), .B(rd_ptr[5]), .C(n86), 
        .ZN(n88) );
  AOI21D0BWP12T30P140 U215 ( .A1(n303), .A2(n89), .B(n88), .ZN(n90) );
  AOI31D0BWP12T30P140 U216 ( .A1(n93), .A2(n92), .A3(n91), .B(n90), .ZN(n94)
         );
  CKMUX2D0BWP12T30P140 U217 ( .I0(data_out[1]), .I1(n94), .S(n332), .Z(n232)
         );
  AOI21D0BWP12T30P140 U218 ( .A1(n95), .A2(n331), .B(n330), .ZN(n237) );
  AOI21D0BWP12T30P140 U219 ( .A1(n97), .A2(n329), .B(n96), .ZN(n235) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n240), .A2(n348), .B1(mem[116]), .B2(n240), 
        .ZN(n109) );
  NR2D0BWP12T30P140 U221 ( .A1(n347), .A2(n314), .ZN(n320) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n320), .A2(n356), .B1(mem[47]), .B2(n320), 
        .ZN(n178) );
  NR2D0BWP12T30P140 U223 ( .A1(n352), .A2(n314), .ZN(n241) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n241), .A2(n343), .B1(mem[45]), .B2(n241), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n241), .A2(n321), .B1(mem[44]), .B2(n241), 
        .ZN(n181) );
  NR2D0BWP12T30P140 U226 ( .A1(n350), .A2(n314), .ZN(n242) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n242), .A2(n356), .B1(mem[39]), .B2(n242), 
        .ZN(n186) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n242), .A2(n321), .B1(mem[38]), .B2(n242), 
        .ZN(n187) );
  NR2D0BWP12T30P140 U229 ( .A1(n359), .A2(n314), .ZN(n243) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n243), .A2(n343), .B1(mem[37]), .B2(n243), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U231 ( .A1(n243), .A2(n321), .B1(mem[36]), .B2(n243), 
        .ZN(n189) );
  NR2D0BWP12T30P140 U232 ( .A1(n347), .A2(n245), .ZN(n322) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n322), .A2(n356), .B1(mem[31]), .B2(n322), 
        .ZN(n194) );
  NR2D0BWP12T30P140 U234 ( .A1(n352), .A2(n245), .ZN(n244) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n244), .A2(n343), .B1(mem[29]), .B2(n244), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n244), .A2(n321), .B1(mem[28]), .B2(n244), 
        .ZN(n196) );
  NR2D0BWP12T30P140 U237 ( .A1(n350), .A2(n245), .ZN(n323) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n323), .A2(n361), .B1(mem[23]), .B2(n323), 
        .ZN(n202) );
  NR2D0BWP12T30P140 U239 ( .A1(n359), .A2(n245), .ZN(n324) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n324), .A2(n361), .B1(mem[21]), .B2(n324), 
        .ZN(n204) );
  NR2D0BWP12T30P140 U241 ( .A1(n248), .A2(n347), .ZN(n246) );
  MAOI22D0BWP12T30P140 U242 ( .A1(n246), .A2(n361), .B1(mem[15]), .B2(n246), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n246), .A2(n328), .B1(mem[14]), .B2(n246), 
        .ZN(n211) );
  NR2D0BWP12T30P140 U244 ( .A1(n248), .A2(n352), .ZN(n247) );
  MAOI22D0BWP12T30P140 U245 ( .A1(n247), .A2(n356), .B1(mem[13]), .B2(n247), 
        .ZN(n212) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n247), .A2(n328), .B1(mem[12]), .B2(n247), 
        .ZN(n213) );
  NR2D0BWP12T30P140 U247 ( .A1(n248), .A2(n350), .ZN(n325) );
  MAOI22D0BWP12T30P140 U248 ( .A1(n325), .A2(n361), .B1(mem[7]), .B2(n325), 
        .ZN(n218) );
  NR2D0BWP12T30P140 U249 ( .A1(n248), .A2(n359), .ZN(n326) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n326), .A2(n356), .B1(mem[5]), .B2(n326), 
        .ZN(n220) );
  NR2D0BWP12T30P140 U251 ( .A1(n363), .A2(n248), .ZN(n319) );
  CKMUX2D0BWP12T30P140 U252 ( .I0(mem[1]), .I1(data_in[1]), .S(n319), .Z(n225)
         );
  AOI22D0BWP12T30P140 U253 ( .A1(n283), .A2(mem[64]), .B1(n282), .B2(mem[68]), 
        .ZN(n252) );
  AOI22D0BWP12T30P140 U254 ( .A1(n285), .A2(mem[66]), .B1(n284), .B2(mem[70]), 
        .ZN(n251) );
  AOI22D0BWP12T30P140 U255 ( .A1(n287), .A2(mem[72]), .B1(n286), .B2(mem[76]), 
        .ZN(n250) );
  AOI22D0BWP12T30P140 U256 ( .A1(n289), .A2(mem[74]), .B1(n288), .B2(mem[78]), 
        .ZN(n249) );
  ND4D0BWP12T30P140 U257 ( .A1(n252), .A2(n251), .A3(n250), .A4(n249), .ZN(
        n253) );
  AOI21D0BWP12T30P140 U258 ( .A1(n295), .A2(n253), .B(rd_ptr[5]), .ZN(n307) );
  AOI22D0BWP12T30P140 U259 ( .A1(n283), .A2(mem[112]), .B1(n282), .B2(mem[116]), .ZN(n257) );
  AOI22D0BWP12T30P140 U260 ( .A1(n285), .A2(mem[114]), .B1(n284), .B2(mem[118]), .ZN(n256) );
  AOI22D0BWP12T30P140 U261 ( .A1(n287), .A2(mem[120]), .B1(n286), .B2(mem[124]), .ZN(n255) );
  AOI22D0BWP12T30P140 U262 ( .A1(n289), .A2(mem[122]), .B1(n288), .B2(mem[126]), .ZN(n254) );
  ND4D0BWP12T30P140 U263 ( .A1(n257), .A2(n256), .A3(n255), .A4(n254), .ZN(
        n263) );
  AOI22D0BWP12T30P140 U264 ( .A1(n283), .A2(mem[80]), .B1(n282), .B2(mem[84]), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U265 ( .A1(n285), .A2(mem[82]), .B1(n284), .B2(mem[86]), 
        .ZN(n260) );
  AOI22D0BWP12T30P140 U266 ( .A1(n287), .A2(mem[88]), .B1(n286), .B2(mem[92]), 
        .ZN(n259) );
  AOI22D0BWP12T30P140 U267 ( .A1(n289), .A2(mem[90]), .B1(n288), .B2(mem[94]), 
        .ZN(n258) );
  ND4D0BWP12T30P140 U268 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .ZN(
        n262) );
  AOI22D0BWP12T30P140 U269 ( .A1(n264), .A2(n263), .B1(n297), .B2(n262), .ZN(
        n306) );
  AOI22D0BWP12T30P140 U270 ( .A1(n283), .A2(mem[96]), .B1(n282), .B2(mem[100]), 
        .ZN(n268) );
  AOI22D0BWP12T30P140 U271 ( .A1(n285), .A2(mem[98]), .B1(n284), .B2(mem[102]), 
        .ZN(n267) );
  AOI22D0BWP12T30P140 U272 ( .A1(n287), .A2(mem[104]), .B1(n286), .B2(mem[108]), .ZN(n266) );
  AOI22D0BWP12T30P140 U273 ( .A1(n289), .A2(mem[106]), .B1(n288), .B2(mem[110]), .ZN(n265) );
  ND4D0BWP12T30P140 U274 ( .A1(n268), .A2(n267), .A3(n266), .A4(n265), .ZN(
        n269) );
  ND2D0BWP12T30P140 U275 ( .A1(n303), .A2(n269), .ZN(n305) );
  AOI22D0BWP12T30P140 U276 ( .A1(n283), .A2(mem[32]), .B1(n282), .B2(mem[36]), 
        .ZN(n273) );
  AOI22D0BWP12T30P140 U277 ( .A1(n285), .A2(mem[34]), .B1(n284), .B2(mem[38]), 
        .ZN(n272) );
  AOI22D0BWP12T30P140 U278 ( .A1(n287), .A2(mem[40]), .B1(n286), .B2(mem[44]), 
        .ZN(n271) );
  AOI22D0BWP12T30P140 U279 ( .A1(n289), .A2(mem[42]), .B1(n288), .B2(mem[46]), 
        .ZN(n270) );
  ND4D0BWP12T30P140 U280 ( .A1(n273), .A2(n272), .A3(n271), .A4(n270), .ZN(
        n302) );
  AOI22D0BWP12T30P140 U281 ( .A1(n283), .A2(mem[48]), .B1(n282), .B2(mem[52]), 
        .ZN(n277) );
  AOI22D0BWP12T30P140 U282 ( .A1(n285), .A2(mem[50]), .B1(n284), .B2(mem[54]), 
        .ZN(n276) );
  AOI22D0BWP12T30P140 U283 ( .A1(n287), .A2(mem[56]), .B1(n286), .B2(mem[60]), 
        .ZN(n275) );
  AOI22D0BWP12T30P140 U284 ( .A1(n289), .A2(mem[58]), .B1(n288), .B2(mem[62]), 
        .ZN(n274) );
  AN4D0BWP12T30P140 U285 ( .A1(n277), .A2(n276), .A3(n275), .A4(n274), .Z(n300) );
  AOI22D0BWP12T30P140 U286 ( .A1(n283), .A2(mem[16]), .B1(n282), .B2(mem[20]), 
        .ZN(n281) );
  AOI22D0BWP12T30P140 U287 ( .A1(n285), .A2(mem[18]), .B1(n284), .B2(mem[22]), 
        .ZN(n280) );
  AOI22D0BWP12T30P140 U288 ( .A1(n287), .A2(mem[24]), .B1(n286), .B2(mem[28]), 
        .ZN(n279) );
  AOI22D0BWP12T30P140 U289 ( .A1(n289), .A2(mem[26]), .B1(n288), .B2(mem[30]), 
        .ZN(n278) );
  ND4D0BWP12T30P140 U290 ( .A1(n281), .A2(n280), .A3(n279), .A4(n278), .ZN(
        n296) );
  AOI22D0BWP12T30P140 U291 ( .A1(n283), .A2(mem[0]), .B1(n282), .B2(mem[4]), 
        .ZN(n293) );
  AOI22D0BWP12T30P140 U292 ( .A1(n285), .A2(mem[2]), .B1(n284), .B2(mem[6]), 
        .ZN(n292) );
  AOI22D0BWP12T30P140 U293 ( .A1(n287), .A2(mem[8]), .B1(n286), .B2(mem[12]), 
        .ZN(n291) );
  AOI22D0BWP12T30P140 U294 ( .A1(n289), .A2(mem[10]), .B1(n288), .B2(mem[14]), 
        .ZN(n290) );
  ND4D0BWP12T30P140 U295 ( .A1(n293), .A2(n292), .A3(n291), .A4(n290), .ZN(
        n294) );
  AOI22D0BWP12T30P140 U296 ( .A1(n297), .A2(n296), .B1(n295), .B2(n294), .ZN(
        n298) );
  OAI211D0BWP12T30P140 U297 ( .A1(n300), .A2(n299), .B(rd_ptr[5]), .C(n298), 
        .ZN(n301) );
  AOI21D0BWP12T30P140 U298 ( .A1(n303), .A2(n302), .B(n301), .ZN(n304) );
  AOI31D0BWP12T30P140 U299 ( .A1(n307), .A2(n306), .A3(n305), .B(n304), .ZN(
        n308) );
  CKMUX2D0BWP12T30P140 U300 ( .I0(data_out[0]), .I1(n308), .S(n332), .Z(n238)
         );
  AO21D0BWP12T30P140 U301 ( .A1(n230), .A2(wr_ptr[1]), .B(n309), .Z(n231) );
  OAI21D0BWP12T30P140 U302 ( .A1(n312), .A2(n311), .B(n310), .ZN(n229) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n313), .A2(n354), .B1(mem[35]), .B2(n313), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U304 ( .A1(n363), .A2(n314), .ZN(n315) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n315), .A2(n361), .B1(mem[33]), .B2(n315), 
        .ZN(n192) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n315), .A2(n321), .B1(mem[32]), .B2(n315), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n316), .A2(n328), .B1(mem[18]), .B2(n316), 
        .ZN(n207) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n317), .A2(n328), .B1(mem[16]), .B2(n317), 
        .ZN(n209) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n318), .A2(n328), .B1(mem[8]), .B2(n318), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n319), .A2(n360), .B1(mem[0]), .B2(n319), 
        .ZN(n224) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n320), .A2(n321), .B1(mem[46]), .B2(n320), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n322), .A2(n321), .B1(mem[30]), .B2(n322), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n323), .A2(n328), .B1(mem[22]), .B2(n323), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n324), .A2(n328), .B1(mem[20]), .B2(n324), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n325), .A2(n328), .B1(mem[6]), .B2(n325), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n326), .A2(n328), .B1(mem[4]), .B2(n326), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U317 ( .A1(n328), .A2(n327), .B1(n327), .B2(mem[2]), 
        .ZN(n223) );
  OA21D0BWP12T30P140 U318 ( .A1(rd_ptr[2]), .A2(n330), .B(n329), .Z(n236) );
  OA21D0BWP12T30P140 U319 ( .A1(rd_ptr[0]), .A2(n332), .B(n331), .Z(n239) );
  NR2D0BWP12T30P140 U320 ( .A1(n352), .A2(n335), .ZN(n333) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n333), .A2(n360), .B1(mem[92]), .B2(n333), 
        .ZN(n133) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n333), .A2(n343), .B1(mem[93]), .B2(n333), 
        .ZN(n132) );
  NR2D0BWP12T30P140 U323 ( .A1(n350), .A2(n335), .ZN(n334) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n334), .A2(n343), .B1(mem[87]), .B2(n334), 
        .ZN(n138) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n334), .A2(n348), .B1(mem[86]), .B2(n334), 
        .ZN(n139) );
  NR2D0BWP12T30P140 U326 ( .A1(n347), .A2(n335), .ZN(n336) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n336), .A2(n348), .B1(mem[94]), .B2(n336), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U328 ( .A1(n359), .A2(n335), .ZN(n337) );
  MAOI22D0BWP12T30P140 U329 ( .A1(n337), .A2(n343), .B1(mem[85]), .B2(n337), 
        .ZN(n140) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n336), .A2(n343), .B1(mem[95]), .B2(n336), 
        .ZN(n130) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n337), .A2(n360), .B1(mem[84]), .B2(n337), 
        .ZN(n141) );
  NR2D0BWP12T30P140 U332 ( .A1(n347), .A2(n342), .ZN(n338) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n338), .A2(n354), .B1(mem[79]), .B2(n338), 
        .ZN(n146) );
  MAOI22D0BWP12T30P140 U334 ( .A1(n338), .A2(n348), .B1(mem[78]), .B2(n338), 
        .ZN(n147) );
  NR2D0BWP12T30P140 U335 ( .A1(n359), .A2(n346), .ZN(n339) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n339), .A2(n360), .B1(mem[100]), .B2(n339), 
        .ZN(n125) );
  NR2D0BWP12T30P140 U337 ( .A1(n352), .A2(n342), .ZN(n340) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n340), .A2(n354), .B1(mem[77]), .B2(n340), 
        .ZN(n148) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n339), .A2(n343), .B1(mem[101]), .B2(n339), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n340), .A2(n348), .B1(mem[76]), .B2(n340), 
        .ZN(n149) );
  NR2D0BWP12T30P140 U341 ( .A1(n350), .A2(n342), .ZN(n341) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n341), .A2(n354), .B1(mem[71]), .B2(n341), 
        .ZN(n154) );
  NR2D0BWP12T30P140 U343 ( .A1(n350), .A2(n346), .ZN(n344) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n344), .A2(n348), .B1(mem[102]), .B2(n344), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n341), .A2(n360), .B1(mem[70]), .B2(n341), 
        .ZN(n155) );
  NR2D0BWP12T30P140 U346 ( .A1(n359), .A2(n342), .ZN(n345) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n345), .A2(n354), .B1(mem[69]), .B2(n345), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n344), .A2(n343), .B1(mem[103]), .B2(n344), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n345), .A2(n360), .B1(mem[68]), .B2(n345), 
        .ZN(n157) );
  NR2D0BWP12T30P140 U350 ( .A1(n347), .A2(n358), .ZN(n351) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n351), .A2(n354), .B1(mem[63]), .B2(n351), 
        .ZN(n162) );
  NR2D0BWP12T30P140 U352 ( .A1(n352), .A2(n346), .ZN(n349) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n349), .A2(n348), .B1(mem[108]), .B2(n349), 
        .ZN(n117) );
  NR2D0BWP12T30P140 U354 ( .A1(n347), .A2(n346), .ZN(n357) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n357), .A2(n348), .B1(mem[110]), .B2(n357), 
        .ZN(n115) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n349), .A2(n356), .B1(mem[109]), .B2(n349), 
        .ZN(n116) );
  NR2D0BWP12T30P140 U357 ( .A1(n350), .A2(n358), .ZN(n355) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n355), .A2(n360), .B1(mem[54]), .B2(n355), 
        .ZN(n171) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n351), .A2(n360), .B1(mem[62]), .B2(n351), 
        .ZN(n163) );
  NR2D0BWP12T30P140 U360 ( .A1(n352), .A2(n358), .ZN(n353) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n353), .A2(n354), .B1(mem[61]), .B2(n353), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n353), .A2(n360), .B1(mem[60]), .B2(n353), 
        .ZN(n165) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n355), .A2(n354), .B1(mem[55]), .B2(n355), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n357), .A2(n356), .B1(mem[111]), .B2(n357), 
        .ZN(n114) );
  NR2D0BWP12T30P140 U365 ( .A1(n359), .A2(n358), .ZN(n362) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n362), .A2(n360), .B1(mem[52]), .B2(n362), 
        .ZN(n173) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n362), .A2(n361), .B1(mem[53]), .B2(n362), 
        .ZN(n172) );
  CKBD0BWP12T30P140 U368 ( .I(clk_write), .Z(n373) );
  CKBD0BWP12T30P140 U369 ( .I(clk_write), .Z(n372) );
  CKBD0BWP12T30P140 U370 ( .I(clk_write), .Z(n374) );
  CKBD0BWP12T30P140 U371 ( .I(clk_write), .Z(n376) );
  CKBD0BWP12T30P140 U372 ( .I(clk_write), .Z(n377) );
  CKBD0BWP12T30P140 U373 ( .I(clk_write), .Z(n375) );
  INVD0BWP12T30P140 U374 ( .I(rst), .ZN(n371) );
  NR3D0BWP12T30P140 U375 ( .A1(n365), .A2(n364), .A3(n363), .ZN(n369) );
  IAO21D0BWP12T30P140 U376 ( .A1(wr_ptr[4]), .A2(n366), .B(n369), .ZN(n227) );
  INVD0BWP12T30P140 U377 ( .I(rd_ptr[5]), .ZN(n368) );
  MUX2ND0BWP12T30P140 U378 ( .I0(rd_ptr[5]), .I1(n368), .S(n367), .ZN(n233) );
  MUX2ND0BWP12T30P140 U379 ( .I0(n370), .I1(wr_ptr[5]), .S(n369), .ZN(n226) );
endmodule


module asfifo_data_width2_address_width6_0 ( data_out, empty, read_en, 
        clk_read, data_in, full, write_en, clk_write, rst );
  output [1:0] data_out;
  input [1:0] data_in;
  input read_en, clk_read, write_en, clk_write, rst;
  output empty, full;
  wire   n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
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
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385;
  wire   [5:0] wr_ptr;
  wire   [127:0] mem;
  wire   [5:0] rd_ptr;

  DFCNQD1BWP12T30P140 rd_ptr_reg_3_ ( .D(n236), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[3]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_1_ ( .D(n238), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[1]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_4_ ( .D(n235), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[4]) );
  DFCNQD1BWP12T30P140 data_out_reg_reg_1_ ( .D(n233), .CP(clk_read), .CDN(n378), .Q(data_out[1]) );
  DFCNQD1BWP12T30P140 data_out_reg_reg_0_ ( .D(n239), .CP(clk_read), .CDN(n378), .Q(data_out[0]) );
  DFQD2BWP12T30P140 mem_reg_55__0_ ( .D(n210), .CP(clk_write), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_52__1_ ( .D(n203), .CP(clk_write), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_56__1_ ( .D(n211), .CP(clk_write), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_56__0_ ( .D(n212), .CP(clk_write), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_63__1_ ( .D(n226), .CP(clk_write), .Q(mem[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_3_ ( .D(n229), .CP(n384), .CDN(n378), .Q(
        wr_ptr[3]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_4_ ( .D(n228), .CP(n384), .CDN(n378), .Q(
        wr_ptr[4]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_5_ ( .D(n234), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[5]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n119), .CP(n382), .Q(mem[107]) );
  DFQD2BWP12T30P140 mem_reg_10__0_ ( .D(n120), .CP(n382), .Q(mem[106]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n121), .CP(n382), .Q(mem[105]) );
  DFQD2BWP12T30P140 mem_reg_11__0_ ( .D(n122), .CP(n382), .Q(mem[104]) );
  DFQD2BWP12T30P140 mem_reg_14__1_ ( .D(n127), .CP(n382), .Q(mem[99]) );
  DFQD2BWP12T30P140 mem_reg_15__1_ ( .D(n129), .CP(n382), .Q(mem[97]) );
  DFQD2BWP12T30P140 mem_reg_15__0_ ( .D(n130), .CP(n382), .Q(mem[96]) );
  DFQD2BWP12T30P140 mem_reg_18__1_ ( .D(n135), .CP(n381), .Q(mem[91]) );
  DFQD2BWP12T30P140 mem_reg_18__0_ ( .D(n136), .CP(n381), .Q(mem[90]) );
  DFQD2BWP12T30P140 mem_reg_19__1_ ( .D(n137), .CP(n381), .Q(mem[89]) );
  DFQD2BWP12T30P140 mem_reg_19__0_ ( .D(n138), .CP(n381), .Q(mem[88]) );
  DFQD2BWP12T30P140 mem_reg_22__1_ ( .D(n143), .CP(n380), .Q(mem[83]) );
  DFQD2BWP12T30P140 mem_reg_22__0_ ( .D(n144), .CP(n380), .Q(mem[82]) );
  DFQD2BWP12T30P140 mem_reg_23__1_ ( .D(n145), .CP(n380), .Q(mem[81]) );
  DFQD2BWP12T30P140 mem_reg_23__0_ ( .D(n146), .CP(n380), .Q(mem[80]) );
  DFQD2BWP12T30P140 mem_reg_26__1_ ( .D(n151), .CP(n380), .Q(mem[75]) );
  DFQD2BWP12T30P140 mem_reg_26__0_ ( .D(n152), .CP(n380), .Q(mem[74]) );
  DFQD2BWP12T30P140 mem_reg_27__1_ ( .D(n153), .CP(n380), .Q(mem[73]) );
  DFQD2BWP12T30P140 mem_reg_27__0_ ( .D(n154), .CP(n380), .Q(mem[72]) );
  DFQD2BWP12T30P140 mem_reg_30__0_ ( .D(n160), .CP(n379), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_31__1_ ( .D(n161), .CP(n379), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_31__0_ ( .D(n162), .CP(n379), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_34__1_ ( .D(n167), .CP(n380), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_34__0_ ( .D(n168), .CP(n379), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_38__1_ ( .D(n175), .CP(n379), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_42__0_ ( .D(n184), .CP(n382), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_43__1_ ( .D(n185), .CP(n381), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_43__0_ ( .D(n186), .CP(n380), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_46__0_ ( .D(n192), .CP(n382), .Q(mem[34]) );
  DFQD2BWP12T30P140 mem_reg_47__1_ ( .D(n193), .CP(n381), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_47__0_ ( .D(n194), .CP(n380), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_51__1_ ( .D(n201), .CP(n382), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_51__0_ ( .D(n202), .CP(n381), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_54__0_ ( .D(n208), .CP(n380), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_55__1_ ( .D(n209), .CP(n379), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_12__1_ ( .D(n123), .CP(n382), .Q(mem[103]) );
  DFQD2BWP12T30P140 mem_reg_12__0_ ( .D(n124), .CP(n382), .Q(mem[102]) );
  DFQD2BWP12T30P140 mem_reg_13__1_ ( .D(n125), .CP(n382), .Q(mem[101]) );
  DFQD2BWP12T30P140 mem_reg_13__0_ ( .D(n126), .CP(n382), .Q(mem[100]) );
  DFQD2BWP12T30P140 mem_reg_16__1_ ( .D(n131), .CP(n381), .Q(mem[95]) );
  DFQD2BWP12T30P140 mem_reg_16__0_ ( .D(n132), .CP(n381), .Q(mem[94]) );
  DFQD2BWP12T30P140 mem_reg_17__1_ ( .D(n133), .CP(n381), .Q(mem[93]) );
  DFQD2BWP12T30P140 mem_reg_17__0_ ( .D(n134), .CP(n381), .Q(mem[92]) );
  DFQD2BWP12T30P140 mem_reg_20__1_ ( .D(n139), .CP(n381), .Q(mem[87]) );
  DFQD2BWP12T30P140 mem_reg_20__0_ ( .D(n140), .CP(n381), .Q(mem[86]) );
  DFQD2BWP12T30P140 mem_reg_21__1_ ( .D(n141), .CP(n381), .Q(mem[85]) );
  DFQD2BWP12T30P140 mem_reg_21__0_ ( .D(n142), .CP(n381), .Q(mem[84]) );
  DFQD2BWP12T30P140 mem_reg_24__0_ ( .D(n148), .CP(n380), .Q(mem[78]) );
  DFQD2BWP12T30P140 mem_reg_25__1_ ( .D(n149), .CP(n380), .Q(mem[77]) );
  DFQD2BWP12T30P140 mem_reg_25__0_ ( .D(n150), .CP(n380), .Q(mem[76]) );
  DFQD2BWP12T30P140 mem_reg_28__1_ ( .D(n155), .CP(n379), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_28__0_ ( .D(n156), .CP(n379), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_29__1_ ( .D(n157), .CP(n379), .Q(mem[69]) );
  DFQD2BWP12T30P140 mem_reg_29__0_ ( .D(n158), .CP(n379), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_32__1_ ( .D(n163), .CP(n379), .Q(mem[63]) );
  DFQD2BWP12T30P140 mem_reg_32__0_ ( .D(n164), .CP(n379), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_33__1_ ( .D(n165), .CP(n379), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_33__0_ ( .D(n166), .CP(n379), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_36__0_ ( .D(n172), .CP(n382), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_37__1_ ( .D(n173), .CP(n381), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_37__0_ ( .D(n174), .CP(n380), .Q(mem[52]) );
  DFQD2BWP12T30P140 mem_reg_40__0_ ( .D(n180), .CP(n382), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_44__1_ ( .D(n187), .CP(n379), .Q(mem[39]) );
  DFQD2BWP12T30P140 mem_reg_44__0_ ( .D(n188), .CP(n381), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_48__1_ ( .D(n195), .CP(n379), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_49__1_ ( .D(n198), .CP(n380), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_53__0_ ( .D(n206), .CP(n382), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n103), .CP(n384), .Q(mem[123]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n104), .CP(n384), .Q(mem[122]) );
  DFQD2BWP12T30P140 mem_reg_3__1_ ( .D(n105), .CP(n384), .Q(mem[121]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n106), .CP(n384), .Q(mem[120]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n111), .CP(n383), .Q(mem[115]) );
  DFQD2BWP12T30P140 mem_reg_6__0_ ( .D(n112), .CP(n383), .Q(mem[114]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n113), .CP(n383), .Q(mem[113]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n114), .CP(n383), .Q(mem[112]) );
  DFQD2BWP12T30P140 mem_reg_35__0_ ( .D(n170), .CP(n385), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_38__0_ ( .D(n176), .CP(n384), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_39__1_ ( .D(n177), .CP(n385), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_39__0_ ( .D(n178), .CP(n383), .Q(mem[48]) );
  DFQD2BWP12T30P140 mem_reg_42__1_ ( .D(n183), .CP(n383), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_46__1_ ( .D(n191), .CP(n383), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_50__1_ ( .D(n199), .CP(n385), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_50__0_ ( .D(n200), .CP(n383), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_58__1_ ( .D(n215), .CP(n385), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_58__0_ ( .D(n216), .CP(n385), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_59__1_ ( .D(n217), .CP(n385), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_59__0_ ( .D(n218), .CP(n385), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_62__1_ ( .D(n223), .CP(n385), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_63__0_ ( .D(n225), .CP(n385), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n100), .CP(n384), .Q(mem[126]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n101), .CP(n384), .Q(mem[125]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n102), .CP(n384), .Q(mem[124]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n107), .CP(n383), .Q(mem[119]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n108), .CP(n383), .Q(mem[118]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n109), .CP(n383), .Q(mem[117]) );
  DFQD2BWP12T30P140 mem_reg_5__0_ ( .D(n110), .CP(n383), .Q(mem[116]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n115), .CP(n383), .Q(mem[111]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n116), .CP(n383), .Q(mem[110]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n117), .CP(n383), .Q(mem[109]) );
  DFQD2BWP12T30P140 mem_reg_9__0_ ( .D(n118), .CP(n383), .Q(mem[108]) );
  DFQD2BWP12T30P140 mem_reg_36__1_ ( .D(n171), .CP(n383), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_41__1_ ( .D(n181), .CP(n384), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_41__0_ ( .D(n182), .CP(n385), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_45__0_ ( .D(n190), .CP(n385), .Q(mem[36]) );
  DFQD2BWP12T30P140 mem_reg_48__0_ ( .D(n196), .CP(n383), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_49__0_ ( .D(n197), .CP(n384), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_52__0_ ( .D(n204), .CP(n385), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_53__1_ ( .D(n205), .CP(n383), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_57__1_ ( .D(n213), .CP(n384), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_57__0_ ( .D(n214), .CP(n385), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_60__1_ ( .D(n219), .CP(n385), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_60__0_ ( .D(n220), .CP(n385), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_61__1_ ( .D(n221), .CP(n385), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_61__0_ ( .D(n222), .CP(n385), .Q(mem[4]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_2_ ( .D(n230), .CP(n384), .CDN(n378), .Q(
        wr_ptr[2]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_2_ ( .D(n237), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[2]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_1_ ( .D(n232), .CP(n384), .CDN(n378), .Q(
        wr_ptr[1]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_0_ ( .D(n240), .CP(clk_read), .CDN(n378), .Q(
        rd_ptr[0]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_5_ ( .D(n227), .CP(n385), .CDN(n378), .Q(
        wr_ptr[5]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_0_ ( .D(n231), .CP(n384), .CDN(n378), .Q(
        wr_ptr[0]) );
  DFQD1BWP12T30P140 mem_reg_14__0_ ( .D(n128), .CP(n382), .Q(mem[98]) );
  DFQD1BWP12T30P140 mem_reg_30__1_ ( .D(n159), .CP(n379), .Q(mem[67]) );
  DFQD1BWP12T30P140 mem_reg_54__1_ ( .D(n207), .CP(n381), .Q(mem[19]) );
  DFQD1BWP12T30P140 mem_reg_24__1_ ( .D(n147), .CP(n380), .Q(mem[79]) );
  DFQD1BWP12T30P140 mem_reg_40__1_ ( .D(n179), .CP(n379), .Q(mem[47]) );
  DFQD1BWP12T30P140 mem_reg_35__1_ ( .D(n169), .CP(n384), .Q(mem[57]) );
  DFQD1BWP12T30P140 mem_reg_0__1_ ( .D(n99), .CP(n384), .Q(mem[127]) );
  DFQD1BWP12T30P140 mem_reg_45__1_ ( .D(n189), .CP(n384), .Q(mem[37]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n224), .CP(n385), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(rst), .ZN(n378) );
  ND3D0BWP12T30P140 U4 ( .A1(wr_ptr[2]), .A2(wr_ptr[0]), .A3(wr_ptr[1]), .ZN(
        n323) );
  ND3D0BWP12T30P140 U5 ( .A1(n378), .A2(write_en), .A3(wr_ptr[3]), .ZN(n11) );
  NR2D0BWP12T30P140 U6 ( .A1(wr_ptr[4]), .A2(n11), .ZN(n2) );
  ND2D0BWP12T30P140 U7 ( .A1(wr_ptr[5]), .A2(n2), .ZN(n340) );
  NR2D0BWP12T30P140 U8 ( .A1(n323), .A2(n340), .ZN(n342) );
  INVD0BWP12T30P140 U9 ( .I(data_in[0]), .ZN(n362) );
  CKBD0BWP12T30P140 U10 ( .I(n362), .Z(n363) );
  MAOI22D0BWP12T30P140 U11 ( .A1(n342), .A2(n363), .B1(mem[32]), .B2(n342), 
        .ZN(n194) );
  INVD0BWP12T30P140 U12 ( .I(wr_ptr[4]), .ZN(n48) );
  INVD0BWP12T30P140 U13 ( .I(wr_ptr[3]), .ZN(n50) );
  ND3D0BWP12T30P140 U14 ( .A1(n378), .A2(n50), .A3(write_en), .ZN(n3) );
  NR2D0BWP12T30P140 U15 ( .A1(n48), .A2(n3), .ZN(n21) );
  INVD0BWP12T30P140 U16 ( .I(wr_ptr[5]), .ZN(n377) );
  ND2D0BWP12T30P140 U17 ( .A1(n21), .A2(n377), .ZN(n350) );
  NR2D0BWP12T30P140 U18 ( .A1(n323), .A2(n350), .ZN(n369) );
  INVD0BWP12T30P140 U19 ( .I(data_in[1]), .ZN(n345) );
  CKBD0BWP12T30P140 U20 ( .I(n345), .Z(n352) );
  MAOI22D0BWP12T30P140 U21 ( .A1(n369), .A2(n352), .B1(mem[81]), .B2(n369), 
        .ZN(n145) );
  INVD0BWP12T30P140 U22 ( .I(wr_ptr[1]), .ZN(n348) );
  INVD0BWP12T30P140 U23 ( .I(wr_ptr[0]), .ZN(n46) );
  ND3D0BWP12T30P140 U24 ( .A1(n348), .A2(n46), .A3(wr_ptr[2]), .ZN(n316) );
  NR2D0BWP12T30P140 U25 ( .A1(n316), .A2(n350), .ZN(n4) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n4), .A2(n352), .B1(mem[87]), .B2(n4), .ZN(
        n139) );
  INVD0BWP12T30P140 U27 ( .I(wr_ptr[2]), .ZN(n326) );
  ND3D0BWP12T30P140 U28 ( .A1(n348), .A2(n46), .A3(n326), .ZN(n343) );
  ND2D0BWP12T30P140 U29 ( .A1(n2), .A2(n377), .ZN(n360) );
  NR2D0BWP12T30P140 U30 ( .A1(n343), .A2(n360), .ZN(n25) );
  CKBD0BWP12T30P140 U31 ( .I(n345), .Z(n372) );
  MAOI22D0BWP12T30P140 U32 ( .A1(n25), .A2(n372), .B1(mem[111]), .B2(n25), 
        .ZN(n115) );
  ND3D0BWP12T30P140 U33 ( .A1(n46), .A2(wr_ptr[2]), .A3(wr_ptr[1]), .ZN(n331)
         );
  NR2D0BWP12T30P140 U34 ( .A1(n331), .A2(n350), .ZN(n5) );
  MAOI22D0BWP12T30P140 U35 ( .A1(n5), .A2(n363), .B1(mem[82]), .B2(n5), .ZN(
        n144) );
  ND3D0BWP12T30P140 U36 ( .A1(n348), .A2(wr_ptr[2]), .A3(wr_ptr[0]), .ZN(n339)
         );
  NR2D0BWP12T30P140 U37 ( .A1(wr_ptr[4]), .A2(n3), .ZN(n28) );
  ND2D0BWP12T30P140 U38 ( .A1(n28), .A2(n377), .ZN(n42) );
  NR2D0BWP12T30P140 U39 ( .A1(n339), .A2(n42), .ZN(n6) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n6), .A2(n362), .B1(mem[116]), .B2(n6), .ZN(
        n110) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n4), .A2(n362), .B1(mem[86]), .B2(n4), .ZN(
        n140) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n5), .A2(n352), .B1(mem[83]), .B2(n5), .ZN(
        n143) );
  MAOI22D0BWP12T30P140 U43 ( .A1(n6), .A2(n372), .B1(mem[117]), .B2(n6), .ZN(
        n109) );
  NR2D0BWP12T30P140 U44 ( .A1(n339), .A2(n350), .ZN(n9) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n9), .A2(n352), .B1(mem[85]), .B2(n9), .ZN(
        n141) );
  NR2D0BWP12T30P140 U46 ( .A1(n316), .A2(n42), .ZN(n7) );
  CKBD0BWP12T30P140 U47 ( .I(n362), .Z(n368) );
  MAOI22D0BWP12T30P140 U48 ( .A1(n7), .A2(n368), .B1(mem[118]), .B2(n7), .ZN(
        n108) );
  ND3D0BWP12T30P140 U49 ( .A1(n326), .A2(wr_ptr[1]), .A3(wr_ptr[0]), .ZN(n344)
         );
  NR2D0BWP12T30P140 U50 ( .A1(n344), .A2(n350), .ZN(n8) );
  MAOI22D0BWP12T30P140 U51 ( .A1(n8), .A2(n368), .B1(mem[88]), .B2(n8), .ZN(
        n138) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n7), .A2(n372), .B1(mem[119]), .B2(n7), .ZN(
        n107) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n8), .A2(n352), .B1(mem[89]), .B2(n8), .ZN(
        n137) );
  CKBD0BWP12T30P140 U54 ( .I(n362), .Z(n366) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n9), .A2(n366), .B1(mem[84]), .B2(n9), .ZN(
        n142) );
  ND3D0BWP12T30P140 U56 ( .A1(n348), .A2(n326), .A3(wr_ptr[0]), .ZN(n361) );
  NR2D0BWP12T30P140 U57 ( .A1(n361), .A2(n42), .ZN(n10) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n10), .A2(n363), .B1(mem[124]), .B2(n10), 
        .ZN(n102) );
  ND3D0BWP12T30P140 U59 ( .A1(n46), .A2(n326), .A3(wr_ptr[1]), .ZN(n356) );
  NR2D0BWP12T30P140 U60 ( .A1(n356), .A2(n350), .ZN(n12) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n12), .A2(n363), .B1(mem[90]), .B2(n12), .ZN(
        n136) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n10), .A2(n372), .B1(mem[125]), .B2(n10), 
        .ZN(n101) );
  NR2D0BWP12T30P140 U63 ( .A1(n48), .A2(n11), .ZN(n15) );
  ND2D0BWP12T30P140 U64 ( .A1(n15), .A2(n377), .ZN(n355) );
  NR2D0BWP12T30P140 U65 ( .A1(n343), .A2(n355), .ZN(n14) );
  CKBD0BWP12T30P140 U66 ( .I(n345), .Z(n357) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n14), .A2(n357), .B1(mem[79]), .B2(n14), .ZN(
        n147) );
  NR2D0BWP12T30P140 U68 ( .A1(n343), .A2(n42), .ZN(n13) );
  MAOI22D0BWP12T30P140 U69 ( .A1(n13), .A2(n366), .B1(mem[126]), .B2(n13), 
        .ZN(n100) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n12), .A2(n352), .B1(mem[91]), .B2(n12), .ZN(
        n135) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n13), .A2(n372), .B1(mem[127]), .B2(n13), 
        .ZN(n99) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n14), .A2(n362), .B1(mem[78]), .B2(n14), .ZN(
        n148) );
  NR2D0BWP12T30P140 U73 ( .A1(n323), .A2(n360), .ZN(n16) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n16), .A2(n368), .B1(mem[96]), .B2(n16), .ZN(
        n130) );
  ND2D0BWP12T30P140 U75 ( .A1(wr_ptr[5]), .A2(n15), .ZN(n319) );
  NR2D0BWP12T30P140 U76 ( .A1(n323), .A2(n319), .ZN(n36) );
  MAOI22D0BWP12T30P140 U77 ( .A1(n36), .A2(n366), .B1(mem[0]), .B2(n36), .ZN(
        n225) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n16), .A2(n352), .B1(mem[97]), .B2(n16), .ZN(
        n129) );
  NR2D0BWP12T30P140 U79 ( .A1(n319), .A2(n331), .ZN(n320) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n320), .A2(n352), .B1(mem[3]), .B2(n320), 
        .ZN(n223) );
  NR2D0BWP12T30P140 U81 ( .A1(n361), .A2(n355), .ZN(n17) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n17), .A2(n357), .B1(mem[77]), .B2(n17), .ZN(
        n149) );
  NR2D0BWP12T30P140 U83 ( .A1(n319), .A2(n344), .ZN(n18) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n18), .A2(n368), .B1(mem[8]), .B2(n18), .ZN(
        n218) );
  NR2D0BWP12T30P140 U85 ( .A1(n331), .A2(n360), .ZN(n19) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n19), .A2(n363), .B1(mem[98]), .B2(n19), .ZN(
        n128) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n17), .A2(n362), .B1(mem[76]), .B2(n17), .ZN(
        n150) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n18), .A2(n372), .B1(mem[9]), .B2(n18), .ZN(
        n217) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n19), .A2(n352), .B1(mem[99]), .B2(n19), .ZN(
        n127) );
  NR2D0BWP12T30P140 U90 ( .A1(n319), .A2(n356), .ZN(n20) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n20), .A2(n368), .B1(mem[10]), .B2(n20), .ZN(
        n216) );
  NR2D0BWP12T30P140 U92 ( .A1(n316), .A2(n355), .ZN(n23) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n23), .A2(n357), .B1(mem[71]), .B2(n23), .ZN(
        n155) );
  NR2D0BWP12T30P140 U94 ( .A1(n344), .A2(n360), .ZN(n22) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n22), .A2(n362), .B1(mem[104]), .B2(n22), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n20), .A2(n345), .B1(mem[11]), .B2(n20), .ZN(
        n215) );
  ND2D0BWP12T30P140 U97 ( .A1(wr_ptr[5]), .A2(n21), .ZN(n338) );
  NR2D0BWP12T30P140 U98 ( .A1(n356), .A2(n338), .ZN(n24) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n24), .A2(n363), .B1(mem[26]), .B2(n24), .ZN(
        n200) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n22), .A2(n352), .B1(mem[105]), .B2(n22), 
        .ZN(n121) );
  MAOI22D0BWP12T30P140 U101 ( .A1(n23), .A2(n366), .B1(mem[70]), .B2(n23), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n24), .A2(n345), .B1(mem[27]), .B2(n24), 
        .ZN(n199) );
  NR2D0BWP12T30P140 U103 ( .A1(n356), .A2(n360), .ZN(n26) );
  MAOI22D0BWP12T30P140 U104 ( .A1(n26), .A2(n362), .B1(mem[106]), .B2(n26), 
        .ZN(n120) );
  NR2D0BWP12T30P140 U105 ( .A1(n331), .A2(n340), .ZN(n349) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n349), .A2(n357), .B1(mem[35]), .B2(n349), 
        .ZN(n191) );
  MAOI22D0BWP12T30P140 U107 ( .A1(n25), .A2(n362), .B1(mem[110]), .B2(n25), 
        .ZN(n116) );
  NR2D0BWP12T30P140 U108 ( .A1(n339), .A2(n355), .ZN(n27) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n27), .A2(n357), .B1(mem[69]), .B2(n27), 
        .ZN(n157) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n26), .A2(n372), .B1(mem[107]), .B2(n26), 
        .ZN(n119) );
  NR2D0BWP12T30P140 U111 ( .A1(n356), .A2(n340), .ZN(n317) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n317), .A2(n357), .B1(mem[43]), .B2(n317), 
        .ZN(n183) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n27), .A2(n366), .B1(mem[68]), .B2(n27), 
        .ZN(n158) );
  ND2D0BWP12T30P140 U114 ( .A1(wr_ptr[5]), .A2(n28), .ZN(n313) );
  NR2D0BWP12T30P140 U115 ( .A1(n323), .A2(n313), .ZN(n29) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n29), .A2(n363), .B1(mem[48]), .B2(n29), 
        .ZN(n178) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n29), .A2(n345), .B1(mem[49]), .B2(n29), 
        .ZN(n177) );
  NR2D0BWP12T30P140 U118 ( .A1(n343), .A2(n313), .ZN(n30) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n30), .A2(n357), .B1(mem[63]), .B2(n30), 
        .ZN(n163) );
  NR2D0BWP12T30P140 U120 ( .A1(n331), .A2(n313), .ZN(n315) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n315), .A2(n363), .B1(mem[50]), .B2(n315), 
        .ZN(n176) );
  INVD0BWP12T30P140 U122 ( .I(n323), .ZN(n32) );
  ND3D0BWP12T30P140 U123 ( .A1(wr_ptr[3]), .A2(n32), .A3(write_en), .ZN(n33)
         );
  NR2D0BWP12T30P140 U124 ( .A1(n48), .A2(n33), .ZN(n376) );
  AOI21D0BWP12T30P140 U125 ( .A1(n48), .A2(n33), .B(n376), .ZN(n228) );
  NR2D0BWP12T30P140 U126 ( .A1(n344), .A2(n313), .ZN(n31) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n31), .A2(n366), .B1(mem[56]), .B2(n31), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U128 ( .A1(n30), .A2(n366), .B1(mem[62]), .B2(n30), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n31), .A2(n357), .B1(mem[57]), .B2(n31), 
        .ZN(n169) );
  ND2D0BWP12T30P140 U130 ( .A1(n32), .A2(write_en), .ZN(n35) );
  INVD0BWP12T30P140 U131 ( .I(n33), .ZN(n34) );
  AOI21D0BWP12T30P140 U132 ( .A1(n50), .A2(n35), .B(n34), .ZN(n229) );
  NR2D0BWP12T30P140 U133 ( .A1(n361), .A2(n313), .ZN(n38) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n38), .A2(n357), .B1(mem[61]), .B2(n38), 
        .ZN(n165) );
  NR2D0BWP12T30P140 U135 ( .A1(n323), .A2(n42), .ZN(n37) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n37), .A2(n362), .B1(mem[112]), .B2(n37), 
        .ZN(n114) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(mem[1]), .I1(data_in[1]), .S(n36), .Z(n226)
         );
  MAOI22D0BWP12T30P140 U138 ( .A1(n37), .A2(n372), .B1(mem[113]), .B2(n37), 
        .ZN(n113) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n38), .A2(n366), .B1(mem[60]), .B2(n38), 
        .ZN(n166) );
  NR2D0BWP12T30P140 U140 ( .A1(n319), .A2(n343), .ZN(n40) );
  MAOI22D0BWP12T30P140 U141 ( .A1(n40), .A2(n368), .B1(mem[14]), .B2(n40), 
        .ZN(n212) );
  NR2D0BWP12T30P140 U142 ( .A1(n331), .A2(n42), .ZN(n39) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n39), .A2(n362), .B1(mem[114]), .B2(n39), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n39), .A2(n372), .B1(mem[115]), .B2(n39), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n40), .A2(n345), .B1(mem[15]), .B2(n40), 
        .ZN(n211) );
  NR2D0BWP12T30P140 U146 ( .A1(n316), .A2(n313), .ZN(n354) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n354), .A2(n366), .B1(mem[54]), .B2(n354), 
        .ZN(n172) );
  NR2D0BWP12T30P140 U148 ( .A1(n344), .A2(n42), .ZN(n41) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n41), .A2(n362), .B1(mem[120]), .B2(n41), 
        .ZN(n106) );
  NR2D0BWP12T30P140 U150 ( .A1(n316), .A2(n338), .ZN(n328) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n328), .A2(n345), .B1(mem[23]), .B2(n328), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U152 ( .A1(n41), .A2(n372), .B1(mem[121]), .B2(n41), 
        .ZN(n105) );
  NR2D0BWP12T30P140 U153 ( .A1(n339), .A2(n313), .ZN(n43) );
  MAOI22D0BWP12T30P140 U154 ( .A1(n43), .A2(n345), .B1(mem[53]), .B2(n43), 
        .ZN(n173) );
  NR2D0BWP12T30P140 U155 ( .A1(n323), .A2(n338), .ZN(n312) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n312), .A2(n368), .B1(mem[16]), .B2(n312), 
        .ZN(n210) );
  NR2D0BWP12T30P140 U157 ( .A1(n356), .A2(n42), .ZN(n44) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n44), .A2(n368), .B1(mem[122]), .B2(n44), 
        .ZN(n104) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n43), .A2(n366), .B1(mem[52]), .B2(n43), 
        .ZN(n174) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n44), .A2(n372), .B1(mem[123]), .B2(n44), 
        .ZN(n103) );
  OAI22D0BWP12T30P140 U161 ( .A1(rd_ptr[1]), .A2(n348), .B1(rd_ptr[0]), .B2(
        n46), .ZN(n45) );
  AOI221D0BWP12T30P140 U162 ( .A1(n46), .A2(rd_ptr[0]), .B1(n348), .B2(
        rd_ptr[1]), .C(n45), .ZN(n53) );
  OAI22D0BWP12T30P140 U163 ( .A1(rd_ptr[4]), .A2(n48), .B1(rd_ptr[5]), .B2(
        n377), .ZN(n47) );
  AOI221D0BWP12T30P140 U164 ( .A1(n377), .A2(rd_ptr[5]), .B1(n48), .B2(
        rd_ptr[4]), .C(n47), .ZN(n52) );
  OAI22D0BWP12T30P140 U165 ( .A1(rd_ptr[2]), .A2(n326), .B1(rd_ptr[3]), .B2(
        n50), .ZN(n49) );
  AOI221D0BWP12T30P140 U166 ( .A1(n50), .A2(rd_ptr[3]), .B1(n326), .B2(
        rd_ptr[2]), .C(n49), .ZN(n51) );
  ND3D0BWP12T30P140 U167 ( .A1(n53), .A2(n52), .A3(n51), .ZN(n371) );
  INVD0BWP12T30P140 U168 ( .I(n371), .ZN(empty) );
  INVD0BWP12T30P140 U169 ( .I(rd_ptr[3]), .ZN(n310) );
  INVD0BWP12T30P140 U170 ( .I(rd_ptr[4]), .ZN(n66) );
  NR2D0BWP12T30P140 U171 ( .A1(n310), .A2(n66), .ZN(n293) );
  ND2D0BWP12T30P140 U172 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n55) );
  INVD0BWP12T30P140 U173 ( .I(rd_ptr[2]), .ZN(n54) );
  NR2D0BWP12T30P140 U174 ( .A1(n55), .A2(n54), .ZN(n281) );
  INVD0BWP12T30P140 U175 ( .I(rd_ptr[0]), .ZN(n56) );
  NR3D0BWP12T30P140 U176 ( .A1(rd_ptr[1]), .A2(n56), .A3(n54), .ZN(n280) );
  AOI22D0BWP12T30P140 U177 ( .A1(n281), .A2(mem[64]), .B1(n280), .B2(mem[68]), 
        .ZN(n60) );
  INVD0BWP12T30P140 U178 ( .I(rd_ptr[1]), .ZN(n308) );
  NR3D0BWP12T30P140 U179 ( .A1(rd_ptr[0]), .A2(n308), .A3(n54), .ZN(n283) );
  NR3D0BWP12T30P140 U180 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n54), .ZN(n282)
         );
  AOI22D0BWP12T30P140 U181 ( .A1(n283), .A2(mem[66]), .B1(n282), .B2(mem[70]), 
        .ZN(n59) );
  NR2D0BWP12T30P140 U182 ( .A1(rd_ptr[2]), .A2(n55), .ZN(n285) );
  NR3D0BWP12T30P140 U183 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n56), .ZN(n284)
         );
  AOI22D0BWP12T30P140 U184 ( .A1(n285), .A2(mem[72]), .B1(n284), .B2(mem[76]), 
        .ZN(n58) );
  NR3D0BWP12T30P140 U185 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n308), .ZN(n287) );
  NR3D0BWP12T30P140 U186 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), 
        .ZN(n286) );
  AOI22D0BWP12T30P140 U187 ( .A1(n287), .A2(mem[74]), .B1(n286), .B2(mem[78]), 
        .ZN(n57) );
  ND4D0BWP12T30P140 U188 ( .A1(n60), .A2(n59), .A3(n58), .A4(n57), .ZN(n61) );
  AOI21D0BWP12T30P140 U189 ( .A1(n293), .A2(n61), .B(rd_ptr[5]), .ZN(n245) );
  ND2D0BWP12T30P140 U190 ( .A1(n310), .A2(n66), .ZN(n297) );
  INVD0BWP12T30P140 U191 ( .I(n297), .ZN(n262) );
  AOI22D0BWP12T30P140 U192 ( .A1(n281), .A2(mem[112]), .B1(n280), .B2(mem[116]), .ZN(n65) );
  AOI22D0BWP12T30P140 U193 ( .A1(n283), .A2(mem[114]), .B1(n282), .B2(mem[118]), .ZN(n64) );
  AOI22D0BWP12T30P140 U194 ( .A1(n285), .A2(mem[120]), .B1(n284), .B2(mem[124]), .ZN(n63) );
  AOI22D0BWP12T30P140 U195 ( .A1(n287), .A2(mem[122]), .B1(n286), .B2(mem[126]), .ZN(n62) );
  ND4D0BWP12T30P140 U196 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .ZN(n72) );
  NR2D0BWP12T30P140 U197 ( .A1(rd_ptr[3]), .A2(n66), .ZN(n295) );
  AOI22D0BWP12T30P140 U198 ( .A1(n281), .A2(mem[80]), .B1(n280), .B2(mem[84]), 
        .ZN(n70) );
  AOI22D0BWP12T30P140 U199 ( .A1(n283), .A2(mem[82]), .B1(n282), .B2(mem[86]), 
        .ZN(n69) );
  AOI22D0BWP12T30P140 U200 ( .A1(n285), .A2(mem[88]), .B1(n284), .B2(mem[92]), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U201 ( .A1(n287), .A2(mem[90]), .B1(n286), .B2(mem[94]), 
        .ZN(n67) );
  ND4D0BWP12T30P140 U202 ( .A1(n70), .A2(n69), .A3(n68), .A4(n67), .ZN(n71) );
  AOI22D0BWP12T30P140 U203 ( .A1(n262), .A2(n72), .B1(n295), .B2(n71), .ZN(
        n244) );
  NR2D0BWP12T30P140 U204 ( .A1(rd_ptr[4]), .A2(n310), .ZN(n301) );
  AOI22D0BWP12T30P140 U205 ( .A1(n281), .A2(mem[96]), .B1(n280), .B2(mem[100]), 
        .ZN(n76) );
  AOI22D0BWP12T30P140 U206 ( .A1(n283), .A2(mem[98]), .B1(n282), .B2(mem[102]), 
        .ZN(n75) );
  AOI22D0BWP12T30P140 U207 ( .A1(n285), .A2(mem[104]), .B1(n284), .B2(mem[108]), .ZN(n74) );
  AOI22D0BWP12T30P140 U208 ( .A1(n287), .A2(mem[106]), .B1(n286), .B2(mem[110]), .ZN(n73) );
  ND4D0BWP12T30P140 U209 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .ZN(n77) );
  ND2D0BWP12T30P140 U210 ( .A1(n301), .A2(n77), .ZN(n243) );
  AOI22D0BWP12T30P140 U211 ( .A1(n281), .A2(mem[32]), .B1(n280), .B2(mem[36]), 
        .ZN(n81) );
  AOI22D0BWP12T30P140 U212 ( .A1(n283), .A2(mem[34]), .B1(n282), .B2(mem[38]), 
        .ZN(n80) );
  AOI22D0BWP12T30P140 U213 ( .A1(n285), .A2(mem[40]), .B1(n284), .B2(mem[44]), 
        .ZN(n79) );
  AOI22D0BWP12T30P140 U214 ( .A1(n287), .A2(mem[42]), .B1(n286), .B2(mem[46]), 
        .ZN(n78) );
  ND4D0BWP12T30P140 U215 ( .A1(n81), .A2(n80), .A3(n79), .A4(n78), .ZN(n241)
         );
  AOI22D0BWP12T30P140 U216 ( .A1(n281), .A2(mem[48]), .B1(n280), .B2(mem[52]), 
        .ZN(n85) );
  AOI22D0BWP12T30P140 U217 ( .A1(n283), .A2(mem[50]), .B1(n282), .B2(mem[54]), 
        .ZN(n84) );
  AOI22D0BWP12T30P140 U218 ( .A1(n285), .A2(mem[56]), .B1(n284), .B2(mem[60]), 
        .ZN(n83) );
  AOI22D0BWP12T30P140 U219 ( .A1(n287), .A2(mem[58]), .B1(n286), .B2(mem[62]), 
        .ZN(n82) );
  AN4D0BWP12T30P140 U220 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .Z(n97) );
  AOI22D0BWP12T30P140 U221 ( .A1(n281), .A2(mem[16]), .B1(n280), .B2(mem[20]), 
        .ZN(n89) );
  AOI22D0BWP12T30P140 U222 ( .A1(n283), .A2(mem[18]), .B1(n282), .B2(mem[22]), 
        .ZN(n88) );
  AOI22D0BWP12T30P140 U223 ( .A1(n285), .A2(mem[24]), .B1(n284), .B2(mem[28]), 
        .ZN(n87) );
  AOI22D0BWP12T30P140 U224 ( .A1(n287), .A2(mem[26]), .B1(n286), .B2(mem[30]), 
        .ZN(n86) );
  ND4D0BWP12T30P140 U225 ( .A1(n89), .A2(n88), .A3(n87), .A4(n86), .ZN(n95) );
  AOI22D0BWP12T30P140 U226 ( .A1(n281), .A2(mem[0]), .B1(n280), .B2(mem[4]), 
        .ZN(n93) );
  AOI22D0BWP12T30P140 U227 ( .A1(n283), .A2(mem[2]), .B1(n282), .B2(mem[6]), 
        .ZN(n92) );
  AOI22D0BWP12T30P140 U228 ( .A1(n285), .A2(mem[8]), .B1(n284), .B2(mem[12]), 
        .ZN(n91) );
  AOI22D0BWP12T30P140 U229 ( .A1(n287), .A2(mem[10]), .B1(n286), .B2(mem[14]), 
        .ZN(n90) );
  ND4D0BWP12T30P140 U230 ( .A1(n93), .A2(n92), .A3(n91), .A4(n90), .ZN(n94) );
  AOI22D0BWP12T30P140 U231 ( .A1(n295), .A2(n95), .B1(n293), .B2(n94), .ZN(n96) );
  OAI211D0BWP12T30P140 U232 ( .A1(n97), .A2(n297), .B(rd_ptr[5]), .C(n96), 
        .ZN(n98) );
  AOI21D0BWP12T30P140 U233 ( .A1(n301), .A2(n241), .B(n98), .ZN(n242) );
  AOI31D0BWP12T30P140 U234 ( .A1(n245), .A2(n244), .A3(n243), .B(n242), .ZN(
        n246) );
  CKMUX2D0BWP12T30P140 U235 ( .I0(n246), .I1(data_out[0]), .S(empty), .Z(n239)
         );
  NR2D0BWP12T30P140 U236 ( .A1(n339), .A2(n338), .ZN(n324) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n324), .A2(n368), .B1(mem[20]), .B2(n324), 
        .ZN(n206) );
  AOI22D0BWP12T30P140 U238 ( .A1(n281), .A2(mem[65]), .B1(n280), .B2(mem[69]), 
        .ZN(n250) );
  AOI22D0BWP12T30P140 U239 ( .A1(n283), .A2(mem[67]), .B1(n282), .B2(mem[71]), 
        .ZN(n249) );
  AOI22D0BWP12T30P140 U240 ( .A1(n285), .A2(mem[73]), .B1(n284), .B2(mem[77]), 
        .ZN(n248) );
  AOI22D0BWP12T30P140 U241 ( .A1(n287), .A2(mem[75]), .B1(n286), .B2(mem[79]), 
        .ZN(n247) );
  ND4D0BWP12T30P140 U242 ( .A1(n250), .A2(n249), .A3(n248), .A4(n247), .ZN(
        n251) );
  AOI21D0BWP12T30P140 U243 ( .A1(n293), .A2(n251), .B(rd_ptr[5]), .ZN(n305) );
  AOI22D0BWP12T30P140 U244 ( .A1(n281), .A2(mem[113]), .B1(n280), .B2(mem[117]), .ZN(n255) );
  AOI22D0BWP12T30P140 U245 ( .A1(n283), .A2(mem[115]), .B1(n282), .B2(mem[119]), .ZN(n254) );
  AOI22D0BWP12T30P140 U246 ( .A1(n285), .A2(mem[121]), .B1(n284), .B2(mem[125]), .ZN(n253) );
  AOI22D0BWP12T30P140 U247 ( .A1(n287), .A2(mem[123]), .B1(n286), .B2(mem[127]), .ZN(n252) );
  ND4D0BWP12T30P140 U248 ( .A1(n255), .A2(n254), .A3(n253), .A4(n252), .ZN(
        n261) );
  AOI22D0BWP12T30P140 U249 ( .A1(n281), .A2(mem[81]), .B1(n280), .B2(mem[85]), 
        .ZN(n259) );
  AOI22D0BWP12T30P140 U250 ( .A1(n283), .A2(mem[83]), .B1(n282), .B2(mem[87]), 
        .ZN(n258) );
  AOI22D0BWP12T30P140 U251 ( .A1(n285), .A2(mem[89]), .B1(n284), .B2(mem[93]), 
        .ZN(n257) );
  AOI22D0BWP12T30P140 U252 ( .A1(n287), .A2(mem[91]), .B1(n286), .B2(mem[95]), 
        .ZN(n256) );
  ND4D0BWP12T30P140 U253 ( .A1(n259), .A2(n258), .A3(n257), .A4(n256), .ZN(
        n260) );
  AOI22D0BWP12T30P140 U254 ( .A1(n262), .A2(n261), .B1(n295), .B2(n260), .ZN(
        n304) );
  AOI22D0BWP12T30P140 U255 ( .A1(n281), .A2(mem[97]), .B1(n280), .B2(mem[101]), 
        .ZN(n266) );
  AOI22D0BWP12T30P140 U256 ( .A1(n283), .A2(mem[99]), .B1(n282), .B2(mem[103]), 
        .ZN(n265) );
  AOI22D0BWP12T30P140 U257 ( .A1(n285), .A2(mem[105]), .B1(n284), .B2(mem[109]), .ZN(n264) );
  AOI22D0BWP12T30P140 U258 ( .A1(n287), .A2(mem[107]), .B1(n286), .B2(mem[111]), .ZN(n263) );
  ND4D0BWP12T30P140 U259 ( .A1(n266), .A2(n265), .A3(n264), .A4(n263), .ZN(
        n267) );
  ND2D0BWP12T30P140 U260 ( .A1(n301), .A2(n267), .ZN(n303) );
  AOI22D0BWP12T30P140 U261 ( .A1(n281), .A2(mem[33]), .B1(n280), .B2(mem[37]), 
        .ZN(n271) );
  AOI22D0BWP12T30P140 U262 ( .A1(n283), .A2(mem[35]), .B1(n282), .B2(mem[39]), 
        .ZN(n270) );
  AOI22D0BWP12T30P140 U263 ( .A1(n285), .A2(mem[41]), .B1(n284), .B2(mem[45]), 
        .ZN(n269) );
  AOI22D0BWP12T30P140 U264 ( .A1(n287), .A2(mem[43]), .B1(n286), .B2(mem[47]), 
        .ZN(n268) );
  ND4D0BWP12T30P140 U265 ( .A1(n271), .A2(n270), .A3(n269), .A4(n268), .ZN(
        n300) );
  AOI22D0BWP12T30P140 U266 ( .A1(n281), .A2(mem[49]), .B1(n280), .B2(mem[53]), 
        .ZN(n275) );
  AOI22D0BWP12T30P140 U267 ( .A1(n283), .A2(mem[51]), .B1(n282), .B2(mem[55]), 
        .ZN(n274) );
  AOI22D0BWP12T30P140 U268 ( .A1(n285), .A2(mem[57]), .B1(n284), .B2(mem[61]), 
        .ZN(n273) );
  AOI22D0BWP12T30P140 U269 ( .A1(n287), .A2(mem[59]), .B1(n286), .B2(mem[63]), 
        .ZN(n272) );
  AN4D0BWP12T30P140 U270 ( .A1(n275), .A2(n274), .A3(n273), .A4(n272), .Z(n298) );
  AOI22D0BWP12T30P140 U271 ( .A1(n281), .A2(mem[17]), .B1(n280), .B2(mem[21]), 
        .ZN(n279) );
  AOI22D0BWP12T30P140 U272 ( .A1(n283), .A2(mem[19]), .B1(n282), .B2(mem[23]), 
        .ZN(n278) );
  AOI22D0BWP12T30P140 U273 ( .A1(n285), .A2(mem[25]), .B1(n284), .B2(mem[29]), 
        .ZN(n277) );
  AOI22D0BWP12T30P140 U274 ( .A1(n287), .A2(mem[27]), .B1(n286), .B2(mem[31]), 
        .ZN(n276) );
  ND4D0BWP12T30P140 U275 ( .A1(n279), .A2(n278), .A3(n277), .A4(n276), .ZN(
        n294) );
  AOI22D0BWP12T30P140 U276 ( .A1(n281), .A2(mem[1]), .B1(n280), .B2(mem[5]), 
        .ZN(n291) );
  AOI22D0BWP12T30P140 U277 ( .A1(n283), .A2(mem[3]), .B1(n282), .B2(mem[7]), 
        .ZN(n290) );
  AOI22D0BWP12T30P140 U278 ( .A1(n285), .A2(mem[9]), .B1(n284), .B2(mem[13]), 
        .ZN(n289) );
  AOI22D0BWP12T30P140 U279 ( .A1(n287), .A2(mem[11]), .B1(n286), .B2(mem[15]), 
        .ZN(n288) );
  ND4D0BWP12T30P140 U280 ( .A1(n291), .A2(n290), .A3(n289), .A4(n288), .ZN(
        n292) );
  AOI22D0BWP12T30P140 U281 ( .A1(n295), .A2(n294), .B1(n293), .B2(n292), .ZN(
        n296) );
  OAI211D0BWP12T30P140 U282 ( .A1(n298), .A2(n297), .B(rd_ptr[5]), .C(n296), 
        .ZN(n299) );
  AOI21D0BWP12T30P140 U283 ( .A1(n301), .A2(n300), .B(n299), .ZN(n302) );
  AOI31D0BWP12T30P140 U284 ( .A1(n305), .A2(n304), .A3(n303), .B(n302), .ZN(
        n306) );
  CKMUX2D0BWP12T30P140 U285 ( .I0(n306), .I1(data_out[1]), .S(empty), .Z(n233)
         );
  NR2D0BWP12T30P140 U286 ( .A1(n343), .A2(n340), .ZN(n307) );
  MAOI22D0BWP12T30P140 U287 ( .A1(n307), .A2(n372), .B1(mem[47]), .B2(n307), 
        .ZN(n179) );
  NR2D0BWP12T30P140 U288 ( .A1(n361), .A2(n338), .ZN(n332) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n332), .A2(n352), .B1(mem[29]), .B2(n332), 
        .ZN(n198) );
  ND2D0BWP12T30P140 U290 ( .A1(rd_ptr[0]), .A2(n371), .ZN(n370) );
  NR2D0BWP12T30P140 U291 ( .A1(n308), .A2(n370), .ZN(n335) );
  ND2D0BWP12T30P140 U292 ( .A1(rd_ptr[2]), .A2(n335), .ZN(n334) );
  NR2D0BWP12T30P140 U293 ( .A1(n310), .A2(n334), .ZN(n309) );
  ND2D0BWP12T30P140 U294 ( .A1(rd_ptr[4]), .A2(n309), .ZN(n374) );
  OA21D0BWP12T30P140 U295 ( .A1(rd_ptr[4]), .A2(n309), .B(n374), .Z(n235) );
  NR2D0BWP12T30P140 U296 ( .A1(n343), .A2(n338), .ZN(n336) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n336), .A2(n372), .B1(mem[31]), .B2(n336), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n307), .A2(n363), .B1(mem[46]), .B2(n307), 
        .ZN(n180) );
  NR2D0BWP12T30P140 U299 ( .A1(n316), .A2(n340), .ZN(n311) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n311), .A2(n363), .B1(mem[38]), .B2(n311), 
        .ZN(n188) );
  AOI21D0BWP12T30P140 U301 ( .A1(n308), .A2(n370), .B(n335), .ZN(n238) );
  AOI21D0BWP12T30P140 U302 ( .A1(n310), .A2(n334), .B(n309), .ZN(n236) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n311), .A2(n372), .B1(mem[39]), .B2(n311), 
        .ZN(n187) );
  NR2D0BWP12T30P140 U304 ( .A1(n319), .A2(n339), .ZN(n314) );
  MAOI22D0BWP12T30P140 U305 ( .A1(n314), .A2(n372), .B1(mem[5]), .B2(n314), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n312), .A2(n345), .B1(mem[17]), .B2(n312), 
        .ZN(n209) );
  NR2D0BWP12T30P140 U307 ( .A1(n319), .A2(n316), .ZN(n341) );
  MAOI22D0BWP12T30P140 U308 ( .A1(n341), .A2(n368), .B1(mem[6]), .B2(n341), 
        .ZN(n220) );
  NR2D0BWP12T30P140 U309 ( .A1(n356), .A2(n313), .ZN(n318) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n318), .A2(n366), .B1(mem[58]), .B2(n318), 
        .ZN(n168) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n314), .A2(n368), .B1(mem[4]), .B2(n314), 
        .ZN(n222) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n315), .A2(n357), .B1(mem[51]), .B2(n315), 
        .ZN(n175) );
  NR2D0BWP12T30P140 U313 ( .A1(n316), .A2(n360), .ZN(n321) );
  MAOI22D0BWP12T30P140 U314 ( .A1(n321), .A2(n352), .B1(mem[103]), .B2(n321), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n317), .A2(n363), .B1(mem[42]), .B2(n317), 
        .ZN(n184) );
  MAOI22D0BWP12T30P140 U316 ( .A1(n318), .A2(n357), .B1(mem[59]), .B2(n318), 
        .ZN(n167) );
  NR2D0BWP12T30P140 U317 ( .A1(n331), .A2(n338), .ZN(n329) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n329), .A2(n368), .B1(mem[18]), .B2(n329), 
        .ZN(n208) );
  NR2D0BWP12T30P140 U319 ( .A1(n319), .A2(n361), .ZN(n322) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n322), .A2(n368), .B1(mem[12]), .B2(n322), 
        .ZN(n214) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n368), .A2(n320), .B1(n320), .B2(mem[2]), 
        .ZN(n224) );
  MAOI22D0BWP12T30P140 U322 ( .A1(n321), .A2(n362), .B1(mem[102]), .B2(n321), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n322), .A2(n372), .B1(mem[13]), .B2(n322), 
        .ZN(n213) );
  NR2D0BWP12T30P140 U324 ( .A1(n323), .A2(n355), .ZN(n327) );
  MAOI22D0BWP12T30P140 U325 ( .A1(n327), .A2(n366), .B1(mem[64]), .B2(n327), 
        .ZN(n162) );
  NR2D0BWP12T30P140 U326 ( .A1(n344), .A2(n340), .ZN(n330) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n330), .A2(n345), .B1(mem[41]), .B2(n330), 
        .ZN(n185) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n324), .A2(n345), .B1(mem[21]), .B2(n324), 
        .ZN(n205) );
  ND2D0BWP12T30P140 U329 ( .A1(wr_ptr[0]), .A2(write_en), .ZN(n365) );
  NR2D0BWP12T30P140 U330 ( .A1(n348), .A2(n365), .ZN(n347) );
  INVD0BWP12T30P140 U331 ( .I(write_en), .ZN(n325) );
  OAI22D0BWP12T30P140 U332 ( .A1(n347), .A2(n326), .B1(n325), .B2(n344), .ZN(
        n230) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n327), .A2(n357), .B1(mem[65]), .B2(n327), 
        .ZN(n161) );
  NR2D0BWP12T30P140 U334 ( .A1(n339), .A2(n360), .ZN(n333) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n333), .A2(n352), .B1(mem[101]), .B2(n333), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U336 ( .A1(n328), .A2(n368), .B1(mem[22]), .B2(n328), 
        .ZN(n204) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n329), .A2(n345), .B1(mem[19]), .B2(n329), 
        .ZN(n207) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n330), .A2(n363), .B1(mem[40]), .B2(n330), 
        .ZN(n186) );
  NR2D0BWP12T30P140 U339 ( .A1(n331), .A2(n355), .ZN(n337) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n337), .A2(n366), .B1(mem[66]), .B2(n337), 
        .ZN(n160) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n332), .A2(n363), .B1(mem[28]), .B2(n332), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U342 ( .A1(n333), .A2(n366), .B1(mem[100]), .B2(n333), 
        .ZN(n126) );
  OA21D0BWP12T30P140 U343 ( .A1(rd_ptr[2]), .A2(n335), .B(n334), .Z(n237) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n336), .A2(n363), .B1(mem[30]), .B2(n336), 
        .ZN(n196) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n337), .A2(n357), .B1(mem[67]), .B2(n337), 
        .ZN(n159) );
  NR2D0BWP12T30P140 U346 ( .A1(n344), .A2(n338), .ZN(n346) );
  MAOI22D0BWP12T30P140 U347 ( .A1(n346), .A2(n368), .B1(mem[24]), .B2(n346), 
        .ZN(n202) );
  NR2D0BWP12T30P140 U348 ( .A1(n339), .A2(n340), .ZN(n353) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n353), .A2(n363), .B1(mem[36]), .B2(n353), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U350 ( .A1(n361), .A2(n340), .ZN(n364) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n364), .A2(n352), .B1(mem[45]), .B2(n364), 
        .ZN(n181) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n341), .A2(n345), .B1(mem[7]), .B2(n341), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n342), .A2(n345), .B1(mem[33]), .B2(n342), 
        .ZN(n193) );
  NR2D0BWP12T30P140 U354 ( .A1(n343), .A2(n350), .ZN(n351) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n351), .A2(n352), .B1(mem[95]), .B2(n351), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U356 ( .A1(n344), .A2(n355), .ZN(n358) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n358), .A2(n366), .B1(mem[72]), .B2(n358), 
        .ZN(n154) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n346), .A2(n345), .B1(mem[25]), .B2(n346), 
        .ZN(n201) );
  AOI21D0BWP12T30P140 U359 ( .A1(n348), .A2(n365), .B(n347), .ZN(n232) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n349), .A2(n363), .B1(mem[34]), .B2(n349), 
        .ZN(n192) );
  NR2D0BWP12T30P140 U361 ( .A1(n361), .A2(n350), .ZN(n367) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n367), .A2(n352), .B1(mem[93]), .B2(n367), 
        .ZN(n133) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n351), .A2(n362), .B1(mem[94]), .B2(n351), 
        .ZN(n132) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n353), .A2(n352), .B1(mem[37]), .B2(n353), 
        .ZN(n189) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n354), .A2(n357), .B1(mem[55]), .B2(n354), 
        .ZN(n171) );
  NR2D0BWP12T30P140 U366 ( .A1(n356), .A2(n355), .ZN(n359) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n359), .A2(n357), .B1(mem[75]), .B2(n359), 
        .ZN(n151) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n358), .A2(n357), .B1(mem[73]), .B2(n358), 
        .ZN(n153) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n359), .A2(n366), .B1(mem[74]), .B2(n359), 
        .ZN(n152) );
  NR2D0BWP12T30P140 U370 ( .A1(n361), .A2(n360), .ZN(n373) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n373), .A2(n362), .B1(mem[108]), .B2(n373), 
        .ZN(n118) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n364), .A2(n363), .B1(mem[44]), .B2(n364), 
        .ZN(n182) );
  OA21D0BWP12T30P140 U373 ( .A1(wr_ptr[0]), .A2(write_en), .B(n365), .Z(n231)
         );
  MAOI22D0BWP12T30P140 U374 ( .A1(n367), .A2(n366), .B1(mem[92]), .B2(n367), 
        .ZN(n134) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n369), .A2(n368), .B1(mem[80]), .B2(n369), 
        .ZN(n146) );
  OA21D0BWP12T30P140 U376 ( .A1(n371), .A2(rd_ptr[0]), .B(n370), .Z(n240) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n373), .A2(n372), .B1(mem[109]), .B2(n373), 
        .ZN(n117) );
  CKBD0BWP12T30P140 U378 ( .I(clk_write), .Z(n385) );
  CKBD0BWP12T30P140 U379 ( .I(clk_write), .Z(n383) );
  CKBD0BWP12T30P140 U380 ( .I(clk_write), .Z(n379) );
  CKBD0BWP12T30P140 U381 ( .I(clk_write), .Z(n380) );
  CKBD0BWP12T30P140 U382 ( .I(clk_write), .Z(n381) );
  CKBD0BWP12T30P140 U383 ( .I(clk_write), .Z(n382) );
  CKBD0BWP12T30P140 U384 ( .I(clk_write), .Z(n384) );
  INVD0BWP12T30P140 U385 ( .I(rd_ptr[5]), .ZN(n375) );
  MUX2ND0BWP12T30P140 U386 ( .I0(rd_ptr[5]), .I1(n375), .S(n374), .ZN(n234) );
  MUX2ND0BWP12T30P140 U387 ( .I0(n377), .I1(wr_ptr[5]), .S(n376), .ZN(n227) );
endmodule


module ac97_transceiver ( sys_clk, sys_rst, ac97_clk, ac97_rst_n, ac97_sin, 
        ac97_sout, ac97_sync, up_stb, up_ack, up_sync, up_data, down_ready, 
        down_stb, down_sync, down_data );
  input sys_clk, sys_rst, ac97_clk, ac97_rst_n, ac97_sin, up_ack, down_stb,
         down_sync, down_data;
  output ac97_sout, ac97_sync, up_stb, up_sync, up_data, down_ready;
  wire   n_Logic1_, ac97_sin_r, ac97_syncfb_r, up_empty, ac97_sync_r,
         ac97_sout_r, n4, n1;

  asfifo_data_width2_address_width6_1 up_fifo ( .data_out({up_sync, up_data}), 
        .empty(up_empty), .read_en(up_ack), .clk_read(n1), .data_in({
        ac97_syncfb_r, ac97_sin_r}), .write_en(n_Logic1_), .clk_write(n4), 
        .rst(sys_rst) );
  asfifo_data_width2_address_width6_0 down_fifo ( .data_out({ac97_sync_r, 
        ac97_sout_r}), .read_en(n_Logic1_), .clk_read(ac97_clk), .data_in({
        down_sync, down_data}), .write_en(down_stb), .clk_write(n1), .rst(
        sys_rst) );
  DFND1BWP12T30P140 ac97_sin_r_reg ( .D(ac97_sin), .CPN(ac97_clk), .Q(
        ac97_sin_r) );
  DFND1BWP12T30P140 ac97_syncfb_r_reg ( .D(ac97_sync), .CPN(ac97_clk), .Q(
        ac97_syncfb_r) );
  DFCNQD1BWP12T30P140 ac97_sout_reg ( .D(ac97_sout_r), .CP(ac97_clk), .CDN(
        ac97_rst_n), .Q(ac97_sout) );
  DFCNQD1BWP12T30P140 ac97_sync_reg ( .D(ac97_sync_r), .CP(ac97_clk), .CDN(
        ac97_rst_n), .Q(ac97_sync) );
  TIEHBWP12T30P140 U3 ( .Z(n_Logic1_) );
  INVD0BWP12T30P140 U4 ( .I(up_empty), .ZN(up_stb) );
  CKBD0BWP12T30P140 U5 ( .I(sys_clk), .Z(n1) );
  INVD0BWP12T30P140 U6 ( .I(ac97_clk), .ZN(n4) );
endmodule


module ac97_framer ( sys_clk, sys_rst, down_ready, down_stb, down_sync, 
        down_data, en, next_frame, addr_valid, addr, data_valid, data, 
        pcmleft_valid, pcmleft, pcmright_valid, pcmright );
  input [19:0] addr;
  input [19:0] data;
  input [19:0] pcmleft;
  input [19:0] pcmright;
  input sys_clk, sys_rst, down_ready, en, addr_valid, data_valid,
         pcmleft_valid, pcmright_valid;
  output down_stb, down_sync, down_data, next_frame;
  wire   slot_bit, N98, N99, in_slot, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122;
  wire   [7:0] bitcounter;

  LHQD2BWP12T30P140 slot_bit_reg ( .E(N98), .D(N99), .Q(slot_bit) );
  DFQD2BWP12T30P140 down_data_reg ( .D(n193), .CP(sys_clk), .Q(down_data) );
  DFQD2BWP12T30P140 in_slot_reg ( .D(n194), .CP(sys_clk), .Q(in_slot) );
  DFQD2BWP12T30P140 bitcounter_reg_2_ ( .D(n190), .CP(sys_clk), .Q(
        bitcounter[2]) );
  DFQD2BWP12T30P140 down_sync_reg ( .D(n195), .CP(sys_clk), .Q(down_sync) );
  DFQD2BWP12T30P140 bitcounter_reg_7_ ( .D(n185), .CP(sys_clk), .Q(
        bitcounter[7]) );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n184), .CP(sys_clk), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n188), .CP(sys_clk), .Q(
        bitcounter[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n191), .CP(sys_clk), .Q(
        bitcounter[1]) );
  DFQD2BWP12T30P140 bitcounter_reg_6_ ( .D(n186), .CP(sys_clk), .Q(
        bitcounter[6]) );
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n187), .CP(sys_clk), .Q(
        bitcounter[5]) );
  DFQD2BWP12T30P140 bitcounter_reg_0_ ( .D(n192), .CP(sys_clk), .Q(
        bitcounter[0]) );
  DFQD1BWP12T30P140 bitcounter_reg_3_ ( .D(n189), .CP(sys_clk), .Q(
        bitcounter[3]) );
  AOI221D0BWP12T30P140 U3 ( .A1(n48), .A2(n122), .B1(n47), .B2(n122), .C(n46), 
        .ZN(n73) );
  AOI221D0BWP12T30P140 U4 ( .A1(n96), .A2(n90), .B1(n82), .B2(n90), .C(sys_rst), .ZN(n188) );
  AOI32D0BWP12T30P140 U5 ( .A1(en), .A2(n91), .A3(n114), .B1(n84), .B2(n91), 
        .ZN(n184) );
  CKBD0BWP12T30P140 U6 ( .I(en), .Z(down_stb) );
  INVD0BWP12T30P140 U7 ( .I(bitcounter[2]), .ZN(n98) );
  ND2D0BWP12T30P140 U8 ( .A1(n98), .A2(bitcounter[1]), .ZN(n9) );
  INVD0BWP12T30P140 U9 ( .I(bitcounter[0]), .ZN(n101) );
  OR2D0BWP12T30P140 U10 ( .A1(n9), .A2(n101), .Z(n92) );
  NR2D0BWP12T30P140 U11 ( .A1(bitcounter[3]), .A2(n92), .ZN(n106) );
  INVD0BWP12T30P140 U12 ( .I(bitcounter[3]), .ZN(n104) );
  NR2D0BWP12T30P140 U13 ( .A1(n104), .A2(n92), .ZN(n49) );
  AOI22D0BWP12T30P140 U14 ( .A1(n106), .A2(data[4]), .B1(n49), .B2(pcmleft[16]), .ZN(n6) );
  NR2D0BWP12T30P140 U15 ( .A1(bitcounter[2]), .A2(bitcounter[1]), .ZN(n100) );
  ND2D0BWP12T30P140 U16 ( .A1(n100), .A2(bitcounter[0]), .ZN(n1) );
  NR2D0BWP12T30P140 U17 ( .A1(bitcounter[3]), .A2(n1), .ZN(n50) );
  ND3D0BWP12T30P140 U18 ( .A1(bitcounter[2]), .A2(bitcounter[1]), .A3(
        bitcounter[0]), .ZN(n116) );
  NR2D0BWP12T30P140 U19 ( .A1(n104), .A2(n116), .ZN(n83) );
  AOI22D0BWP12T30P140 U20 ( .A1(n50), .A2(data[6]), .B1(n83), .B2(pcmleft[12]), 
        .ZN(n5) );
  NR2D0BWP12T30P140 U21 ( .A1(bitcounter[3]), .A2(n116), .ZN(n118) );
  INVD0BWP12T30P140 U22 ( .I(bitcounter[1]), .ZN(n99) );
  ND3D0BWP12T30P140 U23 ( .A1(n101), .A2(bitcounter[3]), .A3(bitcounter[2]), 
        .ZN(n2) );
  NR2D0BWP12T30P140 U24 ( .A1(n99), .A2(n2), .ZN(n51) );
  AOI22D0BWP12T30P140 U25 ( .A1(n118), .A2(data[0]), .B1(n51), .B2(pcmleft[13]), .ZN(n4) );
  NR2D0BWP12T30P140 U26 ( .A1(n104), .A2(n1), .ZN(n53) );
  NR2D0BWP12T30P140 U27 ( .A1(bitcounter[1]), .A2(n2), .ZN(n52) );
  AOI22D0BWP12T30P140 U28 ( .A1(n53), .A2(pcmleft[18]), .B1(n52), .B2(
        pcmleft[15]), .ZN(n3) );
  ND4D0BWP12T30P140 U29 ( .A1(n6), .A2(n5), .A3(n4), .A4(n3), .ZN(n15) );
  ND2D0BWP12T30P140 U30 ( .A1(n101), .A2(n104), .ZN(n8) );
  NR3D0BWP12T30P140 U31 ( .A1(bitcounter[1]), .A2(n98), .A3(n8), .ZN(n59) );
  INVD0BWP12T30P140 U32 ( .I(n100), .ZN(n7) );
  NR3D0BWP12T30P140 U33 ( .A1(bitcounter[0]), .A2(n7), .A3(n104), .ZN(n58) );
  AOI22D0BWP12T30P140 U34 ( .A1(n59), .A2(data[3]), .B1(n58), .B2(pcmleft[19]), 
        .ZN(n13) );
  NR2D0BWP12T30P140 U35 ( .A1(n7), .A2(n8), .ZN(n61) );
  NR2D0BWP12T30P140 U36 ( .A1(n8), .A2(n9), .ZN(n60) );
  AOI22D0BWP12T30P140 U37 ( .A1(n61), .A2(data[7]), .B1(n60), .B2(data[5]), 
        .ZN(n12) );
  NR3D0BWP12T30P140 U38 ( .A1(n98), .A2(n99), .A3(n8), .ZN(n63) );
  ND2D0BWP12T30P140 U39 ( .A1(bitcounter[0]), .A2(n99), .ZN(n80) );
  NR3D0BWP12T30P140 U40 ( .A1(n98), .A2(n104), .A3(n80), .ZN(n62) );
  AOI22D0BWP12T30P140 U41 ( .A1(n63), .A2(data[1]), .B1(n62), .B2(pcmleft[14]), 
        .ZN(n11) );
  NR3D0BWP12T30P140 U42 ( .A1(bitcounter[3]), .A2(n98), .A3(n80), .ZN(n65) );
  NR3D0BWP12T30P140 U43 ( .A1(bitcounter[0]), .A2(n104), .A3(n9), .ZN(n64) );
  AOI22D0BWP12T30P140 U44 ( .A1(n65), .A2(data[2]), .B1(n64), .B2(pcmleft[17]), 
        .ZN(n10) );
  ND4D0BWP12T30P140 U45 ( .A1(n13), .A2(n12), .A3(n11), .A4(n10), .ZN(n14) );
  OAI21D0BWP12T30P140 U46 ( .A1(n15), .A2(n14), .B(bitcounter[4]), .ZN(n74) );
  AOI22D0BWP12T30P140 U47 ( .A1(n106), .A2(addr[16]), .B1(n49), .B2(addr[8]), 
        .ZN(n19) );
  AOI22D0BWP12T30P140 U48 ( .A1(n50), .A2(addr[18]), .B1(n83), .B2(addr[4]), 
        .ZN(n18) );
  AOI22D0BWP12T30P140 U49 ( .A1(n118), .A2(addr[12]), .B1(n51), .B2(addr[5]), 
        .ZN(n17) );
  AOI22D0BWP12T30P140 U50 ( .A1(n53), .A2(addr[10]), .B1(n52), .B2(addr[7]), 
        .ZN(n16) );
  ND4D0BWP12T30P140 U51 ( .A1(n19), .A2(n18), .A3(n17), .A4(n16), .ZN(n48) );
  INVD0BWP12T30P140 U52 ( .I(bitcounter[4]), .ZN(n82) );
  NR4D0BWP12T30P140 U53 ( .A1(bitcounter[6]), .A2(bitcounter[7]), .A3(
        bitcounter[5]), .A4(n82), .ZN(n122) );
  AOI22D0BWP12T30P140 U54 ( .A1(n59), .A2(addr[15]), .B1(n58), .B2(addr[11]), 
        .ZN(n23) );
  AOI22D0BWP12T30P140 U55 ( .A1(n61), .A2(addr[19]), .B1(n60), .B2(addr[17]), 
        .ZN(n22) );
  AOI22D0BWP12T30P140 U56 ( .A1(n63), .A2(addr[13]), .B1(n62), .B2(addr[6]), 
        .ZN(n21) );
  AOI22D0BWP12T30P140 U57 ( .A1(n65), .A2(addr[14]), .B1(n64), .B2(addr[9]), 
        .ZN(n20) );
  ND4D0BWP12T30P140 U58 ( .A1(n23), .A2(n22), .A3(n21), .A4(n20), .ZN(n47) );
  AOI22D0BWP12T30P140 U59 ( .A1(n106), .A2(pcmright[12]), .B1(n49), .B2(
        pcmright[4]), .ZN(n27) );
  AOI22D0BWP12T30P140 U60 ( .A1(n50), .A2(pcmright[14]), .B1(n83), .B2(
        pcmright[0]), .ZN(n26) );
  AOI22D0BWP12T30P140 U61 ( .A1(n118), .A2(pcmright[8]), .B1(n51), .B2(
        pcmright[1]), .ZN(n25) );
  AOI22D0BWP12T30P140 U62 ( .A1(n53), .A2(pcmright[6]), .B1(n52), .B2(
        pcmright[3]), .ZN(n24) );
  ND4D0BWP12T30P140 U63 ( .A1(n27), .A2(n26), .A3(n25), .A4(n24), .ZN(n33) );
  AOI22D0BWP12T30P140 U64 ( .A1(n59), .A2(pcmright[11]), .B1(n58), .B2(
        pcmright[7]), .ZN(n31) );
  AOI22D0BWP12T30P140 U65 ( .A1(n61), .A2(pcmright[15]), .B1(n60), .B2(
        pcmright[13]), .ZN(n30) );
  AOI22D0BWP12T30P140 U66 ( .A1(n63), .A2(pcmright[9]), .B1(n62), .B2(
        pcmright[2]), .ZN(n29) );
  AOI22D0BWP12T30P140 U67 ( .A1(n65), .A2(pcmright[10]), .B1(n64), .B2(
        pcmright[5]), .ZN(n28) );
  ND4D0BWP12T30P140 U68 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .ZN(n32) );
  NR2D0BWP12T30P140 U69 ( .A1(n33), .A2(n32), .ZN(n45) );
  AOI22D0BWP12T30P140 U70 ( .A1(n106), .A2(pcmleft[8]), .B1(n49), .B2(
        pcmleft[0]), .ZN(n37) );
  AOI22D0BWP12T30P140 U71 ( .A1(n50), .A2(pcmleft[10]), .B1(n83), .B2(
        pcmright[16]), .ZN(n36) );
  AOI22D0BWP12T30P140 U72 ( .A1(n118), .A2(pcmleft[4]), .B1(n51), .B2(
        pcmright[17]), .ZN(n35) );
  AOI22D0BWP12T30P140 U73 ( .A1(n53), .A2(pcmleft[2]), .B1(n52), .B2(
        pcmright[19]), .ZN(n34) );
  ND4D0BWP12T30P140 U74 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .ZN(n43) );
  AOI22D0BWP12T30P140 U75 ( .A1(n59), .A2(pcmleft[7]), .B1(n58), .B2(
        pcmleft[3]), .ZN(n41) );
  AOI22D0BWP12T30P140 U76 ( .A1(n61), .A2(pcmleft[11]), .B1(n60), .B2(
        pcmleft[9]), .ZN(n40) );
  AOI22D0BWP12T30P140 U77 ( .A1(n63), .A2(pcmleft[5]), .B1(n62), .B2(
        pcmright[18]), .ZN(n39) );
  AOI22D0BWP12T30P140 U78 ( .A1(n65), .A2(pcmleft[6]), .B1(n64), .B2(
        pcmleft[1]), .ZN(n38) );
  ND4D0BWP12T30P140 U79 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .ZN(n42) );
  NR2D0BWP12T30P140 U80 ( .A1(n43), .A2(n42), .ZN(n44) );
  INVD0BWP12T30P140 U81 ( .I(bitcounter[5]), .ZN(n79) );
  INVD0BWP12T30P140 U82 ( .I(bitcounter[7]), .ZN(n87) );
  ND3D0BWP12T30P140 U83 ( .A1(n79), .A2(n87), .A3(bitcounter[6]), .ZN(n120) );
  AOI221D0BWP12T30P140 U84 ( .A1(bitcounter[4]), .A2(n45), .B1(n82), .B2(n44), 
        .C(n120), .ZN(n46) );
  AOI22D0BWP12T30P140 U85 ( .A1(n106), .A2(addr[0]), .B1(n49), .B2(data[12]), 
        .ZN(n57) );
  AOI22D0BWP12T30P140 U86 ( .A1(n50), .A2(addr[2]), .B1(n83), .B2(data[8]), 
        .ZN(n56) );
  AOI22D0BWP12T30P140 U87 ( .A1(n118), .A2(data[16]), .B1(n51), .B2(data[9]), 
        .ZN(n55) );
  AOI22D0BWP12T30P140 U88 ( .A1(n53), .A2(data[14]), .B1(n52), .B2(data[11]), 
        .ZN(n54) );
  ND4D0BWP12T30P140 U89 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .ZN(n71) );
  AOI22D0BWP12T30P140 U90 ( .A1(n59), .A2(data[19]), .B1(n58), .B2(data[15]), 
        .ZN(n69) );
  AOI22D0BWP12T30P140 U91 ( .A1(n61), .A2(addr[3]), .B1(n60), .B2(addr[1]), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U92 ( .A1(n63), .A2(data[17]), .B1(n62), .B2(data[10]), 
        .ZN(n67) );
  AOI22D0BWP12T30P140 U93 ( .A1(n65), .A2(data[18]), .B1(n64), .B2(data[13]), 
        .ZN(n66) );
  ND4D0BWP12T30P140 U94 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n70) );
  OAI21D0BWP12T30P140 U95 ( .A1(n71), .A2(n70), .B(n82), .ZN(n72) );
  INVD0BWP12T30P140 U96 ( .I(bitcounter[6]), .ZN(n86) );
  ND3D0BWP12T30P140 U97 ( .A1(n86), .A2(n87), .A3(bitcounter[5]), .ZN(n121) );
  AOI32D0BWP12T30P140 U98 ( .A1(n74), .A2(n73), .A3(n72), .B1(n121), .B2(n73), 
        .ZN(N99) );
  INVD0BWP12T30P140 U99 ( .I(sys_rst), .ZN(n114) );
  INVD0BWP12T30P140 U100 ( .I(en), .ZN(n115) );
  ND2D0BWP12T30P140 U101 ( .A1(n114), .A2(n115), .ZN(n111) );
  ND2D0BWP12T30P140 U102 ( .A1(n114), .A2(n111), .ZN(n113) );
  AOI22D0BWP12T30P140 U103 ( .A1(bitcounter[0]), .A2(n111), .B1(n113), .B2(
        n101), .ZN(n192) );
  ND2D0BWP12T30P140 U104 ( .A1(bitcounter[4]), .A2(n83), .ZN(n75) );
  OAI21D0BWP12T30P140 U105 ( .A1(n115), .A2(n75), .B(n114), .ZN(n76) );
  INVD0BWP12T30P140 U106 ( .I(n113), .ZN(n119) );
  IND2D1BWP12T30P140 U107 ( .A1(n75), .B1(n119), .ZN(n78) );
  AOI22D0BWP12T30P140 U108 ( .A1(bitcounter[5]), .A2(n76), .B1(n78), .B2(n79), 
        .ZN(n187) );
  OAI21D0BWP12T30P140 U109 ( .A1(bitcounter[5]), .A2(n113), .B(n76), .ZN(n85)
         );
  INVD0BWP12T30P140 U110 ( .I(n85), .ZN(n77) );
  OAI32D0BWP12T30P140 U111 ( .A1(bitcounter[6]), .A2(n79), .A3(n78), .B1(n77), 
        .B2(n86), .ZN(n186) );
  OAI21D0BWP12T30P140 U112 ( .A1(n101), .A2(n115), .B(n114), .ZN(n81) );
  OAI22D0BWP12T30P140 U113 ( .A1(n81), .A2(n99), .B1(n80), .B2(n113), .ZN(n191) );
  INR2D1BWP12T30P140 U114 ( .A1(n83), .B1(n115), .ZN(n96) );
  ND2D0BWP12T30P140 U115 ( .A1(n96), .A2(n82), .ZN(n90) );
  ND4D0BWP12T30P140 U116 ( .A1(bitcounter[4]), .A2(bitcounter[6]), .A3(
        bitcounter[5]), .A4(n83), .ZN(n89) );
  OR4D0BWP12T30P140 U117 ( .A1(sys_rst), .A2(n87), .A3(n115), .A4(n89), .Z(n91) );
  INVD0BWP12T30P140 U118 ( .I(next_frame), .ZN(n84) );
  AOI21D0BWP12T30P140 U119 ( .A1(n119), .A2(n86), .B(n85), .ZN(n88) );
  OAI32D0BWP12T30P140 U120 ( .A1(bitcounter[7]), .A2(n113), .A3(n89), .B1(n88), 
        .B2(n87), .ZN(n185) );
  NR4D0BWP12T30P140 U121 ( .A1(bitcounter[7]), .A2(bitcounter[6]), .A3(
        bitcounter[5]), .A4(n90), .ZN(n94) );
  INVD0BWP12T30P140 U122 ( .I(down_sync), .ZN(n107) );
  OAI31D0BWP12T30P140 U123 ( .A1(sys_rst), .A2(n94), .A3(n107), .B(n91), .ZN(
        n195) );
  OAI31D0BWP12T30P140 U124 ( .A1(n99), .A2(n101), .A3(n115), .B(n114), .ZN(n93) );
  OAI22D0BWP12T30P140 U125 ( .A1(n93), .A2(n98), .B1(n92), .B2(n113), .ZN(n190) );
  INVD0BWP12T30P140 U126 ( .I(n120), .ZN(n97) );
  OAI21D0BWP12T30P140 U127 ( .A1(in_slot), .A2(n94), .B(n114), .ZN(n95) );
  AOI31D0BWP12T30P140 U128 ( .A1(bitcounter[4]), .A2(n97), .A3(n96), .B(n95), 
        .ZN(n194) );
  AOI22D0BWP12T30P140 U129 ( .A1(pcmright_valid), .A2(n99), .B1(data_valid), 
        .B2(n98), .ZN(n103) );
  OAI21D0BWP12T30P140 U130 ( .A1(addr_valid), .A2(n101), .B(n100), .ZN(n102)
         );
  OAI21D0BWP12T30P140 U131 ( .A1(bitcounter[0]), .A2(n103), .B(n102), .ZN(n105) );
  AO22D0BWP12T30P140 U132 ( .A1(pcmleft_valid), .A2(n106), .B1(n105), .B2(n104), .Z(n109) );
  INVD0BWP12T30P140 U133 ( .I(in_slot), .ZN(n108) );
  AOI33D0BWP12T30P140 U134 ( .A1(down_sync), .A2(n109), .A3(n108), .B1(in_slot), .B2(slot_bit), .B3(n107), .ZN(n112) );
  INVD0BWP12T30P140 U135 ( .I(down_data), .ZN(n110) );
  OAI22D0BWP12T30P140 U136 ( .A1(n113), .A2(n112), .B1(n111), .B2(n110), .ZN(
        n193) );
  OAI211D0BWP12T30P140 U137 ( .A1(n116), .A2(n115), .B(bitcounter[3]), .C(n114), .ZN(n117) );
  IOA21D0BWP12T30P140 U138 ( .A1(n119), .A2(n118), .B(n117), .ZN(n189) );
  IND3D1BWP12T30P140 U139 ( .A1(n122), .B1(n121), .B2(n120), .ZN(N98) );
endmodule


module ac97_deframer ( sys_clk, sys_rst, up_stb, up_ack, up_sync, up_data, en, 
        next_frame, frame_valid, addr_valid, addr, data_valid, data, 
        pcmleft_valid, pcmleft, pcmright_valid, pcmright );
  output [19:0] addr;
  output [19:0] data;
  output [19:0] pcmleft;
  output [19:0] pcmright;
  input sys_clk, sys_rst, up_stb, up_sync, up_data, en;
  output up_ack, next_frame, frame_valid, addr_valid, data_valid,
         pcmleft_valid, pcmright_valid;
  wire   sync_old, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n259, n260, n261, n262, n263;
  wire   [7:0] bitcounter;

  DFQD2BWP12T30P140 sync_old_reg ( .D(n171), .CP(n263), .Q(sync_old) );
  DFQD2BWP12T30P140 addr_reg_10_ ( .D(n226), .CP(n263), .Q(addr[10]) );
  DFQD2BWP12T30P140 pcmright_reg_6_ ( .D(n205), .CP(n263), .Q(pcmright[6]) );
  DFQD2BWP12T30P140 pcmright_reg_0_ ( .D(n211), .CP(n260), .Q(pcmright[0]) );
  DFQD2BWP12T30P140 pcmleft_reg_2_ ( .D(n189), .CP(n263), .Q(pcmleft[2]) );
  DFQD2BWP12T30P140 pcmleft_reg_18_ ( .D(n173), .CP(n260), .Q(pcmleft[18]) );
  DFQD2BWP12T30P140 addr_reg_6_ ( .D(n230), .CP(n259), .Q(addr[6]) );
  DFQD2BWP12T30P140 pcmright_reg_2_ ( .D(n209), .CP(n261), .Q(pcmright[2]) );
  DFQD2BWP12T30P140 pcmright_reg_18_ ( .D(n193), .CP(n263), .Q(pcmright[18])
         );
  DFQD2BWP12T30P140 pcmleft_reg_14_ ( .D(n177), .CP(n262), .Q(pcmleft[14]) );
  DFQD2BWP12T30P140 addr_reg_2_ ( .D(n234), .CP(n263), .Q(addr[2]) );
  DFQD2BWP12T30P140 addr_reg_18_ ( .D(n218), .CP(n260), .Q(addr[18]) );
  DFQD2BWP12T30P140 pcmleft_reg_10_ ( .D(n181), .CP(n263), .Q(pcmleft[10]) );
  DFQD2BWP12T30P140 addr_reg_14_ ( .D(n222), .CP(n260), .Q(addr[14]) );
  DFQD2BWP12T30P140 pcmright_reg_10_ ( .D(n201), .CP(n262), .Q(pcmright[10])
         );
  DFQD2BWP12T30P140 pcmleft_reg_6_ ( .D(n185), .CP(n262), .Q(pcmleft[6]) );
  DFQD2BWP12T30P140 addr_reg_11_ ( .D(n225), .CP(n262), .Q(addr[11]) );
  DFQD2BWP12T30P140 pcmright_reg_7_ ( .D(n204), .CP(n262), .Q(pcmright[7]) );
  DFQD2BWP12T30P140 pcmleft_reg_3_ ( .D(n188), .CP(n262), .Q(pcmleft[3]) );
  DFQD2BWP12T30P140 pcmleft_reg_19_ ( .D(n172), .CP(n262), .Q(pcmleft[19]) );
  DFQD2BWP12T30P140 addr_reg_7_ ( .D(n229), .CP(n262), .Q(addr[7]) );
  DFQD2BWP12T30P140 pcmright_reg_3_ ( .D(n208), .CP(n262), .Q(pcmright[3]) );
  DFQD2BWP12T30P140 pcmright_reg_19_ ( .D(n192), .CP(n262), .Q(pcmright[19])
         );
  DFQD2BWP12T30P140 pcmleft_reg_15_ ( .D(n176), .CP(n262), .Q(pcmleft[15]) );
  DFQD2BWP12T30P140 addr_reg_3_ ( .D(n233), .CP(n262), .Q(addr[3]) );
  DFQD2BWP12T30P140 addr_reg_19_ ( .D(n217), .CP(n262), .Q(addr[19]) );
  DFQD2BWP12T30P140 pcmleft_reg_11_ ( .D(n180), .CP(n262), .Q(pcmleft[11]) );
  DFQD2BWP12T30P140 addr_reg_15_ ( .D(n221), .CP(n259), .Q(addr[15]) );
  DFQD2BWP12T30P140 pcmright_valid_reg ( .D(n216), .CP(n262), .Q(
        pcmright_valid) );
  DFQD2BWP12T30P140 pcmright_reg_11_ ( .D(n200), .CP(n263), .Q(pcmright[11])
         );
  DFQD2BWP12T30P140 pcmleft_reg_7_ ( .D(n184), .CP(n260), .Q(pcmleft[7]) );
  DFQD2BWP12T30P140 addr_reg_9_ ( .D(n227), .CP(n259), .Q(addr[9]) );
  DFQD2BWP12T30P140 pcmright_reg_5_ ( .D(n206), .CP(n261), .Q(pcmright[5]) );
  DFQD2BWP12T30P140 pcmleft_reg_1_ ( .D(n190), .CP(n262), .Q(pcmleft[1]) );
  DFQD2BWP12T30P140 pcmleft_reg_17_ ( .D(n174), .CP(n261), .Q(pcmleft[17]) );
  DFQD2BWP12T30P140 addr_reg_5_ ( .D(n231), .CP(n262), .Q(addr[5]) );
  DFQD2BWP12T30P140 pcmright_reg_1_ ( .D(n210), .CP(n261), .Q(pcmright[1]) );
  DFQD2BWP12T30P140 pcmright_reg_17_ ( .D(n194), .CP(n261), .Q(pcmright[17])
         );
  DFQD2BWP12T30P140 pcmleft_reg_13_ ( .D(n178), .CP(n261), .Q(pcmleft[13]) );
  DFQD2BWP12T30P140 addr_reg_1_ ( .D(n235), .CP(n261), .Q(addr[1]) );
  DFQD2BWP12T30P140 pcmright_reg_13_ ( .D(n198), .CP(n261), .Q(pcmright[13])
         );
  DFQD2BWP12T30P140 pcmleft_reg_9_ ( .D(n182), .CP(n261), .Q(pcmleft[9]) );
  DFQD2BWP12T30P140 addr_reg_13_ ( .D(n223), .CP(n261), .Q(addr[13]) );
  DFQD2BWP12T30P140 pcmright_reg_9_ ( .D(n202), .CP(n261), .Q(pcmright[9]) );
  DFQD2BWP12T30P140 pcmleft_reg_5_ ( .D(n186), .CP(n261), .Q(pcmleft[5]) );
  DFQD2BWP12T30P140 addr_reg_8_ ( .D(n228), .CP(n261), .Q(addr[8]) );
  DFQD2BWP12T30P140 pcmright_reg_4_ ( .D(n207), .CP(n262), .Q(pcmright[4]) );
  DFQD2BWP12T30P140 pcmleft_reg_0_ ( .D(n191), .CP(n259), .Q(pcmleft[0]) );
  DFQD2BWP12T30P140 pcmleft_reg_16_ ( .D(n175), .CP(n261), .Q(pcmleft[16]) );
  DFQD2BWP12T30P140 addr_reg_4_ ( .D(n232), .CP(n263), .Q(addr[4]) );
  DFQD2BWP12T30P140 pcmright_reg_16_ ( .D(n195), .CP(n260), .Q(pcmright[16])
         );
  DFQD2BWP12T30P140 pcmleft_reg_12_ ( .D(n179), .CP(n262), .Q(pcmleft[12]) );
  DFQD2BWP12T30P140 addr_reg_0_ ( .D(n236), .CP(n259), .Q(addr[0]) );
  DFQD2BWP12T30P140 addr_reg_16_ ( .D(n220), .CP(n261), .Q(addr[16]) );
  DFQD2BWP12T30P140 pcmright_reg_12_ ( .D(n199), .CP(n260), .Q(pcmright[12])
         );
  DFQD2BWP12T30P140 pcmleft_reg_8_ ( .D(n183), .CP(n261), .Q(pcmleft[8]) );
  DFQD2BWP12T30P140 addr_reg_12_ ( .D(n224), .CP(n260), .Q(addr[12]) );
  DFQD2BWP12T30P140 pcmright_reg_8_ ( .D(n203), .CP(n260), .Q(pcmright[8]) );
  DFQD2BWP12T30P140 pcmleft_reg_4_ ( .D(n187), .CP(n260), .Q(pcmleft[4]) );
  DFQD2BWP12T30P140 data_reg_3_ ( .D(n146), .CP(n259), .Q(data[3]) );
  DFQD2BWP12T30P140 data_reg_2_ ( .D(n145), .CP(n259), .Q(data[2]) );
  DFQD2BWP12T30P140 data_reg_1_ ( .D(n144), .CP(n259), .Q(data[1]) );
  DFQD2BWP12T30P140 data_reg_0_ ( .D(n143), .CP(n259), .Q(data[0]) );
  DFQD2BWP12T30P140 addr_valid_reg ( .D(n213), .CP(n259), .Q(addr_valid) );
  DFQD2BWP12T30P140 frame_valid_reg ( .D(n212), .CP(n263), .Q(frame_valid) );
  DFQD2BWP12T30P140 data_valid_reg ( .D(n214), .CP(n261), .Q(data_valid) );
  DFQD2BWP12T30P140 data_reg_19_ ( .D(n162), .CP(n260), .Q(data[19]) );
  DFQD2BWP12T30P140 data_reg_18_ ( .D(n161), .CP(n260), .Q(data[18]) );
  DFQD2BWP12T30P140 data_reg_16_ ( .D(n159), .CP(n260), .Q(data[16]) );
  DFQD2BWP12T30P140 data_reg_15_ ( .D(n158), .CP(n260), .Q(data[15]) );
  DFQD2BWP12T30P140 data_reg_14_ ( .D(n157), .CP(n260), .Q(data[14]) );
  DFQD2BWP12T30P140 data_reg_13_ ( .D(n156), .CP(n260), .Q(data[13]) );
  DFQD2BWP12T30P140 data_reg_12_ ( .D(n155), .CP(n260), .Q(data[12]) );
  DFQD2BWP12T30P140 data_reg_11_ ( .D(n154), .CP(n259), .Q(data[11]) );
  DFQD2BWP12T30P140 data_reg_10_ ( .D(n153), .CP(n259), .Q(data[10]) );
  DFQD2BWP12T30P140 data_reg_9_ ( .D(n152), .CP(n259), .Q(data[9]) );
  DFQD2BWP12T30P140 data_reg_8_ ( .D(n151), .CP(n259), .Q(data[8]) );
  DFQD2BWP12T30P140 data_reg_7_ ( .D(n150), .CP(n259), .Q(data[7]) );
  DFQD2BWP12T30P140 data_reg_6_ ( .D(n149), .CP(n259), .Q(data[6]) );
  DFQD2BWP12T30P140 data_reg_5_ ( .D(n148), .CP(n259), .Q(data[5]) );
  DFQD2BWP12T30P140 data_reg_4_ ( .D(n147), .CP(n259), .Q(data[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n170), .CP(n263), .Q(bitcounter[1])
         );
  DFQD2BWP12T30P140 bitcounter_reg_7_ ( .D(n164), .CP(n263), .Q(bitcounter[7])
         );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n163), .CP(n260), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_0_ ( .D(n237), .CP(n263), .Q(bitcounter[0])
         );
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n166), .CP(n263), .Q(bitcounter[5])
         );
  DFQD2BWP12T30P140 bitcounter_reg_2_ ( .D(n169), .CP(n263), .Q(bitcounter[2])
         );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n167), .CP(n263), .Q(bitcounter[4])
         );
  DFQD2BWP12T30P140 bitcounter_reg_3_ ( .D(n168), .CP(n263), .Q(bitcounter[3])
         );
  DFQD1BWP12T30P140 pcmright_reg_14_ ( .D(n197), .CP(n259), .Q(pcmright[14])
         );
  DFQD1BWP12T30P140 pcmright_reg_15_ ( .D(n196), .CP(n261), .Q(pcmright[15])
         );
  DFQD1BWP12T30P140 addr_reg_17_ ( .D(n219), .CP(n261), .Q(addr[17]) );
  DFQD1BWP12T30P140 pcmleft_valid_reg ( .D(n215), .CP(n263), .Q(pcmleft_valid)
         );
  DFQD1BWP12T30P140 data_reg_17_ ( .D(n160), .CP(n260), .Q(data[17]) );
  DFQD1BWP12T30P140 bitcounter_reg_6_ ( .D(n165), .CP(n263), .Q(bitcounter[6])
         );
  CKBD0BWP12T30P140 U3 ( .I(en), .Z(up_ack) );
  INVD0BWP12T30P140 U4 ( .I(sync_old), .ZN(n243) );
  INVD0BWP12T30P140 U5 ( .I(sys_rst), .ZN(n256) );
  ND2D0BWP12T30P140 U6 ( .A1(up_stb), .A2(en), .ZN(n241) );
  ND2D0BWP12T30P140 U7 ( .A1(n256), .A2(n241), .ZN(n244) );
  INVD0BWP12T30P140 U8 ( .I(n244), .ZN(n5) );
  AOI21D0BWP12T30P140 U9 ( .A1(n243), .A2(up_sync), .B(n5), .ZN(n249) );
  INVD0BWP12T30P140 U10 ( .I(n249), .ZN(n245) );
  ND2D0BWP12T30P140 U11 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n2) );
  INVD0BWP12T30P140 U12 ( .I(bitcounter[2]), .ZN(n35) );
  NR2D0BWP12T30P140 U13 ( .A1(n2), .A2(n35), .ZN(n4) );
  INVD0BWP12T30P140 U14 ( .I(bitcounter[3]), .ZN(n15) );
  ND2D0BWP12T30P140 U15 ( .A1(n4), .A2(n15), .ZN(n59) );
  OA32D0BWP12T30P140 U16 ( .A1(n245), .A2(n15), .A3(n4), .B1(n244), .B2(n15), 
        .Z(n1) );
  OAI211D0BWP12T30P140 U17 ( .A1(n245), .A2(n59), .B(n256), .C(n1), .ZN(n168)
         );
  NR2D0BWP12T30P140 U18 ( .A1(bitcounter[2]), .A2(n2), .ZN(n29) );
  AOI32D0BWP12T30P140 U19 ( .A1(bitcounter[2]), .A2(n249), .A3(n2), .B1(n29), 
        .B2(n249), .ZN(n3) );
  OAI22D0BWP12T30P140 U20 ( .A1(sys_rst), .A2(n3), .B1(n35), .B2(n244), .ZN(
        n169) );
  ND2D0BWP12T30P140 U21 ( .A1(bitcounter[3]), .A2(n4), .ZN(n137) );
  INVD0BWP12T30P140 U22 ( .I(n137), .ZN(n247) );
  ND2D0BWP12T30P140 U23 ( .A1(bitcounter[4]), .A2(n247), .ZN(n6) );
  AOI21D0BWP12T30P140 U24 ( .A1(n249), .A2(n6), .B(n5), .ZN(n10) );
  INVD0BWP12T30P140 U25 ( .I(bitcounter[5]), .ZN(n8) );
  INVD0BWP12T30P140 U26 ( .I(bitcounter[4]), .ZN(n248) );
  NR3D0BWP12T30P140 U27 ( .A1(n245), .A2(n248), .A3(n137), .ZN(n254) );
  AOI21D0BWP12T30P140 U28 ( .A1(n254), .A2(n8), .B(sys_rst), .ZN(n7) );
  OAI21D0BWP12T30P140 U29 ( .A1(n10), .A2(n8), .B(n7), .ZN(n166) );
  AOI21D0BWP12T30P140 U30 ( .A1(bitcounter[0]), .A2(n241), .B(sys_rst), .ZN(n9) );
  OAI21D0BWP12T30P140 U31 ( .A1(bitcounter[0]), .A2(n245), .B(n9), .ZN(n237)
         );
  ND3D0BWP12T30P140 U32 ( .A1(bitcounter[6]), .A2(bitcounter[5]), .A3(n254), 
        .ZN(n12) );
  INVD0BWP12T30P140 U33 ( .I(bitcounter[6]), .ZN(n255) );
  OAI21D0BWP12T30P140 U34 ( .A1(bitcounter[5]), .A2(n245), .B(n10), .ZN(n253)
         );
  AOI32D0BWP12T30P140 U35 ( .A1(n249), .A2(bitcounter[7]), .A3(n255), .B1(n253), .B2(bitcounter[7]), .ZN(n11) );
  OAI211D0BWP12T30P140 U36 ( .A1(bitcounter[7]), .A2(n12), .B(n256), .C(n11), 
        .ZN(n164) );
  INVD0BWP12T30P140 U37 ( .I(bitcounter[1]), .ZN(n14) );
  NR2D0BWP12T30P140 U38 ( .A1(bitcounter[0]), .A2(n14), .ZN(n36) );
  INR2D1BWP12T30P140 U39 ( .A1(bitcounter[0]), .B1(bitcounter[1]), .ZN(n38) );
  OAI21D0BWP12T30P140 U40 ( .A1(n36), .A2(n38), .B(n249), .ZN(n13) );
  OAI211D0BWP12T30P140 U41 ( .A1(n244), .A2(n14), .B(n256), .C(n13), .ZN(n170)
         );
  ND2D0BWP12T30P140 U42 ( .A1(n29), .A2(n15), .ZN(n65) );
  NR3D0BWP12T30P140 U43 ( .A1(sys_rst), .A2(bitcounter[7]), .A3(n241), .ZN(n16) );
  ND3D0BWP12T30P140 U44 ( .A1(n255), .A2(n16), .A3(bitcounter[5]), .ZN(n23) );
  NR2D0BWP12T30P140 U45 ( .A1(n248), .A2(n23), .ZN(n17) );
  ND2D0BWP12T30P140 U46 ( .A1(up_data), .A2(n17), .ZN(n133) );
  INVD0BWP12T30P140 U47 ( .I(n17), .ZN(n131) );
  OAI21D0BWP12T30P140 U48 ( .A1(n65), .A2(n131), .B(data[4]), .ZN(n18) );
  OAI21D0BWP12T30P140 U49 ( .A1(n65), .A2(n133), .B(n18), .ZN(n147) );
  NR2D0BWP12T30P140 U50 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .ZN(n21) );
  ND2D0BWP12T30P140 U51 ( .A1(n36), .A2(n21), .ZN(n82) );
  OAI21D0BWP12T30P140 U52 ( .A1(n82), .A2(n131), .B(data[5]), .ZN(n19) );
  OAI21D0BWP12T30P140 U53 ( .A1(n82), .A2(n133), .B(n19), .ZN(n148) );
  ND2D0BWP12T30P140 U54 ( .A1(n38), .A2(n21), .ZN(n125) );
  OAI21D0BWP12T30P140 U55 ( .A1(n125), .A2(n131), .B(data[6]), .ZN(n20) );
  OAI21D0BWP12T30P140 U56 ( .A1(n125), .A2(n133), .B(n20), .ZN(n149) );
  NR2D0BWP12T30P140 U57 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n41) );
  ND2D0BWP12T30P140 U58 ( .A1(n41), .A2(n21), .ZN(n104) );
  OAI21D0BWP12T30P140 U59 ( .A1(n104), .A2(n131), .B(data[7]), .ZN(n22) );
  OAI21D0BWP12T30P140 U60 ( .A1(n104), .A2(n133), .B(n22), .ZN(n150) );
  NR2D0BWP12T30P140 U61 ( .A1(bitcounter[4]), .A2(n23), .ZN(n24) );
  ND2D0BWP12T30P140 U62 ( .A1(up_data), .A2(n24), .ZN(n124) );
  INVD0BWP12T30P140 U63 ( .I(n24), .ZN(n122) );
  OAI21D0BWP12T30P140 U64 ( .A1(n137), .A2(n122), .B(data[8]), .ZN(n25) );
  OAI21D0BWP12T30P140 U65 ( .A1(n137), .A2(n124), .B(n25), .ZN(n151) );
  ND3D0BWP12T30P140 U66 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n36), 
        .ZN(n87) );
  OAI21D0BWP12T30P140 U67 ( .A1(n87), .A2(n122), .B(data[9]), .ZN(n26) );
  OAI21D0BWP12T30P140 U68 ( .A1(n87), .A2(n124), .B(n26), .ZN(n152) );
  ND3D0BWP12T30P140 U69 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n38), 
        .ZN(n130) );
  OAI21D0BWP12T30P140 U70 ( .A1(n130), .A2(n122), .B(data[10]), .ZN(n27) );
  OAI21D0BWP12T30P140 U71 ( .A1(n130), .A2(n124), .B(n27), .ZN(n153) );
  ND3D0BWP12T30P140 U72 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n41), 
        .ZN(n109) );
  OAI21D0BWP12T30P140 U73 ( .A1(n109), .A2(n122), .B(data[11]), .ZN(n28) );
  OAI21D0BWP12T30P140 U74 ( .A1(n109), .A2(n124), .B(n28), .ZN(n154) );
  ND2D0BWP12T30P140 U75 ( .A1(bitcounter[3]), .A2(n29), .ZN(n73) );
  OAI21D0BWP12T30P140 U76 ( .A1(n73), .A2(n122), .B(data[12]), .ZN(n30) );
  OAI21D0BWP12T30P140 U77 ( .A1(n73), .A2(n124), .B(n30), .ZN(n155) );
  ND3D0BWP12T30P140 U78 ( .A1(n35), .A2(n36), .A3(bitcounter[3]), .ZN(n92) );
  OAI21D0BWP12T30P140 U79 ( .A1(n92), .A2(n122), .B(data[13]), .ZN(n31) );
  OAI21D0BWP12T30P140 U80 ( .A1(n92), .A2(n124), .B(n31), .ZN(n156) );
  ND3D0BWP12T30P140 U81 ( .A1(n35), .A2(n38), .A3(bitcounter[3]), .ZN(n240) );
  OAI21D0BWP12T30P140 U82 ( .A1(n240), .A2(n122), .B(data[14]), .ZN(n32) );
  OAI21D0BWP12T30P140 U83 ( .A1(n240), .A2(n124), .B(n32), .ZN(n157) );
  ND3D0BWP12T30P140 U84 ( .A1(n35), .A2(n41), .A3(bitcounter[3]), .ZN(n114) );
  OAI21D0BWP12T30P140 U85 ( .A1(n114), .A2(n122), .B(data[15]), .ZN(n33) );
  OAI21D0BWP12T30P140 U86 ( .A1(n114), .A2(n124), .B(n33), .ZN(n158) );
  OAI21D0BWP12T30P140 U87 ( .A1(n59), .A2(n122), .B(data[16]), .ZN(n34) );
  OAI21D0BWP12T30P140 U88 ( .A1(n59), .A2(n124), .B(n34), .ZN(n159) );
  NR2D0BWP12T30P140 U89 ( .A1(bitcounter[3]), .A2(n35), .ZN(n40) );
  ND2D0BWP12T30P140 U90 ( .A1(n36), .A2(n40), .ZN(n77) );
  OAI21D0BWP12T30P140 U91 ( .A1(n77), .A2(n122), .B(data[17]), .ZN(n37) );
  OAI21D0BWP12T30P140 U92 ( .A1(n77), .A2(n124), .B(n37), .ZN(n160) );
  ND2D0BWP12T30P140 U93 ( .A1(n38), .A2(n40), .ZN(n118) );
  OAI21D0BWP12T30P140 U94 ( .A1(n118), .A2(n122), .B(data[18]), .ZN(n39) );
  OAI21D0BWP12T30P140 U95 ( .A1(n118), .A2(n124), .B(n39), .ZN(n161) );
  ND2D0BWP12T30P140 U96 ( .A1(n41), .A2(n40), .ZN(n99) );
  OAI21D0BWP12T30P140 U97 ( .A1(n99), .A2(n122), .B(data[19]), .ZN(n42) );
  OAI21D0BWP12T30P140 U98 ( .A1(n99), .A2(n124), .B(n42), .ZN(n162) );
  NR4D0BWP12T30P140 U99 ( .A1(sys_rst), .A2(bitcounter[7]), .A3(bitcounter[5]), 
        .A4(n241), .ZN(n54) );
  ND2D0BWP12T30P140 U100 ( .A1(n54), .A2(n255), .ZN(n56) );
  NR2D0BWP12T30P140 U101 ( .A1(n56), .A2(bitcounter[4]), .ZN(n43) );
  ND2D0BWP12T30P140 U102 ( .A1(up_data), .A2(n43), .ZN(n97) );
  INVD0BWP12T30P140 U103 ( .I(n43), .ZN(n95) );
  OAI21D0BWP12T30P140 U104 ( .A1(n82), .A2(n95), .B(data_valid), .ZN(n44) );
  OAI21D0BWP12T30P140 U105 ( .A1(n82), .A2(n97), .B(n44), .ZN(n214) );
  OAI21D0BWP12T30P140 U106 ( .A1(n104), .A2(n95), .B(frame_valid), .ZN(n45) );
  OAI21D0BWP12T30P140 U107 ( .A1(n104), .A2(n97), .B(n45), .ZN(n212) );
  OAI21D0BWP12T30P140 U108 ( .A1(n125), .A2(n95), .B(addr_valid), .ZN(n46) );
  OAI21D0BWP12T30P140 U109 ( .A1(n125), .A2(n97), .B(n46), .ZN(n213) );
  OAI21D0BWP12T30P140 U110 ( .A1(n59), .A2(n131), .B(data[0]), .ZN(n47) );
  OAI21D0BWP12T30P140 U111 ( .A1(n59), .A2(n133), .B(n47), .ZN(n143) );
  OAI21D0BWP12T30P140 U112 ( .A1(n77), .A2(n131), .B(data[1]), .ZN(n48) );
  OAI21D0BWP12T30P140 U113 ( .A1(n77), .A2(n133), .B(n48), .ZN(n144) );
  OAI21D0BWP12T30P140 U114 ( .A1(n118), .A2(n131), .B(data[2]), .ZN(n49) );
  OAI21D0BWP12T30P140 U115 ( .A1(n118), .A2(n133), .B(n49), .ZN(n145) );
  OAI21D0BWP12T30P140 U116 ( .A1(n99), .A2(n131), .B(data[3]), .ZN(n50) );
  OAI21D0BWP12T30P140 U117 ( .A1(n99), .A2(n133), .B(n50), .ZN(n146) );
  ND2D0BWP12T30P140 U118 ( .A1(bitcounter[6]), .A2(n54), .ZN(n51) );
  NR2D0BWP12T30P140 U119 ( .A1(bitcounter[4]), .A2(n51), .ZN(n52) );
  ND2D0BWP12T30P140 U120 ( .A1(up_data), .A2(n52), .ZN(n136) );
  INVD0BWP12T30P140 U121 ( .I(n52), .ZN(n134) );
  OAI21D0BWP12T30P140 U122 ( .A1(n59), .A2(n134), .B(pcmleft[4]), .ZN(n53) );
  OAI21D0BWP12T30P140 U123 ( .A1(n59), .A2(n136), .B(n53), .ZN(n187) );
  ND3D0BWP12T30P140 U124 ( .A1(bitcounter[6]), .A2(bitcounter[4]), .A3(n54), 
        .ZN(n139) );
  IND2D1BWP12T30P140 U125 ( .A1(n139), .B1(up_data), .ZN(n141) );
  OAI21D0BWP12T30P140 U126 ( .A1(n59), .A2(n139), .B(pcmright[8]), .ZN(n55) );
  OAI21D0BWP12T30P140 U127 ( .A1(n59), .A2(n141), .B(n55), .ZN(n203) );
  NR2D0BWP12T30P140 U128 ( .A1(n248), .A2(n56), .ZN(n57) );
  ND2D0BWP12T30P140 U129 ( .A1(n57), .A2(up_data), .ZN(n239) );
  INVD0BWP12T30P140 U130 ( .I(n57), .ZN(n142) );
  OAI21D0BWP12T30P140 U131 ( .A1(n59), .A2(n142), .B(addr[12]), .ZN(n58) );
  OAI21D0BWP12T30P140 U132 ( .A1(n59), .A2(n239), .B(n58), .ZN(n224) );
  OAI21D0BWP12T30P140 U133 ( .A1(n65), .A2(n134), .B(pcmleft[8]), .ZN(n60) );
  OAI21D0BWP12T30P140 U134 ( .A1(n65), .A2(n136), .B(n60), .ZN(n183) );
  OAI21D0BWP12T30P140 U135 ( .A1(n65), .A2(n139), .B(pcmright[12]), .ZN(n61)
         );
  OAI21D0BWP12T30P140 U136 ( .A1(n65), .A2(n141), .B(n61), .ZN(n199) );
  OAI21D0BWP12T30P140 U137 ( .A1(n65), .A2(n95), .B(pcmleft_valid), .ZN(n62)
         );
  OAI21D0BWP12T30P140 U138 ( .A1(n65), .A2(n97), .B(n62), .ZN(n215) );
  OAI21D0BWP12T30P140 U139 ( .A1(n65), .A2(n142), .B(addr[16]), .ZN(n63) );
  OAI21D0BWP12T30P140 U140 ( .A1(n65), .A2(n239), .B(n63), .ZN(n220) );
  OAI21D0BWP12T30P140 U141 ( .A1(n65), .A2(n122), .B(addr[0]), .ZN(n64) );
  OAI21D0BWP12T30P140 U142 ( .A1(n65), .A2(n124), .B(n64), .ZN(n236) );
  OAI21D0BWP12T30P140 U143 ( .A1(n137), .A2(n131), .B(pcmleft[12]), .ZN(n66)
         );
  OAI21D0BWP12T30P140 U144 ( .A1(n137), .A2(n133), .B(n66), .ZN(n179) );
  OAI21D0BWP12T30P140 U145 ( .A1(n137), .A2(n134), .B(pcmright[16]), .ZN(n67)
         );
  OAI21D0BWP12T30P140 U146 ( .A1(n137), .A2(n136), .B(n67), .ZN(n195) );
  OAI21D0BWP12T30P140 U147 ( .A1(n137), .A2(n142), .B(addr[4]), .ZN(n68) );
  OAI21D0BWP12T30P140 U148 ( .A1(n137), .A2(n239), .B(n68), .ZN(n232) );
  OAI21D0BWP12T30P140 U149 ( .A1(n73), .A2(n131), .B(pcmleft[16]), .ZN(n69) );
  OAI21D0BWP12T30P140 U150 ( .A1(n73), .A2(n133), .B(n69), .ZN(n175) );
  OAI21D0BWP12T30P140 U151 ( .A1(n73), .A2(n134), .B(pcmleft[0]), .ZN(n70) );
  OAI21D0BWP12T30P140 U152 ( .A1(n73), .A2(n136), .B(n70), .ZN(n191) );
  OAI21D0BWP12T30P140 U153 ( .A1(n73), .A2(n139), .B(pcmright[4]), .ZN(n71) );
  OAI21D0BWP12T30P140 U154 ( .A1(n73), .A2(n141), .B(n71), .ZN(n207) );
  OAI21D0BWP12T30P140 U155 ( .A1(n73), .A2(n142), .B(addr[8]), .ZN(n72) );
  OAI21D0BWP12T30P140 U156 ( .A1(n73), .A2(n239), .B(n72), .ZN(n228) );
  OAI21D0BWP12T30P140 U157 ( .A1(n77), .A2(n134), .B(pcmleft[5]), .ZN(n74) );
  OAI21D0BWP12T30P140 U158 ( .A1(n77), .A2(n136), .B(n74), .ZN(n186) );
  OAI21D0BWP12T30P140 U159 ( .A1(n77), .A2(n139), .B(pcmright[9]), .ZN(n75) );
  OAI21D0BWP12T30P140 U160 ( .A1(n77), .A2(n141), .B(n75), .ZN(n202) );
  OAI21D0BWP12T30P140 U161 ( .A1(n77), .A2(n142), .B(addr[13]), .ZN(n76) );
  OAI21D0BWP12T30P140 U162 ( .A1(n77), .A2(n239), .B(n76), .ZN(n223) );
  OAI21D0BWP12T30P140 U163 ( .A1(n82), .A2(n134), .B(pcmleft[9]), .ZN(n78) );
  OAI21D0BWP12T30P140 U164 ( .A1(n82), .A2(n136), .B(n78), .ZN(n182) );
  OAI21D0BWP12T30P140 U165 ( .A1(n82), .A2(n139), .B(pcmright[13]), .ZN(n79)
         );
  OAI21D0BWP12T30P140 U166 ( .A1(n82), .A2(n141), .B(n79), .ZN(n198) );
  OAI21D0BWP12T30P140 U167 ( .A1(n82), .A2(n142), .B(addr[17]), .ZN(n80) );
  OAI21D0BWP12T30P140 U168 ( .A1(n82), .A2(n239), .B(n80), .ZN(n219) );
  OAI21D0BWP12T30P140 U169 ( .A1(n82), .A2(n122), .B(addr[1]), .ZN(n81) );
  OAI21D0BWP12T30P140 U170 ( .A1(n82), .A2(n124), .B(n81), .ZN(n235) );
  OAI21D0BWP12T30P140 U171 ( .A1(n87), .A2(n131), .B(pcmleft[13]), .ZN(n83) );
  OAI21D0BWP12T30P140 U172 ( .A1(n87), .A2(n133), .B(n83), .ZN(n178) );
  OAI21D0BWP12T30P140 U173 ( .A1(n87), .A2(n134), .B(pcmright[17]), .ZN(n84)
         );
  OAI21D0BWP12T30P140 U174 ( .A1(n87), .A2(n136), .B(n84), .ZN(n194) );
  OAI21D0BWP12T30P140 U175 ( .A1(n87), .A2(n139), .B(pcmright[1]), .ZN(n85) );
  OAI21D0BWP12T30P140 U176 ( .A1(n87), .A2(n141), .B(n85), .ZN(n210) );
  OAI21D0BWP12T30P140 U177 ( .A1(n87), .A2(n142), .B(addr[5]), .ZN(n86) );
  OAI21D0BWP12T30P140 U178 ( .A1(n87), .A2(n239), .B(n86), .ZN(n231) );
  OAI21D0BWP12T30P140 U179 ( .A1(n92), .A2(n131), .B(pcmleft[17]), .ZN(n88) );
  OAI21D0BWP12T30P140 U180 ( .A1(n92), .A2(n133), .B(n88), .ZN(n174) );
  OAI21D0BWP12T30P140 U181 ( .A1(n92), .A2(n134), .B(pcmleft[1]), .ZN(n89) );
  OAI21D0BWP12T30P140 U182 ( .A1(n92), .A2(n136), .B(n89), .ZN(n190) );
  OAI21D0BWP12T30P140 U183 ( .A1(n92), .A2(n139), .B(pcmright[5]), .ZN(n90) );
  OAI21D0BWP12T30P140 U184 ( .A1(n92), .A2(n141), .B(n90), .ZN(n206) );
  OAI21D0BWP12T30P140 U185 ( .A1(n92), .A2(n142), .B(addr[9]), .ZN(n91) );
  OAI21D0BWP12T30P140 U186 ( .A1(n92), .A2(n239), .B(n91), .ZN(n227) );
  OAI21D0BWP12T30P140 U187 ( .A1(n99), .A2(n134), .B(pcmleft[7]), .ZN(n93) );
  OAI21D0BWP12T30P140 U188 ( .A1(n99), .A2(n136), .B(n93), .ZN(n184) );
  OAI21D0BWP12T30P140 U189 ( .A1(n99), .A2(n139), .B(pcmright[11]), .ZN(n94)
         );
  OAI21D0BWP12T30P140 U190 ( .A1(n99), .A2(n141), .B(n94), .ZN(n200) );
  OAI21D0BWP12T30P140 U191 ( .A1(n99), .A2(n95), .B(pcmright_valid), .ZN(n96)
         );
  OAI21D0BWP12T30P140 U192 ( .A1(n99), .A2(n97), .B(n96), .ZN(n216) );
  OAI21D0BWP12T30P140 U193 ( .A1(n99), .A2(n142), .B(addr[15]), .ZN(n98) );
  OAI21D0BWP12T30P140 U194 ( .A1(n99), .A2(n239), .B(n98), .ZN(n221) );
  OAI21D0BWP12T30P140 U195 ( .A1(n104), .A2(n134), .B(pcmleft[11]), .ZN(n100)
         );
  OAI21D0BWP12T30P140 U196 ( .A1(n104), .A2(n136), .B(n100), .ZN(n180) );
  OAI21D0BWP12T30P140 U197 ( .A1(n104), .A2(n139), .B(pcmright[15]), .ZN(n101)
         );
  OAI21D0BWP12T30P140 U198 ( .A1(n104), .A2(n141), .B(n101), .ZN(n196) );
  OAI21D0BWP12T30P140 U199 ( .A1(n104), .A2(n142), .B(addr[19]), .ZN(n102) );
  OAI21D0BWP12T30P140 U200 ( .A1(n104), .A2(n239), .B(n102), .ZN(n217) );
  OAI21D0BWP12T30P140 U201 ( .A1(n104), .A2(n122), .B(addr[3]), .ZN(n103) );
  OAI21D0BWP12T30P140 U202 ( .A1(n104), .A2(n124), .B(n103), .ZN(n233) );
  OAI21D0BWP12T30P140 U203 ( .A1(n109), .A2(n131), .B(pcmleft[15]), .ZN(n105)
         );
  OAI21D0BWP12T30P140 U204 ( .A1(n109), .A2(n133), .B(n105), .ZN(n176) );
  OAI21D0BWP12T30P140 U205 ( .A1(n109), .A2(n134), .B(pcmright[19]), .ZN(n106)
         );
  OAI21D0BWP12T30P140 U206 ( .A1(n109), .A2(n136), .B(n106), .ZN(n192) );
  OAI21D0BWP12T30P140 U207 ( .A1(n109), .A2(n139), .B(pcmright[3]), .ZN(n107)
         );
  OAI21D0BWP12T30P140 U208 ( .A1(n109), .A2(n141), .B(n107), .ZN(n208) );
  OAI21D0BWP12T30P140 U209 ( .A1(n109), .A2(n142), .B(addr[7]), .ZN(n108) );
  OAI21D0BWP12T30P140 U210 ( .A1(n109), .A2(n239), .B(n108), .ZN(n229) );
  OAI21D0BWP12T30P140 U211 ( .A1(n114), .A2(n131), .B(pcmleft[19]), .ZN(n110)
         );
  OAI21D0BWP12T30P140 U212 ( .A1(n114), .A2(n133), .B(n110), .ZN(n172) );
  OAI21D0BWP12T30P140 U213 ( .A1(n114), .A2(n134), .B(pcmleft[3]), .ZN(n111)
         );
  OAI21D0BWP12T30P140 U214 ( .A1(n114), .A2(n136), .B(n111), .ZN(n188) );
  OAI21D0BWP12T30P140 U215 ( .A1(n114), .A2(n139), .B(pcmright[7]), .ZN(n112)
         );
  OAI21D0BWP12T30P140 U216 ( .A1(n114), .A2(n141), .B(n112), .ZN(n204) );
  OAI21D0BWP12T30P140 U217 ( .A1(n114), .A2(n142), .B(addr[11]), .ZN(n113) );
  OAI21D0BWP12T30P140 U218 ( .A1(n114), .A2(n239), .B(n113), .ZN(n225) );
  OAI21D0BWP12T30P140 U219 ( .A1(n118), .A2(n134), .B(pcmleft[6]), .ZN(n115)
         );
  OAI21D0BWP12T30P140 U220 ( .A1(n118), .A2(n136), .B(n115), .ZN(n185) );
  OAI21D0BWP12T30P140 U221 ( .A1(n118), .A2(n139), .B(pcmright[10]), .ZN(n116)
         );
  OAI21D0BWP12T30P140 U222 ( .A1(n118), .A2(n141), .B(n116), .ZN(n201) );
  OAI21D0BWP12T30P140 U223 ( .A1(n118), .A2(n142), .B(addr[14]), .ZN(n117) );
  OAI21D0BWP12T30P140 U224 ( .A1(n118), .A2(n239), .B(n117), .ZN(n222) );
  OAI21D0BWP12T30P140 U225 ( .A1(n125), .A2(n134), .B(pcmleft[10]), .ZN(n119)
         );
  OAI21D0BWP12T30P140 U226 ( .A1(n125), .A2(n136), .B(n119), .ZN(n181) );
  OAI21D0BWP12T30P140 U227 ( .A1(n125), .A2(n139), .B(pcmright[14]), .ZN(n120)
         );
  OAI21D0BWP12T30P140 U228 ( .A1(n125), .A2(n141), .B(n120), .ZN(n197) );
  OAI21D0BWP12T30P140 U229 ( .A1(n125), .A2(n142), .B(addr[18]), .ZN(n121) );
  OAI21D0BWP12T30P140 U230 ( .A1(n125), .A2(n239), .B(n121), .ZN(n218) );
  OAI21D0BWP12T30P140 U231 ( .A1(n125), .A2(n122), .B(addr[2]), .ZN(n123) );
  OAI21D0BWP12T30P140 U232 ( .A1(n125), .A2(n124), .B(n123), .ZN(n234) );
  OAI21D0BWP12T30P140 U233 ( .A1(n130), .A2(n131), .B(pcmleft[14]), .ZN(n126)
         );
  OAI21D0BWP12T30P140 U234 ( .A1(n130), .A2(n133), .B(n126), .ZN(n177) );
  OAI21D0BWP12T30P140 U235 ( .A1(n130), .A2(n134), .B(pcmright[18]), .ZN(n127)
         );
  OAI21D0BWP12T30P140 U236 ( .A1(n130), .A2(n136), .B(n127), .ZN(n193) );
  OAI21D0BWP12T30P140 U237 ( .A1(n130), .A2(n139), .B(pcmright[2]), .ZN(n128)
         );
  OAI21D0BWP12T30P140 U238 ( .A1(n130), .A2(n141), .B(n128), .ZN(n209) );
  OAI21D0BWP12T30P140 U239 ( .A1(n130), .A2(n142), .B(addr[6]), .ZN(n129) );
  OAI21D0BWP12T30P140 U240 ( .A1(n130), .A2(n239), .B(n129), .ZN(n230) );
  OAI21D0BWP12T30P140 U241 ( .A1(n240), .A2(n131), .B(pcmleft[18]), .ZN(n132)
         );
  OAI21D0BWP12T30P140 U242 ( .A1(n240), .A2(n133), .B(n132), .ZN(n173) );
  OAI21D0BWP12T30P140 U243 ( .A1(n240), .A2(n134), .B(pcmleft[2]), .ZN(n135)
         );
  OAI21D0BWP12T30P140 U244 ( .A1(n240), .A2(n136), .B(n135), .ZN(n189) );
  NR2D0BWP12T30P140 U245 ( .A1(n137), .A2(n139), .ZN(n251) );
  INVD0BWP12T30P140 U246 ( .I(pcmright[0]), .ZN(n138) );
  OAI22D0BWP12T30P140 U247 ( .A1(n251), .A2(n138), .B1(n137), .B2(n141), .ZN(
        n211) );
  OAI21D0BWP12T30P140 U248 ( .A1(n240), .A2(n139), .B(pcmright[6]), .ZN(n140)
         );
  OAI21D0BWP12T30P140 U249 ( .A1(n240), .A2(n141), .B(n140), .ZN(n205) );
  OAI21D0BWP12T30P140 U250 ( .A1(n240), .A2(n142), .B(addr[10]), .ZN(n238) );
  OAI21D0BWP12T30P140 U251 ( .A1(n240), .A2(n239), .B(n238), .ZN(n226) );
  NR2D0BWP12T30P140 U252 ( .A1(sys_rst), .A2(n241), .ZN(n242) );
  MOAI22D0BWP12T30P140 U253 ( .A1(n244), .A2(n243), .B1(up_sync), .B2(n242), 
        .ZN(n171) );
  CKBD0BWP12T30P140 U254 ( .I(sys_clk), .Z(n262) );
  CKBD0BWP12T30P140 U255 ( .I(sys_clk), .Z(n261) );
  CKBD0BWP12T30P140 U256 ( .I(sys_clk), .Z(n259) );
  CKBD0BWP12T30P140 U257 ( .I(sys_clk), .Z(n260) );
  CKBD0BWP12T30P140 U258 ( .I(sys_clk), .Z(n263) );
  OAI21D0BWP12T30P140 U259 ( .A1(n247), .A2(n245), .B(n244), .ZN(n246) );
  AOI32D0BWP12T30P140 U260 ( .A1(n249), .A2(n248), .A3(n247), .B1(
        bitcounter[4]), .B2(n246), .ZN(n250) );
  ND2D0BWP12T30P140 U261 ( .A1(n250), .A2(n256), .ZN(n167) );
  INVD0BWP12T30P140 U262 ( .I(en), .ZN(n252) );
  AO31D0BWP12T30P140 U263 ( .A1(next_frame), .A2(n256), .A3(n252), .B(n251), 
        .Z(n163) );
  AOI32D0BWP12T30P140 U264 ( .A1(bitcounter[5]), .A2(n255), .A3(n254), .B1(
        bitcounter[6]), .B2(n253), .ZN(n257) );
  ND2D0BWP12T30P140 U265 ( .A1(n257), .A2(n256), .ZN(n165) );
endmodule


module ac97_ctlif_0 ( sys_clk, sys_rst, csr_a, csr_we, csr_di, csr_do, 
        crrequest_irq, crreply_irq, dmar_irq, dmaw_irq, down_en, 
        down_next_frame, down_addr_valid, down_addr, down_data_valid, 
        down_data, up_en, up_next_frame, up_frame_valid, up_addr_valid, 
        up_data_valid, up_data, dmar_en, dmar_addr, dmar_remaining, dmar_next, 
        dmaw_en, dmaw_addr, dmaw_remaining, dmaw_next );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  output [19:0] down_addr;
  output [19:0] down_data;
  input [19:0] up_data;
  output [29:0] dmar_addr;
  output [15:0] dmar_remaining;
  output [29:0] dmaw_addr;
  output [15:0] dmaw_remaining;
  input sys_clk, sys_rst, csr_we, down_en, down_next_frame, up_en,
         up_next_frame, up_frame_valid, up_addr_valid, up_data_valid,
         dmar_next, dmaw_next;
  output crrequest_irq, crreply_irq, dmar_irq, dmaw_irq, down_addr_valid,
         down_data_valid, dmar_en, dmaw_en;
  wire   dmar_finished_r, N29, dmaw_finished_r, N30, request_en, request_write,
         N556, N557, N558, N559, N560, N561, N562, N563, N564, N565, N566,
         N567, N568, N569, N570, N571, N572, N573, N574, N575, N576, N577,
         N578, N579, N580, N581, N582, N583, N584, N585, N586, N587, N710,
         N711, N712, N714, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657;
  wire   [6:0] request_addr;
  wire   [15:0] request_data;
  wire   [15:0] reply_data;

  DFQD2BWP12T30P140 crreply_irq_reg ( .D(N714), .CP(n648), .Q(crreply_irq) );
  DFQD2BWP12T30P140 crrequest_irq_reg ( .D(N710), .CP(n657), .Q(crrequest_irq)
         );
  DFQD2BWP12T30P140 dmar_irq_reg ( .D(N711), .CP(n656), .Q(dmar_irq) );
  DFQD2BWP12T30P140 csr_do_reg_31_ ( .D(N587), .CP(n650), .Q(csr_do[31]) );
  DFQD2BWP12T30P140 csr_do_reg_30_ ( .D(N586), .CP(n653), .Q(csr_do[30]) );
  DFQD2BWP12T30P140 csr_do_reg_29_ ( .D(N585), .CP(n655), .Q(csr_do[29]) );
  DFQD2BWP12T30P140 csr_do_reg_28_ ( .D(N584), .CP(n657), .Q(csr_do[28]) );
  DFQD2BWP12T30P140 csr_do_reg_26_ ( .D(N582), .CP(n648), .Q(csr_do[26]) );
  DFQD2BWP12T30P140 csr_do_reg_25_ ( .D(N581), .CP(n650), .Q(csr_do[25]) );
  DFQD2BWP12T30P140 csr_do_reg_24_ ( .D(N580), .CP(n649), .Q(csr_do[24]) );
  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N579), .CP(n651), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N578), .CP(n652), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N577), .CP(n654), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_20_ ( .D(N576), .CP(n653), .Q(csr_do[20]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N575), .CP(n655), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N574), .CP(n655), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N573), .CP(n653), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(N572), .CP(n652), .Q(csr_do[16]) );
  DFQD2BWP12T30P140 dmaw_irq_reg ( .D(N712), .CP(n651), .Q(dmaw_irq) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N571), .CP(n651), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N570), .CP(n651), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_12_ ( .D(N568), .CP(n650), .Q(csr_do[12]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N567), .CP(n650), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N566), .CP(n650), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N565), .CP(n650), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N564), .CP(n650), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N563), .CP(n650), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N562), .CP(n649), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N561), .CP(n649), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N560), .CP(n649), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N559), .CP(n649), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N558), .CP(n649), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N557), .CP(n649), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N556), .CP(n648), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 dmar_finished_r_reg ( .D(N29), .CP(n649), .Q(
        dmar_finished_r) );
  DFQD2BWP12T30P140 dmaw_addr_reg_8_ ( .D(n266), .CP(sys_clk), .Q(dmaw_addr[8]) );
  DFQD2BWP12T30P140 down_addr_valid_reg ( .D(n198), .CP(n655), .Q(
        down_addr_valid) );
  DFQD2BWP12T30P140 down_data_reg_19_ ( .D(n179), .CP(n655), .Q(down_data[19])
         );
  DFQD2BWP12T30P140 down_data_reg_14_ ( .D(n189), .CP(n654), .Q(down_data[14])
         );
  DFQD2BWP12T30P140 down_addr_reg_19_ ( .D(n153), .CP(n648), .Q(down_addr[19])
         );
  DFQD2BWP12T30P140 down_data_reg_10_ ( .D(n159), .CP(n654), .Q(down_data[10])
         );
  DFQD2BWP12T30P140 request_data_reg_15_ ( .D(n180), .CP(n655), .Q(
        request_data[15]) );
  DFQD2BWP12T30P140 request_data_reg_10_ ( .D(n190), .CP(n654), .Q(
        request_data[10]) );
  DFQD2BWP12T30P140 request_data_reg_6_ ( .D(n160), .CP(n654), .Q(
        request_data[6]) );
  DFQD2BWP12T30P140 down_data_reg_18_ ( .D(n181), .CP(n655), .Q(down_data[18])
         );
  DFQD2BWP12T30P140 down_data_reg_17_ ( .D(n183), .CP(n655), .Q(down_data[17])
         );
  DFQD2BWP12T30P140 down_data_reg_16_ ( .D(n185), .CP(n655), .Q(down_data[16])
         );
  DFQD2BWP12T30P140 down_data_reg_7_ ( .D(n168), .CP(n653), .Q(down_data[7])
         );
  DFQD2BWP12T30P140 down_data_reg_6_ ( .D(n171), .CP(n653), .Q(down_data[6])
         );
  DFQD2BWP12T30P140 down_addr_reg_18_ ( .D(n152), .CP(n648), .Q(down_addr[18])
         );
  DFQD2BWP12T30P140 down_addr_reg_16_ ( .D(n150), .CP(n648), .Q(down_addr[16])
         );
  DFQD2BWP12T30P140 down_addr_reg_15_ ( .D(n149), .CP(n648), .Q(down_addr[15])
         );
  DFQD2BWP12T30P140 down_addr_reg_14_ ( .D(n148), .CP(n648), .Q(down_addr[14])
         );
  DFQD2BWP12T30P140 down_addr_reg_13_ ( .D(n147), .CP(n648), .Q(down_addr[13])
         );
  DFQD2BWP12T30P140 down_addr_reg_12_ ( .D(n146), .CP(n648), .Q(down_addr[12])
         );
  DFQD2BWP12T30P140 down_data_reg_15_ ( .D(n187), .CP(n655), .Q(down_data[15])
         );
  DFQD2BWP12T30P140 down_data_reg_13_ ( .D(n191), .CP(n654), .Q(down_data[13])
         );
  DFQD2BWP12T30P140 down_data_reg_12_ ( .D(n193), .CP(n654), .Q(down_data[12])
         );
  DFQD2BWP12T30P140 down_data_reg_11_ ( .D(n195), .CP(n654), .Q(down_data[11])
         );
  DFQD2BWP12T30P140 down_data_reg_9_ ( .D(n162), .CP(n654), .Q(down_data[9])
         );
  DFQD2BWP12T30P140 down_data_reg_8_ ( .D(n165), .CP(n653), .Q(down_data[8])
         );
  DFQD2BWP12T30P140 down_data_reg_5_ ( .D(n156), .CP(n653), .Q(down_data[5])
         );
  DFQD2BWP12T30P140 down_addr_reg_17_ ( .D(n151), .CP(n648), .Q(down_addr[17])
         );
  DFQD2BWP12T30P140 down_data_valid_reg ( .D(n197), .CP(n653), .Q(
        down_data_valid) );
  DFQD2BWP12T30P140 dmar_remaining_reg_15_ ( .D(n229), .CP(sys_clk), .Q(
        dmar_remaining[15]) );
  DFQD2BWP12T30P140 reply_data_reg_2_ ( .D(n292), .CP(n649), .Q(reply_data[2])
         );
  DFQD2BWP12T30P140 reply_data_reg_15_ ( .D(n305), .CP(n651), .Q(
        reply_data[15]) );
  DFQD2BWP12T30P140 reply_data_reg_14_ ( .D(n304), .CP(n651), .Q(
        reply_data[14]) );
  DFQD2BWP12T30P140 reply_data_reg_13_ ( .D(n303), .CP(n651), .Q(
        reply_data[13]) );
  DFQD2BWP12T30P140 reply_data_reg_12_ ( .D(n302), .CP(n650), .Q(
        reply_data[12]) );
  DFQD2BWP12T30P140 reply_data_reg_11_ ( .D(n301), .CP(n650), .Q(
        reply_data[11]) );
  DFQD2BWP12T30P140 reply_data_reg_10_ ( .D(n300), .CP(n650), .Q(
        reply_data[10]) );
  DFQD2BWP12T30P140 reply_data_reg_9_ ( .D(n299), .CP(n650), .Q(reply_data[9])
         );
  DFQD2BWP12T30P140 reply_data_reg_8_ ( .D(n298), .CP(n650), .Q(reply_data[8])
         );
  DFQD2BWP12T30P140 reply_data_reg_7_ ( .D(n297), .CP(n650), .Q(reply_data[7])
         );
  DFQD2BWP12T30P140 reply_data_reg_6_ ( .D(n296), .CP(n649), .Q(reply_data[6])
         );
  DFQD2BWP12T30P140 reply_data_reg_5_ ( .D(n295), .CP(n649), .Q(reply_data[5])
         );
  DFQD2BWP12T30P140 reply_data_reg_3_ ( .D(n293), .CP(n649), .Q(reply_data[3])
         );
  DFQD2BWP12T30P140 reply_data_reg_1_ ( .D(n291), .CP(n649), .Q(reply_data[1])
         );
  DFQD2BWP12T30P140 reply_data_reg_0_ ( .D(n306), .CP(n648), .Q(reply_data[0])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_6_ ( .D(n238), .CP(sys_clk), .Q(
        dmar_remaining[6]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_7_ ( .D(n267), .CP(sys_clk), .Q(dmaw_addr[7]) );
  DFQD2BWP12T30P140 request_addr_reg_1_ ( .D(n155), .CP(n649), .Q(
        request_addr[1]) );
  DFQD2BWP12T30P140 request_addr_reg_0_ ( .D(n178), .CP(n657), .Q(
        request_addr[0]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_8_ ( .D(n236), .CP(sys_clk), .Q(
        dmar_remaining[8]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_4_ ( .D(n240), .CP(sys_clk), .Q(
        dmar_remaining[4]) );
  DFQD2BWP12T30P140 request_addr_reg_2_ ( .D(n173), .CP(n655), .Q(
        request_addr[2]) );
  DFQD2BWP12T30P140 request_data_reg_2_ ( .D(n172), .CP(n653), .Q(
        request_data[2]) );
  DFQD2BWP12T30P140 request_addr_reg_6_ ( .D(n161), .CP(n651), .Q(
        request_addr[6]) );
  DFQD2BWP12T30P140 request_addr_reg_5_ ( .D(n164), .CP(n652), .Q(
        request_addr[5]) );
  DFQD2BWP12T30P140 request_addr_reg_4_ ( .D(n167), .CP(n654), .Q(
        request_addr[4]) );
  DFQD2BWP12T30P140 request_data_reg_5_ ( .D(n163), .CP(n654), .Q(
        request_data[5]) );
  DFQD2BWP12T30P140 request_data_reg_4_ ( .D(n166), .CP(n653), .Q(
        request_data[4]) );
  DFQD2BWP12T30P140 request_data_reg_3_ ( .D(n169), .CP(n653), .Q(
        request_data[3]) );
  DFQD2BWP12T30P140 request_data_reg_0_ ( .D(n175), .CP(n648), .Q(
        request_data[0]) );
  DFQD2BWP12T30P140 request_data_reg_14_ ( .D(n182), .CP(n655), .Q(
        request_data[14]) );
  DFQD2BWP12T30P140 request_data_reg_13_ ( .D(n184), .CP(n655), .Q(
        request_data[13]) );
  DFQD2BWP12T30P140 request_data_reg_12_ ( .D(n186), .CP(n655), .Q(
        request_data[12]) );
  DFQD2BWP12T30P140 request_data_reg_11_ ( .D(n188), .CP(n655), .Q(
        request_data[11]) );
  DFQD2BWP12T30P140 request_data_reg_9_ ( .D(n192), .CP(n654), .Q(
        request_data[9]) );
  DFQD2BWP12T30P140 request_data_reg_8_ ( .D(n194), .CP(n654), .Q(
        request_data[8]) );
  DFQD2BWP12T30P140 request_data_reg_7_ ( .D(n196), .CP(n654), .Q(
        request_data[7]) );
  DFQD2BWP12T30P140 request_data_reg_1_ ( .D(n157), .CP(n653), .Q(
        request_data[1]) );
  DFQD2BWP12T30P140 dmar_addr_reg_24_ ( .D(n204), .CP(n649), .Q(dmar_addr[24])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_20_ ( .D(n208), .CP(n653), .Q(dmar_addr[20])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_27_ ( .D(n201), .CP(n656), .Q(dmar_addr[27])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_29_ ( .D(n245), .CP(n657), .Q(dmaw_addr[29])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_24_ ( .D(n250), .CP(n657), .Q(dmaw_addr[24])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_20_ ( .D(n254), .CP(n656), .Q(dmaw_addr[20])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_16_ ( .D(n258), .CP(n656), .Q(dmaw_addr[16])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_29_ ( .D(n199), .CP(n656), .Q(dmar_addr[29])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_7_ ( .D(n237), .CP(sys_clk), .Q(
        dmar_remaining[7]) );
  DFQD2BWP12T30P140 request_write_reg ( .D(n158), .CP(n648), .Q(request_write)
         );
  DFQD2BWP12T30P140 dmar_addr_reg_4_ ( .D(n224), .CP(n649), .Q(dmar_addr[4])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_27_ ( .D(n247), .CP(n657), .Q(dmaw_addr[27])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_28_ ( .D(n200), .CP(n657), .Q(dmar_addr[28])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_23_ ( .D(n205), .CP(n651), .Q(dmar_addr[23])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_19_ ( .D(n209), .CP(n655), .Q(dmar_addr[19])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_4_ ( .D(n270), .CP(n657), .Q(dmaw_addr[4])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_28_ ( .D(n246), .CP(n657), .Q(dmaw_addr[28])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_23_ ( .D(n251), .CP(n657), .Q(dmaw_addr[23])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_19_ ( .D(n255), .CP(n656), .Q(dmaw_addr[19])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_12_ ( .D(n278), .CP(n652), .Q(
        dmaw_remaining[12]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_12_ ( .D(n232), .CP(n652), .Q(
        dmar_remaining[12]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_0_ ( .D(n244), .CP(n650), .Q(
        dmar_remaining[0]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_5_ ( .D(n239), .CP(sys_clk), .Q(
        dmar_remaining[5]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_14_ ( .D(n276), .CP(n652), .Q(
        dmaw_remaining[14]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_14_ ( .D(n230), .CP(n649), .Q(
        dmar_remaining[14]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_2_ ( .D(n288), .CP(n651), .Q(
        dmaw_remaining[2]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_15_ ( .D(n275), .CP(n653), .Q(
        dmaw_remaining[15]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_2_ ( .D(n242), .CP(n656), .Q(
        dmar_remaining[2]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_10_ ( .D(n280), .CP(n652), .Q(
        dmaw_remaining[10]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_6_ ( .D(n284), .CP(n652), .Q(
        dmaw_remaining[6]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_9_ ( .D(n265), .CP(sys_clk), .Q(dmaw_addr[9]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_5_ ( .D(n269), .CP(sys_clk), .Q(dmaw_addr[5]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_14_ ( .D(n260), .CP(n656), .Q(dmaw_addr[14])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_10_ ( .D(n264), .CP(n656), .Q(dmaw_addr[10])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_6_ ( .D(n268), .CP(n657), .Q(dmaw_addr[6])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_14_ ( .D(n214), .CP(n650), .Q(dmar_addr[14])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_10_ ( .D(n218), .CP(n654), .Q(dmar_addr[10])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_6_ ( .D(n222), .CP(n648), .Q(dmar_addr[6])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_26_ ( .D(n248), .CP(n657), .Q(dmaw_addr[26])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_22_ ( .D(n252), .CP(n657), .Q(dmaw_addr[22])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_18_ ( .D(n256), .CP(n656), .Q(dmaw_addr[18])
         );
  DFQD2BWP12T30P140 dmaw_en_reg ( .D(n177), .CP(n650), .Q(dmaw_en) );
  DFQD2BWP12T30P140 dmar_addr_reg_2_ ( .D(n226), .CP(n652), .Q(dmar_addr[2])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_26_ ( .D(n202), .CP(n648), .Q(dmar_addr[26])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_18_ ( .D(n210), .CP(n651), .Q(dmar_addr[18])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_3_ ( .D(n225), .CP(n651), .Q(dmar_addr[3])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_2_ ( .D(n272), .CP(n657), .Q(dmaw_addr[2])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_7_ ( .D(n221), .CP(n652), .Q(dmar_addr[7])
         );
  DFQD2BWP12T30P140 dmar_en_reg ( .D(n176), .CP(n655), .Q(dmar_en) );
  DFQD2BWP12T30P140 dmaw_addr_reg_3_ ( .D(n271), .CP(n657), .Q(dmaw_addr[3])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_12_ ( .D(n216), .CP(n651), .Q(dmar_addr[12])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_12_ ( .D(n262), .CP(n656), .Q(dmaw_addr[12])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_15_ ( .D(n259), .CP(n656), .Q(dmaw_addr[15])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_11_ ( .D(n263), .CP(n656), .Q(dmaw_addr[11])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_15_ ( .D(n213), .CP(n648), .Q(dmar_addr[15])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_11_ ( .D(n217), .CP(n652), .Q(dmar_addr[11])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_0_ ( .D(n290), .CP(n651), .Q(
        dmaw_remaining[0]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_8_ ( .D(n282), .CP(n652), .Q(
        dmaw_remaining[8]) );
  DFQD2BWP12T30P140 dmar_addr_reg_25_ ( .D(n203), .CP(n650), .Q(dmar_addr[25])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_21_ ( .D(n207), .CP(n654), .Q(dmar_addr[21])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_17_ ( .D(n211), .CP(n657), .Q(dmar_addr[17])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_25_ ( .D(n249), .CP(n657), .Q(dmaw_addr[25])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_21_ ( .D(n253), .CP(n656), .Q(dmaw_addr[21])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_17_ ( .D(n257), .CP(n656), .Q(dmaw_addr[17])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_7_ ( .D(n283), .CP(n652), .Q(
        dmaw_remaining[7]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_3_ ( .D(n287), .CP(n651), .Q(
        dmaw_remaining[3]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_3_ ( .D(n241), .CP(n657), .Q(
        dmar_remaining[3]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_11_ ( .D(n279), .CP(n652), .Q(
        dmaw_remaining[11]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_1_ ( .D(n289), .CP(n651), .Q(
        dmaw_remaining[1]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_11_ ( .D(n233), .CP(n654), .Q(
        dmar_remaining[11]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_1_ ( .D(n243), .CP(n648), .Q(
        dmar_remaining[1]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_13_ ( .D(n277), .CP(n652), .Q(
        dmaw_remaining[13]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_9_ ( .D(n281), .CP(n652), .Q(
        dmaw_remaining[9]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_5_ ( .D(n285), .CP(n652), .Q(
        dmaw_remaining[5]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_9_ ( .D(n235), .CP(n655), .Q(
        dmar_remaining[9]) );
  DFQD2BWP12T30P140 dmar_addr_reg_1_ ( .D(n227), .CP(n654), .Q(dmar_addr[1])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_1_ ( .D(n273), .CP(n657), .Q(dmaw_addr[1])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_13_ ( .D(n215), .CP(n649), .Q(dmar_addr[13])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_9_ ( .D(n219), .CP(n653), .Q(dmar_addr[9])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_5_ ( .D(n223), .CP(n650), .Q(dmar_addr[5])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_13_ ( .D(n261), .CP(n656), .Q(dmaw_addr[13])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_0_ ( .D(n274), .CP(n656), .Q(dmaw_addr[0])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_0_ ( .D(n228), .CP(n653), .Q(dmar_addr[0])
         );
  DFQD2BWP12T30P140 down_addr_reg_0_ ( .D(n145), .CP(n648), .Q(down_addr[2])
         );
  DFQD1BWP12T30P140 csr_do_reg_27_ ( .D(N583), .CP(n656), .Q(csr_do[27]) );
  DFQD1BWP12T30P140 csr_do_reg_13_ ( .D(N569), .CP(n651), .Q(csr_do[13]) );
  DFQD1BWP12T30P140 dmaw_finished_r_reg ( .D(N30), .CP(n651), .Q(
        dmaw_finished_r) );
  DFQD1BWP12T30P140 down_data_reg_4_ ( .D(n174), .CP(n653), .Q(down_data[4])
         );
  DFQD1BWP12T30P140 request_en_reg ( .D(n154), .CP(n654), .Q(request_en) );
  DFQD1BWP12T30P140 reply_data_reg_4_ ( .D(n294), .CP(n649), .Q(reply_data[4])
         );
  DFQD1BWP12T30P140 request_addr_reg_3_ ( .D(n170), .CP(n653), .Q(
        request_addr[3]) );
  DFQD1BWP12T30P140 dmar_addr_reg_16_ ( .D(n212), .CP(n656), .Q(dmar_addr[16])
         );
  DFQD1BWP12T30P140 dmar_addr_reg_8_ ( .D(n220), .CP(n655), .Q(dmar_addr[8])
         );
  DFQD1BWP12T30P140 dmar_remaining_reg_10_ ( .D(n234), .CP(n653), .Q(
        dmar_remaining[10]) );
  DFQD1BWP12T30P140 dmar_addr_reg_22_ ( .D(n206), .CP(n652), .Q(dmar_addr[22])
         );
  DFQD1BWP12T30P140 dmaw_remaining_reg_4_ ( .D(n286), .CP(n652), .Q(
        dmaw_remaining[4]) );
  DFQD1BWP12T30P140 dmar_remaining_reg_13_ ( .D(n231), .CP(n651), .Q(
        dmar_remaining[13]) );
  AOI32D0BWP12T30P140 U3 ( .A1(n401), .A2(n402), .A3(dmar_addr[25]), .B1(n453), 
        .B2(n402), .ZN(n110) );
  AOI32D0BWP12T30P140 U4 ( .A1(n380), .A2(n381), .A3(dmaw_addr[25]), .B1(n435), 
        .B2(n381), .ZN(n127) );
  AOI32D0BWP12T30P140 U5 ( .A1(n106), .A2(n402), .A3(dmar_addr[21]), .B1(n453), 
        .B2(n402), .ZN(n107) );
  AOI32D0BWP12T30P140 U6 ( .A1(n123), .A2(n381), .A3(dmaw_addr[21]), .B1(n435), 
        .B2(n381), .ZN(n124) );
  AOI32D0BWP12T30P140 U7 ( .A1(n119), .A2(n381), .A3(dmaw_addr[17]), .B1(n510), 
        .B2(n381), .ZN(n120) );
  AOI32D0BWP12T30P140 U8 ( .A1(n102), .A2(n402), .A3(dmar_addr[17]), .B1(n407), 
        .B2(n402), .ZN(n103) );
  AOI32D0BWP12T30P140 U9 ( .A1(dmaw_addr[1]), .A2(n381), .A3(dmaw_addr[0]), 
        .B1(n510), .B2(n381), .ZN(n96) );
  AOI32D0BWP12T30P140 U10 ( .A1(dmar_addr[1]), .A2(n402), .A3(dmar_addr[0]), 
        .B1(n407), .B2(n402), .ZN(n113) );
  INVD0BWP12T30P140 U11 ( .I(n605), .ZN(n1) );
  INVD0BWP12T30P140 U12 ( .I(n397), .ZN(n2) );
  INVD0BWP12T30P140 U13 ( .I(n472), .ZN(n3) );
  INVD0BWP12T30P140 U14 ( .I(down_addr[2]), .ZN(n4) );
  INVD0BWP12T30P140 U15 ( .I(n4), .ZN(down_addr[3]) );
  INVD0BWP12T30P140 U16 ( .I(n4), .ZN(down_addr[4]) );
  INVD0BWP12T30P140 U17 ( .I(n4), .ZN(down_addr[5]) );
  INVD0BWP12T30P140 U18 ( .I(n4), .ZN(down_addr[6]) );
  INVD0BWP12T30P140 U19 ( .I(n4), .ZN(down_addr[7]) );
  INVD0BWP12T30P140 U20 ( .I(n4), .ZN(down_addr[8]) );
  INVD0BWP12T30P140 U21 ( .I(n4), .ZN(down_addr[9]) );
  INVD0BWP12T30P140 U22 ( .I(n4), .ZN(down_addr[10]) );
  INVD0BWP12T30P140 U23 ( .I(n4), .ZN(down_addr[11]) );
  INVD0BWP12T30P140 U24 ( .I(n4), .ZN(down_data[0]) );
  INVD0BWP12T30P140 U25 ( .I(n4), .ZN(down_data[1]) );
  INVD0BWP12T30P140 U26 ( .I(n4), .ZN(down_data[2]) );
  INVD0BWP12T30P140 U27 ( .I(n4), .ZN(down_data[3]) );
  INVD0BWP12T30P140 U28 ( .I(n4), .ZN(down_addr[0]) );
  INVD0BWP12T30P140 U29 ( .I(n4), .ZN(down_addr[1]) );
  ND2D0BWP12T30P140 U30 ( .A1(down_en), .A2(down_next_frame), .ZN(n491) );
  INVD0BWP12T30P140 U31 ( .I(sys_rst), .ZN(n621) );
  INVD0BWP12T30P140 U32 ( .I(n621), .ZN(n632) );
  OR2D0BWP12T30P140 U33 ( .A1(n491), .A2(n632), .Z(n497) );
  AN2D0BWP12T30P140 U34 ( .A1(down_addr[2]), .A2(n497), .Z(n145) );
  INVD0BWP12T30P140 U35 ( .I(csr_a[0]), .ZN(n520) );
  NR2D0BWP12T30P140 U36 ( .A1(n520), .A2(csr_a[1]), .ZN(n517) );
  INVD0BWP12T30P140 U37 ( .I(n517), .ZN(n442) );
  NR4D0BWP12T30P140 U38 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .ZN(n439) );
  AN2D0BWP12T30P140 U39 ( .A1(n439), .A2(csr_we), .Z(n460) );
  INR2D1BWP12T30P140 U40 ( .A1(csr_a[2]), .B1(csr_a[3]), .ZN(n535) );
  ND2D0BWP12T30P140 U41 ( .A1(n460), .A2(n535), .ZN(n90) );
  NR2D0BWP12T30P140 U42 ( .A1(n442), .A2(n90), .ZN(n5) );
  NR2D0BWP12T30P140 U43 ( .A1(n632), .A2(n5), .ZN(n398) );
  ND2D0BWP12T30P140 U44 ( .A1(n398), .A2(dmar_next), .ZN(n453) );
  INR2D1BWP12T30P140 U45 ( .A1(n398), .B1(dmar_next), .ZN(n397) );
  OR3D0BWP12T30P140 U46 ( .A1(n632), .A2(n442), .A3(n90), .Z(n412) );
  INVD0BWP12T30P140 U47 ( .I(n412), .ZN(n616) );
  AOI22D0BWP12T30P140 U48 ( .A1(n397), .A2(dmar_addr[0]), .B1(n616), .B2(
        csr_di[2]), .ZN(n6) );
  OAI21D0BWP12T30P140 U49 ( .A1(dmar_addr[0]), .A2(n453), .B(n6), .ZN(n228) );
  INR2D1BWP12T30P140 U50 ( .A1(csr_a[3]), .B1(csr_a[2]), .ZN(n530) );
  ND2D0BWP12T30P140 U51 ( .A1(n460), .A2(n530), .ZN(n116) );
  NR2D0BWP12T30P140 U52 ( .A1(n442), .A2(n116), .ZN(n7) );
  NR2D0BWP12T30P140 U53 ( .A1(n632), .A2(n7), .ZN(n473) );
  ND2D0BWP12T30P140 U54 ( .A1(n473), .A2(dmaw_next), .ZN(n435) );
  INR2D1BWP12T30P140 U55 ( .A1(n473), .B1(dmaw_next), .ZN(n472) );
  ND2D0BWP12T30P140 U56 ( .A1(n621), .A2(n7), .ZN(n516) );
  INVD0BWP12T30P140 U57 ( .I(n516), .ZN(n430) );
  CKBD0BWP12T30P140 U58 ( .I(n430), .Z(n611) );
  AOI22D0BWP12T30P140 U59 ( .A1(n472), .A2(dmaw_addr[0]), .B1(n611), .B2(
        csr_di[2]), .ZN(n8) );
  OAI21D0BWP12T30P140 U60 ( .A1(dmaw_addr[0]), .A2(n435), .B(n8), .ZN(n274) );
  INVD0BWP12T30P140 U61 ( .I(n435), .ZN(n382) );
  ND3D0BWP12T30P140 U62 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .A3(
        dmaw_addr[2]), .ZN(n87) );
  INVD0BWP12T30P140 U63 ( .I(dmaw_addr[4]), .ZN(n393) );
  INVD0BWP12T30P140 U64 ( .I(dmaw_addr[3]), .ZN(n89) );
  NR3D0BWP12T30P140 U65 ( .A1(n87), .A2(n393), .A3(n89), .ZN(n318) );
  ND3D0BWP12T30P140 U66 ( .A1(n318), .A2(dmaw_addr[6]), .A3(dmaw_addr[5]), 
        .ZN(n474) );
  INVD0BWP12T30P140 U67 ( .I(dmaw_addr[8]), .ZN(n513) );
  INVD0BWP12T30P140 U68 ( .I(dmaw_addr[7]), .ZN(n476) );
  NR3D0BWP12T30P140 U69 ( .A1(n474), .A2(n513), .A3(n476), .ZN(n322) );
  ND3D0BWP12T30P140 U70 ( .A1(n322), .A2(dmaw_addr[10]), .A3(dmaw_addr[9]), 
        .ZN(n73) );
  INVD0BWP12T30P140 U71 ( .I(dmaw_addr[11]), .ZN(n81) );
  INR3D1BWP12T30P140 U72 ( .A1(dmaw_addr[12]), .B1(n73), .B2(n81), .ZN(n313)
         );
  ND2D0BWP12T30P140 U73 ( .A1(n382), .A2(n313), .ZN(n316) );
  INVD0BWP12T30P140 U74 ( .I(n382), .ZN(n510) );
  INVD0BWP12T30P140 U75 ( .I(n472), .ZN(n381) );
  OAI21D0BWP12T30P140 U76 ( .A1(n313), .A2(n510), .B(n381), .ZN(n9) );
  AOI22D0BWP12T30P140 U77 ( .A1(dmaw_addr[13]), .A2(n9), .B1(n611), .B2(
        csr_di[15]), .ZN(n10) );
  OAI21D0BWP12T30P140 U78 ( .A1(dmaw_addr[13]), .A2(n316), .B(n10), .ZN(n261)
         );
  INVD0BWP12T30P140 U79 ( .I(n453), .ZN(n403) );
  ND3D0BWP12T30P140 U80 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .A3(
        dmar_addr[2]), .ZN(n99) );
  INVD0BWP12T30P140 U81 ( .I(dmar_addr[4]), .ZN(n410) );
  INVD0BWP12T30P140 U82 ( .I(dmar_addr[3]), .ZN(n101) );
  NR3D0BWP12T30P140 U83 ( .A1(n99), .A2(n410), .A3(n101), .ZN(n130) );
  ND2D0BWP12T30P140 U84 ( .A1(n403), .A2(n130), .ZN(n133) );
  INVD0BWP12T30P140 U85 ( .I(n397), .ZN(n402) );
  OAI21D0BWP12T30P140 U86 ( .A1(n130), .A2(n453), .B(n402), .ZN(n11) );
  INVD0BWP12T30P140 U87 ( .I(n412), .ZN(n454) );
  AOI22D0BWP12T30P140 U88 ( .A1(dmar_addr[5]), .A2(n11), .B1(n454), .B2(
        csr_di[7]), .ZN(n12) );
  OAI21D0BWP12T30P140 U89 ( .A1(dmar_addr[5]), .A2(n133), .B(n12), .ZN(n223)
         );
  ND3D0BWP12T30P140 U90 ( .A1(n130), .A2(dmar_addr[6]), .A3(dmar_addr[5]), 
        .ZN(n93) );
  INVD0BWP12T30P140 U91 ( .I(dmar_addr[8]), .ZN(n388) );
  INVD0BWP12T30P140 U92 ( .I(dmar_addr[7]), .ZN(n95) );
  NR3D0BWP12T30P140 U93 ( .A1(n93), .A2(n388), .A3(n95), .ZN(n135) );
  ND2D0BWP12T30P140 U94 ( .A1(n403), .A2(n135), .ZN(n138) );
  INVD0BWP12T30P140 U95 ( .I(n403), .ZN(n407) );
  OAI21D0BWP12T30P140 U96 ( .A1(n135), .A2(n407), .B(n402), .ZN(n13) );
  AOI22D0BWP12T30P140 U97 ( .A1(dmar_addr[9]), .A2(n13), .B1(n454), .B2(
        csr_di[11]), .ZN(n14) );
  OAI21D0BWP12T30P140 U98 ( .A1(dmar_addr[9]), .A2(n138), .B(n14), .ZN(n219)
         );
  ND3D0BWP12T30P140 U99 ( .A1(n135), .A2(dmar_addr[10]), .A3(dmar_addr[9]), 
        .ZN(n69) );
  INVD0BWP12T30P140 U100 ( .I(dmar_addr[11]), .ZN(n86) );
  INR3D1BWP12T30P140 U101 ( .A1(dmar_addr[12]), .B1(n69), .B2(n86), .ZN(n140)
         );
  ND2D0BWP12T30P140 U102 ( .A1(n403), .A2(n140), .ZN(n143) );
  OAI21D0BWP12T30P140 U103 ( .A1(n140), .A2(n407), .B(n402), .ZN(n15) );
  AOI22D0BWP12T30P140 U104 ( .A1(dmar_addr[13]), .A2(n15), .B1(n454), .B2(
        csr_di[15]), .ZN(n16) );
  OAI21D0BWP12T30P140 U105 ( .A1(dmar_addr[13]), .A2(n143), .B(n16), .ZN(n215)
         );
  INVD0BWP12T30P140 U106 ( .I(dmaw_addr[0]), .ZN(n537) );
  OAI21D0BWP12T30P140 U107 ( .A1(dmaw_addr[0]), .A2(n510), .B(n381), .ZN(n17)
         );
  AOI22D0BWP12T30P140 U108 ( .A1(dmaw_addr[1]), .A2(n17), .B1(n611), .B2(
        csr_di[3]), .ZN(n18) );
  OAI31D0BWP12T30P140 U109 ( .A1(dmaw_addr[1]), .A2(n510), .A3(n537), .B(n18), 
        .ZN(n273) );
  INVD0BWP12T30P140 U110 ( .I(dmar_addr[0]), .ZN(n21) );
  OAI21D0BWP12T30P140 U111 ( .A1(dmar_addr[0]), .A2(n407), .B(n402), .ZN(n19)
         );
  AOI22D0BWP12T30P140 U112 ( .A1(dmar_addr[1]), .A2(n19), .B1(n454), .B2(
        csr_di[3]), .ZN(n20) );
  OAI31D0BWP12T30P140 U113 ( .A1(dmar_addr[1]), .A2(n407), .A3(n21), .B(n20), 
        .ZN(n227) );
  INVD0BWP12T30P140 U114 ( .I(csr_a[1]), .ZN(n519) );
  NR2D0BWP12T30P140 U115 ( .A1(n519), .A2(csr_a[0]), .ZN(n458) );
  INVD0BWP12T30P140 U116 ( .I(n458), .ZN(n533) );
  OAI211D0BWP12T30P140 U117 ( .A1(n90), .A2(n533), .B(dmar_next), .C(n621), 
        .ZN(n486) );
  INVD0BWP12T30P140 U118 ( .I(n486), .ZN(n489) );
  NR3D0BWP12T30P140 U119 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), 
        .A3(dmar_remaining[2]), .ZN(n42) );
  INVD0BWP12T30P140 U120 ( .I(n42), .ZN(n344) );
  NR3D0BWP12T30P140 U121 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[3]), 
        .A3(n344), .ZN(n479) );
  INR3D1BWP12T30P140 U122 ( .A1(n479), .B1(dmar_remaining[6]), .B2(
        dmar_remaining[5]), .ZN(n414) );
  INVD0BWP12T30P140 U123 ( .I(n414), .ZN(n482) );
  NR3D0BWP12T30P140 U124 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[7]), 
        .A3(n482), .ZN(n327) );
  ND2D0BWP12T30P140 U125 ( .A1(n489), .A2(n327), .ZN(n468) );
  OAI21D0BWP12T30P140 U126 ( .A1(n90), .A2(n533), .B(n621), .ZN(n477) );
  AOI21D0BWP12T30P140 U127 ( .A1(dmar_next), .A2(n327), .B(n477), .ZN(n22) );
  NR3D0BWP12T30P140 U128 ( .A1(n632), .A2(n90), .A3(n533), .ZN(n488) );
  AOI22D0BWP12T30P140 U129 ( .A1(dmar_remaining[9]), .A2(n22), .B1(n488), .B2(
        csr_di[11]), .ZN(n23) );
  OAI21D0BWP12T30P140 U130 ( .A1(dmar_remaining[9]), .A2(n468), .B(n23), .ZN(
        n235) );
  NR2D0BWP12T30P140 U131 ( .A1(n116), .A2(n533), .ZN(n24) );
  NR2D0BWP12T30P140 U132 ( .A1(n632), .A2(n24), .ZN(n31) );
  ND2D0BWP12T30P140 U133 ( .A1(dmaw_next), .A2(n31), .ZN(n375) );
  INVD0BWP12T30P140 U134 ( .I(n375), .ZN(n346) );
  NR3D0BWP12T30P140 U135 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(dmaw_remaining[2]), .ZN(n44) );
  INVD0BWP12T30P140 U136 ( .I(n44), .ZN(n352) );
  NR3D0BWP12T30P140 U137 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[3]), 
        .A3(n352), .ZN(n332) );
  ND2D0BWP12T30P140 U138 ( .A1(n346), .A2(n332), .ZN(n61) );
  INVD0BWP12T30P140 U139 ( .I(n31), .ZN(n368) );
  AOI21D0BWP12T30P140 U140 ( .A1(dmaw_next), .A2(n332), .B(n368), .ZN(n25) );
  NR3D0BWP12T30P140 U141 ( .A1(n632), .A2(n116), .A3(n533), .ZN(n371) );
  AOI22D0BWP12T30P140 U142 ( .A1(dmaw_remaining[5]), .A2(n25), .B1(n371), .B2(
        csr_di[7]), .ZN(n26) );
  OAI21D0BWP12T30P140 U143 ( .A1(dmaw_remaining[5]), .A2(n61), .B(n26), .ZN(
        n285) );
  INR3D1BWP12T30P140 U144 ( .A1(n332), .B1(dmaw_remaining[6]), .B2(
        dmaw_remaining[5]), .ZN(n46) );
  INVD0BWP12T30P140 U145 ( .I(n46), .ZN(n335) );
  NR3D0BWP12T30P140 U146 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[7]), 
        .A3(n335), .ZN(n337) );
  ND2D0BWP12T30P140 U147 ( .A1(n346), .A2(n337), .ZN(n64) );
  AOI21D0BWP12T30P140 U148 ( .A1(dmaw_next), .A2(n337), .B(n368), .ZN(n27) );
  AOI22D0BWP12T30P140 U149 ( .A1(dmaw_remaining[9]), .A2(n27), .B1(n371), .B2(
        csr_di[11]), .ZN(n28) );
  OAI21D0BWP12T30P140 U150 ( .A1(dmaw_remaining[9]), .A2(n64), .B(n28), .ZN(
        n281) );
  INVD0BWP12T30P140 U151 ( .I(n488), .ZN(n469) );
  INVD0BWP12T30P140 U152 ( .I(csr_di[15]), .ZN(n502) );
  INR3D1BWP12T30P140 U153 ( .A1(n327), .B1(dmar_remaining[10]), .B2(
        dmar_remaining[9]), .ZN(n364) );
  INVD0BWP12T30P140 U154 ( .I(n364), .ZN(n330) );
  NR3D0BWP12T30P140 U155 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[11]), 
        .A3(n330), .ZN(n29) );
  OR2D0BWP12T30P140 U156 ( .A1(dmar_next), .A2(n477), .Z(n363) );
  OAI21D0BWP12T30P140 U157 ( .A1(n29), .A2(n486), .B(n363), .ZN(n353) );
  INVD0BWP12T30P140 U158 ( .I(n29), .ZN(n487) );
  NR3D0BWP12T30P140 U159 ( .A1(dmar_remaining[13]), .A2(n486), .A3(n487), .ZN(
        n354) );
  AOI21D0BWP12T30P140 U160 ( .A1(dmar_remaining[13]), .A2(n353), .B(n354), 
        .ZN(n30) );
  OAI21D0BWP12T30P140 U161 ( .A1(n469), .A2(n502), .B(n30), .ZN(n231) );
  INVD0BWP12T30P140 U162 ( .I(n371), .ZN(n66) );
  INR3D1BWP12T30P140 U163 ( .A1(n337), .B1(dmaw_remaining[10]), .B2(
        dmaw_remaining[9]), .ZN(n369) );
  INVD0BWP12T30P140 U164 ( .I(n369), .ZN(n340) );
  NR3D0BWP12T30P140 U165 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[11]), 
        .A3(n340), .ZN(n32) );
  IND2D1BWP12T30P140 U166 ( .A1(dmaw_next), .B1(n31), .ZN(n68) );
  OAI21D0BWP12T30P140 U167 ( .A1(n32), .A2(n375), .B(n68), .ZN(n345) );
  INVD0BWP12T30P140 U168 ( .I(n32), .ZN(n374) );
  NR3D0BWP12T30P140 U169 ( .A1(dmaw_remaining[13]), .A2(n375), .A3(n374), .ZN(
        n356) );
  AOI21D0BWP12T30P140 U170 ( .A1(dmaw_remaining[13]), .A2(n345), .B(n356), 
        .ZN(n33) );
  OAI21D0BWP12T30P140 U171 ( .A1(n66), .A2(n502), .B(n33), .ZN(n277) );
  INVD0BWP12T30P140 U172 ( .I(dmar_remaining[0]), .ZN(n536) );
  AOI21D0BWP12T30P140 U173 ( .A1(dmar_next), .A2(n536), .B(n477), .ZN(n34) );
  AOI22D0BWP12T30P140 U174 ( .A1(dmar_remaining[1]), .A2(n34), .B1(n488), .B2(
        csr_di[3]), .ZN(n35) );
  OAI31D0BWP12T30P140 U175 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), 
        .A3(n486), .B(n35), .ZN(n243) );
  AOI21D0BWP12T30P140 U176 ( .A1(dmar_next), .A2(n364), .B(n477), .ZN(n36) );
  AOI22D0BWP12T30P140 U177 ( .A1(dmar_remaining[11]), .A2(n36), .B1(n488), 
        .B2(csr_di[13]), .ZN(n37) );
  OAI31D0BWP12T30P140 U178 ( .A1(dmar_remaining[11]), .A2(n486), .A3(n330), 
        .B(n37), .ZN(n233) );
  INVD0BWP12T30P140 U179 ( .I(dmaw_remaining[0]), .ZN(n349) );
  AOI21D0BWP12T30P140 U180 ( .A1(dmaw_next), .A2(n349), .B(n368), .ZN(n38) );
  AOI22D0BWP12T30P140 U181 ( .A1(dmaw_remaining[1]), .A2(n38), .B1(n371), .B2(
        csr_di[3]), .ZN(n39) );
  OAI31D0BWP12T30P140 U182 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(n375), .B(n39), .ZN(n289) );
  AOI21D0BWP12T30P140 U183 ( .A1(dmaw_next), .A2(n369), .B(n368), .ZN(n40) );
  AOI22D0BWP12T30P140 U184 ( .A1(dmaw_remaining[11]), .A2(n40), .B1(n371), 
        .B2(csr_di[13]), .ZN(n41) );
  OAI31D0BWP12T30P140 U185 ( .A1(dmaw_remaining[11]), .A2(n375), .A3(n340), 
        .B(n41), .ZN(n279) );
  AOI21D0BWP12T30P140 U186 ( .A1(dmar_next), .A2(n42), .B(n477), .ZN(n463) );
  AOI22D0BWP12T30P140 U187 ( .A1(dmar_remaining[3]), .A2(n463), .B1(n488), 
        .B2(csr_di[5]), .ZN(n43) );
  OAI31D0BWP12T30P140 U188 ( .A1(dmar_remaining[3]), .A2(n486), .A3(n344), .B(
        n43), .ZN(n241) );
  AOI21D0BWP12T30P140 U189 ( .A1(dmaw_next), .A2(n44), .B(n368), .ZN(n60) );
  AOI22D0BWP12T30P140 U190 ( .A1(dmaw_remaining[3]), .A2(n60), .B1(n371), .B2(
        csr_di[5]), .ZN(n45) );
  OAI31D0BWP12T30P140 U191 ( .A1(dmaw_remaining[3]), .A2(n375), .A3(n352), .B(
        n45), .ZN(n287) );
  AOI21D0BWP12T30P140 U192 ( .A1(dmaw_next), .A2(n46), .B(n368), .ZN(n63) );
  AOI22D0BWP12T30P140 U193 ( .A1(dmaw_remaining[7]), .A2(n63), .B1(n371), .B2(
        csr_di[9]), .ZN(n47) );
  OAI31D0BWP12T30P140 U194 ( .A1(dmaw_remaining[7]), .A2(n375), .A3(n335), .B(
        n47), .ZN(n283) );
  ND3D0BWP12T30P140 U195 ( .A1(n313), .A2(dmaw_addr[14]), .A3(dmaw_addr[13]), 
        .ZN(n75) );
  INVD0BWP12T30P140 U196 ( .I(dmaw_addr[16]), .ZN(n590) );
  INVD0BWP12T30P140 U197 ( .I(dmaw_addr[15]), .ZN(n424) );
  NR3D0BWP12T30P140 U198 ( .A1(n75), .A2(n590), .A3(n424), .ZN(n119) );
  ND2D0BWP12T30P140 U199 ( .A1(n382), .A2(n119), .ZN(n122) );
  OAI21D0BWP12T30P140 U200 ( .A1(n119), .A2(n510), .B(n381), .ZN(n48) );
  AOI22D0BWP12T30P140 U201 ( .A1(dmaw_addr[17]), .A2(n48), .B1(n430), .B2(
        csr_di[19]), .ZN(n49) );
  OAI21D0BWP12T30P140 U202 ( .A1(dmaw_addr[17]), .A2(n122), .B(n49), .ZN(n257)
         );
  ND3D0BWP12T30P140 U203 ( .A1(n119), .A2(dmaw_addr[18]), .A3(dmaw_addr[17]), 
        .ZN(n376) );
  INVD0BWP12T30P140 U204 ( .I(dmaw_addr[20]), .ZN(n596) );
  INVD0BWP12T30P140 U205 ( .I(dmaw_addr[19]), .ZN(n594) );
  NR3D0BWP12T30P140 U206 ( .A1(n376), .A2(n596), .A3(n594), .ZN(n123) );
  ND2D0BWP12T30P140 U207 ( .A1(n382), .A2(n123), .ZN(n126) );
  OAI21D0BWP12T30P140 U208 ( .A1(n123), .A2(n510), .B(n381), .ZN(n50) );
  AOI22D0BWP12T30P140 U209 ( .A1(dmaw_addr[21]), .A2(n50), .B1(n430), .B2(
        csr_di[23]), .ZN(n51) );
  OAI21D0BWP12T30P140 U210 ( .A1(dmaw_addr[21]), .A2(n126), .B(n51), .ZN(n253)
         );
  ND3D0BWP12T30P140 U211 ( .A1(n123), .A2(dmaw_addr[22]), .A3(dmaw_addr[21]), 
        .ZN(n378) );
  INVD0BWP12T30P140 U212 ( .I(dmaw_addr[24]), .ZN(n602) );
  INVD0BWP12T30P140 U213 ( .I(dmaw_addr[23]), .ZN(n600) );
  NR3D0BWP12T30P140 U214 ( .A1(n378), .A2(n602), .A3(n600), .ZN(n380) );
  ND2D0BWP12T30P140 U215 ( .A1(n382), .A2(n380), .ZN(n129) );
  OAI21D0BWP12T30P140 U216 ( .A1(n380), .A2(n510), .B(n381), .ZN(n52) );
  AOI22D0BWP12T30P140 U217 ( .A1(dmaw_addr[25]), .A2(n52), .B1(n611), .B2(
        csr_di[27]), .ZN(n53) );
  OAI21D0BWP12T30P140 U218 ( .A1(dmaw_addr[25]), .A2(n129), .B(n53), .ZN(n249)
         );
  ND3D0BWP12T30P140 U219 ( .A1(n140), .A2(dmar_addr[14]), .A3(dmar_addr[13]), 
        .ZN(n71) );
  INVD0BWP12T30P140 U220 ( .I(dmar_addr[16]), .ZN(n589) );
  INVD0BWP12T30P140 U221 ( .I(dmar_addr[15]), .ZN(n447) );
  NR3D0BWP12T30P140 U222 ( .A1(n71), .A2(n589), .A3(n447), .ZN(n102) );
  ND2D0BWP12T30P140 U223 ( .A1(n403), .A2(n102), .ZN(n105) );
  OAI21D0BWP12T30P140 U224 ( .A1(n102), .A2(n407), .B(n402), .ZN(n54) );
  AOI22D0BWP12T30P140 U225 ( .A1(dmar_addr[17]), .A2(n54), .B1(n616), .B2(
        csr_di[19]), .ZN(n55) );
  OAI21D0BWP12T30P140 U226 ( .A1(dmar_addr[17]), .A2(n105), .B(n55), .ZN(n211)
         );
  ND3D0BWP12T30P140 U227 ( .A1(n102), .A2(dmar_addr[18]), .A3(dmar_addr[17]), 
        .ZN(n395) );
  INVD0BWP12T30P140 U228 ( .I(dmar_addr[20]), .ZN(n595) );
  INVD0BWP12T30P140 U229 ( .I(dmar_addr[19]), .ZN(n593) );
  NR3D0BWP12T30P140 U230 ( .A1(n395), .A2(n595), .A3(n593), .ZN(n106) );
  ND2D0BWP12T30P140 U231 ( .A1(n403), .A2(n106), .ZN(n109) );
  OAI21D0BWP12T30P140 U232 ( .A1(n106), .A2(n407), .B(n402), .ZN(n56) );
  AOI22D0BWP12T30P140 U233 ( .A1(dmar_addr[21]), .A2(n56), .B1(n616), .B2(
        csr_di[23]), .ZN(n57) );
  OAI21D0BWP12T30P140 U234 ( .A1(dmar_addr[21]), .A2(n109), .B(n57), .ZN(n207)
         );
  ND3D0BWP12T30P140 U235 ( .A1(n106), .A2(dmar_addr[22]), .A3(dmar_addr[21]), 
        .ZN(n399) );
  INVD0BWP12T30P140 U236 ( .I(dmar_addr[24]), .ZN(n601) );
  INVD0BWP12T30P140 U237 ( .I(dmar_addr[23]), .ZN(n599) );
  NR3D0BWP12T30P140 U238 ( .A1(n399), .A2(n601), .A3(n599), .ZN(n401) );
  ND2D0BWP12T30P140 U239 ( .A1(n403), .A2(n401), .ZN(n112) );
  OAI21D0BWP12T30P140 U240 ( .A1(n401), .A2(n407), .B(n402), .ZN(n58) );
  AOI22D0BWP12T30P140 U241 ( .A1(dmar_addr[25]), .A2(n58), .B1(n616), .B2(
        csr_di[27]), .ZN(n59) );
  OAI21D0BWP12T30P140 U242 ( .A1(dmar_addr[25]), .A2(n112), .B(n59), .ZN(n203)
         );
  INVD0BWP12T30P140 U243 ( .I(csr_di[6]), .ZN(n499) );
  AOI32D0BWP12T30P140 U244 ( .A1(n346), .A2(dmaw_remaining[4]), .A3(
        dmaw_remaining[3]), .B1(n60), .B2(dmaw_remaining[4]), .ZN(n62) );
  OAI211D0BWP12T30P140 U245 ( .A1(n66), .A2(n499), .B(n62), .C(n61), .ZN(n286)
         );
  INVD0BWP12T30P140 U246 ( .I(csr_di[10]), .ZN(n515) );
  AOI32D0BWP12T30P140 U247 ( .A1(n346), .A2(dmaw_remaining[8]), .A3(
        dmaw_remaining[7]), .B1(n63), .B2(dmaw_remaining[8]), .ZN(n65) );
  OAI211D0BWP12T30P140 U248 ( .A1(n66), .A2(n515), .B(n65), .C(n64), .ZN(n282)
         );
  AOI22D0BWP12T30P140 U249 ( .A1(n346), .A2(n349), .B1(n371), .B2(csr_di[2]), 
        .ZN(n67) );
  OAI21D0BWP12T30P140 U250 ( .A1(n68), .A2(n349), .B(n67), .ZN(n290) );
  AOI21D0BWP12T30P140 U251 ( .A1(n398), .A2(n69), .B(n397), .ZN(n82) );
  OR2D0BWP12T30P140 U252 ( .A1(n69), .A2(n453), .Z(n85) );
  MAOI22D0BWP12T30P140 U253 ( .A1(csr_di[13]), .A2(n454), .B1(dmar_addr[11]), 
        .B2(n85), .ZN(n70) );
  OAI21D0BWP12T30P140 U254 ( .A1(n82), .A2(n86), .B(n70), .ZN(n217) );
  AOI21D0BWP12T30P140 U255 ( .A1(n398), .A2(n71), .B(n397), .ZN(n443) );
  IND2D1BWP12T30P140 U256 ( .A1(n71), .B1(n403), .ZN(n446) );
  MAOI22D0BWP12T30P140 U257 ( .A1(csr_di[17]), .A2(n454), .B1(dmar_addr[15]), 
        .B2(n446), .ZN(n72) );
  OAI21D0BWP12T30P140 U258 ( .A1(n443), .A2(n447), .B(n72), .ZN(n213) );
  AOI21D0BWP12T30P140 U259 ( .A1(n473), .A2(n73), .B(n472), .ZN(n77) );
  OR2D0BWP12T30P140 U260 ( .A1(n73), .A2(n435), .Z(n80) );
  MAOI22D0BWP12T30P140 U261 ( .A1(csr_di[13]), .A2(n611), .B1(dmaw_addr[11]), 
        .B2(n80), .ZN(n74) );
  OAI21D0BWP12T30P140 U262 ( .A1(n77), .A2(n81), .B(n74), .ZN(n263) );
  AOI21D0BWP12T30P140 U263 ( .A1(n473), .A2(n75), .B(n472), .ZN(n420) );
  IND2D1BWP12T30P140 U264 ( .A1(n75), .B1(n382), .ZN(n423) );
  MAOI22D0BWP12T30P140 U265 ( .A1(csr_di[17]), .A2(n611), .B1(dmaw_addr[15]), 
        .B2(n423), .ZN(n76) );
  OAI21D0BWP12T30P140 U266 ( .A1(n420), .A2(n424), .B(n76), .ZN(n259) );
  OAI21D0BWP12T30P140 U267 ( .A1(dmaw_addr[11]), .A2(n435), .B(n77), .ZN(n78)
         );
  AOI22D0BWP12T30P140 U268 ( .A1(dmaw_addr[12]), .A2(n78), .B1(n611), .B2(
        csr_di[14]), .ZN(n79) );
  OAI31D0BWP12T30P140 U269 ( .A1(dmaw_addr[12]), .A2(n81), .A3(n80), .B(n79), 
        .ZN(n262) );
  OAI21D0BWP12T30P140 U270 ( .A1(dmar_addr[11]), .A2(n453), .B(n82), .ZN(n83)
         );
  AOI22D0BWP12T30P140 U271 ( .A1(dmar_addr[12]), .A2(n83), .B1(n454), .B2(
        csr_di[14]), .ZN(n84) );
  OAI31D0BWP12T30P140 U272 ( .A1(dmar_addr[12]), .A2(n86), .A3(n85), .B(n84), 
        .ZN(n216) );
  AOI21D0BWP12T30P140 U273 ( .A1(n473), .A2(n87), .B(n472), .ZN(n390) );
  NR2D0BWP12T30P140 U274 ( .A1(n435), .A2(n87), .ZN(n392) );
  AOI22D0BWP12T30P140 U275 ( .A1(csr_di[5]), .A2(n430), .B1(n392), .B2(n89), 
        .ZN(n88) );
  OAI21D0BWP12T30P140 U276 ( .A1(n390), .A2(n89), .B(n88), .ZN(n271) );
  ND2D0BWP12T30P140 U277 ( .A1(n520), .A2(n519), .ZN(n526) );
  NR2D0BWP12T30P140 U278 ( .A1(n90), .A2(n526), .ZN(n92) );
  INVD0BWP12T30P140 U279 ( .I(csr_di[0]), .ZN(n459) );
  OAI21D0BWP12T30P140 U280 ( .A1(dmar_en), .A2(n92), .B(n621), .ZN(n91) );
  AOI21D0BWP12T30P140 U281 ( .A1(n92), .A2(n459), .B(n91), .ZN(n176) );
  AOI21D0BWP12T30P140 U282 ( .A1(n398), .A2(n93), .B(n397), .ZN(n385) );
  NR2D0BWP12T30P140 U283 ( .A1(n407), .A2(n93), .ZN(n387) );
  AOI22D0BWP12T30P140 U284 ( .A1(csr_di[9]), .A2(n616), .B1(n387), .B2(n95), 
        .ZN(n94) );
  OAI21D0BWP12T30P140 U285 ( .A1(n385), .A2(n95), .B(n94), .ZN(n221) );
  ND2D0BWP12T30P140 U286 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .ZN(n98) );
  AOI22D0BWP12T30P140 U287 ( .A1(dmaw_addr[2]), .A2(n96), .B1(n430), .B2(
        csr_di[4]), .ZN(n97) );
  OAI31D0BWP12T30P140 U288 ( .A1(dmaw_addr[2]), .A2(n510), .A3(n98), .B(n97), 
        .ZN(n272) );
  AOI21D0BWP12T30P140 U289 ( .A1(n398), .A2(n99), .B(n397), .ZN(n406) );
  NR2D0BWP12T30P140 U290 ( .A1(n453), .A2(n99), .ZN(n409) );
  AOI22D0BWP12T30P140 U291 ( .A1(csr_di[5]), .A2(n616), .B1(n409), .B2(n101), 
        .ZN(n100) );
  OAI21D0BWP12T30P140 U292 ( .A1(n406), .A2(n101), .B(n100), .ZN(n225) );
  INVD0BWP12T30P140 U293 ( .I(dmar_addr[17]), .ZN(n591) );
  AOI22D0BWP12T30P140 U294 ( .A1(dmar_addr[18]), .A2(n103), .B1(n616), .B2(
        csr_di[20]), .ZN(n104) );
  OAI31D0BWP12T30P140 U295 ( .A1(dmar_addr[18]), .A2(n591), .A3(n105), .B(n104), .ZN(n210) );
  INVD0BWP12T30P140 U296 ( .I(dmar_addr[21]), .ZN(n597) );
  AOI22D0BWP12T30P140 U297 ( .A1(dmar_addr[22]), .A2(n107), .B1(n616), .B2(
        csr_di[24]), .ZN(n108) );
  OAI31D0BWP12T30P140 U298 ( .A1(dmar_addr[22]), .A2(n597), .A3(n109), .B(n108), .ZN(n206) );
  INVD0BWP12T30P140 U299 ( .I(dmar_addr[25]), .ZN(n603) );
  AOI22D0BWP12T30P140 U300 ( .A1(dmar_addr[26]), .A2(n110), .B1(n454), .B2(
        csr_di[28]), .ZN(n111) );
  OAI31D0BWP12T30P140 U301 ( .A1(dmar_addr[26]), .A2(n603), .A3(n112), .B(n111), .ZN(n202) );
  ND2D0BWP12T30P140 U302 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .ZN(n115) );
  AOI22D0BWP12T30P140 U303 ( .A1(dmar_addr[2]), .A2(n113), .B1(n454), .B2(
        csr_di[4]), .ZN(n114) );
  OAI31D0BWP12T30P140 U304 ( .A1(dmar_addr[2]), .A2(n407), .A3(n115), .B(n114), 
        .ZN(n226) );
  NR2D0BWP12T30P140 U305 ( .A1(n116), .A2(n526), .ZN(n118) );
  OAI21D0BWP12T30P140 U306 ( .A1(dmaw_en), .A2(n118), .B(n621), .ZN(n117) );
  AOI21D0BWP12T30P140 U307 ( .A1(n118), .A2(n459), .B(n117), .ZN(n177) );
  INVD0BWP12T30P140 U308 ( .I(dmaw_addr[17]), .ZN(n592) );
  AOI22D0BWP12T30P140 U309 ( .A1(dmaw_addr[18]), .A2(n120), .B1(n430), .B2(
        csr_di[20]), .ZN(n121) );
  OAI31D0BWP12T30P140 U310 ( .A1(dmaw_addr[18]), .A2(n592), .A3(n122), .B(n121), .ZN(n256) );
  INVD0BWP12T30P140 U311 ( .I(dmaw_addr[21]), .ZN(n598) );
  AOI22D0BWP12T30P140 U312 ( .A1(dmaw_addr[22]), .A2(n124), .B1(n611), .B2(
        csr_di[24]), .ZN(n125) );
  OAI31D0BWP12T30P140 U313 ( .A1(dmaw_addr[22]), .A2(n598), .A3(n126), .B(n125), .ZN(n252) );
  INVD0BWP12T30P140 U314 ( .I(dmaw_addr[25]), .ZN(n604) );
  AOI22D0BWP12T30P140 U315 ( .A1(dmaw_addr[26]), .A2(n127), .B1(n430), .B2(
        csr_di[28]), .ZN(n128) );
  OAI31D0BWP12T30P140 U316 ( .A1(dmaw_addr[26]), .A2(n604), .A3(n129), .B(n128), .ZN(n248) );
  INVD0BWP12T30P140 U317 ( .I(dmar_addr[5]), .ZN(n134) );
  AOI32D0BWP12T30P140 U318 ( .A1(n130), .A2(n402), .A3(dmar_addr[5]), .B1(n453), .B2(n402), .ZN(n131) );
  AOI22D0BWP12T30P140 U319 ( .A1(dmar_addr[6]), .A2(n131), .B1(n454), .B2(
        csr_di[8]), .ZN(n132) );
  OAI31D0BWP12T30P140 U320 ( .A1(dmar_addr[6]), .A2(n134), .A3(n133), .B(n132), 
        .ZN(n222) );
  INVD0BWP12T30P140 U321 ( .I(dmar_addr[9]), .ZN(n139) );
  AOI32D0BWP12T30P140 U322 ( .A1(n135), .A2(n2), .A3(dmar_addr[9]), .B1(n453), 
        .B2(n402), .ZN(n136) );
  AOI22D0BWP12T30P140 U323 ( .A1(dmar_addr[10]), .A2(n136), .B1(n454), .B2(
        csr_di[12]), .ZN(n137) );
  OAI31D0BWP12T30P140 U324 ( .A1(dmar_addr[10]), .A2(n139), .A3(n138), .B(n137), .ZN(n218) );
  INVD0BWP12T30P140 U325 ( .I(dmar_addr[13]), .ZN(n144) );
  AOI32D0BWP12T30P140 U326 ( .A1(n140), .A2(n2), .A3(dmar_addr[13]), .B1(n407), 
        .B2(n402), .ZN(n141) );
  AOI22D0BWP12T30P140 U327 ( .A1(dmar_addr[14]), .A2(n141), .B1(n454), .B2(
        csr_di[16]), .ZN(n142) );
  OAI31D0BWP12T30P140 U328 ( .A1(dmar_addr[14]), .A2(n144), .A3(n143), .B(n142), .ZN(n214) );
  INVD0BWP12T30P140 U329 ( .I(dmaw_addr[5]), .ZN(n309) );
  ND2D0BWP12T30P140 U330 ( .A1(n382), .A2(n318), .ZN(n321) );
  AOI32D0BWP12T30P140 U331 ( .A1(n318), .A2(n381), .A3(dmaw_addr[5]), .B1(n435), .B2(n381), .ZN(n307) );
  AOI22D0BWP12T30P140 U332 ( .A1(dmaw_addr[6]), .A2(n307), .B1(n430), .B2(
        csr_di[8]), .ZN(n308) );
  OAI31D0BWP12T30P140 U333 ( .A1(dmaw_addr[6]), .A2(n309), .A3(n321), .B(n308), 
        .ZN(n268) );
  INVD0BWP12T30P140 U334 ( .I(dmaw_addr[9]), .ZN(n312) );
  ND2D0BWP12T30P140 U335 ( .A1(n382), .A2(n322), .ZN(n325) );
  AOI32D0BWP12T30P140 U336 ( .A1(n322), .A2(n3), .A3(dmaw_addr[9]), .B1(n435), 
        .B2(n381), .ZN(n310) );
  AOI22D0BWP12T30P140 U337 ( .A1(dmaw_addr[10]), .A2(n310), .B1(n611), .B2(
        csr_di[12]), .ZN(n311) );
  OAI31D0BWP12T30P140 U338 ( .A1(dmaw_addr[10]), .A2(n312), .A3(n325), .B(n311), .ZN(n264) );
  INVD0BWP12T30P140 U339 ( .I(dmaw_addr[13]), .ZN(n317) );
  AOI32D0BWP12T30P140 U340 ( .A1(n313), .A2(n3), .A3(dmaw_addr[13]), .B1(n510), 
        .B2(n381), .ZN(n314) );
  AOI22D0BWP12T30P140 U341 ( .A1(dmaw_addr[14]), .A2(n314), .B1(n430), .B2(
        csr_di[16]), .ZN(n315) );
  OAI31D0BWP12T30P140 U342 ( .A1(dmaw_addr[14]), .A2(n317), .A3(n316), .B(n315), .ZN(n260) );
  OAI21D0BWP12T30P140 U343 ( .A1(n318), .A2(n435), .B(n381), .ZN(n319) );
  AOI22D0BWP12T30P140 U344 ( .A1(dmaw_addr[5]), .A2(n319), .B1(n430), .B2(
        csr_di[7]), .ZN(n320) );
  OAI21D0BWP12T30P140 U345 ( .A1(dmaw_addr[5]), .A2(n321), .B(n320), .ZN(n269)
         );
  OAI21D0BWP12T30P140 U346 ( .A1(n322), .A2(n510), .B(n381), .ZN(n323) );
  AOI22D0BWP12T30P140 U347 ( .A1(dmaw_addr[9]), .A2(n323), .B1(n430), .B2(
        csr_di[11]), .ZN(n324) );
  OAI21D0BWP12T30P140 U348 ( .A1(dmaw_addr[9]), .A2(n325), .B(n324), .ZN(n265)
         );
  INVD0BWP12T30P140 U349 ( .I(dmar_remaining[9]), .ZN(n326) );
  AOI31D0BWP12T30P140 U350 ( .A1(dmar_next), .A2(n327), .A3(n326), .B(n477), 
        .ZN(n328) );
  AOI22D0BWP12T30P140 U351 ( .A1(dmar_remaining[10]), .A2(n328), .B1(n488), 
        .B2(csr_di[12]), .ZN(n329) );
  OAI21D0BWP12T30P140 U352 ( .A1(n486), .A2(n330), .B(n329), .ZN(n234) );
  INVD0BWP12T30P140 U353 ( .I(dmaw_remaining[5]), .ZN(n331) );
  AOI31D0BWP12T30P140 U354 ( .A1(dmaw_next), .A2(n332), .A3(n331), .B(n368), 
        .ZN(n333) );
  AOI22D0BWP12T30P140 U355 ( .A1(dmaw_remaining[6]), .A2(n333), .B1(n371), 
        .B2(csr_di[8]), .ZN(n334) );
  OAI21D0BWP12T30P140 U356 ( .A1(n375), .A2(n335), .B(n334), .ZN(n284) );
  INVD0BWP12T30P140 U357 ( .I(dmaw_remaining[9]), .ZN(n336) );
  AOI31D0BWP12T30P140 U358 ( .A1(dmaw_next), .A2(n337), .A3(n336), .B(n368), 
        .ZN(n338) );
  AOI22D0BWP12T30P140 U359 ( .A1(dmaw_remaining[10]), .A2(n338), .B1(n371), 
        .B2(csr_di[12]), .ZN(n339) );
  OAI21D0BWP12T30P140 U360 ( .A1(n375), .A2(n340), .B(n339), .ZN(n280) );
  INVD0BWP12T30P140 U361 ( .I(dmar_remaining[1]), .ZN(n341) );
  AOI31D0BWP12T30P140 U362 ( .A1(dmar_next), .A2(n536), .A3(n341), .B(n477), 
        .ZN(n342) );
  AOI22D0BWP12T30P140 U363 ( .A1(dmar_remaining[2]), .A2(n342), .B1(n488), 
        .B2(csr_di[4]), .ZN(n343) );
  OAI21D0BWP12T30P140 U364 ( .A1(n486), .A2(n344), .B(n343), .ZN(n242) );
  INVD0BWP12T30P140 U365 ( .I(dmaw_remaining[14]), .ZN(n358) );
  AOI21D0BWP12T30P140 U366 ( .A1(n346), .A2(dmaw_remaining[13]), .B(n345), 
        .ZN(n359) );
  OAI21D0BWP12T30P140 U367 ( .A1(n375), .A2(n358), .B(n359), .ZN(n347) );
  NR4D0BWP12T30P140 U368 ( .A1(dmaw_remaining[14]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[15]), .A4(n374), .ZN(n619) );
  AO222D0BWP12T30P140 U369 ( .A1(n347), .A2(dmaw_remaining[15]), .B1(
        csr_di[17]), .B2(n371), .C1(n346), .C2(n619), .Z(n275) );
  INVD0BWP12T30P140 U370 ( .I(dmaw_remaining[1]), .ZN(n348) );
  AOI31D0BWP12T30P140 U371 ( .A1(dmaw_next), .A2(n349), .A3(n348), .B(n368), 
        .ZN(n350) );
  AOI22D0BWP12T30P140 U372 ( .A1(dmaw_remaining[2]), .A2(n350), .B1(n371), 
        .B2(csr_di[4]), .ZN(n351) );
  OAI21D0BWP12T30P140 U373 ( .A1(n375), .A2(n352), .B(n351), .ZN(n288) );
  AOI21D0BWP12T30P140 U374 ( .A1(n489), .A2(dmar_remaining[13]), .B(n353), 
        .ZN(n484) );
  INVD0BWP12T30P140 U375 ( .I(dmar_remaining[14]), .ZN(n485) );
  AOI22D0BWP12T30P140 U376 ( .A1(csr_di[16]), .A2(n488), .B1(n354), .B2(n485), 
        .ZN(n355) );
  OAI21D0BWP12T30P140 U377 ( .A1(n484), .A2(n485), .B(n355), .ZN(n230) );
  AOI22D0BWP12T30P140 U378 ( .A1(csr_di[16]), .A2(n371), .B1(n356), .B2(n358), 
        .ZN(n357) );
  OAI21D0BWP12T30P140 U379 ( .A1(n359), .A2(n358), .B(n357), .ZN(n276) );
  ND2D0BWP12T30P140 U380 ( .A1(n489), .A2(n479), .ZN(n465) );
  AOI21D0BWP12T30P140 U381 ( .A1(dmar_next), .A2(n479), .B(n477), .ZN(n360) );
  AOI22D0BWP12T30P140 U382 ( .A1(dmar_remaining[5]), .A2(n360), .B1(n488), 
        .B2(csr_di[7]), .ZN(n361) );
  OAI21D0BWP12T30P140 U383 ( .A1(dmar_remaining[5]), .A2(n465), .B(n361), .ZN(
        n239) );
  AOI22D0BWP12T30P140 U384 ( .A1(n489), .A2(n536), .B1(n488), .B2(csr_di[2]), 
        .ZN(n362) );
  OAI21D0BWP12T30P140 U385 ( .A1(n363), .A2(n536), .B(n362), .ZN(n244) );
  INVD0BWP12T30P140 U386 ( .I(dmar_remaining[11]), .ZN(n365) );
  AOI31D0BWP12T30P140 U387 ( .A1(dmar_next), .A2(n365), .A3(n364), .B(n477), 
        .ZN(n366) );
  AOI22D0BWP12T30P140 U388 ( .A1(dmar_remaining[12]), .A2(n366), .B1(n488), 
        .B2(csr_di[14]), .ZN(n367) );
  OAI21D0BWP12T30P140 U389 ( .A1(n486), .A2(n487), .B(n367), .ZN(n232) );
  INVD0BWP12T30P140 U390 ( .I(dmaw_remaining[11]), .ZN(n370) );
  AOI31D0BWP12T30P140 U391 ( .A1(dmaw_next), .A2(n370), .A3(n369), .B(n368), 
        .ZN(n372) );
  AOI22D0BWP12T30P140 U392 ( .A1(dmaw_remaining[12]), .A2(n372), .B1(n371), 
        .B2(csr_di[14]), .ZN(n373) );
  OAI21D0BWP12T30P140 U393 ( .A1(n375), .A2(n374), .B(n373), .ZN(n278) );
  AOI21D0BWP12T30P140 U394 ( .A1(n473), .A2(n376), .B(n472), .ZN(n425) );
  IND2D1BWP12T30P140 U395 ( .A1(n376), .B1(n382), .ZN(n428) );
  MAOI22D0BWP12T30P140 U396 ( .A1(csr_di[21]), .A2(n430), .B1(dmaw_addr[19]), 
        .B2(n428), .ZN(n377) );
  OAI21D0BWP12T30P140 U397 ( .A1(n425), .A2(n594), .B(n377), .ZN(n255) );
  AOI21D0BWP12T30P140 U398 ( .A1(n473), .A2(n378), .B(n472), .ZN(n429) );
  IND2D1BWP12T30P140 U399 ( .A1(n378), .B1(n382), .ZN(n433) );
  MAOI22D0BWP12T30P140 U400 ( .A1(csr_di[25]), .A2(n611), .B1(dmaw_addr[23]), 
        .B2(n433), .ZN(n379) );
  OAI21D0BWP12T30P140 U401 ( .A1(n429), .A2(n600), .B(n379), .ZN(n251) );
  INVD0BWP12T30P140 U402 ( .I(dmaw_addr[27]), .ZN(n609) );
  ND3D0BWP12T30P140 U403 ( .A1(n380), .A2(dmaw_addr[26]), .A3(dmaw_addr[25]), 
        .ZN(n383) );
  IOA21D0BWP12T30P140 U404 ( .A1(n383), .A2(n382), .B(n381), .ZN(n613) );
  AOI21D0BWP12T30P140 U405 ( .A1(n382), .A2(n609), .B(n613), .ZN(n434) );
  INVD0BWP12T30P140 U406 ( .I(dmaw_addr[28]), .ZN(n608) );
  NR2D0BWP12T30P140 U407 ( .A1(n510), .A2(n383), .ZN(n610) );
  ND2D0BWP12T30P140 U408 ( .A1(dmaw_addr[27]), .A2(n610), .ZN(n438) );
  MAOI22D0BWP12T30P140 U409 ( .A1(csr_di[30]), .A2(n430), .B1(dmaw_addr[28]), 
        .B2(n438), .ZN(n384) );
  OAI21D0BWP12T30P140 U410 ( .A1(n434), .A2(n608), .B(n384), .ZN(n246) );
  OAI21D0BWP12T30P140 U411 ( .A1(dmar_addr[7]), .A2(n407), .B(n385), .ZN(n386)
         );
  AOI32D0BWP12T30P140 U412 ( .A1(dmar_addr[7]), .A2(n388), .A3(n387), .B1(
        dmar_addr[8]), .B2(n386), .ZN(n389) );
  OAI21D0BWP12T30P140 U413 ( .A1(n412), .A2(n515), .B(n389), .ZN(n220) );
  OAI21D0BWP12T30P140 U414 ( .A1(dmaw_addr[3]), .A2(n510), .B(n390), .ZN(n391)
         );
  AOI32D0BWP12T30P140 U415 ( .A1(dmaw_addr[3]), .A2(n393), .A3(n392), .B1(
        dmaw_addr[4]), .B2(n391), .ZN(n394) );
  OAI21D0BWP12T30P140 U416 ( .A1(n516), .A2(n499), .B(n394), .ZN(n270) );
  AOI21D0BWP12T30P140 U417 ( .A1(n398), .A2(n395), .B(n397), .ZN(n448) );
  IND2D1BWP12T30P140 U418 ( .A1(n395), .B1(n403), .ZN(n451) );
  MAOI22D0BWP12T30P140 U419 ( .A1(csr_di[21]), .A2(n454), .B1(dmar_addr[19]), 
        .B2(n451), .ZN(n396) );
  OAI21D0BWP12T30P140 U420 ( .A1(n448), .A2(n593), .B(n396), .ZN(n209) );
  AOI21D0BWP12T30P140 U421 ( .A1(n398), .A2(n399), .B(n397), .ZN(n452) );
  IND2D1BWP12T30P140 U422 ( .A1(n399), .B1(n403), .ZN(n457) );
  MAOI22D0BWP12T30P140 U423 ( .A1(csr_di[25]), .A2(n616), .B1(dmar_addr[23]), 
        .B2(n457), .ZN(n400) );
  OAI21D0BWP12T30P140 U424 ( .A1(n452), .A2(n599), .B(n400), .ZN(n205) );
  INVD0BWP12T30P140 U425 ( .I(dmar_addr[27]), .ZN(n614) );
  ND3D0BWP12T30P140 U426 ( .A1(n401), .A2(dmar_addr[26]), .A3(dmar_addr[25]), 
        .ZN(n404) );
  IOA21D0BWP12T30P140 U427 ( .A1(n404), .A2(n403), .B(n402), .ZN(n618) );
  AOI21D0BWP12T30P140 U428 ( .A1(n403), .A2(n614), .B(n618), .ZN(n416) );
  INVD0BWP12T30P140 U429 ( .I(dmar_addr[28]), .ZN(n606) );
  NR2D0BWP12T30P140 U430 ( .A1(n407), .A2(n404), .ZN(n615) );
  ND2D0BWP12T30P140 U431 ( .A1(dmar_addr[27]), .A2(n615), .ZN(n419) );
  MAOI22D0BWP12T30P140 U432 ( .A1(csr_di[30]), .A2(n616), .B1(dmar_addr[28]), 
        .B2(n419), .ZN(n405) );
  OAI21D0BWP12T30P140 U433 ( .A1(n416), .A2(n606), .B(n405), .ZN(n200) );
  OAI21D0BWP12T30P140 U434 ( .A1(dmar_addr[3]), .A2(n407), .B(n406), .ZN(n408)
         );
  AOI32D0BWP12T30P140 U435 ( .A1(dmar_addr[3]), .A2(n410), .A3(n409), .B1(
        dmar_addr[4]), .B2(n408), .ZN(n411) );
  OAI21D0BWP12T30P140 U436 ( .A1(n412), .A2(n499), .B(n411), .ZN(n224) );
  NR2D0BWP12T30P140 U437 ( .A1(csr_a[2]), .A2(csr_a[3]), .ZN(n518) );
  ND2D0BWP12T30P140 U438 ( .A1(n460), .A2(n518), .ZN(n413) );
  NR2D0BWP12T30P140 U439 ( .A1(n413), .A2(n526), .ZN(n496) );
  INVD0BWP12T30P140 U440 ( .I(n496), .ZN(n492) );
  OA221D0BWP12T30P140 U441 ( .A1(n492), .A2(csr_di[1]), .B1(n496), .B2(
        request_write), .C(n621), .Z(n158) );
  AOI21D0BWP12T30P140 U442 ( .A1(dmar_next), .A2(n414), .B(n477), .ZN(n466) );
  AOI22D0BWP12T30P140 U443 ( .A1(dmar_remaining[7]), .A2(n466), .B1(n488), 
        .B2(csr_di[9]), .ZN(n415) );
  OAI31D0BWP12T30P140 U444 ( .A1(dmar_remaining[7]), .A2(n486), .A3(n482), .B(
        n415), .ZN(n237) );
  OAI21D0BWP12T30P140 U445 ( .A1(dmar_addr[28]), .A2(n453), .B(n416), .ZN(n417) );
  AOI22D0BWP12T30P140 U446 ( .A1(csr_di[31]), .A2(n616), .B1(dmar_addr[29]), 
        .B2(n417), .ZN(n418) );
  OAI31D0BWP12T30P140 U447 ( .A1(dmar_addr[29]), .A2(n606), .A3(n419), .B(n418), .ZN(n199) );
  OAI21D0BWP12T30P140 U448 ( .A1(dmaw_addr[15]), .A2(n435), .B(n420), .ZN(n421) );
  AOI22D0BWP12T30P140 U449 ( .A1(dmaw_addr[16]), .A2(n421), .B1(n611), .B2(
        csr_di[18]), .ZN(n422) );
  OAI31D0BWP12T30P140 U450 ( .A1(dmaw_addr[16]), .A2(n424), .A3(n423), .B(n422), .ZN(n258) );
  OAI21D0BWP12T30P140 U451 ( .A1(dmaw_addr[19]), .A2(n435), .B(n425), .ZN(n426) );
  AOI22D0BWP12T30P140 U452 ( .A1(dmaw_addr[20]), .A2(n426), .B1(n611), .B2(
        csr_di[22]), .ZN(n427) );
  OAI31D0BWP12T30P140 U453 ( .A1(dmaw_addr[20]), .A2(n594), .A3(n428), .B(n427), .ZN(n254) );
  OAI21D0BWP12T30P140 U454 ( .A1(dmaw_addr[23]), .A2(n435), .B(n429), .ZN(n431) );
  AOI22D0BWP12T30P140 U455 ( .A1(dmaw_addr[24]), .A2(n431), .B1(n430), .B2(
        csr_di[26]), .ZN(n432) );
  OAI31D0BWP12T30P140 U456 ( .A1(dmaw_addr[24]), .A2(n600), .A3(n433), .B(n432), .ZN(n250) );
  OAI21D0BWP12T30P140 U457 ( .A1(dmaw_addr[28]), .A2(n435), .B(n434), .ZN(n436) );
  AOI22D0BWP12T30P140 U458 ( .A1(n611), .A2(csr_di[31]), .B1(dmaw_addr[29]), 
        .B2(n436), .ZN(n437) );
  OAI31D0BWP12T30P140 U459 ( .A1(dmaw_addr[29]), .A2(n608), .A3(n438), .B(n437), .ZN(n245) );
  ND2D0BWP12T30P140 U460 ( .A1(n439), .A2(n621), .ZN(n532) );
  NR2D0BWP12T30P140 U461 ( .A1(n442), .A2(n532), .ZN(n440) );
  ND2D0BWP12T30P140 U462 ( .A1(n530), .A2(n440), .ZN(n607) );
  INVD0BWP12T30P140 U463 ( .I(n607), .ZN(n627) );
  INVD0BWP12T30P140 U464 ( .I(n532), .ZN(n529) );
  ND2D0BWP12T30P140 U465 ( .A1(n535), .A2(n529), .ZN(n441) );
  NR2D0BWP12T30P140 U466 ( .A1(n442), .A2(n441), .ZN(n626) );
  AO22D0BWP12T30P140 U467 ( .A1(dmaw_addr[29]), .A2(n627), .B1(dmar_addr[29]), 
        .B2(n1), .Z(N587) );
  OAI21D0BWP12T30P140 U468 ( .A1(dmar_addr[15]), .A2(n453), .B(n443), .ZN(n444) );
  AOI22D0BWP12T30P140 U469 ( .A1(dmar_addr[16]), .A2(n444), .B1(n616), .B2(
        csr_di[18]), .ZN(n445) );
  OAI31D0BWP12T30P140 U470 ( .A1(dmar_addr[16]), .A2(n447), .A3(n446), .B(n445), .ZN(n212) );
  OAI21D0BWP12T30P140 U471 ( .A1(dmar_addr[19]), .A2(n453), .B(n448), .ZN(n449) );
  AOI22D0BWP12T30P140 U472 ( .A1(dmar_addr[20]), .A2(n449), .B1(n616), .B2(
        csr_di[22]), .ZN(n450) );
  OAI31D0BWP12T30P140 U473 ( .A1(dmar_addr[20]), .A2(n593), .A3(n451), .B(n450), .ZN(n208) );
  OAI21D0BWP12T30P140 U474 ( .A1(dmar_addr[23]), .A2(n453), .B(n452), .ZN(n455) );
  AOI22D0BWP12T30P140 U475 ( .A1(dmar_addr[24]), .A2(n455), .B1(n454), .B2(
        csr_di[26]), .ZN(n456) );
  OAI31D0BWP12T30P140 U476 ( .A1(dmar_addr[24]), .A2(n599), .A3(n457), .B(n456), .ZN(n204) );
  AOI31D0BWP12T30P140 U477 ( .A1(n460), .A2(n458), .A3(n518), .B(n632), .ZN(
        n461) );
  INVD0BWP12T30P140 U478 ( .I(n461), .ZN(n500) );
  ND2D0BWP12T30P140 U479 ( .A1(n621), .A2(n500), .ZN(n501) );
  INVD0BWP12T30P140 U480 ( .I(n501), .ZN(n462) );
  AO22D0BWP12T30P140 U481 ( .A1(n462), .A2(csr_di[1]), .B1(n461), .B2(
        request_data[1]), .Z(n157) );
  AO22D0BWP12T30P140 U482 ( .A1(csr_di[7]), .A2(n462), .B1(n461), .B2(
        request_data[7]), .Z(n196) );
  AO22D0BWP12T30P140 U483 ( .A1(csr_di[8]), .A2(n462), .B1(n461), .B2(
        request_data[8]), .Z(n194) );
  AO22D0BWP12T30P140 U484 ( .A1(csr_di[9]), .A2(n462), .B1(n461), .B2(
        request_data[9]), .Z(n192) );
  AO22D0BWP12T30P140 U485 ( .A1(csr_di[11]), .A2(n462), .B1(n461), .B2(
        request_data[11]), .Z(n188) );
  AO22D0BWP12T30P140 U486 ( .A1(csr_di[12]), .A2(n462), .B1(n461), .B2(
        request_data[12]), .Z(n186) );
  AO22D0BWP12T30P140 U487 ( .A1(csr_di[13]), .A2(n462), .B1(n461), .B2(
        request_data[13]), .Z(n184) );
  AO22D0BWP12T30P140 U488 ( .A1(csr_di[14]), .A2(n462), .B1(n461), .B2(
        request_data[14]), .Z(n182) );
  MOAI22D0BWP12T30P140 U489 ( .A1(n501), .A2(n459), .B1(n461), .B2(
        request_data[0]), .ZN(n175) );
  AO22D0BWP12T30P140 U490 ( .A1(csr_di[3]), .A2(n462), .B1(request_data[3]), 
        .B2(n461), .Z(n169) );
  AO22D0BWP12T30P140 U491 ( .A1(csr_di[4]), .A2(n462), .B1(request_data[4]), 
        .B2(n461), .Z(n166) );
  AO22D0BWP12T30P140 U492 ( .A1(csr_di[5]), .A2(n462), .B1(request_data[5]), 
        .B2(n461), .Z(n163) );
  AOI31D0BWP12T30P140 U493 ( .A1(n517), .A2(n460), .A3(n518), .B(n632), .ZN(
        n470) );
  NR2D0BWP12T30P140 U494 ( .A1(n632), .A2(n470), .ZN(n471) );
  AO22D0BWP12T30P140 U495 ( .A1(csr_di[3]), .A2(n471), .B1(request_addr[3]), 
        .B2(n470), .Z(n170) );
  AO22D0BWP12T30P140 U496 ( .A1(csr_di[4]), .A2(n471), .B1(request_addr[4]), 
        .B2(n470), .Z(n167) );
  AO22D0BWP12T30P140 U497 ( .A1(csr_di[5]), .A2(n471), .B1(request_addr[5]), 
        .B2(n470), .Z(n164) );
  AO22D0BWP12T30P140 U498 ( .A1(csr_di[6]), .A2(n471), .B1(request_addr[6]), 
        .B2(n470), .Z(n161) );
  AO22D0BWP12T30P140 U499 ( .A1(csr_di[2]), .A2(n462), .B1(request_data[2]), 
        .B2(n461), .Z(n172) );
  AO22D0BWP12T30P140 U500 ( .A1(csr_di[2]), .A2(n471), .B1(request_addr[2]), 
        .B2(n470), .Z(n173) );
  AOI32D0BWP12T30P140 U501 ( .A1(n489), .A2(dmar_remaining[4]), .A3(
        dmar_remaining[3]), .B1(n463), .B2(dmar_remaining[4]), .ZN(n464) );
  OAI211D0BWP12T30P140 U502 ( .A1(n499), .A2(n469), .B(n465), .C(n464), .ZN(
        n240) );
  AOI32D0BWP12T30P140 U503 ( .A1(n489), .A2(dmar_remaining[8]), .A3(
        dmar_remaining[7]), .B1(n466), .B2(dmar_remaining[8]), .ZN(n467) );
  OAI211D0BWP12T30P140 U504 ( .A1(n515), .A2(n469), .B(n468), .C(n467), .ZN(
        n236) );
  AO22D0BWP12T30P140 U505 ( .A1(csr_di[0]), .A2(n471), .B1(request_addr[0]), 
        .B2(n470), .Z(n178) );
  AO22D0BWP12T30P140 U506 ( .A1(csr_di[1]), .A2(n471), .B1(request_addr[1]), 
        .B2(n470), .Z(n155) );
  AOI21D0BWP12T30P140 U507 ( .A1(n473), .A2(n474), .B(n472), .ZN(n509) );
  NR2D0BWP12T30P140 U508 ( .A1(n510), .A2(n474), .ZN(n512) );
  AOI22D0BWP12T30P140 U509 ( .A1(csr_di[9]), .A2(n611), .B1(n512), .B2(n476), 
        .ZN(n475) );
  OAI21D0BWP12T30P140 U510 ( .A1(n509), .A2(n476), .B(n475), .ZN(n267) );
  INVD0BWP12T30P140 U511 ( .I(dmar_remaining[5]), .ZN(n478) );
  AOI31D0BWP12T30P140 U512 ( .A1(dmar_next), .A2(n479), .A3(n478), .B(n477), 
        .ZN(n480) );
  AOI22D0BWP12T30P140 U513 ( .A1(dmar_remaining[6]), .A2(n480), .B1(n488), 
        .B2(csr_di[8]), .ZN(n481) );
  OAI21D0BWP12T30P140 U514 ( .A1(n486), .A2(n482), .B(n481), .ZN(n238) );
  ND4D0BWP12T30P140 U515 ( .A1(up_addr_valid), .A2(up_frame_valid), .A3(
        up_data_valid), .A4(up_en), .ZN(n483) );
  INR3D1BWP12T30P140 U516 ( .A1(up_next_frame), .B1(n632), .B2(n483), .ZN(N714) );
  CKMUX2D0BWP12T30P140 U517 ( .I0(reply_data[0]), .I1(up_data[4]), .S(N714), 
        .Z(n306) );
  CKMUX2D0BWP12T30P140 U518 ( .I0(reply_data[1]), .I1(up_data[5]), .S(N714), 
        .Z(n291) );
  CKMUX2D0BWP12T30P140 U519 ( .I0(reply_data[3]), .I1(up_data[7]), .S(N714), 
        .Z(n293) );
  CKMUX2D0BWP12T30P140 U520 ( .I0(reply_data[4]), .I1(up_data[8]), .S(N714), 
        .Z(n294) );
  CKMUX2D0BWP12T30P140 U521 ( .I0(reply_data[5]), .I1(up_data[9]), .S(N714), 
        .Z(n295) );
  CKMUX2D0BWP12T30P140 U522 ( .I0(reply_data[6]), .I1(up_data[10]), .S(N714), 
        .Z(n296) );
  CKMUX2D0BWP12T30P140 U523 ( .I0(reply_data[7]), .I1(up_data[11]), .S(N714), 
        .Z(n297) );
  CKMUX2D0BWP12T30P140 U524 ( .I0(reply_data[8]), .I1(up_data[12]), .S(N714), 
        .Z(n298) );
  CKMUX2D0BWP12T30P140 U525 ( .I0(reply_data[9]), .I1(up_data[13]), .S(N714), 
        .Z(n299) );
  CKMUX2D0BWP12T30P140 U526 ( .I0(reply_data[10]), .I1(up_data[14]), .S(N714), 
        .Z(n300) );
  CKMUX2D0BWP12T30P140 U527 ( .I0(reply_data[11]), .I1(up_data[15]), .S(N714), 
        .Z(n301) );
  CKMUX2D0BWP12T30P140 U528 ( .I0(reply_data[12]), .I1(up_data[16]), .S(N714), 
        .Z(n302) );
  CKMUX2D0BWP12T30P140 U529 ( .I0(reply_data[13]), .I1(up_data[17]), .S(N714), 
        .Z(n303) );
  CKMUX2D0BWP12T30P140 U530 ( .I0(reply_data[14]), .I1(up_data[18]), .S(N714), 
        .Z(n304) );
  CKMUX2D0BWP12T30P140 U531 ( .I0(reply_data[15]), .I1(up_data[19]), .S(N714), 
        .Z(n305) );
  CKMUX2D0BWP12T30P140 U532 ( .I0(reply_data[2]), .I1(up_data[6]), .S(N714), 
        .Z(n292) );
  OAI21D0BWP12T30P140 U533 ( .A1(n486), .A2(n485), .B(n484), .ZN(n490) );
  NR4D0BWP12T30P140 U534 ( .A1(dmar_remaining[14]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[15]), .A4(n487), .ZN(n620) );
  AO222D0BWP12T30P140 U535 ( .A1(n490), .A2(dmar_remaining[15]), .B1(n489), 
        .B2(n620), .C1(csr_di[17]), .C2(n488), .Z(n229) );
  INVD0BWP12T30P140 U536 ( .I(request_en), .ZN(n495) );
  CKBD0BWP12T30P140 U537 ( .I(n497), .Z(n498) );
  NR2D0BWP12T30P140 U538 ( .A1(n495), .A2(n498), .ZN(N710) );
  ND2D0BWP12T30P140 U539 ( .A1(n621), .A2(n491), .ZN(n494) );
  INVD0BWP12T30P140 U540 ( .I(n494), .ZN(n508) );
  AO22D0BWP12T30P140 U541 ( .A1(request_write), .A2(N710), .B1(n508), .B2(
        down_data_valid), .Z(n197) );
  ND2D0BWP12T30P140 U542 ( .A1(csr_di[0]), .A2(n621), .ZN(n493) );
  OAI32D0BWP12T30P140 U543 ( .A1(n496), .A2(n495), .A3(n494), .B1(n493), .B2(
        n492), .ZN(n154) );
  INVD0BWP12T30P140 U544 ( .I(n497), .ZN(n507) );
  OA22D0BWP12T30P140 U545 ( .A1(n497), .A2(request_addr[5]), .B1(down_addr[17]), .B2(n507), .Z(n151) );
  OA22D0BWP12T30P140 U546 ( .A1(n497), .A2(request_data[1]), .B1(down_data[5]), 
        .B2(n507), .Z(n156) );
  INVD0BWP12T30P140 U547 ( .I(n497), .ZN(n505) );
  OA22D0BWP12T30P140 U548 ( .A1(n498), .A2(request_data[4]), .B1(down_data[8]), 
        .B2(n505), .Z(n165) );
  OA22D0BWP12T30P140 U549 ( .A1(n498), .A2(request_data[5]), .B1(down_data[9]), 
        .B2(n507), .Z(n162) );
  OA22D0BWP12T30P140 U550 ( .A1(n498), .A2(request_data[7]), .B1(down_data[11]), .B2(n507), .Z(n195) );
  OA22D0BWP12T30P140 U551 ( .A1(n498), .A2(request_data[8]), .B1(down_data[12]), .B2(n505), .Z(n193) );
  OA22D0BWP12T30P140 U552 ( .A1(n498), .A2(request_data[9]), .B1(down_data[13]), .B2(n505), .Z(n191) );
  OA22D0BWP12T30P140 U553 ( .A1(n497), .A2(request_data[11]), .B1(
        down_data[15]), .B2(n505), .Z(n187) );
  OA22D0BWP12T30P140 U554 ( .A1(n497), .A2(request_addr[0]), .B1(down_addr[12]), .B2(n505), .Z(n146) );
  OA22D0BWP12T30P140 U555 ( .A1(n498), .A2(request_addr[1]), .B1(down_addr[13]), .B2(n507), .Z(n147) );
  OA22D0BWP12T30P140 U556 ( .A1(n498), .A2(request_addr[2]), .B1(down_addr[14]), .B2(n507), .Z(n148) );
  OA22D0BWP12T30P140 U557 ( .A1(n498), .A2(request_addr[3]), .B1(down_addr[15]), .B2(n507), .Z(n149) );
  OA22D0BWP12T30P140 U558 ( .A1(n497), .A2(request_addr[4]), .B1(down_addr[16]), .B2(n507), .Z(n150) );
  OA22D0BWP12T30P140 U559 ( .A1(n498), .A2(request_addr[6]), .B1(down_addr[18]), .B2(n507), .Z(n152) );
  OA22D0BWP12T30P140 U560 ( .A1(n497), .A2(request_data[0]), .B1(down_data[4]), 
        .B2(n505), .Z(n174) );
  OA22D0BWP12T30P140 U561 ( .A1(n498), .A2(request_data[2]), .B1(down_data[6]), 
        .B2(n505), .Z(n171) );
  OA22D0BWP12T30P140 U562 ( .A1(n497), .A2(request_data[3]), .B1(down_data[7]), 
        .B2(n505), .Z(n168) );
  OA22D0BWP12T30P140 U563 ( .A1(n498), .A2(request_data[12]), .B1(
        down_data[16]), .B2(n505), .Z(n185) );
  OA22D0BWP12T30P140 U564 ( .A1(n497), .A2(request_data[13]), .B1(
        down_data[17]), .B2(n505), .Z(n183) );
  OA22D0BWP12T30P140 U565 ( .A1(n498), .A2(request_data[14]), .B1(
        down_data[18]), .B2(n505), .Z(n181) );
  INVD0BWP12T30P140 U566 ( .I(request_data[6]), .ZN(n503) );
  OAI22D0BWP12T30P140 U567 ( .A1(n499), .A2(n501), .B1(n503), .B2(n500), .ZN(
        n160) );
  INVD0BWP12T30P140 U568 ( .I(request_data[10]), .ZN(n504) );
  OAI22D0BWP12T30P140 U569 ( .A1(n515), .A2(n501), .B1(n500), .B2(n504), .ZN(
        n190) );
  INVD0BWP12T30P140 U570 ( .I(request_data[15]), .ZN(n506) );
  OAI22D0BWP12T30P140 U571 ( .A1(n502), .A2(n501), .B1(n500), .B2(n506), .ZN(
        n180) );
  MAOI22D0BWP12T30P140 U572 ( .A1(n505), .A2(n503), .B1(down_data[10]), .B2(
        n507), .ZN(n159) );
  MAOI22D0BWP12T30P140 U573 ( .A1(n505), .A2(request_write), .B1(down_addr[19]), .B2(n507), .ZN(n153) );
  MAOI22D0BWP12T30P140 U574 ( .A1(n505), .A2(n504), .B1(down_data[14]), .B2(
        n507), .ZN(n189) );
  MAOI22D0BWP12T30P140 U575 ( .A1(n507), .A2(n506), .B1(down_data[19]), .B2(
        n507), .ZN(n179) );
  AO21D0BWP12T30P140 U576 ( .A1(n508), .A2(down_addr_valid), .B(N710), .Z(n198) );
  OAI21D0BWP12T30P140 U577 ( .A1(dmaw_addr[7]), .A2(n510), .B(n509), .ZN(n511)
         );
  AOI32D0BWP12T30P140 U578 ( .A1(dmaw_addr[7]), .A2(n513), .A3(n512), .B1(
        dmaw_addr[8]), .B2(n511), .ZN(n514) );
  OAI21D0BWP12T30P140 U579 ( .A1(n516), .A2(n515), .B(n514), .ZN(n266) );
  AN3D0BWP12T30P140 U580 ( .A1(n518), .A2(n517), .A3(n529), .Z(n555) );
  AOI222D0BWP12T30P140 U581 ( .A1(n530), .A2(dmaw_en), .B1(n535), .B2(dmar_en), 
        .C1(n518), .C2(request_en), .ZN(n522) );
  ND2D0BWP12T30P140 U582 ( .A1(n518), .A2(n529), .ZN(n527) );
  NR3D0BWP12T30P140 U583 ( .A1(n520), .A2(n519), .A3(n527), .ZN(n585) );
  NR2D0BWP12T30P140 U584 ( .A1(n533), .A2(n527), .ZN(n584) );
  AOI22D0BWP12T30P140 U585 ( .A1(n585), .A2(reply_data[0]), .B1(n584), .B2(
        request_data[0]), .ZN(n521) );
  OAI31D0BWP12T30P140 U586 ( .A1(n522), .A2(n532), .A3(n526), .B(n521), .ZN(
        n523) );
  AO21D0BWP12T30P140 U587 ( .A1(n555), .A2(request_addr[0]), .B(n523), .Z(N556) );
  INVD0BWP12T30P140 U588 ( .I(request_write), .ZN(n525) );
  AOI22D0BWP12T30P140 U589 ( .A1(n585), .A2(reply_data[1]), .B1(n584), .B2(
        request_data[1]), .ZN(n524) );
  OAI31D0BWP12T30P140 U590 ( .A1(n527), .A2(n526), .A3(n525), .B(n524), .ZN(
        n528) );
  AO21D0BWP12T30P140 U591 ( .A1(n555), .A2(request_addr[1]), .B(n528), .Z(N557) );
  AOI22D0BWP12T30P140 U592 ( .A1(dmar_addr[0]), .A2(n626), .B1(request_addr[2]), .B2(n555), .ZN(n541) );
  ND2D0BWP12T30P140 U593 ( .A1(n530), .A2(n529), .ZN(n531) );
  NR2D0BWP12T30P140 U594 ( .A1(n533), .A2(n531), .ZN(n625) );
  AOI22D0BWP12T30P140 U595 ( .A1(dmaw_remaining[0]), .A2(n625), .B1(
        request_data[2]), .B2(n584), .ZN(n540) );
  NR2D0BWP12T30P140 U596 ( .A1(n533), .A2(n532), .ZN(n534) );
  ND2D0BWP12T30P140 U597 ( .A1(n535), .A2(n534), .ZN(n542) );
  OAI22D0BWP12T30P140 U598 ( .A1(n537), .A2(n607), .B1(n536), .B2(n542), .ZN(
        n538) );
  AOI21D0BWP12T30P140 U599 ( .A1(reply_data[2]), .A2(n585), .B(n538), .ZN(n539) );
  ND3D0BWP12T30P140 U600 ( .A1(n541), .A2(n540), .A3(n539), .ZN(N558) );
  AOI22D0BWP12T30P140 U601 ( .A1(dmar_addr[1]), .A2(n626), .B1(n555), .B2(
        request_addr[3]), .ZN(n546) );
  INVD0BWP12T30P140 U602 ( .I(n542), .ZN(n624) );
  AOI22D0BWP12T30P140 U603 ( .A1(dmaw_addr[1]), .A2(n627), .B1(
        dmar_remaining[1]), .B2(n624), .ZN(n545) );
  AOI22D0BWP12T30P140 U604 ( .A1(dmaw_remaining[1]), .A2(n625), .B1(n584), 
        .B2(request_data[3]), .ZN(n544) );
  ND2D0BWP12T30P140 U605 ( .A1(n585), .A2(reply_data[3]), .ZN(n543) );
  ND4D0BWP12T30P140 U606 ( .A1(n546), .A2(n545), .A3(n544), .A4(n543), .ZN(
        N559) );
  AOI22D0BWP12T30P140 U607 ( .A1(dmar_addr[2]), .A2(n626), .B1(n555), .B2(
        request_addr[4]), .ZN(n550) );
  AOI22D0BWP12T30P140 U608 ( .A1(dmaw_addr[2]), .A2(n627), .B1(
        dmar_remaining[2]), .B2(n624), .ZN(n549) );
  AOI22D0BWP12T30P140 U609 ( .A1(dmaw_remaining[2]), .A2(n625), .B1(n584), 
        .B2(request_data[4]), .ZN(n548) );
  ND2D0BWP12T30P140 U610 ( .A1(n585), .A2(reply_data[4]), .ZN(n547) );
  ND4D0BWP12T30P140 U611 ( .A1(n550), .A2(n549), .A3(n548), .A4(n547), .ZN(
        N560) );
  AOI22D0BWP12T30P140 U612 ( .A1(dmar_addr[3]), .A2(n626), .B1(n555), .B2(
        request_addr[5]), .ZN(n554) );
  AOI22D0BWP12T30P140 U613 ( .A1(dmaw_addr[3]), .A2(n627), .B1(
        dmar_remaining[3]), .B2(n624), .ZN(n553) );
  AOI22D0BWP12T30P140 U614 ( .A1(dmaw_remaining[3]), .A2(n625), .B1(n584), 
        .B2(request_data[5]), .ZN(n552) );
  ND2D0BWP12T30P140 U615 ( .A1(n585), .A2(reply_data[5]), .ZN(n551) );
  ND4D0BWP12T30P140 U616 ( .A1(n554), .A2(n553), .A3(n552), .A4(n551), .ZN(
        N561) );
  AOI22D0BWP12T30P140 U617 ( .A1(dmar_addr[4]), .A2(n626), .B1(n555), .B2(
        request_addr[6]), .ZN(n559) );
  AOI22D0BWP12T30P140 U618 ( .A1(dmaw_addr[4]), .A2(n627), .B1(
        dmar_remaining[4]), .B2(n624), .ZN(n558) );
  AOI22D0BWP12T30P140 U619 ( .A1(dmaw_remaining[4]), .A2(n625), .B1(n584), 
        .B2(request_data[6]), .ZN(n557) );
  ND2D0BWP12T30P140 U620 ( .A1(n585), .A2(reply_data[6]), .ZN(n556) );
  ND4D0BWP12T30P140 U621 ( .A1(n559), .A2(n558), .A3(n557), .A4(n556), .ZN(
        N562) );
  AOI22D0BWP12T30P140 U622 ( .A1(dmaw_remaining[5]), .A2(n625), .B1(
        dmar_remaining[5]), .B2(n624), .ZN(n562) );
  AOI22D0BWP12T30P140 U623 ( .A1(dmaw_addr[5]), .A2(n627), .B1(dmar_addr[5]), 
        .B2(n626), .ZN(n561) );
  AOI22D0BWP12T30P140 U624 ( .A1(n585), .A2(reply_data[7]), .B1(n584), .B2(
        request_data[7]), .ZN(n560) );
  ND3D0BWP12T30P140 U625 ( .A1(n562), .A2(n561), .A3(n560), .ZN(N563) );
  AOI22D0BWP12T30P140 U626 ( .A1(dmaw_remaining[6]), .A2(n625), .B1(
        dmar_remaining[6]), .B2(n624), .ZN(n565) );
  AOI22D0BWP12T30P140 U627 ( .A1(dmaw_addr[6]), .A2(n627), .B1(dmar_addr[6]), 
        .B2(n626), .ZN(n564) );
  AOI22D0BWP12T30P140 U628 ( .A1(n585), .A2(reply_data[8]), .B1(n584), .B2(
        request_data[8]), .ZN(n563) );
  ND3D0BWP12T30P140 U629 ( .A1(n565), .A2(n564), .A3(n563), .ZN(N564) );
  AOI22D0BWP12T30P140 U630 ( .A1(dmaw_remaining[7]), .A2(n625), .B1(
        dmar_remaining[7]), .B2(n624), .ZN(n568) );
  AOI22D0BWP12T30P140 U631 ( .A1(dmaw_addr[7]), .A2(n627), .B1(dmar_addr[7]), 
        .B2(n626), .ZN(n567) );
  AOI22D0BWP12T30P140 U632 ( .A1(n585), .A2(reply_data[9]), .B1(n584), .B2(
        request_data[9]), .ZN(n566) );
  ND3D0BWP12T30P140 U633 ( .A1(n568), .A2(n567), .A3(n566), .ZN(N565) );
  AOI22D0BWP12T30P140 U634 ( .A1(dmaw_remaining[8]), .A2(n625), .B1(
        dmar_remaining[8]), .B2(n624), .ZN(n571) );
  AOI22D0BWP12T30P140 U635 ( .A1(dmaw_addr[8]), .A2(n627), .B1(dmar_addr[8]), 
        .B2(n626), .ZN(n570) );
  AOI22D0BWP12T30P140 U636 ( .A1(n585), .A2(reply_data[10]), .B1(n584), .B2(
        request_data[10]), .ZN(n569) );
  ND3D0BWP12T30P140 U637 ( .A1(n571), .A2(n570), .A3(n569), .ZN(N566) );
  AOI22D0BWP12T30P140 U638 ( .A1(dmaw_remaining[9]), .A2(n625), .B1(
        dmar_remaining[9]), .B2(n624), .ZN(n574) );
  AOI22D0BWP12T30P140 U639 ( .A1(dmaw_addr[9]), .A2(n627), .B1(dmar_addr[9]), 
        .B2(n626), .ZN(n573) );
  AOI22D0BWP12T30P140 U640 ( .A1(n585), .A2(reply_data[11]), .B1(n584), .B2(
        request_data[11]), .ZN(n572) );
  ND3D0BWP12T30P140 U641 ( .A1(n574), .A2(n573), .A3(n572), .ZN(N567) );
  AOI22D0BWP12T30P140 U642 ( .A1(dmaw_remaining[10]), .A2(n625), .B1(
        dmar_remaining[10]), .B2(n624), .ZN(n577) );
  AOI22D0BWP12T30P140 U643 ( .A1(dmaw_addr[10]), .A2(n627), .B1(dmar_addr[10]), 
        .B2(n626), .ZN(n576) );
  AOI22D0BWP12T30P140 U644 ( .A1(n585), .A2(reply_data[12]), .B1(n584), .B2(
        request_data[12]), .ZN(n575) );
  ND3D0BWP12T30P140 U645 ( .A1(n577), .A2(n576), .A3(n575), .ZN(N568) );
  AOI22D0BWP12T30P140 U646 ( .A1(dmaw_remaining[11]), .A2(n625), .B1(
        dmar_remaining[11]), .B2(n624), .ZN(n580) );
  AOI22D0BWP12T30P140 U647 ( .A1(dmaw_addr[11]), .A2(n627), .B1(dmar_addr[11]), 
        .B2(n626), .ZN(n579) );
  AOI22D0BWP12T30P140 U648 ( .A1(n585), .A2(reply_data[13]), .B1(n584), .B2(
        request_data[13]), .ZN(n578) );
  ND3D0BWP12T30P140 U649 ( .A1(n580), .A2(n579), .A3(n578), .ZN(N569) );
  AOI22D0BWP12T30P140 U650 ( .A1(dmaw_remaining[12]), .A2(n625), .B1(
        dmar_remaining[12]), .B2(n624), .ZN(n583) );
  AOI22D0BWP12T30P140 U651 ( .A1(dmaw_addr[12]), .A2(n627), .B1(dmar_addr[12]), 
        .B2(n626), .ZN(n582) );
  AOI22D0BWP12T30P140 U652 ( .A1(n585), .A2(reply_data[14]), .B1(n584), .B2(
        request_data[14]), .ZN(n581) );
  ND3D0BWP12T30P140 U653 ( .A1(n583), .A2(n582), .A3(n581), .ZN(N570) );
  AOI22D0BWP12T30P140 U654 ( .A1(dmaw_remaining[13]), .A2(n625), .B1(
        dmar_remaining[13]), .B2(n624), .ZN(n588) );
  AOI22D0BWP12T30P140 U655 ( .A1(dmaw_addr[13]), .A2(n627), .B1(dmar_addr[13]), 
        .B2(n626), .ZN(n587) );
  AOI22D0BWP12T30P140 U656 ( .A1(n585), .A2(reply_data[15]), .B1(n584), .B2(
        request_data[15]), .ZN(n586) );
  ND3D0BWP12T30P140 U657 ( .A1(n588), .A2(n587), .A3(n586), .ZN(N571) );
  INVD0BWP12T30P140 U658 ( .I(n626), .ZN(n605) );
  OAI22D0BWP12T30P140 U659 ( .A1(n590), .A2(n607), .B1(n589), .B2(n605), .ZN(
        N574) );
  OAI22D0BWP12T30P140 U660 ( .A1(n592), .A2(n607), .B1(n591), .B2(n605), .ZN(
        N575) );
  AO22D0BWP12T30P140 U661 ( .A1(dmaw_addr[18]), .A2(n627), .B1(dmar_addr[18]), 
        .B2(n626), .Z(N576) );
  OAI22D0BWP12T30P140 U662 ( .A1(n594), .A2(n607), .B1(n593), .B2(n605), .ZN(
        N577) );
  OAI22D0BWP12T30P140 U663 ( .A1(n596), .A2(n607), .B1(n595), .B2(n605), .ZN(
        N578) );
  OAI22D0BWP12T30P140 U664 ( .A1(n598), .A2(n607), .B1(n597), .B2(n605), .ZN(
        N579) );
  AO22D0BWP12T30P140 U665 ( .A1(dmaw_addr[22]), .A2(n627), .B1(dmar_addr[22]), 
        .B2(n626), .Z(N580) );
  OAI22D0BWP12T30P140 U666 ( .A1(n600), .A2(n607), .B1(n599), .B2(n605), .ZN(
        N581) );
  OAI22D0BWP12T30P140 U667 ( .A1(n602), .A2(n607), .B1(n601), .B2(n605), .ZN(
        N582) );
  OAI22D0BWP12T30P140 U668 ( .A1(n604), .A2(n607), .B1(n603), .B2(n605), .ZN(
        N583) );
  AO22D0BWP12T30P140 U669 ( .A1(dmaw_addr[26]), .A2(n627), .B1(dmar_addr[26]), 
        .B2(n626), .Z(N584) );
  OAI22D0BWP12T30P140 U670 ( .A1(n609), .A2(n607), .B1(n614), .B2(n605), .ZN(
        N585) );
  OAI22D0BWP12T30P140 U671 ( .A1(n608), .A2(n607), .B1(n606), .B2(n605), .ZN(
        N586) );
  CKBD0BWP12T30P140 U672 ( .I(sys_clk), .Z(n653) );
  CKBD0BWP12T30P140 U673 ( .I(sys_clk), .Z(n649) );
  CKBD0BWP12T30P140 U674 ( .I(sys_clk), .Z(n654) );
  CKBD0BWP12T30P140 U675 ( .I(sys_clk), .Z(n651) );
  CKBD0BWP12T30P140 U676 ( .I(sys_clk), .Z(n648) );
  CKBD0BWP12T30P140 U677 ( .I(sys_clk), .Z(n655) );
  CKBD0BWP12T30P140 U678 ( .I(sys_clk), .Z(n650) );
  CKBD0BWP12T30P140 U679 ( .I(sys_clk), .Z(n657) );
  CKBD0BWP12T30P140 U680 ( .I(sys_clk), .Z(n652) );
  CKBD0BWP12T30P140 U681 ( .I(sys_clk), .Z(n656) );
  AOI22D0BWP12T30P140 U682 ( .A1(csr_di[29]), .A2(n611), .B1(n610), .B2(n609), 
        .ZN(n612) );
  IOA21D0BWP12T30P140 U683 ( .A1(dmaw_addr[27]), .A2(n613), .B(n612), .ZN(n247) );
  AOI22D0BWP12T30P140 U684 ( .A1(csr_di[29]), .A2(n616), .B1(n615), .B2(n614), 
        .ZN(n617) );
  IOA21D0BWP12T30P140 U685 ( .A1(dmar_addr[27]), .A2(n618), .B(n617), .ZN(n201) );
  INVD0BWP12T30P140 U686 ( .I(n619), .ZN(n630) );
  ND2D0BWP12T30P140 U687 ( .A1(n621), .A2(n630), .ZN(N30) );
  INVD0BWP12T30P140 U688 ( .I(n620), .ZN(n631) );
  ND2D0BWP12T30P140 U689 ( .A1(n621), .A2(n631), .ZN(N29) );
  AOI22D0BWP12T30P140 U690 ( .A1(dmaw_remaining[14]), .A2(n625), .B1(
        dmar_remaining[14]), .B2(n624), .ZN(n623) );
  AOI22D0BWP12T30P140 U691 ( .A1(dmaw_addr[14]), .A2(n627), .B1(dmar_addr[14]), 
        .B2(n626), .ZN(n622) );
  ND2D0BWP12T30P140 U692 ( .A1(n623), .A2(n622), .ZN(N572) );
  AOI22D0BWP12T30P140 U693 ( .A1(dmaw_remaining[15]), .A2(n625), .B1(
        dmar_remaining[15]), .B2(n624), .ZN(n629) );
  AOI22D0BWP12T30P140 U694 ( .A1(dmaw_addr[15]), .A2(n627), .B1(dmar_addr[15]), 
        .B2(n626), .ZN(n628) );
  ND2D0BWP12T30P140 U695 ( .A1(n629), .A2(n628), .ZN(N573) );
  NR3D0BWP12T30P140 U696 ( .A1(n632), .A2(dmaw_finished_r), .A3(n630), .ZN(
        N712) );
  NR3D0BWP12T30P140 U697 ( .A1(n632), .A2(dmar_finished_r), .A3(n631), .ZN(
        N711) );
endmodule


module ac97_dma ( sys_rst, sys_clk, wbm_adr_o, wbm_cti_o, wbm_we_o, wbm_cyc_o, 
        wbm_stb_o, wbm_ack_i, wbm_dat_i, wbm_dat_o, down_en, down_next_frame, 
        down_pcmleft_valid, down_pcmleft, down_pcmright_valid, down_pcmright, 
        up_en, up_next_frame, up_pcmleft, up_pcmright, dmar_en, dmar_addr, 
        dmar_remaining, dmar_next, dmaw_en, dmaw_addr, dmaw_remaining, 
        dmaw_next );
  output [31:0] wbm_adr_o;
  output [2:0] wbm_cti_o;
  input [31:0] wbm_dat_i;
  output [31:0] wbm_dat_o;
  output [19:0] down_pcmleft;
  output [19:0] down_pcmright;
  input [19:0] up_pcmleft;
  input [19:0] up_pcmright;
  input [29:0] dmar_addr;
  input [15:0] dmar_remaining;
  input [29:0] dmaw_addr;
  input [15:0] dmaw_remaining;
  input sys_rst, sys_clk, wbm_ack_i, down_next_frame, up_next_frame, dmar_en,
         dmaw_en;
  output wbm_we_o, wbm_cyc_o, wbm_stb_o, down_en, down_pcmleft_valid,
         down_pcmright_valid, up_en, dmar_next, dmaw_next;
  wire   n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n108, n109, n153, n154,
         n155;
  wire   [2:0] state;

  DFQD2BWP12T30P140 down_pcmright_reg_19_ ( .D(n103), .CP(n155), .Q(
        down_pcmright[19]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n70), .CP(n155), .Q(wbm_adr_o[31])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n68), .CP(sys_clk), .Q(
        wbm_adr_o[29]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n67), .CP(n154), .Q(wbm_adr_o[28])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_27_ ( .D(n66), .CP(n155), .Q(wbm_adr_o[27])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_26_ ( .D(n65), .CP(n153), .Q(wbm_adr_o[26])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_25_ ( .D(n64), .CP(sys_clk), .Q(
        wbm_adr_o[25]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_24_ ( .D(n63), .CP(sys_clk), .Q(
        wbm_adr_o[24]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_23_ ( .D(n62), .CP(sys_clk), .Q(
        wbm_adr_o[23]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n61), .CP(n154), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n60), .CP(n155), .Q(wbm_adr_o[21])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n59), .CP(n153), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_19_ ( .D(n58), .CP(n154), .Q(wbm_adr_o[19])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n57), .CP(n155), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_17_ ( .D(n56), .CP(n153), .Q(wbm_adr_o[17])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n55), .CP(n154), .Q(wbm_adr_o[16])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n53), .CP(n153), .Q(wbm_adr_o[14])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_13_ ( .D(n52), .CP(n153), .Q(wbm_adr_o[13])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_12_ ( .D(n51), .CP(n153), .Q(wbm_adr_o[12])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_11_ ( .D(n50), .CP(n153), .Q(wbm_adr_o[11])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_10_ ( .D(n49), .CP(n153), .Q(wbm_adr_o[10])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_9_ ( .D(n48), .CP(n153), .Q(wbm_adr_o[9]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_8_ ( .D(n47), .CP(n153), .Q(wbm_adr_o[8]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_7_ ( .D(n46), .CP(n153), .Q(wbm_adr_o[7]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_6_ ( .D(n45), .CP(n153), .Q(wbm_adr_o[6]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_5_ ( .D(n44), .CP(n153), .Q(wbm_adr_o[5]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_4_ ( .D(n43), .CP(n153), .Q(wbm_adr_o[4]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_3_ ( .D(n42), .CP(n153), .Q(wbm_adr_o[3]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_2_ ( .D(n41), .CP(n153), .Q(wbm_adr_o[2]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n71), .CP(sys_clk), .Q(wbm_adr_o[1])
         );
  DFQD2BWP12T30P140 down_pcmright_reg_18_ ( .D(n102), .CP(n154), .Q(
        down_pcmright[18]) );
  DFQD2BWP12T30P140 down_pcmright_reg_17_ ( .D(n101), .CP(sys_clk), .Q(
        down_pcmright[17]) );
  DFQD2BWP12T30P140 down_pcmright_reg_14_ ( .D(n99), .CP(n155), .Q(
        down_pcmright[14]) );
  DFQD2BWP12T30P140 down_pcmright_reg_12_ ( .D(n97), .CP(n155), .Q(
        down_pcmright[12]) );
  DFQD2BWP12T30P140 down_pcmright_reg_11_ ( .D(n96), .CP(n155), .Q(
        down_pcmright[11]) );
  DFQD2BWP12T30P140 down_pcmright_reg_10_ ( .D(n95), .CP(n155), .Q(
        down_pcmright[10]) );
  DFQD2BWP12T30P140 down_pcmright_reg_9_ ( .D(n94), .CP(n155), .Q(
        down_pcmright[9]) );
  DFQD2BWP12T30P140 down_pcmright_reg_8_ ( .D(n93), .CP(n155), .Q(
        down_pcmright[8]) );
  DFQD2BWP12T30P140 down_pcmright_reg_6_ ( .D(n91), .CP(n155), .Q(
        down_pcmright[6]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_11_ ( .D(n80), .CP(n154), .Q(
        down_pcmleft[11]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_10_ ( .D(n79), .CP(n154), .Q(
        down_pcmleft[10]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_8_ ( .D(n77), .CP(n154), .Q(
        down_pcmleft[8]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_7_ ( .D(n76), .CP(n154), .Q(
        down_pcmleft[7]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_6_ ( .D(n75), .CP(n155), .Q(
        down_pcmleft[6]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_4_ ( .D(n73), .CP(sys_clk), .Q(
        down_pcmleft[4]) );
  DFQD2BWP12T30P140 down_pcmright_reg_13_ ( .D(n98), .CP(n155), .Q(
        down_pcmright[13]) );
  DFQD2BWP12T30P140 down_pcmright_reg_7_ ( .D(n92), .CP(n155), .Q(
        down_pcmright[7]) );
  DFQD2BWP12T30P140 down_pcmright_reg_5_ ( .D(n90), .CP(n155), .Q(
        down_pcmright[5]) );
  DFQD2BWP12T30P140 down_pcmright_reg_4_ ( .D(n89), .CP(n155), .Q(
        down_pcmright[4]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_19_ ( .D(n87), .CP(n154), .Q(
        down_pcmleft[19]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_14_ ( .D(n83), .CP(n154), .Q(
        down_pcmleft[14]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_13_ ( .D(n82), .CP(n154), .Q(
        down_pcmleft[13]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_12_ ( .D(n81), .CP(n154), .Q(
        down_pcmleft[12]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_9_ ( .D(n78), .CP(n154), .Q(
        down_pcmleft[9]) );
  DFQD2BWP12T30P140 down_pcmright_reg_0_ ( .D(n88), .CP(n154), .Q(
        down_pcmright[15]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_18_ ( .D(n86), .CP(n154), .Q(
        down_pcmleft[18]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_17_ ( .D(n85), .CP(n154), .Q(
        down_pcmleft[17]) );
  DFQD2BWP12T30P140 down_pcmright_reg_16_ ( .D(n100), .CP(n155), .Q(
        down_pcmright[16]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_0_ ( .D(n72), .CP(n154), .Q(
        down_pcmleft[15]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n105), .CP(n154), .Q(state[2]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n106), .CP(n155), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n107), .CP(n153), .Q(state[0]) );
  DFQD1BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n69), .CP(n153), .Q(wbm_adr_o[30])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_15_ ( .D(n54), .CP(n155), .Q(wbm_adr_o[15])
         );
  DFQD1BWP12T30P140 down_pcmleft_valid_reg ( .D(n104), .CP(n153), .Q(
        down_pcmleft_valid) );
  DFQD1BWP12T30P140 down_pcmleft_reg_5_ ( .D(n74), .CP(n153), .Q(
        down_pcmleft[5]) );
  DFQD1BWP12T30P140 down_pcmleft_reg_16_ ( .D(n84), .CP(n154), .Q(
        down_pcmleft[16]) );
  ND2D0BWP12T30P140 U3 ( .A1(n37), .A2(n38), .ZN(wbm_cyc_o) );
  ND2D0BWP12T30P140 U4 ( .A1(n19), .A2(state[0]), .ZN(n37) );
  NR2D0BWP12T30P140 U5 ( .A1(state[2]), .A2(state[1]), .ZN(n19) );
  AOI21D0BWP12T30P140 U6 ( .A1(n14), .A2(n109), .B(n13), .ZN(n26) );
  CKBD0BWP12T30P140 U7 ( .I(n26), .Z(n28) );
  CKBD0BWP12T30P140 U8 ( .I(down_pcmright[15]), .Z(down_pcmright[0]) );
  CKBD0BWP12T30P140 U9 ( .I(down_pcmright[16]), .Z(down_pcmright[1]) );
  CKBD0BWP12T30P140 U10 ( .I(down_pcmright[17]), .Z(down_pcmright[2]) );
  CKBD0BWP12T30P140 U11 ( .I(down_pcmright[18]), .Z(down_pcmright[3]) );
  CKBD0BWP12T30P140 U12 ( .I(down_pcmleft[15]), .Z(down_pcmleft[0]) );
  CKBD0BWP12T30P140 U13 ( .I(down_pcmleft[16]), .Z(down_pcmleft[1]) );
  CKBD0BWP12T30P140 U14 ( .I(down_pcmleft[17]), .Z(down_pcmleft[2]) );
  CKBD0BWP12T30P140 U15 ( .I(down_pcmleft[18]), .Z(down_pcmleft[3]) );
  CKBD0BWP12T30P140 U16 ( .I(down_pcmleft_valid), .Z(down_pcmright_valid) );
  CKBD0BWP12T30P140 U17 ( .I(up_pcmright[4]), .Z(wbm_dat_o[0]) );
  CKBD0BWP12T30P140 U18 ( .I(up_pcmright[5]), .Z(wbm_dat_o[1]) );
  CKBD0BWP12T30P140 U19 ( .I(up_pcmright[6]), .Z(wbm_dat_o[2]) );
  CKBD0BWP12T30P140 U20 ( .I(up_pcmright[7]), .Z(wbm_dat_o[3]) );
  CKBD0BWP12T30P140 U21 ( .I(up_pcmright[8]), .Z(wbm_dat_o[4]) );
  CKBD0BWP12T30P140 U22 ( .I(up_pcmright[9]), .Z(wbm_dat_o[5]) );
  CKBD0BWP12T30P140 U23 ( .I(up_pcmright[10]), .Z(wbm_dat_o[6]) );
  CKBD0BWP12T30P140 U24 ( .I(up_pcmright[11]), .Z(wbm_dat_o[7]) );
  CKBD0BWP12T30P140 U25 ( .I(up_pcmright[12]), .Z(wbm_dat_o[8]) );
  CKBD0BWP12T30P140 U26 ( .I(up_pcmright[13]), .Z(wbm_dat_o[9]) );
  CKBD0BWP12T30P140 U27 ( .I(up_pcmright[14]), .Z(wbm_dat_o[10]) );
  CKBD0BWP12T30P140 U28 ( .I(up_pcmright[15]), .Z(wbm_dat_o[11]) );
  CKBD0BWP12T30P140 U29 ( .I(up_pcmright[16]), .Z(wbm_dat_o[12]) );
  CKBD0BWP12T30P140 U30 ( .I(up_pcmright[17]), .Z(wbm_dat_o[13]) );
  CKBD0BWP12T30P140 U31 ( .I(up_pcmright[18]), .Z(wbm_dat_o[14]) );
  CKBD0BWP12T30P140 U32 ( .I(up_pcmright[19]), .Z(wbm_dat_o[15]) );
  CKBD0BWP12T30P140 U33 ( .I(up_pcmleft[4]), .Z(wbm_dat_o[16]) );
  CKBD0BWP12T30P140 U34 ( .I(up_pcmleft[5]), .Z(wbm_dat_o[17]) );
  CKBD0BWP12T30P140 U35 ( .I(up_pcmleft[6]), .Z(wbm_dat_o[18]) );
  CKBD0BWP12T30P140 U36 ( .I(up_pcmleft[7]), .Z(wbm_dat_o[19]) );
  CKBD0BWP12T30P140 U37 ( .I(up_pcmleft[8]), .Z(wbm_dat_o[20]) );
  CKBD0BWP12T30P140 U38 ( .I(up_pcmleft[9]), .Z(wbm_dat_o[21]) );
  CKBD0BWP12T30P140 U39 ( .I(up_pcmleft[10]), .Z(wbm_dat_o[22]) );
  CKBD0BWP12T30P140 U40 ( .I(up_pcmleft[11]), .Z(wbm_dat_o[23]) );
  CKBD0BWP12T30P140 U41 ( .I(up_pcmleft[12]), .Z(wbm_dat_o[24]) );
  CKBD0BWP12T30P140 U42 ( .I(up_pcmleft[13]), .Z(wbm_dat_o[25]) );
  CKBD0BWP12T30P140 U43 ( .I(up_pcmleft[14]), .Z(wbm_dat_o[26]) );
  CKBD0BWP12T30P140 U44 ( .I(up_pcmleft[15]), .Z(wbm_dat_o[27]) );
  CKBD0BWP12T30P140 U45 ( .I(up_pcmleft[16]), .Z(wbm_dat_o[28]) );
  CKBD0BWP12T30P140 U46 ( .I(up_pcmleft[17]), .Z(wbm_dat_o[29]) );
  CKBD0BWP12T30P140 U47 ( .I(up_pcmleft[18]), .Z(wbm_dat_o[30]) );
  CKBD0BWP12T30P140 U48 ( .I(up_pcmleft[19]), .Z(wbm_dat_o[31]) );
  INVD0BWP12T30P140 U49 ( .I(state[1]), .ZN(n32) );
  NR3D0BWP12T30P140 U50 ( .A1(state[2]), .A2(state[0]), .A3(n32), .ZN(wbm_we_o) );
  INVD0BWP12T30P140 U51 ( .I(wbm_we_o), .ZN(n38) );
  CKBD0BWP12T30P140 U52 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  CKBD0BWP12T30P140 U53 ( .I(wbm_adr_o[1]), .Z(wbm_adr_o[0]) );
  INVD0BWP12T30P140 U54 ( .I(n19), .ZN(n13) );
  NR4D0BWP12T30P140 U55 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), .A3(
        dmar_remaining[2]), .A4(dmar_remaining[3]), .ZN(n4) );
  NR4D0BWP12T30P140 U56 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[5]), .A3(
        dmar_remaining[6]), .A4(dmar_remaining[7]), .ZN(n3) );
  NR4D0BWP12T30P140 U57 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[9]), .A3(
        dmar_remaining[10]), .A4(dmar_remaining[11]), .ZN(n2) );
  NR4D0BWP12T30P140 U58 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[14]), .A4(dmar_remaining[15]), .ZN(n1) );
  ND4D0BWP12T30P140 U59 ( .A1(n4), .A2(n3), .A3(n2), .A4(n1), .ZN(n5) );
  ND3D0BWP12T30P140 U60 ( .A1(n5), .A2(dmar_en), .A3(down_next_frame), .ZN(n11) );
  NR3D0BWP12T30P140 U61 ( .A1(state[0]), .A2(n13), .A3(n11), .ZN(n36) );
  CKBD0BWP12T30P140 U62 ( .I(n36), .Z(n31) );
  NR4D0BWP12T30P140 U63 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), .A3(
        dmaw_remaining[2]), .A4(dmaw_remaining[3]), .ZN(n9) );
  NR4D0BWP12T30P140 U64 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[5]), .A3(
        dmaw_remaining[6]), .A4(dmaw_remaining[7]), .ZN(n8) );
  NR4D0BWP12T30P140 U65 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[9]), .A3(
        dmaw_remaining[10]), .A4(dmaw_remaining[11]), .ZN(n7) );
  NR4D0BWP12T30P140 U66 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[14]), .A4(dmaw_remaining[15]), .ZN(n6) );
  ND4D0BWP12T30P140 U67 ( .A1(n9), .A2(n8), .A3(n7), .A4(n6), .ZN(n10) );
  AN2D0BWP12T30P140 U68 ( .A1(n11), .A2(n10), .Z(n18) );
  INVD0BWP12T30P140 U69 ( .I(state[2]), .ZN(n25) );
  ND3D0BWP12T30P140 U70 ( .A1(n25), .A2(dmaw_en), .A3(up_next_frame), .ZN(n33)
         );
  INR4D0BWP12T30P140 U71 ( .A1(n18), .B1(state[1]), .B2(state[0]), .B3(n33), 
        .ZN(n29) );
  CKBD0BWP12T30P140 U72 ( .I(n29), .Z(n34) );
  NR2D0BWP12T30P140 U73 ( .A1(n36), .A2(n34), .ZN(n35) );
  AO222D0BWP12T30P140 U74 ( .A1(n31), .A2(dmar_addr[8]), .B1(n35), .B2(
        wbm_adr_o[10]), .C1(n29), .C2(dmaw_addr[8]), .Z(n49) );
  AO222D0BWP12T30P140 U75 ( .A1(n36), .A2(dmar_addr[9]), .B1(n35), .B2(
        wbm_adr_o[11]), .C1(n34), .C2(dmaw_addr[9]), .Z(n50) );
  AO222D0BWP12T30P140 U76 ( .A1(n31), .A2(dmar_addr[10]), .B1(n35), .B2(
        wbm_adr_o[12]), .C1(n29), .C2(dmaw_addr[10]), .Z(n51) );
  AO222D0BWP12T30P140 U77 ( .A1(n36), .A2(dmar_addr[11]), .B1(n35), .B2(
        wbm_adr_o[13]), .C1(n29), .C2(dmaw_addr[11]), .Z(n52) );
  AO222D0BWP12T30P140 U78 ( .A1(n31), .A2(dmar_addr[12]), .B1(n35), .B2(
        wbm_adr_o[14]), .C1(n29), .C2(dmaw_addr[12]), .Z(n53) );
  CKBD0BWP12T30P140 U79 ( .I(n35), .Z(n30) );
  AO222D0BWP12T30P140 U80 ( .A1(n36), .A2(dmar_addr[13]), .B1(n30), .B2(
        wbm_adr_o[15]), .C1(n29), .C2(dmaw_addr[13]), .Z(n54) );
  AO222D0BWP12T30P140 U81 ( .A1(n31), .A2(dmar_addr[14]), .B1(n35), .B2(
        wbm_adr_o[16]), .C1(n34), .C2(dmaw_addr[14]), .Z(n55) );
  AO222D0BWP12T30P140 U82 ( .A1(n36), .A2(dmar_addr[15]), .B1(n30), .B2(
        wbm_adr_o[17]), .C1(n29), .C2(dmaw_addr[15]), .Z(n56) );
  AO222D0BWP12T30P140 U83 ( .A1(n31), .A2(dmar_addr[16]), .B1(n35), .B2(
        wbm_adr_o[18]), .C1(n34), .C2(dmaw_addr[16]), .Z(n57) );
  AO222D0BWP12T30P140 U84 ( .A1(n31), .A2(dmar_addr[17]), .B1(n30), .B2(
        wbm_adr_o[19]), .C1(n29), .C2(dmaw_addr[17]), .Z(n58) );
  AO222D0BWP12T30P140 U85 ( .A1(n36), .A2(dmar_addr[18]), .B1(n35), .B2(
        wbm_adr_o[20]), .C1(n34), .C2(dmaw_addr[18]), .Z(n59) );
  AO222D0BWP12T30P140 U86 ( .A1(n31), .A2(dmar_addr[19]), .B1(n30), .B2(
        wbm_adr_o[21]), .C1(n29), .C2(dmaw_addr[19]), .Z(n60) );
  AO222D0BWP12T30P140 U87 ( .A1(n36), .A2(dmar_addr[20]), .B1(n35), .B2(
        wbm_adr_o[22]), .C1(n34), .C2(dmaw_addr[20]), .Z(n61) );
  AO222D0BWP12T30P140 U88 ( .A1(n31), .A2(dmar_addr[21]), .B1(n30), .B2(
        wbm_adr_o[23]), .C1(n29), .C2(dmaw_addr[21]), .Z(n62) );
  AO222D0BWP12T30P140 U89 ( .A1(n36), .A2(dmar_addr[22]), .B1(n35), .B2(
        wbm_adr_o[24]), .C1(n34), .C2(dmaw_addr[22]), .Z(n63) );
  AO222D0BWP12T30P140 U90 ( .A1(n31), .A2(dmar_addr[23]), .B1(n35), .B2(
        wbm_adr_o[25]), .C1(n29), .C2(dmaw_addr[23]), .Z(n64) );
  AO222D0BWP12T30P140 U91 ( .A1(n36), .A2(dmar_addr[24]), .B1(n30), .B2(
        wbm_adr_o[26]), .C1(n34), .C2(dmaw_addr[24]), .Z(n65) );
  AO222D0BWP12T30P140 U92 ( .A1(n31), .A2(dmar_addr[25]), .B1(n30), .B2(
        wbm_adr_o[27]), .C1(n29), .C2(dmaw_addr[25]), .Z(n66) );
  AO222D0BWP12T30P140 U93 ( .A1(n36), .A2(dmar_addr[26]), .B1(n30), .B2(
        wbm_adr_o[28]), .C1(n34), .C2(dmaw_addr[26]), .Z(n67) );
  AO222D0BWP12T30P140 U94 ( .A1(n31), .A2(dmar_addr[27]), .B1(n30), .B2(
        wbm_adr_o[29]), .C1(n34), .C2(dmaw_addr[27]), .Z(n68) );
  AO222D0BWP12T30P140 U95 ( .A1(n36), .A2(dmar_addr[28]), .B1(n30), .B2(
        wbm_adr_o[30]), .C1(n34), .C2(dmaw_addr[28]), .Z(n69) );
  AO222D0BWP12T30P140 U96 ( .A1(n31), .A2(dmar_addr[29]), .B1(n30), .B2(
        wbm_adr_o[31]), .C1(n34), .C2(dmaw_addr[29]), .Z(n70) );
  INVD0BWP12T30P140 U97 ( .I(dmar_en), .ZN(n27) );
  INVD0BWP12T30P140 U98 ( .I(dmaw_en), .ZN(n12) );
  AOI22D0BWP12T30P140 U99 ( .A1(down_next_frame), .A2(n27), .B1(up_next_frame), 
        .B2(n12), .ZN(n14) );
  INVD0BWP12T30P140 U100 ( .I(state[0]), .ZN(n109) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(down_pcmright[19]), .I1(wbm_dat_i[15]), .S(
        n28), .Z(n103) );
  AO222D0BWP12T30P140 U102 ( .A1(n36), .A2(dmar_addr[7]), .B1(n35), .B2(
        wbm_adr_o[9]), .C1(n34), .C2(dmaw_addr[7]), .Z(n48) );
  AO222D0BWP12T30P140 U103 ( .A1(n31), .A2(dmar_addr[6]), .B1(n30), .B2(
        wbm_adr_o[8]), .C1(n29), .C2(dmaw_addr[6]), .Z(n47) );
  INR2D1BWP12T30P140 U104 ( .A1(wbm_cyc_o), .B1(wbm_ack_i), .ZN(n16) );
  INVD0BWP12T30P140 U105 ( .I(sys_rst), .ZN(n15) );
  OAI21D0BWP12T30P140 U106 ( .A1(state[2]), .A2(n16), .B(n15), .ZN(n20) );
  OAI21D0BWP12T30P140 U107 ( .A1(state[1]), .A2(sys_rst), .B(n20), .ZN(n17) );
  INVD0BWP12T30P140 U108 ( .I(wbm_ack_i), .ZN(n39) );
  AOI21D0BWP12T30P140 U109 ( .A1(n39), .A2(wbm_cyc_o), .B(sys_rst), .ZN(n23)
         );
  AO22D0BWP12T30P140 U110 ( .A1(state[0]), .A2(n17), .B1(n23), .B2(n31), .Z(
        n107) );
  AOI31D0BWP12T30P140 U111 ( .A1(n18), .A2(up_next_frame), .A3(dmaw_en), .B(
        state[0]), .ZN(n22) );
  ND2D0BWP12T30P140 U112 ( .A1(n19), .A2(n23), .ZN(n21) );
  OAI22D0BWP12T30P140 U113 ( .A1(n22), .A2(n21), .B1(n32), .B2(n20), .ZN(n106)
         );
  ND3D0BWP12T30P140 U114 ( .A1(n109), .A2(n23), .A3(state[1]), .ZN(n24) );
  OAI31D0BWP12T30P140 U115 ( .A1(sys_rst), .A2(n25), .A3(n109), .B(n24), .ZN(
        n105) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(down_pcmleft[15]), .I1(wbm_dat_i[27]), .S(
        n26), .Z(n72) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(down_pcmleft[16]), .I1(wbm_dat_i[28]), .S(
        n26), .Z(n84) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(down_pcmright[16]), .I1(wbm_dat_i[12]), .S(
        n28), .Z(n100) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(down_pcmleft[17]), .I1(wbm_dat_i[29]), .S(
        n26), .Z(n85) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(down_pcmleft[18]), .I1(wbm_dat_i[30]), .S(
        n28), .Z(n86) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(down_pcmright[15]), .I1(wbm_dat_i[11]), .S(
        n28), .Z(n88) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(down_pcmleft[9]), .I1(wbm_dat_i[21]), .S(n26), .Z(n78) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(down_pcmleft[12]), .I1(wbm_dat_i[24]), .S(
        n26), .Z(n81) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(down_pcmleft[13]), .I1(wbm_dat_i[25]), .S(
        n26), .Z(n82) );
  CKMUX2D0BWP12T30P140 U125 ( .I0(down_pcmleft[14]), .I1(wbm_dat_i[26]), .S(
        n26), .Z(n83) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(down_pcmleft[19]), .I1(wbm_dat_i[31]), .S(
        n26), .Z(n87) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(down_pcmright[4]), .I1(wbm_dat_i[0]), .S(n28), .Z(n89) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(down_pcmright[5]), .I1(wbm_dat_i[1]), .S(n26), .Z(n90) );
  CKMUX2D0BWP12T30P140 U129 ( .I0(down_pcmright[7]), .I1(wbm_dat_i[3]), .S(n26), .Z(n92) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(down_pcmright[13]), .I1(wbm_dat_i[9]), .S(
        n28), .Z(n98) );
  CKMUX2D0BWP12T30P140 U131 ( .I0(down_pcmleft[4]), .I1(wbm_dat_i[16]), .S(n28), .Z(n73) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(down_pcmleft[5]), .I1(wbm_dat_i[17]), .S(n26), .Z(n74) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(down_pcmleft[6]), .I1(wbm_dat_i[18]), .S(n28), .Z(n75) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(down_pcmleft[7]), .I1(wbm_dat_i[19]), .S(n26), .Z(n76) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(down_pcmleft[8]), .I1(wbm_dat_i[20]), .S(n28), .Z(n77) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(down_pcmleft[10]), .I1(wbm_dat_i[22]), .S(
        n28), .Z(n79) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(down_pcmleft[11]), .I1(wbm_dat_i[23]), .S(
        n26), .Z(n80) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(down_pcmright[6]), .I1(wbm_dat_i[2]), .S(n28), .Z(n91) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(down_pcmright[8]), .I1(wbm_dat_i[4]), .S(n28), .Z(n93) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(down_pcmright[9]), .I1(wbm_dat_i[5]), .S(n26), .Z(n94) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(down_pcmright[10]), .I1(wbm_dat_i[6]), .S(
        n28), .Z(n95) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(down_pcmright[11]), .I1(wbm_dat_i[7]), .S(
        n26), .Z(n96) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(down_pcmright[12]), .I1(wbm_dat_i[8]), .S(
        n26), .Z(n97) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(down_pcmright[14]), .I1(wbm_dat_i[10]), .S(
        n28), .Z(n99) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(down_pcmright[17]), .I1(wbm_dat_i[13]), .S(
        n28), .Z(n101) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(down_pcmright[18]), .I1(wbm_dat_i[14]), .S(
        n28), .Z(n102) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n28), .A2(n27), .B1(down_pcmleft_valid), 
        .B2(n28), .ZN(n104) );
  AN2D0BWP12T30P140 U148 ( .A1(n30), .A2(wbm_adr_o[1]), .Z(n71) );
  AO222D0BWP12T30P140 U149 ( .A1(n31), .A2(dmar_addr[0]), .B1(n30), .B2(
        wbm_adr_o[2]), .C1(n29), .C2(dmaw_addr[0]), .Z(n41) );
  AO222D0BWP12T30P140 U150 ( .A1(n31), .A2(dmar_addr[1]), .B1(n35), .B2(
        wbm_adr_o[3]), .C1(n34), .C2(dmaw_addr[1]), .Z(n42) );
  AO222D0BWP12T30P140 U151 ( .A1(n36), .A2(dmar_addr[2]), .B1(n30), .B2(
        wbm_adr_o[4]), .C1(n29), .C2(dmaw_addr[2]), .Z(n43) );
  AO222D0BWP12T30P140 U152 ( .A1(n36), .A2(dmar_addr[3]), .B1(n35), .B2(
        wbm_adr_o[5]), .C1(n34), .C2(dmaw_addr[3]), .Z(n44) );
  AO222D0BWP12T30P140 U153 ( .A1(n31), .A2(dmar_addr[4]), .B1(n30), .B2(
        wbm_adr_o[6]), .C1(n29), .C2(dmaw_addr[4]), .Z(n45) );
  AN3D0BWP12T30P140 U154 ( .A1(n33), .A2(n32), .A3(n109), .Z(up_en) );
  AO222D0BWP12T30P140 U155 ( .A1(n36), .A2(dmar_addr[5]), .B1(n35), .B2(
        wbm_adr_o[7]), .C1(n34), .C2(dmaw_addr[5]), .Z(n46) );
  CKBD0BWP12T30P140 U156 ( .I(sys_clk), .Z(n153) );
  CKBD0BWP12T30P140 U157 ( .I(sys_clk), .Z(n155) );
  CKBD0BWP12T30P140 U158 ( .I(sys_clk), .Z(n154) );
  NR2D0BWP12T30P140 U159 ( .A1(n39), .A2(n37), .ZN(dmar_next) );
  NR2D0BWP12T30P140 U160 ( .A1(n39), .A2(n38), .ZN(dmaw_next) );
  ND2D0BWP12T30P140 U161 ( .A1(down_next_frame), .A2(dmar_en), .ZN(n40) );
  AOI21D0BWP12T30P140 U162 ( .A1(n40), .A2(n109), .B(state[1]), .ZN(n108) );
  AOI211D0BWP12T30P140 U163 ( .A1(state[1]), .A2(n109), .B(state[2]), .C(n108), 
        .ZN(down_en) );
endmodule


module ac97 ( sys_clk, sys_rst, ac97_clk, ac97_rst_n, ac97_sin, ac97_sout, 
        ac97_sync, csr_a, csr_we, csr_di, csr_do, crrequest_irq, crreply_irq, 
        dmar_irq, dmaw_irq, wbm_adr_o, wbm_cti_o, wbm_we_o, wbm_cyc_o, 
        wbm_stb_o, wbm_ack_i, wbm_dat_i, wbm_dat_o );
  input [13:0] csr_a;
  input [31:0] csr_di;
  output [31:0] csr_do;
  output [31:0] wbm_adr_o;
  output [2:0] wbm_cti_o;
  input [31:0] wbm_dat_i;
  output [31:0] wbm_dat_o;
  input sys_clk, sys_rst, ac97_clk, ac97_rst_n, ac97_sin, csr_we, wbm_ack_i;
  output ac97_sout, ac97_sync, crrequest_irq, crreply_irq, dmar_irq, dmaw_irq,
         wbm_we_o, wbm_cyc_o, wbm_stb_o;
  wire   up_stb, up_ack, up_sync, up_sdata, down_stb, down_sync, down_sdata,
         down_en, down_next_frame, down_addr_valid, down_data_valid,
         down_pcmleft_valid, down_pcmright_valid, up_en, up_next_frame,
         up_frame_valid, up_addr_valid, up_data_valid, dmar_en, dmar_next,
         dmaw_en, dmaw_next, n4, n5, n6, n7, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23;
  wire   [19:0] down_addr;
  wire   [19:0] down_data;
  wire   [19:0] down_pcmleft;
  wire   [19:0] down_pcmright;
  wire   [19:0] up_data;
  wire   [19:0] up_pcmleft;
  wire   [19:0] up_pcmright;
  wire   [29:0] dmar_addr;
  wire   [15:0] dmar_remaining;
  wire   [29:0] dmaw_addr;
  wire   [15:0] dmaw_remaining;

  ac97_transceiver transceiver ( .sys_clk(n7), .sys_rst(n5), .ac97_clk(
        ac97_clk), .ac97_rst_n(ac97_rst_n), .ac97_sin(ac97_sin), .ac97_sout(
        ac97_sout), .ac97_sync(ac97_sync), .up_stb(up_stb), .up_ack(up_ack), 
        .up_sync(up_sync), .up_data(up_sdata), .down_stb(down_stb), 
        .down_sync(down_sync), .down_data(down_sdata) );
  ac97_framer framer ( .sys_clk(n7), .sys_rst(n5), .down_ready(n4), .down_stb(
        down_stb), .down_sync(down_sync), .down_data(down_sdata), .en(down_en), 
        .next_frame(down_next_frame), .addr_valid(down_addr_valid), .addr(
        down_addr), .data_valid(down_data_valid), .data(down_data), 
        .pcmleft_valid(down_pcmleft_valid), .pcmleft(down_pcmleft), 
        .pcmright_valid(down_pcmright_valid), .pcmright(down_pcmright) );
  ac97_deframer deframer ( .sys_clk(sys_clk), .sys_rst(n5), .up_stb(up_stb), 
        .up_ack(up_ack), .up_sync(up_sync), .up_data(up_sdata), .en(up_en), 
        .next_frame(up_next_frame), .frame_valid(up_frame_valid), .addr_valid(
        up_addr_valid), .addr({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20}), .data_valid(
        up_data_valid), .data(up_data), .pcmleft(up_pcmleft), .pcmright(
        up_pcmright) );
  ac97_ctlif_0 ctlif ( .sys_clk(n6), .sys_rst(n5), .csr_a(csr_a), .csr_we(
        csr_we), .csr_di(csr_di), .csr_do(csr_do), .crrequest_irq(
        crrequest_irq), .crreply_irq(crreply_irq), .dmar_irq(dmar_irq), 
        .dmaw_irq(dmaw_irq), .down_en(down_en), .down_next_frame(
        down_next_frame), .down_addr_valid(down_addr_valid), .down_addr(
        down_addr), .down_data_valid(down_data_valid), .down_data(down_data), 
        .up_en(up_en), .up_next_frame(up_next_frame), .up_frame_valid(
        up_frame_valid), .up_addr_valid(up_addr_valid), .up_data_valid(
        up_data_valid), .up_data(up_data), .dmar_en(dmar_en), .dmar_addr(
        dmar_addr), .dmar_remaining(dmar_remaining), .dmar_next(dmar_next), 
        .dmaw_en(dmaw_en), .dmaw_addr(dmaw_addr), .dmaw_remaining(
        dmaw_remaining), .dmaw_next(dmaw_next) );
  ac97_dma dma ( .sys_rst(sys_rst), .sys_clk(sys_clk), .wbm_adr_o(wbm_adr_o), 
        .wbm_cti_o({SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23}), .wbm_we_o(wbm_we_o), .wbm_cyc_o(wbm_cyc_o), 
        .wbm_stb_o(wbm_stb_o), .wbm_ack_i(wbm_ack_i), .wbm_dat_i(wbm_dat_i), 
        .wbm_dat_o(wbm_dat_o), .down_en(down_en), .down_next_frame(
        down_next_frame), .down_pcmleft_valid(down_pcmleft_valid), 
        .down_pcmleft(down_pcmleft), .down_pcmright_valid(down_pcmright_valid), 
        .down_pcmright(down_pcmright), .up_en(up_en), .up_next_frame(
        up_next_frame), .up_pcmleft(up_pcmleft), .up_pcmright(up_pcmright), 
        .dmar_en(dmar_en), .dmar_addr(dmar_addr), .dmar_remaining(
        dmar_remaining), .dmar_next(dmar_next), .dmaw_en(dmaw_en), .dmaw_addr(
        dmaw_addr), .dmaw_remaining(dmaw_remaining), .dmaw_next(dmaw_next) );
  TIEHBWP12T30P140 U2 ( .Z(n4) );
  INVD0BWP12T30P140 U3 ( .I(n4), .ZN(wbm_cti_o[0]) );
  INVD0BWP12T30P140 U4 ( .I(n4), .ZN(wbm_cti_o[1]) );
  INVD0BWP12T30P140 U5 ( .I(n4), .ZN(wbm_cti_o[2]) );
  CKBD0BWP12T30P140 U6 ( .I(sys_clk), .Z(n6) );
  CKBD0BWP12T30P140 U7 ( .I(sys_rst), .Z(n5) );
  CKBD0BWP12T30P140 U8 ( .I(sys_clk), .Z(n7) );
endmodule

