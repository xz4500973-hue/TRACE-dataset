/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:16:54 2026
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
  DFCNQD1BWP12T30P140 data_out_reg_reg_0_ ( .D(n238), .CP(clk_read), .CDN(n371), .Q(data_out[0]) );
  DFCNQD1BWP12T30P140 data_out_reg_reg_1_ ( .D(n232), .CP(clk_read), .CDN(n371), .Q(data_out[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_0_ ( .D(n230), .CP(n376), .CDN(n371), .Q(
        wr_ptr[0]) );
  DFCNQD1BWP12T30P140 rd_ptr_reg_4_ ( .D(n234), .CP(clk_read), .CDN(n371), .Q(
        rd_ptr[4]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_3_ ( .D(n228), .CP(n376), .CDN(n371), .Q(
        wr_ptr[3]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n102), .CP(n376), .Q(mem[123]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n103), .CP(n376), .Q(mem[122]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n105), .CP(n376), .Q(mem[120]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n110), .CP(n375), .Q(mem[115]) );
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
  DFQD2BWP12T30P140 mem_reg_19__1_ ( .D(n136), .CP(n373), .Q(mem[89]) );
  DFQD2BWP12T30P140 mem_reg_19__0_ ( .D(n137), .CP(n373), .Q(mem[88]) );
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
  DFQD2BWP12T30P140 mem_reg_34__0_ ( .D(n167), .CP(n372), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_35__1_ ( .D(n168), .CP(n373), .Q(mem[57]) );
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
  DFQD2BWP12T30P140 mem_reg_51__0_ ( .D(n201), .CP(n372), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_54__1_ ( .D(n206), .CP(n377), .Q(mem[19]) );
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
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n114), .CP(n375), .Q(mem[111]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n115), .CP(n375), .Q(mem[110]) );
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
  DFQD2BWP12T30P140 mem_reg_21__0_ ( .D(n141), .CP(n373), .Q(mem[84]) );
  DFQD2BWP12T30P140 mem_reg_24__1_ ( .D(n146), .CP(n372), .Q(mem[79]) );
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
  DFQD2BWP12T30P140 mem_reg_37__1_ ( .D(n172), .CP(n374), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_37__0_ ( .D(n173), .CP(n373), .Q(mem[52]) );
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
  DFQD2BWP12T30P140 mem_reg_56__0_ ( .D(n211), .CP(n375), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_57__1_ ( .D(n212), .CP(n374), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_57__0_ ( .D(n213), .CP(n373), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_60__1_ ( .D(n218), .CP(n377), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_61__1_ ( .D(n220), .CP(n377), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_63__1_ ( .D(n225), .CP(n377), .Q(mem[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_4_ ( .D(n227), .CP(n376), .CDN(n371), .Q(
        wr_ptr[4]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_1_ ( .D(n231), .CP(n376), .CDN(n371), .Q(
        wr_ptr[1]) );
  DFCNQD1BWP12T30P140 wr_ptr_reg_2_ ( .D(n229), .CP(n376), .CDN(n371), .Q(
        wr_ptr[2]) );
  DFQD2BWP12T30P140 mem_reg_46__1_ ( .D(n190), .CP(clk_write), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_47__1_ ( .D(n192), .CP(clk_write), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_47__0_ ( .D(n193), .CP(clk_write), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_54__0_ ( .D(n207), .CP(clk_write), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_55__0_ ( .D(n209), .CP(clk_write), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_63__0_ ( .D(n224), .CP(clk_write), .Q(mem[0]) );
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
  DFQD1BWP12T30P140 mem_reg_3__1_ ( .D(n104), .CP(n376), .Q(mem[121]) );
  DFQD1BWP12T30P140 mem_reg_18__0_ ( .D(n135), .CP(n373), .Q(mem[90]) );
  DFQD1BWP12T30P140 mem_reg_34__1_ ( .D(n166), .CP(n373), .Q(mem[59]) );
  DFQD1BWP12T30P140 mem_reg_51__1_ ( .D(n200), .CP(n373), .Q(mem[25]) );
  DFQD1BWP12T30P140 mem_reg_5__0_ ( .D(n109), .CP(n375), .Q(mem[116]) );
  DFQD1BWP12T30P140 mem_reg_21__1_ ( .D(n140), .CP(n373), .Q(mem[85]) );
  DFQD1BWP12T30P140 mem_reg_36__0_ ( .D(n171), .CP(n375), .Q(mem[54]) );
  DFQD1BWP12T30P140 mem_reg_56__1_ ( .D(n210), .CP(n377), .Q(mem[15]) );
  DFQD1BWP12T30P140 mem_reg_59__0_ ( .D(n217), .CP(clk_write), .Q(mem[8]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n223), .CP(clk_write), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(wr_ptr[0]), .ZN(n230) );
  INVD0BWP12T30P140 U4 ( .I(wr_ptr[4]), .ZN(n364) );
  INVD0BWP12T30P140 U5 ( .I(wr_ptr[1]), .ZN(n297) );
  OAI22D0BWP12T30P140 U6 ( .A1(rd_ptr[1]), .A2(n297), .B1(rd_ptr[4]), .B2(n364), .ZN(n2) );
  AOI221D0BWP12T30P140 U7 ( .A1(n364), .A2(rd_ptr[4]), .B1(n297), .B2(
        rd_ptr[1]), .C(n2), .ZN(n7) );
  INVD0BWP12T30P140 U8 ( .I(wr_ptr[5]), .ZN(n370) );
  OAI22D0BWP12T30P140 U9 ( .A1(rd_ptr[0]), .A2(n230), .B1(rd_ptr[5]), .B2(n370), .ZN(n3) );
  AOI221D0BWP12T30P140 U10 ( .A1(n370), .A2(rd_ptr[5]), .B1(n230), .B2(
        rd_ptr[0]), .C(n3), .ZN(n6) );
  INVD0BWP12T30P140 U11 ( .I(wr_ptr[3]), .ZN(n365) );
  INVD0BWP12T30P140 U12 ( .I(wr_ptr[2]), .ZN(n322) );
  OAI22D0BWP12T30P140 U13 ( .A1(rd_ptr[2]), .A2(n322), .B1(rd_ptr[3]), .B2(
        n365), .ZN(n4) );
  AOI221D0BWP12T30P140 U14 ( .A1(n365), .A2(rd_ptr[3]), .B1(n322), .B2(
        rd_ptr[2]), .C(n4), .ZN(n5) );
  AN3D0BWP12T30P140 U15 ( .A1(n7), .A2(n6), .A3(n5), .Z(empty) );
  INVD0BWP12T30P140 U16 ( .I(rd_ptr[3]), .ZN(n28) );
  INVD0BWP12T30P140 U17 ( .I(rd_ptr[1]), .ZN(n11) );
  INR2D1BWP12T30P140 U18 ( .A1(read_en), .B1(empty), .ZN(n360) );
  ND2D0BWP12T30P140 U19 ( .A1(rd_ptr[0]), .A2(n360), .ZN(n359) );
  NR2D0BWP12T30P140 U20 ( .A1(n11), .A2(n359), .ZN(n358) );
  ND2D0BWP12T30P140 U21 ( .A1(rd_ptr[2]), .A2(n358), .ZN(n357) );
  NR2D0BWP12T30P140 U22 ( .A1(n28), .A2(n357), .ZN(n263) );
  AOI21D0BWP12T30P140 U23 ( .A1(n28), .A2(n357), .B(n263), .ZN(n235) );
  AOI21D0BWP12T30P140 U24 ( .A1(n11), .A2(n359), .B(n358), .ZN(n237) );
  INVD0BWP12T30P140 U25 ( .I(rd_ptr[4]), .ZN(n21) );
  NR2D0BWP12T30P140 U26 ( .A1(n28), .A2(n21), .ZN(n249) );
  ND2D0BWP12T30P140 U27 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n9) );
  INVD0BWP12T30P140 U28 ( .I(rd_ptr[2]), .ZN(n8) );
  NR2D0BWP12T30P140 U29 ( .A1(n9), .A2(n8), .ZN(n95) );
  INVD0BWP12T30P140 U30 ( .I(rd_ptr[0]), .ZN(n10) );
  NR3D0BWP12T30P140 U31 ( .A1(rd_ptr[1]), .A2(n10), .A3(n8), .ZN(n94) );
  AOI22D0BWP12T30P140 U32 ( .A1(n95), .A2(mem[64]), .B1(n94), .B2(mem[68]), 
        .ZN(n15) );
  NR3D0BWP12T30P140 U33 ( .A1(rd_ptr[0]), .A2(n11), .A3(n8), .ZN(n97) );
  NR3D0BWP12T30P140 U34 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n8), .ZN(n96) );
  AOI22D0BWP12T30P140 U35 ( .A1(n97), .A2(mem[66]), .B1(n96), .B2(mem[70]), 
        .ZN(n14) );
  NR2D0BWP12T30P140 U36 ( .A1(rd_ptr[2]), .A2(n9), .ZN(n241) );
  NR3D0BWP12T30P140 U37 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n10), .ZN(n240)
         );
  AOI22D0BWP12T30P140 U38 ( .A1(n241), .A2(mem[72]), .B1(n240), .B2(mem[76]), 
        .ZN(n13) );
  NR3D0BWP12T30P140 U39 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n11), .ZN(n243)
         );
  NR3D0BWP12T30P140 U40 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), .ZN(
        n242) );
  AOI22D0BWP12T30P140 U41 ( .A1(n243), .A2(mem[74]), .B1(n242), .B2(mem[78]), 
        .ZN(n12) );
  ND4D0BWP12T30P140 U42 ( .A1(n15), .A2(n14), .A3(n13), .A4(n12), .ZN(n16) );
  AOI21D0BWP12T30P140 U43 ( .A1(n249), .A2(n16), .B(rd_ptr[5]), .ZN(n59) );
  ND2D0BWP12T30P140 U44 ( .A1(n28), .A2(n21), .ZN(n253) );
  INVD0BWP12T30P140 U45 ( .I(n253), .ZN(n76) );
  AOI22D0BWP12T30P140 U46 ( .A1(n95), .A2(mem[112]), .B1(n94), .B2(mem[116]), 
        .ZN(n20) );
  AOI22D0BWP12T30P140 U47 ( .A1(n97), .A2(mem[114]), .B1(n96), .B2(mem[118]), 
        .ZN(n19) );
  AOI22D0BWP12T30P140 U48 ( .A1(n241), .A2(mem[120]), .B1(n240), .B2(mem[124]), 
        .ZN(n18) );
  AOI22D0BWP12T30P140 U49 ( .A1(n243), .A2(mem[122]), .B1(n242), .B2(mem[126]), 
        .ZN(n17) );
  ND4D0BWP12T30P140 U50 ( .A1(n20), .A2(n19), .A3(n18), .A4(n17), .ZN(n27) );
  NR2D0BWP12T30P140 U51 ( .A1(rd_ptr[3]), .A2(n21), .ZN(n251) );
  AOI22D0BWP12T30P140 U52 ( .A1(n95), .A2(mem[80]), .B1(n94), .B2(mem[84]), 
        .ZN(n25) );
  AOI22D0BWP12T30P140 U53 ( .A1(n97), .A2(mem[82]), .B1(n96), .B2(mem[86]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U54 ( .A1(n241), .A2(mem[88]), .B1(n240), .B2(mem[92]), 
        .ZN(n23) );
  AOI22D0BWP12T30P140 U55 ( .A1(n243), .A2(mem[90]), .B1(n242), .B2(mem[94]), 
        .ZN(n22) );
  ND4D0BWP12T30P140 U56 ( .A1(n25), .A2(n24), .A3(n23), .A4(n22), .ZN(n26) );
  AOI22D0BWP12T30P140 U57 ( .A1(n76), .A2(n27), .B1(n251), .B2(n26), .ZN(n58)
         );
  NR2D0BWP12T30P140 U58 ( .A1(rd_ptr[4]), .A2(n28), .ZN(n257) );
  AOI22D0BWP12T30P140 U59 ( .A1(n95), .A2(mem[96]), .B1(n94), .B2(mem[100]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U60 ( .A1(n97), .A2(mem[98]), .B1(n96), .B2(mem[102]), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U61 ( .A1(n241), .A2(mem[104]), .B1(n240), .B2(mem[108]), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U62 ( .A1(n243), .A2(mem[106]), .B1(n242), .B2(mem[110]), 
        .ZN(n29) );
  ND4D0BWP12T30P140 U63 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  ND2D0BWP12T30P140 U64 ( .A1(n257), .A2(n33), .ZN(n57) );
  AOI22D0BWP12T30P140 U65 ( .A1(n95), .A2(mem[32]), .B1(n94), .B2(mem[36]), 
        .ZN(n37) );
  AOI22D0BWP12T30P140 U66 ( .A1(n97), .A2(mem[34]), .B1(n96), .B2(mem[38]), 
        .ZN(n36) );
  AOI22D0BWP12T30P140 U67 ( .A1(n241), .A2(mem[40]), .B1(n240), .B2(mem[44]), 
        .ZN(n35) );
  AOI22D0BWP12T30P140 U68 ( .A1(n243), .A2(mem[42]), .B1(n242), .B2(mem[46]), 
        .ZN(n34) );
  ND4D0BWP12T30P140 U69 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .ZN(n55) );
  AOI22D0BWP12T30P140 U70 ( .A1(n95), .A2(mem[48]), .B1(n94), .B2(mem[52]), 
        .ZN(n41) );
  AOI22D0BWP12T30P140 U71 ( .A1(n97), .A2(mem[50]), .B1(n96), .B2(mem[54]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U72 ( .A1(n241), .A2(mem[56]), .B1(n240), .B2(mem[60]), 
        .ZN(n39) );
  AOI22D0BWP12T30P140 U73 ( .A1(n243), .A2(mem[58]), .B1(n242), .B2(mem[62]), 
        .ZN(n38) );
  AN4D0BWP12T30P140 U74 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .Z(n53) );
  AOI22D0BWP12T30P140 U75 ( .A1(n95), .A2(mem[16]), .B1(n94), .B2(mem[20]), 
        .ZN(n45) );
  AOI22D0BWP12T30P140 U76 ( .A1(n97), .A2(mem[18]), .B1(n96), .B2(mem[22]), 
        .ZN(n44) );
  AOI22D0BWP12T30P140 U77 ( .A1(n241), .A2(mem[24]), .B1(n240), .B2(mem[28]), 
        .ZN(n43) );
  AOI22D0BWP12T30P140 U78 ( .A1(n243), .A2(mem[26]), .B1(n242), .B2(mem[30]), 
        .ZN(n42) );
  ND4D0BWP12T30P140 U79 ( .A1(n45), .A2(n44), .A3(n43), .A4(n42), .ZN(n51) );
  AOI22D0BWP12T30P140 U80 ( .A1(n95), .A2(mem[0]), .B1(n94), .B2(mem[4]), .ZN(
        n49) );
  AOI22D0BWP12T30P140 U81 ( .A1(n97), .A2(mem[2]), .B1(n96), .B2(mem[6]), .ZN(
        n48) );
  AOI22D0BWP12T30P140 U82 ( .A1(n241), .A2(mem[8]), .B1(n240), .B2(mem[12]), 
        .ZN(n47) );
  AOI22D0BWP12T30P140 U83 ( .A1(n243), .A2(mem[10]), .B1(n242), .B2(mem[14]), 
        .ZN(n46) );
  ND4D0BWP12T30P140 U84 ( .A1(n49), .A2(n48), .A3(n47), .A4(n46), .ZN(n50) );
  AOI22D0BWP12T30P140 U85 ( .A1(n251), .A2(n51), .B1(n249), .B2(n50), .ZN(n52)
         );
  OAI211D0BWP12T30P140 U86 ( .A1(n53), .A2(n253), .B(rd_ptr[5]), .C(n52), .ZN(
        n54) );
  AOI21D0BWP12T30P140 U87 ( .A1(n257), .A2(n55), .B(n54), .ZN(n56) );
  AOI31D0BWP12T30P140 U88 ( .A1(n59), .A2(n58), .A3(n57), .B(n56), .ZN(n60) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(data_out[0]), .I1(n60), .S(n360), .Z(n238) );
  AOI22D0BWP12T30P140 U90 ( .A1(n95), .A2(mem[65]), .B1(n94), .B2(mem[69]), 
        .ZN(n64) );
  AOI22D0BWP12T30P140 U91 ( .A1(n97), .A2(mem[67]), .B1(n96), .B2(mem[71]), 
        .ZN(n63) );
  AOI22D0BWP12T30P140 U92 ( .A1(n241), .A2(mem[73]), .B1(n240), .B2(mem[77]), 
        .ZN(n62) );
  AOI22D0BWP12T30P140 U93 ( .A1(n243), .A2(mem[75]), .B1(n242), .B2(mem[79]), 
        .ZN(n61) );
  ND4D0BWP12T30P140 U94 ( .A1(n64), .A2(n63), .A3(n62), .A4(n61), .ZN(n65) );
  AOI21D0BWP12T30P140 U95 ( .A1(n249), .A2(n65), .B(rd_ptr[5]), .ZN(n261) );
  AOI22D0BWP12T30P140 U96 ( .A1(n95), .A2(mem[113]), .B1(n94), .B2(mem[117]), 
        .ZN(n69) );
  AOI22D0BWP12T30P140 U97 ( .A1(n97), .A2(mem[115]), .B1(n96), .B2(mem[119]), 
        .ZN(n68) );
  AOI22D0BWP12T30P140 U98 ( .A1(n241), .A2(mem[121]), .B1(n240), .B2(mem[125]), 
        .ZN(n67) );
  AOI22D0BWP12T30P140 U99 ( .A1(n243), .A2(mem[123]), .B1(n242), .B2(mem[127]), 
        .ZN(n66) );
  ND4D0BWP12T30P140 U100 ( .A1(n69), .A2(n68), .A3(n67), .A4(n66), .ZN(n75) );
  AOI22D0BWP12T30P140 U101 ( .A1(n95), .A2(mem[81]), .B1(n94), .B2(mem[85]), 
        .ZN(n73) );
  AOI22D0BWP12T30P140 U102 ( .A1(n97), .A2(mem[83]), .B1(n96), .B2(mem[87]), 
        .ZN(n72) );
  AOI22D0BWP12T30P140 U103 ( .A1(n241), .A2(mem[89]), .B1(n240), .B2(mem[93]), 
        .ZN(n71) );
  AOI22D0BWP12T30P140 U104 ( .A1(n243), .A2(mem[91]), .B1(n242), .B2(mem[95]), 
        .ZN(n70) );
  ND4D0BWP12T30P140 U105 ( .A1(n73), .A2(n72), .A3(n71), .A4(n70), .ZN(n74) );
  AOI22D0BWP12T30P140 U106 ( .A1(n76), .A2(n75), .B1(n251), .B2(n74), .ZN(n260) );
  AOI22D0BWP12T30P140 U107 ( .A1(n95), .A2(mem[97]), .B1(n94), .B2(mem[101]), 
        .ZN(n80) );
  AOI22D0BWP12T30P140 U108 ( .A1(n97), .A2(mem[99]), .B1(n96), .B2(mem[103]), 
        .ZN(n79) );
  AOI22D0BWP12T30P140 U109 ( .A1(n241), .A2(mem[105]), .B1(n240), .B2(mem[109]), .ZN(n78) );
  AOI22D0BWP12T30P140 U110 ( .A1(n243), .A2(mem[107]), .B1(n242), .B2(mem[111]), .ZN(n77) );
  ND4D0BWP12T30P140 U111 ( .A1(n80), .A2(n79), .A3(n78), .A4(n77), .ZN(n81) );
  ND2D0BWP12T30P140 U112 ( .A1(n257), .A2(n81), .ZN(n259) );
  AOI22D0BWP12T30P140 U113 ( .A1(n95), .A2(mem[33]), .B1(n94), .B2(mem[37]), 
        .ZN(n85) );
  AOI22D0BWP12T30P140 U114 ( .A1(n97), .A2(mem[35]), .B1(n96), .B2(mem[39]), 
        .ZN(n84) );
  AOI22D0BWP12T30P140 U115 ( .A1(n241), .A2(mem[41]), .B1(n240), .B2(mem[45]), 
        .ZN(n83) );
  AOI22D0BWP12T30P140 U116 ( .A1(n243), .A2(mem[43]), .B1(n242), .B2(mem[47]), 
        .ZN(n82) );
  ND4D0BWP12T30P140 U117 ( .A1(n85), .A2(n84), .A3(n83), .A4(n82), .ZN(n256)
         );
  AOI22D0BWP12T30P140 U118 ( .A1(n95), .A2(mem[49]), .B1(n94), .B2(mem[53]), 
        .ZN(n89) );
  AOI22D0BWP12T30P140 U119 ( .A1(n97), .A2(mem[51]), .B1(n96), .B2(mem[55]), 
        .ZN(n88) );
  AOI22D0BWP12T30P140 U120 ( .A1(n241), .A2(mem[57]), .B1(n240), .B2(mem[61]), 
        .ZN(n87) );
  AOI22D0BWP12T30P140 U121 ( .A1(n243), .A2(mem[59]), .B1(n242), .B2(mem[63]), 
        .ZN(n86) );
  AN4D0BWP12T30P140 U122 ( .A1(n89), .A2(n88), .A3(n87), .A4(n86), .Z(n254) );
  AOI22D0BWP12T30P140 U123 ( .A1(n95), .A2(mem[17]), .B1(n94), .B2(mem[21]), 
        .ZN(n93) );
  AOI22D0BWP12T30P140 U124 ( .A1(n97), .A2(mem[19]), .B1(n96), .B2(mem[23]), 
        .ZN(n92) );
  AOI22D0BWP12T30P140 U125 ( .A1(n241), .A2(mem[25]), .B1(n240), .B2(mem[29]), 
        .ZN(n91) );
  AOI22D0BWP12T30P140 U126 ( .A1(n243), .A2(mem[27]), .B1(n242), .B2(mem[31]), 
        .ZN(n90) );
  ND4D0BWP12T30P140 U127 ( .A1(n93), .A2(n92), .A3(n91), .A4(n90), .ZN(n250)
         );
  AOI22D0BWP12T30P140 U128 ( .A1(n95), .A2(mem[1]), .B1(n94), .B2(mem[5]), 
        .ZN(n247) );
  AOI22D0BWP12T30P140 U129 ( .A1(n97), .A2(mem[3]), .B1(n96), .B2(mem[7]), 
        .ZN(n246) );
  AOI22D0BWP12T30P140 U130 ( .A1(n241), .A2(mem[9]), .B1(n240), .B2(mem[13]), 
        .ZN(n245) );
  AOI22D0BWP12T30P140 U131 ( .A1(n243), .A2(mem[11]), .B1(n242), .B2(mem[15]), 
        .ZN(n244) );
  ND4D0BWP12T30P140 U132 ( .A1(n247), .A2(n246), .A3(n245), .A4(n244), .ZN(
        n248) );
  AOI22D0BWP12T30P140 U133 ( .A1(n251), .A2(n250), .B1(n249), .B2(n248), .ZN(
        n252) );
  OAI211D0BWP12T30P140 U134 ( .A1(n254), .A2(n253), .B(rd_ptr[5]), .C(n252), 
        .ZN(n255) );
  AOI21D0BWP12T30P140 U135 ( .A1(n257), .A2(n256), .B(n255), .ZN(n258) );
  AOI31D0BWP12T30P140 U136 ( .A1(n261), .A2(n260), .A3(n259), .B(n258), .ZN(
        n262) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(data_out[1]), .I1(n262), .S(n360), .Z(n232)
         );
  ND2D0BWP12T30P140 U138 ( .A1(rd_ptr[4]), .A2(n263), .ZN(n367) );
  OA21D0BWP12T30P140 U139 ( .A1(rd_ptr[4]), .A2(n263), .B(n367), .Z(n234) );
  NR2D0BWP12T30P140 U140 ( .A1(n297), .A2(n230), .ZN(n323) );
  ND2D0BWP12T30P140 U141 ( .A1(wr_ptr[2]), .A2(n323), .ZN(n363) );
  NR2D0BWP12T30P140 U142 ( .A1(n365), .A2(n363), .ZN(n366) );
  AOI21D0BWP12T30P140 U143 ( .A1(n365), .A2(n363), .B(n366), .ZN(n228) );
  ND3D0BWP12T30P140 U144 ( .A1(n230), .A2(n322), .A3(wr_ptr[1]), .ZN(n292) );
  NR3D0BWP12T30P140 U145 ( .A1(wr_ptr[3]), .A2(wr_ptr[4]), .A3(rst), .ZN(n280)
         );
  ND2D0BWP12T30P140 U146 ( .A1(n280), .A2(n370), .ZN(n299) );
  NR2D0BWP12T30P140 U147 ( .A1(n292), .A2(n299), .ZN(n264) );
  INVD0BWP12T30P140 U148 ( .I(data_in[1]), .ZN(n340) );
  CKBD0BWP12T30P140 U149 ( .I(n340), .Z(n361) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n264), .A2(n361), .B1(mem[123]), .B2(n264), 
        .ZN(n102) );
  INVD0BWP12T30P140 U151 ( .I(data_in[0]), .ZN(n312) );
  CKBD0BWP12T30P140 U152 ( .I(n312), .Z(n356) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n264), .A2(n356), .B1(mem[122]), .B2(n264), 
        .ZN(n103) );
  ND2D0BWP12T30P140 U154 ( .A1(n323), .A2(n322), .ZN(n321) );
  NR2D0BWP12T30P140 U155 ( .A1(n321), .A2(n299), .ZN(n265) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n265), .A2(n361), .B1(mem[121]), .B2(n265), 
        .ZN(n104) );
  MAOI22D0BWP12T30P140 U157 ( .A1(n265), .A2(n312), .B1(mem[120]), .B2(n265), 
        .ZN(n105) );
  ND3D0BWP12T30P140 U158 ( .A1(n230), .A2(wr_ptr[1]), .A3(wr_ptr[2]), .ZN(n294) );
  NR2D0BWP12T30P140 U159 ( .A1(n294), .A2(n299), .ZN(n266) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n266), .A2(n361), .B1(mem[115]), .B2(n266), 
        .ZN(n110) );
  MAOI22D0BWP12T30P140 U161 ( .A1(n266), .A2(n312), .B1(mem[114]), .B2(n266), 
        .ZN(n111) );
  NR2D0BWP12T30P140 U162 ( .A1(n363), .A2(n299), .ZN(n267) );
  MAOI22D0BWP12T30P140 U163 ( .A1(n267), .A2(n361), .B1(mem[113]), .B2(n267), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U164 ( .A1(n267), .A2(n312), .B1(mem[112]), .B2(n267), 
        .ZN(n113) );
  NR3D0BWP12T30P140 U165 ( .A1(wr_ptr[4]), .A2(rst), .A3(n365), .ZN(n285) );
  ND2D0BWP12T30P140 U166 ( .A1(n285), .A2(n370), .ZN(n304) );
  NR2D0BWP12T30P140 U167 ( .A1(n292), .A2(n304), .ZN(n268) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n268), .A2(n361), .B1(mem[107]), .B2(n268), 
        .ZN(n118) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n268), .A2(n312), .B1(mem[106]), .B2(n268), 
        .ZN(n119) );
  NR2D0BWP12T30P140 U170 ( .A1(n321), .A2(n304), .ZN(n269) );
  CKBD0BWP12T30P140 U171 ( .I(n340), .Z(n328) );
  MAOI22D0BWP12T30P140 U172 ( .A1(n269), .A2(n328), .B1(mem[105]), .B2(n269), 
        .ZN(n120) );
  MAOI22D0BWP12T30P140 U173 ( .A1(n269), .A2(n312), .B1(mem[104]), .B2(n269), 
        .ZN(n121) );
  NR2D0BWP12T30P140 U174 ( .A1(n294), .A2(n304), .ZN(n270) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n270), .A2(n328), .B1(mem[99]), .B2(n270), 
        .ZN(n126) );
  CKBD0BWP12T30P140 U176 ( .I(n312), .Z(n350) );
  MAOI22D0BWP12T30P140 U177 ( .A1(n270), .A2(n350), .B1(mem[98]), .B2(n270), 
        .ZN(n127) );
  NR2D0BWP12T30P140 U178 ( .A1(n363), .A2(n304), .ZN(n271) );
  MAOI22D0BWP12T30P140 U179 ( .A1(n271), .A2(n328), .B1(mem[97]), .B2(n271), 
        .ZN(n128) );
  MAOI22D0BWP12T30P140 U180 ( .A1(n271), .A2(n356), .B1(mem[96]), .B2(n271), 
        .ZN(n129) );
  NR3D0BWP12T30P140 U181 ( .A1(wr_ptr[3]), .A2(rst), .A3(n364), .ZN(n288) );
  ND2D0BWP12T30P140 U182 ( .A1(n288), .A2(n370), .ZN(n309) );
  NR2D0BWP12T30P140 U183 ( .A1(n292), .A2(n309), .ZN(n272) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n272), .A2(n328), .B1(mem[91]), .B2(n272), 
        .ZN(n134) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n272), .A2(n350), .B1(mem[90]), .B2(n272), 
        .ZN(n135) );
  NR2D0BWP12T30P140 U186 ( .A1(n321), .A2(n309), .ZN(n273) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n273), .A2(n328), .B1(mem[89]), .B2(n273), 
        .ZN(n136) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n273), .A2(n356), .B1(mem[88]), .B2(n273), 
        .ZN(n137) );
  NR2D0BWP12T30P140 U189 ( .A1(n294), .A2(n309), .ZN(n274) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n274), .A2(n328), .B1(mem[83]), .B2(n274), 
        .ZN(n142) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n274), .A2(n350), .B1(mem[82]), .B2(n274), 
        .ZN(n143) );
  NR2D0BWP12T30P140 U192 ( .A1(n363), .A2(n309), .ZN(n275) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n275), .A2(n328), .B1(mem[81]), .B2(n275), 
        .ZN(n144) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n275), .A2(n356), .B1(mem[80]), .B2(n275), 
        .ZN(n145) );
  NR3D0BWP12T30P140 U195 ( .A1(rst), .A2(n364), .A3(n365), .ZN(n291) );
  ND2D0BWP12T30P140 U196 ( .A1(n291), .A2(n370), .ZN(n315) );
  NR2D0BWP12T30P140 U197 ( .A1(n292), .A2(n315), .ZN(n276) );
  CKBD0BWP12T30P140 U198 ( .I(n340), .Z(n337) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n276), .A2(n337), .B1(mem[75]), .B2(n276), 
        .ZN(n150) );
  CKBD0BWP12T30P140 U200 ( .I(n312), .Z(n345) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n276), .A2(n345), .B1(mem[74]), .B2(n276), 
        .ZN(n151) );
  NR2D0BWP12T30P140 U202 ( .A1(n321), .A2(n315), .ZN(n277) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n277), .A2(n337), .B1(mem[73]), .B2(n277), 
        .ZN(n152) );
  MAOI22D0BWP12T30P140 U204 ( .A1(n277), .A2(n345), .B1(mem[72]), .B2(n277), 
        .ZN(n153) );
  NR2D0BWP12T30P140 U205 ( .A1(n294), .A2(n315), .ZN(n278) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n278), .A2(n337), .B1(mem[67]), .B2(n278), 
        .ZN(n158) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n278), .A2(n345), .B1(mem[66]), .B2(n278), 
        .ZN(n159) );
  NR2D0BWP12T30P140 U208 ( .A1(n363), .A2(n315), .ZN(n279) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n279), .A2(n337), .B1(mem[65]), .B2(n279), 
        .ZN(n160) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n279), .A2(n345), .B1(mem[64]), .B2(n279), 
        .ZN(n161) );
  ND2D0BWP12T30P140 U211 ( .A1(wr_ptr[5]), .A2(n280), .ZN(n320) );
  NR2D0BWP12T30P140 U212 ( .A1(n292), .A2(n320), .ZN(n281) );
  MAOI22D0BWP12T30P140 U213 ( .A1(n281), .A2(n337), .B1(mem[59]), .B2(n281), 
        .ZN(n166) );
  MAOI22D0BWP12T30P140 U214 ( .A1(n281), .A2(n345), .B1(mem[58]), .B2(n281), 
        .ZN(n167) );
  NR2D0BWP12T30P140 U215 ( .A1(n321), .A2(n320), .ZN(n282) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n282), .A2(n337), .B1(mem[57]), .B2(n282), 
        .ZN(n168) );
  MAOI22D0BWP12T30P140 U217 ( .A1(n282), .A2(n345), .B1(mem[56]), .B2(n282), 
        .ZN(n169) );
  NR2D0BWP12T30P140 U218 ( .A1(n294), .A2(n320), .ZN(n283) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n283), .A2(n337), .B1(mem[51]), .B2(n283), 
        .ZN(n174) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n283), .A2(n350), .B1(mem[50]), .B2(n283), 
        .ZN(n175) );
  NR2D0BWP12T30P140 U221 ( .A1(n363), .A2(n320), .ZN(n284) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n284), .A2(n340), .B1(mem[49]), .B2(n284), 
        .ZN(n176) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n284), .A2(n350), .B1(mem[48]), .B2(n284), 
        .ZN(n177) );
  ND2D0BWP12T30P140 U224 ( .A1(wr_ptr[5]), .A2(n285), .ZN(n339) );
  NR2D0BWP12T30P140 U225 ( .A1(n292), .A2(n339), .ZN(n286) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n286), .A2(n337), .B1(mem[43]), .B2(n286), 
        .ZN(n182) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n286), .A2(n350), .B1(mem[42]), .B2(n286), 
        .ZN(n183) );
  NR2D0BWP12T30P140 U228 ( .A1(n321), .A2(n339), .ZN(n287) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n287), .A2(n340), .B1(mem[41]), .B2(n287), 
        .ZN(n184) );
  MAOI22D0BWP12T30P140 U230 ( .A1(n287), .A2(n350), .B1(mem[40]), .B2(n287), 
        .ZN(n185) );
  NR2D0BWP12T30P140 U231 ( .A1(n294), .A2(n339), .ZN(n338) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n338), .A2(n350), .B1(mem[34]), .B2(n338), 
        .ZN(n191) );
  ND2D0BWP12T30P140 U233 ( .A1(wr_ptr[5]), .A2(n288), .ZN(n348) );
  NR2D0BWP12T30P140 U234 ( .A1(n292), .A2(n348), .ZN(n289) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n289), .A2(n340), .B1(mem[27]), .B2(n289), 
        .ZN(n198) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n289), .A2(n350), .B1(mem[26]), .B2(n289), 
        .ZN(n199) );
  NR2D0BWP12T30P140 U237 ( .A1(n321), .A2(n348), .ZN(n290) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n290), .A2(n340), .B1(mem[25]), .B2(n290), 
        .ZN(n200) );
  MAOI22D0BWP12T30P140 U239 ( .A1(n290), .A2(n356), .B1(mem[24]), .B2(n290), 
        .ZN(n201) );
  NR2D0BWP12T30P140 U240 ( .A1(n294), .A2(n348), .ZN(n342) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n342), .A2(n340), .B1(mem[19]), .B2(n342), 
        .ZN(n206) );
  NR2D0BWP12T30P140 U242 ( .A1(n363), .A2(n348), .ZN(n343) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n343), .A2(n340), .B1(mem[17]), .B2(n343), 
        .ZN(n208) );
  ND2D0BWP12T30P140 U244 ( .A1(wr_ptr[5]), .A2(n291), .ZN(n335) );
  NR2D0BWP12T30P140 U245 ( .A1(n335), .A2(n292), .ZN(n293) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n293), .A2(n340), .B1(mem[11]), .B2(n293), 
        .ZN(n214) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n293), .A2(n356), .B1(mem[10]), .B2(n293), 
        .ZN(n215) );
  NR2D0BWP12T30P140 U248 ( .A1(n335), .A2(n321), .ZN(n344) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n344), .A2(n361), .B1(mem[9]), .B2(n344), 
        .ZN(n216) );
  NR2D0BWP12T30P140 U250 ( .A1(n335), .A2(n294), .ZN(n355) );
  MAOI22D0BWP12T30P140 U251 ( .A1(n355), .A2(n328), .B1(mem[3]), .B2(n355), 
        .ZN(n222) );
  ND3D0BWP12T30P140 U252 ( .A1(n230), .A2(n297), .A3(n322), .ZN(n349) );
  NR2D0BWP12T30P140 U253 ( .A1(n349), .A2(n299), .ZN(n295) );
  MAOI22D0BWP12T30P140 U254 ( .A1(n295), .A2(n361), .B1(mem[127]), .B2(n295), 
        .ZN(n98) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n295), .A2(n345), .B1(mem[126]), .B2(n295), 
        .ZN(n99) );
  NR2D0BWP12T30P140 U256 ( .A1(wr_ptr[1]), .A2(n230), .ZN(n336) );
  ND2D0BWP12T30P140 U257 ( .A1(n336), .A2(n322), .ZN(n331) );
  NR2D0BWP12T30P140 U258 ( .A1(n331), .A2(n299), .ZN(n296) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n296), .A2(n361), .B1(mem[125]), .B2(n296), 
        .ZN(n100) );
  MAOI22D0BWP12T30P140 U260 ( .A1(n296), .A2(n350), .B1(mem[124]), .B2(n296), 
        .ZN(n101) );
  ND3D0BWP12T30P140 U261 ( .A1(n230), .A2(n297), .A3(wr_ptr[2]), .ZN(n333) );
  NR2D0BWP12T30P140 U262 ( .A1(n333), .A2(n299), .ZN(n298) );
  MAOI22D0BWP12T30P140 U263 ( .A1(n298), .A2(n361), .B1(mem[119]), .B2(n298), 
        .ZN(n106) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n298), .A2(n356), .B1(mem[118]), .B2(n298), 
        .ZN(n107) );
  ND2D0BWP12T30P140 U265 ( .A1(wr_ptr[2]), .A2(n336), .ZN(n334) );
  NR2D0BWP12T30P140 U266 ( .A1(n334), .A2(n299), .ZN(n300) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n300), .A2(n361), .B1(mem[117]), .B2(n300), 
        .ZN(n108) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n300), .A2(n312), .B1(mem[116]), .B2(n300), 
        .ZN(n109) );
  NR2D0BWP12T30P140 U269 ( .A1(n349), .A2(n304), .ZN(n301) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n301), .A2(n361), .B1(mem[111]), .B2(n301), 
        .ZN(n114) );
  MAOI22D0BWP12T30P140 U271 ( .A1(n301), .A2(n312), .B1(mem[110]), .B2(n301), 
        .ZN(n115) );
  NR2D0BWP12T30P140 U272 ( .A1(n331), .A2(n304), .ZN(n302) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n302), .A2(n361), .B1(mem[109]), .B2(n302), 
        .ZN(n116) );
  MAOI22D0BWP12T30P140 U274 ( .A1(n302), .A2(n312), .B1(mem[108]), .B2(n302), 
        .ZN(n117) );
  NR2D0BWP12T30P140 U275 ( .A1(n333), .A2(n304), .ZN(n303) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n303), .A2(n328), .B1(mem[103]), .B2(n303), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U277 ( .A1(n303), .A2(n312), .B1(mem[102]), .B2(n303), 
        .ZN(n123) );
  NR2D0BWP12T30P140 U278 ( .A1(n334), .A2(n304), .ZN(n305) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n305), .A2(n328), .B1(mem[101]), .B2(n305), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U280 ( .A1(n305), .A2(n345), .B1(mem[100]), .B2(n305), 
        .ZN(n125) );
  NR2D0BWP12T30P140 U281 ( .A1(n349), .A2(n309), .ZN(n306) );
  MAOI22D0BWP12T30P140 U282 ( .A1(n306), .A2(n328), .B1(mem[95]), .B2(n306), 
        .ZN(n130) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n306), .A2(n312), .B1(mem[94]), .B2(n306), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U284 ( .A1(n331), .A2(n309), .ZN(n307) );
  MAOI22D0BWP12T30P140 U285 ( .A1(n307), .A2(n328), .B1(mem[93]), .B2(n307), 
        .ZN(n132) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n307), .A2(n345), .B1(mem[92]), .B2(n307), 
        .ZN(n133) );
  NR2D0BWP12T30P140 U287 ( .A1(n333), .A2(n309), .ZN(n308) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n308), .A2(n328), .B1(mem[87]), .B2(n308), 
        .ZN(n138) );
  MAOI22D0BWP12T30P140 U289 ( .A1(n308), .A2(n312), .B1(mem[86]), .B2(n308), 
        .ZN(n139) );
  NR2D0BWP12T30P140 U290 ( .A1(n334), .A2(n309), .ZN(n310) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n310), .A2(n328), .B1(mem[85]), .B2(n310), 
        .ZN(n140) );
  MAOI22D0BWP12T30P140 U292 ( .A1(n310), .A2(n345), .B1(mem[84]), .B2(n310), 
        .ZN(n141) );
  NR2D0BWP12T30P140 U293 ( .A1(n349), .A2(n315), .ZN(n311) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n311), .A2(n337), .B1(mem[79]), .B2(n311), 
        .ZN(n146) );
  MAOI22D0BWP12T30P140 U295 ( .A1(n311), .A2(n312), .B1(mem[78]), .B2(n311), 
        .ZN(n147) );
  NR2D0BWP12T30P140 U296 ( .A1(n331), .A2(n315), .ZN(n313) );
  MAOI22D0BWP12T30P140 U297 ( .A1(n313), .A2(n337), .B1(mem[77]), .B2(n313), 
        .ZN(n148) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n313), .A2(n312), .B1(mem[76]), .B2(n313), 
        .ZN(n149) );
  NR2D0BWP12T30P140 U299 ( .A1(n333), .A2(n315), .ZN(n314) );
  MAOI22D0BWP12T30P140 U300 ( .A1(n314), .A2(n337), .B1(mem[71]), .B2(n314), 
        .ZN(n154) );
  MAOI22D0BWP12T30P140 U301 ( .A1(n314), .A2(n345), .B1(mem[70]), .B2(n314), 
        .ZN(n155) );
  NR2D0BWP12T30P140 U302 ( .A1(n334), .A2(n315), .ZN(n316) );
  MAOI22D0BWP12T30P140 U303 ( .A1(n316), .A2(n337), .B1(mem[69]), .B2(n316), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U304 ( .A1(n316), .A2(n345), .B1(mem[68]), .B2(n316), 
        .ZN(n157) );
  NR2D0BWP12T30P140 U305 ( .A1(n349), .A2(n320), .ZN(n317) );
  MAOI22D0BWP12T30P140 U306 ( .A1(n317), .A2(n337), .B1(mem[63]), .B2(n317), 
        .ZN(n162) );
  MAOI22D0BWP12T30P140 U307 ( .A1(n317), .A2(n345), .B1(mem[62]), .B2(n317), 
        .ZN(n163) );
  NR2D0BWP12T30P140 U308 ( .A1(n331), .A2(n320), .ZN(n318) );
  MAOI22D0BWP12T30P140 U309 ( .A1(n318), .A2(n337), .B1(mem[61]), .B2(n318), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U310 ( .A1(n318), .A2(n345), .B1(mem[60]), .B2(n318), 
        .ZN(n165) );
  NR2D0BWP12T30P140 U311 ( .A1(n333), .A2(n320), .ZN(n319) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n319), .A2(n337), .B1(mem[55]), .B2(n319), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U313 ( .A1(n319), .A2(n345), .B1(mem[54]), .B2(n319), 
        .ZN(n171) );
  NR2D0BWP12T30P140 U314 ( .A1(n334), .A2(n320), .ZN(n327) );
  MAOI22D0BWP12T30P140 U315 ( .A1(n327), .A2(n340), .B1(mem[53]), .B2(n327), 
        .ZN(n172) );
  OAI21D0BWP12T30P140 U316 ( .A1(n323), .A2(n322), .B(n321), .ZN(n229) );
  NR2D0BWP12T30P140 U317 ( .A1(n349), .A2(n339), .ZN(n347) );
  MAOI22D0BWP12T30P140 U318 ( .A1(n347), .A2(n361), .B1(mem[47]), .B2(n347), 
        .ZN(n178) );
  NR2D0BWP12T30P140 U319 ( .A1(n331), .A2(n339), .ZN(n324) );
  MAOI22D0BWP12T30P140 U320 ( .A1(n324), .A2(n328), .B1(mem[45]), .B2(n324), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U321 ( .A1(n324), .A2(n350), .B1(mem[44]), .B2(n324), 
        .ZN(n181) );
  NR2D0BWP12T30P140 U322 ( .A1(n333), .A2(n339), .ZN(n325) );
  MAOI22D0BWP12T30P140 U323 ( .A1(n325), .A2(n361), .B1(mem[39]), .B2(n325), 
        .ZN(n186) );
  MAOI22D0BWP12T30P140 U324 ( .A1(n325), .A2(n350), .B1(mem[38]), .B2(n325), 
        .ZN(n187) );
  NR2D0BWP12T30P140 U325 ( .A1(n334), .A2(n339), .ZN(n326) );
  MAOI22D0BWP12T30P140 U326 ( .A1(n326), .A2(n328), .B1(mem[37]), .B2(n326), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U327 ( .A1(n326), .A2(n350), .B1(mem[36]), .B2(n326), 
        .ZN(n189) );
  MAOI22D0BWP12T30P140 U328 ( .A1(n327), .A2(n345), .B1(mem[52]), .B2(n327), 
        .ZN(n173) );
  NR2D0BWP12T30P140 U329 ( .A1(n331), .A2(n348), .ZN(n329) );
  MAOI22D0BWP12T30P140 U330 ( .A1(n329), .A2(n328), .B1(mem[29]), .B2(n329), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U331 ( .A1(n329), .A2(n350), .B1(mem[28]), .B2(n329), 
        .ZN(n196) );
  NR2D0BWP12T30P140 U332 ( .A1(n333), .A2(n348), .ZN(n351) );
  MAOI22D0BWP12T30P140 U333 ( .A1(n351), .A2(n340), .B1(mem[23]), .B2(n351), 
        .ZN(n202) );
  NR2D0BWP12T30P140 U334 ( .A1(n334), .A2(n348), .ZN(n352) );
  MAOI22D0BWP12T30P140 U335 ( .A1(n352), .A2(n340), .B1(mem[21]), .B2(n352), 
        .ZN(n204) );
  NR2D0BWP12T30P140 U336 ( .A1(n335), .A2(n349), .ZN(n330) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n330), .A2(n340), .B1(mem[15]), .B2(n330), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U338 ( .A1(n330), .A2(n356), .B1(mem[14]), .B2(n330), 
        .ZN(n211) );
  NR2D0BWP12T30P140 U339 ( .A1(n335), .A2(n331), .ZN(n332) );
  MAOI22D0BWP12T30P140 U340 ( .A1(n332), .A2(n361), .B1(mem[13]), .B2(n332), 
        .ZN(n212) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n332), .A2(n356), .B1(mem[12]), .B2(n332), 
        .ZN(n213) );
  NR2D0BWP12T30P140 U342 ( .A1(n335), .A2(n333), .ZN(n353) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n353), .A2(n340), .B1(mem[7]), .B2(n353), 
        .ZN(n218) );
  NR2D0BWP12T30P140 U344 ( .A1(n335), .A2(n334), .ZN(n354) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n354), .A2(n361), .B1(mem[5]), .B2(n354), 
        .ZN(n220) );
  NR2D0BWP12T30P140 U346 ( .A1(n363), .A2(n335), .ZN(n346) );
  CKMUX2D0BWP12T30P140 U347 ( .I0(mem[1]), .I1(data_in[1]), .S(n346), .Z(n225)
         );
  AO21D0BWP12T30P140 U348 ( .A1(n230), .A2(wr_ptr[1]), .B(n336), .Z(n231) );
  MAOI22D0BWP12T30P140 U349 ( .A1(n338), .A2(n337), .B1(mem[35]), .B2(n338), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U350 ( .A1(n363), .A2(n339), .ZN(n341) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n341), .A2(n340), .B1(mem[33]), .B2(n341), 
        .ZN(n192) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n341), .A2(n350), .B1(mem[32]), .B2(n341), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n342), .A2(n356), .B1(mem[18]), .B2(n342), 
        .ZN(n207) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n343), .A2(n356), .B1(mem[16]), .B2(n343), 
        .ZN(n209) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n344), .A2(n356), .B1(mem[8]), .B2(n344), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n346), .A2(n345), .B1(mem[0]), .B2(n346), 
        .ZN(n224) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n347), .A2(n350), .B1(mem[46]), .B2(n347), 
        .ZN(n179) );
  NR2D0BWP12T30P140 U358 ( .A1(n349), .A2(n348), .ZN(n362) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n362), .A2(n350), .B1(mem[30]), .B2(n362), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n351), .A2(n356), .B1(mem[22]), .B2(n351), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n352), .A2(n356), .B1(mem[20]), .B2(n352), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n353), .A2(n356), .B1(mem[6]), .B2(n353), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n354), .A2(n356), .B1(mem[4]), .B2(n354), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n356), .A2(n355), .B1(n355), .B2(mem[2]), 
        .ZN(n223) );
  OA21D0BWP12T30P140 U365 ( .A1(rd_ptr[2]), .A2(n358), .B(n357), .Z(n236) );
  OA21D0BWP12T30P140 U366 ( .A1(rd_ptr[0]), .A2(n360), .B(n359), .Z(n239) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n362), .A2(n361), .B1(mem[31]), .B2(n362), 
        .ZN(n194) );
  CKBD0BWP12T30P140 U368 ( .I(clk_write), .Z(n372) );
  CKBD0BWP12T30P140 U369 ( .I(clk_write), .Z(n373) );
  CKBD0BWP12T30P140 U370 ( .I(clk_write), .Z(n374) );
  CKBD0BWP12T30P140 U371 ( .I(clk_write), .Z(n375) );
  CKBD0BWP12T30P140 U372 ( .I(clk_write), .Z(n376) );
  CKBD0BWP12T30P140 U373 ( .I(clk_write), .Z(n377) );
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
  DFQD2BWP12T30P140 mem_reg_14__0_ ( .D(n128), .CP(n382), .Q(mem[98]) );
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
  DFQD2BWP12T30P140 mem_reg_30__1_ ( .D(n159), .CP(n379), .Q(mem[67]) );
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
  DFQD2BWP12T30P140 mem_reg_54__1_ ( .D(n207), .CP(n381), .Q(mem[19]) );
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
  DFQD2BWP12T30P140 mem_reg_24__1_ ( .D(n147), .CP(n380), .Q(mem[79]) );
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
  DFQD2BWP12T30P140 mem_reg_40__1_ ( .D(n179), .CP(n379), .Q(mem[47]) );
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
  DFQD2BWP12T30P140 mem_reg_35__1_ ( .D(n169), .CP(n384), .Q(mem[57]) );
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
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n99), .CP(n384), .Q(mem[127]) );
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
  DFQD2BWP12T30P140 mem_reg_45__1_ ( .D(n189), .CP(n384), .Q(mem[37]) );
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
  DFQD1BWP12T30P140 mem_reg_14__1_ ( .D(n127), .CP(n382), .Q(mem[99]) );
  DFQD1BWP12T30P140 mem_reg_27__0_ ( .D(n154), .CP(n380), .Q(mem[72]) );
  DFQD1BWP12T30P140 mem_reg_51__0_ ( .D(n202), .CP(n381), .Q(mem[24]) );
  DFQD1BWP12T30P140 mem_reg_21__0_ ( .D(n142), .CP(n381), .Q(mem[84]) );
  DFQD1BWP12T30P140 mem_reg_37__0_ ( .D(n174), .CP(n380), .Q(mem[52]) );
  DFQD1BWP12T30P140 mem_reg_7__0_ ( .D(n114), .CP(n383), .Q(mem[112]) );
  DFQD1BWP12T30P140 mem_reg_63__0_ ( .D(n225), .CP(n385), .Q(mem[0]) );
  DFQD1BWP12T30P140 mem_reg_41__0_ ( .D(n182), .CP(n385), .Q(mem[44]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n224), .CP(n385), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(wr_ptr[5]), .ZN(n377) );
  INVD0BWP12T30P140 U4 ( .I(rst), .ZN(n378) );
  INVD0BWP12T30P140 U5 ( .I(wr_ptr[2]), .ZN(n78) );
  ND3D0BWP12T30P140 U6 ( .A1(n78), .A2(wr_ptr[1]), .A3(wr_ptr[0]), .ZN(n352)
         );
  INVD0BWP12T30P140 U7 ( .I(wr_ptr[4]), .ZN(n373) );
  INVD0BWP12T30P140 U8 ( .I(wr_ptr[3]), .ZN(n356) );
  ND3D0BWP12T30P140 U9 ( .A1(n378), .A2(n356), .A3(write_en), .ZN(n8) );
  NR2D0BWP12T30P140 U10 ( .A1(n373), .A2(n8), .ZN(n13) );
  ND2D0BWP12T30P140 U11 ( .A1(n13), .A2(n377), .ZN(n357) );
  NR2D0BWP12T30P140 U12 ( .A1(n352), .A2(n357), .ZN(n33) );
  INVD0BWP12T30P140 U13 ( .I(data_in[0]), .ZN(n367) );
  CKBD0BWP12T30P140 U14 ( .I(n367), .Z(n360) );
  MAOI22D0BWP12T30P140 U15 ( .A1(n33), .A2(n360), .B1(mem[88]), .B2(n33), .ZN(
        n138) );
  INVD0BWP12T30P140 U16 ( .I(wr_ptr[0]), .ZN(n75) );
  ND3D0BWP12T30P140 U17 ( .A1(n75), .A2(wr_ptr[2]), .A3(wr_ptr[1]), .ZN(n351)
         );
  NR2D0BWP12T30P140 U18 ( .A1(n351), .A2(n357), .ZN(n2) );
  INVD0BWP12T30P140 U19 ( .I(data_in[1]), .ZN(n349) );
  CKBD0BWP12T30P140 U20 ( .I(n349), .Z(n370) );
  MAOI22D0BWP12T30P140 U21 ( .A1(n2), .A2(n370), .B1(mem[83]), .B2(n2), .ZN(
        n143) );
  CKBD0BWP12T30P140 U22 ( .I(n367), .Z(n358) );
  MAOI22D0BWP12T30P140 U23 ( .A1(n2), .A2(n358), .B1(mem[82]), .B2(n2), .ZN(
        n144) );
  ND3D0BWP12T30P140 U24 ( .A1(wr_ptr[2]), .A2(wr_ptr[0]), .A3(wr_ptr[1]), .ZN(
        n359) );
  NR2D0BWP12T30P140 U25 ( .A1(n359), .A2(n357), .ZN(n3) );
  MAOI22D0BWP12T30P140 U26 ( .A1(n3), .A2(n370), .B1(mem[81]), .B2(n3), .ZN(
        n145) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n3), .A2(n360), .B1(mem[80]), .B2(n3), .ZN(
        n146) );
  ND3D0BWP12T30P140 U28 ( .A1(n75), .A2(n78), .A3(wr_ptr[1]), .ZN(n364) );
  ND3D0BWP12T30P140 U29 ( .A1(n378), .A2(write_en), .A3(wr_ptr[3]), .ZN(n10)
         );
  NR2D0BWP12T30P140 U30 ( .A1(n373), .A2(n10), .ZN(n46) );
  ND2D0BWP12T30P140 U31 ( .A1(n46), .A2(n377), .ZN(n26) );
  NR2D0BWP12T30P140 U32 ( .A1(n364), .A2(n26), .ZN(n4) );
  CKBD0BWP12T30P140 U33 ( .I(n349), .Z(n57) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n4), .A2(n57), .B1(mem[75]), .B2(n4), .ZN(
        n151) );
  CKBD0BWP12T30P140 U35 ( .I(n367), .Z(n49) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n4), .A2(n49), .B1(mem[74]), .B2(n4), .ZN(
        n152) );
  NR2D0BWP12T30P140 U37 ( .A1(n352), .A2(n26), .ZN(n5) );
  MAOI22D0BWP12T30P140 U38 ( .A1(n5), .A2(n57), .B1(mem[73]), .B2(n5), .ZN(
        n153) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n5), .A2(n49), .B1(mem[72]), .B2(n5), .ZN(
        n154) );
  NR2D0BWP12T30P140 U40 ( .A1(n351), .A2(n26), .ZN(n6) );
  MAOI22D0BWP12T30P140 U41 ( .A1(n6), .A2(n57), .B1(mem[67]), .B2(n6), .ZN(
        n159) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n6), .A2(n49), .B1(mem[66]), .B2(n6), .ZN(
        n160) );
  NR2D0BWP12T30P140 U43 ( .A1(n359), .A2(n26), .ZN(n7) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n7), .A2(n57), .B1(mem[65]), .B2(n7), .ZN(
        n161) );
  MAOI22D0BWP12T30P140 U45 ( .A1(n7), .A2(n49), .B1(mem[64]), .B2(n7), .ZN(
        n162) );
  NR2D0BWP12T30P140 U46 ( .A1(wr_ptr[4]), .A2(n8), .ZN(n34) );
  ND2D0BWP12T30P140 U47 ( .A1(wr_ptr[5]), .A2(n34), .ZN(n41) );
  NR2D0BWP12T30P140 U48 ( .A1(n364), .A2(n41), .ZN(n9) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n9), .A2(n57), .B1(mem[59]), .B2(n9), .ZN(
        n167) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n9), .A2(n49), .B1(mem[58]), .B2(n9), .ZN(
        n168) );
  NR2D0BWP12T30P140 U51 ( .A1(n351), .A2(n41), .ZN(n40) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n40), .A2(n57), .B1(mem[51]), .B2(n40), .ZN(
        n175) );
  NR2D0BWP12T30P140 U53 ( .A1(wr_ptr[4]), .A2(n10), .ZN(n16) );
  ND2D0BWP12T30P140 U54 ( .A1(wr_ptr[5]), .A2(n16), .ZN(n60) );
  NR2D0BWP12T30P140 U55 ( .A1(n364), .A2(n60), .ZN(n43) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n43), .A2(n358), .B1(mem[42]), .B2(n43), .ZN(
        n184) );
  NR2D0BWP12T30P140 U57 ( .A1(n352), .A2(n60), .ZN(n11) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n11), .A2(n349), .B1(mem[41]), .B2(n11), .ZN(
        n185) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n11), .A2(n358), .B1(mem[40]), .B2(n11), .ZN(
        n186) );
  NR2D0BWP12T30P140 U60 ( .A1(n351), .A2(n60), .ZN(n44) );
  MAOI22D0BWP12T30P140 U61 ( .A1(n44), .A2(n358), .B1(mem[34]), .B2(n44), .ZN(
        n192) );
  NR2D0BWP12T30P140 U62 ( .A1(n359), .A2(n60), .ZN(n12) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n12), .A2(n349), .B1(mem[33]), .B2(n12), .ZN(
        n193) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n12), .A2(n358), .B1(mem[32]), .B2(n12), .ZN(
        n194) );
  ND2D0BWP12T30P140 U65 ( .A1(wr_ptr[5]), .A2(n13), .ZN(n64) );
  NR2D0BWP12T30P140 U66 ( .A1(n352), .A2(n64), .ZN(n14) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n14), .A2(n349), .B1(mem[25]), .B2(n14), .ZN(
        n201) );
  MAOI22D0BWP12T30P140 U68 ( .A1(n14), .A2(n360), .B1(mem[24]), .B2(n14), .ZN(
        n202) );
  NR2D0BWP12T30P140 U69 ( .A1(n351), .A2(n64), .ZN(n15) );
  MAOI22D0BWP12T30P140 U70 ( .A1(n15), .A2(n349), .B1(mem[19]), .B2(n15), .ZN(
        n207) );
  MAOI22D0BWP12T30P140 U71 ( .A1(n15), .A2(n360), .B1(mem[18]), .B2(n15), .ZN(
        n208) );
  NR2D0BWP12T30P140 U72 ( .A1(n359), .A2(n64), .ZN(n345) );
  MAOI22D0BWP12T30P140 U73 ( .A1(n345), .A2(n349), .B1(mem[17]), .B2(n345), 
        .ZN(n209) );
  INVD0BWP12T30P140 U74 ( .I(wr_ptr[1]), .ZN(n83) );
  ND3D0BWP12T30P140 U75 ( .A1(n83), .A2(n75), .A3(wr_ptr[2]), .ZN(n68) );
  ND2D0BWP12T30P140 U76 ( .A1(n16), .A2(n377), .ZN(n363) );
  NR2D0BWP12T30P140 U77 ( .A1(n68), .A2(n363), .ZN(n17) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n17), .A2(n370), .B1(mem[103]), .B2(n17), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n17), .A2(n367), .B1(mem[102]), .B2(n17), 
        .ZN(n124) );
  ND3D0BWP12T30P140 U80 ( .A1(n83), .A2(wr_ptr[2]), .A3(wr_ptr[0]), .ZN(n70)
         );
  NR2D0BWP12T30P140 U81 ( .A1(n70), .A2(n363), .ZN(n18) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n18), .A2(n370), .B1(mem[101]), .B2(n18), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n18), .A2(n49), .B1(mem[100]), .B2(n18), .ZN(
        n126) );
  ND3D0BWP12T30P140 U84 ( .A1(n83), .A2(n75), .A3(n78), .ZN(n347) );
  NR2D0BWP12T30P140 U85 ( .A1(n347), .A2(n357), .ZN(n19) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n19), .A2(n370), .B1(mem[95]), .B2(n19), .ZN(
        n131) );
  MAOI22D0BWP12T30P140 U87 ( .A1(n19), .A2(n367), .B1(mem[94]), .B2(n19), .ZN(
        n132) );
  ND3D0BWP12T30P140 U88 ( .A1(n83), .A2(n78), .A3(wr_ptr[0]), .ZN(n66) );
  NR2D0BWP12T30P140 U89 ( .A1(n66), .A2(n357), .ZN(n20) );
  MAOI22D0BWP12T30P140 U90 ( .A1(n20), .A2(n370), .B1(mem[93]), .B2(n20), .ZN(
        n133) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n20), .A2(n49), .B1(mem[92]), .B2(n20), .ZN(
        n134) );
  NR2D0BWP12T30P140 U92 ( .A1(n68), .A2(n357), .ZN(n21) );
  MAOI22D0BWP12T30P140 U93 ( .A1(n21), .A2(n370), .B1(mem[87]), .B2(n21), .ZN(
        n139) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n21), .A2(n367), .B1(mem[86]), .B2(n21), .ZN(
        n140) );
  NR2D0BWP12T30P140 U95 ( .A1(n70), .A2(n357), .ZN(n22) );
  MAOI22D0BWP12T30P140 U96 ( .A1(n22), .A2(n370), .B1(mem[85]), .B2(n22), .ZN(
        n141) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n22), .A2(n49), .B1(mem[84]), .B2(n22), .ZN(
        n142) );
  NR2D0BWP12T30P140 U98 ( .A1(n347), .A2(n26), .ZN(n23) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n23), .A2(n57), .B1(mem[79]), .B2(n23), .ZN(
        n147) );
  MAOI22D0BWP12T30P140 U100 ( .A1(n23), .A2(n367), .B1(mem[78]), .B2(n23), 
        .ZN(n148) );
  NR2D0BWP12T30P140 U101 ( .A1(n66), .A2(n26), .ZN(n24) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n24), .A2(n57), .B1(mem[77]), .B2(n24), .ZN(
        n149) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n24), .A2(n367), .B1(mem[76]), .B2(n24), 
        .ZN(n150) );
  NR2D0BWP12T30P140 U104 ( .A1(n68), .A2(n26), .ZN(n25) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n25), .A2(n57), .B1(mem[71]), .B2(n25), .ZN(
        n155) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n25), .A2(n49), .B1(mem[70]), .B2(n25), .ZN(
        n156) );
  NR2D0BWP12T30P140 U107 ( .A1(n70), .A2(n26), .ZN(n27) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n27), .A2(n57), .B1(mem[69]), .B2(n27), .ZN(
        n157) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n27), .A2(n49), .B1(mem[68]), .B2(n27), .ZN(
        n158) );
  NR2D0BWP12T30P140 U110 ( .A1(n347), .A2(n41), .ZN(n28) );
  MAOI22D0BWP12T30P140 U111 ( .A1(n28), .A2(n57), .B1(mem[63]), .B2(n28), .ZN(
        n163) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n28), .A2(n49), .B1(mem[62]), .B2(n28), .ZN(
        n164) );
  NR2D0BWP12T30P140 U113 ( .A1(n66), .A2(n41), .ZN(n29) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n29), .A2(n57), .B1(mem[61]), .B2(n29), .ZN(
        n165) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n29), .A2(n49), .B1(mem[60]), .B2(n29), .ZN(
        n166) );
  NR2D0BWP12T30P140 U116 ( .A1(n68), .A2(n41), .ZN(n58) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n58), .A2(n49), .B1(mem[54]), .B2(n58), .ZN(
        n172) );
  NR2D0BWP12T30P140 U118 ( .A1(n70), .A2(n41), .ZN(n30) );
  MAOI22D0BWP12T30P140 U119 ( .A1(n30), .A2(n349), .B1(mem[53]), .B2(n30), 
        .ZN(n173) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n30), .A2(n49), .B1(mem[52]), .B2(n30), .ZN(
        n174) );
  NR2D0BWP12T30P140 U121 ( .A1(n347), .A2(n60), .ZN(n31) );
  CKBD0BWP12T30P140 U122 ( .I(n349), .Z(n365) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n31), .A2(n365), .B1(mem[47]), .B2(n31), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n31), .A2(n358), .B1(mem[46]), .B2(n31), 
        .ZN(n180) );
  NR2D0BWP12T30P140 U125 ( .A1(n68), .A2(n60), .ZN(n32) );
  MAOI22D0BWP12T30P140 U126 ( .A1(n32), .A2(n365), .B1(mem[39]), .B2(n32), 
        .ZN(n187) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n32), .A2(n358), .B1(mem[38]), .B2(n32), 
        .ZN(n188) );
  NR2D0BWP12T30P140 U128 ( .A1(n347), .A2(n64), .ZN(n62) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n62), .A2(n365), .B1(mem[31]), .B2(n62), 
        .ZN(n195) );
  NR2D0BWP12T30P140 U130 ( .A1(n66), .A2(n64), .ZN(n63) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n63), .A2(n370), .B1(mem[29]), .B2(n63), 
        .ZN(n198) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n33), .A2(n370), .B1(mem[89]), .B2(n33), 
        .ZN(n137) );
  NR2D0BWP12T30P140 U133 ( .A1(n70), .A2(n64), .ZN(n65) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n65), .A2(n360), .B1(mem[20]), .B2(n65), 
        .ZN(n206) );
  ND2D0BWP12T30P140 U135 ( .A1(n34), .A2(n377), .ZN(n53) );
  NR2D0BWP12T30P140 U136 ( .A1(n364), .A2(n53), .ZN(n35) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n35), .A2(n365), .B1(mem[123]), .B2(n35), 
        .ZN(n103) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n35), .A2(n360), .B1(mem[122]), .B2(n35), 
        .ZN(n104) );
  NR2D0BWP12T30P140 U139 ( .A1(n352), .A2(n53), .ZN(n36) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n36), .A2(n365), .B1(mem[121]), .B2(n36), 
        .ZN(n105) );
  MAOI22D0BWP12T30P140 U141 ( .A1(n36), .A2(n367), .B1(mem[120]), .B2(n36), 
        .ZN(n106) );
  NR2D0BWP12T30P140 U142 ( .A1(n351), .A2(n53), .ZN(n37) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n37), .A2(n365), .B1(mem[115]), .B2(n37), 
        .ZN(n111) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n37), .A2(n367), .B1(mem[114]), .B2(n37), 
        .ZN(n112) );
  NR2D0BWP12T30P140 U145 ( .A1(n359), .A2(n53), .ZN(n38) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n38), .A2(n365), .B1(mem[113]), .B2(n38), 
        .ZN(n113) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n38), .A2(n367), .B1(mem[112]), .B2(n38), 
        .ZN(n114) );
  NR2D0BWP12T30P140 U148 ( .A1(n352), .A2(n41), .ZN(n39) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n39), .A2(n57), .B1(mem[57]), .B2(n39), .ZN(
        n169) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n39), .A2(n49), .B1(mem[56]), .B2(n39), .ZN(
        n170) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n40), .A2(n358), .B1(mem[50]), .B2(n40), 
        .ZN(n176) );
  NR2D0BWP12T30P140 U152 ( .A1(n359), .A2(n41), .ZN(n42) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n42), .A2(n349), .B1(mem[49]), .B2(n42), 
        .ZN(n177) );
  MAOI22D0BWP12T30P140 U154 ( .A1(n42), .A2(n358), .B1(mem[48]), .B2(n42), 
        .ZN(n178) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n43), .A2(n57), .B1(mem[43]), .B2(n43), .ZN(
        n183) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n44), .A2(n57), .B1(mem[35]), .B2(n44), .ZN(
        n191) );
  NR2D0BWP12T30P140 U157 ( .A1(n364), .A2(n64), .ZN(n45) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n45), .A2(n349), .B1(mem[27]), .B2(n45), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n45), .A2(n358), .B1(mem[26]), .B2(n45), 
        .ZN(n200) );
  ND2D0BWP12T30P140 U160 ( .A1(wr_ptr[5]), .A2(n46), .ZN(n348) );
  NR2D0BWP12T30P140 U161 ( .A1(n348), .A2(n364), .ZN(n47) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n47), .A2(n349), .B1(mem[11]), .B2(n47), 
        .ZN(n215) );
  MAOI22D0BWP12T30P140 U163 ( .A1(n47), .A2(n360), .B1(mem[10]), .B2(n47), 
        .ZN(n216) );
  NR2D0BWP12T30P140 U164 ( .A1(n348), .A2(n352), .ZN(n48) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n48), .A2(n365), .B1(mem[9]), .B2(n48), .ZN(
        n217) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n48), .A2(n360), .B1(mem[8]), .B2(n48), .ZN(
        n218) );
  NR2D0BWP12T30P140 U167 ( .A1(n348), .A2(n351), .ZN(n72) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n72), .A2(n370), .B1(mem[3]), .B2(n72), .ZN(
        n223) );
  NR2D0BWP12T30P140 U169 ( .A1(n359), .A2(n348), .ZN(n361) );
  MAOI22D0BWP12T30P140 U170 ( .A1(n361), .A2(n49), .B1(mem[0]), .B2(n361), 
        .ZN(n225) );
  NR2D0BWP12T30P140 U171 ( .A1(n347), .A2(n53), .ZN(n50) );
  MAOI22D0BWP12T30P140 U172 ( .A1(n50), .A2(n365), .B1(mem[127]), .B2(n50), 
        .ZN(n99) );
  MAOI22D0BWP12T30P140 U173 ( .A1(n50), .A2(n49), .B1(mem[126]), .B2(n50), 
        .ZN(n100) );
  NR2D0BWP12T30P140 U174 ( .A1(n66), .A2(n53), .ZN(n51) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n51), .A2(n365), .B1(mem[125]), .B2(n51), 
        .ZN(n101) );
  MAOI22D0BWP12T30P140 U176 ( .A1(n51), .A2(n358), .B1(mem[124]), .B2(n51), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U177 ( .A1(n68), .A2(n53), .ZN(n52) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n52), .A2(n365), .B1(mem[119]), .B2(n52), 
        .ZN(n107) );
  MAOI22D0BWP12T30P140 U179 ( .A1(n52), .A2(n360), .B1(mem[118]), .B2(n52), 
        .ZN(n108) );
  NR2D0BWP12T30P140 U180 ( .A1(n70), .A2(n53), .ZN(n54) );
  MAOI22D0BWP12T30P140 U181 ( .A1(n54), .A2(n365), .B1(mem[117]), .B2(n54), 
        .ZN(n109) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n54), .A2(n367), .B1(mem[116]), .B2(n54), 
        .ZN(n110) );
  NR2D0BWP12T30P140 U183 ( .A1(n347), .A2(n363), .ZN(n55) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n55), .A2(n365), .B1(mem[111]), .B2(n55), 
        .ZN(n115) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n55), .A2(n367), .B1(mem[110]), .B2(n55), 
        .ZN(n116) );
  NR2D0BWP12T30P140 U186 ( .A1(n66), .A2(n363), .ZN(n56) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n56), .A2(n365), .B1(mem[109]), .B2(n56), 
        .ZN(n117) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n56), .A2(n367), .B1(mem[108]), .B2(n56), 
        .ZN(n118) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n58), .A2(n57), .B1(mem[55]), .B2(n58), .ZN(
        n171) );
  NR2D0BWP12T30P140 U190 ( .A1(n66), .A2(n60), .ZN(n59) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n59), .A2(n370), .B1(mem[45]), .B2(n59), 
        .ZN(n181) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n59), .A2(n358), .B1(mem[44]), .B2(n59), 
        .ZN(n182) );
  NR2D0BWP12T30P140 U193 ( .A1(n70), .A2(n60), .ZN(n61) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n61), .A2(n370), .B1(mem[37]), .B2(n61), 
        .ZN(n189) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n61), .A2(n358), .B1(mem[36]), .B2(n61), 
        .ZN(n190) );
  MAOI22D0BWP12T30P140 U196 ( .A1(n62), .A2(n358), .B1(mem[30]), .B2(n62), 
        .ZN(n196) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n63), .A2(n358), .B1(mem[28]), .B2(n63), 
        .ZN(n197) );
  NR2D0BWP12T30P140 U198 ( .A1(n68), .A2(n64), .ZN(n346) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n346), .A2(n360), .B1(mem[22]), .B2(n346), 
        .ZN(n204) );
  MAOI22D0BWP12T30P140 U200 ( .A1(n65), .A2(n349), .B1(mem[21]), .B2(n65), 
        .ZN(n205) );
  NR2D0BWP12T30P140 U201 ( .A1(n348), .A2(n66), .ZN(n67) );
  MAOI22D0BWP12T30P140 U202 ( .A1(n67), .A2(n365), .B1(mem[13]), .B2(n67), 
        .ZN(n213) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n67), .A2(n360), .B1(mem[12]), .B2(n67), 
        .ZN(n214) );
  NR2D0BWP12T30P140 U204 ( .A1(n348), .A2(n68), .ZN(n69) );
  MAOI22D0BWP12T30P140 U205 ( .A1(n69), .A2(n349), .B1(mem[7]), .B2(n69), .ZN(
        n219) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n69), .A2(n360), .B1(mem[6]), .B2(n69), .ZN(
        n220) );
  NR2D0BWP12T30P140 U207 ( .A1(n348), .A2(n70), .ZN(n71) );
  MAOI22D0BWP12T30P140 U208 ( .A1(n71), .A2(n365), .B1(mem[5]), .B2(n71), .ZN(
        n221) );
  MAOI22D0BWP12T30P140 U209 ( .A1(n71), .A2(n360), .B1(mem[4]), .B2(n71), .ZN(
        n222) );
  MAOI22D0BWP12T30P140 U210 ( .A1(n360), .A2(n72), .B1(n72), .B2(mem[2]), .ZN(
        n224) );
  ND2D0BWP12T30P140 U211 ( .A1(wr_ptr[0]), .A2(write_en), .ZN(n84) );
  NR2D0BWP12T30P140 U212 ( .A1(n83), .A2(n84), .ZN(n82) );
  INVD0BWP12T30P140 U213 ( .I(write_en), .ZN(n73) );
  OAI22D0BWP12T30P140 U214 ( .A1(n82), .A2(n78), .B1(n73), .B2(n352), .ZN(n230) );
  INVD0BWP12T30P140 U215 ( .I(rd_ptr[1]), .ZN(n93) );
  OAI22D0BWP12T30P140 U216 ( .A1(rd_ptr[1]), .A2(n83), .B1(rd_ptr[0]), .B2(n75), .ZN(n74) );
  AOI221D0BWP12T30P140 U217 ( .A1(n75), .A2(rd_ptr[0]), .B1(n83), .B2(
        rd_ptr[1]), .C(n74), .ZN(n81) );
  OAI22D0BWP12T30P140 U218 ( .A1(rd_ptr[4]), .A2(n373), .B1(rd_ptr[5]), .B2(
        n377), .ZN(n76) );
  AOI221D0BWP12T30P140 U219 ( .A1(n377), .A2(rd_ptr[5]), .B1(n373), .B2(
        rd_ptr[4]), .C(n76), .ZN(n80) );
  OAI22D0BWP12T30P140 U220 ( .A1(rd_ptr[2]), .A2(n78), .B1(rd_ptr[3]), .B2(
        n356), .ZN(n77) );
  AOI221D0BWP12T30P140 U221 ( .A1(n356), .A2(rd_ptr[3]), .B1(n78), .B2(
        rd_ptr[2]), .C(n77), .ZN(n79) );
  ND3D0BWP12T30P140 U222 ( .A1(n81), .A2(n80), .A3(n79), .ZN(n89) );
  ND2D0BWP12T30P140 U223 ( .A1(rd_ptr[0]), .A2(n89), .ZN(n87) );
  NR2D0BWP12T30P140 U224 ( .A1(n93), .A2(n87), .ZN(n86) );
  ND2D0BWP12T30P140 U225 ( .A1(rd_ptr[2]), .A2(n86), .ZN(n85) );
  OA21D0BWP12T30P140 U226 ( .A1(rd_ptr[2]), .A2(n86), .B(n85), .Z(n237) );
  AOI21D0BWP12T30P140 U227 ( .A1(n83), .A2(n84), .B(n82), .ZN(n232) );
  OA21D0BWP12T30P140 U228 ( .A1(n89), .A2(rd_ptr[0]), .B(n87), .Z(n240) );
  OA21D0BWP12T30P140 U229 ( .A1(wr_ptr[0]), .A2(write_en), .B(n84), .Z(n231)
         );
  INVD0BWP12T30P140 U230 ( .I(rd_ptr[3]), .ZN(n252) );
  NR2D0BWP12T30P140 U231 ( .A1(n252), .A2(n85), .ZN(n88) );
  AOI21D0BWP12T30P140 U232 ( .A1(n252), .A2(n85), .B(n88), .ZN(n236) );
  AOI21D0BWP12T30P140 U233 ( .A1(n93), .A2(n87), .B(n86), .ZN(n238) );
  ND2D0BWP12T30P140 U234 ( .A1(rd_ptr[4]), .A2(n88), .ZN(n374) );
  OA21D0BWP12T30P140 U235 ( .A1(rd_ptr[4]), .A2(n88), .B(n374), .Z(n235) );
  INVD0BWP12T30P140 U236 ( .I(n89), .ZN(empty) );
  INVD0BWP12T30P140 U237 ( .I(rd_ptr[4]), .ZN(n245) );
  NR2D0BWP12T30P140 U238 ( .A1(n252), .A2(n245), .ZN(n331) );
  ND2D0BWP12T30P140 U239 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n91) );
  INVD0BWP12T30P140 U240 ( .I(rd_ptr[2]), .ZN(n90) );
  NR2D0BWP12T30P140 U241 ( .A1(n91), .A2(n90), .ZN(n319) );
  INVD0BWP12T30P140 U242 ( .I(rd_ptr[0]), .ZN(n92) );
  NR3D0BWP12T30P140 U243 ( .A1(rd_ptr[1]), .A2(n92), .A3(n90), .ZN(n318) );
  AOI22D0BWP12T30P140 U244 ( .A1(n319), .A2(mem[65]), .B1(n318), .B2(mem[69]), 
        .ZN(n97) );
  NR3D0BWP12T30P140 U245 ( .A1(rd_ptr[0]), .A2(n93), .A3(n90), .ZN(n321) );
  NR3D0BWP12T30P140 U246 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n90), .ZN(n320)
         );
  AOI22D0BWP12T30P140 U247 ( .A1(n321), .A2(mem[67]), .B1(n320), .B2(mem[71]), 
        .ZN(n96) );
  NR2D0BWP12T30P140 U248 ( .A1(rd_ptr[2]), .A2(n91), .ZN(n323) );
  NR3D0BWP12T30P140 U249 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n92), .ZN(n322)
         );
  AOI22D0BWP12T30P140 U250 ( .A1(n323), .A2(mem[73]), .B1(n322), .B2(mem[77]), 
        .ZN(n95) );
  NR3D0BWP12T30P140 U251 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n93), .ZN(n325)
         );
  NR3D0BWP12T30P140 U252 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), 
        .ZN(n324) );
  AOI22D0BWP12T30P140 U253 ( .A1(n325), .A2(mem[75]), .B1(n324), .B2(mem[79]), 
        .ZN(n94) );
  ND4D0BWP12T30P140 U254 ( .A1(n97), .A2(n96), .A3(n95), .A4(n94), .ZN(n98) );
  AOI21D0BWP12T30P140 U255 ( .A1(n331), .A2(n98), .B(rd_ptr[5]), .ZN(n283) );
  ND2D0BWP12T30P140 U256 ( .A1(n252), .A2(n245), .ZN(n335) );
  INVD0BWP12T30P140 U257 ( .I(n335), .ZN(n300) );
  AOI22D0BWP12T30P140 U258 ( .A1(n319), .A2(mem[113]), .B1(n318), .B2(mem[117]), .ZN(n244) );
  AOI22D0BWP12T30P140 U259 ( .A1(n321), .A2(mem[115]), .B1(n320), .B2(mem[119]), .ZN(n243) );
  AOI22D0BWP12T30P140 U260 ( .A1(n323), .A2(mem[121]), .B1(n322), .B2(mem[125]), .ZN(n242) );
  AOI22D0BWP12T30P140 U261 ( .A1(n325), .A2(mem[123]), .B1(n324), .B2(mem[127]), .ZN(n241) );
  ND4D0BWP12T30P140 U262 ( .A1(n244), .A2(n243), .A3(n242), .A4(n241), .ZN(
        n251) );
  NR2D0BWP12T30P140 U263 ( .A1(rd_ptr[3]), .A2(n245), .ZN(n333) );
  AOI22D0BWP12T30P140 U264 ( .A1(n319), .A2(mem[81]), .B1(n318), .B2(mem[85]), 
        .ZN(n249) );
  AOI22D0BWP12T30P140 U265 ( .A1(n321), .A2(mem[83]), .B1(n320), .B2(mem[87]), 
        .ZN(n248) );
  AOI22D0BWP12T30P140 U266 ( .A1(n323), .A2(mem[89]), .B1(n322), .B2(mem[93]), 
        .ZN(n247) );
  AOI22D0BWP12T30P140 U267 ( .A1(n325), .A2(mem[91]), .B1(n324), .B2(mem[95]), 
        .ZN(n246) );
  ND4D0BWP12T30P140 U268 ( .A1(n249), .A2(n248), .A3(n247), .A4(n246), .ZN(
        n250) );
  AOI22D0BWP12T30P140 U269 ( .A1(n300), .A2(n251), .B1(n333), .B2(n250), .ZN(
        n282) );
  NR2D0BWP12T30P140 U270 ( .A1(rd_ptr[4]), .A2(n252), .ZN(n339) );
  AOI22D0BWP12T30P140 U271 ( .A1(n319), .A2(mem[97]), .B1(n318), .B2(mem[101]), 
        .ZN(n256) );
  AOI22D0BWP12T30P140 U272 ( .A1(n321), .A2(mem[99]), .B1(n320), .B2(mem[103]), 
        .ZN(n255) );
  AOI22D0BWP12T30P140 U273 ( .A1(n323), .A2(mem[105]), .B1(n322), .B2(mem[109]), .ZN(n254) );
  AOI22D0BWP12T30P140 U274 ( .A1(n325), .A2(mem[107]), .B1(n324), .B2(mem[111]), .ZN(n253) );
  ND4D0BWP12T30P140 U275 ( .A1(n256), .A2(n255), .A3(n254), .A4(n253), .ZN(
        n257) );
  ND2D0BWP12T30P140 U276 ( .A1(n339), .A2(n257), .ZN(n281) );
  AOI22D0BWP12T30P140 U277 ( .A1(n319), .A2(mem[33]), .B1(n318), .B2(mem[37]), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U278 ( .A1(n321), .A2(mem[35]), .B1(n320), .B2(mem[39]), 
        .ZN(n260) );
  AOI22D0BWP12T30P140 U279 ( .A1(n323), .A2(mem[41]), .B1(n322), .B2(mem[45]), 
        .ZN(n259) );
  AOI22D0BWP12T30P140 U280 ( .A1(n325), .A2(mem[43]), .B1(n324), .B2(mem[47]), 
        .ZN(n258) );
  ND4D0BWP12T30P140 U281 ( .A1(n261), .A2(n260), .A3(n259), .A4(n258), .ZN(
        n279) );
  AOI22D0BWP12T30P140 U282 ( .A1(n319), .A2(mem[49]), .B1(n318), .B2(mem[53]), 
        .ZN(n265) );
  AOI22D0BWP12T30P140 U283 ( .A1(n321), .A2(mem[51]), .B1(n320), .B2(mem[55]), 
        .ZN(n264) );
  AOI22D0BWP12T30P140 U284 ( .A1(n323), .A2(mem[57]), .B1(n322), .B2(mem[61]), 
        .ZN(n263) );
  AOI22D0BWP12T30P140 U285 ( .A1(n325), .A2(mem[59]), .B1(n324), .B2(mem[63]), 
        .ZN(n262) );
  AN4D0BWP12T30P140 U286 ( .A1(n265), .A2(n264), .A3(n263), .A4(n262), .Z(n277) );
  AOI22D0BWP12T30P140 U287 ( .A1(n319), .A2(mem[17]), .B1(n318), .B2(mem[21]), 
        .ZN(n269) );
  AOI22D0BWP12T30P140 U288 ( .A1(n321), .A2(mem[19]), .B1(n320), .B2(mem[23]), 
        .ZN(n268) );
  AOI22D0BWP12T30P140 U289 ( .A1(n323), .A2(mem[25]), .B1(n322), .B2(mem[29]), 
        .ZN(n267) );
  AOI22D0BWP12T30P140 U290 ( .A1(n325), .A2(mem[27]), .B1(n324), .B2(mem[31]), 
        .ZN(n266) );
  ND4D0BWP12T30P140 U291 ( .A1(n269), .A2(n268), .A3(n267), .A4(n266), .ZN(
        n275) );
  AOI22D0BWP12T30P140 U292 ( .A1(n319), .A2(mem[1]), .B1(n318), .B2(mem[5]), 
        .ZN(n273) );
  AOI22D0BWP12T30P140 U293 ( .A1(n321), .A2(mem[3]), .B1(n320), .B2(mem[7]), 
        .ZN(n272) );
  AOI22D0BWP12T30P140 U294 ( .A1(n323), .A2(mem[9]), .B1(n322), .B2(mem[13]), 
        .ZN(n271) );
  AOI22D0BWP12T30P140 U295 ( .A1(n325), .A2(mem[11]), .B1(n324), .B2(mem[15]), 
        .ZN(n270) );
  ND4D0BWP12T30P140 U296 ( .A1(n273), .A2(n272), .A3(n271), .A4(n270), .ZN(
        n274) );
  AOI22D0BWP12T30P140 U297 ( .A1(n333), .A2(n275), .B1(n331), .B2(n274), .ZN(
        n276) );
  OAI211D0BWP12T30P140 U298 ( .A1(n277), .A2(n335), .B(rd_ptr[5]), .C(n276), 
        .ZN(n278) );
  AOI21D0BWP12T30P140 U299 ( .A1(n339), .A2(n279), .B(n278), .ZN(n280) );
  AOI31D0BWP12T30P140 U300 ( .A1(n283), .A2(n282), .A3(n281), .B(n280), .ZN(
        n284) );
  CKMUX2D0BWP12T30P140 U301 ( .I0(n284), .I1(data_out[1]), .S(empty), .Z(n233)
         );
  AOI22D0BWP12T30P140 U302 ( .A1(n319), .A2(mem[64]), .B1(n318), .B2(mem[68]), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U303 ( .A1(n321), .A2(mem[66]), .B1(n320), .B2(mem[70]), 
        .ZN(n287) );
  AOI22D0BWP12T30P140 U304 ( .A1(n323), .A2(mem[72]), .B1(n322), .B2(mem[76]), 
        .ZN(n286) );
  AOI22D0BWP12T30P140 U305 ( .A1(n325), .A2(mem[74]), .B1(n324), .B2(mem[78]), 
        .ZN(n285) );
  ND4D0BWP12T30P140 U306 ( .A1(n288), .A2(n287), .A3(n286), .A4(n285), .ZN(
        n289) );
  AOI21D0BWP12T30P140 U307 ( .A1(n331), .A2(n289), .B(rd_ptr[5]), .ZN(n343) );
  AOI22D0BWP12T30P140 U308 ( .A1(n319), .A2(mem[112]), .B1(n318), .B2(mem[116]), .ZN(n293) );
  AOI22D0BWP12T30P140 U309 ( .A1(n321), .A2(mem[114]), .B1(n320), .B2(mem[118]), .ZN(n292) );
  AOI22D0BWP12T30P140 U310 ( .A1(n323), .A2(mem[120]), .B1(n322), .B2(mem[124]), .ZN(n291) );
  AOI22D0BWP12T30P140 U311 ( .A1(n325), .A2(mem[122]), .B1(n324), .B2(mem[126]), .ZN(n290) );
  ND4D0BWP12T30P140 U312 ( .A1(n293), .A2(n292), .A3(n291), .A4(n290), .ZN(
        n299) );
  AOI22D0BWP12T30P140 U313 ( .A1(n319), .A2(mem[80]), .B1(n318), .B2(mem[84]), 
        .ZN(n297) );
  AOI22D0BWP12T30P140 U314 ( .A1(n321), .A2(mem[82]), .B1(n320), .B2(mem[86]), 
        .ZN(n296) );
  AOI22D0BWP12T30P140 U315 ( .A1(n323), .A2(mem[88]), .B1(n322), .B2(mem[92]), 
        .ZN(n295) );
  AOI22D0BWP12T30P140 U316 ( .A1(n325), .A2(mem[90]), .B1(n324), .B2(mem[94]), 
        .ZN(n294) );
  ND4D0BWP12T30P140 U317 ( .A1(n297), .A2(n296), .A3(n295), .A4(n294), .ZN(
        n298) );
  AOI22D0BWP12T30P140 U318 ( .A1(n300), .A2(n299), .B1(n333), .B2(n298), .ZN(
        n342) );
  AOI22D0BWP12T30P140 U319 ( .A1(n319), .A2(mem[96]), .B1(n318), .B2(mem[100]), 
        .ZN(n304) );
  AOI22D0BWP12T30P140 U320 ( .A1(n321), .A2(mem[98]), .B1(n320), .B2(mem[102]), 
        .ZN(n303) );
  AOI22D0BWP12T30P140 U321 ( .A1(n323), .A2(mem[104]), .B1(n322), .B2(mem[108]), .ZN(n302) );
  AOI22D0BWP12T30P140 U322 ( .A1(n325), .A2(mem[106]), .B1(n324), .B2(mem[110]), .ZN(n301) );
  ND4D0BWP12T30P140 U323 ( .A1(n304), .A2(n303), .A3(n302), .A4(n301), .ZN(
        n305) );
  ND2D0BWP12T30P140 U324 ( .A1(n339), .A2(n305), .ZN(n341) );
  AOI22D0BWP12T30P140 U325 ( .A1(n319), .A2(mem[32]), .B1(n318), .B2(mem[36]), 
        .ZN(n309) );
  AOI22D0BWP12T30P140 U326 ( .A1(n321), .A2(mem[34]), .B1(n320), .B2(mem[38]), 
        .ZN(n308) );
  AOI22D0BWP12T30P140 U327 ( .A1(n323), .A2(mem[40]), .B1(n322), .B2(mem[44]), 
        .ZN(n307) );
  AOI22D0BWP12T30P140 U328 ( .A1(n325), .A2(mem[42]), .B1(n324), .B2(mem[46]), 
        .ZN(n306) );
  ND4D0BWP12T30P140 U329 ( .A1(n309), .A2(n308), .A3(n307), .A4(n306), .ZN(
        n338) );
  AOI22D0BWP12T30P140 U330 ( .A1(n319), .A2(mem[48]), .B1(n318), .B2(mem[52]), 
        .ZN(n313) );
  AOI22D0BWP12T30P140 U331 ( .A1(n321), .A2(mem[50]), .B1(n320), .B2(mem[54]), 
        .ZN(n312) );
  AOI22D0BWP12T30P140 U332 ( .A1(n323), .A2(mem[56]), .B1(n322), .B2(mem[60]), 
        .ZN(n311) );
  AOI22D0BWP12T30P140 U333 ( .A1(n325), .A2(mem[58]), .B1(n324), .B2(mem[62]), 
        .ZN(n310) );
  AN4D0BWP12T30P140 U334 ( .A1(n313), .A2(n312), .A3(n311), .A4(n310), .Z(n336) );
  AOI22D0BWP12T30P140 U335 ( .A1(n319), .A2(mem[16]), .B1(n318), .B2(mem[20]), 
        .ZN(n317) );
  AOI22D0BWP12T30P140 U336 ( .A1(n321), .A2(mem[18]), .B1(n320), .B2(mem[22]), 
        .ZN(n316) );
  AOI22D0BWP12T30P140 U337 ( .A1(n323), .A2(mem[24]), .B1(n322), .B2(mem[28]), 
        .ZN(n315) );
  AOI22D0BWP12T30P140 U338 ( .A1(n325), .A2(mem[26]), .B1(n324), .B2(mem[30]), 
        .ZN(n314) );
  ND4D0BWP12T30P140 U339 ( .A1(n317), .A2(n316), .A3(n315), .A4(n314), .ZN(
        n332) );
  AOI22D0BWP12T30P140 U340 ( .A1(n319), .A2(mem[0]), .B1(n318), .B2(mem[4]), 
        .ZN(n329) );
  AOI22D0BWP12T30P140 U341 ( .A1(n321), .A2(mem[2]), .B1(n320), .B2(mem[6]), 
        .ZN(n328) );
  AOI22D0BWP12T30P140 U342 ( .A1(n323), .A2(mem[8]), .B1(n322), .B2(mem[12]), 
        .ZN(n327) );
  AOI22D0BWP12T30P140 U343 ( .A1(n325), .A2(mem[10]), .B1(n324), .B2(mem[14]), 
        .ZN(n326) );
  ND4D0BWP12T30P140 U344 ( .A1(n329), .A2(n328), .A3(n327), .A4(n326), .ZN(
        n330) );
  AOI22D0BWP12T30P140 U345 ( .A1(n333), .A2(n332), .B1(n331), .B2(n330), .ZN(
        n334) );
  OAI211D0BWP12T30P140 U346 ( .A1(n336), .A2(n335), .B(rd_ptr[5]), .C(n334), 
        .ZN(n337) );
  AOI21D0BWP12T30P140 U347 ( .A1(n339), .A2(n338), .B(n337), .ZN(n340) );
  AOI31D0BWP12T30P140 U348 ( .A1(n343), .A2(n342), .A3(n341), .B(n340), .ZN(
        n344) );
  CKMUX2D0BWP12T30P140 U349 ( .I0(n344), .I1(data_out[0]), .S(empty), .Z(n239)
         );
  MAOI22D0BWP12T30P140 U350 ( .A1(n345), .A2(n360), .B1(mem[16]), .B2(n345), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n346), .A2(n349), .B1(mem[23]), .B2(n346), 
        .ZN(n203) );
  NR2D0BWP12T30P140 U352 ( .A1(n348), .A2(n347), .ZN(n350) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n350), .A2(n349), .B1(mem[15]), .B2(n350), 
        .ZN(n211) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n350), .A2(n360), .B1(mem[14]), .B2(n350), 
        .ZN(n212) );
  NR2D0BWP12T30P140 U355 ( .A1(n351), .A2(n363), .ZN(n362) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n362), .A2(n358), .B1(mem[98]), .B2(n362), 
        .ZN(n128) );
  NR2D0BWP12T30P140 U357 ( .A1(n352), .A2(n363), .ZN(n368) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n368), .A2(n370), .B1(mem[105]), .B2(n368), 
        .ZN(n121) );
  INVD0BWP12T30P140 U359 ( .I(n359), .ZN(n353) );
  ND2D0BWP12T30P140 U360 ( .A1(n353), .A2(write_en), .ZN(n355) );
  ND3D0BWP12T30P140 U361 ( .A1(wr_ptr[3]), .A2(n353), .A3(write_en), .ZN(n372)
         );
  INVD0BWP12T30P140 U362 ( .I(n372), .ZN(n354) );
  AOI21D0BWP12T30P140 U363 ( .A1(n356), .A2(n355), .B(n354), .ZN(n229) );
  NR2D0BWP12T30P140 U364 ( .A1(n364), .A2(n357), .ZN(n369) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n369), .A2(n358), .B1(mem[90]), .B2(n369), 
        .ZN(n136) );
  NR2D0BWP12T30P140 U366 ( .A1(n359), .A2(n363), .ZN(n371) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n371), .A2(n360), .B1(mem[96]), .B2(n371), 
        .ZN(n130) );
  CKMUX2D0BWP12T30P140 U368 ( .I0(mem[1]), .I1(data_in[1]), .S(n361), .Z(n226)
         );
  MAOI22D0BWP12T30P140 U369 ( .A1(n362), .A2(n370), .B1(mem[99]), .B2(n362), 
        .ZN(n127) );
  NR2D0BWP12T30P140 U370 ( .A1(n364), .A2(n363), .ZN(n366) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n366), .A2(n367), .B1(mem[106]), .B2(n366), 
        .ZN(n120) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n366), .A2(n365), .B1(mem[107]), .B2(n366), 
        .ZN(n119) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n368), .A2(n367), .B1(mem[104]), .B2(n368), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n369), .A2(n370), .B1(mem[91]), .B2(n369), 
        .ZN(n135) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n371), .A2(n370), .B1(mem[97]), .B2(n371), 
        .ZN(n129) );
  NR2D0BWP12T30P140 U376 ( .A1(n373), .A2(n372), .ZN(n376) );
  AOI21D0BWP12T30P140 U377 ( .A1(n373), .A2(n372), .B(n376), .ZN(n228) );
  CKBD0BWP12T30P140 U378 ( .I(clk_write), .Z(n385) );
  CKBD0BWP12T30P140 U379 ( .I(clk_write), .Z(n383) );
  CKBD0BWP12T30P140 U380 ( .I(clk_write), .Z(n384) );
  CKBD0BWP12T30P140 U381 ( .I(clk_write), .Z(n381) );
  CKBD0BWP12T30P140 U382 ( .I(clk_write), .Z(n382) );
  CKBD0BWP12T30P140 U383 ( .I(clk_write), .Z(n380) );
  CKBD0BWP12T30P140 U384 ( .I(clk_write), .Z(n379) );
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
  wire   in_slot, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129;
  wire   [7:0] bitcounter;

  DFQD2BWP12T30P140 down_data_reg ( .D(n114), .CP(sys_clk), .Q(down_data) );
  DFQD2BWP12T30P140 in_slot_reg ( .D(n115), .CP(sys_clk), .Q(in_slot) );
  DFQD2BWP12T30P140 bitcounter_reg_7_ ( .D(n106), .CP(sys_clk), .Q(
        bitcounter[7]) );
  DFQD2BWP12T30P140 bitcounter_reg_0_ ( .D(n113), .CP(sys_clk), .Q(
        bitcounter[0]) );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n105), .CP(sys_clk), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n108), .CP(sys_clk), .Q(
        bitcounter[5]) );
  DFQD2BWP12T30P140 bitcounter_reg_6_ ( .D(n107), .CP(sys_clk), .Q(
        bitcounter[6]) );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n112), .CP(sys_clk), .Q(
        bitcounter[1]) );
  DFQD2BWP12T30P140 down_sync_reg ( .D(n116), .CP(sys_clk), .Q(down_sync) );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n109), .CP(sys_clk), .Q(
        bitcounter[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_3_ ( .D(n110), .CP(sys_clk), .Q(
        bitcounter[3]) );
  DFQD1BWP12T30P140 bitcounter_reg_2_ ( .D(n111), .CP(sys_clk), .Q(
        bitcounter[2]) );
  CKBD0BWP12T30P140 U3 ( .I(en), .Z(down_stb) );
  INVD0BWP12T30P140 U4 ( .I(sys_rst), .ZN(n124) );
  ND2D0BWP12T30P140 U5 ( .A1(en), .A2(n124), .ZN(n119) );
  ND2D0BWP12T30P140 U6 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n90) );
  INVD0BWP12T30P140 U7 ( .I(n90), .ZN(n71) );
  INVD0BWP12T30P140 U8 ( .I(bitcounter[4]), .ZN(n94) );
  INVD0BWP12T30P140 U9 ( .I(bitcounter[6]), .ZN(n123) );
  NR2D0BWP12T30P140 U10 ( .A1(n94), .A2(n123), .ZN(n129) );
  INVD0BWP12T30P140 U11 ( .I(bitcounter[5]), .ZN(n127) );
  NR2D0BWP12T30P140 U12 ( .A1(bitcounter[4]), .A2(n127), .ZN(n60) );
  AOI22D0BWP12T30P140 U13 ( .A1(n129), .A2(pcmright[12]), .B1(n60), .B2(
        addr[0]), .ZN(n3) );
  NR2D0BWP12T30P140 U14 ( .A1(bitcounter[4]), .A2(n123), .ZN(n63) );
  NR2D0BWP12T30P140 U15 ( .A1(bitcounter[6]), .A2(bitcounter[5]), .ZN(n93) );
  NR2D0BWP12T30P140 U16 ( .A1(n94), .A2(n127), .ZN(n91) );
  AO22D0BWP12T30P140 U17 ( .A1(n93), .A2(addr[16]), .B1(n91), .B2(data[4]), 
        .Z(n1) );
  AOI21D0BWP12T30P140 U18 ( .A1(n63), .A2(pcmleft[8]), .B(n1), .ZN(n2) );
  INVD0BWP12T30P140 U19 ( .I(bitcounter[3]), .ZN(n86) );
  AOI31D0BWP12T30P140 U20 ( .A1(n3), .A2(n2), .A3(n86), .B(bitcounter[2]), 
        .ZN(n16) );
  AOI22D0BWP12T30P140 U21 ( .A1(n63), .A2(pcmleft[0]), .B1(n60), .B2(data[12]), 
        .ZN(n6) );
  AOI22D0BWP12T30P140 U22 ( .A1(n93), .A2(addr[8]), .B1(n91), .B2(pcmleft[16]), 
        .ZN(n5) );
  ND2D0BWP12T30P140 U23 ( .A1(n129), .A2(pcmright[4]), .ZN(n4) );
  ND4D0BWP12T30P140 U24 ( .A1(bitcounter[3]), .A2(n6), .A3(n5), .A4(n4), .ZN(
        n15) );
  AOI22D0BWP12T30P140 U25 ( .A1(n129), .A2(pcmright[0]), .B1(n60), .B2(data[8]), .ZN(n9) );
  AOI22D0BWP12T30P140 U26 ( .A1(n93), .A2(addr[4]), .B1(n91), .B2(pcmleft[12]), 
        .ZN(n8) );
  ND2D0BWP12T30P140 U27 ( .A1(n63), .A2(pcmright[16]), .ZN(n7) );
  ND2D0BWP12T30P140 U28 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .ZN(n89) );
  AOI31D0BWP12T30P140 U29 ( .A1(n9), .A2(n8), .A3(n7), .B(n89), .ZN(n14) );
  AOI22D0BWP12T30P140 U30 ( .A1(n129), .A2(pcmright[8]), .B1(n60), .B2(
        data[16]), .ZN(n12) );
  AOI22D0BWP12T30P140 U31 ( .A1(n93), .A2(addr[12]), .B1(n91), .B2(data[0]), 
        .ZN(n11) );
  ND2D0BWP12T30P140 U32 ( .A1(n63), .A2(pcmleft[4]), .ZN(n10) );
  ND2D0BWP12T30P140 U33 ( .A1(bitcounter[2]), .A2(n86), .ZN(n54) );
  AOI31D0BWP12T30P140 U34 ( .A1(n12), .A2(n11), .A3(n10), .B(n54), .ZN(n13) );
  AOI211D0BWP12T30P140 U35 ( .A1(n16), .A2(n15), .B(n14), .C(n13), .ZN(n34) );
  AOI22D0BWP12T30P140 U36 ( .A1(n129), .A2(pcmright[14]), .B1(n60), .B2(
        addr[2]), .ZN(n19) );
  AO22D0BWP12T30P140 U37 ( .A1(n93), .A2(addr[18]), .B1(n91), .B2(data[6]), 
        .Z(n17) );
  AOI21D0BWP12T30P140 U38 ( .A1(n63), .A2(pcmleft[10]), .B(n17), .ZN(n18) );
  AOI31D0BWP12T30P140 U39 ( .A1(n19), .A2(n18), .A3(n86), .B(bitcounter[2]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U40 ( .A1(n63), .A2(pcmleft[2]), .B1(n60), .B2(data[14]), 
        .ZN(n22) );
  AOI22D0BWP12T30P140 U41 ( .A1(n93), .A2(addr[10]), .B1(n91), .B2(pcmleft[18]), .ZN(n21) );
  ND2D0BWP12T30P140 U42 ( .A1(n129), .A2(pcmright[6]), .ZN(n20) );
  ND4D0BWP12T30P140 U43 ( .A1(bitcounter[3]), .A2(n22), .A3(n21), .A4(n20), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U44 ( .A1(n129), .A2(pcmright[2]), .B1(n60), .B2(
        data[10]), .ZN(n25) );
  AOI22D0BWP12T30P140 U45 ( .A1(n93), .A2(addr[6]), .B1(n91), .B2(pcmleft[14]), 
        .ZN(n24) );
  ND2D0BWP12T30P140 U46 ( .A1(n63), .A2(pcmright[18]), .ZN(n23) );
  AOI31D0BWP12T30P140 U47 ( .A1(n25), .A2(n24), .A3(n23), .B(n89), .ZN(n30) );
  AO22D0BWP12T30P140 U48 ( .A1(n129), .A2(pcmright[10]), .B1(n60), .B2(
        data[18]), .Z(n27) );
  AO22D0BWP12T30P140 U49 ( .A1(n93), .A2(addr[14]), .B1(n91), .B2(data[2]), 
        .Z(n26) );
  AOI211D0BWP12T30P140 U50 ( .A1(n63), .A2(pcmleft[6]), .B(n27), .C(n26), .ZN(
        n28) );
  INVD0BWP12T30P140 U51 ( .I(bitcounter[1]), .ZN(n96) );
  OAI211D0BWP12T30P140 U52 ( .A1(n28), .A2(n54), .B(bitcounter[0]), .C(n96), 
        .ZN(n29) );
  AOI211D0BWP12T30P140 U53 ( .A1(n32), .A2(n31), .B(n30), .C(n29), .ZN(n33) );
  AOI211D0BWP12T30P140 U54 ( .A1(n71), .A2(n34), .B(down_sync), .C(n33), .ZN(
        n79) );
  AOI22D0BWP12T30P140 U55 ( .A1(n129), .A2(pcmright[5]), .B1(n60), .B2(
        data[13]), .ZN(n38) );
  AOI22D0BWP12T30P140 U56 ( .A1(n93), .A2(addr[9]), .B1(n91), .B2(pcmleft[17]), 
        .ZN(n37) );
  ND2D0BWP12T30P140 U57 ( .A1(n63), .A2(pcmleft[1]), .ZN(n36) );
  INVD0BWP12T30P140 U58 ( .I(bitcounter[2]), .ZN(n83) );
  ND2D0BWP12T30P140 U59 ( .A1(bitcounter[3]), .A2(n83), .ZN(n35) );
  AOI31D0BWP12T30P140 U60 ( .A1(n38), .A2(n37), .A3(n36), .B(n35), .ZN(n50) );
  AOI22D0BWP12T30P140 U61 ( .A1(n129), .A2(pcmright[1]), .B1(n60), .B2(data[9]), .ZN(n41) );
  AOI22D0BWP12T30P140 U62 ( .A1(n93), .A2(addr[5]), .B1(n91), .B2(pcmleft[13]), 
        .ZN(n40) );
  ND2D0BWP12T30P140 U63 ( .A1(n63), .A2(pcmright[17]), .ZN(n39) );
  AOI31D0BWP12T30P140 U64 ( .A1(n41), .A2(n40), .A3(n39), .B(n89), .ZN(n49) );
  AO22D0BWP12T30P140 U65 ( .A1(n129), .A2(pcmright[9]), .B1(n60), .B2(data[17]), .Z(n43) );
  AO22D0BWP12T30P140 U66 ( .A1(n93), .A2(addr[13]), .B1(n91), .B2(data[1]), 
        .Z(n42) );
  AOI211D0BWP12T30P140 U67 ( .A1(n63), .A2(pcmleft[5]), .B(n43), .C(n42), .ZN(
        n47) );
  AO22D0BWP12T30P140 U68 ( .A1(n129), .A2(pcmright[13]), .B1(n60), .B2(addr[1]), .Z(n45) );
  AO22D0BWP12T30P140 U69 ( .A1(n93), .A2(addr[17]), .B1(n91), .B2(data[5]), 
        .Z(n44) );
  AOI211D0BWP12T30P140 U70 ( .A1(n63), .A2(pcmleft[9]), .B(n45), .C(n44), .ZN(
        n46) );
  AOI221D0BWP12T30P140 U71 ( .A1(bitcounter[2]), .A2(n47), .B1(n83), .B2(n46), 
        .C(bitcounter[3]), .ZN(n48) );
  NR4D0BWP12T30P140 U72 ( .A1(n50), .A2(n49), .A3(n96), .A4(n48), .ZN(n70) );
  AOI22D0BWP12T30P140 U73 ( .A1(n129), .A2(pcmright[3]), .B1(n60), .B2(
        data[11]), .ZN(n53) );
  AOI22D0BWP12T30P140 U74 ( .A1(n93), .A2(addr[7]), .B1(n91), .B2(pcmleft[15]), 
        .ZN(n52) );
  ND2D0BWP12T30P140 U75 ( .A1(n63), .A2(pcmright[19]), .ZN(n51) );
  AOI31D0BWP12T30P140 U76 ( .A1(n53), .A2(n52), .A3(n51), .B(n89), .ZN(n68) );
  AOI22D0BWP12T30P140 U77 ( .A1(n129), .A2(pcmright[11]), .B1(n60), .B2(
        data[19]), .ZN(n57) );
  AOI22D0BWP12T30P140 U78 ( .A1(n93), .A2(addr[15]), .B1(n91), .B2(data[3]), 
        .ZN(n56) );
  ND2D0BWP12T30P140 U79 ( .A1(n63), .A2(pcmleft[7]), .ZN(n55) );
  AOI31D0BWP12T30P140 U80 ( .A1(n57), .A2(n56), .A3(n55), .B(n54), .ZN(n67) );
  AO22D0BWP12T30P140 U81 ( .A1(n129), .A2(pcmright[7]), .B1(n60), .B2(data[15]), .Z(n59) );
  AO22D0BWP12T30P140 U82 ( .A1(n93), .A2(addr[11]), .B1(n91), .B2(pcmleft[19]), 
        .Z(n58) );
  AOI211D0BWP12T30P140 U83 ( .A1(n63), .A2(pcmleft[3]), .B(n59), .C(n58), .ZN(
        n65) );
  AO22D0BWP12T30P140 U84 ( .A1(n129), .A2(pcmright[15]), .B1(n60), .B2(addr[3]), .Z(n62) );
  AO22D0BWP12T30P140 U85 ( .A1(n93), .A2(addr[19]), .B1(n91), .B2(data[7]), 
        .Z(n61) );
  AOI211D0BWP12T30P140 U86 ( .A1(n63), .A2(pcmleft[11]), .B(n62), .C(n61), 
        .ZN(n64) );
  AOI221D0BWP12T30P140 U87 ( .A1(bitcounter[3]), .A2(n65), .B1(n86), .B2(n64), 
        .C(bitcounter[2]), .ZN(n66) );
  NR4D0BWP12T30P140 U88 ( .A1(bitcounter[1]), .A2(n68), .A3(n67), .A4(n66), 
        .ZN(n69) );
  INVD0BWP12T30P140 U89 ( .I(bitcounter[0]), .ZN(n104) );
  OAI21D0BWP12T30P140 U90 ( .A1(n70), .A2(n69), .B(n104), .ZN(n78) );
  AOI22D0BWP12T30P140 U91 ( .A1(pcmleft_valid), .A2(n71), .B1(addr_valid), 
        .B2(n96), .ZN(n73) );
  OAI21D0BWP12T30P140 U92 ( .A1(data_valid), .A2(n96), .B(n104), .ZN(n72) );
  AOI21D0BWP12T30P140 U93 ( .A1(n73), .A2(n72), .B(bitcounter[2]), .ZN(n74) );
  AOI31D0BWP12T30P140 U94 ( .A1(pcmright_valid), .A2(n96), .A3(n104), .B(n74), 
        .ZN(n75) );
  INVD0BWP12T30P140 U95 ( .I(down_sync), .ZN(n95) );
  NR3D0BWP12T30P140 U96 ( .A1(bitcounter[3]), .A2(n75), .A3(n95), .ZN(n77) );
  INVD0BWP12T30P140 U97 ( .I(in_slot), .ZN(n76) );
  AOI32D0BWP12T30P140 U98 ( .A1(n79), .A2(in_slot), .A3(n78), .B1(n77), .B2(
        n76), .ZN(n81) );
  INVD0BWP12T30P140 U99 ( .I(en), .ZN(n99) );
  ND2D0BWP12T30P140 U100 ( .A1(n124), .A2(n99), .ZN(n117) );
  INVD0BWP12T30P140 U101 ( .I(down_data), .ZN(n80) );
  OAI22D0BWP12T30P140 U102 ( .A1(n119), .A2(n81), .B1(n117), .B2(n80), .ZN(
        n114) );
  NR2D0BWP12T30P140 U103 ( .A1(n83), .A2(n90), .ZN(n98) );
  INVD0BWP12T30P140 U104 ( .I(n98), .ZN(n85) );
  OAI21D0BWP12T30P140 U105 ( .A1(n99), .A2(n85), .B(n124), .ZN(n82) );
  OAI32D0BWP12T30P140 U106 ( .A1(bitcounter[3]), .A2(n119), .A3(n85), .B1(n82), 
        .B2(n86), .ZN(n110) );
  OAI31D0BWP12T30P140 U107 ( .A1(n96), .A2(n99), .A3(n104), .B(n124), .ZN(n84)
         );
  OAI32D0BWP12T30P140 U108 ( .A1(bitcounter[2]), .A2(n119), .A3(n90), .B1(n84), 
        .B2(n83), .ZN(n111) );
  ND2D0BWP12T30P140 U109 ( .A1(bitcounter[3]), .A2(n98), .ZN(n88) );
  OAI31D0BWP12T30P140 U110 ( .A1(n86), .A2(n99), .A3(n85), .B(n124), .ZN(n87)
         );
  OAI32D0BWP12T30P140 U111 ( .A1(bitcounter[4]), .A2(n119), .A3(n88), .B1(n87), 
        .B2(n94), .ZN(n109) );
  NR3D0BWP12T30P140 U112 ( .A1(n99), .A2(n90), .A3(n89), .ZN(n92) );
  ND4D0BWP12T30P140 U113 ( .A1(bitcounter[6]), .A2(n91), .A3(bitcounter[7]), 
        .A4(n92), .ZN(n103) );
  INVD0BWP12T30P140 U114 ( .I(bitcounter[7]), .ZN(n120) );
  AN2D0BWP12T30P140 U115 ( .A1(n92), .A2(n120), .Z(n128) );
  AN3D0BWP12T30P140 U116 ( .A1(n94), .A2(n93), .A3(n128), .Z(n125) );
  AOI211D0BWP12T30P140 U117 ( .A1(n95), .A2(n103), .B(sys_rst), .C(n125), .ZN(
        n116) );
  OAI21D0BWP12T30P140 U118 ( .A1(n99), .A2(n104), .B(n124), .ZN(n97) );
  OAI32D0BWP12T30P140 U119 ( .A1(bitcounter[1]), .A2(n119), .A3(n104), .B1(n97), .B2(n96), .ZN(n112) );
  ND3D0BWP12T30P140 U120 ( .A1(bitcounter[3]), .A2(bitcounter[4]), .A3(n98), 
        .ZN(n101) );
  OR3D0BWP12T30P140 U121 ( .A1(n101), .A2(n119), .A3(n127), .Z(n122) );
  OAI21D0BWP12T30P140 U122 ( .A1(n99), .A2(n101), .B(n124), .ZN(n100) );
  OAI21D0BWP12T30P140 U123 ( .A1(bitcounter[5]), .A2(n119), .B(n100), .ZN(n118) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n122), .A2(n123), .B1(n123), .B2(n118), .ZN(
        n107) );
  OAI32D0BWP12T30P140 U125 ( .A1(bitcounter[5]), .A2(n119), .A3(n101), .B1(
        n100), .B2(n127), .ZN(n108) );
  ND2D0BWP12T30P140 U126 ( .A1(n119), .A2(next_frame), .ZN(n102) );
  OAI21D0BWP12T30P140 U127 ( .A1(n119), .A2(n103), .B(n102), .ZN(n105) );
  AOI22D0BWP12T30P140 U128 ( .A1(bitcounter[0]), .A2(n117), .B1(n119), .B2(
        n104), .ZN(n113) );
  IAO21D0BWP12T30P140 U129 ( .A1(n119), .A2(bitcounter[6]), .B(n118), .ZN(n121) );
  OAI32D0BWP12T30P140 U130 ( .A1(bitcounter[7]), .A2(n123), .A3(n122), .B1(
        n121), .B2(n120), .ZN(n106) );
  OAI21D0BWP12T30P140 U131 ( .A1(in_slot), .A2(n125), .B(n124), .ZN(n126) );
  AOI31D0BWP12T30P140 U132 ( .A1(n129), .A2(n128), .A3(n127), .B(n126), .ZN(
        n115) );
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
  wire   sync_old, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n1, n2, n3, n4, n5,
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
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n174, n175, n176, n177, n178;
  wire   [7:0] bitcounter;

  DFQD2BWP12T30P140 addr_reg_19_ ( .D(n273), .CP(n174), .Q(addr[19]) );
  DFQD2BWP12T30P140 addr_reg_18_ ( .D(n274), .CP(n175), .Q(addr[18]) );
  DFQD2BWP12T30P140 addr_reg_17_ ( .D(n275), .CP(n177), .Q(addr[17]) );
  DFQD2BWP12T30P140 addr_reg_16_ ( .D(n276), .CP(n178), .Q(addr[16]) );
  DFQD2BWP12T30P140 addr_reg_15_ ( .D(n277), .CP(sys_clk), .Q(addr[15]) );
  DFQD2BWP12T30P140 addr_reg_14_ ( .D(n278), .CP(n176), .Q(addr[14]) );
  DFQD2BWP12T30P140 addr_reg_13_ ( .D(n279), .CP(n174), .Q(addr[13]) );
  DFQD2BWP12T30P140 addr_reg_12_ ( .D(n280), .CP(n175), .Q(addr[12]) );
  DFQD2BWP12T30P140 addr_reg_11_ ( .D(n281), .CP(n177), .Q(addr[11]) );
  DFQD2BWP12T30P140 pcmright_reg_0_ ( .D(n240), .CP(n175), .Q(pcmright[0]) );
  DFQD2BWP12T30P140 addr_reg_10_ ( .D(n282), .CP(n178), .Q(addr[10]) );
  DFQD2BWP12T30P140 addr_reg_9_ ( .D(n283), .CP(n178), .Q(addr[9]) );
  DFQD2BWP12T30P140 addr_reg_8_ ( .D(n284), .CP(n178), .Q(addr[8]) );
  DFQD2BWP12T30P140 addr_reg_6_ ( .D(n286), .CP(n178), .Q(addr[6]) );
  DFQD2BWP12T30P140 addr_reg_5_ ( .D(n287), .CP(n178), .Q(addr[5]) );
  DFQD2BWP12T30P140 addr_reg_4_ ( .D(n288), .CP(n178), .Q(addr[4]) );
  DFQD2BWP12T30P140 addr_reg_3_ ( .D(n289), .CP(n178), .Q(addr[3]) );
  DFQD2BWP12T30P140 addr_reg_2_ ( .D(n290), .CP(n178), .Q(addr[2]) );
  DFQD2BWP12T30P140 addr_reg_1_ ( .D(n291), .CP(n178), .Q(addr[1]) );
  DFQD2BWP12T30P140 addr_reg_0_ ( .D(n292), .CP(n178), .Q(addr[0]) );
  DFQD2BWP12T30P140 pcmright_valid_reg ( .D(n272), .CP(n178), .Q(
        pcmright_valid) );
  DFQD2BWP12T30P140 data_reg_3_ ( .D(n309), .CP(n177), .Q(data[3]) );
  DFQD2BWP12T30P140 data_reg_2_ ( .D(n310), .CP(n178), .Q(data[2]) );
  DFQD2BWP12T30P140 data_reg_1_ ( .D(n311), .CP(n174), .Q(data[1]) );
  DFQD2BWP12T30P140 data_reg_0_ ( .D(n312), .CP(n175), .Q(data[0]) );
  DFQD2BWP12T30P140 pcmleft_reg_19_ ( .D(n313), .CP(n176), .Q(pcmleft[19]) );
  DFQD2BWP12T30P140 pcmleft_reg_18_ ( .D(n314), .CP(n176), .Q(pcmleft[18]) );
  DFQD2BWP12T30P140 pcmleft_reg_16_ ( .D(n316), .CP(n176), .Q(pcmleft[16]) );
  DFQD2BWP12T30P140 pcmleft_reg_15_ ( .D(n317), .CP(n176), .Q(pcmleft[15]) );
  DFQD2BWP12T30P140 pcmleft_reg_14_ ( .D(n318), .CP(n176), .Q(pcmleft[14]) );
  DFQD2BWP12T30P140 pcmleft_reg_13_ ( .D(n319), .CP(n176), .Q(pcmleft[13]) );
  DFQD2BWP12T30P140 pcmleft_reg_12_ ( .D(n320), .CP(n176), .Q(pcmleft[12]) );
  DFQD2BWP12T30P140 pcmleft_reg_11_ ( .D(n321), .CP(n176), .Q(pcmleft[11]) );
  DFQD2BWP12T30P140 pcmleft_reg_10_ ( .D(n322), .CP(n176), .Q(pcmleft[10]) );
  DFQD2BWP12T30P140 pcmleft_reg_9_ ( .D(n323), .CP(n176), .Q(pcmleft[9]) );
  DFQD2BWP12T30P140 pcmleft_reg_8_ ( .D(n324), .CP(n176), .Q(pcmleft[8]) );
  DFQD2BWP12T30P140 pcmleft_reg_7_ ( .D(n325), .CP(n176), .Q(pcmleft[7]) );
  DFQD2BWP12T30P140 pcmleft_reg_6_ ( .D(n326), .CP(n176), .Q(pcmleft[6]) );
  DFQD2BWP12T30P140 pcmleft_reg_5_ ( .D(n327), .CP(n175), .Q(pcmleft[5]) );
  DFQD2BWP12T30P140 pcmleft_reg_4_ ( .D(n328), .CP(n175), .Q(pcmleft[4]) );
  DFQD2BWP12T30P140 pcmleft_reg_3_ ( .D(n329), .CP(n175), .Q(pcmleft[3]) );
  DFQD2BWP12T30P140 pcmleft_reg_1_ ( .D(n331), .CP(n175), .Q(pcmleft[1]) );
  DFQD2BWP12T30P140 pcmleft_reg_0_ ( .D(n332), .CP(n175), .Q(pcmleft[0]) );
  DFQD2BWP12T30P140 pcmright_reg_19_ ( .D(n259), .CP(n174), .Q(pcmright[19])
         );
  DFQD2BWP12T30P140 pcmright_reg_18_ ( .D(n258), .CP(n174), .Q(pcmright[18])
         );
  DFQD2BWP12T30P140 pcmright_reg_17_ ( .D(n257), .CP(n174), .Q(pcmright[17])
         );
  DFQD2BWP12T30P140 pcmright_reg_16_ ( .D(n256), .CP(n174), .Q(pcmright[16])
         );
  DFQD2BWP12T30P140 pcmright_reg_15_ ( .D(n255), .CP(n174), .Q(pcmright[15])
         );
  DFQD2BWP12T30P140 pcmright_reg_14_ ( .D(n254), .CP(n174), .Q(pcmright[14])
         );
  DFQD2BWP12T30P140 pcmright_reg_13_ ( .D(n253), .CP(n174), .Q(pcmright[13])
         );
  DFQD2BWP12T30P140 pcmright_reg_12_ ( .D(n252), .CP(n174), .Q(pcmright[12])
         );
  DFQD2BWP12T30P140 pcmright_reg_11_ ( .D(n251), .CP(n174), .Q(pcmright[11])
         );
  DFQD2BWP12T30P140 pcmright_reg_10_ ( .D(n250), .CP(n175), .Q(pcmright[10])
         );
  DFQD2BWP12T30P140 pcmright_reg_9_ ( .D(n249), .CP(n177), .Q(pcmright[9]) );
  DFQD2BWP12T30P140 pcmright_reg_8_ ( .D(n248), .CP(n176), .Q(pcmright[8]) );
  DFQD2BWP12T30P140 pcmright_reg_6_ ( .D(n246), .CP(n178), .Q(pcmright[6]) );
  DFQD2BWP12T30P140 pcmright_reg_5_ ( .D(n245), .CP(n174), .Q(pcmright[5]) );
  DFQD2BWP12T30P140 pcmright_reg_4_ ( .D(n244), .CP(n175), .Q(pcmright[4]) );
  DFQD2BWP12T30P140 pcmright_reg_3_ ( .D(n243), .CP(n176), .Q(pcmright[3]) );
  DFQD2BWP12T30P140 pcmright_reg_2_ ( .D(n242), .CP(n178), .Q(pcmright[2]) );
  DFQD2BWP12T30P140 pcmright_reg_1_ ( .D(n241), .CP(n176), .Q(pcmright[1]) );
  DFQD2BWP12T30P140 pcmleft_valid_reg ( .D(n271), .CP(n177), .Q(pcmleft_valid)
         );
  DFQD2BWP12T30P140 addr_valid_reg ( .D(n269), .CP(n178), .Q(addr_valid) );
  DFQD2BWP12T30P140 data_valid_reg ( .D(n270), .CP(n175), .Q(data_valid) );
  DFQD2BWP12T30P140 sync_old_reg ( .D(n268), .CP(n177), .Q(sync_old) );
  DFQD2BWP12T30P140 frame_valid_reg ( .D(n239), .CP(sys_clk), .Q(frame_valid)
         );
  DFQD2BWP12T30P140 data_reg_19_ ( .D(n293), .CP(n177), .Q(data[19]) );
  DFQD2BWP12T30P140 data_reg_18_ ( .D(n294), .CP(n177), .Q(data[18]) );
  DFQD2BWP12T30P140 data_reg_17_ ( .D(n295), .CP(n177), .Q(data[17]) );
  DFQD2BWP12T30P140 data_reg_15_ ( .D(n297), .CP(n177), .Q(data[15]) );
  DFQD2BWP12T30P140 data_reg_14_ ( .D(n298), .CP(n177), .Q(data[14]) );
  DFQD2BWP12T30P140 data_reg_13_ ( .D(n299), .CP(n177), .Q(data[13]) );
  DFQD2BWP12T30P140 data_reg_12_ ( .D(n300), .CP(n177), .Q(data[12]) );
  DFQD2BWP12T30P140 data_reg_11_ ( .D(n301), .CP(n177), .Q(data[11]) );
  DFQD2BWP12T30P140 data_reg_10_ ( .D(n302), .CP(n177), .Q(data[10]) );
  DFQD2BWP12T30P140 data_reg_9_ ( .D(n303), .CP(n177), .Q(data[9]) );
  DFQD2BWP12T30P140 data_reg_8_ ( .D(n304), .CP(n178), .Q(data[8]) );
  DFQD2BWP12T30P140 data_reg_7_ ( .D(n305), .CP(n174), .Q(data[7]) );
  DFQD2BWP12T30P140 data_reg_6_ ( .D(n306), .CP(n177), .Q(data[6]) );
  DFQD2BWP12T30P140 data_reg_5_ ( .D(n307), .CP(n178), .Q(data[5]) );
  DFQD2BWP12T30P140 data_reg_4_ ( .D(n308), .CP(n174), .Q(data[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_2_ ( .D(n266), .CP(n175), .Q(bitcounter[2])
         );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n264), .CP(n175), .Q(bitcounter[4])
         );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n260), .CP(n174), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n263), .CP(n175), .Q(bitcounter[5])
         );
  DFQD2BWP12T30P140 bitcounter_reg_6_ ( .D(n262), .CP(n175), .Q(bitcounter[6])
         );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n267), .CP(n174), .Q(bitcounter[1])
         );
  DFQD2BWP12T30P140 bitcounter_reg_3_ ( .D(n265), .CP(n175), .Q(bitcounter[3])
         );
  DFQD2BWP12T30P140 bitcounter_reg_0_ ( .D(n333), .CP(n174), .Q(bitcounter[0])
         );
  DFQD1BWP12T30P140 addr_reg_7_ ( .D(n285), .CP(n178), .Q(addr[7]) );
  DFQD1BWP12T30P140 pcmleft_reg_17_ ( .D(n315), .CP(n176), .Q(pcmleft[17]) );
  DFQD1BWP12T30P140 pcmleft_reg_2_ ( .D(n330), .CP(n175), .Q(pcmleft[2]) );
  DFQD1BWP12T30P140 pcmright_reg_7_ ( .D(n247), .CP(n177), .Q(pcmright[7]) );
  DFQD1BWP12T30P140 data_reg_16_ ( .D(n296), .CP(n177), .Q(data[16]) );
  DFQD1BWP12T30P140 bitcounter_reg_7_ ( .D(n261), .CP(n175), .Q(bitcounter[7])
         );
  NR2D0BWP12T30P140 U3 ( .A1(n17), .A2(sys_rst), .ZN(n61) );
  INVD0BWP12T30P140 U4 ( .I(bitcounter[2]), .ZN(n126) );
  CKBD0BWP12T30P140 U5 ( .I(en), .Z(up_ack) );
  INVD0BWP12T30P140 U6 ( .I(up_sync), .ZN(n118) );
  INVD0BWP12T30P140 U7 ( .I(sys_rst), .ZN(n172) );
  ND2D0BWP12T30P140 U8 ( .A1(en), .A2(up_stb), .ZN(n17) );
  ND2D0BWP12T30P140 U9 ( .A1(n172), .A2(n17), .ZN(n120) );
  OAI21D0BWP12T30P140 U10 ( .A1(sync_old), .A2(n118), .B(n120), .ZN(n14) );
  AOI21D0BWP12T30P140 U11 ( .A1(bitcounter[0]), .A2(n17), .B(sys_rst), .ZN(n1)
         );
  OAI21D0BWP12T30P140 U12 ( .A1(bitcounter[0]), .A2(n14), .B(n1), .ZN(n333) );
  INVD0BWP12T30P140 U13 ( .I(bitcounter[1]), .ZN(n132) );
  INVD0BWP12T30P140 U14 ( .I(bitcounter[0]), .ZN(n40) );
  AOI221D0BWP12T30P140 U15 ( .A1(bitcounter[0]), .A2(bitcounter[1]), .B1(n40), 
        .B2(n132), .C(n14), .ZN(n2) );
  MOAI22D0BWP12T30P140 U16 ( .A1(n132), .A2(n120), .B1(n2), .B2(n172), .ZN(
        n267) );
  NR2D0BWP12T30P140 U17 ( .A1(n132), .A2(n126), .ZN(n18) );
  AN2D0BWP12T30P140 U18 ( .A1(n18), .A2(bitcounter[0]), .Z(n166) );
  ND3D0BWP12T30P140 U19 ( .A1(bitcounter[3]), .A2(bitcounter[4]), .A3(n166), 
        .ZN(n3) );
  NR2D0BWP12T30P140 U20 ( .A1(n14), .A2(n3), .ZN(n5) );
  ND2D0BWP12T30P140 U21 ( .A1(bitcounter[5]), .A2(n5), .ZN(n10) );
  INVD0BWP12T30P140 U22 ( .I(n14), .ZN(n168) );
  INVD0BWP12T30P140 U23 ( .I(bitcounter[5]), .ZN(n16) );
  IOA21D0BWP12T30P140 U24 ( .A1(n3), .A2(n168), .B(n120), .ZN(n6) );
  AOI21D0BWP12T30P140 U25 ( .A1(n168), .A2(n16), .B(n6), .ZN(n7) );
  INVD0BWP12T30P140 U26 ( .I(bitcounter[6]), .ZN(n42) );
  OR2D0BWP12T30P140 U27 ( .A1(n7), .A2(n42), .Z(n4) );
  OAI211D0BWP12T30P140 U28 ( .A1(bitcounter[6]), .A2(n10), .B(n172), .C(n4), 
        .ZN(n262) );
  AO221D0BWP12T30P140 U29 ( .A1(bitcounter[5]), .A2(n6), .B1(n16), .B2(n5), 
        .C(sys_rst), .Z(n263) );
  OAI21D0BWP12T30P140 U30 ( .A1(bitcounter[6]), .A2(n14), .B(n7), .ZN(n8) );
  AOI21D0BWP12T30P140 U31 ( .A1(bitcounter[7]), .A2(n8), .B(sys_rst), .ZN(n9)
         );
  OAI31D0BWP12T30P140 U32 ( .A1(bitcounter[7]), .A2(n42), .A3(n10), .B(n9), 
        .ZN(n261) );
  INVD0BWP12T30P140 U33 ( .I(bitcounter[3]), .ZN(n167) );
  OAI21D0BWP12T30P140 U34 ( .A1(n166), .A2(n14), .B(n120), .ZN(n165) );
  AOI21D0BWP12T30P140 U35 ( .A1(n168), .A2(n167), .B(n165), .ZN(n12) );
  INVD0BWP12T30P140 U36 ( .I(bitcounter[4]), .ZN(n44) );
  ND4D0BWP12T30P140 U37 ( .A1(bitcounter[3]), .A2(n168), .A3(n166), .A4(n44), 
        .ZN(n11) );
  OAI211D0BWP12T30P140 U38 ( .A1(n12), .A2(n44), .B(n172), .C(n11), .ZN(n264)
         );
  NR2D0BWP12T30P140 U39 ( .A1(bitcounter[2]), .A2(n132), .ZN(n23) );
  NR2D0BWP12T30P140 U40 ( .A1(bitcounter[1]), .A2(n126), .ZN(n60) );
  AOI221D0BWP12T30P140 U41 ( .A1(n23), .A2(bitcounter[0]), .B1(bitcounter[2]), 
        .B2(n40), .C(n60), .ZN(n15) );
  AOI21D0BWP12T30P140 U42 ( .A1(bitcounter[2]), .A2(n17), .B(sys_rst), .ZN(n13) );
  OAI21D0BWP12T30P140 U43 ( .A1(n15), .A2(n14), .B(n13), .ZN(n266) );
  INVD0BWP12T30P140 U44 ( .I(bitcounter[7]), .ZN(n41) );
  ND3D0BWP12T30P140 U45 ( .A1(n16), .A2(n41), .A3(bitcounter[3]), .ZN(n69) );
  NR2D0BWP12T30P140 U46 ( .A1(n42), .A2(n69), .ZN(n134) );
  NR2D0BWP12T30P140 U47 ( .A1(bitcounter[4]), .A2(n40), .ZN(n124) );
  ND2D0BWP12T30P140 U48 ( .A1(n134), .A2(n124), .ZN(n27) );
  ND2D0BWP12T30P140 U49 ( .A1(n61), .A2(up_data), .ZN(n123) );
  INVD0BWP12T30P140 U50 ( .I(n123), .ZN(n127) );
  ND2D0BWP12T30P140 U51 ( .A1(n18), .A2(n127), .ZN(n159) );
  ND2D0BWP12T30P140 U52 ( .A1(n18), .A2(n61), .ZN(n157) );
  OAI21D0BWP12T30P140 U53 ( .A1(n27), .A2(n157), .B(pcmright[16]), .ZN(n19) );
  OAI21D0BWP12T30P140 U54 ( .A1(n27), .A2(n159), .B(n19), .ZN(n256) );
  NR2D0BWP12T30P140 U55 ( .A1(bitcounter[4]), .A2(bitcounter[0]), .ZN(n100) );
  ND2D0BWP12T30P140 U56 ( .A1(n100), .A2(n134), .ZN(n29) );
  OAI21D0BWP12T30P140 U57 ( .A1(n29), .A2(n157), .B(pcmright[17]), .ZN(n20) );
  OAI21D0BWP12T30P140 U58 ( .A1(n29), .A2(n159), .B(n20), .ZN(n257) );
  ND2D0BWP12T30P140 U59 ( .A1(n60), .A2(n127), .ZN(n151) );
  ND2D0BWP12T30P140 U60 ( .A1(n61), .A2(n60), .ZN(n149) );
  OAI21D0BWP12T30P140 U61 ( .A1(n27), .A2(n149), .B(pcmright[18]), .ZN(n21) );
  OAI21D0BWP12T30P140 U62 ( .A1(n27), .A2(n151), .B(n21), .ZN(n258) );
  OAI21D0BWP12T30P140 U63 ( .A1(n29), .A2(n149), .B(pcmright[19]), .ZN(n22) );
  OAI21D0BWP12T30P140 U64 ( .A1(n29), .A2(n151), .B(n22), .ZN(n259) );
  ND2D0BWP12T30P140 U65 ( .A1(n127), .A2(n23), .ZN(n155) );
  ND2D0BWP12T30P140 U66 ( .A1(n61), .A2(n23), .ZN(n153) );
  OAI21D0BWP12T30P140 U67 ( .A1(n27), .A2(n153), .B(pcmleft[0]), .ZN(n24) );
  OAI21D0BWP12T30P140 U68 ( .A1(n27), .A2(n155), .B(n24), .ZN(n332) );
  OAI21D0BWP12T30P140 U69 ( .A1(n29), .A2(n153), .B(pcmleft[1]), .ZN(n25) );
  OAI21D0BWP12T30P140 U70 ( .A1(n29), .A2(n155), .B(n25), .ZN(n331) );
  ND3D0BWP12T30P140 U71 ( .A1(n126), .A2(n132), .A3(n127), .ZN(n163) );
  ND3D0BWP12T30P140 U72 ( .A1(n126), .A2(n132), .A3(n61), .ZN(n161) );
  OAI21D0BWP12T30P140 U73 ( .A1(n27), .A2(n161), .B(pcmleft[2]), .ZN(n26) );
  OAI21D0BWP12T30P140 U74 ( .A1(n27), .A2(n163), .B(n26), .ZN(n330) );
  OAI21D0BWP12T30P140 U75 ( .A1(n29), .A2(n161), .B(pcmleft[3]), .ZN(n28) );
  OAI21D0BWP12T30P140 U76 ( .A1(n29), .A2(n163), .B(n28), .ZN(n329) );
  NR3D0BWP12T30P140 U77 ( .A1(bitcounter[7]), .A2(bitcounter[5]), .A3(
        bitcounter[3]), .ZN(n59) );
  INR2D1BWP12T30P140 U78 ( .A1(n59), .B1(n42), .ZN(n147) );
  ND2D0BWP12T30P140 U79 ( .A1(n124), .A2(n147), .ZN(n37) );
  OAI21D0BWP12T30P140 U80 ( .A1(n37), .A2(n157), .B(pcmleft[4]), .ZN(n30) );
  OAI21D0BWP12T30P140 U81 ( .A1(n37), .A2(n159), .B(n30), .ZN(n328) );
  ND2D0BWP12T30P140 U82 ( .A1(n100), .A2(n147), .ZN(n39) );
  OAI21D0BWP12T30P140 U83 ( .A1(n39), .A2(n157), .B(pcmleft[5]), .ZN(n31) );
  OAI21D0BWP12T30P140 U84 ( .A1(n39), .A2(n159), .B(n31), .ZN(n327) );
  OAI21D0BWP12T30P140 U85 ( .A1(n37), .A2(n149), .B(pcmleft[6]), .ZN(n32) );
  OAI21D0BWP12T30P140 U86 ( .A1(n37), .A2(n151), .B(n32), .ZN(n326) );
  OAI21D0BWP12T30P140 U87 ( .A1(n39), .A2(n149), .B(pcmleft[7]), .ZN(n33) );
  OAI21D0BWP12T30P140 U88 ( .A1(n39), .A2(n151), .B(n33), .ZN(n325) );
  OAI21D0BWP12T30P140 U89 ( .A1(n37), .A2(n153), .B(pcmleft[8]), .ZN(n34) );
  OAI21D0BWP12T30P140 U90 ( .A1(n37), .A2(n155), .B(n34), .ZN(n324) );
  OAI21D0BWP12T30P140 U91 ( .A1(n39), .A2(n153), .B(pcmleft[9]), .ZN(n35) );
  OAI21D0BWP12T30P140 U92 ( .A1(n39), .A2(n155), .B(n35), .ZN(n323) );
  OAI21D0BWP12T30P140 U93 ( .A1(n37), .A2(n161), .B(pcmleft[10]), .ZN(n36) );
  OAI21D0BWP12T30P140 U94 ( .A1(n37), .A2(n163), .B(n36), .ZN(n322) );
  OAI21D0BWP12T30P140 U95 ( .A1(n39), .A2(n161), .B(pcmleft[11]), .ZN(n38) );
  OAI21D0BWP12T30P140 U96 ( .A1(n39), .A2(n163), .B(n38), .ZN(n321) );
  NR2D0BWP12T30P140 U97 ( .A1(n44), .A2(n40), .ZN(n146) );
  ND3D0BWP12T30P140 U98 ( .A1(n42), .A2(n41), .A3(bitcounter[5]), .ZN(n54) );
  NR2D0BWP12T30P140 U99 ( .A1(n167), .A2(n54), .ZN(n99) );
  ND2D0BWP12T30P140 U100 ( .A1(n146), .A2(n99), .ZN(n51) );
  OAI21D0BWP12T30P140 U101 ( .A1(n51), .A2(n157), .B(pcmleft[12]), .ZN(n43) );
  OAI21D0BWP12T30P140 U102 ( .A1(n51), .A2(n159), .B(n43), .ZN(n320) );
  NR2D0BWP12T30P140 U103 ( .A1(bitcounter[0]), .A2(n44), .ZN(n144) );
  ND2D0BWP12T30P140 U104 ( .A1(n99), .A2(n144), .ZN(n53) );
  OAI21D0BWP12T30P140 U105 ( .A1(n53), .A2(n157), .B(pcmleft[13]), .ZN(n45) );
  OAI21D0BWP12T30P140 U106 ( .A1(n53), .A2(n159), .B(n45), .ZN(n319) );
  OAI21D0BWP12T30P140 U107 ( .A1(n51), .A2(n149), .B(pcmleft[14]), .ZN(n46) );
  OAI21D0BWP12T30P140 U108 ( .A1(n51), .A2(n151), .B(n46), .ZN(n318) );
  OAI21D0BWP12T30P140 U109 ( .A1(n53), .A2(n149), .B(pcmleft[15]), .ZN(n47) );
  OAI21D0BWP12T30P140 U110 ( .A1(n53), .A2(n151), .B(n47), .ZN(n317) );
  OAI21D0BWP12T30P140 U111 ( .A1(n51), .A2(n153), .B(pcmleft[16]), .ZN(n48) );
  OAI21D0BWP12T30P140 U112 ( .A1(n51), .A2(n155), .B(n48), .ZN(n316) );
  OAI21D0BWP12T30P140 U113 ( .A1(n53), .A2(n153), .B(pcmleft[17]), .ZN(n49) );
  OAI21D0BWP12T30P140 U114 ( .A1(n53), .A2(n155), .B(n49), .ZN(n315) );
  OAI21D0BWP12T30P140 U115 ( .A1(n51), .A2(n161), .B(pcmleft[18]), .ZN(n50) );
  OAI21D0BWP12T30P140 U116 ( .A1(n51), .A2(n163), .B(n50), .ZN(n314) );
  OAI21D0BWP12T30P140 U117 ( .A1(n53), .A2(n161), .B(pcmleft[19]), .ZN(n52) );
  OAI21D0BWP12T30P140 U118 ( .A1(n53), .A2(n163), .B(n52), .ZN(n313) );
  NR2D0BWP12T30P140 U119 ( .A1(bitcounter[3]), .A2(n54), .ZN(n65) );
  ND2D0BWP12T30P140 U120 ( .A1(n146), .A2(n65), .ZN(n95) );
  OAI21D0BWP12T30P140 U121 ( .A1(n95), .A2(n157), .B(data[0]), .ZN(n55) );
  OAI21D0BWP12T30P140 U122 ( .A1(n95), .A2(n159), .B(n55), .ZN(n312) );
  ND2D0BWP12T30P140 U123 ( .A1(n144), .A2(n65), .ZN(n97) );
  OAI21D0BWP12T30P140 U124 ( .A1(n97), .A2(n157), .B(data[1]), .ZN(n56) );
  OAI21D0BWP12T30P140 U125 ( .A1(n97), .A2(n159), .B(n56), .ZN(n311) );
  OAI21D0BWP12T30P140 U126 ( .A1(n95), .A2(n149), .B(data[2]), .ZN(n57) );
  OAI21D0BWP12T30P140 U127 ( .A1(n95), .A2(n151), .B(n57), .ZN(n310) );
  OAI21D0BWP12T30P140 U128 ( .A1(n97), .A2(n149), .B(data[3]), .ZN(n58) );
  OAI21D0BWP12T30P140 U129 ( .A1(n97), .A2(n151), .B(n58), .ZN(n309) );
  INR2D1BWP12T30P140 U130 ( .A1(n59), .B1(bitcounter[6]), .ZN(n125) );
  AN2D0BWP12T30P140 U131 ( .A1(n125), .A2(n100), .Z(n116) );
  ND2D0BWP12T30P140 U132 ( .A1(n116), .A2(n60), .ZN(n63) );
  INVD0BWP12T30P140 U133 ( .I(n61), .ZN(n130) );
  OAI21D0BWP12T30P140 U134 ( .A1(n63), .A2(n130), .B(pcmright_valid), .ZN(n62)
         );
  OAI21D0BWP12T30P140 U135 ( .A1(n63), .A2(n123), .B(n62), .ZN(n272) );
  ND2D0BWP12T30P140 U136 ( .A1(n124), .A2(n65), .ZN(n113) );
  OAI21D0BWP12T30P140 U137 ( .A1(n113), .A2(n153), .B(addr[0]), .ZN(n64) );
  OAI21D0BWP12T30P140 U138 ( .A1(n113), .A2(n155), .B(n64), .ZN(n292) );
  ND2D0BWP12T30P140 U139 ( .A1(n100), .A2(n65), .ZN(n115) );
  OAI21D0BWP12T30P140 U140 ( .A1(n115), .A2(n153), .B(addr[1]), .ZN(n66) );
  OAI21D0BWP12T30P140 U141 ( .A1(n115), .A2(n155), .B(n66), .ZN(n291) );
  OAI21D0BWP12T30P140 U142 ( .A1(n113), .A2(n161), .B(addr[2]), .ZN(n67) );
  OAI21D0BWP12T30P140 U143 ( .A1(n113), .A2(n163), .B(n67), .ZN(n290) );
  OAI21D0BWP12T30P140 U144 ( .A1(n115), .A2(n161), .B(addr[3]), .ZN(n68) );
  OAI21D0BWP12T30P140 U145 ( .A1(n115), .A2(n163), .B(n68), .ZN(n289) );
  NR2D0BWP12T30P140 U146 ( .A1(bitcounter[6]), .A2(n69), .ZN(n71) );
  ND2D0BWP12T30P140 U147 ( .A1(n146), .A2(n71), .ZN(n78) );
  OAI21D0BWP12T30P140 U148 ( .A1(n78), .A2(n157), .B(addr[4]), .ZN(n70) );
  OAI21D0BWP12T30P140 U149 ( .A1(n78), .A2(n159), .B(n70), .ZN(n288) );
  ND2D0BWP12T30P140 U150 ( .A1(n144), .A2(n71), .ZN(n81) );
  OAI21D0BWP12T30P140 U151 ( .A1(n81), .A2(n157), .B(addr[5]), .ZN(n72) );
  OAI21D0BWP12T30P140 U152 ( .A1(n81), .A2(n159), .B(n72), .ZN(n287) );
  OAI21D0BWP12T30P140 U153 ( .A1(n78), .A2(n149), .B(addr[6]), .ZN(n73) );
  OAI21D0BWP12T30P140 U154 ( .A1(n78), .A2(n151), .B(n73), .ZN(n286) );
  OAI21D0BWP12T30P140 U155 ( .A1(n81), .A2(n149), .B(addr[7]), .ZN(n74) );
  OAI21D0BWP12T30P140 U156 ( .A1(n81), .A2(n151), .B(n74), .ZN(n285) );
  OAI21D0BWP12T30P140 U157 ( .A1(n78), .A2(n153), .B(addr[8]), .ZN(n75) );
  OAI21D0BWP12T30P140 U158 ( .A1(n78), .A2(n155), .B(n75), .ZN(n284) );
  OAI21D0BWP12T30P140 U159 ( .A1(n81), .A2(n153), .B(addr[9]), .ZN(n76) );
  OAI21D0BWP12T30P140 U160 ( .A1(n81), .A2(n155), .B(n76), .ZN(n283) );
  OAI21D0BWP12T30P140 U161 ( .A1(n78), .A2(n161), .B(addr[10]), .ZN(n77) );
  OAI21D0BWP12T30P140 U162 ( .A1(n78), .A2(n163), .B(n77), .ZN(n282) );
  ND2D0BWP12T30P140 U163 ( .A1(n134), .A2(n146), .ZN(n141) );
  NR2D0BWP12T30P140 U164 ( .A1(n157), .A2(n141), .ZN(n170) );
  INVD0BWP12T30P140 U165 ( .I(pcmright[0]), .ZN(n79) );
  OAI22D0BWP12T30P140 U166 ( .A1(n170), .A2(n79), .B1(n159), .B2(n141), .ZN(
        n240) );
  OAI21D0BWP12T30P140 U167 ( .A1(n81), .A2(n161), .B(addr[11]), .ZN(n80) );
  OAI21D0BWP12T30P140 U168 ( .A1(n81), .A2(n163), .B(n80), .ZN(n281) );
  ND2D0BWP12T30P140 U169 ( .A1(n125), .A2(n146), .ZN(n89) );
  OAI21D0BWP12T30P140 U170 ( .A1(n89), .A2(n157), .B(addr[12]), .ZN(n82) );
  OAI21D0BWP12T30P140 U171 ( .A1(n89), .A2(n159), .B(n82), .ZN(n280) );
  ND2D0BWP12T30P140 U172 ( .A1(n125), .A2(n144), .ZN(n91) );
  OAI21D0BWP12T30P140 U173 ( .A1(n91), .A2(n157), .B(addr[13]), .ZN(n83) );
  OAI21D0BWP12T30P140 U174 ( .A1(n91), .A2(n159), .B(n83), .ZN(n279) );
  OAI21D0BWP12T30P140 U175 ( .A1(n89), .A2(n149), .B(addr[14]), .ZN(n84) );
  OAI21D0BWP12T30P140 U176 ( .A1(n89), .A2(n151), .B(n84), .ZN(n278) );
  OAI21D0BWP12T30P140 U177 ( .A1(n91), .A2(n149), .B(addr[15]), .ZN(n85) );
  OAI21D0BWP12T30P140 U178 ( .A1(n91), .A2(n151), .B(n85), .ZN(n277) );
  OAI21D0BWP12T30P140 U179 ( .A1(n89), .A2(n153), .B(addr[16]), .ZN(n86) );
  OAI21D0BWP12T30P140 U180 ( .A1(n89), .A2(n155), .B(n86), .ZN(n276) );
  OAI21D0BWP12T30P140 U181 ( .A1(n91), .A2(n153), .B(addr[17]), .ZN(n87) );
  OAI21D0BWP12T30P140 U182 ( .A1(n91), .A2(n155), .B(n87), .ZN(n275) );
  OAI21D0BWP12T30P140 U183 ( .A1(n89), .A2(n161), .B(addr[18]), .ZN(n88) );
  OAI21D0BWP12T30P140 U184 ( .A1(n89), .A2(n163), .B(n88), .ZN(n274) );
  OAI21D0BWP12T30P140 U185 ( .A1(n91), .A2(n161), .B(addr[19]), .ZN(n90) );
  OAI21D0BWP12T30P140 U186 ( .A1(n91), .A2(n163), .B(n90), .ZN(n273) );
  OAI21D0BWP12T30P140 U187 ( .A1(n95), .A2(n153), .B(data[4]), .ZN(n92) );
  OAI21D0BWP12T30P140 U188 ( .A1(n95), .A2(n155), .B(n92), .ZN(n308) );
  OAI21D0BWP12T30P140 U189 ( .A1(n97), .A2(n153), .B(data[5]), .ZN(n93) );
  OAI21D0BWP12T30P140 U190 ( .A1(n97), .A2(n155), .B(n93), .ZN(n307) );
  OAI21D0BWP12T30P140 U191 ( .A1(n95), .A2(n161), .B(data[6]), .ZN(n94) );
  OAI21D0BWP12T30P140 U192 ( .A1(n95), .A2(n163), .B(n94), .ZN(n306) );
  OAI21D0BWP12T30P140 U193 ( .A1(n97), .A2(n161), .B(data[7]), .ZN(n96) );
  OAI21D0BWP12T30P140 U194 ( .A1(n97), .A2(n163), .B(n96), .ZN(n305) );
  ND2D0BWP12T30P140 U195 ( .A1(n124), .A2(n99), .ZN(n107) );
  OAI21D0BWP12T30P140 U196 ( .A1(n107), .A2(n157), .B(data[8]), .ZN(n98) );
  OAI21D0BWP12T30P140 U197 ( .A1(n107), .A2(n159), .B(n98), .ZN(n304) );
  ND2D0BWP12T30P140 U198 ( .A1(n100), .A2(n99), .ZN(n109) );
  OAI21D0BWP12T30P140 U199 ( .A1(n109), .A2(n157), .B(data[9]), .ZN(n101) );
  OAI21D0BWP12T30P140 U200 ( .A1(n109), .A2(n159), .B(n101), .ZN(n303) );
  OAI21D0BWP12T30P140 U201 ( .A1(n107), .A2(n149), .B(data[10]), .ZN(n102) );
  OAI21D0BWP12T30P140 U202 ( .A1(n107), .A2(n151), .B(n102), .ZN(n302) );
  OAI21D0BWP12T30P140 U203 ( .A1(n109), .A2(n149), .B(data[11]), .ZN(n103) );
  OAI21D0BWP12T30P140 U204 ( .A1(n109), .A2(n151), .B(n103), .ZN(n301) );
  OAI21D0BWP12T30P140 U205 ( .A1(n107), .A2(n153), .B(data[12]), .ZN(n104) );
  OAI21D0BWP12T30P140 U206 ( .A1(n107), .A2(n155), .B(n104), .ZN(n300) );
  OAI21D0BWP12T30P140 U207 ( .A1(n109), .A2(n153), .B(data[13]), .ZN(n105) );
  OAI21D0BWP12T30P140 U208 ( .A1(n109), .A2(n155), .B(n105), .ZN(n299) );
  OAI21D0BWP12T30P140 U209 ( .A1(n107), .A2(n161), .B(data[14]), .ZN(n106) );
  OAI21D0BWP12T30P140 U210 ( .A1(n107), .A2(n163), .B(n106), .ZN(n298) );
  OAI21D0BWP12T30P140 U211 ( .A1(n109), .A2(n161), .B(data[15]), .ZN(n108) );
  OAI21D0BWP12T30P140 U212 ( .A1(n109), .A2(n163), .B(n108), .ZN(n297) );
  OAI21D0BWP12T30P140 U213 ( .A1(n113), .A2(n157), .B(data[16]), .ZN(n110) );
  OAI21D0BWP12T30P140 U214 ( .A1(n113), .A2(n159), .B(n110), .ZN(n296) );
  OAI21D0BWP12T30P140 U215 ( .A1(n115), .A2(n157), .B(data[17]), .ZN(n111) );
  OAI21D0BWP12T30P140 U216 ( .A1(n115), .A2(n159), .B(n111), .ZN(n295) );
  OAI21D0BWP12T30P140 U217 ( .A1(n113), .A2(n149), .B(data[18]), .ZN(n112) );
  OAI21D0BWP12T30P140 U218 ( .A1(n113), .A2(n151), .B(n112), .ZN(n294) );
  OAI21D0BWP12T30P140 U219 ( .A1(n115), .A2(n149), .B(data[19]), .ZN(n114) );
  OAI21D0BWP12T30P140 U220 ( .A1(n115), .A2(n151), .B(n114), .ZN(n293) );
  ND2D0BWP12T30P140 U221 ( .A1(n116), .A2(n126), .ZN(n122) );
  OAI31D0BWP12T30P140 U222 ( .A1(bitcounter[1]), .A2(n130), .A3(n122), .B(
        frame_valid), .ZN(n117) );
  OAI31D0BWP12T30P140 U223 ( .A1(bitcounter[1]), .A2(n123), .A3(n122), .B(n117), .ZN(n239) );
  INVD0BWP12T30P140 U224 ( .I(sync_old), .ZN(n119) );
  OAI22D0BWP12T30P140 U225 ( .A1(n120), .A2(n119), .B1(n118), .B2(n130), .ZN(
        n268) );
  OAI31D0BWP12T30P140 U226 ( .A1(n132), .A2(n130), .A3(n122), .B(data_valid), 
        .ZN(n121) );
  OAI31D0BWP12T30P140 U227 ( .A1(n123), .A2(n132), .A3(n122), .B(n121), .ZN(
        n270) );
  ND3D0BWP12T30P140 U228 ( .A1(n126), .A2(n125), .A3(n124), .ZN(n129) );
  IND2D1BWP12T30P140 U229 ( .A1(n129), .B1(n127), .ZN(n133) );
  OAI31D0BWP12T30P140 U230 ( .A1(bitcounter[1]), .A2(n130), .A3(n129), .B(
        addr_valid), .ZN(n128) );
  OAI21D0BWP12T30P140 U231 ( .A1(bitcounter[1]), .A2(n133), .B(n128), .ZN(n269) );
  OAI31D0BWP12T30P140 U232 ( .A1(n132), .A2(n130), .A3(n129), .B(pcmleft_valid), .ZN(n131) );
  OAI21D0BWP12T30P140 U233 ( .A1(n133), .A2(n132), .B(n131), .ZN(n271) );
  ND2D0BWP12T30P140 U234 ( .A1(n134), .A2(n144), .ZN(n143) );
  OAI21D0BWP12T30P140 U235 ( .A1(n143), .A2(n157), .B(pcmright[1]), .ZN(n135)
         );
  OAI21D0BWP12T30P140 U236 ( .A1(n143), .A2(n159), .B(n135), .ZN(n241) );
  OAI21D0BWP12T30P140 U237 ( .A1(n141), .A2(n149), .B(pcmright[2]), .ZN(n136)
         );
  OAI21D0BWP12T30P140 U238 ( .A1(n141), .A2(n151), .B(n136), .ZN(n242) );
  OAI21D0BWP12T30P140 U239 ( .A1(n143), .A2(n149), .B(pcmright[3]), .ZN(n137)
         );
  OAI21D0BWP12T30P140 U240 ( .A1(n143), .A2(n151), .B(n137), .ZN(n243) );
  OAI21D0BWP12T30P140 U241 ( .A1(n141), .A2(n153), .B(pcmright[4]), .ZN(n138)
         );
  OAI21D0BWP12T30P140 U242 ( .A1(n141), .A2(n155), .B(n138), .ZN(n244) );
  OAI21D0BWP12T30P140 U243 ( .A1(n143), .A2(n153), .B(pcmright[5]), .ZN(n139)
         );
  OAI21D0BWP12T30P140 U244 ( .A1(n143), .A2(n155), .B(n139), .ZN(n245) );
  OAI21D0BWP12T30P140 U245 ( .A1(n141), .A2(n161), .B(pcmright[6]), .ZN(n140)
         );
  OAI21D0BWP12T30P140 U246 ( .A1(n141), .A2(n163), .B(n140), .ZN(n246) );
  OAI21D0BWP12T30P140 U247 ( .A1(n143), .A2(n161), .B(pcmright[7]), .ZN(n142)
         );
  OAI21D0BWP12T30P140 U248 ( .A1(n143), .A2(n163), .B(n142), .ZN(n247) );
  ND2D0BWP12T30P140 U249 ( .A1(n147), .A2(n144), .ZN(n160) );
  OAI21D0BWP12T30P140 U250 ( .A1(n160), .A2(n149), .B(pcmright[11]), .ZN(n145)
         );
  OAI21D0BWP12T30P140 U251 ( .A1(n160), .A2(n151), .B(n145), .ZN(n251) );
  ND2D0BWP12T30P140 U252 ( .A1(n147), .A2(n146), .ZN(n164) );
  OAI21D0BWP12T30P140 U253 ( .A1(n164), .A2(n153), .B(pcmright[12]), .ZN(n148)
         );
  OAI21D0BWP12T30P140 U254 ( .A1(n164), .A2(n155), .B(n148), .ZN(n252) );
  OAI21D0BWP12T30P140 U255 ( .A1(n164), .A2(n149), .B(pcmright[10]), .ZN(n150)
         );
  OAI21D0BWP12T30P140 U256 ( .A1(n164), .A2(n151), .B(n150), .ZN(n250) );
  OAI21D0BWP12T30P140 U257 ( .A1(n160), .A2(n161), .B(pcmright[15]), .ZN(n152)
         );
  OAI21D0BWP12T30P140 U258 ( .A1(n160), .A2(n163), .B(n152), .ZN(n255) );
  OAI21D0BWP12T30P140 U259 ( .A1(n160), .A2(n153), .B(pcmright[13]), .ZN(n154)
         );
  OAI21D0BWP12T30P140 U260 ( .A1(n160), .A2(n155), .B(n154), .ZN(n253) );
  OAI21D0BWP12T30P140 U261 ( .A1(n164), .A2(n157), .B(pcmright[8]), .ZN(n156)
         );
  OAI21D0BWP12T30P140 U262 ( .A1(n164), .A2(n159), .B(n156), .ZN(n248) );
  OAI21D0BWP12T30P140 U263 ( .A1(n160), .A2(n157), .B(pcmright[9]), .ZN(n158)
         );
  OAI21D0BWP12T30P140 U264 ( .A1(n160), .A2(n159), .B(n158), .ZN(n249) );
  OAI21D0BWP12T30P140 U265 ( .A1(n164), .A2(n161), .B(pcmright[14]), .ZN(n162)
         );
  OAI21D0BWP12T30P140 U266 ( .A1(n164), .A2(n163), .B(n162), .ZN(n254) );
  CKBD0BWP12T30P140 U267 ( .I(sys_clk), .Z(n176) );
  CKBD0BWP12T30P140 U268 ( .I(sys_clk), .Z(n175) );
  CKBD0BWP12T30P140 U269 ( .I(sys_clk), .Z(n174) );
  CKBD0BWP12T30P140 U270 ( .I(sys_clk), .Z(n178) );
  CKBD0BWP12T30P140 U271 ( .I(sys_clk), .Z(n177) );
  AOI32D0BWP12T30P140 U272 ( .A1(n168), .A2(n167), .A3(n166), .B1(
        bitcounter[3]), .B2(n165), .ZN(n169) );
  ND2D0BWP12T30P140 U273 ( .A1(n169), .A2(n172), .ZN(n265) );
  INVD0BWP12T30P140 U274 ( .I(en), .ZN(n171) );
  AO31D0BWP12T30P140 U275 ( .A1(next_frame), .A2(n172), .A3(n171), .B(n170), 
        .Z(n260) );
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
  wire   dmar_finished_r, N30, dmaw_finished_r, N31, request_en, request_write,
         N564, N565, N566, N567, N568, N569, N570, N571, N572, N573, N574,
         N575, N576, N577, N578, N579, N580, N581, N582, N583, N584, N585,
         N586, N587, N588, N589, N590, N591, N592, N593, N594, N595, N718,
         N719, N720, N722, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
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
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n1,
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
         n134, n135, n136, n137, n138, n139, n140, n141, n304, n305, n306,
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
         n626, n627, n628, n629, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654;
  wire   [6:0] request_addr;
  wire   [15:0] request_data;
  wire   [15:0] reply_data;

  DFQD2BWP12T30P140 crreply_irq_reg ( .D(N722), .CP(n653), .Q(crreply_irq) );
  DFQD2BWP12T30P140 crrequest_irq_reg ( .D(N718), .CP(n654), .Q(crrequest_irq)
         );
  DFQD2BWP12T30P140 csr_do_reg_31_ ( .D(N595), .CP(n645), .Q(csr_do[31]) );
  DFQD2BWP12T30P140 csr_do_reg_30_ ( .D(N594), .CP(n647), .Q(csr_do[30]) );
  DFQD2BWP12T30P140 csr_do_reg_29_ ( .D(N593), .CP(n650), .Q(csr_do[29]) );
  DFQD2BWP12T30P140 csr_do_reg_28_ ( .D(N592), .CP(n652), .Q(csr_do[28]) );
  DFQD2BWP12T30P140 csr_do_reg_27_ ( .D(N591), .CP(n654), .Q(csr_do[27]) );
  DFQD2BWP12T30P140 csr_do_reg_26_ ( .D(N590), .CP(n653), .Q(csr_do[26]) );
  DFQD2BWP12T30P140 csr_do_reg_24_ ( .D(N588), .CP(n647), .Q(csr_do[24]) );
  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N587), .CP(n646), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N586), .CP(n648), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N585), .CP(n649), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_20_ ( .D(N584), .CP(n651), .Q(csr_do[20]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N583), .CP(n650), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N582), .CP(n652), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 dmar_irq_reg ( .D(N719), .CP(n652), .Q(dmar_irq) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N581), .CP(n650), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(N580), .CP(n649), .Q(csr_do[16]) );
  DFQD2BWP12T30P140 dmaw_irq_reg ( .D(N720), .CP(n648), .Q(dmaw_irq) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N579), .CP(n648), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N578), .CP(n648), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N577), .CP(n648), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N575), .CP(n647), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N574), .CP(n647), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N573), .CP(n647), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N572), .CP(n647), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N571), .CP(n647), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N570), .CP(n646), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N569), .CP(n646), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N568), .CP(n646), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N567), .CP(n646), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N566), .CP(n646), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N565), .CP(n646), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N564), .CP(n645), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 request_addr_reg_5_ ( .D(n161), .CP(sys_clk), .Q(
        request_addr[5]) );
  DFQD2BWP12T30P140 dmar_finished_r_reg ( .D(N30), .CP(n646), .Q(
        dmar_finished_r) );
  DFQD2BWP12T30P140 dmar_addr_reg_8_ ( .D(n217), .CP(sys_clk), .Q(dmar_addr[8]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_12_ ( .D(n229), .CP(sys_clk), .Q(
        dmar_remaining[12]) );
  DFQD2BWP12T30P140 down_addr_valid_reg ( .D(n195), .CP(n652), .Q(
        down_addr_valid) );
  DFQD2BWP12T30P140 down_data_reg_19_ ( .D(n176), .CP(n652), .Q(down_data[19])
         );
  DFQD2BWP12T30P140 down_data_reg_14_ ( .D(n186), .CP(n651), .Q(down_data[14])
         );
  DFQD2BWP12T30P140 down_data_reg_10_ ( .D(n156), .CP(n651), .Q(down_data[10])
         );
  DFQD2BWP12T30P140 request_data_reg_15_ ( .D(n177), .CP(n652), .Q(
        request_data[15]) );
  DFQD2BWP12T30P140 request_data_reg_10_ ( .D(n187), .CP(n651), .Q(
        request_data[10]) );
  DFQD2BWP12T30P140 request_data_reg_6_ ( .D(n157), .CP(n651), .Q(
        request_data[6]) );
  DFQD2BWP12T30P140 down_data_valid_reg ( .D(n194), .CP(n650), .Q(
        down_data_valid) );
  DFQD2BWP12T30P140 dmar_remaining_reg_14_ ( .D(n227), .CP(sys_clk), .Q(
        dmar_remaining[14]) );
  DFQD2BWP12T30P140 down_addr_reg_15_ ( .D(n146), .CP(n645), .Q(down_addr[15])
         );
  DFQD2BWP12T30P140 down_addr_reg_12_ ( .D(n143), .CP(n645), .Q(down_addr[12])
         );
  DFQD2BWP12T30P140 down_data_reg_16_ ( .D(n182), .CP(n652), .Q(down_data[16])
         );
  DFQD2BWP12T30P140 down_data_reg_12_ ( .D(n190), .CP(n651), .Q(down_data[12])
         );
  DFQD2BWP12T30P140 down_data_reg_11_ ( .D(n192), .CP(n651), .Q(down_data[11])
         );
  DFQD2BWP12T30P140 down_data_reg_9_ ( .D(n159), .CP(n651), .Q(down_data[9])
         );
  DFQD2BWP12T30P140 down_data_reg_8_ ( .D(n162), .CP(n650), .Q(down_data[8])
         );
  DFQD2BWP12T30P140 request_en_reg ( .D(n151), .CP(n651), .Q(request_en) );
  DFQD2BWP12T30P140 down_data_reg_18_ ( .D(n178), .CP(n652), .Q(down_data[18])
         );
  DFQD2BWP12T30P140 down_data_reg_17_ ( .D(n180), .CP(n652), .Q(down_data[17])
         );
  DFQD2BWP12T30P140 down_data_reg_15_ ( .D(n184), .CP(n652), .Q(down_data[15])
         );
  DFQD2BWP12T30P140 down_data_reg_7_ ( .D(n165), .CP(n650), .Q(down_data[7])
         );
  DFQD2BWP12T30P140 down_data_reg_6_ ( .D(n168), .CP(n650), .Q(down_data[6])
         );
  DFQD2BWP12T30P140 down_data_reg_5_ ( .D(n153), .CP(n650), .Q(down_data[5])
         );
  DFQD2BWP12T30P140 down_data_reg_4_ ( .D(n171), .CP(n650), .Q(down_data[4])
         );
  DFQD2BWP12T30P140 reply_data_reg_2_ ( .D(n289), .CP(n646), .Q(reply_data[2])
         );
  DFQD2BWP12T30P140 down_addr_reg_19_ ( .D(n150), .CP(n645), .Q(down_addr[19])
         );
  DFQD2BWP12T30P140 reply_data_reg_14_ ( .D(n301), .CP(n648), .Q(
        reply_data[14]) );
  DFQD2BWP12T30P140 reply_data_reg_13_ ( .D(n300), .CP(n648), .Q(
        reply_data[13]) );
  DFQD2BWP12T30P140 reply_data_reg_12_ ( .D(n299), .CP(n647), .Q(
        reply_data[12]) );
  DFQD2BWP12T30P140 reply_data_reg_11_ ( .D(n298), .CP(n647), .Q(
        reply_data[11]) );
  DFQD2BWP12T30P140 reply_data_reg_10_ ( .D(n297), .CP(n647), .Q(
        reply_data[10]) );
  DFQD2BWP12T30P140 reply_data_reg_9_ ( .D(n296), .CP(n647), .Q(reply_data[9])
         );
  DFQD2BWP12T30P140 reply_data_reg_8_ ( .D(n295), .CP(n647), .Q(reply_data[8])
         );
  DFQD2BWP12T30P140 reply_data_reg_7_ ( .D(n294), .CP(n647), .Q(reply_data[7])
         );
  DFQD2BWP12T30P140 reply_data_reg_6_ ( .D(n293), .CP(n646), .Q(reply_data[6])
         );
  DFQD2BWP12T30P140 reply_data_reg_5_ ( .D(n292), .CP(n646), .Q(reply_data[5])
         );
  DFQD2BWP12T30P140 reply_data_reg_4_ ( .D(n291), .CP(n646), .Q(reply_data[4])
         );
  DFQD2BWP12T30P140 reply_data_reg_3_ ( .D(n290), .CP(n646), .Q(reply_data[3])
         );
  DFQD2BWP12T30P140 reply_data_reg_1_ ( .D(n288), .CP(n646), .Q(reply_data[1])
         );
  DFQD2BWP12T30P140 reply_data_reg_0_ ( .D(n303), .CP(n645), .Q(reply_data[0])
         );
  DFQD2BWP12T30P140 down_addr_reg_17_ ( .D(n148), .CP(n645), .Q(down_addr[17])
         );
  DFQD2BWP12T30P140 down_addr_reg_16_ ( .D(n147), .CP(n645), .Q(down_addr[16])
         );
  DFQD2BWP12T30P140 down_addr_reg_14_ ( .D(n145), .CP(n645), .Q(down_addr[14])
         );
  DFQD2BWP12T30P140 down_addr_reg_13_ ( .D(n144), .CP(n645), .Q(down_addr[13])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_10_ ( .D(n231), .CP(sys_clk), .Q(
        dmar_remaining[10]) );
  DFQD2BWP12T30P140 dmar_addr_reg_7_ ( .D(n218), .CP(sys_clk), .Q(dmar_addr[7]) );
  DFQD2BWP12T30P140 request_addr_reg_2_ ( .D(n170), .CP(n649), .Q(
        request_addr[2]) );
  DFQD2BWP12T30P140 request_data_reg_2_ ( .D(n169), .CP(n650), .Q(
        request_data[2]) );
  DFQD2BWP12T30P140 request_addr_reg_6_ ( .D(n158), .CP(n647), .Q(
        request_addr[6]) );
  DFQD2BWP12T30P140 request_addr_reg_4_ ( .D(n164), .CP(n646), .Q(
        request_addr[4]) );
  DFQD2BWP12T30P140 request_addr_reg_3_ ( .D(n167), .CP(n648), .Q(
        request_addr[3]) );
  DFQD2BWP12T30P140 request_addr_reg_0_ ( .D(n175), .CP(n650), .Q(
        request_addr[0]) );
  DFQD2BWP12T30P140 request_data_reg_5_ ( .D(n160), .CP(n651), .Q(
        request_data[5]) );
  DFQD2BWP12T30P140 request_data_reg_4_ ( .D(n163), .CP(n650), .Q(
        request_data[4]) );
  DFQD2BWP12T30P140 request_data_reg_0_ ( .D(n172), .CP(n645), .Q(
        request_data[0]) );
  DFQD2BWP12T30P140 request_data_reg_14_ ( .D(n179), .CP(n652), .Q(
        request_data[14]) );
  DFQD2BWP12T30P140 request_data_reg_13_ ( .D(n181), .CP(n652), .Q(
        request_data[13]) );
  DFQD2BWP12T30P140 request_data_reg_12_ ( .D(n183), .CP(n652), .Q(
        request_data[12]) );
  DFQD2BWP12T30P140 request_data_reg_11_ ( .D(n185), .CP(n652), .Q(
        request_data[11]) );
  DFQD2BWP12T30P140 request_data_reg_9_ ( .D(n189), .CP(n651), .Q(
        request_data[9]) );
  DFQD2BWP12T30P140 request_data_reg_8_ ( .D(n191), .CP(n651), .Q(
        request_data[8]) );
  DFQD2BWP12T30P140 request_data_reg_7_ ( .D(n193), .CP(n651), .Q(
        request_data[7]) );
  DFQD2BWP12T30P140 request_data_reg_1_ ( .D(n154), .CP(n650), .Q(
        request_data[1]) );
  DFQD2BWP12T30P140 request_addr_reg_1_ ( .D(n152), .CP(n651), .Q(
        request_addr[1]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_29_ ( .D(n242), .CP(n654), .Q(dmaw_addr[29])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_24_ ( .D(n247), .CP(n648), .Q(dmaw_addr[24])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_20_ ( .D(n251), .CP(n652), .Q(dmaw_addr[20])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_16_ ( .D(n255), .CP(n645), .Q(dmaw_addr[16])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_24_ ( .D(n201), .CP(n654), .Q(dmar_addr[24])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_20_ ( .D(n205), .CP(n653), .Q(dmar_addr[20])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_16_ ( .D(n209), .CP(n653), .Q(dmar_addr[16])
         );
  DFQD2BWP12T30P140 request_write_reg ( .D(n155), .CP(n653), .Q(request_write)
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_8_ ( .D(n263), .CP(n649), .Q(dmaw_addr[8])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_4_ ( .D(n267), .CP(n648), .Q(dmaw_addr[4])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_27_ ( .D(n198), .CP(n654), .Q(dmar_addr[27])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_29_ ( .D(n196), .CP(n654), .Q(dmar_addr[29])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_11_ ( .D(n230), .CP(sys_clk), .Q(
        dmar_remaining[11]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_28_ ( .D(n243), .CP(n653), .Q(dmaw_addr[28])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_23_ ( .D(n248), .CP(n649), .Q(dmaw_addr[23])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_19_ ( .D(n252), .CP(n648), .Q(dmaw_addr[19])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_4_ ( .D(n221), .CP(n654), .Q(dmar_addr[4])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_28_ ( .D(n197), .CP(n654), .Q(dmar_addr[28])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_19_ ( .D(n206), .CP(n653), .Q(dmar_addr[19])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_12_ ( .D(n275), .CP(n649), .Q(
        dmaw_remaining[12]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_0_ ( .D(n241), .CP(n652), .Q(
        dmar_remaining[0]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_0_ ( .D(n287), .CP(n648), .Q(
        dmaw_remaining[0]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_13_ ( .D(n228), .CP(sys_clk), .Q(
        dmar_remaining[13]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_14_ ( .D(n273), .CP(n649), .Q(
        dmaw_remaining[14]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_2_ ( .D(n239), .CP(n651), .Q(
        dmar_remaining[2]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_2_ ( .D(n285), .CP(n648), .Q(
        dmaw_remaining[2]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_15_ ( .D(n226), .CP(n652), .Q(
        dmar_remaining[15]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_15_ ( .D(n272), .CP(n650), .Q(
        dmaw_remaining[15]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_6_ ( .D(n235), .CP(n647), .Q(
        dmar_remaining[6]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_10_ ( .D(n277), .CP(n649), .Q(
        dmaw_remaining[10]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_6_ ( .D(n281), .CP(n649), .Q(
        dmaw_remaining[6]) );
  DFQD2BWP12T30P140 dmaw_en_reg ( .D(n174), .CP(n654), .Q(dmaw_en) );
  DFQD2BWP12T30P140 dmar_addr_reg_5_ ( .D(n220), .CP(sys_clk), .Q(dmar_addr[5]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_14_ ( .D(n257), .CP(n646), .Q(dmaw_addr[14])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_10_ ( .D(n261), .CP(n650), .Q(dmaw_addr[10])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_6_ ( .D(n265), .CP(n647), .Q(dmaw_addr[6])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_26_ ( .D(n245), .CP(n647), .Q(dmaw_addr[26])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_22_ ( .D(n249), .CP(n651), .Q(dmaw_addr[22])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_18_ ( .D(n253), .CP(n654), .Q(dmaw_addr[18])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_14_ ( .D(n211), .CP(n653), .Q(dmar_addr[14])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_10_ ( .D(n215), .CP(n653), .Q(dmar_addr[10])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_6_ ( .D(n219), .CP(n654), .Q(dmar_addr[6])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_2_ ( .D(n269), .CP(n651), .Q(dmaw_addr[2])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_7_ ( .D(n264), .CP(n645), .Q(dmaw_addr[7])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_3_ ( .D(n268), .CP(n649), .Q(dmaw_addr[3])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_2_ ( .D(n223), .CP(n654), .Q(dmar_addr[2])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_26_ ( .D(n199), .CP(n654), .Q(dmar_addr[26])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_22_ ( .D(n203), .CP(n654), .Q(dmar_addr[22])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_18_ ( .D(n207), .CP(n653), .Q(dmar_addr[18])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_15_ ( .D(n256), .CP(n647), .Q(dmaw_addr[15])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_11_ ( .D(n260), .CP(n651), .Q(dmaw_addr[11])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_3_ ( .D(n222), .CP(n654), .Q(dmar_addr[3])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_12_ ( .D(n213), .CP(n653), .Q(dmar_addr[12])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_15_ ( .D(n210), .CP(n653), .Q(dmar_addr[15])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_11_ ( .D(n214), .CP(n653), .Q(dmar_addr[11])
         );
  DFQD2BWP12T30P140 dmar_en_reg ( .D(n173), .CP(n645), .Q(dmar_en) );
  DFQD2BWP12T30P140 dmar_remaining_reg_8_ ( .D(n233), .CP(n653), .Q(
        dmar_remaining[8]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_4_ ( .D(n237), .CP(n648), .Q(
        dmar_remaining[4]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_8_ ( .D(n279), .CP(n649), .Q(
        dmaw_remaining[8]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_4_ ( .D(n283), .CP(n649), .Q(
        dmaw_remaining[4]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_21_ ( .D(n250), .CP(n650), .Q(dmaw_addr[21])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_17_ ( .D(n254), .CP(n653), .Q(dmaw_addr[17])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_25_ ( .D(n200), .CP(n654), .Q(dmar_addr[25])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_21_ ( .D(n204), .CP(n653), .Q(dmar_addr[21])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_17_ ( .D(n208), .CP(n653), .Q(dmar_addr[17])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_7_ ( .D(n234), .CP(n645), .Q(
        dmar_remaining[7]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_3_ ( .D(n238), .CP(n649), .Q(
        dmar_remaining[3]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_7_ ( .D(n280), .CP(n649), .Q(
        dmaw_remaining[7]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_3_ ( .D(n284), .CP(n648), .Q(
        dmaw_remaining[3]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_11_ ( .D(n276), .CP(n649), .Q(
        dmaw_remaining[11]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_1_ ( .D(n240), .CP(n650), .Q(
        dmar_remaining[1]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_1_ ( .D(n286), .CP(n648), .Q(
        dmaw_remaining[1]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_13_ ( .D(n274), .CP(n649), .Q(
        dmaw_remaining[13]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_9_ ( .D(n232), .CP(n654), .Q(
        dmar_remaining[9]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_9_ ( .D(n278), .CP(n649), .Q(
        dmaw_remaining[9]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_5_ ( .D(n282), .CP(n649), .Q(
        dmaw_remaining[5]) );
  DFQD2BWP12T30P140 dmaw_addr_reg_1_ ( .D(n270), .CP(n650), .Q(dmaw_addr[1])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_1_ ( .D(n224), .CP(n654), .Q(dmar_addr[1])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_13_ ( .D(n258), .CP(n648), .Q(dmaw_addr[13])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_9_ ( .D(n262), .CP(n652), .Q(dmaw_addr[9])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_5_ ( .D(n266), .CP(n646), .Q(dmaw_addr[5])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_13_ ( .D(n212), .CP(n653), .Q(dmar_addr[13])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_0_ ( .D(n271), .CP(n652), .Q(dmaw_addr[0])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_0_ ( .D(n225), .CP(n653), .Q(dmar_addr[0])
         );
  DFQD2BWP12T30P140 down_addr_reg_0_ ( .D(n142), .CP(n645), .Q(down_data[1])
         );
  DFQD1BWP12T30P140 csr_do_reg_25_ ( .D(N589), .CP(n645), .Q(csr_do[25]) );
  DFQD1BWP12T30P140 csr_do_reg_12_ ( .D(N576), .CP(n647), .Q(csr_do[12]) );
  DFQD1BWP12T30P140 dmaw_finished_r_reg ( .D(N31), .CP(n648), .Q(
        dmaw_finished_r) );
  DFQD1BWP12T30P140 down_data_reg_13_ ( .D(n188), .CP(n651), .Q(down_data[13])
         );
  DFQD1BWP12T30P140 reply_data_reg_15_ ( .D(n302), .CP(n648), .Q(
        reply_data[15]) );
  DFQD1BWP12T30P140 down_addr_reg_18_ ( .D(n149), .CP(n645), .Q(down_addr[18])
         );
  DFQD1BWP12T30P140 request_data_reg_3_ ( .D(n166), .CP(n650), .Q(
        request_data[3]) );
  DFQD1BWP12T30P140 dmaw_addr_reg_27_ ( .D(n244), .CP(n645), .Q(dmaw_addr[27])
         );
  DFQD1BWP12T30P140 dmar_addr_reg_23_ ( .D(n202), .CP(n654), .Q(dmar_addr[23])
         );
  DFQD1BWP12T30P140 dmar_addr_reg_9_ ( .D(n216), .CP(sys_clk), .Q(dmar_addr[9]) );
  DFQD1BWP12T30P140 dmaw_addr_reg_12_ ( .D(n259), .CP(n649), .Q(dmaw_addr[12])
         );
  DFQD1BWP12T30P140 dmaw_addr_reg_25_ ( .D(n246), .CP(n646), .Q(dmaw_addr[25])
         );
  DFQD1BWP12T30P140 dmar_remaining_reg_5_ ( .D(n236), .CP(n646), .Q(
        dmar_remaining[5]) );
  AOI32D0BWP12T30P140 U3 ( .A1(n459), .A2(n563), .A3(dmaw_addr[25]), .B1(n578), 
        .B2(n563), .ZN(n367) );
  AOI32D0BWP12T30P140 U4 ( .A1(n471), .A2(n569), .A3(dmar_addr[25]), .B1(n581), 
        .B2(n569), .ZN(n407) );
  AOI32D0BWP12T30P140 U5 ( .A1(n463), .A2(n563), .A3(dmaw_addr[21]), .B1(n578), 
        .B2(n563), .ZN(n370) );
  INVD0BWP12T30P140 U6 ( .I(n576), .ZN(n1) );
  INVD0BWP12T30P140 U7 ( .I(n579), .ZN(n2) );
  INVD0BWP12T30P140 U8 ( .I(down_data[1]), .ZN(n3) );
  INVD0BWP12T30P140 U9 ( .I(n3), .ZN(down_data[2]) );
  INVD0BWP12T30P140 U10 ( .I(n3), .ZN(down_data[3]) );
  INVD0BWP12T30P140 U11 ( .I(n3), .ZN(down_addr[0]) );
  INVD0BWP12T30P140 U12 ( .I(n3), .ZN(down_addr[1]) );
  INVD0BWP12T30P140 U13 ( .I(n3), .ZN(down_addr[2]) );
  INVD0BWP12T30P140 U14 ( .I(n3), .ZN(down_addr[3]) );
  INVD0BWP12T30P140 U15 ( .I(n3), .ZN(down_addr[4]) );
  INVD0BWP12T30P140 U16 ( .I(n3), .ZN(down_addr[5]) );
  INVD0BWP12T30P140 U17 ( .I(n3), .ZN(down_addr[6]) );
  INVD0BWP12T30P140 U18 ( .I(n3), .ZN(down_addr[7]) );
  INVD0BWP12T30P140 U19 ( .I(n3), .ZN(down_addr[8]) );
  INVD0BWP12T30P140 U20 ( .I(n3), .ZN(down_addr[9]) );
  INVD0BWP12T30P140 U21 ( .I(n3), .ZN(down_addr[10]) );
  INVD0BWP12T30P140 U22 ( .I(n3), .ZN(down_addr[11]) );
  INVD0BWP12T30P140 U23 ( .I(n3), .ZN(down_data[0]) );
  ND2D0BWP12T30P140 U24 ( .A1(down_en), .A2(down_next_frame), .ZN(n6) );
  INVD0BWP12T30P140 U25 ( .I(sys_rst), .ZN(n593) );
  INVD0BWP12T30P140 U26 ( .I(n593), .ZN(n629) );
  OR2D0BWP12T30P140 U27 ( .A1(n6), .A2(n629), .Z(n583) );
  CKBD0BWP12T30P140 U28 ( .I(n583), .Z(n590) );
  INVD0BWP12T30P140 U29 ( .I(n583), .ZN(n582) );
  OA22D0BWP12T30P140 U30 ( .A1(n590), .A2(request_data[7]), .B1(down_data[11]), 
        .B2(n582), .Z(n192) );
  INVD0BWP12T30P140 U31 ( .I(n583), .ZN(n589) );
  OA22D0BWP12T30P140 U32 ( .A1(n590), .A2(request_data[8]), .B1(down_data[12]), 
        .B2(n589), .Z(n190) );
  OA22D0BWP12T30P140 U33 ( .A1(n590), .A2(request_data[9]), .B1(down_data[13]), 
        .B2(n589), .Z(n188) );
  OA22D0BWP12T30P140 U34 ( .A1(n590), .A2(request_data[12]), .B1(down_data[16]), .B2(n589), .Z(n182) );
  OA22D0BWP12T30P140 U35 ( .A1(n583), .A2(request_addr[0]), .B1(down_addr[12]), 
        .B2(n589), .Z(n143) );
  OA22D0BWP12T30P140 U36 ( .A1(n590), .A2(request_addr[3]), .B1(down_addr[15]), 
        .B2(n582), .Z(n146) );
  NR4D0BWP12T30P140 U37 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .ZN(n20) );
  AN2D0BWP12T30P140 U38 ( .A1(n20), .A2(csr_we), .Z(n103) );
  INR2D1BWP12T30P140 U39 ( .A1(csr_a[2]), .B1(csr_a[3]), .ZN(n33) );
  ND2D0BWP12T30P140 U40 ( .A1(n103), .A2(n33), .ZN(n443) );
  INVD0BWP12T30P140 U41 ( .I(csr_a[1]), .ZN(n21) );
  NR2D0BWP12T30P140 U42 ( .A1(n21), .A2(csr_a[0]), .ZN(n7) );
  INVD0BWP12T30P140 U43 ( .I(n7), .ZN(n130) );
  OAI211D0BWP12T30P140 U44 ( .A1(n443), .A2(n130), .B(dmar_next), .C(n593), 
        .ZN(n520) );
  INVD0BWP12T30P140 U45 ( .I(n520), .ZN(n450) );
  NR3D0BWP12T30P140 U46 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), .A3(
        dmar_remaining[2]), .ZN(n449) );
  INVD0BWP12T30P140 U47 ( .I(n449), .ZN(n492) );
  NR3D0BWP12T30P140 U48 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[3]), .A3(
        n492), .ZN(n534) );
  INR3D1BWP12T30P140 U49 ( .A1(n534), .B1(dmar_remaining[6]), .B2(
        dmar_remaining[5]), .ZN(n447) );
  INVD0BWP12T30P140 U50 ( .I(n447), .ZN(n489) );
  NR3D0BWP12T30P140 U51 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[7]), .A3(
        n489), .ZN(n529) );
  INR3D1BWP12T30P140 U52 ( .A1(n529), .B1(dmar_remaining[10]), .B2(
        dmar_remaining[9]), .ZN(n85) );
  INVD0BWP12T30P140 U53 ( .I(n85), .ZN(n506) );
  NR3D0BWP12T30P140 U54 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[11]), 
        .A3(n506), .ZN(n4) );
  OAI21D0BWP12T30P140 U55 ( .A1(n443), .A2(n130), .B(n593), .ZN(n533) );
  OR2D0BWP12T30P140 U56 ( .A1(dmar_next), .A2(n533), .Z(n139) );
  OAI21D0BWP12T30P140 U57 ( .A1(n4), .A2(n520), .B(n139), .ZN(n305) );
  AOI21D0BWP12T30P140 U58 ( .A1(n450), .A2(dmar_remaining[13]), .B(n305), .ZN(
        n324) );
  INVD0BWP12T30P140 U59 ( .I(dmar_remaining[14]), .ZN(n325) );
  NR3D0BWP12T30P140 U60 ( .A1(n629), .A2(n443), .A3(n130), .ZN(n535) );
  INVD0BWP12T30P140 U61 ( .I(n4), .ZN(n326) );
  NR3D0BWP12T30P140 U62 ( .A1(dmar_remaining[13]), .A2(n520), .A3(n326), .ZN(
        n304) );
  AOI22D0BWP12T30P140 U63 ( .A1(csr_di[16]), .A2(n535), .B1(n304), .B2(n325), 
        .ZN(n5) );
  OAI21D0BWP12T30P140 U64 ( .A1(n324), .A2(n325), .B(n5), .ZN(n227) );
  INVD0BWP12T30P140 U65 ( .I(request_en), .ZN(n587) );
  NR2D0BWP12T30P140 U66 ( .A1(n587), .A2(n590), .ZN(N718) );
  ND2D0BWP12T30P140 U67 ( .A1(n593), .A2(n6), .ZN(n586) );
  INVD0BWP12T30P140 U68 ( .I(n586), .ZN(n12) );
  AO22D0BWP12T30P140 U69 ( .A1(request_write), .A2(N718), .B1(n12), .B2(
        down_data_valid), .Z(n194) );
  INVD0BWP12T30P140 U70 ( .I(csr_di[6]), .ZN(n516) );
  NR2D0BWP12T30P140 U71 ( .A1(csr_a[2]), .A2(csr_a[3]), .ZN(n102) );
  AOI31D0BWP12T30P140 U72 ( .A1(n103), .A2(n7), .A3(n102), .B(n629), .ZN(n475)
         );
  INVD0BWP12T30P140 U73 ( .I(n475), .ZN(n8) );
  ND2D0BWP12T30P140 U74 ( .A1(n593), .A2(n8), .ZN(n413) );
  INVD0BWP12T30P140 U75 ( .I(request_data[6]), .ZN(n9) );
  OAI22D0BWP12T30P140 U76 ( .A1(n516), .A2(n413), .B1(n9), .B2(n8), .ZN(n157)
         );
  INVD0BWP12T30P140 U77 ( .I(csr_di[10]), .ZN(n455) );
  INVD0BWP12T30P140 U78 ( .I(request_data[10]), .ZN(n10) );
  OAI22D0BWP12T30P140 U79 ( .A1(n455), .A2(n413), .B1(n8), .B2(n10), .ZN(n187)
         );
  INVD0BWP12T30P140 U80 ( .I(csr_di[15]), .ZN(n527) );
  INVD0BWP12T30P140 U81 ( .I(request_data[15]), .ZN(n11) );
  OAI22D0BWP12T30P140 U82 ( .A1(n527), .A2(n413), .B1(n8), .B2(n11), .ZN(n177)
         );
  MAOI22D0BWP12T30P140 U83 ( .A1(n589), .A2(n9), .B1(down_data[10]), .B2(n582), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U84 ( .A1(n589), .A2(n10), .B1(down_data[14]), .B2(n582), .ZN(n186) );
  MAOI22D0BWP12T30P140 U85 ( .A1(n582), .A2(n11), .B1(down_data[19]), .B2(n582), .ZN(n176) );
  AO21D0BWP12T30P140 U86 ( .A1(n12), .A2(down_addr_valid), .B(N718), .Z(n195)
         );
  INVD0BWP12T30P140 U87 ( .I(dmar_remaining[11]), .ZN(n13) );
  AOI31D0BWP12T30P140 U88 ( .A1(dmar_next), .A2(n13), .A3(n85), .B(n533), .ZN(
        n14) );
  AOI22D0BWP12T30P140 U89 ( .A1(dmar_remaining[12]), .A2(n14), .B1(n535), .B2(
        csr_di[14]), .ZN(n15) );
  OAI21D0BWP12T30P140 U90 ( .A1(n520), .A2(n326), .B(n15), .ZN(n229) );
  INVD0BWP12T30P140 U91 ( .I(csr_a[0]), .ZN(n22) );
  NR2D0BWP12T30P140 U92 ( .A1(n22), .A2(csr_a[1]), .ZN(n19) );
  INVD0BWP12T30P140 U93 ( .I(n19), .ZN(n89) );
  OR3D0BWP12T30P140 U94 ( .A1(n629), .A2(n89), .A3(n443), .Z(n123) );
  INVD0BWP12T30P140 U95 ( .I(dmar_addr[8]), .ZN(n77) );
  NR2D0BWP12T30P140 U96 ( .A1(n89), .A2(n443), .ZN(n16) );
  NR2D0BWP12T30P140 U97 ( .A1(n629), .A2(n16), .ZN(n431) );
  ND2D0BWP12T30P140 U98 ( .A1(n431), .A2(dmar_next), .ZN(n581) );
  INVD0BWP12T30P140 U99 ( .I(n581), .ZN(n414) );
  INVD0BWP12T30P140 U100 ( .I(n414), .ZN(n570) );
  ND3D0BWP12T30P140 U101 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .A3(
        dmar_addr[2]), .ZN(n107) );
  INVD0BWP12T30P140 U102 ( .I(dmar_addr[4]), .ZN(n109) );
  INVD0BWP12T30P140 U103 ( .I(dmar_addr[3]), .ZN(n428) );
  NR3D0BWP12T30P140 U104 ( .A1(n107), .A2(n109), .A3(n428), .ZN(n385) );
  ND3D0BWP12T30P140 U105 ( .A1(n385), .A2(dmar_addr[6]), .A3(dmar_addr[5]), 
        .ZN(n78) );
  NR2D0BWP12T30P140 U106 ( .A1(n570), .A2(n78), .ZN(n493) );
  INR2D1BWP12T30P140 U107 ( .A1(n431), .B1(dmar_next), .ZN(n579) );
  AOI21D0BWP12T30P140 U108 ( .A1(n431), .A2(n78), .B(n579), .ZN(n496) );
  OAI21D0BWP12T30P140 U109 ( .A1(dmar_addr[7]), .A2(n570), .B(n496), .ZN(n17)
         );
  AOI32D0BWP12T30P140 U110 ( .A1(dmar_addr[7]), .A2(n77), .A3(n493), .B1(
        dmar_addr[8]), .B2(n17), .ZN(n18) );
  OAI21D0BWP12T30P140 U111 ( .A1(n123), .A2(n455), .B(n18), .ZN(n217) );
  AOI31D0BWP12T30P140 U112 ( .A1(n19), .A2(n103), .A3(n102), .B(n629), .ZN(
        n485) );
  NR2D0BWP12T30P140 U113 ( .A1(n629), .A2(n485), .ZN(n486) );
  AO22D0BWP12T30P140 U114 ( .A1(csr_di[5]), .A2(n486), .B1(request_addr[5]), 
        .B2(n485), .Z(n161) );
  ND2D0BWP12T30P140 U115 ( .A1(n20), .A2(n593), .ZN(n30) );
  IND2D1BWP12T30P140 U116 ( .A1(n30), .B1(n102), .ZN(n28) );
  NR2D0BWP12T30P140 U117 ( .A1(n89), .A2(n28), .ZN(n595) );
  INR2D1BWP12T30P140 U118 ( .A1(csr_a[3]), .B1(csr_a[2]), .ZN(n88) );
  AOI222D0BWP12T30P140 U119 ( .A1(n88), .A2(dmaw_en), .B1(n33), .B2(dmar_en), 
        .C1(n102), .C2(request_en), .ZN(n24) );
  ND2D0BWP12T30P140 U120 ( .A1(n22), .A2(n21), .ZN(n442) );
  NR3D0BWP12T30P140 U121 ( .A1(n22), .A2(n21), .A3(n28), .ZN(n606) );
  NR2D0BWP12T30P140 U122 ( .A1(n130), .A2(n28), .ZN(n594) );
  AOI22D0BWP12T30P140 U123 ( .A1(n606), .A2(reply_data[0]), .B1(n594), .B2(
        request_data[0]), .ZN(n23) );
  OAI31D0BWP12T30P140 U124 ( .A1(n24), .A2(n30), .A3(n442), .B(n23), .ZN(n25)
         );
  AO21D0BWP12T30P140 U125 ( .A1(n595), .A2(request_addr[0]), .B(n25), .Z(N564)
         );
  INVD0BWP12T30P140 U126 ( .I(request_write), .ZN(n27) );
  AOI22D0BWP12T30P140 U127 ( .A1(n606), .A2(reply_data[1]), .B1(n594), .B2(
        request_data[1]), .ZN(n26) );
  OAI31D0BWP12T30P140 U128 ( .A1(n28), .A2(n442), .A3(n27), .B(n26), .ZN(n29)
         );
  AO21D0BWP12T30P140 U129 ( .A1(n595), .A2(request_addr[1]), .B(n29), .Z(N565)
         );
  NR2D0BWP12T30P140 U130 ( .A1(n89), .A2(n30), .ZN(n31) );
  ND2D0BWP12T30P140 U131 ( .A1(n33), .A2(n31), .ZN(n598) );
  INVD0BWP12T30P140 U132 ( .I(n598), .ZN(n614) );
  NR2D0BWP12T30P140 U133 ( .A1(n130), .A2(n30), .ZN(n32) );
  ND2D0BWP12T30P140 U134 ( .A1(n88), .A2(n32), .ZN(n596) );
  INVD0BWP12T30P140 U135 ( .I(n596), .ZN(n613) );
  AOI22D0BWP12T30P140 U136 ( .A1(dmar_addr[1]), .A2(n614), .B1(
        dmaw_remaining[1]), .B2(n613), .ZN(n37) );
  ND2D0BWP12T30P140 U137 ( .A1(n88), .A2(n31), .ZN(n602) );
  INVD0BWP12T30P140 U138 ( .I(n602), .ZN(n612) );
  ND2D0BWP12T30P140 U139 ( .A1(n33), .A2(n32), .ZN(n600) );
  INVD0BWP12T30P140 U140 ( .I(n600), .ZN(n611) );
  AOI22D0BWP12T30P140 U141 ( .A1(dmaw_addr[1]), .A2(n612), .B1(
        dmar_remaining[1]), .B2(n611), .ZN(n36) );
  AOI22D0BWP12T30P140 U142 ( .A1(n595), .A2(request_addr[3]), .B1(n594), .B2(
        request_data[3]), .ZN(n35) );
  ND2D0BWP12T30P140 U143 ( .A1(n606), .A2(reply_data[3]), .ZN(n34) );
  ND4D0BWP12T30P140 U144 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .ZN(N567)
         );
  AOI22D0BWP12T30P140 U145 ( .A1(dmar_addr[2]), .A2(n614), .B1(
        dmaw_remaining[2]), .B2(n613), .ZN(n41) );
  AOI22D0BWP12T30P140 U146 ( .A1(dmaw_addr[2]), .A2(n612), .B1(
        dmar_remaining[2]), .B2(n611), .ZN(n40) );
  AOI22D0BWP12T30P140 U147 ( .A1(n595), .A2(request_addr[4]), .B1(n594), .B2(
        request_data[4]), .ZN(n39) );
  ND2D0BWP12T30P140 U148 ( .A1(n606), .A2(reply_data[4]), .ZN(n38) );
  ND4D0BWP12T30P140 U149 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .ZN(N568)
         );
  AOI22D0BWP12T30P140 U150 ( .A1(dmar_addr[3]), .A2(n614), .B1(
        dmaw_remaining[3]), .B2(n613), .ZN(n45) );
  AOI22D0BWP12T30P140 U151 ( .A1(dmaw_addr[3]), .A2(n612), .B1(
        dmar_remaining[3]), .B2(n611), .ZN(n44) );
  AOI22D0BWP12T30P140 U152 ( .A1(n595), .A2(request_addr[5]), .B1(n594), .B2(
        request_data[5]), .ZN(n43) );
  ND2D0BWP12T30P140 U153 ( .A1(n606), .A2(reply_data[5]), .ZN(n42) );
  ND4D0BWP12T30P140 U154 ( .A1(n45), .A2(n44), .A3(n43), .A4(n42), .ZN(N569)
         );
  AOI22D0BWP12T30P140 U155 ( .A1(dmar_addr[4]), .A2(n614), .B1(
        dmaw_remaining[4]), .B2(n613), .ZN(n49) );
  AOI22D0BWP12T30P140 U156 ( .A1(dmaw_addr[4]), .A2(n612), .B1(
        dmar_remaining[4]), .B2(n611), .ZN(n48) );
  AOI22D0BWP12T30P140 U157 ( .A1(n595), .A2(request_addr[6]), .B1(n594), .B2(
        request_data[6]), .ZN(n47) );
  ND2D0BWP12T30P140 U158 ( .A1(n606), .A2(reply_data[6]), .ZN(n46) );
  ND4D0BWP12T30P140 U159 ( .A1(n49), .A2(n48), .A3(n47), .A4(n46), .ZN(N570)
         );
  AOI22D0BWP12T30P140 U160 ( .A1(dmaw_addr[5]), .A2(n612), .B1(
        dmar_remaining[5]), .B2(n611), .ZN(n52) );
  AOI22D0BWP12T30P140 U161 ( .A1(dmar_addr[5]), .A2(n614), .B1(
        dmaw_remaining[5]), .B2(n613), .ZN(n51) );
  AOI22D0BWP12T30P140 U162 ( .A1(n606), .A2(reply_data[7]), .B1(n594), .B2(
        request_data[7]), .ZN(n50) );
  ND3D0BWP12T30P140 U163 ( .A1(n52), .A2(n51), .A3(n50), .ZN(N571) );
  AOI22D0BWP12T30P140 U164 ( .A1(dmaw_addr[6]), .A2(n612), .B1(
        dmar_remaining[6]), .B2(n611), .ZN(n55) );
  AOI22D0BWP12T30P140 U165 ( .A1(dmar_addr[6]), .A2(n614), .B1(
        dmaw_remaining[6]), .B2(n613), .ZN(n54) );
  AOI22D0BWP12T30P140 U166 ( .A1(n606), .A2(reply_data[8]), .B1(n594), .B2(
        request_data[8]), .ZN(n53) );
  ND3D0BWP12T30P140 U167 ( .A1(n55), .A2(n54), .A3(n53), .ZN(N572) );
  AOI22D0BWP12T30P140 U168 ( .A1(dmaw_addr[7]), .A2(n612), .B1(
        dmar_remaining[7]), .B2(n611), .ZN(n58) );
  AOI22D0BWP12T30P140 U169 ( .A1(dmar_addr[7]), .A2(n614), .B1(
        dmaw_remaining[7]), .B2(n613), .ZN(n57) );
  AOI22D0BWP12T30P140 U170 ( .A1(n606), .A2(reply_data[9]), .B1(n594), .B2(
        request_data[9]), .ZN(n56) );
  ND3D0BWP12T30P140 U171 ( .A1(n58), .A2(n57), .A3(n56), .ZN(N573) );
  AOI22D0BWP12T30P140 U172 ( .A1(dmaw_addr[8]), .A2(n612), .B1(
        dmar_remaining[8]), .B2(n611), .ZN(n61) );
  AOI22D0BWP12T30P140 U173 ( .A1(dmar_addr[8]), .A2(n614), .B1(
        dmaw_remaining[8]), .B2(n613), .ZN(n60) );
  AOI22D0BWP12T30P140 U174 ( .A1(n606), .A2(reply_data[10]), .B1(n594), .B2(
        request_data[10]), .ZN(n59) );
  ND3D0BWP12T30P140 U175 ( .A1(n61), .A2(n60), .A3(n59), .ZN(N574) );
  AOI22D0BWP12T30P140 U176 ( .A1(dmaw_addr[9]), .A2(n612), .B1(
        dmar_remaining[9]), .B2(n611), .ZN(n64) );
  AOI22D0BWP12T30P140 U177 ( .A1(dmar_addr[9]), .A2(n614), .B1(
        dmaw_remaining[9]), .B2(n613), .ZN(n63) );
  AOI22D0BWP12T30P140 U178 ( .A1(n606), .A2(reply_data[11]), .B1(n594), .B2(
        request_data[11]), .ZN(n62) );
  ND3D0BWP12T30P140 U179 ( .A1(n64), .A2(n63), .A3(n62), .ZN(N575) );
  AOI22D0BWP12T30P140 U180 ( .A1(dmaw_addr[10]), .A2(n612), .B1(
        dmar_remaining[10]), .B2(n611), .ZN(n67) );
  AOI22D0BWP12T30P140 U181 ( .A1(dmar_addr[10]), .A2(n614), .B1(
        dmaw_remaining[10]), .B2(n613), .ZN(n66) );
  AOI22D0BWP12T30P140 U182 ( .A1(n606), .A2(reply_data[12]), .B1(n594), .B2(
        request_data[12]), .ZN(n65) );
  ND3D0BWP12T30P140 U183 ( .A1(n67), .A2(n66), .A3(n65), .ZN(N576) );
  OA22D0BWP12T30P140 U184 ( .A1(n590), .A2(request_data[5]), .B1(down_data[9]), 
        .B2(n582), .Z(n159) );
  AOI22D0BWP12T30P140 U185 ( .A1(dmaw_addr[11]), .A2(n612), .B1(
        dmar_remaining[11]), .B2(n611), .ZN(n70) );
  AOI22D0BWP12T30P140 U186 ( .A1(dmar_addr[11]), .A2(n614), .B1(
        dmaw_remaining[11]), .B2(n613), .ZN(n69) );
  AOI22D0BWP12T30P140 U187 ( .A1(n606), .A2(reply_data[13]), .B1(n594), .B2(
        request_data[13]), .ZN(n68) );
  ND3D0BWP12T30P140 U188 ( .A1(n70), .A2(n69), .A3(n68), .ZN(N577) );
  AOI22D0BWP12T30P140 U189 ( .A1(dmaw_addr[12]), .A2(n612), .B1(
        dmar_remaining[12]), .B2(n611), .ZN(n73) );
  AOI22D0BWP12T30P140 U190 ( .A1(dmar_addr[12]), .A2(n614), .B1(
        dmaw_remaining[12]), .B2(n613), .ZN(n72) );
  AOI22D0BWP12T30P140 U191 ( .A1(n606), .A2(reply_data[14]), .B1(n594), .B2(
        request_data[14]), .ZN(n71) );
  ND3D0BWP12T30P140 U192 ( .A1(n73), .A2(n72), .A3(n71), .ZN(N578) );
  AOI22D0BWP12T30P140 U193 ( .A1(dmaw_addr[13]), .A2(n612), .B1(
        dmar_remaining[13]), .B2(n611), .ZN(n76) );
  AOI22D0BWP12T30P140 U194 ( .A1(dmar_addr[13]), .A2(n614), .B1(
        dmaw_remaining[13]), .B2(n613), .ZN(n75) );
  AOI22D0BWP12T30P140 U195 ( .A1(n606), .A2(reply_data[15]), .B1(n594), .B2(
        request_data[15]), .ZN(n74) );
  ND3D0BWP12T30P140 U196 ( .A1(n76), .A2(n75), .A3(n74), .ZN(N579) );
  INVD0BWP12T30P140 U197 ( .I(dmaw_addr[16]), .ZN(n95) );
  INVD0BWP12T30P140 U198 ( .I(dmar_addr[16]), .ZN(n79) );
  OAI22D0BWP12T30P140 U199 ( .A1(n95), .A2(n602), .B1(n79), .B2(n598), .ZN(
        N582) );
  INVD0BWP12T30P140 U200 ( .I(dmaw_addr[17]), .ZN(n376) );
  INVD0BWP12T30P140 U201 ( .I(dmar_addr[17]), .ZN(n417) );
  OAI22D0BWP12T30P140 U202 ( .A1(n376), .A2(n602), .B1(n417), .B2(n598), .ZN(
        N583) );
  AO22D0BWP12T30P140 U203 ( .A1(dmaw_addr[18]), .A2(n612), .B1(dmar_addr[18]), 
        .B2(n614), .Z(N584) );
  INVD0BWP12T30P140 U204 ( .I(dmaw_addr[19]), .ZN(n323) );
  INVD0BWP12T30P140 U205 ( .I(dmar_addr[19]), .ZN(n126) );
  OAI22D0BWP12T30P140 U206 ( .A1(n323), .A2(n602), .B1(n126), .B2(n598), .ZN(
        N585) );
  INVD0BWP12T30P140 U207 ( .I(dmaw_addr[20]), .ZN(n96) );
  INVD0BWP12T30P140 U208 ( .I(dmar_addr[20]), .ZN(n80) );
  OAI22D0BWP12T30P140 U209 ( .A1(n96), .A2(n602), .B1(n80), .B2(n598), .ZN(
        N586) );
  INVD0BWP12T30P140 U210 ( .I(dmaw_addr[21]), .ZN(n372) );
  INVD0BWP12T30P140 U211 ( .I(dmar_addr[21]), .ZN(n412) );
  OAI22D0BWP12T30P140 U212 ( .A1(n372), .A2(n602), .B1(n412), .B2(n598), .ZN(
        N587) );
  AO22D0BWP12T30P140 U213 ( .A1(dmaw_addr[22]), .A2(n612), .B1(dmar_addr[22]), 
        .B2(n614), .Z(N588) );
  INVD0BWP12T30P140 U214 ( .I(dmaw_addr[23]), .ZN(n336) );
  INVD0BWP12T30P140 U215 ( .I(dmar_addr[23]), .ZN(n137) );
  OAI22D0BWP12T30P140 U216 ( .A1(n336), .A2(n602), .B1(n137), .B2(n598), .ZN(
        N589) );
  INVD0BWP12T30P140 U217 ( .I(dmaw_addr[24]), .ZN(n97) );
  INVD0BWP12T30P140 U218 ( .I(dmar_addr[24]), .ZN(n81) );
  OAI22D0BWP12T30P140 U219 ( .A1(n97), .A2(n602), .B1(n81), .B2(n598), .ZN(
        N590) );
  INVD0BWP12T30P140 U220 ( .I(dmaw_addr[25]), .ZN(n369) );
  INVD0BWP12T30P140 U221 ( .I(dmar_addr[25]), .ZN(n409) );
  OAI22D0BWP12T30P140 U222 ( .A1(n369), .A2(n602), .B1(n409), .B2(n598), .ZN(
        N591) );
  AO22D0BWP12T30P140 U223 ( .A1(dmaw_addr[26]), .A2(n612), .B1(dmar_addr[26]), 
        .B2(n614), .Z(N592) );
  INVD0BWP12T30P140 U224 ( .I(dmaw_addr[27]), .ZN(n617) );
  INVD0BWP12T30P140 U225 ( .I(dmar_addr[27]), .ZN(n622) );
  OAI22D0BWP12T30P140 U226 ( .A1(n617), .A2(n602), .B1(n622), .B2(n598), .ZN(
        N593) );
  INVD0BWP12T30P140 U227 ( .I(dmaw_addr[28]), .ZN(n347) );
  INVD0BWP12T30P140 U228 ( .I(dmar_addr[28]), .ZN(n116) );
  OAI22D0BWP12T30P140 U229 ( .A1(n347), .A2(n602), .B1(n116), .B2(n598), .ZN(
        N594) );
  AO22D0BWP12T30P140 U230 ( .A1(dmaw_addr[29]), .A2(n612), .B1(dmar_addr[29]), 
        .B2(n614), .Z(N595) );
  INVD0BWP12T30P140 U231 ( .I(dmar_addr[7]), .ZN(n495) );
  NR3D0BWP12T30P140 U232 ( .A1(n78), .A2(n77), .A3(n495), .ZN(n380) );
  ND3D0BWP12T30P140 U233 ( .A1(n380), .A2(dmar_addr[10]), .A3(dmar_addr[9]), 
        .ZN(n430) );
  INVD0BWP12T30P140 U234 ( .I(dmar_addr[11]), .ZN(n440) );
  INR3D1BWP12T30P140 U235 ( .A1(dmar_addr[12]), .B1(n430), .B2(n440), .ZN(n571) );
  ND3D0BWP12T30P140 U236 ( .A1(n571), .A2(dmar_addr[14]), .A3(dmar_addr[13]), 
        .ZN(n111) );
  INVD0BWP12T30P140 U237 ( .I(dmar_addr[15]), .ZN(n436) );
  NR3D0BWP12T30P140 U238 ( .A1(n111), .A2(n79), .A3(n436), .ZN(n481) );
  ND3D0BWP12T30P140 U239 ( .A1(n481), .A2(dmar_addr[18]), .A3(dmar_addr[17]), 
        .ZN(n120) );
  NR3D0BWP12T30P140 U240 ( .A1(n120), .A2(n80), .A3(n126), .ZN(n477) );
  ND3D0BWP12T30P140 U241 ( .A1(n477), .A2(dmar_addr[22]), .A3(dmar_addr[21]), 
        .ZN(n118) );
  NR3D0BWP12T30P140 U242 ( .A1(n118), .A2(n81), .A3(n137), .ZN(n471) );
  ND3D0BWP12T30P140 U243 ( .A1(n471), .A2(dmar_addr[26]), .A3(dmar_addr[25]), 
        .ZN(n82) );
  NR2D0BWP12T30P140 U244 ( .A1(n570), .A2(n82), .ZN(n623) );
  ND2D0BWP12T30P140 U245 ( .A1(dmar_addr[27]), .A2(n623), .ZN(n114) );
  INVD0BWP12T30P140 U246 ( .I(n123), .ZN(n624) );
  INVD0BWP12T30P140 U247 ( .I(n579), .ZN(n569) );
  IOA21D0BWP12T30P140 U248 ( .A1(n82), .A2(n414), .B(n569), .ZN(n626) );
  AOI21D0BWP12T30P140 U249 ( .A1(n414), .A2(n622), .B(n626), .ZN(n117) );
  OAI21D0BWP12T30P140 U250 ( .A1(dmar_addr[28]), .A2(n581), .B(n117), .ZN(n83)
         );
  AOI22D0BWP12T30P140 U251 ( .A1(csr_di[31]), .A2(n624), .B1(dmar_addr[29]), 
        .B2(n83), .ZN(n84) );
  OAI31D0BWP12T30P140 U252 ( .A1(dmar_addr[29]), .A2(n116), .A3(n114), .B(n84), 
        .ZN(n196) );
  AOI21D0BWP12T30P140 U253 ( .A1(dmar_next), .A2(n85), .B(n533), .ZN(n86) );
  AOI22D0BWP12T30P140 U254 ( .A1(dmar_remaining[11]), .A2(n86), .B1(n535), 
        .B2(csr_di[13]), .ZN(n87) );
  OAI31D0BWP12T30P140 U255 ( .A1(dmar_remaining[11]), .A2(n520), .A3(n506), 
        .B(n87), .ZN(n230) );
  ND2D0BWP12T30P140 U256 ( .A1(n103), .A2(n88), .ZN(n351) );
  NR2D0BWP12T30P140 U257 ( .A1(n89), .A2(n351), .ZN(n90) );
  ND2D0BWP12T30P140 U258 ( .A1(n593), .A2(n90), .ZN(n517) );
  INVD0BWP12T30P140 U259 ( .I(dmaw_addr[8]), .ZN(n93) );
  NR2D0BWP12T30P140 U260 ( .A1(n629), .A2(n90), .ZN(n404) );
  ND2D0BWP12T30P140 U261 ( .A1(n404), .A2(dmaw_next), .ZN(n578) );
  INVD0BWP12T30P140 U262 ( .I(n578), .ZN(n373) );
  INVD0BWP12T30P140 U263 ( .I(n373), .ZN(n557) );
  ND3D0BWP12T30P140 U264 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .A3(
        dmaw_addr[2]), .ZN(n397) );
  INVD0BWP12T30P140 U265 ( .I(dmaw_addr[4]), .ZN(n514) );
  INVD0BWP12T30P140 U266 ( .I(dmaw_addr[3]), .ZN(n399) );
  NR3D0BWP12T30P140 U267 ( .A1(n397), .A2(n514), .A3(n399), .ZN(n564) );
  ND3D0BWP12T30P140 U268 ( .A1(n564), .A2(dmaw_addr[6]), .A3(dmaw_addr[5]), 
        .ZN(n94) );
  NR2D0BWP12T30P140 U269 ( .A1(n557), .A2(n94), .ZN(n393) );
  INR2D1BWP12T30P140 U270 ( .A1(n404), .B1(dmaw_next), .ZN(n576) );
  AOI21D0BWP12T30P140 U271 ( .A1(n404), .A2(n94), .B(n576), .ZN(n396) );
  OAI21D0BWP12T30P140 U272 ( .A1(dmaw_addr[7]), .A2(n557), .B(n396), .ZN(n91)
         );
  AOI32D0BWP12T30P140 U273 ( .A1(dmaw_addr[7]), .A2(n93), .A3(n393), .B1(
        dmaw_addr[8]), .B2(n91), .ZN(n92) );
  OAI21D0BWP12T30P140 U274 ( .A1(n517), .A2(n455), .B(n92), .ZN(n263) );
  INVD0BWP12T30P140 U275 ( .I(dmaw_addr[7]), .ZN(n395) );
  NR3D0BWP12T30P140 U276 ( .A1(n94), .A2(n93), .A3(n395), .ZN(n558) );
  ND3D0BWP12T30P140 U277 ( .A1(n558), .A2(dmaw_addr[10]), .A3(dmaw_addr[9]), 
        .ZN(n403) );
  INVD0BWP12T30P140 U278 ( .I(dmaw_addr[11]), .ZN(n424) );
  INR3D1BWP12T30P140 U279 ( .A1(dmaw_addr[12]), .B1(n403), .B2(n424), .ZN(n553) );
  ND3D0BWP12T30P140 U280 ( .A1(n553), .A2(dmaw_addr[14]), .A3(dmaw_addr[13]), 
        .ZN(n310) );
  INVD0BWP12T30P140 U281 ( .I(dmaw_addr[15]), .ZN(n420) );
  NR3D0BWP12T30P140 U282 ( .A1(n310), .A2(n95), .A3(n420), .ZN(n467) );
  ND3D0BWP12T30P140 U283 ( .A1(n467), .A2(dmaw_addr[18]), .A3(dmaw_addr[17]), 
        .ZN(n105) );
  NR3D0BWP12T30P140 U284 ( .A1(n105), .A2(n96), .A3(n323), .ZN(n463) );
  ND3D0BWP12T30P140 U285 ( .A1(n463), .A2(dmaw_addr[22]), .A3(dmaw_addr[21]), 
        .ZN(n100) );
  NR3D0BWP12T30P140 U286 ( .A1(n100), .A2(n97), .A3(n336), .ZN(n459) );
  ND3D0BWP12T30P140 U287 ( .A1(n459), .A2(dmaw_addr[26]), .A3(dmaw_addr[25]), 
        .ZN(n98) );
  INVD0BWP12T30P140 U288 ( .I(n576), .ZN(n563) );
  IOA21D0BWP12T30P140 U289 ( .A1(n98), .A2(n373), .B(n563), .ZN(n621) );
  AOI21D0BWP12T30P140 U290 ( .A1(n373), .A2(n617), .B(n621), .ZN(n343) );
  INVD0BWP12T30P140 U291 ( .I(n517), .ZN(n565) );
  NR2D0BWP12T30P140 U292 ( .A1(n557), .A2(n98), .ZN(n618) );
  ND2D0BWP12T30P140 U293 ( .A1(dmaw_addr[27]), .A2(n618), .ZN(n346) );
  MAOI22D0BWP12T30P140 U294 ( .A1(csr_di[30]), .A2(n565), .B1(dmaw_addr[28]), 
        .B2(n346), .ZN(n99) );
  OAI21D0BWP12T30P140 U295 ( .A1(n343), .A2(n347), .B(n99), .ZN(n243) );
  AOI21D0BWP12T30P140 U296 ( .A1(n404), .A2(n100), .B(n576), .ZN(n332) );
  CKBD0BWP12T30P140 U297 ( .I(n565), .Z(n619) );
  IND2D1BWP12T30P140 U298 ( .A1(n100), .B1(n373), .ZN(n335) );
  MAOI22D0BWP12T30P140 U299 ( .A1(csr_di[25]), .A2(n619), .B1(dmaw_addr[23]), 
        .B2(n335), .ZN(n101) );
  OAI21D0BWP12T30P140 U300 ( .A1(n332), .A2(n336), .B(n101), .ZN(n248) );
  ND2D0BWP12T30P140 U301 ( .A1(n103), .A2(n102), .ZN(n104) );
  NR2D0BWP12T30P140 U302 ( .A1(n104), .A2(n442), .ZN(n588) );
  INVD0BWP12T30P140 U303 ( .I(n588), .ZN(n584) );
  OA221D0BWP12T30P140 U304 ( .A1(n584), .A2(csr_di[1]), .B1(n588), .B2(
        request_write), .C(n593), .Z(n155) );
  AOI21D0BWP12T30P140 U305 ( .A1(n404), .A2(n105), .B(n576), .ZN(n319) );
  IND2D1BWP12T30P140 U306 ( .A1(n105), .B1(n373), .ZN(n322) );
  MAOI22D0BWP12T30P140 U307 ( .A1(csr_di[21]), .A2(n565), .B1(dmaw_addr[19]), 
        .B2(n322), .ZN(n106) );
  OAI21D0BWP12T30P140 U308 ( .A1(n319), .A2(n323), .B(n106), .ZN(n252) );
  NR2D0BWP12T30P140 U309 ( .A1(n581), .A2(n107), .ZN(n426) );
  AOI21D0BWP12T30P140 U310 ( .A1(n431), .A2(n107), .B(n579), .ZN(n429) );
  OAI21D0BWP12T30P140 U311 ( .A1(dmar_addr[3]), .A2(n570), .B(n429), .ZN(n108)
         );
  AOI32D0BWP12T30P140 U312 ( .A1(dmar_addr[3]), .A2(n109), .A3(n426), .B1(
        dmar_addr[4]), .B2(n108), .ZN(n110) );
  OAI21D0BWP12T30P140 U313 ( .A1(n123), .A2(n516), .B(n110), .ZN(n221) );
  IND2D1BWP12T30P140 U314 ( .A1(n111), .B1(n414), .ZN(n434) );
  AOI21D0BWP12T30P140 U315 ( .A1(n431), .A2(n111), .B(n579), .ZN(n437) );
  OAI21D0BWP12T30P140 U316 ( .A1(dmar_addr[15]), .A2(n581), .B(n437), .ZN(n112) );
  AOI22D0BWP12T30P140 U317 ( .A1(dmar_addr[16]), .A2(n112), .B1(n624), .B2(
        csr_di[18]), .ZN(n113) );
  OAI31D0BWP12T30P140 U318 ( .A1(dmar_addr[16]), .A2(n436), .A3(n434), .B(n113), .ZN(n209) );
  MAOI22D0BWP12T30P140 U319 ( .A1(csr_di[30]), .A2(n624), .B1(dmar_addr[28]), 
        .B2(n114), .ZN(n115) );
  OAI21D0BWP12T30P140 U320 ( .A1(n117), .A2(n116), .B(n115), .ZN(n197) );
  AOI21D0BWP12T30P140 U321 ( .A1(n431), .A2(n118), .B(n579), .ZN(n133) );
  IND2D1BWP12T30P140 U322 ( .A1(n118), .B1(n414), .ZN(n136) );
  MAOI22D0BWP12T30P140 U323 ( .A1(csr_di[25]), .A2(n624), .B1(dmar_addr[23]), 
        .B2(n136), .ZN(n119) );
  OAI21D0BWP12T30P140 U324 ( .A1(n133), .A2(n137), .B(n119), .ZN(n202) );
  IND2D1BWP12T30P140 U325 ( .A1(n120), .B1(n414), .ZN(n124) );
  AOI21D0BWP12T30P140 U326 ( .A1(n431), .A2(n120), .B(n579), .ZN(n127) );
  OAI21D0BWP12T30P140 U327 ( .A1(dmar_addr[19]), .A2(n581), .B(n127), .ZN(n121) );
  AOI22D0BWP12T30P140 U328 ( .A1(dmar_addr[20]), .A2(n121), .B1(n624), .B2(
        csr_di[22]), .ZN(n122) );
  OAI31D0BWP12T30P140 U329 ( .A1(dmar_addr[20]), .A2(n126), .A3(n124), .B(n122), .ZN(n205) );
  INVD0BWP12T30P140 U330 ( .I(n123), .ZN(n572) );
  MAOI22D0BWP12T30P140 U331 ( .A1(csr_di[21]), .A2(n572), .B1(dmar_addr[19]), 
        .B2(n124), .ZN(n125) );
  OAI21D0BWP12T30P140 U332 ( .A1(n127), .A2(n126), .B(n125), .ZN(n206) );
  NR2D0BWP12T30P140 U333 ( .A1(n351), .A2(n130), .ZN(n128) );
  NR2D0BWP12T30P140 U334 ( .A1(n629), .A2(n128), .ZN(n140) );
  ND2D0BWP12T30P140 U335 ( .A1(dmaw_next), .A2(n140), .ZN(n523) );
  NR3D0BWP12T30P140 U336 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(dmaw_remaining[2]), .ZN(n456) );
  INVD0BWP12T30P140 U337 ( .I(n456), .ZN(n502) );
  NR3D0BWP12T30P140 U338 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[3]), 
        .A3(n502), .ZN(n544) );
  INR3D1BWP12T30P140 U339 ( .A1(n544), .B1(dmaw_remaining[6]), .B2(
        dmaw_remaining[5]), .ZN(n453) );
  INVD0BWP12T30P140 U340 ( .I(n453), .ZN(n499) );
  NR3D0BWP12T30P140 U341 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[7]), 
        .A3(n499), .ZN(n539) );
  INR3D1BWP12T30P140 U342 ( .A1(n539), .B1(dmaw_remaining[10]), .B2(
        dmaw_remaining[9]), .ZN(n507) );
  INVD0BWP12T30P140 U343 ( .I(n507), .ZN(n510) );
  NR3D0BWP12T30P140 U344 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[11]), 
        .A3(n510), .ZN(n308) );
  INVD0BWP12T30P140 U345 ( .I(n308), .ZN(n330) );
  INVD0BWP12T30P140 U346 ( .I(dmaw_remaining[11]), .ZN(n129) );
  INVD0BWP12T30P140 U347 ( .I(n140), .ZN(n543) );
  AOI31D0BWP12T30P140 U348 ( .A1(dmaw_next), .A2(n129), .A3(n507), .B(n543), 
        .ZN(n131) );
  NR3D0BWP12T30P140 U349 ( .A1(n629), .A2(n351), .A3(n130), .ZN(n545) );
  AOI22D0BWP12T30P140 U350 ( .A1(dmaw_remaining[12]), .A2(n131), .B1(n545), 
        .B2(csr_di[14]), .ZN(n132) );
  OAI21D0BWP12T30P140 U351 ( .A1(n523), .A2(n330), .B(n132), .ZN(n275) );
  OAI21D0BWP12T30P140 U352 ( .A1(dmar_addr[23]), .A2(n581), .B(n133), .ZN(n134) );
  AOI22D0BWP12T30P140 U353 ( .A1(dmar_addr[24]), .A2(n134), .B1(n572), .B2(
        csr_di[26]), .ZN(n135) );
  OAI31D0BWP12T30P140 U354 ( .A1(dmar_addr[24]), .A2(n137), .A3(n136), .B(n135), .ZN(n201) );
  INVD0BWP12T30P140 U355 ( .I(dmar_remaining[0]), .ZN(n601) );
  AOI22D0BWP12T30P140 U356 ( .A1(n450), .A2(n601), .B1(n535), .B2(csr_di[2]), 
        .ZN(n138) );
  OAI21D0BWP12T30P140 U357 ( .A1(n139), .A2(n601), .B(n138), .ZN(n241) );
  IND2D1BWP12T30P140 U358 ( .A1(dmaw_next), .B1(n140), .ZN(n307) );
  INVD0BWP12T30P140 U359 ( .I(dmaw_remaining[0]), .ZN(n597) );
  INVD0BWP12T30P140 U360 ( .I(n523), .ZN(n457) );
  AOI22D0BWP12T30P140 U361 ( .A1(n457), .A2(n597), .B1(n545), .B2(csr_di[2]), 
        .ZN(n141) );
  OAI21D0BWP12T30P140 U362 ( .A1(n307), .A2(n597), .B(n141), .ZN(n287) );
  INVD0BWP12T30P140 U363 ( .I(n535), .ZN(n452) );
  AOI21D0BWP12T30P140 U364 ( .A1(dmar_remaining[13]), .A2(n305), .B(n304), 
        .ZN(n306) );
  OAI21D0BWP12T30P140 U365 ( .A1(n452), .A2(n527), .B(n306), .ZN(n228) );
  OAI21D0BWP12T30P140 U366 ( .A1(n308), .A2(n523), .B(n307), .ZN(n525) );
  AOI21D0BWP12T30P140 U367 ( .A1(n457), .A2(dmaw_remaining[13]), .B(n525), 
        .ZN(n328) );
  INVD0BWP12T30P140 U368 ( .I(dmaw_remaining[14]), .ZN(n329) );
  NR3D0BWP12T30P140 U369 ( .A1(dmaw_remaining[13]), .A2(n523), .A3(n330), .ZN(
        n524) );
  AOI22D0BWP12T30P140 U370 ( .A1(csr_di[16]), .A2(n545), .B1(n524), .B2(n329), 
        .ZN(n309) );
  OAI21D0BWP12T30P140 U371 ( .A1(n328), .A2(n329), .B(n309), .ZN(n273) );
  IND2D1BWP12T30P140 U372 ( .A1(n310), .B1(n373), .ZN(n418) );
  AOI21D0BWP12T30P140 U373 ( .A1(n404), .A2(n310), .B(n576), .ZN(n421) );
  OAI21D0BWP12T30P140 U374 ( .A1(dmaw_addr[15]), .A2(n578), .B(n421), .ZN(n311) );
  AOI22D0BWP12T30P140 U375 ( .A1(dmaw_addr[16]), .A2(n311), .B1(n619), .B2(
        csr_di[18]), .ZN(n312) );
  OAI31D0BWP12T30P140 U376 ( .A1(dmaw_addr[16]), .A2(n420), .A3(n418), .B(n312), .ZN(n255) );
  INVD0BWP12T30P140 U377 ( .I(dmar_remaining[1]), .ZN(n313) );
  AOI31D0BWP12T30P140 U378 ( .A1(dmar_next), .A2(n601), .A3(n313), .B(n533), 
        .ZN(n314) );
  AOI22D0BWP12T30P140 U379 ( .A1(dmar_remaining[2]), .A2(n314), .B1(n535), 
        .B2(csr_di[4]), .ZN(n315) );
  OAI21D0BWP12T30P140 U380 ( .A1(n520), .A2(n492), .B(n315), .ZN(n239) );
  INVD0BWP12T30P140 U381 ( .I(dmaw_remaining[1]), .ZN(n316) );
  AOI31D0BWP12T30P140 U382 ( .A1(dmaw_next), .A2(n597), .A3(n316), .B(n543), 
        .ZN(n317) );
  AOI22D0BWP12T30P140 U383 ( .A1(dmaw_remaining[2]), .A2(n317), .B1(n545), 
        .B2(csr_di[4]), .ZN(n318) );
  OAI21D0BWP12T30P140 U384 ( .A1(n523), .A2(n502), .B(n318), .ZN(n285) );
  OAI21D0BWP12T30P140 U385 ( .A1(dmaw_addr[19]), .A2(n578), .B(n319), .ZN(n320) );
  AOI22D0BWP12T30P140 U386 ( .A1(dmaw_addr[20]), .A2(n320), .B1(n619), .B2(
        csr_di[22]), .ZN(n321) );
  OAI31D0BWP12T30P140 U387 ( .A1(dmaw_addr[20]), .A2(n323), .A3(n322), .B(n321), .ZN(n251) );
  OAI21D0BWP12T30P140 U388 ( .A1(n520), .A2(n325), .B(n324), .ZN(n327) );
  NR4D0BWP12T30P140 U389 ( .A1(dmar_remaining[14]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[15]), .A4(n326), .ZN(n592) );
  AO222D0BWP12T30P140 U390 ( .A1(n327), .A2(dmar_remaining[15]), .B1(n450), 
        .B2(n592), .C1(csr_di[17]), .C2(n535), .Z(n226) );
  OAI21D0BWP12T30P140 U391 ( .A1(n523), .A2(n329), .B(n328), .ZN(n331) );
  NR4D0BWP12T30P140 U392 ( .A1(dmaw_remaining[14]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[15]), .A4(n330), .ZN(n591) );
  AO222D0BWP12T30P140 U393 ( .A1(n331), .A2(dmaw_remaining[15]), .B1(
        csr_di[17]), .B2(n545), .C1(n457), .C2(n591), .Z(n272) );
  OAI21D0BWP12T30P140 U394 ( .A1(dmaw_addr[23]), .A2(n578), .B(n332), .ZN(n333) );
  AOI22D0BWP12T30P140 U395 ( .A1(dmaw_addr[24]), .A2(n333), .B1(n565), .B2(
        csr_di[26]), .ZN(n334) );
  OAI31D0BWP12T30P140 U396 ( .A1(dmaw_addr[24]), .A2(n336), .A3(n335), .B(n334), .ZN(n247) );
  INVD0BWP12T30P140 U397 ( .I(dmar_remaining[5]), .ZN(n337) );
  AOI31D0BWP12T30P140 U398 ( .A1(dmar_next), .A2(n534), .A3(n337), .B(n533), 
        .ZN(n338) );
  AOI22D0BWP12T30P140 U399 ( .A1(dmar_remaining[6]), .A2(n338), .B1(n535), 
        .B2(csr_di[8]), .ZN(n339) );
  OAI21D0BWP12T30P140 U400 ( .A1(n520), .A2(n489), .B(n339), .ZN(n235) );
  INVD0BWP12T30P140 U401 ( .I(dmaw_remaining[9]), .ZN(n340) );
  AOI31D0BWP12T30P140 U402 ( .A1(dmaw_next), .A2(n539), .A3(n340), .B(n543), 
        .ZN(n341) );
  AOI22D0BWP12T30P140 U403 ( .A1(dmaw_remaining[10]), .A2(n341), .B1(n545), 
        .B2(csr_di[12]), .ZN(n342) );
  OAI21D0BWP12T30P140 U404 ( .A1(n523), .A2(n510), .B(n342), .ZN(n277) );
  OAI21D0BWP12T30P140 U405 ( .A1(dmaw_addr[28]), .A2(n578), .B(n343), .ZN(n344) );
  AOI22D0BWP12T30P140 U406 ( .A1(n619), .A2(csr_di[31]), .B1(dmaw_addr[29]), 
        .B2(n344), .ZN(n345) );
  OAI31D0BWP12T30P140 U407 ( .A1(dmaw_addr[29]), .A2(n347), .A3(n346), .B(n345), .ZN(n242) );
  INVD0BWP12T30P140 U408 ( .I(dmaw_remaining[5]), .ZN(n348) );
  AOI31D0BWP12T30P140 U409 ( .A1(dmaw_next), .A2(n544), .A3(n348), .B(n543), 
        .ZN(n349) );
  AOI22D0BWP12T30P140 U410 ( .A1(dmaw_remaining[6]), .A2(n349), .B1(n545), 
        .B2(csr_di[8]), .ZN(n350) );
  OAI21D0BWP12T30P140 U411 ( .A1(n523), .A2(n499), .B(n350), .ZN(n281) );
  NR2D0BWP12T30P140 U412 ( .A1(n351), .A2(n442), .ZN(n353) );
  INVD0BWP12T30P140 U413 ( .I(csr_di[0]), .ZN(n445) );
  OAI21D0BWP12T30P140 U414 ( .A1(dmaw_en), .A2(n353), .B(n593), .ZN(n352) );
  AOI21D0BWP12T30P140 U415 ( .A1(n353), .A2(n445), .B(n352), .ZN(n174) );
  AO22D0BWP12T30P140 U416 ( .A1(n485), .A2(request_addr[1]), .B1(n486), .B2(
        csr_di[1]), .Z(n152) );
  ND2D0BWP12T30P140 U417 ( .A1(n414), .A2(n380), .ZN(n383) );
  OAI21D0BWP12T30P140 U418 ( .A1(n380), .A2(n570), .B(n569), .ZN(n354) );
  AOI22D0BWP12T30P140 U419 ( .A1(dmar_addr[9]), .A2(n354), .B1(n572), .B2(
        csr_di[11]), .ZN(n355) );
  OAI21D0BWP12T30P140 U420 ( .A1(dmar_addr[9]), .A2(n383), .B(n355), .ZN(n216)
         );
  ND2D0BWP12T30P140 U421 ( .A1(n414), .A2(n385), .ZN(n388) );
  OAI21D0BWP12T30P140 U422 ( .A1(n385), .A2(n581), .B(n569), .ZN(n356) );
  AOI22D0BWP12T30P140 U423 ( .A1(dmar_addr[5]), .A2(n356), .B1(n572), .B2(
        csr_di[7]), .ZN(n357) );
  OAI21D0BWP12T30P140 U424 ( .A1(dmar_addr[5]), .A2(n388), .B(n357), .ZN(n220)
         );
  INVD0BWP12T30P140 U425 ( .I(n413), .ZN(n476) );
  AO22D0BWP12T30P140 U426 ( .A1(n476), .A2(csr_di[1]), .B1(n475), .B2(
        request_data[1]), .Z(n154) );
  INVD0BWP12T30P140 U427 ( .I(dmaw_addr[13]), .ZN(n360) );
  ND2D0BWP12T30P140 U428 ( .A1(n373), .A2(n553), .ZN(n556) );
  AOI32D0BWP12T30P140 U429 ( .A1(n553), .A2(n563), .A3(dmaw_addr[13]), .B1(
        n557), .B2(n563), .ZN(n358) );
  AOI22D0BWP12T30P140 U430 ( .A1(dmaw_addr[14]), .A2(n358), .B1(n565), .B2(
        csr_di[16]), .ZN(n359) );
  OAI31D0BWP12T30P140 U431 ( .A1(dmaw_addr[14]), .A2(n360), .A3(n556), .B(n359), .ZN(n257) );
  INVD0BWP12T30P140 U432 ( .I(dmaw_addr[9]), .ZN(n363) );
  ND2D0BWP12T30P140 U433 ( .A1(n373), .A2(n558), .ZN(n561) );
  AOI32D0BWP12T30P140 U434 ( .A1(n558), .A2(n563), .A3(dmaw_addr[9]), .B1(n578), .B2(n563), .ZN(n361) );
  AOI22D0BWP12T30P140 U435 ( .A1(dmaw_addr[10]), .A2(n361), .B1(n619), .B2(
        csr_di[12]), .ZN(n362) );
  OAI31D0BWP12T30P140 U436 ( .A1(dmaw_addr[10]), .A2(n363), .A3(n561), .B(n362), .ZN(n261) );
  AO22D0BWP12T30P140 U437 ( .A1(csr_di[7]), .A2(n476), .B1(n475), .B2(
        request_data[7]), .Z(n193) );
  INVD0BWP12T30P140 U438 ( .I(dmaw_addr[5]), .ZN(n366) );
  ND2D0BWP12T30P140 U439 ( .A1(n373), .A2(n564), .ZN(n568) );
  AOI32D0BWP12T30P140 U440 ( .A1(n564), .A2(n563), .A3(dmaw_addr[5]), .B1(n578), .B2(n563), .ZN(n364) );
  AOI22D0BWP12T30P140 U441 ( .A1(dmaw_addr[6]), .A2(n364), .B1(n565), .B2(
        csr_di[8]), .ZN(n365) );
  OAI31D0BWP12T30P140 U442 ( .A1(dmaw_addr[6]), .A2(n366), .A3(n568), .B(n365), 
        .ZN(n265) );
  ND2D0BWP12T30P140 U443 ( .A1(n373), .A2(n459), .ZN(n462) );
  AOI22D0BWP12T30P140 U444 ( .A1(dmaw_addr[26]), .A2(n367), .B1(n565), .B2(
        csr_di[28]), .ZN(n368) );
  OAI31D0BWP12T30P140 U445 ( .A1(dmaw_addr[26]), .A2(n369), .A3(n462), .B(n368), .ZN(n245) );
  AO22D0BWP12T30P140 U446 ( .A1(csr_di[8]), .A2(n476), .B1(n475), .B2(
        request_data[8]), .Z(n191) );
  ND2D0BWP12T30P140 U447 ( .A1(n373), .A2(n463), .ZN(n466) );
  AOI22D0BWP12T30P140 U448 ( .A1(dmaw_addr[22]), .A2(n370), .B1(n619), .B2(
        csr_di[24]), .ZN(n371) );
  OAI31D0BWP12T30P140 U449 ( .A1(dmaw_addr[22]), .A2(n372), .A3(n466), .B(n371), .ZN(n249) );
  ND2D0BWP12T30P140 U450 ( .A1(n373), .A2(n467), .ZN(n470) );
  AOI32D0BWP12T30P140 U451 ( .A1(n467), .A2(n1), .A3(dmaw_addr[17]), .B1(n557), 
        .B2(n563), .ZN(n374) );
  AOI22D0BWP12T30P140 U452 ( .A1(dmaw_addr[18]), .A2(n374), .B1(n565), .B2(
        csr_di[20]), .ZN(n375) );
  OAI31D0BWP12T30P140 U453 ( .A1(dmaw_addr[18]), .A2(n376), .A3(n470), .B(n375), .ZN(n253) );
  AO22D0BWP12T30P140 U454 ( .A1(csr_di[9]), .A2(n476), .B1(n475), .B2(
        request_data[9]), .Z(n189) );
  INVD0BWP12T30P140 U455 ( .I(dmar_addr[13]), .ZN(n379) );
  ND2D0BWP12T30P140 U456 ( .A1(n414), .A2(n571), .ZN(n575) );
  AOI32D0BWP12T30P140 U457 ( .A1(n571), .A2(n569), .A3(dmar_addr[13]), .B1(
        n570), .B2(n569), .ZN(n377) );
  AOI22D0BWP12T30P140 U458 ( .A1(dmar_addr[14]), .A2(n377), .B1(n572), .B2(
        csr_di[16]), .ZN(n378) );
  OAI31D0BWP12T30P140 U459 ( .A1(dmar_addr[14]), .A2(n379), .A3(n575), .B(n378), .ZN(n211) );
  INVD0BWP12T30P140 U460 ( .I(dmar_addr[9]), .ZN(n384) );
  AOI32D0BWP12T30P140 U461 ( .A1(n380), .A2(n569), .A3(dmar_addr[9]), .B1(n581), .B2(n569), .ZN(n381) );
  AOI22D0BWP12T30P140 U462 ( .A1(dmar_addr[10]), .A2(n381), .B1(n572), .B2(
        csr_di[12]), .ZN(n382) );
  OAI31D0BWP12T30P140 U463 ( .A1(dmar_addr[10]), .A2(n384), .A3(n383), .B(n382), .ZN(n215) );
  AO22D0BWP12T30P140 U464 ( .A1(csr_di[11]), .A2(n476), .B1(n475), .B2(
        request_data[11]), .Z(n185) );
  INVD0BWP12T30P140 U465 ( .I(dmar_addr[5]), .ZN(n389) );
  AOI32D0BWP12T30P140 U466 ( .A1(n385), .A2(n569), .A3(dmar_addr[5]), .B1(n581), .B2(n569), .ZN(n386) );
  AOI22D0BWP12T30P140 U467 ( .A1(dmar_addr[6]), .A2(n386), .B1(n572), .B2(
        csr_di[8]), .ZN(n387) );
  OAI31D0BWP12T30P140 U468 ( .A1(dmar_addr[6]), .A2(n389), .A3(n388), .B(n387), 
        .ZN(n219) );
  ND2D0BWP12T30P140 U469 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .ZN(n392) );
  AOI32D0BWP12T30P140 U470 ( .A1(dmaw_addr[1]), .A2(n1), .A3(dmaw_addr[0]), 
        .B1(n557), .B2(n563), .ZN(n390) );
  AOI22D0BWP12T30P140 U471 ( .A1(dmaw_addr[2]), .A2(n390), .B1(n565), .B2(
        csr_di[4]), .ZN(n391) );
  OAI31D0BWP12T30P140 U472 ( .A1(dmaw_addr[2]), .A2(n557), .A3(n392), .B(n391), 
        .ZN(n269) );
  AO22D0BWP12T30P140 U473 ( .A1(csr_di[12]), .A2(n476), .B1(n475), .B2(
        request_data[12]), .Z(n183) );
  AOI22D0BWP12T30P140 U474 ( .A1(csr_di[9]), .A2(n619), .B1(n393), .B2(n395), 
        .ZN(n394) );
  OAI21D0BWP12T30P140 U475 ( .A1(n396), .A2(n395), .B(n394), .ZN(n264) );
  AOI21D0BWP12T30P140 U476 ( .A1(n404), .A2(n397), .B(n576), .ZN(n511) );
  NR2D0BWP12T30P140 U477 ( .A1(n578), .A2(n397), .ZN(n513) );
  AOI22D0BWP12T30P140 U478 ( .A1(csr_di[5]), .A2(n565), .B1(n513), .B2(n399), 
        .ZN(n398) );
  OAI21D0BWP12T30P140 U479 ( .A1(n511), .A2(n399), .B(n398), .ZN(n268) );
  AO22D0BWP12T30P140 U480 ( .A1(csr_di[13]), .A2(n476), .B1(n475), .B2(
        request_data[13]), .Z(n181) );
  ND2D0BWP12T30P140 U481 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .ZN(n402) );
  AOI32D0BWP12T30P140 U482 ( .A1(dmar_addr[1]), .A2(n569), .A3(dmar_addr[0]), 
        .B1(n570), .B2(n569), .ZN(n400) );
  AOI22D0BWP12T30P140 U483 ( .A1(dmar_addr[2]), .A2(n400), .B1(n572), .B2(
        csr_di[4]), .ZN(n401) );
  OAI31D0BWP12T30P140 U484 ( .A1(dmar_addr[2]), .A2(n570), .A3(n402), .B(n401), 
        .ZN(n223) );
  OR2D0BWP12T30P140 U485 ( .A1(n403), .A2(n578), .Z(n422) );
  AOI21D0BWP12T30P140 U486 ( .A1(n404), .A2(n403), .B(n576), .ZN(n425) );
  OAI21D0BWP12T30P140 U487 ( .A1(dmaw_addr[11]), .A2(n578), .B(n425), .ZN(n405) );
  AOI22D0BWP12T30P140 U488 ( .A1(dmaw_addr[12]), .A2(n405), .B1(n619), .B2(
        csr_di[14]), .ZN(n406) );
  OAI31D0BWP12T30P140 U489 ( .A1(dmaw_addr[12]), .A2(n424), .A3(n422), .B(n406), .ZN(n259) );
  AO22D0BWP12T30P140 U490 ( .A1(csr_di[14]), .A2(n476), .B1(n475), .B2(
        request_data[14]), .Z(n179) );
  ND2D0BWP12T30P140 U491 ( .A1(n414), .A2(n471), .ZN(n474) );
  AOI22D0BWP12T30P140 U492 ( .A1(dmar_addr[26]), .A2(n407), .B1(n572), .B2(
        csr_di[28]), .ZN(n408) );
  OAI31D0BWP12T30P140 U493 ( .A1(dmar_addr[26]), .A2(n409), .A3(n474), .B(n408), .ZN(n199) );
  ND2D0BWP12T30P140 U494 ( .A1(n414), .A2(n477), .ZN(n480) );
  AOI32D0BWP12T30P140 U495 ( .A1(n477), .A2(n2), .A3(dmar_addr[21]), .B1(n581), 
        .B2(n569), .ZN(n410) );
  AOI22D0BWP12T30P140 U496 ( .A1(dmar_addr[22]), .A2(n410), .B1(n624), .B2(
        csr_di[24]), .ZN(n411) );
  OAI31D0BWP12T30P140 U497 ( .A1(dmar_addr[22]), .A2(n412), .A3(n480), .B(n411), .ZN(n203) );
  MOAI22D0BWP12T30P140 U498 ( .A1(n413), .A2(n445), .B1(n475), .B2(
        request_data[0]), .ZN(n172) );
  ND2D0BWP12T30P140 U499 ( .A1(n414), .A2(n481), .ZN(n484) );
  AOI32D0BWP12T30P140 U500 ( .A1(n481), .A2(n2), .A3(dmar_addr[17]), .B1(n570), 
        .B2(n569), .ZN(n415) );
  AOI22D0BWP12T30P140 U501 ( .A1(dmar_addr[18]), .A2(n415), .B1(n624), .B2(
        csr_di[20]), .ZN(n416) );
  OAI31D0BWP12T30P140 U502 ( .A1(dmar_addr[18]), .A2(n417), .A3(n484), .B(n416), .ZN(n207) );
  MAOI22D0BWP12T30P140 U503 ( .A1(csr_di[17]), .A2(n619), .B1(dmaw_addr[15]), 
        .B2(n418), .ZN(n419) );
  OAI21D0BWP12T30P140 U504 ( .A1(n421), .A2(n420), .B(n419), .ZN(n256) );
  AO22D0BWP12T30P140 U505 ( .A1(csr_di[3]), .A2(n476), .B1(request_data[3]), 
        .B2(n475), .Z(n166) );
  MAOI22D0BWP12T30P140 U506 ( .A1(csr_di[13]), .A2(n619), .B1(dmaw_addr[11]), 
        .B2(n422), .ZN(n423) );
  OAI21D0BWP12T30P140 U507 ( .A1(n425), .A2(n424), .B(n423), .ZN(n260) );
  AOI22D0BWP12T30P140 U508 ( .A1(csr_di[5]), .A2(n624), .B1(n426), .B2(n428), 
        .ZN(n427) );
  OAI21D0BWP12T30P140 U509 ( .A1(n429), .A2(n428), .B(n427), .ZN(n222) );
  AO22D0BWP12T30P140 U510 ( .A1(csr_di[4]), .A2(n476), .B1(request_data[4]), 
        .B2(n475), .Z(n163) );
  OR2D0BWP12T30P140 U511 ( .A1(n430), .A2(n581), .Z(n438) );
  AOI21D0BWP12T30P140 U512 ( .A1(n431), .A2(n430), .B(n579), .ZN(n441) );
  OAI21D0BWP12T30P140 U513 ( .A1(dmar_addr[11]), .A2(n581), .B(n441), .ZN(n432) );
  AOI22D0BWP12T30P140 U514 ( .A1(dmar_addr[12]), .A2(n432), .B1(n572), .B2(
        csr_di[14]), .ZN(n433) );
  OAI31D0BWP12T30P140 U515 ( .A1(dmar_addr[12]), .A2(n440), .A3(n438), .B(n433), .ZN(n213) );
  MAOI22D0BWP12T30P140 U516 ( .A1(csr_di[17]), .A2(n572), .B1(dmar_addr[15]), 
        .B2(n434), .ZN(n435) );
  OAI21D0BWP12T30P140 U517 ( .A1(n437), .A2(n436), .B(n435), .ZN(n210) );
  AO22D0BWP12T30P140 U518 ( .A1(csr_di[5]), .A2(n476), .B1(request_data[5]), 
        .B2(n475), .Z(n160) );
  MAOI22D0BWP12T30P140 U519 ( .A1(csr_di[13]), .A2(n572), .B1(dmar_addr[11]), 
        .B2(n438), .ZN(n439) );
  OAI21D0BWP12T30P140 U520 ( .A1(n441), .A2(n440), .B(n439), .ZN(n214) );
  NR2D0BWP12T30P140 U521 ( .A1(n443), .A2(n442), .ZN(n446) );
  OAI21D0BWP12T30P140 U522 ( .A1(dmar_en), .A2(n446), .B(n593), .ZN(n444) );
  AOI21D0BWP12T30P140 U523 ( .A1(n446), .A2(n445), .B(n444), .ZN(n173) );
  AO22D0BWP12T30P140 U524 ( .A1(csr_di[0]), .A2(n486), .B1(n485), .B2(
        request_addr[0]), .Z(n175) );
  ND2D0BWP12T30P140 U525 ( .A1(n450), .A2(n529), .ZN(n532) );
  AOI21D0BWP12T30P140 U526 ( .A1(dmar_next), .A2(n447), .B(n533), .ZN(n487) );
  AOI32D0BWP12T30P140 U527 ( .A1(n450), .A2(dmar_remaining[8]), .A3(
        dmar_remaining[7]), .B1(n487), .B2(dmar_remaining[8]), .ZN(n448) );
  OAI211D0BWP12T30P140 U528 ( .A1(n455), .A2(n452), .B(n532), .C(n448), .ZN(
        n233) );
  ND2D0BWP12T30P140 U529 ( .A1(n450), .A2(n534), .ZN(n538) );
  AOI21D0BWP12T30P140 U530 ( .A1(dmar_next), .A2(n449), .B(n533), .ZN(n490) );
  AOI32D0BWP12T30P140 U531 ( .A1(n450), .A2(dmar_remaining[4]), .A3(
        dmar_remaining[3]), .B1(n490), .B2(dmar_remaining[4]), .ZN(n451) );
  OAI211D0BWP12T30P140 U532 ( .A1(n516), .A2(n452), .B(n538), .C(n451), .ZN(
        n237) );
  AO22D0BWP12T30P140 U533 ( .A1(csr_di[3]), .A2(n486), .B1(request_addr[3]), 
        .B2(n485), .Z(n167) );
  INVD0BWP12T30P140 U534 ( .I(n545), .ZN(n528) );
  AOI21D0BWP12T30P140 U535 ( .A1(dmaw_next), .A2(n453), .B(n543), .ZN(n497) );
  AOI32D0BWP12T30P140 U536 ( .A1(n457), .A2(dmaw_remaining[8]), .A3(
        dmaw_remaining[7]), .B1(n497), .B2(dmaw_remaining[8]), .ZN(n454) );
  ND2D0BWP12T30P140 U537 ( .A1(n457), .A2(n539), .ZN(n542) );
  OAI211D0BWP12T30P140 U538 ( .A1(n528), .A2(n455), .B(n454), .C(n542), .ZN(
        n279) );
  AOI21D0BWP12T30P140 U539 ( .A1(dmaw_next), .A2(n456), .B(n543), .ZN(n500) );
  AOI32D0BWP12T30P140 U540 ( .A1(n457), .A2(dmaw_remaining[4]), .A3(
        dmaw_remaining[3]), .B1(n500), .B2(dmaw_remaining[4]), .ZN(n458) );
  ND2D0BWP12T30P140 U541 ( .A1(n457), .A2(n544), .ZN(n548) );
  OAI211D0BWP12T30P140 U542 ( .A1(n528), .A2(n516), .B(n458), .C(n548), .ZN(
        n283) );
  AO22D0BWP12T30P140 U543 ( .A1(csr_di[4]), .A2(n486), .B1(request_addr[4]), 
        .B2(n485), .Z(n164) );
  OAI21D0BWP12T30P140 U544 ( .A1(n459), .A2(n557), .B(n563), .ZN(n460) );
  AOI22D0BWP12T30P140 U545 ( .A1(dmaw_addr[25]), .A2(n460), .B1(n619), .B2(
        csr_di[27]), .ZN(n461) );
  OAI21D0BWP12T30P140 U546 ( .A1(dmaw_addr[25]), .A2(n462), .B(n461), .ZN(n246) );
  OAI21D0BWP12T30P140 U547 ( .A1(n463), .A2(n557), .B(n563), .ZN(n464) );
  AOI22D0BWP12T30P140 U548 ( .A1(dmaw_addr[21]), .A2(n464), .B1(n565), .B2(
        csr_di[23]), .ZN(n465) );
  OAI21D0BWP12T30P140 U549 ( .A1(dmaw_addr[21]), .A2(n466), .B(n465), .ZN(n250) );
  AO22D0BWP12T30P140 U550 ( .A1(csr_di[6]), .A2(n486), .B1(request_addr[6]), 
        .B2(n485), .Z(n158) );
  OAI21D0BWP12T30P140 U551 ( .A1(n467), .A2(n557), .B(n563), .ZN(n468) );
  AOI22D0BWP12T30P140 U552 ( .A1(dmaw_addr[17]), .A2(n468), .B1(n565), .B2(
        csr_di[19]), .ZN(n469) );
  OAI21D0BWP12T30P140 U553 ( .A1(dmaw_addr[17]), .A2(n470), .B(n469), .ZN(n254) );
  OAI21D0BWP12T30P140 U554 ( .A1(n471), .A2(n570), .B(n569), .ZN(n472) );
  AOI22D0BWP12T30P140 U555 ( .A1(dmar_addr[25]), .A2(n472), .B1(n624), .B2(
        csr_di[27]), .ZN(n473) );
  OAI21D0BWP12T30P140 U556 ( .A1(dmar_addr[25]), .A2(n474), .B(n473), .ZN(n200) );
  AO22D0BWP12T30P140 U557 ( .A1(csr_di[2]), .A2(n476), .B1(request_data[2]), 
        .B2(n475), .Z(n169) );
  OAI21D0BWP12T30P140 U558 ( .A1(n477), .A2(n570), .B(n569), .ZN(n478) );
  AOI22D0BWP12T30P140 U559 ( .A1(dmar_addr[21]), .A2(n478), .B1(n624), .B2(
        csr_di[23]), .ZN(n479) );
  OAI21D0BWP12T30P140 U560 ( .A1(dmar_addr[21]), .A2(n480), .B(n479), .ZN(n204) );
  OAI21D0BWP12T30P140 U561 ( .A1(n481), .A2(n570), .B(n569), .ZN(n482) );
  AOI22D0BWP12T30P140 U562 ( .A1(dmar_addr[17]), .A2(n482), .B1(n624), .B2(
        csr_di[19]), .ZN(n483) );
  OAI21D0BWP12T30P140 U563 ( .A1(dmar_addr[17]), .A2(n484), .B(n483), .ZN(n208) );
  AO22D0BWP12T30P140 U564 ( .A1(csr_di[2]), .A2(n486), .B1(request_addr[2]), 
        .B2(n485), .Z(n170) );
  AOI22D0BWP12T30P140 U565 ( .A1(dmar_remaining[7]), .A2(n487), .B1(n535), 
        .B2(csr_di[9]), .ZN(n488) );
  OAI31D0BWP12T30P140 U566 ( .A1(dmar_remaining[7]), .A2(n520), .A3(n489), .B(
        n488), .ZN(n234) );
  AOI22D0BWP12T30P140 U567 ( .A1(dmar_remaining[3]), .A2(n490), .B1(n535), 
        .B2(csr_di[5]), .ZN(n491) );
  OAI31D0BWP12T30P140 U568 ( .A1(dmar_remaining[3]), .A2(n520), .A3(n492), .B(
        n491), .ZN(n238) );
  AOI22D0BWP12T30P140 U569 ( .A1(csr_di[9]), .A2(n624), .B1(n493), .B2(n495), 
        .ZN(n494) );
  OAI21D0BWP12T30P140 U570 ( .A1(n496), .A2(n495), .B(n494), .ZN(n218) );
  AOI22D0BWP12T30P140 U571 ( .A1(dmaw_remaining[7]), .A2(n497), .B1(n545), 
        .B2(csr_di[9]), .ZN(n498) );
  OAI31D0BWP12T30P140 U572 ( .A1(dmaw_remaining[7]), .A2(n523), .A3(n499), .B(
        n498), .ZN(n280) );
  AOI22D0BWP12T30P140 U573 ( .A1(dmaw_remaining[3]), .A2(n500), .B1(n545), 
        .B2(csr_di[5]), .ZN(n501) );
  OAI31D0BWP12T30P140 U574 ( .A1(dmaw_remaining[3]), .A2(n523), .A3(n502), .B(
        n501), .ZN(n284) );
  INVD0BWP12T30P140 U575 ( .I(dmar_remaining[9]), .ZN(n503) );
  AOI31D0BWP12T30P140 U576 ( .A1(dmar_next), .A2(n529), .A3(n503), .B(n533), 
        .ZN(n504) );
  AOI22D0BWP12T30P140 U577 ( .A1(dmar_remaining[10]), .A2(n504), .B1(n535), 
        .B2(csr_di[12]), .ZN(n505) );
  OAI21D0BWP12T30P140 U578 ( .A1(n520), .A2(n506), .B(n505), .ZN(n231) );
  AOI21D0BWP12T30P140 U579 ( .A1(dmaw_next), .A2(n507), .B(n543), .ZN(n508) );
  AOI22D0BWP12T30P140 U580 ( .A1(dmaw_remaining[11]), .A2(n508), .B1(n545), 
        .B2(csr_di[13]), .ZN(n509) );
  OAI31D0BWP12T30P140 U581 ( .A1(dmaw_remaining[11]), .A2(n523), .A3(n510), 
        .B(n509), .ZN(n276) );
  OAI21D0BWP12T30P140 U582 ( .A1(dmaw_addr[3]), .A2(n557), .B(n511), .ZN(n512)
         );
  AOI32D0BWP12T30P140 U583 ( .A1(dmaw_addr[3]), .A2(n514), .A3(n513), .B1(
        dmaw_addr[4]), .B2(n512), .ZN(n515) );
  OAI21D0BWP12T30P140 U584 ( .A1(n517), .A2(n516), .B(n515), .ZN(n267) );
  AOI21D0BWP12T30P140 U585 ( .A1(dmar_next), .A2(n601), .B(n533), .ZN(n518) );
  AOI22D0BWP12T30P140 U586 ( .A1(dmar_remaining[1]), .A2(n518), .B1(n535), 
        .B2(csr_di[3]), .ZN(n519) );
  OAI31D0BWP12T30P140 U587 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), 
        .A3(n520), .B(n519), .ZN(n240) );
  OA22D0BWP12T30P140 U588 ( .A1(n590), .A2(request_addr[1]), .B1(down_addr[13]), .B2(n582), .Z(n144) );
  AOI21D0BWP12T30P140 U589 ( .A1(dmaw_next), .A2(n597), .B(n543), .ZN(n521) );
  AOI22D0BWP12T30P140 U590 ( .A1(dmaw_remaining[1]), .A2(n521), .B1(n545), 
        .B2(csr_di[3]), .ZN(n522) );
  OAI31D0BWP12T30P140 U591 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(n523), .B(n522), .ZN(n286) );
  AOI21D0BWP12T30P140 U592 ( .A1(dmaw_remaining[13]), .A2(n525), .B(n524), 
        .ZN(n526) );
  OAI21D0BWP12T30P140 U593 ( .A1(n528), .A2(n527), .B(n526), .ZN(n274) );
  OA22D0BWP12T30P140 U594 ( .A1(n590), .A2(request_addr[2]), .B1(down_addr[14]), .B2(n582), .Z(n145) );
  AOI21D0BWP12T30P140 U595 ( .A1(dmar_next), .A2(n529), .B(n533), .ZN(n530) );
  AOI22D0BWP12T30P140 U596 ( .A1(dmar_remaining[9]), .A2(n530), .B1(n535), 
        .B2(csr_di[11]), .ZN(n531) );
  OAI21D0BWP12T30P140 U597 ( .A1(dmar_remaining[9]), .A2(n532), .B(n531), .ZN(
        n232) );
  AOI21D0BWP12T30P140 U598 ( .A1(dmar_next), .A2(n534), .B(n533), .ZN(n536) );
  AOI22D0BWP12T30P140 U599 ( .A1(dmar_remaining[5]), .A2(n536), .B1(n535), 
        .B2(csr_di[7]), .ZN(n537) );
  OAI21D0BWP12T30P140 U600 ( .A1(dmar_remaining[5]), .A2(n538), .B(n537), .ZN(
        n236) );
  OA22D0BWP12T30P140 U601 ( .A1(n583), .A2(request_addr[4]), .B1(down_addr[16]), .B2(n582), .Z(n147) );
  AOI21D0BWP12T30P140 U602 ( .A1(dmaw_next), .A2(n539), .B(n543), .ZN(n540) );
  AOI22D0BWP12T30P140 U603 ( .A1(dmaw_remaining[9]), .A2(n540), .B1(n545), 
        .B2(csr_di[11]), .ZN(n541) );
  OAI21D0BWP12T30P140 U604 ( .A1(dmaw_remaining[9]), .A2(n542), .B(n541), .ZN(
        n278) );
  AOI21D0BWP12T30P140 U605 ( .A1(dmaw_next), .A2(n544), .B(n543), .ZN(n546) );
  AOI22D0BWP12T30P140 U606 ( .A1(dmaw_remaining[5]), .A2(n546), .B1(n545), 
        .B2(csr_di[7]), .ZN(n547) );
  OAI21D0BWP12T30P140 U607 ( .A1(dmaw_remaining[5]), .A2(n548), .B(n547), .ZN(
        n282) );
  OA22D0BWP12T30P140 U608 ( .A1(n583), .A2(request_addr[5]), .B1(down_addr[17]), .B2(n582), .Z(n148) );
  INVD0BWP12T30P140 U609 ( .I(dmaw_addr[0]), .ZN(n603) );
  OAI21D0BWP12T30P140 U610 ( .A1(dmaw_addr[0]), .A2(n557), .B(n563), .ZN(n549)
         );
  AOI22D0BWP12T30P140 U611 ( .A1(dmaw_addr[1]), .A2(n549), .B1(n619), .B2(
        csr_di[3]), .ZN(n550) );
  OAI31D0BWP12T30P140 U612 ( .A1(dmaw_addr[1]), .A2(n557), .A3(n603), .B(n550), 
        .ZN(n270) );
  INVD0BWP12T30P140 U613 ( .I(dmar_addr[0]), .ZN(n599) );
  OAI21D0BWP12T30P140 U614 ( .A1(dmar_addr[0]), .A2(n570), .B(n569), .ZN(n551)
         );
  AOI22D0BWP12T30P140 U615 ( .A1(dmar_addr[1]), .A2(n551), .B1(n572), .B2(
        csr_di[3]), .ZN(n552) );
  OAI31D0BWP12T30P140 U616 ( .A1(dmar_addr[1]), .A2(n570), .A3(n599), .B(n552), 
        .ZN(n224) );
  OA22D0BWP12T30P140 U617 ( .A1(n590), .A2(request_addr[6]), .B1(down_addr[18]), .B2(n582), .Z(n149) );
  OAI21D0BWP12T30P140 U618 ( .A1(n553), .A2(n557), .B(n563), .ZN(n554) );
  AOI22D0BWP12T30P140 U619 ( .A1(dmaw_addr[13]), .A2(n554), .B1(n619), .B2(
        csr_di[15]), .ZN(n555) );
  OAI21D0BWP12T30P140 U620 ( .A1(dmaw_addr[13]), .A2(n556), .B(n555), .ZN(n258) );
  OAI21D0BWP12T30P140 U621 ( .A1(n558), .A2(n557), .B(n563), .ZN(n559) );
  AOI22D0BWP12T30P140 U622 ( .A1(dmaw_addr[9]), .A2(n559), .B1(n565), .B2(
        csr_di[11]), .ZN(n560) );
  OAI21D0BWP12T30P140 U623 ( .A1(dmaw_addr[9]), .A2(n561), .B(n560), .ZN(n262)
         );
  ND4D0BWP12T30P140 U624 ( .A1(up_addr_valid), .A2(up_frame_valid), .A3(
        up_data_valid), .A4(up_en), .ZN(n562) );
  INR3D1BWP12T30P140 U625 ( .A1(up_next_frame), .B1(n629), .B2(n562), .ZN(N722) );
  CKMUX2D0BWP12T30P140 U626 ( .I0(reply_data[0]), .I1(up_data[4]), .S(N722), 
        .Z(n303) );
  OAI21D0BWP12T30P140 U627 ( .A1(n564), .A2(n578), .B(n563), .ZN(n566) );
  AOI22D0BWP12T30P140 U628 ( .A1(dmaw_addr[5]), .A2(n566), .B1(n565), .B2(
        csr_di[7]), .ZN(n567) );
  OAI21D0BWP12T30P140 U629 ( .A1(dmaw_addr[5]), .A2(n568), .B(n567), .ZN(n266)
         );
  OAI21D0BWP12T30P140 U630 ( .A1(n571), .A2(n570), .B(n569), .ZN(n573) );
  AOI22D0BWP12T30P140 U631 ( .A1(dmar_addr[13]), .A2(n573), .B1(n572), .B2(
        csr_di[15]), .ZN(n574) );
  OAI21D0BWP12T30P140 U632 ( .A1(dmar_addr[13]), .A2(n575), .B(n574), .ZN(n212) );
  CKMUX2D0BWP12T30P140 U633 ( .I0(reply_data[1]), .I1(up_data[5]), .S(N722), 
        .Z(n288) );
  AOI22D0BWP12T30P140 U634 ( .A1(n576), .A2(dmaw_addr[0]), .B1(n619), .B2(
        csr_di[2]), .ZN(n577) );
  OAI21D0BWP12T30P140 U635 ( .A1(dmaw_addr[0]), .A2(n578), .B(n577), .ZN(n271)
         );
  AOI22D0BWP12T30P140 U636 ( .A1(n579), .A2(dmar_addr[0]), .B1(n624), .B2(
        csr_di[2]), .ZN(n580) );
  OAI21D0BWP12T30P140 U637 ( .A1(dmar_addr[0]), .A2(n581), .B(n580), .ZN(n225)
         );
  CKMUX2D0BWP12T30P140 U638 ( .I0(reply_data[3]), .I1(up_data[7]), .S(N722), 
        .Z(n290) );
  AN2D0BWP12T30P140 U639 ( .A1(down_data[1]), .A2(n583), .Z(n142) );
  CKMUX2D0BWP12T30P140 U640 ( .I0(reply_data[4]), .I1(up_data[8]), .S(N722), 
        .Z(n291) );
  CKMUX2D0BWP12T30P140 U641 ( .I0(reply_data[5]), .I1(up_data[9]), .S(N722), 
        .Z(n292) );
  CKMUX2D0BWP12T30P140 U642 ( .I0(reply_data[6]), .I1(up_data[10]), .S(N722), 
        .Z(n293) );
  CKMUX2D0BWP12T30P140 U643 ( .I0(reply_data[7]), .I1(up_data[11]), .S(N722), 
        .Z(n294) );
  CKMUX2D0BWP12T30P140 U644 ( .I0(reply_data[8]), .I1(up_data[12]), .S(N722), 
        .Z(n295) );
  CKMUX2D0BWP12T30P140 U645 ( .I0(reply_data[9]), .I1(up_data[13]), .S(N722), 
        .Z(n296) );
  CKMUX2D0BWP12T30P140 U646 ( .I0(reply_data[10]), .I1(up_data[14]), .S(N722), 
        .Z(n297) );
  CKMUX2D0BWP12T30P140 U647 ( .I0(reply_data[11]), .I1(up_data[15]), .S(N722), 
        .Z(n298) );
  CKMUX2D0BWP12T30P140 U648 ( .I0(reply_data[12]), .I1(up_data[16]), .S(N722), 
        .Z(n299) );
  CKMUX2D0BWP12T30P140 U649 ( .I0(reply_data[13]), .I1(up_data[17]), .S(N722), 
        .Z(n300) );
  CKMUX2D0BWP12T30P140 U650 ( .I0(reply_data[14]), .I1(up_data[18]), .S(N722), 
        .Z(n301) );
  CKMUX2D0BWP12T30P140 U651 ( .I0(reply_data[15]), .I1(up_data[19]), .S(N722), 
        .Z(n302) );
  MAOI22D0BWP12T30P140 U652 ( .A1(n589), .A2(request_write), .B1(down_addr[19]), .B2(n582), .ZN(n150) );
  CKMUX2D0BWP12T30P140 U653 ( .I0(reply_data[2]), .I1(up_data[6]), .S(N722), 
        .Z(n289) );
  OA22D0BWP12T30P140 U654 ( .A1(n583), .A2(request_data[0]), .B1(down_data[4]), 
        .B2(n589), .Z(n171) );
  OA22D0BWP12T30P140 U655 ( .A1(n583), .A2(request_data[1]), .B1(down_data[5]), 
        .B2(n582), .Z(n153) );
  OA22D0BWP12T30P140 U656 ( .A1(n590), .A2(request_data[2]), .B1(down_data[6]), 
        .B2(n589), .Z(n168) );
  OA22D0BWP12T30P140 U657 ( .A1(n583), .A2(request_data[3]), .B1(down_data[7]), 
        .B2(n589), .Z(n165) );
  OA22D0BWP12T30P140 U658 ( .A1(n583), .A2(request_data[11]), .B1(
        down_data[15]), .B2(n589), .Z(n184) );
  OA22D0BWP12T30P140 U659 ( .A1(n583), .A2(request_data[13]), .B1(
        down_data[17]), .B2(n589), .Z(n180) );
  OA22D0BWP12T30P140 U660 ( .A1(n590), .A2(request_data[14]), .B1(
        down_data[18]), .B2(n589), .Z(n178) );
  ND2D0BWP12T30P140 U661 ( .A1(csr_di[0]), .A2(n593), .ZN(n585) );
  OAI32D0BWP12T30P140 U662 ( .A1(n588), .A2(n587), .A3(n586), .B1(n585), .B2(
        n584), .ZN(n151) );
  OA22D0BWP12T30P140 U663 ( .A1(n590), .A2(request_data[4]), .B1(down_data[8]), 
        .B2(n589), .Z(n162) );
  CKBD0BWP12T30P140 U664 ( .I(sys_clk), .Z(n645) );
  CKBD0BWP12T30P140 U665 ( .I(sys_clk), .Z(n646) );
  CKBD0BWP12T30P140 U666 ( .I(sys_clk), .Z(n647) );
  CKBD0BWP12T30P140 U667 ( .I(sys_clk), .Z(n650) );
  CKBD0BWP12T30P140 U668 ( .I(sys_clk), .Z(n651) );
  CKBD0BWP12T30P140 U669 ( .I(sys_clk), .Z(n652) );
  CKBD0BWP12T30P140 U670 ( .I(sys_clk), .Z(n648) );
  CKBD0BWP12T30P140 U671 ( .I(sys_clk), .Z(n649) );
  CKBD0BWP12T30P140 U672 ( .I(sys_clk), .Z(n653) );
  CKBD0BWP12T30P140 U673 ( .I(sys_clk), .Z(n654) );
  INVD0BWP12T30P140 U674 ( .I(n591), .ZN(n627) );
  ND2D0BWP12T30P140 U675 ( .A1(n593), .A2(n627), .ZN(N31) );
  INVD0BWP12T30P140 U676 ( .I(n592), .ZN(n628) );
  ND2D0BWP12T30P140 U677 ( .A1(n593), .A2(n628), .ZN(N30) );
  AOI22D0BWP12T30P140 U678 ( .A1(request_addr[2]), .A2(n595), .B1(
        request_data[2]), .B2(n594), .ZN(n608) );
  OAI22D0BWP12T30P140 U679 ( .A1(n599), .A2(n598), .B1(n597), .B2(n596), .ZN(
        n605) );
  OAI22D0BWP12T30P140 U680 ( .A1(n603), .A2(n602), .B1(n601), .B2(n600), .ZN(
        n604) );
  AOI211D0BWP12T30P140 U681 ( .A1(reply_data[2]), .A2(n606), .B(n605), .C(n604), .ZN(n607) );
  ND2D0BWP12T30P140 U682 ( .A1(n608), .A2(n607), .ZN(N566) );
  AOI22D0BWP12T30P140 U683 ( .A1(dmaw_addr[14]), .A2(n612), .B1(
        dmar_remaining[14]), .B2(n611), .ZN(n610) );
  AOI22D0BWP12T30P140 U684 ( .A1(dmar_addr[14]), .A2(n614), .B1(
        dmaw_remaining[14]), .B2(n613), .ZN(n609) );
  ND2D0BWP12T30P140 U685 ( .A1(n610), .A2(n609), .ZN(N580) );
  AOI22D0BWP12T30P140 U686 ( .A1(dmaw_addr[15]), .A2(n612), .B1(
        dmar_remaining[15]), .B2(n611), .ZN(n616) );
  AOI22D0BWP12T30P140 U687 ( .A1(dmar_addr[15]), .A2(n614), .B1(
        dmaw_remaining[15]), .B2(n613), .ZN(n615) );
  ND2D0BWP12T30P140 U688 ( .A1(n616), .A2(n615), .ZN(N581) );
  AOI22D0BWP12T30P140 U689 ( .A1(csr_di[29]), .A2(n619), .B1(n618), .B2(n617), 
        .ZN(n620) );
  IOA21D0BWP12T30P140 U690 ( .A1(dmaw_addr[27]), .A2(n621), .B(n620), .ZN(n244) );
  AOI22D0BWP12T30P140 U691 ( .A1(csr_di[29]), .A2(n624), .B1(n623), .B2(n622), 
        .ZN(n625) );
  IOA21D0BWP12T30P140 U692 ( .A1(dmar_addr[27]), .A2(n626), .B(n625), .ZN(n198) );
  NR3D0BWP12T30P140 U693 ( .A1(n629), .A2(dmaw_finished_r), .A3(n627), .ZN(
        N720) );
  NR3D0BWP12T30P140 U694 ( .A1(n629), .A2(dmar_finished_r), .A3(n628), .ZN(
        N719) );
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
  wire   n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n119, n120, n121, n165,
         n166, n167, n168;
  wire   [4:0] state;

  DFQD2BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n112), .CP(n168), .Q(wbm_adr_o[31])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n111), .CP(n168), .Q(wbm_adr_o[30])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n110), .CP(n168), .Q(wbm_adr_o[29])
         );
  DFQD2BWP12T30P140 state_reg_3_ ( .D(n116), .CP(n168), .Q(state[3]) );
  DFQD2BWP12T30P140 state_reg_4_ ( .D(n117), .CP(n168), .Q(state[4]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n109), .CP(n167), .Q(wbm_adr_o[28])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_27_ ( .D(n108), .CP(n167), .Q(wbm_adr_o[27])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_26_ ( .D(n107), .CP(n167), .Q(wbm_adr_o[26])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_25_ ( .D(n106), .CP(n167), .Q(wbm_adr_o[25])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_24_ ( .D(n105), .CP(n167), .Q(wbm_adr_o[24])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_23_ ( .D(n104), .CP(n167), .Q(wbm_adr_o[23])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n103), .CP(n167), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n102), .CP(n167), .Q(wbm_adr_o[21])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n101), .CP(n167), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_19_ ( .D(n100), .CP(n167), .Q(wbm_adr_o[19])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n99), .CP(n167), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_17_ ( .D(n98), .CP(n167), .Q(wbm_adr_o[17])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_15_ ( .D(n96), .CP(n166), .Q(wbm_adr_o[15])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n95), .CP(n166), .Q(wbm_adr_o[14])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_13_ ( .D(n94), .CP(n166), .Q(wbm_adr_o[13])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_12_ ( .D(n93), .CP(n166), .Q(wbm_adr_o[12])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_11_ ( .D(n92), .CP(n166), .Q(wbm_adr_o[11])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_10_ ( .D(n91), .CP(n166), .Q(wbm_adr_o[10])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_9_ ( .D(n90), .CP(n166), .Q(wbm_adr_o[9]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_8_ ( .D(n89), .CP(n166), .Q(wbm_adr_o[8]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_7_ ( .D(n88), .CP(n166), .Q(wbm_adr_o[7]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_6_ ( .D(n87), .CP(n166), .Q(wbm_adr_o[6]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_5_ ( .D(n86), .CP(n166), .Q(wbm_adr_o[5]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_4_ ( .D(n85), .CP(n165), .Q(wbm_adr_o[4]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_3_ ( .D(n84), .CP(n165), .Q(wbm_adr_o[3]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_2_ ( .D(n83), .CP(n165), .Q(wbm_adr_o[2]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_9_ ( .D(n56), .CP(n168), .Q(
        down_pcmleft[9]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_6_ ( .D(n53), .CP(n166), .Q(
        down_pcmleft[6]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_5_ ( .D(n52), .CP(n167), .Q(
        down_pcmleft[5]) );
  DFQD2BWP12T30P140 down_pcmright_reg_19_ ( .D(n81), .CP(n165), .Q(
        down_pcmright[19]) );
  DFQD2BWP12T30P140 down_pcmright_reg_6_ ( .D(n69), .CP(n165), .Q(
        down_pcmright[6]) );
  DFQD2BWP12T30P140 down_pcmright_reg_4_ ( .D(n67), .CP(n168), .Q(
        down_pcmright[4]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_7_ ( .D(n54), .CP(n165), .Q(
        down_pcmleft[7]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_4_ ( .D(n51), .CP(n168), .Q(
        down_pcmleft[4]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n118), .CP(n168), .Q(state[0]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_10_ ( .D(n57), .CP(n166), .Q(
        down_pcmleft[10]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_8_ ( .D(n55), .CP(n167), .Q(
        down_pcmleft[8]) );
  DFQD2BWP12T30P140 down_pcmright_reg_14_ ( .D(n77), .CP(n165), .Q(
        down_pcmright[14]) );
  DFQD2BWP12T30P140 down_pcmright_reg_12_ ( .D(n75), .CP(n165), .Q(
        down_pcmright[12]) );
  DFQD2BWP12T30P140 down_pcmright_reg_11_ ( .D(n74), .CP(n165), .Q(
        down_pcmright[11]) );
  DFQD2BWP12T30P140 down_pcmright_reg_5_ ( .D(n68), .CP(n167), .Q(
        down_pcmright[5]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_14_ ( .D(n61), .CP(n165), .Q(
        down_pcmleft[14]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_13_ ( .D(n60), .CP(n168), .Q(
        down_pcmleft[13]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_12_ ( .D(n59), .CP(n166), .Q(
        down_pcmleft[12]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_19_ ( .D(n65), .CP(n167), .Q(
        down_pcmleft[19]) );
  DFQD2BWP12T30P140 down_pcmright_reg_13_ ( .D(n76), .CP(n165), .Q(
        down_pcmright[13]) );
  DFQD2BWP12T30P140 down_pcmright_reg_10_ ( .D(n73), .CP(n165), .Q(
        down_pcmright[10]) );
  DFQD2BWP12T30P140 down_pcmright_reg_9_ ( .D(n72), .CP(n168), .Q(
        down_pcmright[9]) );
  DFQD2BWP12T30P140 down_pcmright_reg_7_ ( .D(n70), .CP(n166), .Q(
        down_pcmright[7]) );
  DFQD2BWP12T30P140 down_pcmleft_valid_reg ( .D(n82), .CP(n165), .Q(
        down_pcmleft_valid) );
  DFQD2BWP12T30P140 down_pcmright_reg_18_ ( .D(n80), .CP(n165), .Q(
        down_pcmright[18]) );
  DFQD2BWP12T30P140 down_pcmright_reg_17_ ( .D(n79), .CP(n165), .Q(
        down_pcmright[17]) );
  DFQD2BWP12T30P140 down_pcmright_reg_16_ ( .D(n78), .CP(n165), .Q(
        down_pcmright[16]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_18_ ( .D(n64), .CP(n167), .Q(
        down_pcmleft[18]) );
  DFQD2BWP12T30P140 state_reg_2_ ( .D(n115), .CP(n168), .Q(state[2]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_17_ ( .D(n63), .CP(n168), .Q(
        down_pcmleft[17]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_0_ ( .D(n50), .CP(n167), .Q(
        down_pcmleft[15]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n114), .CP(n168), .Q(state[1]) );
  DFQD2BWP12T30P140 down_pcmright_reg_0_ ( .D(n66), .CP(n168), .Q(
        down_pcmright[15]) );
  DFQD1BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n113), .CP(n168), .Q(wbm_adr_o[1])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n97), .CP(n166), .Q(wbm_adr_o[16])
         );
  DFQD1BWP12T30P140 down_pcmleft_reg_11_ ( .D(n58), .CP(n165), .Q(
        down_pcmleft[11]) );
  DFQD1BWP12T30P140 down_pcmright_reg_8_ ( .D(n71), .CP(n166), .Q(
        down_pcmright[8]) );
  DFQD1BWP12T30P140 down_pcmleft_reg_16_ ( .D(n62), .CP(n168), .Q(
        down_pcmleft[16]) );
  AOI32D0BWP12T30P140 U3 ( .A1(n47), .A2(n37), .A3(n36), .B1(n35), .B2(n37), 
        .ZN(n118) );
  ND2D0BWP12T30P140 U4 ( .A1(n46), .A2(n44), .ZN(wbm_cyc_o) );
  ND2D0BWP12T30P140 U5 ( .A1(n43), .A2(n121), .ZN(n4) );
  INVD0BWP12T30P140 U6 ( .I(state[3]), .ZN(n121) );
  INVD0BWP12T30P140 U7 ( .I(state[4]), .ZN(n43) );
  CKBD0BWP12T30P140 U8 ( .I(n38), .Z(n39) );
  CKBD0BWP12T30P140 U9 ( .I(n32), .Z(n30) );
  CKBD0BWP12T30P140 U10 ( .I(down_pcmright[15]), .Z(down_pcmright[0]) );
  CKBD0BWP12T30P140 U11 ( .I(down_pcmright[16]), .Z(down_pcmright[1]) );
  CKBD0BWP12T30P140 U12 ( .I(down_pcmright[17]), .Z(down_pcmright[2]) );
  CKBD0BWP12T30P140 U13 ( .I(down_pcmright[18]), .Z(down_pcmright[3]) );
  CKBD0BWP12T30P140 U14 ( .I(down_pcmleft[15]), .Z(down_pcmleft[0]) );
  CKBD0BWP12T30P140 U15 ( .I(down_pcmleft[16]), .Z(down_pcmleft[1]) );
  CKBD0BWP12T30P140 U16 ( .I(down_pcmleft[17]), .Z(down_pcmleft[2]) );
  CKBD0BWP12T30P140 U17 ( .I(down_pcmleft[18]), .Z(down_pcmleft[3]) );
  CKBD0BWP12T30P140 U18 ( .I(down_pcmleft_valid), .Z(down_pcmright_valid) );
  CKBD0BWP12T30P140 U19 ( .I(up_pcmright[4]), .Z(wbm_dat_o[0]) );
  CKBD0BWP12T30P140 U20 ( .I(up_pcmright[5]), .Z(wbm_dat_o[1]) );
  CKBD0BWP12T30P140 U21 ( .I(up_pcmright[6]), .Z(wbm_dat_o[2]) );
  CKBD0BWP12T30P140 U22 ( .I(up_pcmright[7]), .Z(wbm_dat_o[3]) );
  CKBD0BWP12T30P140 U23 ( .I(up_pcmright[8]), .Z(wbm_dat_o[4]) );
  CKBD0BWP12T30P140 U24 ( .I(up_pcmright[9]), .Z(wbm_dat_o[5]) );
  CKBD0BWP12T30P140 U25 ( .I(up_pcmright[10]), .Z(wbm_dat_o[6]) );
  CKBD0BWP12T30P140 U26 ( .I(up_pcmright[11]), .Z(wbm_dat_o[7]) );
  CKBD0BWP12T30P140 U27 ( .I(up_pcmright[12]), .Z(wbm_dat_o[8]) );
  CKBD0BWP12T30P140 U28 ( .I(up_pcmright[13]), .Z(wbm_dat_o[9]) );
  CKBD0BWP12T30P140 U29 ( .I(up_pcmright[14]), .Z(wbm_dat_o[10]) );
  CKBD0BWP12T30P140 U30 ( .I(up_pcmright[15]), .Z(wbm_dat_o[11]) );
  CKBD0BWP12T30P140 U31 ( .I(up_pcmright[16]), .Z(wbm_dat_o[12]) );
  CKBD0BWP12T30P140 U32 ( .I(up_pcmright[17]), .Z(wbm_dat_o[13]) );
  CKBD0BWP12T30P140 U33 ( .I(up_pcmright[18]), .Z(wbm_dat_o[14]) );
  CKBD0BWP12T30P140 U34 ( .I(up_pcmright[19]), .Z(wbm_dat_o[15]) );
  CKBD0BWP12T30P140 U35 ( .I(up_pcmleft[4]), .Z(wbm_dat_o[16]) );
  CKBD0BWP12T30P140 U36 ( .I(up_pcmleft[5]), .Z(wbm_dat_o[17]) );
  CKBD0BWP12T30P140 U37 ( .I(up_pcmleft[6]), .Z(wbm_dat_o[18]) );
  CKBD0BWP12T30P140 U38 ( .I(up_pcmleft[7]), .Z(wbm_dat_o[19]) );
  CKBD0BWP12T30P140 U39 ( .I(up_pcmleft[8]), .Z(wbm_dat_o[20]) );
  CKBD0BWP12T30P140 U40 ( .I(up_pcmleft[9]), .Z(wbm_dat_o[21]) );
  CKBD0BWP12T30P140 U41 ( .I(up_pcmleft[10]), .Z(wbm_dat_o[22]) );
  CKBD0BWP12T30P140 U42 ( .I(up_pcmleft[11]), .Z(wbm_dat_o[23]) );
  CKBD0BWP12T30P140 U43 ( .I(up_pcmleft[12]), .Z(wbm_dat_o[24]) );
  CKBD0BWP12T30P140 U44 ( .I(up_pcmleft[13]), .Z(wbm_dat_o[25]) );
  CKBD0BWP12T30P140 U45 ( .I(up_pcmleft[14]), .Z(wbm_dat_o[26]) );
  CKBD0BWP12T30P140 U46 ( .I(up_pcmleft[15]), .Z(wbm_dat_o[27]) );
  CKBD0BWP12T30P140 U47 ( .I(up_pcmleft[16]), .Z(wbm_dat_o[28]) );
  CKBD0BWP12T30P140 U48 ( .I(up_pcmleft[17]), .Z(wbm_dat_o[29]) );
  CKBD0BWP12T30P140 U49 ( .I(up_pcmleft[18]), .Z(wbm_dat_o[30]) );
  CKBD0BWP12T30P140 U50 ( .I(up_pcmleft[19]), .Z(wbm_dat_o[31]) );
  INVD0BWP12T30P140 U51 ( .I(state[2]), .ZN(n22) );
  NR2D0BWP12T30P140 U52 ( .A1(n4), .A2(state[0]), .ZN(n1) );
  ND3D0BWP12T30P140 U53 ( .A1(n22), .A2(n1), .A3(state[1]), .ZN(n46) );
  INVD0BWP12T30P140 U54 ( .I(state[1]), .ZN(n24) );
  ND3D0BWP12T30P140 U55 ( .A1(n24), .A2(state[2]), .A3(n1), .ZN(n44) );
  CKBD0BWP12T30P140 U56 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  CKBD0BWP12T30P140 U57 ( .I(wbm_adr_o[1]), .Z(wbm_adr_o[0]) );
  INVD0BWP12T30P140 U58 ( .I(state[0]), .ZN(n35) );
  NR4D0BWP12T30P140 U59 ( .A1(state[1]), .A2(state[2]), .A3(n4), .A4(n35), 
        .ZN(n47) );
  INVD0BWP12T30P140 U60 ( .I(up_next_frame), .ZN(n2) );
  INVD0BWP12T30P140 U61 ( .I(down_next_frame), .ZN(n48) );
  OAI22D0BWP12T30P140 U62 ( .A1(dmaw_en), .A2(n2), .B1(dmar_en), .B2(n48), 
        .ZN(n3) );
  IOA21D0BWP12T30P140 U63 ( .A1(n47), .A2(n3), .B(n46), .ZN(n38) );
  CKMUX2D0BWP12T30P140 U64 ( .I0(down_pcmright[11]), .I1(wbm_dat_i[7]), .S(n38), .Z(n74) );
  CKMUX2D0BWP12T30P140 U65 ( .I0(down_pcmright[8]), .I1(wbm_dat_i[4]), .S(n39), 
        .Z(n71) );
  CKMUX2D0BWP12T30P140 U66 ( .I0(down_pcmright[5]), .I1(wbm_dat_i[1]), .S(n38), 
        .Z(n68) );
  CKMUX2D0BWP12T30P140 U67 ( .I0(down_pcmleft[14]), .I1(wbm_dat_i[26]), .S(n38), .Z(n61) );
  CKMUX2D0BWP12T30P140 U68 ( .I0(down_pcmleft[13]), .I1(wbm_dat_i[25]), .S(n38), .Z(n60) );
  CKMUX2D0BWP12T30P140 U69 ( .I0(down_pcmleft[12]), .I1(wbm_dat_i[24]), .S(n38), .Z(n59) );
  CKMUX2D0BWP12T30P140 U70 ( .I0(down_pcmleft[19]), .I1(wbm_dat_i[31]), .S(n39), .Z(n65) );
  CKMUX2D0BWP12T30P140 U71 ( .I0(down_pcmright[13]), .I1(wbm_dat_i[9]), .S(n39), .Z(n76) );
  CKMUX2D0BWP12T30P140 U72 ( .I0(down_pcmright[10]), .I1(wbm_dat_i[6]), .S(n39), .Z(n73) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(down_pcmright[9]), .I1(wbm_dat_i[5]), .S(n38), 
        .Z(n72) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(down_pcmright[7]), .I1(wbm_dat_i[3]), .S(n38), 
        .Z(n70) );
  INVD0BWP12T30P140 U75 ( .I(dmar_en), .ZN(n49) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n49), .A2(n39), .B1(n39), .B2(
        down_pcmleft_valid), .ZN(n82) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(down_pcmright[18]), .I1(wbm_dat_i[14]), .S(
        n39), .Z(n80) );
  CKMUX2D0BWP12T30P140 U78 ( .I0(down_pcmright[17]), .I1(wbm_dat_i[13]), .S(
        n39), .Z(n79) );
  CKMUX2D0BWP12T30P140 U79 ( .I0(down_pcmright[16]), .I1(wbm_dat_i[12]), .S(
        n39), .Z(n78) );
  CKMUX2D0BWP12T30P140 U80 ( .I0(down_pcmleft[18]), .I1(wbm_dat_i[30]), .S(n38), .Z(n64) );
  CKMUX2D0BWP12T30P140 U81 ( .I0(down_pcmleft[16]), .I1(wbm_dat_i[28]), .S(n38), .Z(n62) );
  INVD0BWP12T30P140 U82 ( .I(wbm_cyc_o), .ZN(n18) );
  NR3D0BWP12T30P140 U83 ( .A1(state[2]), .A2(state[1]), .A3(state[0]), .ZN(n40) );
  OA21D0BWP12T30P140 U84 ( .A1(n121), .A2(n43), .B(n4), .Z(n5) );
  AOI21D0BWP12T30P140 U85 ( .A1(n40), .A2(n5), .B(sys_rst), .ZN(n37) );
  INVD0BWP12T30P140 U86 ( .I(sys_rst), .ZN(n19) );
  NR4D0BWP12T30P140 U87 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), .A3(
        dmaw_remaining[2]), .A4(dmaw_remaining[3]), .ZN(n9) );
  NR4D0BWP12T30P140 U88 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[5]), .A3(
        dmaw_remaining[6]), .A4(dmaw_remaining[7]), .ZN(n8) );
  NR4D0BWP12T30P140 U89 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[9]), .A3(
        dmaw_remaining[10]), .A4(dmaw_remaining[11]), .ZN(n7) );
  NR4D0BWP12T30P140 U90 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[14]), .A4(dmaw_remaining[15]), .ZN(n6) );
  ND4D0BWP12T30P140 U91 ( .A1(n9), .A2(n8), .A3(n7), .A4(n6), .ZN(n10) );
  AN3D0BWP12T30P140 U92 ( .A1(dmaw_en), .A2(up_next_frame), .A3(n10), .Z(n20)
         );
  NR4D0BWP12T30P140 U93 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), .A3(
        dmar_remaining[2]), .A4(dmar_remaining[3]), .ZN(n14) );
  NR4D0BWP12T30P140 U94 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[5]), .A3(
        dmar_remaining[6]), .A4(dmar_remaining[7]), .ZN(n13) );
  NR4D0BWP12T30P140 U95 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[9]), .A3(
        dmar_remaining[10]), .A4(dmar_remaining[11]), .ZN(n12) );
  NR4D0BWP12T30P140 U96 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[14]), .A4(dmar_remaining[15]), .ZN(n11) );
  ND4D0BWP12T30P140 U97 ( .A1(n14), .A2(n13), .A3(n12), .A4(n11), .ZN(n15) );
  ND3D0BWP12T30P140 U98 ( .A1(n15), .A2(down_next_frame), .A3(dmar_en), .ZN(
        n23) );
  ND2D0BWP12T30P140 U99 ( .A1(n47), .A2(n23), .ZN(n21) );
  OAI22D0BWP12T30P140 U100 ( .A1(n20), .A2(n21), .B1(n18), .B2(wbm_ack_i), 
        .ZN(n16) );
  ND2D0BWP12T30P140 U101 ( .A1(n19), .A2(n16), .ZN(n36) );
  INVD0BWP12T30P140 U102 ( .I(n36), .ZN(n17) );
  AOI21D0BWP12T30P140 U103 ( .A1(n18), .A2(n37), .B(n17), .ZN(n28) );
  ND2D0BWP12T30P140 U104 ( .A1(n19), .A2(n36), .ZN(n27) );
  IND2D1BWP12T30P140 U105 ( .A1(n21), .B1(n20), .ZN(n25) );
  OAI22D0BWP12T30P140 U106 ( .A1(n28), .A2(n22), .B1(n27), .B2(n25), .ZN(n115)
         );
  CKMUX2D0BWP12T30P140 U107 ( .I0(down_pcmleft[17]), .I1(wbm_dat_i[29]), .S(
        n39), .Z(n63) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(down_pcmleft[15]), .I1(wbm_dat_i[27]), .S(
        n39), .Z(n50) );
  IND2D1BWP12T30P140 U109 ( .A1(n23), .B1(n47), .ZN(n26) );
  OAI22D0BWP12T30P140 U110 ( .A1(n28), .A2(n24), .B1(n27), .B2(n26), .ZN(n114)
         );
  CKMUX2D0BWP12T30P140 U111 ( .I0(down_pcmright[15]), .I1(wbm_dat_i[11]), .S(
        n38), .Z(n66) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(down_pcmright[12]), .I1(wbm_dat_i[8]), .S(
        n38), .Z(n75) );
  INVD0BWP12T30P140 U113 ( .I(n25), .ZN(n29) );
  CKBD0BWP12T30P140 U114 ( .I(n29), .Z(n34) );
  INVD0BWP12T30P140 U115 ( .I(n26), .ZN(n32) );
  NR2D0BWP12T30P140 U116 ( .A1(n29), .A2(n30), .ZN(n31) );
  CKBD0BWP12T30P140 U117 ( .I(n31), .Z(n33) );
  AO222D0BWP12T30P140 U118 ( .A1(n34), .A2(dmaw_addr[29]), .B1(n33), .B2(
        wbm_adr_o[31]), .C1(n30), .C2(dmar_addr[29]), .Z(n112) );
  AO222D0BWP12T30P140 U119 ( .A1(n29), .A2(dmaw_addr[28]), .B1(n33), .B2(
        wbm_adr_o[30]), .C1(n30), .C2(dmar_addr[28]), .Z(n111) );
  AO222D0BWP12T30P140 U120 ( .A1(n34), .A2(dmaw_addr[27]), .B1(n33), .B2(
        wbm_adr_o[29]), .C1(n30), .C2(dmar_addr[27]), .Z(n110) );
  AN2D0BWP12T30P140 U121 ( .A1(n33), .A2(wbm_adr_o[1]), .Z(n113) );
  OAI22D0BWP12T30P140 U122 ( .A1(n28), .A2(n121), .B1(n46), .B2(n27), .ZN(n116) );
  OAI22D0BWP12T30P140 U123 ( .A1(n28), .A2(n43), .B1(n44), .B2(n27), .ZN(n117)
         );
  AO222D0BWP12T30P140 U124 ( .A1(n29), .A2(dmaw_addr[26]), .B1(n33), .B2(
        wbm_adr_o[28]), .C1(n30), .C2(dmar_addr[26]), .Z(n109) );
  AO222D0BWP12T30P140 U125 ( .A1(n34), .A2(dmaw_addr[25]), .B1(n33), .B2(
        wbm_adr_o[27]), .C1(n32), .C2(dmar_addr[25]), .Z(n108) );
  AO222D0BWP12T30P140 U126 ( .A1(n29), .A2(dmaw_addr[24]), .B1(n33), .B2(
        wbm_adr_o[26]), .C1(n30), .C2(dmar_addr[24]), .Z(n107) );
  AO222D0BWP12T30P140 U127 ( .A1(n34), .A2(dmaw_addr[23]), .B1(n31), .B2(
        wbm_adr_o[25]), .C1(n32), .C2(dmar_addr[23]), .Z(n106) );
  AO222D0BWP12T30P140 U128 ( .A1(n29), .A2(dmaw_addr[22]), .B1(n31), .B2(
        wbm_adr_o[24]), .C1(n30), .C2(dmar_addr[22]), .Z(n105) );
  AO222D0BWP12T30P140 U129 ( .A1(n34), .A2(dmaw_addr[21]), .B1(n33), .B2(
        wbm_adr_o[23]), .C1(n32), .C2(dmar_addr[21]), .Z(n104) );
  AO222D0BWP12T30P140 U130 ( .A1(n29), .A2(dmaw_addr[20]), .B1(n31), .B2(
        wbm_adr_o[22]), .C1(n30), .C2(dmar_addr[20]), .Z(n103) );
  AO222D0BWP12T30P140 U131 ( .A1(n34), .A2(dmaw_addr[19]), .B1(n33), .B2(
        wbm_adr_o[21]), .C1(n32), .C2(dmar_addr[19]), .Z(n102) );
  AO222D0BWP12T30P140 U132 ( .A1(n29), .A2(dmaw_addr[18]), .B1(n31), .B2(
        wbm_adr_o[20]), .C1(n30), .C2(dmar_addr[18]), .Z(n101) );
  AO222D0BWP12T30P140 U133 ( .A1(n29), .A2(dmaw_addr[17]), .B1(n33), .B2(
        wbm_adr_o[19]), .C1(n32), .C2(dmar_addr[17]), .Z(n100) );
  AO222D0BWP12T30P140 U134 ( .A1(n34), .A2(dmaw_addr[16]), .B1(n31), .B2(
        wbm_adr_o[18]), .C1(n30), .C2(dmar_addr[16]), .Z(n99) );
  AO222D0BWP12T30P140 U135 ( .A1(n29), .A2(dmaw_addr[15]), .B1(n33), .B2(
        wbm_adr_o[17]), .C1(n32), .C2(dmar_addr[15]), .Z(n98) );
  AO222D0BWP12T30P140 U136 ( .A1(n34), .A2(dmaw_addr[14]), .B1(n31), .B2(
        wbm_adr_o[16]), .C1(n30), .C2(dmar_addr[14]), .Z(n97) );
  AO222D0BWP12T30P140 U137 ( .A1(n29), .A2(dmaw_addr[13]), .B1(n33), .B2(
        wbm_adr_o[15]), .C1(n32), .C2(dmar_addr[13]), .Z(n96) );
  AO222D0BWP12T30P140 U138 ( .A1(n34), .A2(dmaw_addr[12]), .B1(n31), .B2(
        wbm_adr_o[14]), .C1(n32), .C2(dmar_addr[12]), .Z(n95) );
  AO222D0BWP12T30P140 U139 ( .A1(n29), .A2(dmaw_addr[11]), .B1(n31), .B2(
        wbm_adr_o[13]), .C1(n32), .C2(dmar_addr[11]), .Z(n94) );
  AO222D0BWP12T30P140 U140 ( .A1(n34), .A2(dmaw_addr[10]), .B1(n31), .B2(
        wbm_adr_o[12]), .C1(n32), .C2(dmar_addr[10]), .Z(n93) );
  AO222D0BWP12T30P140 U141 ( .A1(n29), .A2(dmaw_addr[9]), .B1(n31), .B2(
        wbm_adr_o[11]), .C1(n30), .C2(dmar_addr[9]), .Z(n92) );
  AO222D0BWP12T30P140 U142 ( .A1(n34), .A2(dmaw_addr[8]), .B1(n31), .B2(
        wbm_adr_o[10]), .C1(n32), .C2(dmar_addr[8]), .Z(n91) );
  AO222D0BWP12T30P140 U143 ( .A1(n29), .A2(dmaw_addr[7]), .B1(n31), .B2(
        wbm_adr_o[9]), .C1(n30), .C2(dmar_addr[7]), .Z(n90) );
  AO222D0BWP12T30P140 U144 ( .A1(n34), .A2(dmaw_addr[6]), .B1(n33), .B2(
        wbm_adr_o[8]), .C1(n32), .C2(dmar_addr[6]), .Z(n89) );
  AO222D0BWP12T30P140 U145 ( .A1(n29), .A2(dmaw_addr[5]), .B1(n31), .B2(
        wbm_adr_o[7]), .C1(n30), .C2(dmar_addr[5]), .Z(n88) );
  AO222D0BWP12T30P140 U146 ( .A1(n29), .A2(dmaw_addr[4]), .B1(n33), .B2(
        wbm_adr_o[6]), .C1(n32), .C2(dmar_addr[4]), .Z(n87) );
  AO222D0BWP12T30P140 U147 ( .A1(n34), .A2(dmaw_addr[3]), .B1(n31), .B2(
        wbm_adr_o[5]), .C1(n30), .C2(dmar_addr[3]), .Z(n86) );
  AO222D0BWP12T30P140 U148 ( .A1(n34), .A2(dmaw_addr[2]), .B1(n33), .B2(
        wbm_adr_o[4]), .C1(n32), .C2(dmar_addr[2]), .Z(n85) );
  AO222D0BWP12T30P140 U149 ( .A1(n34), .A2(dmaw_addr[1]), .B1(n31), .B2(
        wbm_adr_o[3]), .C1(n30), .C2(dmar_addr[1]), .Z(n84) );
  AO222D0BWP12T30P140 U150 ( .A1(n34), .A2(dmaw_addr[0]), .B1(n33), .B2(
        wbm_adr_o[2]), .C1(n32), .C2(dmar_addr[0]), .Z(n83) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(down_pcmleft[11]), .I1(wbm_dat_i[23]), .S(
        n38), .Z(n58) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(down_pcmleft[9]), .I1(wbm_dat_i[21]), .S(n39), .Z(n56) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(down_pcmleft[6]), .I1(wbm_dat_i[18]), .S(n38), .Z(n53) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(down_pcmleft[5]), .I1(wbm_dat_i[17]), .S(n39), .Z(n52) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(down_pcmright[19]), .I1(wbm_dat_i[15]), .S(
        n39), .Z(n81) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(down_pcmright[6]), .I1(wbm_dat_i[2]), .S(n39), .Z(n69) );
  CKMUX2D0BWP12T30P140 U157 ( .I0(down_pcmright[4]), .I1(wbm_dat_i[0]), .S(n39), .Z(n67) );
  CKMUX2D0BWP12T30P140 U158 ( .I0(down_pcmleft[7]), .I1(wbm_dat_i[19]), .S(n39), .Z(n54) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(down_pcmleft[4]), .I1(wbm_dat_i[16]), .S(n38), .Z(n51) );
  CKMUX2D0BWP12T30P140 U160 ( .I0(down_pcmleft[10]), .I1(wbm_dat_i[22]), .S(
        n38), .Z(n57) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(down_pcmleft[8]), .I1(wbm_dat_i[20]), .S(n38), .Z(n55) );
  CKMUX2D0BWP12T30P140 U162 ( .I0(down_pcmright[14]), .I1(wbm_dat_i[10]), .S(
        n39), .Z(n77) );
  INVD0BWP12T30P140 U163 ( .I(n40), .ZN(n120) );
  ND2D0BWP12T30P140 U164 ( .A1(dmaw_en), .A2(up_next_frame), .ZN(n41) );
  ND2D0BWP12T30P140 U165 ( .A1(n47), .A2(n41), .ZN(n42) );
  OAI31D0BWP12T30P140 U166 ( .A1(state[3]), .A2(n43), .A3(n120), .B(n42), .ZN(
        up_en) );
  CKBD0BWP12T30P140 U167 ( .I(sys_clk), .Z(n167) );
  CKBD0BWP12T30P140 U168 ( .I(sys_clk), .Z(n166) );
  CKBD0BWP12T30P140 U169 ( .I(sys_clk), .Z(n168) );
  CKBD0BWP12T30P140 U170 ( .I(sys_clk), .Z(n165) );
  INVD0BWP12T30P140 U171 ( .I(n44), .ZN(wbm_we_o) );
  INVD0BWP12T30P140 U172 ( .I(wbm_ack_i), .ZN(n45) );
  NR2D0BWP12T30P140 U173 ( .A1(n44), .A2(n45), .ZN(dmaw_next) );
  NR2D0BWP12T30P140 U174 ( .A1(n46), .A2(n45), .ZN(dmar_next) );
  OAI21D0BWP12T30P140 U175 ( .A1(n49), .A2(n48), .B(n47), .ZN(n119) );
  OAI31D0BWP12T30P140 U176 ( .A1(state[4]), .A2(n121), .A3(n120), .B(n119), 
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
         dmaw_en, dmaw_next, n4, n5, n6, SYNOPSYS_UNCONNECTED_1,
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

  ac97_transceiver transceiver ( .sys_clk(n6), .sys_rst(sys_rst), .ac97_clk(
        ac97_clk), .ac97_rst_n(ac97_rst_n), .ac97_sin(ac97_sin), .ac97_sout(
        ac97_sout), .ac97_sync(ac97_sync), .up_stb(up_stb), .up_ack(up_ack), 
        .up_sync(up_sync), .up_data(up_sdata), .down_stb(down_stb), 
        .down_sync(down_sync), .down_data(down_sdata) );
  ac97_framer framer ( .sys_clk(n6), .sys_rst(sys_rst), .down_ready(n4), 
        .down_stb(down_stb), .down_sync(down_sync), .down_data(down_sdata), 
        .en(down_en), .next_frame(down_next_frame), .addr_valid(
        down_addr_valid), .addr(down_addr), .data_valid(down_data_valid), 
        .data(down_data), .pcmleft_valid(down_pcmleft_valid), .pcmleft(
        down_pcmleft), .pcmright_valid(down_pcmright_valid), .pcmright(
        down_pcmright) );
  ac97_deframer deframer ( .sys_clk(sys_clk), .sys_rst(sys_rst), .up_stb(
        up_stb), .up_ack(up_ack), .up_sync(up_sync), .up_data(up_sdata), .en(
        up_en), .next_frame(up_next_frame), .frame_valid(up_frame_valid), 
        .addr_valid(up_addr_valid), .addr({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20}), .data_valid(up_data_valid), .data(up_data), 
        .pcmleft(up_pcmleft), .pcmright(up_pcmright) );
  ac97_ctlif_0 ctlif ( .sys_clk(n5), .sys_rst(sys_rst), .csr_a(csr_a), 
        .csr_we(csr_we), .csr_di(csr_di), .csr_do(csr_do), .crrequest_irq(
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
  CKBD0BWP12T30P140 U6 ( .I(sys_clk), .Z(n5) );
  CKBD0BWP12T30P140 U7 ( .I(sys_clk), .Z(n6) );
endmodule

