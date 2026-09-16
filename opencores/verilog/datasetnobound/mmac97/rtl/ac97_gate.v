/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:03:20 2026
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
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n110), .CP(n375), .Q(mem[115]) );
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
  DFQD2BWP12T30P140 mem_reg_19__0_ ( .D(n137), .CP(n373), .Q(mem[88]) );
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
  DFQD2BWP12T30P140 mem_reg_35__1_ ( .D(n168), .CP(n373), .Q(mem[57]) );
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
  DFQD2BWP12T30P140 mem_reg_54__1_ ( .D(n206), .CP(n377), .Q(mem[19]) );
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
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n115), .CP(n375), .Q(mem[110]) );
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
  DFQD2BWP12T30P140 mem_reg_24__1_ ( .D(n146), .CP(n372), .Q(mem[79]) );
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
  DFQD2BWP12T30P140 mem_reg_37__0_ ( .D(n173), .CP(n373), .Q(mem[52]) );
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
  DFQD2BWP12T30P140 mem_reg_57__1_ ( .D(n212), .CP(n374), .Q(mem[13]) );
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
  DFQD2BWP12T30P140 mem_reg_63__0_ ( .D(n224), .CP(clk_write), .Q(mem[0]) );
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
  DFQD1BWP12T30P140 mem_reg_6__0_ ( .D(n111), .CP(n375), .Q(mem[114]) );
  DFQD1BWP12T30P140 mem_reg_22__1_ ( .D(n142), .CP(n372), .Q(mem[83]) );
  DFQD1BWP12T30P140 mem_reg_35__0_ ( .D(n169), .CP(n376), .Q(mem[56]) );
  DFQD1BWP12T30P140 mem_reg_55__1_ ( .D(n208), .CP(n377), .Q(mem[17]) );
  DFQD1BWP12T30P140 mem_reg_9__1_ ( .D(n116), .CP(n375), .Q(mem[109]) );
  DFQD1BWP12T30P140 mem_reg_24__0_ ( .D(n147), .CP(n372), .Q(mem[78]) );
  DFQD1BWP12T30P140 mem_reg_40__1_ ( .D(n178), .CP(n375), .Q(mem[47]) );
  DFQD1BWP12T30P140 mem_reg_57__0_ ( .D(n213), .CP(n373), .Q(mem[12]) );
  DFQD1BWP12T30P140 mem_reg_40__0_ ( .D(n179), .CP(clk_write), .Q(mem[46]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n223), .CP(clk_write), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(wr_ptr[0]), .ZN(n230) );
  INVD0BWP12T30P140 U4 ( .I(wr_ptr[4]), .ZN(n364) );
  INVD0BWP12T30P140 U5 ( .I(wr_ptr[1]), .ZN(n95) );
  OAI22D0BWP12T30P140 U6 ( .A1(rd_ptr[1]), .A2(n95), .B1(rd_ptr[4]), .B2(n364), 
        .ZN(n2) );
  AOI221D0BWP12T30P140 U7 ( .A1(n364), .A2(rd_ptr[4]), .B1(n95), .B2(rd_ptr[1]), .C(n2), .ZN(n7) );
  INVD0BWP12T30P140 U8 ( .I(wr_ptr[5]), .ZN(n370) );
  OAI22D0BWP12T30P140 U9 ( .A1(rd_ptr[0]), .A2(n230), .B1(rd_ptr[5]), .B2(n370), .ZN(n3) );
  AOI221D0BWP12T30P140 U10 ( .A1(n370), .A2(rd_ptr[5]), .B1(n230), .B2(
        rd_ptr[0]), .C(n3), .ZN(n6) );
  INVD0BWP12T30P140 U11 ( .I(wr_ptr[3]), .ZN(n365) );
  INVD0BWP12T30P140 U12 ( .I(wr_ptr[2]), .ZN(n338) );
  OAI22D0BWP12T30P140 U13 ( .A1(rd_ptr[2]), .A2(n338), .B1(rd_ptr[3]), .B2(
        n365), .ZN(n4) );
  AOI221D0BWP12T30P140 U14 ( .A1(n365), .A2(rd_ptr[3]), .B1(n338), .B2(
        rd_ptr[2]), .C(n4), .ZN(n5) );
  AN3D0BWP12T30P140 U15 ( .A1(n7), .A2(n6), .A3(n5), .Z(empty) );
  INVD0BWP12T30P140 U16 ( .I(rd_ptr[3]), .ZN(n28) );
  INVD0BWP12T30P140 U17 ( .I(rd_ptr[1]), .ZN(n11) );
  INR2D1BWP12T30P140 U18 ( .A1(read_en), .B1(empty), .ZN(n362) );
  ND2D0BWP12T30P140 U19 ( .A1(rd_ptr[0]), .A2(n362), .ZN(n361) );
  NR2D0BWP12T30P140 U20 ( .A1(n11), .A2(n361), .ZN(n360) );
  ND2D0BWP12T30P140 U21 ( .A1(rd_ptr[2]), .A2(n360), .ZN(n359) );
  NR2D0BWP12T30P140 U22 ( .A1(n28), .A2(n359), .ZN(n61) );
  AOI21D0BWP12T30P140 U23 ( .A1(n28), .A2(n359), .B(n61), .ZN(n235) );
  AOI21D0BWP12T30P140 U24 ( .A1(n11), .A2(n361), .B(n360), .ZN(n237) );
  INVD0BWP12T30P140 U25 ( .I(rd_ptr[4]), .ZN(n21) );
  NR2D0BWP12T30P140 U26 ( .A1(n28), .A2(n21), .ZN(n322) );
  ND2D0BWP12T30P140 U27 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n9) );
  INVD0BWP12T30P140 U28 ( .I(rd_ptr[2]), .ZN(n8) );
  NR2D0BWP12T30P140 U29 ( .A1(n9), .A2(n8), .ZN(n310) );
  INVD0BWP12T30P140 U30 ( .I(rd_ptr[0]), .ZN(n10) );
  NR3D0BWP12T30P140 U31 ( .A1(rd_ptr[1]), .A2(n10), .A3(n8), .ZN(n309) );
  AOI22D0BWP12T30P140 U32 ( .A1(n310), .A2(mem[65]), .B1(n309), .B2(mem[69]), 
        .ZN(n15) );
  NR3D0BWP12T30P140 U33 ( .A1(rd_ptr[0]), .A2(n11), .A3(n8), .ZN(n312) );
  NR3D0BWP12T30P140 U34 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n8), .ZN(n311)
         );
  AOI22D0BWP12T30P140 U35 ( .A1(n312), .A2(mem[67]), .B1(n311), .B2(mem[71]), 
        .ZN(n14) );
  NR2D0BWP12T30P140 U36 ( .A1(rd_ptr[2]), .A2(n9), .ZN(n314) );
  NR3D0BWP12T30P140 U37 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n10), .ZN(n313)
         );
  AOI22D0BWP12T30P140 U38 ( .A1(n314), .A2(mem[73]), .B1(n313), .B2(mem[77]), 
        .ZN(n13) );
  NR3D0BWP12T30P140 U39 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n11), .ZN(n316)
         );
  NR3D0BWP12T30P140 U40 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), .ZN(
        n315) );
  AOI22D0BWP12T30P140 U41 ( .A1(n316), .A2(mem[75]), .B1(n315), .B2(mem[79]), 
        .ZN(n12) );
  ND4D0BWP12T30P140 U42 ( .A1(n15), .A2(n14), .A3(n13), .A4(n12), .ZN(n16) );
  AOI21D0BWP12T30P140 U43 ( .A1(n322), .A2(n16), .B(rd_ptr[5]), .ZN(n59) );
  ND2D0BWP12T30P140 U44 ( .A1(n28), .A2(n21), .ZN(n326) );
  INVD0BWP12T30P140 U45 ( .I(n326), .ZN(n291) );
  AOI22D0BWP12T30P140 U46 ( .A1(n310), .A2(mem[113]), .B1(n309), .B2(mem[117]), 
        .ZN(n20) );
  AOI22D0BWP12T30P140 U47 ( .A1(n312), .A2(mem[115]), .B1(n311), .B2(mem[119]), 
        .ZN(n19) );
  AOI22D0BWP12T30P140 U48 ( .A1(n314), .A2(mem[121]), .B1(n313), .B2(mem[125]), 
        .ZN(n18) );
  AOI22D0BWP12T30P140 U49 ( .A1(n316), .A2(mem[123]), .B1(n315), .B2(mem[127]), 
        .ZN(n17) );
  ND4D0BWP12T30P140 U50 ( .A1(n20), .A2(n19), .A3(n18), .A4(n17), .ZN(n27) );
  NR2D0BWP12T30P140 U51 ( .A1(rd_ptr[3]), .A2(n21), .ZN(n324) );
  AOI22D0BWP12T30P140 U52 ( .A1(n310), .A2(mem[81]), .B1(n309), .B2(mem[85]), 
        .ZN(n25) );
  AOI22D0BWP12T30P140 U53 ( .A1(n312), .A2(mem[83]), .B1(n311), .B2(mem[87]), 
        .ZN(n24) );
  AOI22D0BWP12T30P140 U54 ( .A1(n314), .A2(mem[89]), .B1(n313), .B2(mem[93]), 
        .ZN(n23) );
  AOI22D0BWP12T30P140 U55 ( .A1(n316), .A2(mem[91]), .B1(n315), .B2(mem[95]), 
        .ZN(n22) );
  ND4D0BWP12T30P140 U56 ( .A1(n25), .A2(n24), .A3(n23), .A4(n22), .ZN(n26) );
  AOI22D0BWP12T30P140 U57 ( .A1(n291), .A2(n27), .B1(n324), .B2(n26), .ZN(n58)
         );
  NR2D0BWP12T30P140 U58 ( .A1(rd_ptr[4]), .A2(n28), .ZN(n330) );
  AOI22D0BWP12T30P140 U59 ( .A1(n310), .A2(mem[97]), .B1(n309), .B2(mem[101]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U60 ( .A1(n312), .A2(mem[99]), .B1(n311), .B2(mem[103]), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U61 ( .A1(n314), .A2(mem[105]), .B1(n313), .B2(mem[109]), 
        .ZN(n30) );
  AOI22D0BWP12T30P140 U62 ( .A1(n316), .A2(mem[107]), .B1(n315), .B2(mem[111]), 
        .ZN(n29) );
  ND4D0BWP12T30P140 U63 ( .A1(n32), .A2(n31), .A3(n30), .A4(n29), .ZN(n33) );
  ND2D0BWP12T30P140 U64 ( .A1(n330), .A2(n33), .ZN(n57) );
  AOI22D0BWP12T30P140 U65 ( .A1(n310), .A2(mem[33]), .B1(n309), .B2(mem[37]), 
        .ZN(n37) );
  AOI22D0BWP12T30P140 U66 ( .A1(n312), .A2(mem[35]), .B1(n311), .B2(mem[39]), 
        .ZN(n36) );
  AOI22D0BWP12T30P140 U67 ( .A1(n314), .A2(mem[41]), .B1(n313), .B2(mem[45]), 
        .ZN(n35) );
  AOI22D0BWP12T30P140 U68 ( .A1(n316), .A2(mem[43]), .B1(n315), .B2(mem[47]), 
        .ZN(n34) );
  ND4D0BWP12T30P140 U69 ( .A1(n37), .A2(n36), .A3(n35), .A4(n34), .ZN(n55) );
  AOI22D0BWP12T30P140 U70 ( .A1(n310), .A2(mem[49]), .B1(n309), .B2(mem[53]), 
        .ZN(n41) );
  AOI22D0BWP12T30P140 U71 ( .A1(n312), .A2(mem[51]), .B1(n311), .B2(mem[55]), 
        .ZN(n40) );
  AOI22D0BWP12T30P140 U72 ( .A1(n314), .A2(mem[57]), .B1(n313), .B2(mem[61]), 
        .ZN(n39) );
  AOI22D0BWP12T30P140 U73 ( .A1(n316), .A2(mem[59]), .B1(n315), .B2(mem[63]), 
        .ZN(n38) );
  AN4D0BWP12T30P140 U74 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .Z(n53) );
  AOI22D0BWP12T30P140 U75 ( .A1(n310), .A2(mem[17]), .B1(n309), .B2(mem[21]), 
        .ZN(n45) );
  AOI22D0BWP12T30P140 U76 ( .A1(n312), .A2(mem[19]), .B1(n311), .B2(mem[23]), 
        .ZN(n44) );
  AOI22D0BWP12T30P140 U77 ( .A1(n314), .A2(mem[25]), .B1(n313), .B2(mem[29]), 
        .ZN(n43) );
  AOI22D0BWP12T30P140 U78 ( .A1(n316), .A2(mem[27]), .B1(n315), .B2(mem[31]), 
        .ZN(n42) );
  ND4D0BWP12T30P140 U79 ( .A1(n45), .A2(n44), .A3(n43), .A4(n42), .ZN(n51) );
  AOI22D0BWP12T30P140 U80 ( .A1(n310), .A2(mem[1]), .B1(n309), .B2(mem[5]), 
        .ZN(n49) );
  AOI22D0BWP12T30P140 U81 ( .A1(n312), .A2(mem[3]), .B1(n311), .B2(mem[7]), 
        .ZN(n48) );
  AOI22D0BWP12T30P140 U82 ( .A1(n314), .A2(mem[9]), .B1(n313), .B2(mem[13]), 
        .ZN(n47) );
  AOI22D0BWP12T30P140 U83 ( .A1(n316), .A2(mem[11]), .B1(n315), .B2(mem[15]), 
        .ZN(n46) );
  ND4D0BWP12T30P140 U84 ( .A1(n49), .A2(n48), .A3(n47), .A4(n46), .ZN(n50) );
  AOI22D0BWP12T30P140 U85 ( .A1(n324), .A2(n51), .B1(n322), .B2(n50), .ZN(n52)
         );
  OAI211D0BWP12T30P140 U86 ( .A1(n53), .A2(n326), .B(rd_ptr[5]), .C(n52), .ZN(
        n54) );
  AOI21D0BWP12T30P140 U87 ( .A1(n330), .A2(n55), .B(n54), .ZN(n56) );
  AOI31D0BWP12T30P140 U88 ( .A1(n59), .A2(n58), .A3(n57), .B(n56), .ZN(n60) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(data_out[1]), .I1(n60), .S(n362), .Z(n232) );
  ND2D0BWP12T30P140 U90 ( .A1(rd_ptr[4]), .A2(n61), .ZN(n367) );
  OA21D0BWP12T30P140 U91 ( .A1(rd_ptr[4]), .A2(n61), .B(n367), .Z(n234) );
  NR2D0BWP12T30P140 U92 ( .A1(n95), .A2(n230), .ZN(n339) );
  ND2D0BWP12T30P140 U93 ( .A1(wr_ptr[2]), .A2(n339), .ZN(n363) );
  NR2D0BWP12T30P140 U94 ( .A1(n365), .A2(n363), .ZN(n366) );
  AOI21D0BWP12T30P140 U95 ( .A1(n365), .A2(n363), .B(n366), .ZN(n228) );
  ND3D0BWP12T30P140 U96 ( .A1(n230), .A2(n338), .A3(wr_ptr[1]), .ZN(n90) );
  NR3D0BWP12T30P140 U97 ( .A1(wr_ptr[3]), .A2(wr_ptr[4]), .A3(rst), .ZN(n78)
         );
  ND2D0BWP12T30P140 U98 ( .A1(n78), .A2(n370), .ZN(n97) );
  NR2D0BWP12T30P140 U99 ( .A1(n90), .A2(n97), .ZN(n62) );
  INVD0BWP12T30P140 U100 ( .I(data_in[1]), .ZN(n343) );
  CKBD0BWP12T30P140 U101 ( .I(n343), .Z(n274) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n62), .A2(n274), .B1(mem[123]), .B2(n62), 
        .ZN(n102) );
  INVD0BWP12T30P140 U103 ( .I(data_in[0]), .ZN(n252) );
  CKBD0BWP12T30P140 U104 ( .I(n252), .Z(n358) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n62), .A2(n358), .B1(mem[122]), .B2(n62), 
        .ZN(n103) );
  ND2D0BWP12T30P140 U106 ( .A1(n339), .A2(n338), .ZN(n337) );
  NR2D0BWP12T30P140 U107 ( .A1(n337), .A2(n97), .ZN(n63) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n63), .A2(n274), .B1(mem[121]), .B2(n63), 
        .ZN(n104) );
  MAOI22D0BWP12T30P140 U109 ( .A1(n63), .A2(n252), .B1(mem[120]), .B2(n63), 
        .ZN(n105) );
  ND3D0BWP12T30P140 U110 ( .A1(n230), .A2(wr_ptr[1]), .A3(wr_ptr[2]), .ZN(n92)
         );
  NR2D0BWP12T30P140 U111 ( .A1(n92), .A2(n97), .ZN(n64) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n64), .A2(n274), .B1(mem[115]), .B2(n64), 
        .ZN(n110) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n64), .A2(n252), .B1(mem[114]), .B2(n64), 
        .ZN(n111) );
  NR2D0BWP12T30P140 U114 ( .A1(n363), .A2(n97), .ZN(n65) );
  MAOI22D0BWP12T30P140 U115 ( .A1(n65), .A2(n274), .B1(mem[113]), .B2(n65), 
        .ZN(n112) );
  MAOI22D0BWP12T30P140 U116 ( .A1(n65), .A2(n252), .B1(mem[112]), .B2(n65), 
        .ZN(n113) );
  NR3D0BWP12T30P140 U117 ( .A1(wr_ptr[4]), .A2(rst), .A3(n365), .ZN(n83) );
  ND2D0BWP12T30P140 U118 ( .A1(n83), .A2(n370), .ZN(n244) );
  NR2D0BWP12T30P140 U119 ( .A1(n90), .A2(n244), .ZN(n66) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n66), .A2(n274), .B1(mem[107]), .B2(n66), 
        .ZN(n118) );
  MAOI22D0BWP12T30P140 U121 ( .A1(n66), .A2(n252), .B1(mem[106]), .B2(n66), 
        .ZN(n119) );
  NR2D0BWP12T30P140 U122 ( .A1(n337), .A2(n244), .ZN(n67) );
  CKBD0BWP12T30P140 U123 ( .I(n343), .Z(n265) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n67), .A2(n265), .B1(mem[105]), .B2(n67), 
        .ZN(n120) );
  MAOI22D0BWP12T30P140 U125 ( .A1(n67), .A2(n252), .B1(mem[104]), .B2(n67), 
        .ZN(n121) );
  NR2D0BWP12T30P140 U126 ( .A1(n92), .A2(n244), .ZN(n68) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n68), .A2(n265), .B1(mem[99]), .B2(n68), 
        .ZN(n126) );
  CKBD0BWP12T30P140 U128 ( .I(n252), .Z(n351) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n68), .A2(n351), .B1(mem[98]), .B2(n68), 
        .ZN(n127) );
  NR2D0BWP12T30P140 U130 ( .A1(n363), .A2(n244), .ZN(n69) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n69), .A2(n265), .B1(mem[97]), .B2(n69), 
        .ZN(n128) );
  MAOI22D0BWP12T30P140 U132 ( .A1(n69), .A2(n358), .B1(mem[96]), .B2(n69), 
        .ZN(n129) );
  NR3D0BWP12T30P140 U133 ( .A1(wr_ptr[3]), .A2(rst), .A3(n364), .ZN(n86) );
  ND2D0BWP12T30P140 U134 ( .A1(n86), .A2(n370), .ZN(n249) );
  NR2D0BWP12T30P140 U135 ( .A1(n90), .A2(n249), .ZN(n70) );
  MAOI22D0BWP12T30P140 U136 ( .A1(n70), .A2(n265), .B1(mem[91]), .B2(n70), 
        .ZN(n134) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n70), .A2(n351), .B1(mem[90]), .B2(n70), 
        .ZN(n135) );
  NR2D0BWP12T30P140 U138 ( .A1(n337), .A2(n249), .ZN(n71) );
  MAOI22D0BWP12T30P140 U139 ( .A1(n71), .A2(n265), .B1(mem[89]), .B2(n71), 
        .ZN(n136) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n71), .A2(n358), .B1(mem[88]), .B2(n71), 
        .ZN(n137) );
  NR2D0BWP12T30P140 U141 ( .A1(n92), .A2(n249), .ZN(n72) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n72), .A2(n265), .B1(mem[83]), .B2(n72), 
        .ZN(n142) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n72), .A2(n351), .B1(mem[82]), .B2(n72), 
        .ZN(n143) );
  NR2D0BWP12T30P140 U144 ( .A1(n363), .A2(n249), .ZN(n73) );
  MAOI22D0BWP12T30P140 U145 ( .A1(n73), .A2(n265), .B1(mem[81]), .B2(n73), 
        .ZN(n144) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n73), .A2(n358), .B1(mem[80]), .B2(n73), 
        .ZN(n145) );
  NR3D0BWP12T30P140 U147 ( .A1(rst), .A2(n364), .A3(n365), .ZN(n89) );
  ND2D0BWP12T30P140 U148 ( .A1(n89), .A2(n370), .ZN(n255) );
  NR2D0BWP12T30P140 U149 ( .A1(n90), .A2(n255), .ZN(n74) );
  CKBD0BWP12T30P140 U150 ( .I(n343), .Z(n340) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n74), .A2(n340), .B1(mem[75]), .B2(n74), 
        .ZN(n150) );
  CKBD0BWP12T30P140 U152 ( .I(n252), .Z(n348) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n74), .A2(n348), .B1(mem[74]), .B2(n74), 
        .ZN(n151) );
  NR2D0BWP12T30P140 U154 ( .A1(n337), .A2(n255), .ZN(n75) );
  MAOI22D0BWP12T30P140 U155 ( .A1(n75), .A2(n340), .B1(mem[73]), .B2(n75), 
        .ZN(n152) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n75), .A2(n348), .B1(mem[72]), .B2(n75), 
        .ZN(n153) );
  NR2D0BWP12T30P140 U157 ( .A1(n92), .A2(n255), .ZN(n76) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n76), .A2(n340), .B1(mem[67]), .B2(n76), 
        .ZN(n158) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n76), .A2(n348), .B1(mem[66]), .B2(n76), 
        .ZN(n159) );
  NR2D0BWP12T30P140 U160 ( .A1(n363), .A2(n255), .ZN(n77) );
  MAOI22D0BWP12T30P140 U161 ( .A1(n77), .A2(n340), .B1(mem[65]), .B2(n77), 
        .ZN(n160) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n77), .A2(n348), .B1(mem[64]), .B2(n77), 
        .ZN(n161) );
  ND2D0BWP12T30P140 U163 ( .A1(wr_ptr[5]), .A2(n78), .ZN(n260) );
  NR2D0BWP12T30P140 U164 ( .A1(n90), .A2(n260), .ZN(n79) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n79), .A2(n340), .B1(mem[59]), .B2(n79), 
        .ZN(n166) );
  MAOI22D0BWP12T30P140 U166 ( .A1(n79), .A2(n348), .B1(mem[58]), .B2(n79), 
        .ZN(n167) );
  NR2D0BWP12T30P140 U167 ( .A1(n337), .A2(n260), .ZN(n80) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n80), .A2(n340), .B1(mem[57]), .B2(n80), 
        .ZN(n168) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n80), .A2(n348), .B1(mem[56]), .B2(n80), 
        .ZN(n169) );
  NR2D0BWP12T30P140 U170 ( .A1(n92), .A2(n260), .ZN(n81) );
  MAOI22D0BWP12T30P140 U171 ( .A1(n81), .A2(n340), .B1(mem[51]), .B2(n81), 
        .ZN(n174) );
  MAOI22D0BWP12T30P140 U172 ( .A1(n81), .A2(n351), .B1(mem[50]), .B2(n81), 
        .ZN(n175) );
  NR2D0BWP12T30P140 U173 ( .A1(n363), .A2(n260), .ZN(n82) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n82), .A2(n343), .B1(mem[49]), .B2(n82), 
        .ZN(n176) );
  MAOI22D0BWP12T30P140 U175 ( .A1(n82), .A2(n351), .B1(mem[48]), .B2(n82), 
        .ZN(n177) );
  ND2D0BWP12T30P140 U176 ( .A1(wr_ptr[5]), .A2(n83), .ZN(n342) );
  NR2D0BWP12T30P140 U177 ( .A1(n90), .A2(n342), .ZN(n84) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n84), .A2(n340), .B1(mem[43]), .B2(n84), 
        .ZN(n182) );
  MAOI22D0BWP12T30P140 U179 ( .A1(n84), .A2(n351), .B1(mem[42]), .B2(n84), 
        .ZN(n183) );
  NR2D0BWP12T30P140 U180 ( .A1(n337), .A2(n342), .ZN(n85) );
  MAOI22D0BWP12T30P140 U181 ( .A1(n85), .A2(n343), .B1(mem[41]), .B2(n85), 
        .ZN(n184) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n85), .A2(n351), .B1(mem[40]), .B2(n85), 
        .ZN(n185) );
  NR2D0BWP12T30P140 U183 ( .A1(n92), .A2(n342), .ZN(n341) );
  MAOI22D0BWP12T30P140 U184 ( .A1(n341), .A2(n351), .B1(mem[34]), .B2(n341), 
        .ZN(n191) );
  ND2D0BWP12T30P140 U185 ( .A1(wr_ptr[5]), .A2(n86), .ZN(n267) );
  NR2D0BWP12T30P140 U186 ( .A1(n90), .A2(n267), .ZN(n87) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n87), .A2(n343), .B1(mem[27]), .B2(n87), 
        .ZN(n198) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n87), .A2(n351), .B1(mem[26]), .B2(n87), 
        .ZN(n199) );
  NR2D0BWP12T30P140 U189 ( .A1(n337), .A2(n267), .ZN(n88) );
  MAOI22D0BWP12T30P140 U190 ( .A1(n88), .A2(n343), .B1(mem[25]), .B2(n88), 
        .ZN(n200) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n88), .A2(n358), .B1(mem[24]), .B2(n88), 
        .ZN(n201) );
  NR2D0BWP12T30P140 U192 ( .A1(n92), .A2(n267), .ZN(n345) );
  MAOI22D0BWP12T30P140 U193 ( .A1(n345), .A2(n343), .B1(mem[19]), .B2(n345), 
        .ZN(n206) );
  NR2D0BWP12T30P140 U194 ( .A1(n363), .A2(n267), .ZN(n346) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n346), .A2(n343), .B1(mem[17]), .B2(n346), 
        .ZN(n208) );
  ND2D0BWP12T30P140 U196 ( .A1(wr_ptr[5]), .A2(n89), .ZN(n275) );
  NR2D0BWP12T30P140 U197 ( .A1(n275), .A2(n90), .ZN(n91) );
  MAOI22D0BWP12T30P140 U198 ( .A1(n91), .A2(n343), .B1(mem[11]), .B2(n91), 
        .ZN(n214) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n91), .A2(n358), .B1(mem[10]), .B2(n91), 
        .ZN(n215) );
  NR2D0BWP12T30P140 U200 ( .A1(n275), .A2(n337), .ZN(n347) );
  MAOI22D0BWP12T30P140 U201 ( .A1(n347), .A2(n274), .B1(mem[9]), .B2(n347), 
        .ZN(n216) );
  NR2D0BWP12T30P140 U202 ( .A1(n275), .A2(n92), .ZN(n357) );
  MAOI22D0BWP12T30P140 U203 ( .A1(n357), .A2(n265), .B1(mem[3]), .B2(n357), 
        .ZN(n222) );
  ND3D0BWP12T30P140 U204 ( .A1(n230), .A2(n95), .A3(n338), .ZN(n268) );
  NR2D0BWP12T30P140 U205 ( .A1(n268), .A2(n97), .ZN(n93) );
  MAOI22D0BWP12T30P140 U206 ( .A1(n93), .A2(n274), .B1(mem[127]), .B2(n93), 
        .ZN(n98) );
  MAOI22D0BWP12T30P140 U207 ( .A1(n93), .A2(n348), .B1(mem[126]), .B2(n93), 
        .ZN(n99) );
  NR2D0BWP12T30P140 U208 ( .A1(wr_ptr[1]), .A2(n230), .ZN(n336) );
  ND2D0BWP12T30P140 U209 ( .A1(n336), .A2(n338), .ZN(n270) );
  NR2D0BWP12T30P140 U210 ( .A1(n270), .A2(n97), .ZN(n94) );
  MAOI22D0BWP12T30P140 U211 ( .A1(n94), .A2(n274), .B1(mem[125]), .B2(n94), 
        .ZN(n100) );
  MAOI22D0BWP12T30P140 U212 ( .A1(n94), .A2(n351), .B1(mem[124]), .B2(n94), 
        .ZN(n101) );
  ND3D0BWP12T30P140 U213 ( .A1(n230), .A2(n95), .A3(wr_ptr[2]), .ZN(n272) );
  NR2D0BWP12T30P140 U214 ( .A1(n272), .A2(n97), .ZN(n96) );
  MAOI22D0BWP12T30P140 U215 ( .A1(n96), .A2(n274), .B1(mem[119]), .B2(n96), 
        .ZN(n106) );
  MAOI22D0BWP12T30P140 U216 ( .A1(n96), .A2(n358), .B1(mem[118]), .B2(n96), 
        .ZN(n107) );
  ND2D0BWP12T30P140 U217 ( .A1(wr_ptr[2]), .A2(n336), .ZN(n273) );
  NR2D0BWP12T30P140 U218 ( .A1(n273), .A2(n97), .ZN(n240) );
  MAOI22D0BWP12T30P140 U219 ( .A1(n240), .A2(n274), .B1(mem[117]), .B2(n240), 
        .ZN(n108) );
  MAOI22D0BWP12T30P140 U220 ( .A1(n240), .A2(n252), .B1(mem[116]), .B2(n240), 
        .ZN(n109) );
  NR2D0BWP12T30P140 U221 ( .A1(n268), .A2(n244), .ZN(n241) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n241), .A2(n274), .B1(mem[111]), .B2(n241), 
        .ZN(n114) );
  MAOI22D0BWP12T30P140 U223 ( .A1(n241), .A2(n252), .B1(mem[110]), .B2(n241), 
        .ZN(n115) );
  NR2D0BWP12T30P140 U224 ( .A1(n270), .A2(n244), .ZN(n242) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n242), .A2(n274), .B1(mem[109]), .B2(n242), 
        .ZN(n116) );
  MAOI22D0BWP12T30P140 U226 ( .A1(n242), .A2(n252), .B1(mem[108]), .B2(n242), 
        .ZN(n117) );
  NR2D0BWP12T30P140 U227 ( .A1(n272), .A2(n244), .ZN(n243) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n243), .A2(n265), .B1(mem[103]), .B2(n243), 
        .ZN(n122) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n243), .A2(n252), .B1(mem[102]), .B2(n243), 
        .ZN(n123) );
  NR2D0BWP12T30P140 U230 ( .A1(n273), .A2(n244), .ZN(n245) );
  MAOI22D0BWP12T30P140 U231 ( .A1(n245), .A2(n265), .B1(mem[101]), .B2(n245), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U232 ( .A1(n245), .A2(n348), .B1(mem[100]), .B2(n245), 
        .ZN(n125) );
  NR2D0BWP12T30P140 U233 ( .A1(n268), .A2(n249), .ZN(n246) );
  MAOI22D0BWP12T30P140 U234 ( .A1(n246), .A2(n265), .B1(mem[95]), .B2(n246), 
        .ZN(n130) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n246), .A2(n252), .B1(mem[94]), .B2(n246), 
        .ZN(n131) );
  NR2D0BWP12T30P140 U236 ( .A1(n270), .A2(n249), .ZN(n247) );
  MAOI22D0BWP12T30P140 U237 ( .A1(n247), .A2(n265), .B1(mem[93]), .B2(n247), 
        .ZN(n132) );
  MAOI22D0BWP12T30P140 U238 ( .A1(n247), .A2(n348), .B1(mem[92]), .B2(n247), 
        .ZN(n133) );
  NR2D0BWP12T30P140 U239 ( .A1(n272), .A2(n249), .ZN(n248) );
  MAOI22D0BWP12T30P140 U240 ( .A1(n248), .A2(n265), .B1(mem[87]), .B2(n248), 
        .ZN(n138) );
  MAOI22D0BWP12T30P140 U241 ( .A1(n248), .A2(n252), .B1(mem[86]), .B2(n248), 
        .ZN(n139) );
  NR2D0BWP12T30P140 U242 ( .A1(n273), .A2(n249), .ZN(n250) );
  MAOI22D0BWP12T30P140 U243 ( .A1(n250), .A2(n265), .B1(mem[85]), .B2(n250), 
        .ZN(n140) );
  MAOI22D0BWP12T30P140 U244 ( .A1(n250), .A2(n348), .B1(mem[84]), .B2(n250), 
        .ZN(n141) );
  NR2D0BWP12T30P140 U245 ( .A1(n268), .A2(n255), .ZN(n251) );
  MAOI22D0BWP12T30P140 U246 ( .A1(n251), .A2(n340), .B1(mem[79]), .B2(n251), 
        .ZN(n146) );
  MAOI22D0BWP12T30P140 U247 ( .A1(n251), .A2(n252), .B1(mem[78]), .B2(n251), 
        .ZN(n147) );
  NR2D0BWP12T30P140 U248 ( .A1(n270), .A2(n255), .ZN(n253) );
  MAOI22D0BWP12T30P140 U249 ( .A1(n253), .A2(n340), .B1(mem[77]), .B2(n253), 
        .ZN(n148) );
  MAOI22D0BWP12T30P140 U250 ( .A1(n253), .A2(n252), .B1(mem[76]), .B2(n253), 
        .ZN(n149) );
  NR2D0BWP12T30P140 U251 ( .A1(n272), .A2(n255), .ZN(n254) );
  MAOI22D0BWP12T30P140 U252 ( .A1(n254), .A2(n340), .B1(mem[71]), .B2(n254), 
        .ZN(n154) );
  MAOI22D0BWP12T30P140 U253 ( .A1(n254), .A2(n348), .B1(mem[70]), .B2(n254), 
        .ZN(n155) );
  NR2D0BWP12T30P140 U254 ( .A1(n273), .A2(n255), .ZN(n256) );
  MAOI22D0BWP12T30P140 U255 ( .A1(n256), .A2(n340), .B1(mem[69]), .B2(n256), 
        .ZN(n156) );
  MAOI22D0BWP12T30P140 U256 ( .A1(n256), .A2(n348), .B1(mem[68]), .B2(n256), 
        .ZN(n157) );
  NR2D0BWP12T30P140 U257 ( .A1(n268), .A2(n260), .ZN(n257) );
  MAOI22D0BWP12T30P140 U258 ( .A1(n257), .A2(n340), .B1(mem[63]), .B2(n257), 
        .ZN(n162) );
  MAOI22D0BWP12T30P140 U259 ( .A1(n257), .A2(n348), .B1(mem[62]), .B2(n257), 
        .ZN(n163) );
  NR2D0BWP12T30P140 U260 ( .A1(n270), .A2(n260), .ZN(n258) );
  MAOI22D0BWP12T30P140 U261 ( .A1(n258), .A2(n340), .B1(mem[61]), .B2(n258), 
        .ZN(n164) );
  MAOI22D0BWP12T30P140 U262 ( .A1(n258), .A2(n348), .B1(mem[60]), .B2(n258), 
        .ZN(n165) );
  NR2D0BWP12T30P140 U263 ( .A1(n272), .A2(n260), .ZN(n259) );
  MAOI22D0BWP12T30P140 U264 ( .A1(n259), .A2(n340), .B1(mem[55]), .B2(n259), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U265 ( .A1(n259), .A2(n348), .B1(mem[54]), .B2(n259), 
        .ZN(n171) );
  NR2D0BWP12T30P140 U266 ( .A1(n273), .A2(n260), .ZN(n261) );
  MAOI22D0BWP12T30P140 U267 ( .A1(n261), .A2(n343), .B1(mem[53]), .B2(n261), 
        .ZN(n172) );
  MAOI22D0BWP12T30P140 U268 ( .A1(n261), .A2(n348), .B1(mem[52]), .B2(n261), 
        .ZN(n173) );
  NR2D0BWP12T30P140 U269 ( .A1(n268), .A2(n342), .ZN(n350) );
  MAOI22D0BWP12T30P140 U270 ( .A1(n350), .A2(n274), .B1(mem[47]), .B2(n350), 
        .ZN(n178) );
  NR2D0BWP12T30P140 U271 ( .A1(n270), .A2(n342), .ZN(n262) );
  MAOI22D0BWP12T30P140 U272 ( .A1(n262), .A2(n265), .B1(mem[45]), .B2(n262), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U273 ( .A1(n262), .A2(n351), .B1(mem[44]), .B2(n262), 
        .ZN(n181) );
  NR2D0BWP12T30P140 U274 ( .A1(n272), .A2(n342), .ZN(n263) );
  MAOI22D0BWP12T30P140 U275 ( .A1(n263), .A2(n274), .B1(mem[39]), .B2(n263), 
        .ZN(n186) );
  MAOI22D0BWP12T30P140 U276 ( .A1(n263), .A2(n351), .B1(mem[38]), .B2(n263), 
        .ZN(n187) );
  NR2D0BWP12T30P140 U277 ( .A1(n273), .A2(n342), .ZN(n264) );
  MAOI22D0BWP12T30P140 U278 ( .A1(n264), .A2(n265), .B1(mem[37]), .B2(n264), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U279 ( .A1(n264), .A2(n351), .B1(mem[36]), .B2(n264), 
        .ZN(n189) );
  NR2D0BWP12T30P140 U280 ( .A1(n268), .A2(n267), .ZN(n352) );
  MAOI22D0BWP12T30P140 U281 ( .A1(n352), .A2(n274), .B1(mem[31]), .B2(n352), 
        .ZN(n194) );
  NR2D0BWP12T30P140 U282 ( .A1(n270), .A2(n267), .ZN(n266) );
  MAOI22D0BWP12T30P140 U283 ( .A1(n266), .A2(n265), .B1(mem[29]), .B2(n266), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U284 ( .A1(n266), .A2(n351), .B1(mem[28]), .B2(n266), 
        .ZN(n196) );
  NR2D0BWP12T30P140 U285 ( .A1(n272), .A2(n267), .ZN(n353) );
  MAOI22D0BWP12T30P140 U286 ( .A1(n353), .A2(n343), .B1(mem[23]), .B2(n353), 
        .ZN(n202) );
  NR2D0BWP12T30P140 U287 ( .A1(n273), .A2(n267), .ZN(n354) );
  MAOI22D0BWP12T30P140 U288 ( .A1(n354), .A2(n343), .B1(mem[21]), .B2(n354), 
        .ZN(n204) );
  NR2D0BWP12T30P140 U289 ( .A1(n275), .A2(n268), .ZN(n269) );
  MAOI22D0BWP12T30P140 U290 ( .A1(n269), .A2(n343), .B1(mem[15]), .B2(n269), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U291 ( .A1(n269), .A2(n358), .B1(mem[14]), .B2(n269), 
        .ZN(n211) );
  NR2D0BWP12T30P140 U292 ( .A1(n275), .A2(n270), .ZN(n271) );
  MAOI22D0BWP12T30P140 U293 ( .A1(n271), .A2(n274), .B1(mem[13]), .B2(n271), 
        .ZN(n212) );
  MAOI22D0BWP12T30P140 U294 ( .A1(n271), .A2(n358), .B1(mem[12]), .B2(n271), 
        .ZN(n213) );
  NR2D0BWP12T30P140 U295 ( .A1(n275), .A2(n272), .ZN(n355) );
  MAOI22D0BWP12T30P140 U296 ( .A1(n355), .A2(n343), .B1(mem[7]), .B2(n355), 
        .ZN(n218) );
  NR2D0BWP12T30P140 U297 ( .A1(n275), .A2(n273), .ZN(n356) );
  MAOI22D0BWP12T30P140 U298 ( .A1(n356), .A2(n274), .B1(mem[5]), .B2(n356), 
        .ZN(n220) );
  NR2D0BWP12T30P140 U299 ( .A1(n363), .A2(n275), .ZN(n349) );
  CKMUX2D0BWP12T30P140 U300 ( .I0(mem[1]), .I1(data_in[1]), .S(n349), .Z(n225)
         );
  AOI22D0BWP12T30P140 U301 ( .A1(n310), .A2(mem[64]), .B1(n309), .B2(mem[68]), 
        .ZN(n279) );
  AOI22D0BWP12T30P140 U302 ( .A1(n312), .A2(mem[66]), .B1(n311), .B2(mem[70]), 
        .ZN(n278) );
  AOI22D0BWP12T30P140 U303 ( .A1(n314), .A2(mem[72]), .B1(n313), .B2(mem[76]), 
        .ZN(n277) );
  AOI22D0BWP12T30P140 U304 ( .A1(n316), .A2(mem[74]), .B1(n315), .B2(mem[78]), 
        .ZN(n276) );
  ND4D0BWP12T30P140 U305 ( .A1(n279), .A2(n278), .A3(n277), .A4(n276), .ZN(
        n280) );
  AOI21D0BWP12T30P140 U306 ( .A1(n322), .A2(n280), .B(rd_ptr[5]), .ZN(n334) );
  AOI22D0BWP12T30P140 U307 ( .A1(n310), .A2(mem[112]), .B1(n309), .B2(mem[116]), .ZN(n284) );
  AOI22D0BWP12T30P140 U308 ( .A1(n312), .A2(mem[114]), .B1(n311), .B2(mem[118]), .ZN(n283) );
  AOI22D0BWP12T30P140 U309 ( .A1(n314), .A2(mem[120]), .B1(n313), .B2(mem[124]), .ZN(n282) );
  AOI22D0BWP12T30P140 U310 ( .A1(n316), .A2(mem[122]), .B1(n315), .B2(mem[126]), .ZN(n281) );
  ND4D0BWP12T30P140 U311 ( .A1(n284), .A2(n283), .A3(n282), .A4(n281), .ZN(
        n290) );
  AOI22D0BWP12T30P140 U312 ( .A1(n310), .A2(mem[80]), .B1(n309), .B2(mem[84]), 
        .ZN(n288) );
  AOI22D0BWP12T30P140 U313 ( .A1(n312), .A2(mem[82]), .B1(n311), .B2(mem[86]), 
        .ZN(n287) );
  AOI22D0BWP12T30P140 U314 ( .A1(n314), .A2(mem[88]), .B1(n313), .B2(mem[92]), 
        .ZN(n286) );
  AOI22D0BWP12T30P140 U315 ( .A1(n316), .A2(mem[90]), .B1(n315), .B2(mem[94]), 
        .ZN(n285) );
  ND4D0BWP12T30P140 U316 ( .A1(n288), .A2(n287), .A3(n286), .A4(n285), .ZN(
        n289) );
  AOI22D0BWP12T30P140 U317 ( .A1(n291), .A2(n290), .B1(n324), .B2(n289), .ZN(
        n333) );
  AOI22D0BWP12T30P140 U318 ( .A1(n310), .A2(mem[96]), .B1(n309), .B2(mem[100]), 
        .ZN(n295) );
  AOI22D0BWP12T30P140 U319 ( .A1(n312), .A2(mem[98]), .B1(n311), .B2(mem[102]), 
        .ZN(n294) );
  AOI22D0BWP12T30P140 U320 ( .A1(n314), .A2(mem[104]), .B1(n313), .B2(mem[108]), .ZN(n293) );
  AOI22D0BWP12T30P140 U321 ( .A1(n316), .A2(mem[106]), .B1(n315), .B2(mem[110]), .ZN(n292) );
  ND4D0BWP12T30P140 U322 ( .A1(n295), .A2(n294), .A3(n293), .A4(n292), .ZN(
        n296) );
  ND2D0BWP12T30P140 U323 ( .A1(n330), .A2(n296), .ZN(n332) );
  AOI22D0BWP12T30P140 U324 ( .A1(n310), .A2(mem[32]), .B1(n309), .B2(mem[36]), 
        .ZN(n300) );
  AOI22D0BWP12T30P140 U325 ( .A1(n312), .A2(mem[34]), .B1(n311), .B2(mem[38]), 
        .ZN(n299) );
  AOI22D0BWP12T30P140 U326 ( .A1(n314), .A2(mem[40]), .B1(n313), .B2(mem[44]), 
        .ZN(n298) );
  AOI22D0BWP12T30P140 U327 ( .A1(n316), .A2(mem[42]), .B1(n315), .B2(mem[46]), 
        .ZN(n297) );
  ND4D0BWP12T30P140 U328 ( .A1(n300), .A2(n299), .A3(n298), .A4(n297), .ZN(
        n329) );
  AOI22D0BWP12T30P140 U329 ( .A1(n310), .A2(mem[48]), .B1(n309), .B2(mem[52]), 
        .ZN(n304) );
  AOI22D0BWP12T30P140 U330 ( .A1(n312), .A2(mem[50]), .B1(n311), .B2(mem[54]), 
        .ZN(n303) );
  AOI22D0BWP12T30P140 U331 ( .A1(n314), .A2(mem[56]), .B1(n313), .B2(mem[60]), 
        .ZN(n302) );
  AOI22D0BWP12T30P140 U332 ( .A1(n316), .A2(mem[58]), .B1(n315), .B2(mem[62]), 
        .ZN(n301) );
  AN4D0BWP12T30P140 U333 ( .A1(n304), .A2(n303), .A3(n302), .A4(n301), .Z(n327) );
  AOI22D0BWP12T30P140 U334 ( .A1(n310), .A2(mem[16]), .B1(n309), .B2(mem[20]), 
        .ZN(n308) );
  AOI22D0BWP12T30P140 U335 ( .A1(n312), .A2(mem[18]), .B1(n311), .B2(mem[22]), 
        .ZN(n307) );
  AOI22D0BWP12T30P140 U336 ( .A1(n314), .A2(mem[24]), .B1(n313), .B2(mem[28]), 
        .ZN(n306) );
  AOI22D0BWP12T30P140 U337 ( .A1(n316), .A2(mem[26]), .B1(n315), .B2(mem[30]), 
        .ZN(n305) );
  ND4D0BWP12T30P140 U338 ( .A1(n308), .A2(n307), .A3(n306), .A4(n305), .ZN(
        n323) );
  AOI22D0BWP12T30P140 U339 ( .A1(n310), .A2(mem[0]), .B1(n309), .B2(mem[4]), 
        .ZN(n320) );
  AOI22D0BWP12T30P140 U340 ( .A1(n312), .A2(mem[2]), .B1(n311), .B2(mem[6]), 
        .ZN(n319) );
  AOI22D0BWP12T30P140 U341 ( .A1(n314), .A2(mem[8]), .B1(n313), .B2(mem[12]), 
        .ZN(n318) );
  AOI22D0BWP12T30P140 U342 ( .A1(n316), .A2(mem[10]), .B1(n315), .B2(mem[14]), 
        .ZN(n317) );
  ND4D0BWP12T30P140 U343 ( .A1(n320), .A2(n319), .A3(n318), .A4(n317), .ZN(
        n321) );
  AOI22D0BWP12T30P140 U344 ( .A1(n324), .A2(n323), .B1(n322), .B2(n321), .ZN(
        n325) );
  OAI211D0BWP12T30P140 U345 ( .A1(n327), .A2(n326), .B(rd_ptr[5]), .C(n325), 
        .ZN(n328) );
  AOI21D0BWP12T30P140 U346 ( .A1(n330), .A2(n329), .B(n328), .ZN(n331) );
  AOI31D0BWP12T30P140 U347 ( .A1(n334), .A2(n333), .A3(n332), .B(n331), .ZN(
        n335) );
  CKMUX2D0BWP12T30P140 U348 ( .I0(data_out[0]), .I1(n335), .S(n362), .Z(n238)
         );
  AO21D0BWP12T30P140 U349 ( .A1(n230), .A2(wr_ptr[1]), .B(n336), .Z(n231) );
  OAI21D0BWP12T30P140 U350 ( .A1(n339), .A2(n338), .B(n337), .ZN(n229) );
  MAOI22D0BWP12T30P140 U351 ( .A1(n341), .A2(n340), .B1(mem[35]), .B2(n341), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U352 ( .A1(n363), .A2(n342), .ZN(n344) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n344), .A2(n343), .B1(mem[33]), .B2(n344), 
        .ZN(n192) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n344), .A2(n351), .B1(mem[32]), .B2(n344), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n345), .A2(n358), .B1(mem[18]), .B2(n345), 
        .ZN(n207) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n346), .A2(n358), .B1(mem[16]), .B2(n346), 
        .ZN(n209) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n347), .A2(n358), .B1(mem[8]), .B2(n347), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n349), .A2(n348), .B1(mem[0]), .B2(n349), 
        .ZN(n224) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n350), .A2(n351), .B1(mem[46]), .B2(n350), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n352), .A2(n351), .B1(mem[30]), .B2(n352), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U361 ( .A1(n353), .A2(n358), .B1(mem[22]), .B2(n353), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n354), .A2(n358), .B1(mem[20]), .B2(n354), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n355), .A2(n358), .B1(mem[6]), .B2(n355), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n356), .A2(n358), .B1(mem[4]), .B2(n356), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n358), .A2(n357), .B1(n357), .B2(mem[2]), 
        .ZN(n223) );
  OA21D0BWP12T30P140 U366 ( .A1(rd_ptr[2]), .A2(n360), .B(n359), .Z(n236) );
  OA21D0BWP12T30P140 U367 ( .A1(rd_ptr[0]), .A2(n362), .B(n361), .Z(n239) );
  CKBD0BWP12T30P140 U368 ( .I(clk_write), .Z(n377) );
  CKBD0BWP12T30P140 U369 ( .I(clk_write), .Z(n372) );
  CKBD0BWP12T30P140 U370 ( .I(clk_write), .Z(n373) );
  CKBD0BWP12T30P140 U371 ( .I(clk_write), .Z(n374) );
  CKBD0BWP12T30P140 U372 ( .I(clk_write), .Z(n375) );
  CKBD0BWP12T30P140 U373 ( .I(clk_write), .Z(n376) );
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
  DFQD2BWP12T30P140 mem_reg_14__0_ ( .D(n128), .CP(n382), .Q(mem[98]) );
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
  DFQD2BWP12T30P140 mem_reg_30__1_ ( .D(n159), .CP(n379), .Q(mem[67]) );
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
  DFQD2BWP12T30P140 mem_reg_54__1_ ( .D(n207), .CP(n381), .Q(mem[19]) );
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
  DFQD2BWP12T30P140 mem_reg_24__1_ ( .D(n147), .CP(n380), .Q(mem[79]) );
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
  DFQD2BWP12T30P140 mem_reg_40__1_ ( .D(n179), .CP(n379), .Q(mem[47]) );
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
  DFQD2BWP12T30P140 mem_reg_35__1_ ( .D(n169), .CP(n384), .Q(mem[57]) );
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
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n99), .CP(n384), .Q(mem[127]) );
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
  DFQD2BWP12T30P140 mem_reg_45__1_ ( .D(n189), .CP(n384), .Q(mem[37]) );
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
  DFQD1BWP12T30P140 mem_reg_15__1_ ( .D(n129), .CP(n382), .Q(mem[97]) );
  DFQD1BWP12T30P140 mem_reg_30__0_ ( .D(n160), .CP(n379), .Q(mem[66]) );
  DFQD1BWP12T30P140 mem_reg_54__0_ ( .D(n208), .CP(n380), .Q(mem[18]) );
  DFQD1BWP12T30P140 mem_reg_24__0_ ( .D(n148), .CP(n380), .Q(mem[78]) );
  DFQD1BWP12T30P140 mem_reg_40__0_ ( .D(n180), .CP(n382), .Q(mem[46]) );
  DFQD1BWP12T30P140 mem_reg_35__0_ ( .D(n170), .CP(n385), .Q(mem[56]) );
  DFQD1BWP12T30P140 mem_reg_0__0_ ( .D(n100), .CP(n384), .Q(mem[126]) );
  DFQD1BWP12T30P140 mem_reg_45__0_ ( .D(n190), .CP(n385), .Q(mem[36]) );
  DFQD1BWP12T30P140 mem_reg_62__0_ ( .D(n224), .CP(n385), .Q(mem[2]) );
  INVD0BWP12T30P140 U3 ( .I(rst), .ZN(n378) );
  INVD0BWP12T30P140 U4 ( .I(wr_ptr[0]), .ZN(n64) );
  INVD0BWP12T30P140 U5 ( .I(wr_ptr[2]), .ZN(n74) );
  ND3D0BWP12T30P140 U6 ( .A1(n64), .A2(n74), .A3(wr_ptr[1]), .ZN(n29) );
  ND3D0BWP12T30P140 U7 ( .A1(n378), .A2(write_en), .A3(wr_ptr[3]), .ZN(n13) );
  NR2D0BWP12T30P140 U8 ( .A1(wr_ptr[4]), .A2(n13), .ZN(n22) );
  INVD0BWP12T30P140 U9 ( .I(wr_ptr[5]), .ZN(n377) );
  ND2D0BWP12T30P140 U10 ( .A1(n22), .A2(n377), .ZN(n81) );
  NR2D0BWP12T30P140 U11 ( .A1(n29), .A2(n81), .ZN(n30) );
  INVD0BWP12T30P140 U12 ( .I(data_in[0]), .ZN(n353) );
  MAOI22D0BWP12T30P140 U13 ( .A1(n30), .A2(n353), .B1(mem[106]), .B2(n30), 
        .ZN(n120) );
  INVD0BWP12T30P140 U14 ( .I(wr_ptr[1]), .ZN(n71) );
  ND3D0BWP12T30P140 U15 ( .A1(n71), .A2(n64), .A3(n74), .ZN(n285) );
  NR2D0BWP12T30P140 U16 ( .A1(n285), .A2(n81), .ZN(n86) );
  INVD0BWP12T30P140 U17 ( .I(data_in[1]), .ZN(n363) );
  CKBD0BWP12T30P140 U18 ( .I(n363), .Z(n82) );
  MAOI22D0BWP12T30P140 U19 ( .A1(n86), .A2(n82), .B1(mem[111]), .B2(n86), .ZN(
        n115) );
  ND3D0BWP12T30P140 U20 ( .A1(n74), .A2(wr_ptr[1]), .A3(wr_ptr[0]), .ZN(n72)
         );
  NR2D0BWP12T30P140 U21 ( .A1(n72), .A2(n81), .ZN(n2) );
  CKBD0BWP12T30P140 U22 ( .I(n363), .Z(n361) );
  MAOI22D0BWP12T30P140 U23 ( .A1(n2), .A2(n361), .B1(mem[105]), .B2(n2), .ZN(
        n121) );
  MAOI22D0BWP12T30P140 U24 ( .A1(n2), .A2(n353), .B1(mem[104]), .B2(n2), .ZN(
        n122) );
  ND3D0BWP12T30P140 U25 ( .A1(n64), .A2(wr_ptr[2]), .A3(wr_ptr[1]), .ZN(n52)
         );
  NR2D0BWP12T30P140 U26 ( .A1(n52), .A2(n81), .ZN(n3) );
  MAOI22D0BWP12T30P140 U27 ( .A1(n3), .A2(n361), .B1(mem[99]), .B2(n3), .ZN(
        n127) );
  ND3D0BWP12T30P140 U28 ( .A1(n71), .A2(wr_ptr[2]), .A3(wr_ptr[0]), .ZN(n83)
         );
  INVD0BWP12T30P140 U29 ( .I(wr_ptr[3]), .ZN(n352) );
  ND3D0BWP12T30P140 U30 ( .A1(n378), .A2(n352), .A3(write_en), .ZN(n6) );
  NR2D0BWP12T30P140 U31 ( .A1(wr_ptr[4]), .A2(n6), .ZN(n20) );
  ND2D0BWP12T30P140 U32 ( .A1(n20), .A2(n377), .ZN(n58) );
  NR2D0BWP12T30P140 U33 ( .A1(n83), .A2(n58), .ZN(n4) );
  MAOI22D0BWP12T30P140 U34 ( .A1(n4), .A2(n353), .B1(mem[116]), .B2(n4), .ZN(
        n110) );
  CKBD0BWP12T30P140 U35 ( .I(n353), .Z(n370) );
  MAOI22D0BWP12T30P140 U36 ( .A1(n3), .A2(n370), .B1(mem[98]), .B2(n3), .ZN(
        n128) );
  ND3D0BWP12T30P140 U37 ( .A1(wr_ptr[2]), .A2(wr_ptr[0]), .A3(wr_ptr[1]), .ZN(
        n283) );
  NR2D0BWP12T30P140 U38 ( .A1(n283), .A2(n81), .ZN(n5) );
  MAOI22D0BWP12T30P140 U39 ( .A1(n5), .A2(n361), .B1(mem[97]), .B2(n5), .ZN(
        n129) );
  MAOI22D0BWP12T30P140 U40 ( .A1(n4), .A2(n82), .B1(mem[117]), .B2(n4), .ZN(
        n109) );
  NR2D0BWP12T30P140 U41 ( .A1(n29), .A2(n58), .ZN(n62) );
  MAOI22D0BWP12T30P140 U42 ( .A1(n62), .A2(n82), .B1(mem[123]), .B2(n62), .ZN(
        n103) );
  CKBD0BWP12T30P140 U43 ( .I(n353), .Z(n372) );
  MAOI22D0BWP12T30P140 U44 ( .A1(n5), .A2(n372), .B1(mem[96]), .B2(n5), .ZN(
        n130) );
  INVD0BWP12T30P140 U45 ( .I(wr_ptr[4]), .ZN(n284) );
  NR2D0BWP12T30P140 U46 ( .A1(n284), .A2(n6), .ZN(n27) );
  ND2D0BWP12T30P140 U47 ( .A1(n27), .A2(n377), .ZN(n41) );
  NR2D0BWP12T30P140 U48 ( .A1(n29), .A2(n41), .ZN(n7) );
  MAOI22D0BWP12T30P140 U49 ( .A1(n7), .A2(n361), .B1(mem[91]), .B2(n7), .ZN(
        n135) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n7), .A2(n370), .B1(mem[90]), .B2(n7), .ZN(
        n136) );
  ND3D0BWP12T30P140 U51 ( .A1(n71), .A2(n64), .A3(wr_ptr[2]), .ZN(n85) );
  NR2D0BWP12T30P140 U52 ( .A1(n85), .A2(n58), .ZN(n9) );
  MAOI22D0BWP12T30P140 U53 ( .A1(n9), .A2(n372), .B1(mem[118]), .B2(n9), .ZN(
        n108) );
  NR2D0BWP12T30P140 U54 ( .A1(n72), .A2(n41), .ZN(n8) );
  MAOI22D0BWP12T30P140 U55 ( .A1(n8), .A2(n361), .B1(mem[89]), .B2(n8), .ZN(
        n137) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n8), .A2(n372), .B1(mem[88]), .B2(n8), .ZN(
        n138) );
  MAOI22D0BWP12T30P140 U57 ( .A1(n9), .A2(n82), .B1(mem[119]), .B2(n9), .ZN(
        n107) );
  NR2D0BWP12T30P140 U58 ( .A1(n52), .A2(n41), .ZN(n10) );
  MAOI22D0BWP12T30P140 U59 ( .A1(n10), .A2(n361), .B1(mem[83]), .B2(n10), .ZN(
        n143) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n10), .A2(n370), .B1(mem[82]), .B2(n10), .ZN(
        n144) );
  ND3D0BWP12T30P140 U61 ( .A1(n71), .A2(n74), .A3(wr_ptr[0]), .ZN(n360) );
  NR2D0BWP12T30P140 U62 ( .A1(n360), .A2(n58), .ZN(n12) );
  MAOI22D0BWP12T30P140 U63 ( .A1(n12), .A2(n370), .B1(mem[124]), .B2(n12), 
        .ZN(n102) );
  NR2D0BWP12T30P140 U64 ( .A1(n283), .A2(n41), .ZN(n11) );
  MAOI22D0BWP12T30P140 U65 ( .A1(n11), .A2(n361), .B1(mem[81]), .B2(n11), .ZN(
        n145) );
  MAOI22D0BWP12T30P140 U66 ( .A1(n11), .A2(n372), .B1(mem[80]), .B2(n11), .ZN(
        n146) );
  MAOI22D0BWP12T30P140 U67 ( .A1(n12), .A2(n82), .B1(mem[125]), .B2(n12), .ZN(
        n101) );
  NR2D0BWP12T30P140 U68 ( .A1(n284), .A2(n13), .ZN(n18) );
  ND2D0BWP12T30P140 U69 ( .A1(n18), .A2(n377), .ZN(n48) );
  NR2D0BWP12T30P140 U70 ( .A1(n29), .A2(n48), .ZN(n14) );
  CKBD0BWP12T30P140 U71 ( .I(n363), .Z(n365) );
  MAOI22D0BWP12T30P140 U72 ( .A1(n14), .A2(n365), .B1(mem[75]), .B2(n14), .ZN(
        n151) );
  CKBD0BWP12T30P140 U73 ( .I(n353), .Z(n56) );
  MAOI22D0BWP12T30P140 U74 ( .A1(n14), .A2(n56), .B1(mem[74]), .B2(n14), .ZN(
        n152) );
  NR2D0BWP12T30P140 U75 ( .A1(n285), .A2(n58), .ZN(n15) );
  MAOI22D0BWP12T30P140 U76 ( .A1(n15), .A2(n56), .B1(mem[126]), .B2(n15), .ZN(
        n100) );
  NR2D0BWP12T30P140 U77 ( .A1(n72), .A2(n48), .ZN(n16) );
  MAOI22D0BWP12T30P140 U78 ( .A1(n16), .A2(n365), .B1(mem[73]), .B2(n16), .ZN(
        n153) );
  MAOI22D0BWP12T30P140 U79 ( .A1(n15), .A2(n82), .B1(mem[127]), .B2(n15), .ZN(
        n99) );
  MAOI22D0BWP12T30P140 U80 ( .A1(n16), .A2(n56), .B1(mem[72]), .B2(n16), .ZN(
        n154) );
  NR2D0BWP12T30P140 U81 ( .A1(n52), .A2(n48), .ZN(n17) );
  MAOI22D0BWP12T30P140 U82 ( .A1(n17), .A2(n365), .B1(mem[67]), .B2(n17), .ZN(
        n159) );
  MAOI22D0BWP12T30P140 U83 ( .A1(n17), .A2(n56), .B1(mem[66]), .B2(n17), .ZN(
        n160) );
  ND2D0BWP12T30P140 U84 ( .A1(wr_ptr[5]), .A2(n18), .ZN(n286) );
  NR2D0BWP12T30P140 U85 ( .A1(n283), .A2(n286), .ZN(n87) );
  MAOI22D0BWP12T30P140 U86 ( .A1(n87), .A2(n56), .B1(mem[0]), .B2(n87), .ZN(
        n225) );
  NR2D0BWP12T30P140 U87 ( .A1(n283), .A2(n48), .ZN(n19) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n19), .A2(n365), .B1(mem[65]), .B2(n19), .ZN(
        n161) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n19), .A2(n56), .B1(mem[64]), .B2(n19), .ZN(
        n162) );
  NR2D0BWP12T30P140 U90 ( .A1(n286), .A2(n52), .ZN(n76) );
  MAOI22D0BWP12T30P140 U91 ( .A1(n76), .A2(n361), .B1(mem[3]), .B2(n76), .ZN(
        n223) );
  ND2D0BWP12T30P140 U92 ( .A1(wr_ptr[5]), .A2(n20), .ZN(n55) );
  NR2D0BWP12T30P140 U93 ( .A1(n29), .A2(n55), .ZN(n21) );
  MAOI22D0BWP12T30P140 U94 ( .A1(n21), .A2(n365), .B1(mem[59]), .B2(n21), .ZN(
        n167) );
  MAOI22D0BWP12T30P140 U95 ( .A1(n21), .A2(n56), .B1(mem[58]), .B2(n21), .ZN(
        n168) );
  NR2D0BWP12T30P140 U96 ( .A1(n286), .A2(n72), .ZN(n23) );
  MAOI22D0BWP12T30P140 U97 ( .A1(n23), .A2(n372), .B1(mem[8]), .B2(n23), .ZN(
        n218) );
  NR2D0BWP12T30P140 U98 ( .A1(n52), .A2(n55), .ZN(n42) );
  MAOI22D0BWP12T30P140 U99 ( .A1(n42), .A2(n365), .B1(mem[51]), .B2(n42), .ZN(
        n175) );
  ND2D0BWP12T30P140 U100 ( .A1(wr_ptr[5]), .A2(n22), .ZN(n359) );
  NR2D0BWP12T30P140 U101 ( .A1(n29), .A2(n359), .ZN(n36) );
  MAOI22D0BWP12T30P140 U102 ( .A1(n36), .A2(n370), .B1(mem[42]), .B2(n36), 
        .ZN(n184) );
  MAOI22D0BWP12T30P140 U103 ( .A1(n23), .A2(n82), .B1(mem[9]), .B2(n23), .ZN(
        n217) );
  NR2D0BWP12T30P140 U104 ( .A1(n72), .A2(n359), .ZN(n24) );
  MAOI22D0BWP12T30P140 U105 ( .A1(n24), .A2(n363), .B1(mem[41]), .B2(n24), 
        .ZN(n185) );
  MAOI22D0BWP12T30P140 U106 ( .A1(n24), .A2(n370), .B1(mem[40]), .B2(n24), 
        .ZN(n186) );
  NR2D0BWP12T30P140 U107 ( .A1(n52), .A2(n359), .ZN(n34) );
  MAOI22D0BWP12T30P140 U108 ( .A1(n34), .A2(n370), .B1(mem[34]), .B2(n34), 
        .ZN(n192) );
  NR2D0BWP12T30P140 U109 ( .A1(n286), .A2(n29), .ZN(n25) );
  MAOI22D0BWP12T30P140 U110 ( .A1(n25), .A2(n372), .B1(mem[10]), .B2(n25), 
        .ZN(n216) );
  NR2D0BWP12T30P140 U111 ( .A1(n283), .A2(n359), .ZN(n26) );
  MAOI22D0BWP12T30P140 U112 ( .A1(n26), .A2(n363), .B1(mem[33]), .B2(n26), 
        .ZN(n193) );
  MAOI22D0BWP12T30P140 U113 ( .A1(n25), .A2(n363), .B1(mem[11]), .B2(n25), 
        .ZN(n215) );
  MAOI22D0BWP12T30P140 U114 ( .A1(n26), .A2(n370), .B1(mem[32]), .B2(n26), 
        .ZN(n194) );
  ND2D0BWP12T30P140 U115 ( .A1(wr_ptr[5]), .A2(n27), .ZN(n84) );
  NR2D0BWP12T30P140 U116 ( .A1(n72), .A2(n84), .ZN(n28) );
  MAOI22D0BWP12T30P140 U117 ( .A1(n28), .A2(n363), .B1(mem[25]), .B2(n28), 
        .ZN(n201) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n28), .A2(n372), .B1(mem[24]), .B2(n28), 
        .ZN(n202) );
  NR2D0BWP12T30P140 U119 ( .A1(n29), .A2(n84), .ZN(n32) );
  MAOI22D0BWP12T30P140 U120 ( .A1(n32), .A2(n370), .B1(mem[26]), .B2(n32), 
        .ZN(n200) );
  NR2D0BWP12T30P140 U121 ( .A1(n52), .A2(n84), .ZN(n31) );
  MAOI22D0BWP12T30P140 U122 ( .A1(n31), .A2(n363), .B1(mem[19]), .B2(n31), 
        .ZN(n207) );
  MAOI22D0BWP12T30P140 U123 ( .A1(n30), .A2(n82), .B1(mem[107]), .B2(n30), 
        .ZN(n119) );
  MAOI22D0BWP12T30P140 U124 ( .A1(n31), .A2(n372), .B1(mem[18]), .B2(n31), 
        .ZN(n208) );
  NR2D0BWP12T30P140 U125 ( .A1(n283), .A2(n84), .ZN(n373) );
  MAOI22D0BWP12T30P140 U126 ( .A1(n373), .A2(n363), .B1(mem[17]), .B2(n373), 
        .ZN(n209) );
  MAOI22D0BWP12T30P140 U127 ( .A1(n32), .A2(n363), .B1(mem[27]), .B2(n32), 
        .ZN(n199) );
  NR2D0BWP12T30P140 U128 ( .A1(n85), .A2(n81), .ZN(n33) );
  MAOI22D0BWP12T30P140 U129 ( .A1(n33), .A2(n361), .B1(mem[103]), .B2(n33), 
        .ZN(n123) );
  MAOI22D0BWP12T30P140 U130 ( .A1(n33), .A2(n353), .B1(mem[102]), .B2(n33), 
        .ZN(n124) );
  MAOI22D0BWP12T30P140 U131 ( .A1(n34), .A2(n365), .B1(mem[35]), .B2(n34), 
        .ZN(n191) );
  NR2D0BWP12T30P140 U132 ( .A1(n83), .A2(n81), .ZN(n35) );
  MAOI22D0BWP12T30P140 U133 ( .A1(n35), .A2(n361), .B1(mem[101]), .B2(n35), 
        .ZN(n125) );
  MAOI22D0BWP12T30P140 U134 ( .A1(n35), .A2(n56), .B1(mem[100]), .B2(n35), 
        .ZN(n126) );
  MAOI22D0BWP12T30P140 U135 ( .A1(n36), .A2(n365), .B1(mem[43]), .B2(n36), 
        .ZN(n183) );
  NR2D0BWP12T30P140 U136 ( .A1(n285), .A2(n41), .ZN(n37) );
  MAOI22D0BWP12T30P140 U137 ( .A1(n37), .A2(n361), .B1(mem[95]), .B2(n37), 
        .ZN(n131) );
  MAOI22D0BWP12T30P140 U138 ( .A1(n37), .A2(n353), .B1(mem[94]), .B2(n37), 
        .ZN(n132) );
  NR2D0BWP12T30P140 U139 ( .A1(n283), .A2(n55), .ZN(n39) );
  MAOI22D0BWP12T30P140 U140 ( .A1(n39), .A2(n370), .B1(mem[48]), .B2(n39), 
        .ZN(n178) );
  NR2D0BWP12T30P140 U141 ( .A1(n360), .A2(n41), .ZN(n38) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n38), .A2(n361), .B1(mem[93]), .B2(n38), 
        .ZN(n133) );
  MAOI22D0BWP12T30P140 U143 ( .A1(n38), .A2(n56), .B1(mem[92]), .B2(n38), .ZN(
        n134) );
  MAOI22D0BWP12T30P140 U144 ( .A1(n39), .A2(n363), .B1(mem[49]), .B2(n39), 
        .ZN(n177) );
  NR2D0BWP12T30P140 U145 ( .A1(n85), .A2(n41), .ZN(n40) );
  MAOI22D0BWP12T30P140 U146 ( .A1(n40), .A2(n361), .B1(mem[87]), .B2(n40), 
        .ZN(n139) );
  MAOI22D0BWP12T30P140 U147 ( .A1(n40), .A2(n353), .B1(mem[86]), .B2(n40), 
        .ZN(n140) );
  NR2D0BWP12T30P140 U148 ( .A1(n83), .A2(n41), .ZN(n43) );
  MAOI22D0BWP12T30P140 U149 ( .A1(n43), .A2(n361), .B1(mem[85]), .B2(n43), 
        .ZN(n141) );
  MAOI22D0BWP12T30P140 U150 ( .A1(n42), .A2(n370), .B1(mem[50]), .B2(n42), 
        .ZN(n176) );
  MAOI22D0BWP12T30P140 U151 ( .A1(n43), .A2(n56), .B1(mem[84]), .B2(n43), .ZN(
        n142) );
  NR2D0BWP12T30P140 U152 ( .A1(n285), .A2(n48), .ZN(n44) );
  MAOI22D0BWP12T30P140 U153 ( .A1(n44), .A2(n365), .B1(mem[79]), .B2(n44), 
        .ZN(n147) );
  MAOI22D0BWP12T30P140 U154 ( .A1(n44), .A2(n353), .B1(mem[78]), .B2(n44), 
        .ZN(n148) );
  NR2D0BWP12T30P140 U155 ( .A1(n72), .A2(n55), .ZN(n45) );
  MAOI22D0BWP12T30P140 U156 ( .A1(n45), .A2(n56), .B1(mem[56]), .B2(n45), .ZN(
        n170) );
  NR2D0BWP12T30P140 U157 ( .A1(n360), .A2(n48), .ZN(n46) );
  MAOI22D0BWP12T30P140 U158 ( .A1(n46), .A2(n365), .B1(mem[77]), .B2(n46), 
        .ZN(n149) );
  MAOI22D0BWP12T30P140 U159 ( .A1(n45), .A2(n365), .B1(mem[57]), .B2(n45), 
        .ZN(n169) );
  MAOI22D0BWP12T30P140 U160 ( .A1(n46), .A2(n353), .B1(mem[76]), .B2(n46), 
        .ZN(n150) );
  NR2D0BWP12T30P140 U161 ( .A1(n85), .A2(n48), .ZN(n47) );
  MAOI22D0BWP12T30P140 U162 ( .A1(n47), .A2(n365), .B1(mem[71]), .B2(n47), 
        .ZN(n155) );
  MAOI22D0BWP12T30P140 U163 ( .A1(n47), .A2(n56), .B1(mem[70]), .B2(n47), .ZN(
        n156) );
  NR2D0BWP12T30P140 U164 ( .A1(n283), .A2(n58), .ZN(n50) );
  MAOI22D0BWP12T30P140 U165 ( .A1(n50), .A2(n353), .B1(mem[112]), .B2(n50), 
        .ZN(n114) );
  NR2D0BWP12T30P140 U166 ( .A1(n83), .A2(n48), .ZN(n49) );
  MAOI22D0BWP12T30P140 U167 ( .A1(n49), .A2(n365), .B1(mem[69]), .B2(n49), 
        .ZN(n157) );
  MAOI22D0BWP12T30P140 U168 ( .A1(n49), .A2(n56), .B1(mem[68]), .B2(n49), .ZN(
        n158) );
  MAOI22D0BWP12T30P140 U169 ( .A1(n50), .A2(n82), .B1(mem[113]), .B2(n50), 
        .ZN(n113) );
  NR2D0BWP12T30P140 U170 ( .A1(n285), .A2(n55), .ZN(n51) );
  MAOI22D0BWP12T30P140 U171 ( .A1(n51), .A2(n365), .B1(mem[63]), .B2(n51), 
        .ZN(n163) );
  MAOI22D0BWP12T30P140 U172 ( .A1(n51), .A2(n56), .B1(mem[62]), .B2(n51), .ZN(
        n164) );
  NR2D0BWP12T30P140 U173 ( .A1(n52), .A2(n58), .ZN(n54) );
  MAOI22D0BWP12T30P140 U174 ( .A1(n54), .A2(n353), .B1(mem[114]), .B2(n54), 
        .ZN(n112) );
  NR2D0BWP12T30P140 U175 ( .A1(n360), .A2(n55), .ZN(n53) );
  MAOI22D0BWP12T30P140 U176 ( .A1(n53), .A2(n365), .B1(mem[61]), .B2(n53), 
        .ZN(n165) );
  MAOI22D0BWP12T30P140 U177 ( .A1(n53), .A2(n56), .B1(mem[60]), .B2(n53), .ZN(
        n166) );
  MAOI22D0BWP12T30P140 U178 ( .A1(n54), .A2(n82), .B1(mem[115]), .B2(n54), 
        .ZN(n111) );
  NR2D0BWP12T30P140 U179 ( .A1(n85), .A2(n55), .ZN(n366) );
  MAOI22D0BWP12T30P140 U180 ( .A1(n366), .A2(n56), .B1(mem[54]), .B2(n366), 
        .ZN(n172) );
  NR2D0BWP12T30P140 U181 ( .A1(n83), .A2(n55), .ZN(n57) );
  MAOI22D0BWP12T30P140 U182 ( .A1(n57), .A2(n363), .B1(mem[53]), .B2(n57), 
        .ZN(n173) );
  MAOI22D0BWP12T30P140 U183 ( .A1(n57), .A2(n56), .B1(mem[52]), .B2(n57), .ZN(
        n174) );
  NR2D0BWP12T30P140 U184 ( .A1(n72), .A2(n58), .ZN(n60) );
  MAOI22D0BWP12T30P140 U185 ( .A1(n60), .A2(n353), .B1(mem[120]), .B2(n60), 
        .ZN(n106) );
  NR2D0BWP12T30P140 U186 ( .A1(n285), .A2(n359), .ZN(n59) );
  MAOI22D0BWP12T30P140 U187 ( .A1(n59), .A2(n82), .B1(mem[47]), .B2(n59), .ZN(
        n179) );
  MAOI22D0BWP12T30P140 U188 ( .A1(n59), .A2(n370), .B1(mem[46]), .B2(n59), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U189 ( .A1(n60), .A2(n82), .B1(mem[121]), .B2(n60), 
        .ZN(n105) );
  NR2D0BWP12T30P140 U190 ( .A1(n85), .A2(n359), .ZN(n61) );
  MAOI22D0BWP12T30P140 U191 ( .A1(n61), .A2(n82), .B1(mem[39]), .B2(n61), .ZN(
        n187) );
  MAOI22D0BWP12T30P140 U192 ( .A1(n61), .A2(n370), .B1(mem[38]), .B2(n61), 
        .ZN(n188) );
  NR2D0BWP12T30P140 U193 ( .A1(n285), .A2(n84), .ZN(n287) );
  MAOI22D0BWP12T30P140 U194 ( .A1(n287), .A2(n82), .B1(mem[31]), .B2(n287), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U195 ( .A1(n62), .A2(n372), .B1(mem[122]), .B2(n62), 
        .ZN(n104) );
  NR2D0BWP12T30P140 U196 ( .A1(n360), .A2(n84), .ZN(n88) );
  MAOI22D0BWP12T30P140 U197 ( .A1(n88), .A2(n361), .B1(mem[29]), .B2(n88), 
        .ZN(n198) );
  NR2D0BWP12T30P140 U198 ( .A1(n83), .A2(n84), .ZN(n80) );
  MAOI22D0BWP12T30P140 U199 ( .A1(n80), .A2(n372), .B1(mem[20]), .B2(n80), 
        .ZN(n206) );
  ND2D0BWP12T30P140 U200 ( .A1(wr_ptr[0]), .A2(write_en), .ZN(n70) );
  OA21D0BWP12T30P140 U201 ( .A1(wr_ptr[0]), .A2(write_en), .B(n70), .Z(n231)
         );
  OAI22D0BWP12T30P140 U202 ( .A1(rd_ptr[1]), .A2(n71), .B1(rd_ptr[0]), .B2(n64), .ZN(n63) );
  AOI221D0BWP12T30P140 U203 ( .A1(n64), .A2(rd_ptr[0]), .B1(n71), .B2(
        rd_ptr[1]), .C(n63), .ZN(n69) );
  OAI22D0BWP12T30P140 U204 ( .A1(rd_ptr[4]), .A2(n284), .B1(rd_ptr[5]), .B2(
        n377), .ZN(n65) );
  AOI221D0BWP12T30P140 U205 ( .A1(n377), .A2(rd_ptr[5]), .B1(n284), .B2(
        rd_ptr[4]), .C(n65), .ZN(n68) );
  OAI22D0BWP12T30P140 U206 ( .A1(rd_ptr[2]), .A2(n74), .B1(rd_ptr[3]), .B2(
        n352), .ZN(n66) );
  AOI221D0BWP12T30P140 U207 ( .A1(n352), .A2(rd_ptr[3]), .B1(n74), .B2(
        rd_ptr[2]), .C(n66), .ZN(n67) );
  ND3D0BWP12T30P140 U208 ( .A1(n69), .A2(n68), .A3(n67), .ZN(n89) );
  ND2D0BWP12T30P140 U209 ( .A1(rd_ptr[0]), .A2(n89), .ZN(n356) );
  OA21D0BWP12T30P140 U210 ( .A1(n89), .A2(rd_ptr[0]), .B(n356), .Z(n240) );
  NR2D0BWP12T30P140 U211 ( .A1(n71), .A2(n70), .ZN(n75) );
  AOI21D0BWP12T30P140 U212 ( .A1(n71), .A2(n70), .B(n75), .ZN(n232) );
  INVD0BWP12T30P140 U213 ( .I(rd_ptr[1]), .ZN(n357) );
  NR2D0BWP12T30P140 U214 ( .A1(n357), .A2(n356), .ZN(n355) );
  ND2D0BWP12T30P140 U215 ( .A1(rd_ptr[2]), .A2(n355), .ZN(n368) );
  OA21D0BWP12T30P140 U216 ( .A1(rd_ptr[2]), .A2(n355), .B(n368), .Z(n237) );
  INVD0BWP12T30P140 U217 ( .I(write_en), .ZN(n73) );
  OAI22D0BWP12T30P140 U218 ( .A1(n75), .A2(n74), .B1(n73), .B2(n72), .ZN(n230)
         );
  MAOI22D0BWP12T30P140 U219 ( .A1(n372), .A2(n76), .B1(n76), .B2(mem[2]), .ZN(
        n224) );
  NR2D0BWP12T30P140 U220 ( .A1(n286), .A2(n83), .ZN(n77) );
  MAOI22D0BWP12T30P140 U221 ( .A1(n77), .A2(n372), .B1(mem[4]), .B2(n77), .ZN(
        n222) );
  MAOI22D0BWP12T30P140 U222 ( .A1(n77), .A2(n82), .B1(mem[5]), .B2(n77), .ZN(
        n221) );
  NR2D0BWP12T30P140 U223 ( .A1(n286), .A2(n85), .ZN(n78) );
  MAOI22D0BWP12T30P140 U224 ( .A1(n78), .A2(n372), .B1(mem[6]), .B2(n78), .ZN(
        n220) );
  MAOI22D0BWP12T30P140 U225 ( .A1(n78), .A2(n363), .B1(mem[7]), .B2(n78), .ZN(
        n219) );
  NR2D0BWP12T30P140 U226 ( .A1(n286), .A2(n360), .ZN(n79) );
  MAOI22D0BWP12T30P140 U227 ( .A1(n79), .A2(n372), .B1(mem[12]), .B2(n79), 
        .ZN(n214) );
  MAOI22D0BWP12T30P140 U228 ( .A1(n79), .A2(n82), .B1(mem[13]), .B2(n79), .ZN(
        n213) );
  MAOI22D0BWP12T30P140 U229 ( .A1(n80), .A2(n363), .B1(mem[21]), .B2(n80), 
        .ZN(n205) );
  NR2D0BWP12T30P140 U230 ( .A1(n360), .A2(n81), .ZN(n354) );
  MAOI22D0BWP12T30P140 U231 ( .A1(n354), .A2(n82), .B1(mem[109]), .B2(n354), 
        .ZN(n117) );
  NR2D0BWP12T30P140 U232 ( .A1(n83), .A2(n359), .ZN(n362) );
  MAOI22D0BWP12T30P140 U233 ( .A1(n362), .A2(n370), .B1(mem[36]), .B2(n362), 
        .ZN(n190) );
  NR2D0BWP12T30P140 U234 ( .A1(n85), .A2(n84), .ZN(n364) );
  MAOI22D0BWP12T30P140 U235 ( .A1(n364), .A2(n372), .B1(mem[22]), .B2(n364), 
        .ZN(n204) );
  MAOI22D0BWP12T30P140 U236 ( .A1(n86), .A2(n353), .B1(mem[110]), .B2(n86), 
        .ZN(n116) );
  CKMUX2D0BWP12T30P140 U237 ( .I0(mem[1]), .I1(data_in[1]), .S(n87), .Z(n226)
         );
  MAOI22D0BWP12T30P140 U238 ( .A1(n88), .A2(n370), .B1(mem[28]), .B2(n88), 
        .ZN(n197) );
  INVD0BWP12T30P140 U239 ( .I(n89), .ZN(empty) );
  INVD0BWP12T30P140 U240 ( .I(rd_ptr[3]), .ZN(n369) );
  INVD0BWP12T30P140 U241 ( .I(rd_ptr[4]), .ZN(n244) );
  NR2D0BWP12T30P140 U242 ( .A1(n369), .A2(n244), .ZN(n334) );
  ND2D0BWP12T30P140 U243 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .ZN(n91) );
  INVD0BWP12T30P140 U244 ( .I(rd_ptr[2]), .ZN(n90) );
  NR2D0BWP12T30P140 U245 ( .A1(n91), .A2(n90), .ZN(n322) );
  INVD0BWP12T30P140 U246 ( .I(rd_ptr[0]), .ZN(n92) );
  NR3D0BWP12T30P140 U247 ( .A1(rd_ptr[1]), .A2(n92), .A3(n90), .ZN(n321) );
  AOI22D0BWP12T30P140 U248 ( .A1(n322), .A2(mem[64]), .B1(n321), .B2(mem[68]), 
        .ZN(n96) );
  NR3D0BWP12T30P140 U249 ( .A1(rd_ptr[0]), .A2(n357), .A3(n90), .ZN(n324) );
  NR3D0BWP12T30P140 U250 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(n90), .ZN(n323)
         );
  AOI22D0BWP12T30P140 U251 ( .A1(n324), .A2(mem[66]), .B1(n323), .B2(mem[70]), 
        .ZN(n95) );
  NR2D0BWP12T30P140 U252 ( .A1(rd_ptr[2]), .A2(n91), .ZN(n326) );
  NR3D0BWP12T30P140 U253 ( .A1(rd_ptr[1]), .A2(rd_ptr[2]), .A3(n92), .ZN(n325)
         );
  AOI22D0BWP12T30P140 U254 ( .A1(n326), .A2(mem[72]), .B1(n325), .B2(mem[76]), 
        .ZN(n94) );
  NR3D0BWP12T30P140 U255 ( .A1(rd_ptr[0]), .A2(rd_ptr[2]), .A3(n357), .ZN(n328) );
  NR3D0BWP12T30P140 U256 ( .A1(rd_ptr[0]), .A2(rd_ptr[1]), .A3(rd_ptr[2]), 
        .ZN(n327) );
  AOI22D0BWP12T30P140 U257 ( .A1(n328), .A2(mem[74]), .B1(n327), .B2(mem[78]), 
        .ZN(n93) );
  ND4D0BWP12T30P140 U258 ( .A1(n96), .A2(n95), .A3(n94), .A4(n93), .ZN(n97) );
  AOI21D0BWP12T30P140 U259 ( .A1(n334), .A2(n97), .B(rd_ptr[5]), .ZN(n281) );
  ND2D0BWP12T30P140 U260 ( .A1(n369), .A2(n244), .ZN(n338) );
  INVD0BWP12T30P140 U261 ( .I(n338), .ZN(n303) );
  AOI22D0BWP12T30P140 U262 ( .A1(n322), .A2(mem[112]), .B1(n321), .B2(mem[116]), .ZN(n243) );
  AOI22D0BWP12T30P140 U263 ( .A1(n324), .A2(mem[114]), .B1(n323), .B2(mem[118]), .ZN(n242) );
  AOI22D0BWP12T30P140 U264 ( .A1(n326), .A2(mem[120]), .B1(n325), .B2(mem[124]), .ZN(n241) );
  AOI22D0BWP12T30P140 U265 ( .A1(n328), .A2(mem[122]), .B1(n327), .B2(mem[126]), .ZN(n98) );
  ND4D0BWP12T30P140 U266 ( .A1(n243), .A2(n242), .A3(n241), .A4(n98), .ZN(n250) );
  NR2D0BWP12T30P140 U267 ( .A1(rd_ptr[3]), .A2(n244), .ZN(n336) );
  AOI22D0BWP12T30P140 U268 ( .A1(n322), .A2(mem[80]), .B1(n321), .B2(mem[84]), 
        .ZN(n248) );
  AOI22D0BWP12T30P140 U269 ( .A1(n324), .A2(mem[82]), .B1(n323), .B2(mem[86]), 
        .ZN(n247) );
  AOI22D0BWP12T30P140 U270 ( .A1(n326), .A2(mem[88]), .B1(n325), .B2(mem[92]), 
        .ZN(n246) );
  AOI22D0BWP12T30P140 U271 ( .A1(n328), .A2(mem[90]), .B1(n327), .B2(mem[94]), 
        .ZN(n245) );
  ND4D0BWP12T30P140 U272 ( .A1(n248), .A2(n247), .A3(n246), .A4(n245), .ZN(
        n249) );
  AOI22D0BWP12T30P140 U273 ( .A1(n303), .A2(n250), .B1(n336), .B2(n249), .ZN(
        n280) );
  NR2D0BWP12T30P140 U274 ( .A1(rd_ptr[4]), .A2(n369), .ZN(n342) );
  AOI22D0BWP12T30P140 U275 ( .A1(n322), .A2(mem[96]), .B1(n321), .B2(mem[100]), 
        .ZN(n254) );
  AOI22D0BWP12T30P140 U276 ( .A1(n324), .A2(mem[98]), .B1(n323), .B2(mem[102]), 
        .ZN(n253) );
  AOI22D0BWP12T30P140 U277 ( .A1(n326), .A2(mem[104]), .B1(n325), .B2(mem[108]), .ZN(n252) );
  AOI22D0BWP12T30P140 U278 ( .A1(n328), .A2(mem[106]), .B1(n327), .B2(mem[110]), .ZN(n251) );
  ND4D0BWP12T30P140 U279 ( .A1(n254), .A2(n253), .A3(n252), .A4(n251), .ZN(
        n255) );
  ND2D0BWP12T30P140 U280 ( .A1(n342), .A2(n255), .ZN(n279) );
  AOI22D0BWP12T30P140 U281 ( .A1(n322), .A2(mem[32]), .B1(n321), .B2(mem[36]), 
        .ZN(n259) );
  AOI22D0BWP12T30P140 U282 ( .A1(n324), .A2(mem[34]), .B1(n323), .B2(mem[38]), 
        .ZN(n258) );
  AOI22D0BWP12T30P140 U283 ( .A1(n326), .A2(mem[40]), .B1(n325), .B2(mem[44]), 
        .ZN(n257) );
  AOI22D0BWP12T30P140 U284 ( .A1(n328), .A2(mem[42]), .B1(n327), .B2(mem[46]), 
        .ZN(n256) );
  ND4D0BWP12T30P140 U285 ( .A1(n259), .A2(n258), .A3(n257), .A4(n256), .ZN(
        n277) );
  AOI22D0BWP12T30P140 U286 ( .A1(n322), .A2(mem[48]), .B1(n321), .B2(mem[52]), 
        .ZN(n263) );
  AOI22D0BWP12T30P140 U287 ( .A1(n324), .A2(mem[50]), .B1(n323), .B2(mem[54]), 
        .ZN(n262) );
  AOI22D0BWP12T30P140 U288 ( .A1(n326), .A2(mem[56]), .B1(n325), .B2(mem[60]), 
        .ZN(n261) );
  AOI22D0BWP12T30P140 U289 ( .A1(n328), .A2(mem[58]), .B1(n327), .B2(mem[62]), 
        .ZN(n260) );
  AN4D0BWP12T30P140 U290 ( .A1(n263), .A2(n262), .A3(n261), .A4(n260), .Z(n275) );
  AOI22D0BWP12T30P140 U291 ( .A1(n322), .A2(mem[16]), .B1(n321), .B2(mem[20]), 
        .ZN(n267) );
  AOI22D0BWP12T30P140 U292 ( .A1(n324), .A2(mem[18]), .B1(n323), .B2(mem[22]), 
        .ZN(n266) );
  AOI22D0BWP12T30P140 U293 ( .A1(n326), .A2(mem[24]), .B1(n325), .B2(mem[28]), 
        .ZN(n265) );
  AOI22D0BWP12T30P140 U294 ( .A1(n328), .A2(mem[26]), .B1(n327), .B2(mem[30]), 
        .ZN(n264) );
  ND4D0BWP12T30P140 U295 ( .A1(n267), .A2(n266), .A3(n265), .A4(n264), .ZN(
        n273) );
  AOI22D0BWP12T30P140 U296 ( .A1(n322), .A2(mem[0]), .B1(n321), .B2(mem[4]), 
        .ZN(n271) );
  AOI22D0BWP12T30P140 U297 ( .A1(n324), .A2(mem[2]), .B1(n323), .B2(mem[6]), 
        .ZN(n270) );
  AOI22D0BWP12T30P140 U298 ( .A1(n326), .A2(mem[8]), .B1(n325), .B2(mem[12]), 
        .ZN(n269) );
  AOI22D0BWP12T30P140 U299 ( .A1(n328), .A2(mem[10]), .B1(n327), .B2(mem[14]), 
        .ZN(n268) );
  ND4D0BWP12T30P140 U300 ( .A1(n271), .A2(n270), .A3(n269), .A4(n268), .ZN(
        n272) );
  AOI22D0BWP12T30P140 U301 ( .A1(n336), .A2(n273), .B1(n334), .B2(n272), .ZN(
        n274) );
  OAI211D0BWP12T30P140 U302 ( .A1(n275), .A2(n338), .B(rd_ptr[5]), .C(n274), 
        .ZN(n276) );
  AOI21D0BWP12T30P140 U303 ( .A1(n342), .A2(n277), .B(n276), .ZN(n278) );
  AOI31D0BWP12T30P140 U304 ( .A1(n281), .A2(n280), .A3(n279), .B(n278), .ZN(
        n282) );
  CKMUX2D0BWP12T30P140 U305 ( .I0(n282), .I1(data_out[0]), .S(empty), .Z(n239)
         );
  INVD0BWP12T30P140 U306 ( .I(n283), .ZN(n348) );
  ND3D0BWP12T30P140 U307 ( .A1(wr_ptr[3]), .A2(n348), .A3(write_en), .ZN(n349)
         );
  NR2D0BWP12T30P140 U308 ( .A1(n284), .A2(n349), .ZN(n376) );
  AOI21D0BWP12T30P140 U309 ( .A1(n284), .A2(n349), .B(n376), .ZN(n228) );
  NR2D0BWP12T30P140 U310 ( .A1(n286), .A2(n285), .ZN(n358) );
  MAOI22D0BWP12T30P140 U311 ( .A1(n358), .A2(n363), .B1(mem[15]), .B2(n358), 
        .ZN(n211) );
  MAOI22D0BWP12T30P140 U312 ( .A1(n287), .A2(n370), .B1(mem[30]), .B2(n287), 
        .ZN(n196) );
  AOI22D0BWP12T30P140 U313 ( .A1(n322), .A2(mem[65]), .B1(n321), .B2(mem[69]), 
        .ZN(n291) );
  AOI22D0BWP12T30P140 U314 ( .A1(n324), .A2(mem[67]), .B1(n323), .B2(mem[71]), 
        .ZN(n290) );
  AOI22D0BWP12T30P140 U315 ( .A1(n326), .A2(mem[73]), .B1(n325), .B2(mem[77]), 
        .ZN(n289) );
  AOI22D0BWP12T30P140 U316 ( .A1(n328), .A2(mem[75]), .B1(n327), .B2(mem[79]), 
        .ZN(n288) );
  ND4D0BWP12T30P140 U317 ( .A1(n291), .A2(n290), .A3(n289), .A4(n288), .ZN(
        n292) );
  AOI21D0BWP12T30P140 U318 ( .A1(n334), .A2(n292), .B(rd_ptr[5]), .ZN(n346) );
  AOI22D0BWP12T30P140 U319 ( .A1(n322), .A2(mem[113]), .B1(n321), .B2(mem[117]), .ZN(n296) );
  AOI22D0BWP12T30P140 U320 ( .A1(n324), .A2(mem[115]), .B1(n323), .B2(mem[119]), .ZN(n295) );
  AOI22D0BWP12T30P140 U321 ( .A1(n326), .A2(mem[121]), .B1(n325), .B2(mem[125]), .ZN(n294) );
  AOI22D0BWP12T30P140 U322 ( .A1(n328), .A2(mem[123]), .B1(n327), .B2(mem[127]), .ZN(n293) );
  ND4D0BWP12T30P140 U323 ( .A1(n296), .A2(n295), .A3(n294), .A4(n293), .ZN(
        n302) );
  AOI22D0BWP12T30P140 U324 ( .A1(n322), .A2(mem[81]), .B1(n321), .B2(mem[85]), 
        .ZN(n300) );
  AOI22D0BWP12T30P140 U325 ( .A1(n324), .A2(mem[83]), .B1(n323), .B2(mem[87]), 
        .ZN(n299) );
  AOI22D0BWP12T30P140 U326 ( .A1(n326), .A2(mem[89]), .B1(n325), .B2(mem[93]), 
        .ZN(n298) );
  AOI22D0BWP12T30P140 U327 ( .A1(n328), .A2(mem[91]), .B1(n327), .B2(mem[95]), 
        .ZN(n297) );
  ND4D0BWP12T30P140 U328 ( .A1(n300), .A2(n299), .A3(n298), .A4(n297), .ZN(
        n301) );
  AOI22D0BWP12T30P140 U329 ( .A1(n303), .A2(n302), .B1(n336), .B2(n301), .ZN(
        n345) );
  AOI22D0BWP12T30P140 U330 ( .A1(n322), .A2(mem[97]), .B1(n321), .B2(mem[101]), 
        .ZN(n307) );
  AOI22D0BWP12T30P140 U331 ( .A1(n324), .A2(mem[99]), .B1(n323), .B2(mem[103]), 
        .ZN(n306) );
  AOI22D0BWP12T30P140 U332 ( .A1(n326), .A2(mem[105]), .B1(n325), .B2(mem[109]), .ZN(n305) );
  AOI22D0BWP12T30P140 U333 ( .A1(n328), .A2(mem[107]), .B1(n327), .B2(mem[111]), .ZN(n304) );
  ND4D0BWP12T30P140 U334 ( .A1(n307), .A2(n306), .A3(n305), .A4(n304), .ZN(
        n308) );
  ND2D0BWP12T30P140 U335 ( .A1(n342), .A2(n308), .ZN(n344) );
  AOI22D0BWP12T30P140 U336 ( .A1(n322), .A2(mem[33]), .B1(n321), .B2(mem[37]), 
        .ZN(n312) );
  AOI22D0BWP12T30P140 U337 ( .A1(n324), .A2(mem[35]), .B1(n323), .B2(mem[39]), 
        .ZN(n311) );
  AOI22D0BWP12T30P140 U338 ( .A1(n326), .A2(mem[41]), .B1(n325), .B2(mem[45]), 
        .ZN(n310) );
  AOI22D0BWP12T30P140 U339 ( .A1(n328), .A2(mem[43]), .B1(n327), .B2(mem[47]), 
        .ZN(n309) );
  ND4D0BWP12T30P140 U340 ( .A1(n312), .A2(n311), .A3(n310), .A4(n309), .ZN(
        n341) );
  AOI22D0BWP12T30P140 U341 ( .A1(n322), .A2(mem[49]), .B1(n321), .B2(mem[53]), 
        .ZN(n316) );
  AOI22D0BWP12T30P140 U342 ( .A1(n324), .A2(mem[51]), .B1(n323), .B2(mem[55]), 
        .ZN(n315) );
  AOI22D0BWP12T30P140 U343 ( .A1(n326), .A2(mem[57]), .B1(n325), .B2(mem[61]), 
        .ZN(n314) );
  AOI22D0BWP12T30P140 U344 ( .A1(n328), .A2(mem[59]), .B1(n327), .B2(mem[63]), 
        .ZN(n313) );
  AN4D0BWP12T30P140 U345 ( .A1(n316), .A2(n315), .A3(n314), .A4(n313), .Z(n339) );
  AOI22D0BWP12T30P140 U346 ( .A1(n322), .A2(mem[17]), .B1(n321), .B2(mem[21]), 
        .ZN(n320) );
  AOI22D0BWP12T30P140 U347 ( .A1(n324), .A2(mem[19]), .B1(n323), .B2(mem[23]), 
        .ZN(n319) );
  AOI22D0BWP12T30P140 U348 ( .A1(n326), .A2(mem[25]), .B1(n325), .B2(mem[29]), 
        .ZN(n318) );
  AOI22D0BWP12T30P140 U349 ( .A1(n328), .A2(mem[27]), .B1(n327), .B2(mem[31]), 
        .ZN(n317) );
  ND4D0BWP12T30P140 U350 ( .A1(n320), .A2(n319), .A3(n318), .A4(n317), .ZN(
        n335) );
  AOI22D0BWP12T30P140 U351 ( .A1(n322), .A2(mem[1]), .B1(n321), .B2(mem[5]), 
        .ZN(n332) );
  AOI22D0BWP12T30P140 U352 ( .A1(n324), .A2(mem[3]), .B1(n323), .B2(mem[7]), 
        .ZN(n331) );
  AOI22D0BWP12T30P140 U353 ( .A1(n326), .A2(mem[9]), .B1(n325), .B2(mem[13]), 
        .ZN(n330) );
  AOI22D0BWP12T30P140 U354 ( .A1(n328), .A2(mem[11]), .B1(n327), .B2(mem[15]), 
        .ZN(n329) );
  ND4D0BWP12T30P140 U355 ( .A1(n332), .A2(n331), .A3(n330), .A4(n329), .ZN(
        n333) );
  AOI22D0BWP12T30P140 U356 ( .A1(n336), .A2(n335), .B1(n334), .B2(n333), .ZN(
        n337) );
  OAI211D0BWP12T30P140 U357 ( .A1(n339), .A2(n338), .B(rd_ptr[5]), .C(n337), 
        .ZN(n340) );
  AOI21D0BWP12T30P140 U358 ( .A1(n342), .A2(n341), .B(n340), .ZN(n343) );
  AOI31D0BWP12T30P140 U359 ( .A1(n346), .A2(n345), .A3(n344), .B(n343), .ZN(
        n347) );
  CKMUX2D0BWP12T30P140 U360 ( .I0(n347), .I1(data_out[1]), .S(empty), .Z(n233)
         );
  ND2D0BWP12T30P140 U361 ( .A1(n348), .A2(write_en), .ZN(n351) );
  INVD0BWP12T30P140 U362 ( .I(n349), .ZN(n350) );
  AOI21D0BWP12T30P140 U363 ( .A1(n352), .A2(n351), .B(n350), .ZN(n229) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n354), .A2(n353), .B1(mem[108]), .B2(n354), 
        .ZN(n118) );
  AOI21D0BWP12T30P140 U365 ( .A1(n357), .A2(n356), .B(n355), .ZN(n238) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n358), .A2(n372), .B1(mem[14]), .B2(n358), 
        .ZN(n212) );
  NR2D0BWP12T30P140 U367 ( .A1(n360), .A2(n359), .ZN(n371) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n371), .A2(n361), .B1(mem[45]), .B2(n371), 
        .ZN(n181) );
  NR2D0BWP12T30P140 U369 ( .A1(n369), .A2(n368), .ZN(n367) );
  ND2D0BWP12T30P140 U370 ( .A1(rd_ptr[4]), .A2(n367), .ZN(n374) );
  OA21D0BWP12T30P140 U371 ( .A1(rd_ptr[4]), .A2(n367), .B(n374), .Z(n235) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n362), .A2(n361), .B1(mem[37]), .B2(n362), 
        .ZN(n189) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n364), .A2(n363), .B1(mem[23]), .B2(n364), 
        .ZN(n203) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n366), .A2(n365), .B1(mem[55]), .B2(n366), 
        .ZN(n171) );
  AOI21D0BWP12T30P140 U375 ( .A1(n369), .A2(n368), .B(n367), .ZN(n236) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n371), .A2(n370), .B1(mem[44]), .B2(n371), 
        .ZN(n182) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n373), .A2(n372), .B1(mem[16]), .B2(n373), 
        .ZN(n210) );
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
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n108), .CP(sys_clk), .Q(
        bitcounter[5]) );
  DFQD2BWP12T30P140 bitcounter_reg_6_ ( .D(n107), .CP(sys_clk), .Q(
        bitcounter[6]) );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n112), .CP(sys_clk), .Q(
        bitcounter[1]) );
  DFQD2BWP12T30P140 down_sync_reg ( .D(n116), .CP(sys_clk), .Q(down_sync) );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n105), .CP(sys_clk), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n109), .CP(sys_clk), .Q(
        bitcounter[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_3_ ( .D(n110), .CP(sys_clk), .Q(
        bitcounter[3]) );
  DFQD1BWP12T30P140 bitcounter_reg_2_ ( .D(n111), .CP(sys_clk), .Q(
        bitcounter[2]) );
  CKBD0BWP12T30P140 U3 ( .I(en), .Z(down_stb) );
  INVD0BWP12T30P140 U4 ( .I(sys_rst), .ZN(n124) );
  ND2D0BWP12T30P140 U5 ( .A1(en), .A2(n124), .ZN(n129) );
  ND2D0BWP12T30P140 U6 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n123) );
  INVD0BWP12T30P140 U7 ( .I(n123), .ZN(n71) );
  INVD0BWP12T30P140 U8 ( .I(bitcounter[4]), .ZN(n104) );
  INVD0BWP12T30P140 U9 ( .I(bitcounter[6]), .ZN(n94) );
  NR2D0BWP12T30P140 U10 ( .A1(n104), .A2(n94), .ZN(n86) );
  INVD0BWP12T30P140 U11 ( .I(bitcounter[5]), .ZN(n90) );
  NR2D0BWP12T30P140 U12 ( .A1(bitcounter[4]), .A2(n90), .ZN(n60) );
  AOI22D0BWP12T30P140 U13 ( .A1(n86), .A2(pcmright[12]), .B1(n60), .B2(addr[0]), .ZN(n3) );
  NR2D0BWP12T30P140 U14 ( .A1(bitcounter[4]), .A2(n94), .ZN(n63) );
  NR2D0BWP12T30P140 U15 ( .A1(bitcounter[6]), .A2(bitcounter[5]), .ZN(n83) );
  NR2D0BWP12T30P140 U16 ( .A1(n104), .A2(n90), .ZN(n98) );
  AO22D0BWP12T30P140 U17 ( .A1(n83), .A2(addr[16]), .B1(n98), .B2(data[4]), 
        .Z(n1) );
  AOI21D0BWP12T30P140 U18 ( .A1(n63), .A2(pcmleft[8]), .B(n1), .ZN(n2) );
  INVD0BWP12T30P140 U19 ( .I(bitcounter[3]), .ZN(n126) );
  AOI31D0BWP12T30P140 U20 ( .A1(n3), .A2(n2), .A3(n126), .B(bitcounter[2]), 
        .ZN(n16) );
  AOI22D0BWP12T30P140 U21 ( .A1(n63), .A2(pcmleft[0]), .B1(n60), .B2(data[12]), 
        .ZN(n6) );
  AOI22D0BWP12T30P140 U22 ( .A1(n83), .A2(addr[8]), .B1(n98), .B2(pcmleft[16]), 
        .ZN(n5) );
  ND2D0BWP12T30P140 U23 ( .A1(n86), .A2(pcmright[4]), .ZN(n4) );
  ND4D0BWP12T30P140 U24 ( .A1(bitcounter[3]), .A2(n6), .A3(n5), .A4(n4), .ZN(
        n15) );
  AOI22D0BWP12T30P140 U25 ( .A1(n86), .A2(pcmright[0]), .B1(n60), .B2(data[8]), 
        .ZN(n9) );
  AOI22D0BWP12T30P140 U26 ( .A1(n83), .A2(addr[4]), .B1(n98), .B2(pcmleft[12]), 
        .ZN(n8) );
  ND2D0BWP12T30P140 U27 ( .A1(n63), .A2(pcmright[16]), .ZN(n7) );
  ND2D0BWP12T30P140 U28 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .ZN(n82) );
  AOI31D0BWP12T30P140 U29 ( .A1(n9), .A2(n8), .A3(n7), .B(n82), .ZN(n14) );
  AOI22D0BWP12T30P140 U30 ( .A1(n86), .A2(pcmright[8]), .B1(n60), .B2(data[16]), .ZN(n12) );
  AOI22D0BWP12T30P140 U31 ( .A1(n83), .A2(addr[12]), .B1(n98), .B2(data[0]), 
        .ZN(n11) );
  ND2D0BWP12T30P140 U32 ( .A1(n63), .A2(pcmleft[4]), .ZN(n10) );
  ND2D0BWP12T30P140 U33 ( .A1(bitcounter[2]), .A2(n126), .ZN(n54) );
  AOI31D0BWP12T30P140 U34 ( .A1(n12), .A2(n11), .A3(n10), .B(n54), .ZN(n13) );
  AOI211D0BWP12T30P140 U35 ( .A1(n16), .A2(n15), .B(n14), .C(n13), .ZN(n34) );
  AOI22D0BWP12T30P140 U36 ( .A1(n86), .A2(pcmright[14]), .B1(n60), .B2(addr[2]), .ZN(n19) );
  AO22D0BWP12T30P140 U37 ( .A1(n83), .A2(addr[18]), .B1(n98), .B2(data[6]), 
        .Z(n17) );
  AOI21D0BWP12T30P140 U38 ( .A1(n63), .A2(pcmleft[10]), .B(n17), .ZN(n18) );
  AOI31D0BWP12T30P140 U39 ( .A1(n19), .A2(n18), .A3(n126), .B(bitcounter[2]), 
        .ZN(n32) );
  AOI22D0BWP12T30P140 U40 ( .A1(n63), .A2(pcmleft[2]), .B1(n60), .B2(data[14]), 
        .ZN(n22) );
  AOI22D0BWP12T30P140 U41 ( .A1(n83), .A2(addr[10]), .B1(n98), .B2(pcmleft[18]), .ZN(n21) );
  ND2D0BWP12T30P140 U42 ( .A1(n86), .A2(pcmright[6]), .ZN(n20) );
  ND4D0BWP12T30P140 U43 ( .A1(bitcounter[3]), .A2(n22), .A3(n21), .A4(n20), 
        .ZN(n31) );
  AOI22D0BWP12T30P140 U44 ( .A1(n86), .A2(pcmright[2]), .B1(n60), .B2(data[10]), .ZN(n25) );
  AOI22D0BWP12T30P140 U45 ( .A1(n83), .A2(addr[6]), .B1(n98), .B2(pcmleft[14]), 
        .ZN(n24) );
  ND2D0BWP12T30P140 U46 ( .A1(n63), .A2(pcmright[18]), .ZN(n23) );
  AOI31D0BWP12T30P140 U47 ( .A1(n25), .A2(n24), .A3(n23), .B(n82), .ZN(n30) );
  AO22D0BWP12T30P140 U48 ( .A1(n86), .A2(pcmright[10]), .B1(n60), .B2(data[18]), .Z(n27) );
  AO22D0BWP12T30P140 U49 ( .A1(n83), .A2(addr[14]), .B1(n98), .B2(data[2]), 
        .Z(n26) );
  AOI211D0BWP12T30P140 U50 ( .A1(n63), .A2(pcmleft[6]), .B(n27), .C(n26), .ZN(
        n28) );
  INVD0BWP12T30P140 U51 ( .I(bitcounter[1]), .ZN(n120) );
  OAI211D0BWP12T30P140 U52 ( .A1(n28), .A2(n54), .B(bitcounter[0]), .C(n120), 
        .ZN(n29) );
  AOI211D0BWP12T30P140 U53 ( .A1(n32), .A2(n31), .B(n30), .C(n29), .ZN(n33) );
  AOI211D0BWP12T30P140 U54 ( .A1(n71), .A2(n34), .B(down_sync), .C(n33), .ZN(
        n79) );
  AOI22D0BWP12T30P140 U55 ( .A1(n86), .A2(pcmright[5]), .B1(n60), .B2(data[13]), .ZN(n38) );
  AOI22D0BWP12T30P140 U56 ( .A1(n83), .A2(addr[9]), .B1(n98), .B2(pcmleft[17]), 
        .ZN(n37) );
  ND2D0BWP12T30P140 U57 ( .A1(n63), .A2(pcmleft[1]), .ZN(n36) );
  INVD0BWP12T30P140 U58 ( .I(bitcounter[2]), .ZN(n121) );
  ND2D0BWP12T30P140 U59 ( .A1(bitcounter[3]), .A2(n121), .ZN(n35) );
  AOI31D0BWP12T30P140 U60 ( .A1(n38), .A2(n37), .A3(n36), .B(n35), .ZN(n50) );
  AOI22D0BWP12T30P140 U61 ( .A1(n86), .A2(pcmright[1]), .B1(n60), .B2(data[9]), 
        .ZN(n41) );
  AOI22D0BWP12T30P140 U62 ( .A1(n83), .A2(addr[5]), .B1(n98), .B2(pcmleft[13]), 
        .ZN(n40) );
  ND2D0BWP12T30P140 U63 ( .A1(n63), .A2(pcmright[17]), .ZN(n39) );
  AOI31D0BWP12T30P140 U64 ( .A1(n41), .A2(n40), .A3(n39), .B(n82), .ZN(n49) );
  AO22D0BWP12T30P140 U65 ( .A1(n86), .A2(pcmright[9]), .B1(n60), .B2(data[17]), 
        .Z(n43) );
  AO22D0BWP12T30P140 U66 ( .A1(n83), .A2(addr[13]), .B1(n98), .B2(data[1]), 
        .Z(n42) );
  AOI211D0BWP12T30P140 U67 ( .A1(n63), .A2(pcmleft[5]), .B(n43), .C(n42), .ZN(
        n47) );
  AO22D0BWP12T30P140 U68 ( .A1(n86), .A2(pcmright[13]), .B1(n60), .B2(addr[1]), 
        .Z(n45) );
  AO22D0BWP12T30P140 U69 ( .A1(n83), .A2(addr[17]), .B1(n98), .B2(data[5]), 
        .Z(n44) );
  AOI211D0BWP12T30P140 U70 ( .A1(n63), .A2(pcmleft[9]), .B(n45), .C(n44), .ZN(
        n46) );
  AOI221D0BWP12T30P140 U71 ( .A1(bitcounter[2]), .A2(n47), .B1(n121), .B2(n46), 
        .C(bitcounter[3]), .ZN(n48) );
  NR4D0BWP12T30P140 U72 ( .A1(n50), .A2(n49), .A3(n120), .A4(n48), .ZN(n70) );
  AOI22D0BWP12T30P140 U73 ( .A1(n86), .A2(pcmright[3]), .B1(n60), .B2(data[11]), .ZN(n53) );
  AOI22D0BWP12T30P140 U74 ( .A1(n83), .A2(addr[7]), .B1(n98), .B2(pcmleft[15]), 
        .ZN(n52) );
  ND2D0BWP12T30P140 U75 ( .A1(n63), .A2(pcmright[19]), .ZN(n51) );
  AOI31D0BWP12T30P140 U76 ( .A1(n53), .A2(n52), .A3(n51), .B(n82), .ZN(n68) );
  AOI22D0BWP12T30P140 U77 ( .A1(n86), .A2(pcmright[11]), .B1(n60), .B2(
        data[19]), .ZN(n57) );
  AOI22D0BWP12T30P140 U78 ( .A1(n83), .A2(addr[15]), .B1(n98), .B2(data[3]), 
        .ZN(n56) );
  ND2D0BWP12T30P140 U79 ( .A1(n63), .A2(pcmleft[7]), .ZN(n55) );
  AOI31D0BWP12T30P140 U80 ( .A1(n57), .A2(n56), .A3(n55), .B(n54), .ZN(n67) );
  AO22D0BWP12T30P140 U81 ( .A1(n86), .A2(pcmright[7]), .B1(n60), .B2(data[15]), 
        .Z(n59) );
  AO22D0BWP12T30P140 U82 ( .A1(n83), .A2(addr[11]), .B1(n98), .B2(pcmleft[19]), 
        .Z(n58) );
  AOI211D0BWP12T30P140 U83 ( .A1(n63), .A2(pcmleft[3]), .B(n59), .C(n58), .ZN(
        n65) );
  AO22D0BWP12T30P140 U84 ( .A1(n86), .A2(pcmright[15]), .B1(n60), .B2(addr[3]), 
        .Z(n62) );
  AO22D0BWP12T30P140 U85 ( .A1(n83), .A2(addr[19]), .B1(n98), .B2(data[7]), 
        .Z(n61) );
  AOI211D0BWP12T30P140 U86 ( .A1(n63), .A2(pcmleft[11]), .B(n62), .C(n61), 
        .ZN(n64) );
  AOI221D0BWP12T30P140 U87 ( .A1(bitcounter[3]), .A2(n65), .B1(n126), .B2(n64), 
        .C(bitcounter[2]), .ZN(n66) );
  NR4D0BWP12T30P140 U88 ( .A1(bitcounter[1]), .A2(n68), .A3(n67), .A4(n66), 
        .ZN(n69) );
  INVD0BWP12T30P140 U89 ( .I(bitcounter[0]), .ZN(n119) );
  OAI21D0BWP12T30P140 U90 ( .A1(n70), .A2(n69), .B(n119), .ZN(n78) );
  AOI22D0BWP12T30P140 U91 ( .A1(pcmleft_valid), .A2(n71), .B1(addr_valid), 
        .B2(n120), .ZN(n73) );
  OAI21D0BWP12T30P140 U92 ( .A1(data_valid), .A2(n120), .B(n119), .ZN(n72) );
  AOI21D0BWP12T30P140 U93 ( .A1(n73), .A2(n72), .B(bitcounter[2]), .ZN(n74) );
  AOI31D0BWP12T30P140 U94 ( .A1(pcmright_valid), .A2(n120), .A3(n119), .B(n74), 
        .ZN(n75) );
  INVD0BWP12T30P140 U95 ( .I(down_sync), .ZN(n100) );
  NR3D0BWP12T30P140 U96 ( .A1(bitcounter[3]), .A2(n75), .A3(n100), .ZN(n77) );
  INVD0BWP12T30P140 U97 ( .I(in_slot), .ZN(n76) );
  AOI32D0BWP12T30P140 U98 ( .A1(n79), .A2(in_slot), .A3(n78), .B1(n77), .B2(
        n76), .ZN(n81) );
  INVD0BWP12T30P140 U99 ( .I(en), .ZN(n125) );
  ND2D0BWP12T30P140 U100 ( .A1(n124), .A2(n125), .ZN(n89) );
  INVD0BWP12T30P140 U101 ( .I(down_data), .ZN(n80) );
  OAI22D0BWP12T30P140 U102 ( .A1(n129), .A2(n81), .B1(n89), .B2(n80), .ZN(n114) );
  NR3D0BWP12T30P140 U103 ( .A1(n125), .A2(n123), .A3(n82), .ZN(n97) );
  INVD0BWP12T30P140 U104 ( .I(bitcounter[7]), .ZN(n87) );
  AN2D0BWP12T30P140 U105 ( .A1(n97), .A2(n87), .Z(n85) );
  AN3D0BWP12T30P140 U106 ( .A1(n104), .A2(n83), .A3(n85), .Z(n99) );
  OAI21D0BWP12T30P140 U107 ( .A1(in_slot), .A2(n99), .B(n124), .ZN(n84) );
  AOI31D0BWP12T30P140 U108 ( .A1(n86), .A2(n85), .A3(n90), .B(n84), .ZN(n115)
         );
  NR2D0BWP12T30P140 U109 ( .A1(n121), .A2(n123), .ZN(n103) );
  ND3D0BWP12T30P140 U110 ( .A1(bitcounter[3]), .A2(bitcounter[4]), .A3(n103), 
        .ZN(n92) );
  OR3D0BWP12T30P140 U111 ( .A1(n92), .A2(n129), .A3(n90), .Z(n95) );
  OAI21D0BWP12T30P140 U112 ( .A1(n125), .A2(n92), .B(n124), .ZN(n91) );
  OAI21D0BWP12T30P140 U113 ( .A1(bitcounter[5]), .A2(n129), .B(n91), .ZN(n93)
         );
  IAO21D0BWP12T30P140 U114 ( .A1(n129), .A2(bitcounter[6]), .B(n93), .ZN(n88)
         );
  OAI32D0BWP12T30P140 U115 ( .A1(bitcounter[7]), .A2(n94), .A3(n95), .B1(n88), 
        .B2(n87), .ZN(n106) );
  AOI22D0BWP12T30P140 U116 ( .A1(bitcounter[0]), .A2(n89), .B1(n129), .B2(n119), .ZN(n113) );
  OAI32D0BWP12T30P140 U117 ( .A1(bitcounter[5]), .A2(n129), .A3(n92), .B1(n91), 
        .B2(n90), .ZN(n108) );
  MAOI22D0BWP12T30P140 U118 ( .A1(n95), .A2(n94), .B1(n94), .B2(n93), .ZN(n107) );
  OAI21D0BWP12T30P140 U119 ( .A1(n125), .A2(n119), .B(n124), .ZN(n96) );
  OAI32D0BWP12T30P140 U120 ( .A1(bitcounter[1]), .A2(n129), .A3(n119), .B1(n96), .B2(n120), .ZN(n112) );
  ND4D0BWP12T30P140 U121 ( .A1(bitcounter[6]), .A2(n98), .A3(bitcounter[7]), 
        .A4(n97), .ZN(n102) );
  AOI211D0BWP12T30P140 U122 ( .A1(n100), .A2(n102), .B(sys_rst), .C(n99), .ZN(
        n116) );
  ND2D0BWP12T30P140 U123 ( .A1(n129), .A2(next_frame), .ZN(n101) );
  OAI21D0BWP12T30P140 U124 ( .A1(n129), .A2(n102), .B(n101), .ZN(n105) );
  ND2D0BWP12T30P140 U125 ( .A1(bitcounter[3]), .A2(n103), .ZN(n118) );
  INVD0BWP12T30P140 U126 ( .I(n103), .ZN(n128) );
  OAI31D0BWP12T30P140 U127 ( .A1(n126), .A2(n125), .A3(n128), .B(n124), .ZN(
        n117) );
  OAI32D0BWP12T30P140 U128 ( .A1(bitcounter[4]), .A2(n129), .A3(n118), .B1(
        n117), .B2(n104), .ZN(n109) );
  OAI31D0BWP12T30P140 U129 ( .A1(n120), .A2(n125), .A3(n119), .B(n124), .ZN(
        n122) );
  OAI32D0BWP12T30P140 U130 ( .A1(bitcounter[2]), .A2(n129), .A3(n123), .B1(
        n122), .B2(n121), .ZN(n111) );
  OAI21D0BWP12T30P140 U131 ( .A1(n125), .A2(n128), .B(n124), .ZN(n127) );
  OAI32D0BWP12T30P140 U132 ( .A1(bitcounter[3]), .A2(n129), .A3(n128), .B1(
        n127), .B2(n126), .ZN(n110) );
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
         n254, n255, n256, n257, n258, n260, n261, n262, n263, n264;
  wire   [7:0] bitcounter;

  DFQD2BWP12T30P140 sync_old_reg ( .D(n171), .CP(n260), .Q(sync_old) );
  DFQD2BWP12T30P140 addr_reg_10_ ( .D(n226), .CP(n264), .Q(addr[10]) );
  DFQD2BWP12T30P140 pcmright_reg_6_ ( .D(n205), .CP(n261), .Q(pcmright[6]) );
  DFQD2BWP12T30P140 pcmright_reg_0_ ( .D(n211), .CP(n260), .Q(pcmright[0]) );
  DFQD2BWP12T30P140 pcmleft_reg_2_ ( .D(n189), .CP(n264), .Q(pcmleft[2]) );
  DFQD2BWP12T30P140 pcmleft_reg_18_ ( .D(n173), .CP(n264), .Q(pcmleft[18]) );
  DFQD2BWP12T30P140 addr_reg_6_ ( .D(n230), .CP(n264), .Q(addr[6]) );
  DFQD2BWP12T30P140 pcmright_reg_2_ ( .D(n209), .CP(n264), .Q(pcmright[2]) );
  DFQD2BWP12T30P140 pcmright_reg_18_ ( .D(n193), .CP(n264), .Q(pcmright[18])
         );
  DFQD2BWP12T30P140 pcmleft_reg_14_ ( .D(n177), .CP(n264), .Q(pcmleft[14]) );
  DFQD2BWP12T30P140 addr_reg_2_ ( .D(n234), .CP(n264), .Q(addr[2]) );
  DFQD2BWP12T30P140 addr_reg_18_ ( .D(n218), .CP(n264), .Q(addr[18]) );
  DFQD2BWP12T30P140 pcmright_reg_14_ ( .D(n197), .CP(n264), .Q(pcmright[14])
         );
  DFQD2BWP12T30P140 addr_reg_14_ ( .D(n222), .CP(n264), .Q(addr[14]) );
  DFQD2BWP12T30P140 pcmright_reg_10_ ( .D(n201), .CP(n263), .Q(pcmright[10])
         );
  DFQD2BWP12T30P140 pcmleft_reg_6_ ( .D(n185), .CP(n263), .Q(pcmleft[6]) );
  DFQD2BWP12T30P140 addr_reg_11_ ( .D(n225), .CP(n263), .Q(addr[11]) );
  DFQD2BWP12T30P140 pcmright_reg_7_ ( .D(n204), .CP(n263), .Q(pcmright[7]) );
  DFQD2BWP12T30P140 pcmleft_reg_3_ ( .D(n188), .CP(n263), .Q(pcmleft[3]) );
  DFQD2BWP12T30P140 pcmleft_reg_19_ ( .D(n172), .CP(n263), .Q(pcmleft[19]) );
  DFQD2BWP12T30P140 addr_reg_7_ ( .D(n229), .CP(n263), .Q(addr[7]) );
  DFQD2BWP12T30P140 pcmright_reg_3_ ( .D(n208), .CP(n263), .Q(pcmright[3]) );
  DFQD2BWP12T30P140 pcmright_reg_19_ ( .D(n192), .CP(n263), .Q(pcmright[19])
         );
  DFQD2BWP12T30P140 pcmleft_reg_15_ ( .D(n176), .CP(n263), .Q(pcmleft[15]) );
  DFQD2BWP12T30P140 addr_reg_3_ ( .D(n233), .CP(n263), .Q(addr[3]) );
  DFQD2BWP12T30P140 addr_reg_19_ ( .D(n217), .CP(n263), .Q(addr[19]) );
  DFQD2BWP12T30P140 pcmright_reg_15_ ( .D(n196), .CP(n262), .Q(pcmright[15])
         );
  DFQD2BWP12T30P140 addr_reg_15_ ( .D(n221), .CP(n262), .Q(addr[15]) );
  DFQD2BWP12T30P140 pcmright_valid_reg ( .D(n216), .CP(n262), .Q(
        pcmright_valid) );
  DFQD2BWP12T30P140 pcmright_reg_11_ ( .D(n200), .CP(n262), .Q(pcmright[11])
         );
  DFQD2BWP12T30P140 pcmleft_reg_7_ ( .D(n184), .CP(n262), .Q(pcmleft[7]) );
  DFQD2BWP12T30P140 addr_reg_9_ ( .D(n227), .CP(n262), .Q(addr[9]) );
  DFQD2BWP12T30P140 pcmright_reg_5_ ( .D(n206), .CP(n262), .Q(pcmright[5]) );
  DFQD2BWP12T30P140 pcmleft_reg_1_ ( .D(n190), .CP(n262), .Q(pcmleft[1]) );
  DFQD2BWP12T30P140 pcmleft_reg_17_ ( .D(n174), .CP(n262), .Q(pcmleft[17]) );
  DFQD2BWP12T30P140 addr_reg_5_ ( .D(n231), .CP(n262), .Q(addr[5]) );
  DFQD2BWP12T30P140 pcmright_reg_1_ ( .D(n210), .CP(n261), .Q(pcmright[1]) );
  DFQD2BWP12T30P140 pcmright_reg_17_ ( .D(n194), .CP(n261), .Q(pcmright[17])
         );
  DFQD2BWP12T30P140 pcmleft_reg_13_ ( .D(n178), .CP(n261), .Q(pcmleft[13]) );
  DFQD2BWP12T30P140 addr_reg_1_ ( .D(n235), .CP(n261), .Q(addr[1]) );
  DFQD2BWP12T30P140 addr_reg_17_ ( .D(n219), .CP(n261), .Q(addr[17]) );
  DFQD2BWP12T30P140 pcmleft_reg_9_ ( .D(n182), .CP(n261), .Q(pcmleft[9]) );
  DFQD2BWP12T30P140 addr_reg_13_ ( .D(n223), .CP(n261), .Q(addr[13]) );
  DFQD2BWP12T30P140 pcmright_reg_9_ ( .D(n202), .CP(n261), .Q(pcmright[9]) );
  DFQD2BWP12T30P140 pcmleft_reg_5_ ( .D(n186), .CP(n261), .Q(pcmleft[5]) );
  DFQD2BWP12T30P140 addr_reg_8_ ( .D(n228), .CP(n261), .Q(addr[8]) );
  DFQD2BWP12T30P140 pcmright_reg_4_ ( .D(n207), .CP(n260), .Q(pcmright[4]) );
  DFQD2BWP12T30P140 pcmleft_reg_0_ ( .D(n191), .CP(n260), .Q(pcmleft[0]) );
  DFQD2BWP12T30P140 pcmleft_reg_16_ ( .D(n175), .CP(n260), .Q(pcmleft[16]) );
  DFQD2BWP12T30P140 addr_reg_4_ ( .D(n232), .CP(n260), .Q(addr[4]) );
  DFQD2BWP12T30P140 pcmright_reg_16_ ( .D(n195), .CP(n260), .Q(pcmright[16])
         );
  DFQD2BWP12T30P140 pcmleft_reg_12_ ( .D(n179), .CP(n260), .Q(pcmleft[12]) );
  DFQD2BWP12T30P140 addr_reg_0_ ( .D(n236), .CP(n260), .Q(addr[0]) );
  DFQD2BWP12T30P140 addr_reg_16_ ( .D(n220), .CP(n260), .Q(addr[16]) );
  DFQD2BWP12T30P140 pcmleft_valid_reg ( .D(n215), .CP(n260), .Q(pcmleft_valid)
         );
  DFQD2BWP12T30P140 pcmleft_reg_8_ ( .D(n183), .CP(n260), .Q(pcmleft[8]) );
  DFQD2BWP12T30P140 addr_reg_12_ ( .D(n224), .CP(n262), .Q(addr[12]) );
  DFQD2BWP12T30P140 pcmright_reg_8_ ( .D(n203), .CP(n263), .Q(pcmright[8]) );
  DFQD2BWP12T30P140 pcmleft_reg_4_ ( .D(n187), .CP(n261), .Q(pcmleft[4]) );
  DFQD2BWP12T30P140 data_reg_3_ ( .D(n146), .CP(n263), .Q(data[3]) );
  DFQD2BWP12T30P140 data_reg_2_ ( .D(n145), .CP(n264), .Q(data[2]) );
  DFQD2BWP12T30P140 data_reg_1_ ( .D(n144), .CP(n261), .Q(data[1]) );
  DFQD2BWP12T30P140 data_reg_0_ ( .D(n143), .CP(n260), .Q(data[0]) );
  DFQD2BWP12T30P140 addr_valid_reg ( .D(n213), .CP(n264), .Q(addr_valid) );
  DFQD2BWP12T30P140 frame_valid_reg ( .D(n212), .CP(n262), .Q(frame_valid) );
  DFQD2BWP12T30P140 data_valid_reg ( .D(n214), .CP(n261), .Q(data_valid) );
  DFQD2BWP12T30P140 data_reg_19_ ( .D(n162), .CP(n260), .Q(data[19]) );
  DFQD2BWP12T30P140 data_reg_18_ ( .D(n161), .CP(n262), .Q(data[18]) );
  DFQD2BWP12T30P140 data_reg_17_ ( .D(n160), .CP(n264), .Q(data[17]) );
  DFQD2BWP12T30P140 data_reg_15_ ( .D(n158), .CP(n263), .Q(data[15]) );
  DFQD2BWP12T30P140 data_reg_14_ ( .D(n157), .CP(n261), .Q(data[14]) );
  DFQD2BWP12T30P140 data_reg_13_ ( .D(n156), .CP(n262), .Q(data[13]) );
  DFQD2BWP12T30P140 data_reg_12_ ( .D(n155), .CP(n263), .Q(data[12]) );
  DFQD2BWP12T30P140 data_reg_11_ ( .D(n154), .CP(n262), .Q(data[11]) );
  DFQD2BWP12T30P140 data_reg_10_ ( .D(n153), .CP(n263), .Q(data[10]) );
  DFQD2BWP12T30P140 data_reg_9_ ( .D(n152), .CP(n264), .Q(data[9]) );
  DFQD2BWP12T30P140 data_reg_8_ ( .D(n151), .CP(n261), .Q(data[8]) );
  DFQD2BWP12T30P140 data_reg_7_ ( .D(n150), .CP(n260), .Q(data[7]) );
  DFQD2BWP12T30P140 data_reg_6_ ( .D(n149), .CP(n262), .Q(data[6]) );
  DFQD2BWP12T30P140 data_reg_5_ ( .D(n148), .CP(n263), .Q(data[5]) );
  DFQD2BWP12T30P140 data_reg_4_ ( .D(n147), .CP(n260), .Q(data[4]) );
  DFQD2BWP12T30P140 bitcounter_reg_1_ ( .D(n170), .CP(n264), .Q(bitcounter[1])
         );
  DFQD2BWP12T30P140 bitcounter_reg_6_ ( .D(n165), .CP(n262), .Q(bitcounter[6])
         );
  DFQD2BWP12T30P140 next_frame_reg ( .D(n163), .CP(n261), .Q(next_frame) );
  DFQD2BWP12T30P140 bitcounter_reg_0_ ( .D(n237), .CP(n261), .Q(bitcounter[0])
         );
  DFQD2BWP12T30P140 bitcounter_reg_5_ ( .D(n166), .CP(n260), .Q(bitcounter[5])
         );
  DFQD2BWP12T30P140 bitcounter_reg_4_ ( .D(n167), .CP(n264), .Q(bitcounter[4])
         );
  DFQD2BWP12T30P140 bitcounter_reg_2_ ( .D(n169), .CP(n260), .Q(bitcounter[2])
         );
  DFQD2BWP12T30P140 bitcounter_reg_3_ ( .D(n168), .CP(n264), .Q(bitcounter[3])
         );
  DFQD1BWP12T30P140 pcmleft_reg_10_ ( .D(n181), .CP(n264), .Q(pcmleft[10]) );
  DFQD1BWP12T30P140 pcmleft_reg_11_ ( .D(n180), .CP(n262), .Q(pcmleft[11]) );
  DFQD1BWP12T30P140 pcmright_reg_13_ ( .D(n198), .CP(n261), .Q(pcmright[13])
         );
  DFQD1BWP12T30P140 pcmright_reg_12_ ( .D(n199), .CP(n260), .Q(pcmright[12])
         );
  DFQD1BWP12T30P140 data_reg_16_ ( .D(n159), .CP(n262), .Q(data[16]) );
  DFQD1BWP12T30P140 bitcounter_reg_7_ ( .D(n164), .CP(n263), .Q(bitcounter[7])
         );
  CKBD0BWP12T30P140 U3 ( .I(en), .Z(up_ack) );
  INVD0BWP12T30P140 U4 ( .I(sync_old), .ZN(n138) );
  INVD0BWP12T30P140 U5 ( .I(sys_rst), .ZN(n257) );
  ND2D0BWP12T30P140 U6 ( .A1(up_stb), .A2(en), .ZN(n136) );
  ND2D0BWP12T30P140 U7 ( .A1(n257), .A2(n136), .ZN(n245) );
  INVD0BWP12T30P140 U8 ( .I(n245), .ZN(n6) );
  AOI21D0BWP12T30P140 U9 ( .A1(n138), .A2(up_sync), .B(n6), .ZN(n250) );
  INVD0BWP12T30P140 U10 ( .I(n250), .ZN(n246) );
  ND2D0BWP12T30P140 U11 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n2) );
  INVD0BWP12T30P140 U12 ( .I(bitcounter[2]), .ZN(n73) );
  NR2D0BWP12T30P140 U13 ( .A1(n2), .A2(n73), .ZN(n5) );
  INVD0BWP12T30P140 U14 ( .I(bitcounter[3]), .ZN(n83) );
  ND2D0BWP12T30P140 U15 ( .A1(n5), .A2(n83), .ZN(n244) );
  OA32D0BWP12T30P140 U16 ( .A1(n246), .A2(n83), .A3(n5), .B1(n245), .B2(n83), 
        .Z(n1) );
  OAI211D0BWP12T30P140 U17 ( .A1(n246), .A2(n244), .B(n257), .C(n1), .ZN(n168)
         );
  NR2D0BWP12T30P140 U18 ( .A1(bitcounter[2]), .A2(n2), .ZN(n84) );
  INVD0BWP12T30P140 U19 ( .I(n84), .ZN(n4) );
  AOI32D0BWP12T30P140 U20 ( .A1(n250), .A2(bitcounter[2]), .A3(n2), .B1(n6), 
        .B2(bitcounter[2]), .ZN(n3) );
  OAI211D0BWP12T30P140 U21 ( .A1(n246), .A2(n4), .B(n257), .C(n3), .ZN(n169)
         );
  ND2D0BWP12T30P140 U22 ( .A1(bitcounter[3]), .A2(n5), .ZN(n90) );
  INVD0BWP12T30P140 U23 ( .I(n90), .ZN(n248) );
  ND2D0BWP12T30P140 U24 ( .A1(bitcounter[4]), .A2(n248), .ZN(n7) );
  AOI21D0BWP12T30P140 U25 ( .A1(n250), .A2(n7), .B(n6), .ZN(n11) );
  INVD0BWP12T30P140 U26 ( .I(bitcounter[5]), .ZN(n9) );
  INVD0BWP12T30P140 U27 ( .I(bitcounter[4]), .ZN(n249) );
  NR3D0BWP12T30P140 U28 ( .A1(n246), .A2(n249), .A3(n90), .ZN(n255) );
  AOI21D0BWP12T30P140 U29 ( .A1(n255), .A2(n9), .B(sys_rst), .ZN(n8) );
  OAI21D0BWP12T30P140 U30 ( .A1(n11), .A2(n9), .B(n8), .ZN(n166) );
  AOI21D0BWP12T30P140 U31 ( .A1(bitcounter[0]), .A2(n136), .B(sys_rst), .ZN(
        n10) );
  OAI21D0BWP12T30P140 U32 ( .A1(bitcounter[0]), .A2(n246), .B(n10), .ZN(n237)
         );
  ND3D0BWP12T30P140 U33 ( .A1(bitcounter[6]), .A2(bitcounter[5]), .A3(n255), 
        .ZN(n13) );
  INVD0BWP12T30P140 U34 ( .I(bitcounter[6]), .ZN(n256) );
  OAI21D0BWP12T30P140 U35 ( .A1(bitcounter[5]), .A2(n246), .B(n11), .ZN(n254)
         );
  AOI32D0BWP12T30P140 U36 ( .A1(n250), .A2(bitcounter[7]), .A3(n256), .B1(n254), .B2(bitcounter[7]), .ZN(n12) );
  OAI211D0BWP12T30P140 U37 ( .A1(bitcounter[7]), .A2(n13), .B(n257), .C(n12), 
        .ZN(n164) );
  NR3D0BWP12T30P140 U38 ( .A1(sys_rst), .A2(bitcounter[7]), .A3(n136), .ZN(n14) );
  ND3D0BWP12T30P140 U39 ( .A1(n256), .A2(n14), .A3(bitcounter[5]), .ZN(n38) );
  NR2D0BWP12T30P140 U40 ( .A1(n249), .A2(n38), .ZN(n15) );
  ND2D0BWP12T30P140 U41 ( .A1(up_data), .A2(n15), .ZN(n133) );
  INVD0BWP12T30P140 U42 ( .I(n15), .ZN(n131) );
  OAI21D0BWP12T30P140 U43 ( .A1(n90), .A2(n131), .B(pcmleft[12]), .ZN(n16) );
  OAI21D0BWP12T30P140 U44 ( .A1(n90), .A2(n133), .B(n16), .ZN(n179) );
  NR4D0BWP12T30P140 U45 ( .A1(sys_rst), .A2(bitcounter[7]), .A3(bitcounter[5]), 
        .A4(n136), .ZN(n21) );
  ND2D0BWP12T30P140 U46 ( .A1(bitcounter[6]), .A2(n21), .ZN(n17) );
  NR2D0BWP12T30P140 U47 ( .A1(bitcounter[4]), .A2(n17), .ZN(n18) );
  ND2D0BWP12T30P140 U48 ( .A1(up_data), .A2(n18), .ZN(n239) );
  INVD0BWP12T30P140 U49 ( .I(n18), .ZN(n142) );
  OAI21D0BWP12T30P140 U50 ( .A1(n90), .A2(n142), .B(pcmright[16]), .ZN(n19) );
  OAI21D0BWP12T30P140 U51 ( .A1(n90), .A2(n239), .B(n19), .ZN(n195) );
  ND3D0BWP12T30P140 U52 ( .A1(bitcounter[6]), .A2(bitcounter[4]), .A3(n21), 
        .ZN(n128) );
  NR2D0BWP12T30P140 U53 ( .A1(n90), .A2(n128), .ZN(n252) );
  INVD0BWP12T30P140 U54 ( .I(pcmright[0]), .ZN(n20) );
  IND2D1BWP12T30P140 U55 ( .A1(n128), .B1(up_data), .ZN(n130) );
  OAI22D0BWP12T30P140 U56 ( .A1(n252), .A2(n20), .B1(n90), .B2(n130), .ZN(n211) );
  ND2D0BWP12T30P140 U57 ( .A1(n21), .A2(n256), .ZN(n56) );
  NR2D0BWP12T30P140 U58 ( .A1(n249), .A2(n56), .ZN(n22) );
  ND2D0BWP12T30P140 U59 ( .A1(n22), .A2(up_data), .ZN(n243) );
  INVD0BWP12T30P140 U60 ( .I(n22), .ZN(n241) );
  OAI21D0BWP12T30P140 U61 ( .A1(n90), .A2(n241), .B(addr[4]), .ZN(n23) );
  OAI21D0BWP12T30P140 U62 ( .A1(n90), .A2(n243), .B(n23), .ZN(n232) );
  INR2D1BWP12T30P140 U63 ( .A1(bitcounter[0]), .B1(bitcounter[1]), .ZN(n79) );
  ND3D0BWP12T30P140 U64 ( .A1(n73), .A2(n79), .A3(bitcounter[3]), .ZN(n124) );
  OAI21D0BWP12T30P140 U65 ( .A1(n124), .A2(n142), .B(pcmleft[2]), .ZN(n24) );
  OAI21D0BWP12T30P140 U66 ( .A1(n124), .A2(n239), .B(n24), .ZN(n189) );
  ND2D0BWP12T30P140 U67 ( .A1(bitcounter[3]), .A2(n84), .ZN(n114) );
  OAI21D0BWP12T30P140 U68 ( .A1(n114), .A2(n142), .B(pcmleft[0]), .ZN(n25) );
  OAI21D0BWP12T30P140 U69 ( .A1(n114), .A2(n239), .B(n25), .ZN(n191) );
  OAI21D0BWP12T30P140 U70 ( .A1(n114), .A2(n128), .B(pcmright[4]), .ZN(n26) );
  OAI21D0BWP12T30P140 U71 ( .A1(n114), .A2(n130), .B(n26), .ZN(n207) );
  OAI21D0BWP12T30P140 U72 ( .A1(n124), .A2(n131), .B(pcmleft[18]), .ZN(n27) );
  OAI21D0BWP12T30P140 U73 ( .A1(n124), .A2(n133), .B(n27), .ZN(n173) );
  OAI21D0BWP12T30P140 U74 ( .A1(n114), .A2(n241), .B(addr[8]), .ZN(n28) );
  OAI21D0BWP12T30P140 U75 ( .A1(n114), .A2(n243), .B(n28), .ZN(n228) );
  INVD0BWP12T30P140 U76 ( .I(bitcounter[1]), .ZN(n82) );
  NR2D0BWP12T30P140 U77 ( .A1(bitcounter[0]), .A2(n82), .ZN(n80) );
  NR2D0BWP12T30P140 U78 ( .A1(bitcounter[3]), .A2(n73), .ZN(n60) );
  ND2D0BWP12T30P140 U79 ( .A1(n80), .A2(n60), .ZN(n126) );
  OAI21D0BWP12T30P140 U80 ( .A1(n126), .A2(n142), .B(pcmleft[5]), .ZN(n29) );
  OAI21D0BWP12T30P140 U81 ( .A1(n126), .A2(n239), .B(n29), .ZN(n186) );
  ND3D0BWP12T30P140 U82 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n79), 
        .ZN(n94) );
  OAI21D0BWP12T30P140 U83 ( .A1(n94), .A2(n241), .B(addr[6]), .ZN(n30) );
  OAI21D0BWP12T30P140 U84 ( .A1(n94), .A2(n243), .B(n30), .ZN(n230) );
  OAI21D0BWP12T30P140 U85 ( .A1(n126), .A2(n128), .B(pcmright[9]), .ZN(n31) );
  OAI21D0BWP12T30P140 U86 ( .A1(n126), .A2(n130), .B(n31), .ZN(n202) );
  OAI21D0BWP12T30P140 U87 ( .A1(n126), .A2(n241), .B(addr[13]), .ZN(n32) );
  OAI21D0BWP12T30P140 U88 ( .A1(n126), .A2(n243), .B(n32), .ZN(n223) );
  OAI21D0BWP12T30P140 U89 ( .A1(n94), .A2(n128), .B(pcmright[2]), .ZN(n33) );
  OAI21D0BWP12T30P140 U90 ( .A1(n94), .A2(n130), .B(n33), .ZN(n209) );
  NR2D0BWP12T30P140 U91 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .ZN(n62) );
  ND2D0BWP12T30P140 U92 ( .A1(n80), .A2(n62), .ZN(n108) );
  OAI21D0BWP12T30P140 U93 ( .A1(n108), .A2(n142), .B(pcmleft[9]), .ZN(n34) );
  OAI21D0BWP12T30P140 U94 ( .A1(n108), .A2(n239), .B(n34), .ZN(n182) );
  OAI21D0BWP12T30P140 U95 ( .A1(n108), .A2(n128), .B(pcmright[13]), .ZN(n35)
         );
  OAI21D0BWP12T30P140 U96 ( .A1(n108), .A2(n130), .B(n35), .ZN(n198) );
  OAI21D0BWP12T30P140 U97 ( .A1(n94), .A2(n142), .B(pcmright[18]), .ZN(n36) );
  OAI21D0BWP12T30P140 U98 ( .A1(n94), .A2(n239), .B(n36), .ZN(n193) );
  OAI21D0BWP12T30P140 U99 ( .A1(n108), .A2(n241), .B(addr[17]), .ZN(n37) );
  OAI21D0BWP12T30P140 U100 ( .A1(n108), .A2(n243), .B(n37), .ZN(n219) );
  NR2D0BWP12T30P140 U101 ( .A1(bitcounter[4]), .A2(n38), .ZN(n39) );
  ND2D0BWP12T30P140 U102 ( .A1(up_data), .A2(n39), .ZN(n122) );
  INVD0BWP12T30P140 U103 ( .I(n39), .ZN(n120) );
  OAI21D0BWP12T30P140 U104 ( .A1(n108), .A2(n120), .B(addr[1]), .ZN(n40) );
  OAI21D0BWP12T30P140 U105 ( .A1(n108), .A2(n122), .B(n40), .ZN(n235) );
  ND3D0BWP12T30P140 U106 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n80), 
        .ZN(n92) );
  OAI21D0BWP12T30P140 U107 ( .A1(n92), .A2(n131), .B(pcmleft[13]), .ZN(n41) );
  OAI21D0BWP12T30P140 U108 ( .A1(n92), .A2(n133), .B(n41), .ZN(n178) );
  OAI21D0BWP12T30P140 U109 ( .A1(n94), .A2(n131), .B(pcmleft[14]), .ZN(n42) );
  OAI21D0BWP12T30P140 U110 ( .A1(n94), .A2(n133), .B(n42), .ZN(n177) );
  OAI21D0BWP12T30P140 U111 ( .A1(n92), .A2(n142), .B(pcmright[17]), .ZN(n43)
         );
  OAI21D0BWP12T30P140 U112 ( .A1(n92), .A2(n239), .B(n43), .ZN(n194) );
  OAI21D0BWP12T30P140 U113 ( .A1(n92), .A2(n128), .B(pcmright[1]), .ZN(n44) );
  OAI21D0BWP12T30P140 U114 ( .A1(n92), .A2(n130), .B(n44), .ZN(n210) );
  ND2D0BWP12T30P140 U115 ( .A1(n79), .A2(n62), .ZN(n112) );
  OAI21D0BWP12T30P140 U116 ( .A1(n112), .A2(n120), .B(addr[2]), .ZN(n45) );
  OAI21D0BWP12T30P140 U117 ( .A1(n112), .A2(n122), .B(n45), .ZN(n234) );
  OAI21D0BWP12T30P140 U118 ( .A1(n92), .A2(n241), .B(addr[5]), .ZN(n46) );
  OAI21D0BWP12T30P140 U119 ( .A1(n92), .A2(n243), .B(n46), .ZN(n231) );
  ND3D0BWP12T30P140 U120 ( .A1(n73), .A2(n80), .A3(bitcounter[3]), .ZN(n99) );
  OAI21D0BWP12T30P140 U121 ( .A1(n99), .A2(n131), .B(pcmleft[17]), .ZN(n47) );
  OAI21D0BWP12T30P140 U122 ( .A1(n99), .A2(n133), .B(n47), .ZN(n174) );
  OAI21D0BWP12T30P140 U123 ( .A1(n112), .A2(n241), .B(addr[18]), .ZN(n48) );
  OAI21D0BWP12T30P140 U124 ( .A1(n112), .A2(n243), .B(n48), .ZN(n218) );
  OAI21D0BWP12T30P140 U125 ( .A1(n99), .A2(n142), .B(pcmleft[1]), .ZN(n49) );
  OAI21D0BWP12T30P140 U126 ( .A1(n99), .A2(n239), .B(n49), .ZN(n190) );
  OAI21D0BWP12T30P140 U127 ( .A1(n99), .A2(n128), .B(pcmright[5]), .ZN(n50) );
  OAI21D0BWP12T30P140 U128 ( .A1(n99), .A2(n130), .B(n50), .ZN(n206) );
  OAI21D0BWP12T30P140 U129 ( .A1(n112), .A2(n128), .B(pcmright[14]), .ZN(n51)
         );
  OAI21D0BWP12T30P140 U130 ( .A1(n112), .A2(n130), .B(n51), .ZN(n197) );
  OAI21D0BWP12T30P140 U131 ( .A1(n99), .A2(n241), .B(addr[9]), .ZN(n52) );
  OAI21D0BWP12T30P140 U132 ( .A1(n99), .A2(n243), .B(n52), .ZN(n227) );
  NR2D0BWP12T30P140 U133 ( .A1(bitcounter[1]), .A2(bitcounter[0]), .ZN(n72) );
  ND2D0BWP12T30P140 U134 ( .A1(n72), .A2(n60), .ZN(n116) );
  OAI21D0BWP12T30P140 U135 ( .A1(n116), .A2(n142), .B(pcmleft[7]), .ZN(n53) );
  OAI21D0BWP12T30P140 U136 ( .A1(n116), .A2(n239), .B(n53), .ZN(n184) );
  OAI21D0BWP12T30P140 U137 ( .A1(n116), .A2(n128), .B(pcmright[11]), .ZN(n54)
         );
  OAI21D0BWP12T30P140 U138 ( .A1(n116), .A2(n130), .B(n54), .ZN(n200) );
  OAI21D0BWP12T30P140 U139 ( .A1(n112), .A2(n142), .B(pcmleft[10]), .ZN(n55)
         );
  OAI21D0BWP12T30P140 U140 ( .A1(n112), .A2(n239), .B(n55), .ZN(n181) );
  NR2D0BWP12T30P140 U141 ( .A1(n56), .A2(bitcounter[4]), .ZN(n57) );
  ND2D0BWP12T30P140 U142 ( .A1(up_data), .A2(n57), .ZN(n141) );
  INVD0BWP12T30P140 U143 ( .I(n57), .ZN(n139) );
  OAI21D0BWP12T30P140 U144 ( .A1(n116), .A2(n139), .B(pcmright_valid), .ZN(n58) );
  OAI21D0BWP12T30P140 U145 ( .A1(n116), .A2(n141), .B(n58), .ZN(n216) );
  OAI21D0BWP12T30P140 U146 ( .A1(n116), .A2(n241), .B(addr[15]), .ZN(n59) );
  OAI21D0BWP12T30P140 U147 ( .A1(n116), .A2(n243), .B(n59), .ZN(n221) );
  ND2D0BWP12T30P140 U148 ( .A1(n79), .A2(n60), .ZN(n134) );
  OAI21D0BWP12T30P140 U149 ( .A1(n134), .A2(n241), .B(addr[14]), .ZN(n61) );
  OAI21D0BWP12T30P140 U150 ( .A1(n134), .A2(n243), .B(n61), .ZN(n222) );
  ND2D0BWP12T30P140 U151 ( .A1(n72), .A2(n62), .ZN(n110) );
  OAI21D0BWP12T30P140 U152 ( .A1(n110), .A2(n142), .B(pcmleft[11]), .ZN(n63)
         );
  OAI21D0BWP12T30P140 U153 ( .A1(n110), .A2(n239), .B(n63), .ZN(n180) );
  OAI21D0BWP12T30P140 U154 ( .A1(n110), .A2(n128), .B(pcmright[15]), .ZN(n64)
         );
  OAI21D0BWP12T30P140 U155 ( .A1(n110), .A2(n130), .B(n64), .ZN(n196) );
  OAI21D0BWP12T30P140 U156 ( .A1(n134), .A2(n128), .B(pcmright[10]), .ZN(n65)
         );
  OAI21D0BWP12T30P140 U157 ( .A1(n134), .A2(n130), .B(n65), .ZN(n201) );
  OAI21D0BWP12T30P140 U158 ( .A1(n110), .A2(n241), .B(addr[19]), .ZN(n66) );
  OAI21D0BWP12T30P140 U159 ( .A1(n110), .A2(n243), .B(n66), .ZN(n217) );
  OAI21D0BWP12T30P140 U160 ( .A1(n110), .A2(n120), .B(addr[3]), .ZN(n67) );
  OAI21D0BWP12T30P140 U161 ( .A1(n110), .A2(n122), .B(n67), .ZN(n233) );
  ND3D0BWP12T30P140 U162 ( .A1(bitcounter[3]), .A2(bitcounter[2]), .A3(n72), 
        .ZN(n96) );
  OAI21D0BWP12T30P140 U163 ( .A1(n96), .A2(n131), .B(pcmleft[15]), .ZN(n68) );
  OAI21D0BWP12T30P140 U164 ( .A1(n96), .A2(n133), .B(n68), .ZN(n176) );
  OAI21D0BWP12T30P140 U165 ( .A1(n134), .A2(n142), .B(pcmleft[6]), .ZN(n69) );
  OAI21D0BWP12T30P140 U166 ( .A1(n134), .A2(n239), .B(n69), .ZN(n185) );
  OAI21D0BWP12T30P140 U167 ( .A1(n96), .A2(n142), .B(pcmright[19]), .ZN(n70)
         );
  OAI21D0BWP12T30P140 U168 ( .A1(n96), .A2(n239), .B(n70), .ZN(n192) );
  OAI21D0BWP12T30P140 U169 ( .A1(n96), .A2(n128), .B(pcmright[3]), .ZN(n71) );
  OAI21D0BWP12T30P140 U170 ( .A1(n96), .A2(n130), .B(n71), .ZN(n208) );
  ND3D0BWP12T30P140 U171 ( .A1(n73), .A2(n72), .A3(bitcounter[3]), .ZN(n102)
         );
  OAI21D0BWP12T30P140 U172 ( .A1(n102), .A2(n241), .B(addr[11]), .ZN(n74) );
  OAI21D0BWP12T30P140 U173 ( .A1(n102), .A2(n243), .B(n74), .ZN(n225) );
  OAI21D0BWP12T30P140 U174 ( .A1(n96), .A2(n241), .B(addr[7]), .ZN(n75) );
  OAI21D0BWP12T30P140 U175 ( .A1(n96), .A2(n243), .B(n75), .ZN(n229) );
  OAI21D0BWP12T30P140 U176 ( .A1(n102), .A2(n131), .B(pcmleft[19]), .ZN(n76)
         );
  OAI21D0BWP12T30P140 U177 ( .A1(n102), .A2(n133), .B(n76), .ZN(n172) );
  OAI21D0BWP12T30P140 U178 ( .A1(n102), .A2(n128), .B(pcmright[7]), .ZN(n77)
         );
  OAI21D0BWP12T30P140 U179 ( .A1(n102), .A2(n130), .B(n77), .ZN(n204) );
  OAI21D0BWP12T30P140 U180 ( .A1(n102), .A2(n142), .B(pcmleft[3]), .ZN(n78) );
  OAI21D0BWP12T30P140 U181 ( .A1(n102), .A2(n239), .B(n78), .ZN(n188) );
  OAI211D0BWP12T30P140 U182 ( .A1(n80), .A2(n79), .B(n250), .C(n257), .ZN(n81)
         );
  OAI21D0BWP12T30P140 U183 ( .A1(n82), .A2(n245), .B(n81), .ZN(n170) );
  ND2D0BWP12T30P140 U184 ( .A1(n84), .A2(n83), .ZN(n240) );
  OAI21D0BWP12T30P140 U185 ( .A1(n240), .A2(n131), .B(data[4]), .ZN(n85) );
  OAI21D0BWP12T30P140 U186 ( .A1(n240), .A2(n133), .B(n85), .ZN(n147) );
  OAI21D0BWP12T30P140 U187 ( .A1(n108), .A2(n131), .B(data[5]), .ZN(n86) );
  OAI21D0BWP12T30P140 U188 ( .A1(n108), .A2(n133), .B(n86), .ZN(n148) );
  OAI21D0BWP12T30P140 U189 ( .A1(n112), .A2(n131), .B(data[6]), .ZN(n87) );
  OAI21D0BWP12T30P140 U190 ( .A1(n112), .A2(n133), .B(n87), .ZN(n149) );
  OAI21D0BWP12T30P140 U191 ( .A1(n110), .A2(n131), .B(data[7]), .ZN(n88) );
  OAI21D0BWP12T30P140 U192 ( .A1(n110), .A2(n133), .B(n88), .ZN(n150) );
  OAI21D0BWP12T30P140 U193 ( .A1(n90), .A2(n120), .B(data[8]), .ZN(n89) );
  OAI21D0BWP12T30P140 U194 ( .A1(n90), .A2(n122), .B(n89), .ZN(n151) );
  OAI21D0BWP12T30P140 U195 ( .A1(n92), .A2(n120), .B(data[9]), .ZN(n91) );
  OAI21D0BWP12T30P140 U196 ( .A1(n92), .A2(n122), .B(n91), .ZN(n152) );
  OAI21D0BWP12T30P140 U197 ( .A1(n94), .A2(n120), .B(data[10]), .ZN(n93) );
  OAI21D0BWP12T30P140 U198 ( .A1(n94), .A2(n122), .B(n93), .ZN(n153) );
  OAI21D0BWP12T30P140 U199 ( .A1(n96), .A2(n120), .B(data[11]), .ZN(n95) );
  OAI21D0BWP12T30P140 U200 ( .A1(n96), .A2(n122), .B(n95), .ZN(n154) );
  OAI21D0BWP12T30P140 U201 ( .A1(n114), .A2(n120), .B(data[12]), .ZN(n97) );
  OAI21D0BWP12T30P140 U202 ( .A1(n114), .A2(n122), .B(n97), .ZN(n155) );
  OAI21D0BWP12T30P140 U203 ( .A1(n99), .A2(n120), .B(data[13]), .ZN(n98) );
  OAI21D0BWP12T30P140 U204 ( .A1(n99), .A2(n122), .B(n98), .ZN(n156) );
  OAI21D0BWP12T30P140 U205 ( .A1(n124), .A2(n120), .B(data[14]), .ZN(n100) );
  OAI21D0BWP12T30P140 U206 ( .A1(n124), .A2(n122), .B(n100), .ZN(n157) );
  OAI21D0BWP12T30P140 U207 ( .A1(n102), .A2(n120), .B(data[15]), .ZN(n101) );
  OAI21D0BWP12T30P140 U208 ( .A1(n102), .A2(n122), .B(n101), .ZN(n158) );
  OAI21D0BWP12T30P140 U209 ( .A1(n244), .A2(n120), .B(data[16]), .ZN(n103) );
  OAI21D0BWP12T30P140 U210 ( .A1(n244), .A2(n122), .B(n103), .ZN(n159) );
  OAI21D0BWP12T30P140 U211 ( .A1(n126), .A2(n120), .B(data[17]), .ZN(n104) );
  OAI21D0BWP12T30P140 U212 ( .A1(n126), .A2(n122), .B(n104), .ZN(n160) );
  OAI21D0BWP12T30P140 U213 ( .A1(n134), .A2(n120), .B(data[18]), .ZN(n105) );
  OAI21D0BWP12T30P140 U214 ( .A1(n134), .A2(n122), .B(n105), .ZN(n161) );
  OAI21D0BWP12T30P140 U215 ( .A1(n116), .A2(n120), .B(data[19]), .ZN(n106) );
  OAI21D0BWP12T30P140 U216 ( .A1(n116), .A2(n122), .B(n106), .ZN(n162) );
  OAI21D0BWP12T30P140 U217 ( .A1(n108), .A2(n139), .B(data_valid), .ZN(n107)
         );
  OAI21D0BWP12T30P140 U218 ( .A1(n108), .A2(n141), .B(n107), .ZN(n214) );
  OAI21D0BWP12T30P140 U219 ( .A1(n110), .A2(n139), .B(frame_valid), .ZN(n109)
         );
  OAI21D0BWP12T30P140 U220 ( .A1(n110), .A2(n141), .B(n109), .ZN(n212) );
  OAI21D0BWP12T30P140 U221 ( .A1(n112), .A2(n139), .B(addr_valid), .ZN(n111)
         );
  OAI21D0BWP12T30P140 U222 ( .A1(n112), .A2(n141), .B(n111), .ZN(n213) );
  OAI21D0BWP12T30P140 U223 ( .A1(n114), .A2(n131), .B(pcmleft[16]), .ZN(n113)
         );
  OAI21D0BWP12T30P140 U224 ( .A1(n114), .A2(n133), .B(n113), .ZN(n175) );
  OAI21D0BWP12T30P140 U225 ( .A1(n116), .A2(n131), .B(data[3]), .ZN(n115) );
  OAI21D0BWP12T30P140 U226 ( .A1(n116), .A2(n133), .B(n115), .ZN(n146) );
  OAI21D0BWP12T30P140 U227 ( .A1(n244), .A2(n142), .B(pcmleft[4]), .ZN(n117)
         );
  OAI21D0BWP12T30P140 U228 ( .A1(n244), .A2(n239), .B(n117), .ZN(n187) );
  OAI21D0BWP12T30P140 U229 ( .A1(n124), .A2(n128), .B(pcmright[6]), .ZN(n118)
         );
  OAI21D0BWP12T30P140 U230 ( .A1(n124), .A2(n130), .B(n118), .ZN(n205) );
  OAI21D0BWP12T30P140 U231 ( .A1(n244), .A2(n131), .B(data[0]), .ZN(n119) );
  OAI21D0BWP12T30P140 U232 ( .A1(n244), .A2(n133), .B(n119), .ZN(n143) );
  OAI21D0BWP12T30P140 U233 ( .A1(n240), .A2(n120), .B(addr[0]), .ZN(n121) );
  OAI21D0BWP12T30P140 U234 ( .A1(n240), .A2(n122), .B(n121), .ZN(n236) );
  OAI21D0BWP12T30P140 U235 ( .A1(n124), .A2(n241), .B(addr[10]), .ZN(n123) );
  OAI21D0BWP12T30P140 U236 ( .A1(n124), .A2(n243), .B(n123), .ZN(n226) );
  OAI21D0BWP12T30P140 U237 ( .A1(n126), .A2(n131), .B(data[1]), .ZN(n125) );
  OAI21D0BWP12T30P140 U238 ( .A1(n126), .A2(n133), .B(n125), .ZN(n144) );
  OAI21D0BWP12T30P140 U239 ( .A1(n244), .A2(n128), .B(pcmright[8]), .ZN(n127)
         );
  OAI21D0BWP12T30P140 U240 ( .A1(n244), .A2(n130), .B(n127), .ZN(n203) );
  OAI21D0BWP12T30P140 U241 ( .A1(n240), .A2(n128), .B(pcmright[12]), .ZN(n129)
         );
  OAI21D0BWP12T30P140 U242 ( .A1(n240), .A2(n130), .B(n129), .ZN(n199) );
  OAI21D0BWP12T30P140 U243 ( .A1(n134), .A2(n131), .B(data[2]), .ZN(n132) );
  OAI21D0BWP12T30P140 U244 ( .A1(n134), .A2(n133), .B(n132), .ZN(n145) );
  OAI21D0BWP12T30P140 U245 ( .A1(n240), .A2(n241), .B(addr[16]), .ZN(n135) );
  OAI21D0BWP12T30P140 U246 ( .A1(n240), .A2(n243), .B(n135), .ZN(n220) );
  NR2D0BWP12T30P140 U247 ( .A1(sys_rst), .A2(n136), .ZN(n137) );
  MOAI22D0BWP12T30P140 U248 ( .A1(n245), .A2(n138), .B1(up_sync), .B2(n137), 
        .ZN(n171) );
  OAI21D0BWP12T30P140 U249 ( .A1(n240), .A2(n139), .B(pcmleft_valid), .ZN(n140) );
  OAI21D0BWP12T30P140 U250 ( .A1(n240), .A2(n141), .B(n140), .ZN(n215) );
  OAI21D0BWP12T30P140 U251 ( .A1(n240), .A2(n142), .B(pcmleft[8]), .ZN(n238)
         );
  OAI21D0BWP12T30P140 U252 ( .A1(n240), .A2(n239), .B(n238), .ZN(n183) );
  OAI21D0BWP12T30P140 U253 ( .A1(n244), .A2(n241), .B(addr[12]), .ZN(n242) );
  OAI21D0BWP12T30P140 U254 ( .A1(n244), .A2(n243), .B(n242), .ZN(n224) );
  CKBD0BWP12T30P140 U255 ( .I(sys_clk), .Z(n264) );
  CKBD0BWP12T30P140 U256 ( .I(sys_clk), .Z(n260) );
  CKBD0BWP12T30P140 U257 ( .I(sys_clk), .Z(n261) );
  CKBD0BWP12T30P140 U258 ( .I(sys_clk), .Z(n263) );
  CKBD0BWP12T30P140 U259 ( .I(sys_clk), .Z(n262) );
  OAI21D0BWP12T30P140 U260 ( .A1(n248), .A2(n246), .B(n245), .ZN(n247) );
  AOI32D0BWP12T30P140 U261 ( .A1(n250), .A2(n249), .A3(n248), .B1(
        bitcounter[4]), .B2(n247), .ZN(n251) );
  ND2D0BWP12T30P140 U262 ( .A1(n251), .A2(n257), .ZN(n167) );
  INVD0BWP12T30P140 U263 ( .I(en), .ZN(n253) );
  AO31D0BWP12T30P140 U264 ( .A1(next_frame), .A2(n257), .A3(n253), .B(n252), 
        .Z(n163) );
  AOI32D0BWP12T30P140 U265 ( .A1(bitcounter[5]), .A2(n256), .A3(n255), .B1(
        bitcounter[6]), .B2(n254), .ZN(n258) );
  ND2D0BWP12T30P140 U266 ( .A1(n258), .A2(n257), .ZN(n165) );
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
  wire   dmar_finished_r, N19, dmaw_finished_r, N20, request_en, request_write,
         N550, N551, N552, N553, N554, N555, N556, N557, N558, N559, N560,
         N561, N562, N563, N564, N565, N566, N567, N568, N569, N570, N571,
         N572, N573, N574, N575, N576, N577, N578, N579, N580, N581, N704,
         N705, N706, N708, n145, n146, n147, n148, n149, n150, n151, n152,
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

  DFQD2BWP12T30P140 crreply_irq_reg ( .D(N708), .CP(n656), .Q(crreply_irq) );
  DFQD2BWP12T30P140 crrequest_irq_reg ( .D(N704), .CP(n657), .Q(crrequest_irq)
         );
  DFQD2BWP12T30P140 dmar_irq_reg ( .D(N705), .CP(n656), .Q(dmar_irq) );
  DFQD2BWP12T30P140 csr_do_reg_31_ ( .D(N581), .CP(n650), .Q(csr_do[31]) );
  DFQD2BWP12T30P140 csr_do_reg_30_ ( .D(N580), .CP(n653), .Q(csr_do[30]) );
  DFQD2BWP12T30P140 csr_do_reg_29_ ( .D(N579), .CP(n655), .Q(csr_do[29]) );
  DFQD2BWP12T30P140 csr_do_reg_28_ ( .D(N578), .CP(n657), .Q(csr_do[28]) );
  DFQD2BWP12T30P140 csr_do_reg_27_ ( .D(N577), .CP(n656), .Q(csr_do[27]) );
  DFQD2BWP12T30P140 csr_do_reg_25_ ( .D(N575), .CP(n650), .Q(csr_do[25]) );
  DFQD2BWP12T30P140 csr_do_reg_24_ ( .D(N574), .CP(n649), .Q(csr_do[24]) );
  DFQD2BWP12T30P140 csr_do_reg_23_ ( .D(N573), .CP(n651), .Q(csr_do[23]) );
  DFQD2BWP12T30P140 csr_do_reg_22_ ( .D(N572), .CP(n652), .Q(csr_do[22]) );
  DFQD2BWP12T30P140 csr_do_reg_21_ ( .D(N571), .CP(n654), .Q(csr_do[21]) );
  DFQD2BWP12T30P140 csr_do_reg_20_ ( .D(N570), .CP(n653), .Q(csr_do[20]) );
  DFQD2BWP12T30P140 csr_do_reg_19_ ( .D(N569), .CP(n655), .Q(csr_do[19]) );
  DFQD2BWP12T30P140 csr_do_reg_18_ ( .D(N568), .CP(n655), .Q(csr_do[18]) );
  DFQD2BWP12T30P140 csr_do_reg_17_ ( .D(N567), .CP(n653), .Q(csr_do[17]) );
  DFQD2BWP12T30P140 csr_do_reg_16_ ( .D(N566), .CP(n652), .Q(csr_do[16]) );
  DFQD2BWP12T30P140 dmaw_irq_reg ( .D(N706), .CP(n651), .Q(dmaw_irq) );
  DFQD2BWP12T30P140 csr_do_reg_15_ ( .D(N565), .CP(n651), .Q(csr_do[15]) );
  DFQD2BWP12T30P140 csr_do_reg_14_ ( .D(N564), .CP(n651), .Q(csr_do[14]) );
  DFQD2BWP12T30P140 csr_do_reg_13_ ( .D(N563), .CP(n651), .Q(csr_do[13]) );
  DFQD2BWP12T30P140 csr_do_reg_11_ ( .D(N561), .CP(n650), .Q(csr_do[11]) );
  DFQD2BWP12T30P140 csr_do_reg_10_ ( .D(N560), .CP(n650), .Q(csr_do[10]) );
  DFQD2BWP12T30P140 csr_do_reg_9_ ( .D(N559), .CP(n650), .Q(csr_do[9]) );
  DFQD2BWP12T30P140 csr_do_reg_8_ ( .D(N558), .CP(n650), .Q(csr_do[8]) );
  DFQD2BWP12T30P140 csr_do_reg_7_ ( .D(N557), .CP(n650), .Q(csr_do[7]) );
  DFQD2BWP12T30P140 csr_do_reg_6_ ( .D(N556), .CP(n649), .Q(csr_do[6]) );
  DFQD2BWP12T30P140 csr_do_reg_5_ ( .D(N555), .CP(n649), .Q(csr_do[5]) );
  DFQD2BWP12T30P140 csr_do_reg_4_ ( .D(N554), .CP(n649), .Q(csr_do[4]) );
  DFQD2BWP12T30P140 csr_do_reg_3_ ( .D(N553), .CP(n649), .Q(csr_do[3]) );
  DFQD2BWP12T30P140 csr_do_reg_2_ ( .D(N552), .CP(n649), .Q(csr_do[2]) );
  DFQD2BWP12T30P140 csr_do_reg_1_ ( .D(N551), .CP(n649), .Q(csr_do[1]) );
  DFQD2BWP12T30P140 csr_do_reg_0_ ( .D(N550), .CP(n648), .Q(csr_do[0]) );
  DFQD2BWP12T30P140 request_addr_reg_5_ ( .D(n164), .CP(sys_clk), .Q(
        request_addr[5]) );
  DFQD2BWP12T30P140 dmar_finished_r_reg ( .D(N19), .CP(n649), .Q(
        dmar_finished_r) );
  DFQD2BWP12T30P140 dmar_addr_reg_8_ ( .D(n220), .CP(sys_clk), .Q(dmar_addr[8]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_12_ ( .D(n232), .CP(sys_clk), .Q(
        dmar_remaining[12]) );
  DFQD2BWP12T30P140 down_addr_valid_reg ( .D(n198), .CP(n655), .Q(
        down_addr_valid) );
  DFQD2BWP12T30P140 down_data_reg_19_ ( .D(n179), .CP(n655), .Q(down_data[19])
         );
  DFQD2BWP12T30P140 down_data_reg_14_ ( .D(n189), .CP(n654), .Q(down_data[14])
         );
  DFQD2BWP12T30P140 down_data_reg_10_ ( .D(n159), .CP(n654), .Q(down_data[10])
         );
  DFQD2BWP12T30P140 request_data_reg_15_ ( .D(n180), .CP(n655), .Q(
        request_data[15]) );
  DFQD2BWP12T30P140 request_data_reg_10_ ( .D(n190), .CP(n654), .Q(
        request_data[10]) );
  DFQD2BWP12T30P140 request_data_reg_6_ ( .D(n160), .CP(n654), .Q(
        request_data[6]) );
  DFQD2BWP12T30P140 down_data_valid_reg ( .D(n197), .CP(n653), .Q(
        down_data_valid) );
  DFQD2BWP12T30P140 dmar_remaining_reg_14_ ( .D(n230), .CP(sys_clk), .Q(
        dmar_remaining[14]) );
  DFQD2BWP12T30P140 down_addr_reg_15_ ( .D(n149), .CP(n648), .Q(down_addr[15])
         );
  DFQD2BWP12T30P140 down_addr_reg_12_ ( .D(n146), .CP(n648), .Q(down_addr[12])
         );
  DFQD2BWP12T30P140 down_data_reg_16_ ( .D(n185), .CP(n655), .Q(down_data[16])
         );
  DFQD2BWP12T30P140 down_data_reg_12_ ( .D(n193), .CP(n654), .Q(down_data[12])
         );
  DFQD2BWP12T30P140 down_data_reg_11_ ( .D(n195), .CP(n654), .Q(down_data[11])
         );
  DFQD2BWP12T30P140 down_data_reg_9_ ( .D(n162), .CP(n654), .Q(down_data[9])
         );
  DFQD2BWP12T30P140 down_data_reg_8_ ( .D(n165), .CP(n653), .Q(down_data[8])
         );
  DFQD2BWP12T30P140 request_en_reg ( .D(n154), .CP(n654), .Q(request_en) );
  DFQD2BWP12T30P140 down_data_reg_18_ ( .D(n181), .CP(n655), .Q(down_data[18])
         );
  DFQD2BWP12T30P140 down_data_reg_17_ ( .D(n183), .CP(n655), .Q(down_data[17])
         );
  DFQD2BWP12T30P140 down_data_reg_15_ ( .D(n187), .CP(n655), .Q(down_data[15])
         );
  DFQD2BWP12T30P140 down_data_reg_7_ ( .D(n168), .CP(n653), .Q(down_data[7])
         );
  DFQD2BWP12T30P140 down_data_reg_6_ ( .D(n171), .CP(n653), .Q(down_data[6])
         );
  DFQD2BWP12T30P140 down_data_reg_5_ ( .D(n156), .CP(n653), .Q(down_data[5])
         );
  DFQD2BWP12T30P140 down_data_reg_4_ ( .D(n174), .CP(n653), .Q(down_data[4])
         );
  DFQD2BWP12T30P140 reply_data_reg_2_ ( .D(n292), .CP(n649), .Q(reply_data[2])
         );
  DFQD2BWP12T30P140 down_addr_reg_19_ ( .D(n153), .CP(n648), .Q(down_addr[19])
         );
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
  DFQD2BWP12T30P140 reply_data_reg_4_ ( .D(n294), .CP(n649), .Q(reply_data[4])
         );
  DFQD2BWP12T30P140 reply_data_reg_3_ ( .D(n293), .CP(n649), .Q(reply_data[3])
         );
  DFQD2BWP12T30P140 reply_data_reg_1_ ( .D(n291), .CP(n649), .Q(reply_data[1])
         );
  DFQD2BWP12T30P140 reply_data_reg_0_ ( .D(n306), .CP(n648), .Q(reply_data[0])
         );
  DFQD2BWP12T30P140 down_addr_reg_17_ ( .D(n151), .CP(n648), .Q(down_addr[17])
         );
  DFQD2BWP12T30P140 down_addr_reg_16_ ( .D(n150), .CP(n648), .Q(down_addr[16])
         );
  DFQD2BWP12T30P140 down_addr_reg_14_ ( .D(n148), .CP(n648), .Q(down_addr[14])
         );
  DFQD2BWP12T30P140 down_addr_reg_13_ ( .D(n147), .CP(n648), .Q(down_addr[13])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_10_ ( .D(n234), .CP(sys_clk), .Q(
        dmar_remaining[10]) );
  DFQD2BWP12T30P140 dmar_addr_reg_7_ ( .D(n221), .CP(sys_clk), .Q(dmar_addr[7]) );
  DFQD2BWP12T30P140 request_addr_reg_1_ ( .D(n155), .CP(n654), .Q(
        request_addr[1]) );
  DFQD2BWP12T30P140 request_addr_reg_0_ ( .D(n178), .CP(n653), .Q(
        request_addr[0]) );
  DFQD2BWP12T30P140 request_addr_reg_2_ ( .D(n173), .CP(n652), .Q(
        request_addr[2]) );
  DFQD2BWP12T30P140 request_data_reg_2_ ( .D(n172), .CP(n653), .Q(
        request_data[2]) );
  DFQD2BWP12T30P140 request_addr_reg_6_ ( .D(n161), .CP(n650), .Q(
        request_addr[6]) );
  DFQD2BWP12T30P140 request_addr_reg_4_ ( .D(n167), .CP(n649), .Q(
        request_addr[4]) );
  DFQD2BWP12T30P140 request_addr_reg_3_ ( .D(n170), .CP(n651), .Q(
        request_addr[3]) );
  DFQD2BWP12T30P140 request_data_reg_5_ ( .D(n163), .CP(n654), .Q(
        request_data[5]) );
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
  DFQD2BWP12T30P140 dmar_addr_reg_24_ ( .D(n204), .CP(n657), .Q(dmar_addr[24])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_20_ ( .D(n208), .CP(n656), .Q(dmar_addr[20])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_16_ ( .D(n212), .CP(n656), .Q(dmar_addr[16])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_27_ ( .D(n201), .CP(n657), .Q(dmar_addr[27])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_24_ ( .D(n250), .CP(n651), .Q(dmaw_addr[24])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_20_ ( .D(n254), .CP(n655), .Q(dmaw_addr[20])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_16_ ( .D(n258), .CP(n648), .Q(dmaw_addr[16])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_29_ ( .D(n199), .CP(n657), .Q(dmar_addr[29])
         );
  DFQD2BWP12T30P140 request_write_reg ( .D(n158), .CP(n648), .Q(request_write)
         );
  DFQD2BWP12T30P140 dmar_addr_reg_4_ ( .D(n224), .CP(n657), .Q(dmar_addr[4])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_27_ ( .D(n247), .CP(n648), .Q(dmaw_addr[27])
         );
  DFQD2BWP12T30P140 dmar_remaining_reg_11_ ( .D(n233), .CP(sys_clk), .Q(
        dmar_remaining[11]) );
  DFQD2BWP12T30P140 dmar_addr_reg_28_ ( .D(n200), .CP(n657), .Q(dmar_addr[28])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_23_ ( .D(n205), .CP(n657), .Q(dmar_addr[23])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_19_ ( .D(n209), .CP(n656), .Q(dmar_addr[19])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_8_ ( .D(n266), .CP(n652), .Q(dmaw_addr[8])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_4_ ( .D(n270), .CP(n651), .Q(dmaw_addr[4])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_28_ ( .D(n246), .CP(n656), .Q(dmaw_addr[28])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_19_ ( .D(n255), .CP(n651), .Q(dmaw_addr[19])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_12_ ( .D(n278), .CP(n652), .Q(
        dmaw_remaining[12]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_0_ ( .D(n244), .CP(n655), .Q(
        dmar_remaining[0]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_13_ ( .D(n231), .CP(sys_clk), .Q(
        dmar_remaining[13]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_14_ ( .D(n276), .CP(n652), .Q(
        dmaw_remaining[14]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_2_ ( .D(n288), .CP(n651), .Q(
        dmaw_remaining[2]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_15_ ( .D(n275), .CP(n653), .Q(
        dmaw_remaining[15]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_2_ ( .D(n242), .CP(n654), .Q(
        dmar_remaining[2]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_15_ ( .D(n229), .CP(n655), .Q(
        dmar_remaining[15]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_10_ ( .D(n280), .CP(n652), .Q(
        dmaw_remaining[10]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_6_ ( .D(n284), .CP(n652), .Q(
        dmaw_remaining[6]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_6_ ( .D(n238), .CP(n650), .Q(
        dmar_remaining[6]) );
  DFQD2BWP12T30P140 dmar_addr_reg_9_ ( .D(n219), .CP(sys_clk), .Q(dmar_addr[9]) );
  DFQD2BWP12T30P140 dmar_addr_reg_5_ ( .D(n223), .CP(sys_clk), .Q(dmar_addr[5]) );
  DFQD2BWP12T30P140 dmar_addr_reg_10_ ( .D(n218), .CP(n656), .Q(dmar_addr[10])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_6_ ( .D(n222), .CP(n657), .Q(dmar_addr[6])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_14_ ( .D(n260), .CP(n649), .Q(dmaw_addr[14])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_10_ ( .D(n264), .CP(n653), .Q(dmaw_addr[10])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_6_ ( .D(n268), .CP(n650), .Q(dmaw_addr[6])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_26_ ( .D(n248), .CP(n650), .Q(dmaw_addr[26])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_22_ ( .D(n252), .CP(n654), .Q(dmaw_addr[22])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_18_ ( .D(n256), .CP(n657), .Q(dmaw_addr[18])
         );
  DFQD2BWP12T30P140 dmaw_en_reg ( .D(n177), .CP(n657), .Q(dmaw_en) );
  DFQD2BWP12T30P140 dmar_addr_reg_2_ ( .D(n226), .CP(n657), .Q(dmar_addr[2])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_26_ ( .D(n202), .CP(n657), .Q(dmar_addr[26])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_22_ ( .D(n206), .CP(n657), .Q(dmar_addr[22])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_18_ ( .D(n210), .CP(n656), .Q(dmar_addr[18])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_3_ ( .D(n225), .CP(n657), .Q(dmar_addr[3])
         );
  DFQD2BWP12T30P140 dmar_en_reg ( .D(n176), .CP(n648), .Q(dmar_en) );
  DFQD2BWP12T30P140 dmaw_addr_reg_7_ ( .D(n267), .CP(n648), .Q(dmaw_addr[7])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_3_ ( .D(n271), .CP(n652), .Q(dmaw_addr[3])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_12_ ( .D(n216), .CP(n656), .Q(dmar_addr[12])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_12_ ( .D(n262), .CP(n652), .Q(dmaw_addr[12])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_15_ ( .D(n213), .CP(n656), .Q(dmar_addr[15])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_11_ ( .D(n217), .CP(n656), .Q(dmar_addr[11])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_15_ ( .D(n259), .CP(n650), .Q(dmaw_addr[15])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_11_ ( .D(n263), .CP(n654), .Q(dmaw_addr[11])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_0_ ( .D(n290), .CP(n651), .Q(
        dmaw_remaining[0]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_8_ ( .D(n282), .CP(n652), .Q(
        dmaw_remaining[8]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_4_ ( .D(n286), .CP(n652), .Q(
        dmaw_remaining[4]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_8_ ( .D(n236), .CP(n656), .Q(
        dmar_remaining[8]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_4_ ( .D(n240), .CP(n651), .Q(
        dmar_remaining[4]) );
  DFQD2BWP12T30P140 dmar_addr_reg_21_ ( .D(n207), .CP(n656), .Q(dmar_addr[21])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_17_ ( .D(n211), .CP(n656), .Q(dmar_addr[17])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_25_ ( .D(n249), .CP(n649), .Q(dmaw_addr[25])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_21_ ( .D(n253), .CP(n653), .Q(dmaw_addr[21])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_17_ ( .D(n257), .CP(n656), .Q(dmaw_addr[17])
         );
  DFQD2BWP12T30P140 dmaw_remaining_reg_7_ ( .D(n283), .CP(n652), .Q(
        dmaw_remaining[7]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_3_ ( .D(n287), .CP(n651), .Q(
        dmaw_remaining[3]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_7_ ( .D(n237), .CP(n648), .Q(
        dmar_remaining[7]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_3_ ( .D(n241), .CP(n652), .Q(
        dmar_remaining[3]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_11_ ( .D(n279), .CP(n652), .Q(
        dmaw_remaining[11]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_1_ ( .D(n289), .CP(n651), .Q(
        dmaw_remaining[1]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_1_ ( .D(n243), .CP(n653), .Q(
        dmar_remaining[1]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_13_ ( .D(n277), .CP(n652), .Q(
        dmaw_remaining[13]) );
  DFQD2BWP12T30P140 dmaw_remaining_reg_9_ ( .D(n281), .CP(n652), .Q(
        dmaw_remaining[9]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_9_ ( .D(n235), .CP(n657), .Q(
        dmar_remaining[9]) );
  DFQD2BWP12T30P140 dmar_remaining_reg_5_ ( .D(n239), .CP(n649), .Q(
        dmar_remaining[5]) );
  DFQD2BWP12T30P140 dmar_addr_reg_1_ ( .D(n227), .CP(n657), .Q(dmar_addr[1])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_1_ ( .D(n273), .CP(n653), .Q(dmaw_addr[1])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_13_ ( .D(n215), .CP(n656), .Q(dmar_addr[13])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_13_ ( .D(n261), .CP(n651), .Q(dmaw_addr[13])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_9_ ( .D(n265), .CP(n655), .Q(dmaw_addr[9])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_5_ ( .D(n269), .CP(n649), .Q(dmaw_addr[5])
         );
  DFQD2BWP12T30P140 dmaw_addr_reg_0_ ( .D(n274), .CP(n655), .Q(dmaw_addr[0])
         );
  DFQD2BWP12T30P140 dmar_addr_reg_0_ ( .D(n228), .CP(n656), .Q(dmar_addr[0])
         );
  DFQD2BWP12T30P140 down_addr_reg_0_ ( .D(n145), .CP(n648), .Q(down_data[1])
         );
  DFQD1BWP12T30P140 csr_do_reg_26_ ( .D(N576), .CP(n648), .Q(csr_do[26]) );
  DFQD1BWP12T30P140 csr_do_reg_12_ ( .D(N562), .CP(n650), .Q(csr_do[12]) );
  DFQD1BWP12T30P140 dmaw_finished_r_reg ( .D(N20), .CP(n651), .Q(
        dmaw_finished_r) );
  DFQD1BWP12T30P140 down_data_reg_13_ ( .D(n191), .CP(n654), .Q(down_data[13])
         );
  DFQD1BWP12T30P140 reply_data_reg_15_ ( .D(n305), .CP(n651), .Q(
        reply_data[15]) );
  DFQD1BWP12T30P140 down_addr_reg_18_ ( .D(n152), .CP(n648), .Q(down_addr[18])
         );
  DFQD1BWP12T30P140 request_data_reg_4_ ( .D(n166), .CP(n653), .Q(
        request_data[4]) );
  DFQD1BWP12T30P140 dmaw_addr_reg_29_ ( .D(n245), .CP(n657), .Q(dmaw_addr[29])
         );
  DFQD1BWP12T30P140 dmaw_addr_reg_23_ ( .D(n251), .CP(n652), .Q(dmaw_addr[23])
         );
  DFQD1BWP12T30P140 dmar_addr_reg_14_ ( .D(n214), .CP(n656), .Q(dmar_addr[14])
         );
  DFQD1BWP12T30P140 dmaw_addr_reg_2_ ( .D(n272), .CP(n654), .Q(dmaw_addr[2])
         );
  DFQD1BWP12T30P140 dmar_addr_reg_25_ ( .D(n203), .CP(n657), .Q(dmar_addr[25])
         );
  DFQD1BWP12T30P140 dmaw_remaining_reg_5_ ( .D(n285), .CP(n652), .Q(
        dmaw_remaining[5]) );
  AOI32D0BWP12T30P140 U3 ( .A1(n475), .A2(n564), .A3(dmar_addr[25]), .B1(n591), 
        .B2(n564), .ZN(n405) );
  AOI32D0BWP12T30P140 U4 ( .A1(n487), .A2(n580), .A3(dmaw_addr[25]), .B1(n588), 
        .B2(n580), .ZN(n389) );
  AOI32D0BWP12T30P140 U5 ( .A1(n491), .A2(n580), .A3(dmaw_addr[21]), .B1(n588), 
        .B2(n580), .ZN(n392) );
  AOI32D0BWP12T30P140 U6 ( .A1(n565), .A2(n564), .A3(dmar_addr[13]), .B1(n602), 
        .B2(n564), .ZN(n367) );
  AOI32D0BWP12T30P140 U7 ( .A1(n571), .A2(n580), .A3(dmaw_addr[13]), .B1(n575), 
        .B2(n580), .ZN(n380) );
  AOI32D0BWP12T30P140 U8 ( .A1(dmar_addr[1]), .A2(n564), .A3(dmar_addr[0]), 
        .B1(n602), .B2(n564), .ZN(n402) );
  INVD0BWP12T30P140 U9 ( .I(n89), .ZN(n1) );
  INVD0BWP12T30P140 U10 ( .I(n589), .ZN(n2) );
  INVD0BWP12T30P140 U11 ( .I(n586), .ZN(n3) );
  INVD0BWP12T30P140 U12 ( .I(down_data[1]), .ZN(n4) );
  INVD0BWP12T30P140 U13 ( .I(n4), .ZN(down_data[2]) );
  INVD0BWP12T30P140 U14 ( .I(n4), .ZN(down_data[3]) );
  INVD0BWP12T30P140 U15 ( .I(n4), .ZN(down_addr[0]) );
  INVD0BWP12T30P140 U16 ( .I(n4), .ZN(down_addr[1]) );
  INVD0BWP12T30P140 U17 ( .I(n4), .ZN(down_addr[2]) );
  INVD0BWP12T30P140 U18 ( .I(n4), .ZN(down_addr[3]) );
  INVD0BWP12T30P140 U19 ( .I(n4), .ZN(down_addr[4]) );
  INVD0BWP12T30P140 U20 ( .I(n4), .ZN(down_addr[5]) );
  INVD0BWP12T30P140 U21 ( .I(n4), .ZN(down_addr[6]) );
  INVD0BWP12T30P140 U22 ( .I(n4), .ZN(down_addr[7]) );
  INVD0BWP12T30P140 U23 ( .I(n4), .ZN(down_addr[8]) );
  INVD0BWP12T30P140 U24 ( .I(n4), .ZN(down_addr[9]) );
  INVD0BWP12T30P140 U25 ( .I(n4), .ZN(down_addr[10]) );
  INVD0BWP12T30P140 U26 ( .I(n4), .ZN(down_addr[11]) );
  INVD0BWP12T30P140 U27 ( .I(n4), .ZN(down_data[0]) );
  ND2D0BWP12T30P140 U28 ( .A1(down_en), .A2(down_next_frame), .ZN(n7) );
  INVD0BWP12T30P140 U29 ( .I(sys_rst), .ZN(n611) );
  INVD0BWP12T30P140 U30 ( .I(n611), .ZN(n632) );
  OR2D0BWP12T30P140 U31 ( .A1(n7), .A2(n632), .Z(n593) );
  CKBD0BWP12T30P140 U32 ( .I(n593), .Z(n600) );
  INVD0BWP12T30P140 U33 ( .I(n593), .ZN(n592) );
  OA22D0BWP12T30P140 U34 ( .A1(n600), .A2(request_data[7]), .B1(down_data[11]), 
        .B2(n592), .Z(n195) );
  INVD0BWP12T30P140 U35 ( .I(n593), .ZN(n599) );
  OA22D0BWP12T30P140 U36 ( .A1(n600), .A2(request_data[8]), .B1(down_data[12]), 
        .B2(n599), .Z(n193) );
  OA22D0BWP12T30P140 U37 ( .A1(n600), .A2(request_data[9]), .B1(down_data[13]), 
        .B2(n599), .Z(n191) );
  OA22D0BWP12T30P140 U38 ( .A1(n600), .A2(request_data[12]), .B1(down_data[16]), .B2(n599), .Z(n185) );
  OA22D0BWP12T30P140 U39 ( .A1(n593), .A2(request_addr[0]), .B1(down_addr[12]), 
        .B2(n599), .Z(n146) );
  OA22D0BWP12T30P140 U40 ( .A1(n600), .A2(request_addr[3]), .B1(down_addr[15]), 
        .B2(n592), .Z(n149) );
  NR4D0BWP12T30P140 U41 ( .A1(csr_a[10]), .A2(csr_a[11]), .A3(csr_a[12]), .A4(
        csr_a[13]), .ZN(n20) );
  AN2D0BWP12T30P140 U42 ( .A1(n20), .A2(csr_we), .Z(n113) );
  INR2D1BWP12T30P140 U43 ( .A1(csr_a[2]), .B1(csr_a[3]), .ZN(n37) );
  ND2D0BWP12T30P140 U44 ( .A1(n113), .A2(n37), .ZN(n423) );
  INVD0BWP12T30P140 U45 ( .I(csr_a[1]), .ZN(n22) );
  NR2D0BWP12T30P140 U46 ( .A1(n22), .A2(csr_a[0]), .ZN(n8) );
  INVD0BWP12T30P140 U47 ( .I(n8), .ZN(n311) );
  OAI211D0BWP12T30P140 U48 ( .A1(n423), .A2(n311), .B(dmar_next), .C(n611), 
        .ZN(n532) );
  INVD0BWP12T30P140 U49 ( .I(n532), .ZN(n472) );
  NR3D0BWP12T30P140 U50 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), .A3(
        dmar_remaining[2]), .ZN(n471) );
  INVD0BWP12T30P140 U51 ( .I(n471), .ZN(n520) );
  NR3D0BWP12T30P140 U52 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[3]), .A3(
        n520), .ZN(n553) );
  INR3D1BWP12T30P140 U53 ( .A1(n553), .B1(dmar_remaining[6]), .B2(
        dmar_remaining[5]), .ZN(n466) );
  INVD0BWP12T30P140 U54 ( .I(n466), .ZN(n513) );
  NR3D0BWP12T30P140 U55 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[7]), .A3(
        n513), .ZN(n548) );
  INR3D1BWP12T30P140 U56 ( .A1(n548), .B1(dmar_remaining[10]), .B2(
        dmar_remaining[9]), .ZN(n91) );
  INVD0BWP12T30P140 U57 ( .I(n91), .ZN(n517) );
  NR3D0BWP12T30P140 U58 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[11]), 
        .A3(n517), .ZN(n5) );
  OAI21D0BWP12T30P140 U59 ( .A1(n423), .A2(n311), .B(n611), .ZN(n552) );
  OR2D0BWP12T30P140 U60 ( .A1(dmar_next), .A2(n552), .Z(n315) );
  OAI21D0BWP12T30P140 U61 ( .A1(n5), .A2(n532), .B(n315), .ZN(n322) );
  AOI21D0BWP12T30P140 U62 ( .A1(n472), .A2(dmar_remaining[13]), .B(n322), .ZN(
        n340) );
  INVD0BWP12T30P140 U63 ( .I(dmar_remaining[14]), .ZN(n341) );
  NR3D0BWP12T30P140 U64 ( .A1(n632), .A2(n423), .A3(n311), .ZN(n554) );
  INVD0BWP12T30P140 U65 ( .I(n5), .ZN(n342) );
  NR3D0BWP12T30P140 U66 ( .A1(dmar_remaining[13]), .A2(n532), .A3(n342), .ZN(
        n321) );
  AOI22D0BWP12T30P140 U67 ( .A1(csr_di[16]), .A2(n554), .B1(n321), .B2(n341), 
        .ZN(n6) );
  OAI21D0BWP12T30P140 U68 ( .A1(n340), .A2(n341), .B(n6), .ZN(n230) );
  INVD0BWP12T30P140 U69 ( .I(request_en), .ZN(n597) );
  NR2D0BWP12T30P140 U70 ( .A1(n597), .A2(n600), .ZN(N704) );
  ND2D0BWP12T30P140 U71 ( .A1(n611), .A2(n7), .ZN(n596) );
  INVD0BWP12T30P140 U72 ( .I(n596), .ZN(n13) );
  AO22D0BWP12T30P140 U73 ( .A1(request_write), .A2(N704), .B1(n13), .B2(
        down_data_valid), .Z(n197) );
  INVD0BWP12T30P140 U74 ( .I(csr_di[6]), .ZN(n607) );
  NR2D0BWP12T30P140 U75 ( .A1(csr_a[2]), .A2(csr_a[3]), .ZN(n94) );
  AOI31D0BWP12T30P140 U76 ( .A1(n113), .A2(n8), .A3(n94), .B(n632), .ZN(n469)
         );
  INVD0BWP12T30P140 U77 ( .I(n469), .ZN(n9) );
  ND2D0BWP12T30P140 U78 ( .A1(n611), .A2(n9), .ZN(n418) );
  INVD0BWP12T30P140 U79 ( .I(request_data[6]), .ZN(n10) );
  OAI22D0BWP12T30P140 U80 ( .A1(n607), .A2(n418), .B1(n10), .B2(n9), .ZN(n160)
         );
  INVD0BWP12T30P140 U81 ( .I(csr_di[10]), .ZN(n468) );
  INVD0BWP12T30P140 U82 ( .I(request_data[10]), .ZN(n11) );
  OAI22D0BWP12T30P140 U83 ( .A1(n468), .A2(n418), .B1(n9), .B2(n11), .ZN(n190)
         );
  INVD0BWP12T30P140 U84 ( .I(csr_di[15]), .ZN(n536) );
  INVD0BWP12T30P140 U85 ( .I(request_data[15]), .ZN(n12) );
  OAI22D0BWP12T30P140 U86 ( .A1(n536), .A2(n418), .B1(n9), .B2(n12), .ZN(n180)
         );
  MAOI22D0BWP12T30P140 U87 ( .A1(n599), .A2(n10), .B1(down_data[10]), .B2(n592), .ZN(n159) );
  MAOI22D0BWP12T30P140 U88 ( .A1(n599), .A2(n11), .B1(down_data[14]), .B2(n592), .ZN(n189) );
  MAOI22D0BWP12T30P140 U89 ( .A1(n592), .A2(n12), .B1(down_data[19]), .B2(n592), .ZN(n179) );
  AO21D0BWP12T30P140 U90 ( .A1(n13), .A2(down_addr_valid), .B(N704), .Z(n198)
         );
  INVD0BWP12T30P140 U91 ( .I(dmar_remaining[11]), .ZN(n14) );
  AOI31D0BWP12T30P140 U92 ( .A1(dmar_next), .A2(n14), .A3(n91), .B(n552), .ZN(
        n15) );
  AOI22D0BWP12T30P140 U93 ( .A1(dmar_remaining[12]), .A2(n15), .B1(n554), .B2(
        csr_di[14]), .ZN(n16) );
  OAI21D0BWP12T30P140 U94 ( .A1(n532), .A2(n342), .B(n16), .ZN(n232) );
  INVD0BWP12T30P140 U95 ( .I(csr_a[0]), .ZN(n23) );
  NR2D0BWP12T30P140 U96 ( .A1(n23), .A2(csr_a[1]), .ZN(n21) );
  INVD0BWP12T30P140 U97 ( .I(n21), .ZN(n114) );
  OR3D0BWP12T30P140 U98 ( .A1(n632), .A2(n114), .A3(n423), .Z(n608) );
  INVD0BWP12T30P140 U99 ( .I(dmar_addr[8]), .ZN(n96) );
  NR2D0BWP12T30P140 U100 ( .A1(n114), .A2(n423), .ZN(n17) );
  NR2D0BWP12T30P140 U101 ( .A1(n632), .A2(n17), .ZN(n436) );
  ND2D0BWP12T30P140 U102 ( .A1(n436), .A2(dmar_next), .ZN(n591) );
  INVD0BWP12T30P140 U103 ( .I(n591), .ZN(n411) );
  INVD0BWP12T30P140 U104 ( .I(n411), .ZN(n602) );
  ND3D0BWP12T30P140 U105 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .A3(
        dmar_addr[2]), .ZN(n415) );
  INVD0BWP12T30P140 U106 ( .I(dmar_addr[4]), .ZN(n605) );
  INVD0BWP12T30P140 U107 ( .I(dmar_addr[3]), .ZN(n417) );
  NR3D0BWP12T30P140 U108 ( .A1(n415), .A2(n605), .A3(n417), .ZN(n375) );
  ND3D0BWP12T30P140 U109 ( .A1(n375), .A2(dmar_addr[6]), .A3(dmar_addr[5]), 
        .ZN(n97) );
  NR2D0BWP12T30P140 U110 ( .A1(n602), .A2(n97), .ZN(n504) );
  INR2D1BWP12T30P140 U111 ( .A1(n436), .B1(dmar_next), .ZN(n589) );
  AOI21D0BWP12T30P140 U112 ( .A1(n436), .A2(n97), .B(n589), .ZN(n507) );
  OAI21D0BWP12T30P140 U113 ( .A1(dmar_addr[7]), .A2(n602), .B(n507), .ZN(n18)
         );
  AOI32D0BWP12T30P140 U114 ( .A1(dmar_addr[7]), .A2(n96), .A3(n504), .B1(
        dmar_addr[8]), .B2(n18), .ZN(n19) );
  OAI21D0BWP12T30P140 U115 ( .A1(n608), .A2(n468), .B(n19), .ZN(n220) );
  AOI31D0BWP12T30P140 U116 ( .A1(n21), .A2(n113), .A3(n94), .B(n632), .ZN(n495) );
  NR2D0BWP12T30P140 U117 ( .A1(n632), .A2(n495), .ZN(n496) );
  AO22D0BWP12T30P140 U118 ( .A1(csr_di[5]), .A2(n496), .B1(request_addr[5]), 
        .B2(n495), .Z(n164) );
  ND2D0BWP12T30P140 U119 ( .A1(n20), .A2(n611), .ZN(n35) );
  INVD0BWP12T30P140 U120 ( .I(n35), .ZN(n32) );
  AN3D0BWP12T30P140 U121 ( .A1(n94), .A2(n21), .A3(n32), .Z(n55) );
  INR2D1BWP12T30P140 U122 ( .A1(csr_a[3]), .B1(csr_a[2]), .ZN(n112) );
  AOI222D0BWP12T30P140 U123 ( .A1(n112), .A2(dmaw_en), .B1(n37), .B2(dmar_en), 
        .C1(n94), .C2(request_en), .ZN(n25) );
  ND2D0BWP12T30P140 U124 ( .A1(n23), .A2(n22), .ZN(n422) );
  ND2D0BWP12T30P140 U125 ( .A1(n94), .A2(n32), .ZN(n29) );
  NR3D0BWP12T30P140 U126 ( .A1(n23), .A2(n22), .A3(n29), .ZN(n85) );
  NR2D0BWP12T30P140 U127 ( .A1(n311), .A2(n29), .ZN(n84) );
  AOI22D0BWP12T30P140 U128 ( .A1(n85), .A2(reply_data[0]), .B1(n84), .B2(
        request_data[0]), .ZN(n24) );
  OAI31D0BWP12T30P140 U129 ( .A1(n25), .A2(n35), .A3(n422), .B(n24), .ZN(n26)
         );
  AO21D0BWP12T30P140 U130 ( .A1(n55), .A2(request_addr[0]), .B(n26), .Z(N550)
         );
  INVD0BWP12T30P140 U131 ( .I(request_write), .ZN(n28) );
  AOI22D0BWP12T30P140 U132 ( .A1(n85), .A2(reply_data[1]), .B1(n84), .B2(
        request_data[1]), .ZN(n27) );
  OAI31D0BWP12T30P140 U133 ( .A1(n29), .A2(n422), .A3(n28), .B(n27), .ZN(n30)
         );
  AO21D0BWP12T30P140 U134 ( .A1(n55), .A2(request_addr[1]), .B(n30), .Z(N551)
         );
  ND2D0BWP12T30P140 U135 ( .A1(n37), .A2(n32), .ZN(n31) );
  NR2D0BWP12T30P140 U136 ( .A1(n114), .A2(n31), .ZN(n616) );
  AOI22D0BWP12T30P140 U137 ( .A1(dmar_addr[0]), .A2(n616), .B1(request_addr[2]), .B2(n55), .ZN(n41) );
  ND2D0BWP12T30P140 U138 ( .A1(n112), .A2(n32), .ZN(n33) );
  NR2D0BWP12T30P140 U139 ( .A1(n311), .A2(n33), .ZN(n615) );
  AOI22D0BWP12T30P140 U140 ( .A1(dmaw_remaining[0]), .A2(n615), .B1(
        request_data[2]), .B2(n84), .ZN(n40) );
  INVD0BWP12T30P140 U141 ( .I(dmaw_addr[0]), .ZN(n563) );
  NR2D0BWP12T30P140 U142 ( .A1(n114), .A2(n35), .ZN(n34) );
  ND2D0BWP12T30P140 U143 ( .A1(n112), .A2(n34), .ZN(n90) );
  INVD0BWP12T30P140 U144 ( .I(dmar_remaining[0]), .ZN(n529) );
  NR2D0BWP12T30P140 U145 ( .A1(n311), .A2(n35), .ZN(n36) );
  ND2D0BWP12T30P140 U146 ( .A1(n37), .A2(n36), .ZN(n42) );
  OAI22D0BWP12T30P140 U147 ( .A1(n563), .A2(n90), .B1(n529), .B2(n42), .ZN(n38) );
  AOI21D0BWP12T30P140 U148 ( .A1(reply_data[2]), .A2(n85), .B(n38), .ZN(n39)
         );
  ND3D0BWP12T30P140 U149 ( .A1(n41), .A2(n40), .A3(n39), .ZN(N552) );
  AOI22D0BWP12T30P140 U150 ( .A1(dmar_addr[1]), .A2(n616), .B1(n55), .B2(
        request_addr[3]), .ZN(n46) );
  INVD0BWP12T30P140 U151 ( .I(n90), .ZN(n617) );
  INVD0BWP12T30P140 U152 ( .I(n42), .ZN(n614) );
  AOI22D0BWP12T30P140 U153 ( .A1(dmaw_addr[1]), .A2(n617), .B1(
        dmar_remaining[1]), .B2(n614), .ZN(n45) );
  AOI22D0BWP12T30P140 U154 ( .A1(dmaw_remaining[1]), .A2(n615), .B1(n84), .B2(
        request_data[3]), .ZN(n44) );
  ND2D0BWP12T30P140 U155 ( .A1(n85), .A2(reply_data[3]), .ZN(n43) );
  ND4D0BWP12T30P140 U156 ( .A1(n46), .A2(n45), .A3(n44), .A4(n43), .ZN(N553)
         );
  AOI22D0BWP12T30P140 U157 ( .A1(dmar_addr[2]), .A2(n616), .B1(n55), .B2(
        request_addr[4]), .ZN(n50) );
  AOI22D0BWP12T30P140 U158 ( .A1(dmaw_addr[2]), .A2(n617), .B1(
        dmar_remaining[2]), .B2(n614), .ZN(n49) );
  AOI22D0BWP12T30P140 U159 ( .A1(dmaw_remaining[2]), .A2(n615), .B1(n84), .B2(
        request_data[4]), .ZN(n48) );
  ND2D0BWP12T30P140 U160 ( .A1(n85), .A2(reply_data[4]), .ZN(n47) );
  ND4D0BWP12T30P140 U161 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .ZN(N554)
         );
  AOI22D0BWP12T30P140 U162 ( .A1(dmar_addr[3]), .A2(n616), .B1(n55), .B2(
        request_addr[5]), .ZN(n54) );
  AOI22D0BWP12T30P140 U163 ( .A1(dmaw_addr[3]), .A2(n617), .B1(
        dmar_remaining[3]), .B2(n614), .ZN(n53) );
  AOI22D0BWP12T30P140 U164 ( .A1(dmaw_remaining[3]), .A2(n615), .B1(n84), .B2(
        request_data[5]), .ZN(n52) );
  ND2D0BWP12T30P140 U165 ( .A1(n85), .A2(reply_data[5]), .ZN(n51) );
  ND4D0BWP12T30P140 U166 ( .A1(n54), .A2(n53), .A3(n52), .A4(n51), .ZN(N555)
         );
  AOI22D0BWP12T30P140 U167 ( .A1(dmar_addr[4]), .A2(n616), .B1(n55), .B2(
        request_addr[6]), .ZN(n59) );
  AOI22D0BWP12T30P140 U168 ( .A1(dmaw_addr[4]), .A2(n617), .B1(
        dmar_remaining[4]), .B2(n614), .ZN(n58) );
  AOI22D0BWP12T30P140 U169 ( .A1(dmaw_remaining[4]), .A2(n615), .B1(n84), .B2(
        request_data[6]), .ZN(n57) );
  ND2D0BWP12T30P140 U170 ( .A1(n85), .A2(reply_data[6]), .ZN(n56) );
  ND4D0BWP12T30P140 U171 ( .A1(n59), .A2(n58), .A3(n57), .A4(n56), .ZN(N556)
         );
  AOI22D0BWP12T30P140 U172 ( .A1(dmaw_remaining[5]), .A2(n615), .B1(
        dmar_remaining[5]), .B2(n614), .ZN(n62) );
  AOI22D0BWP12T30P140 U173 ( .A1(dmaw_addr[5]), .A2(n617), .B1(dmar_addr[5]), 
        .B2(n616), .ZN(n61) );
  AOI22D0BWP12T30P140 U174 ( .A1(n85), .A2(reply_data[7]), .B1(n84), .B2(
        request_data[7]), .ZN(n60) );
  ND3D0BWP12T30P140 U175 ( .A1(n62), .A2(n61), .A3(n60), .ZN(N557) );
  AOI22D0BWP12T30P140 U176 ( .A1(dmaw_remaining[6]), .A2(n615), .B1(
        dmar_remaining[6]), .B2(n614), .ZN(n65) );
  AOI22D0BWP12T30P140 U177 ( .A1(dmaw_addr[6]), .A2(n617), .B1(dmar_addr[6]), 
        .B2(n616), .ZN(n64) );
  AOI22D0BWP12T30P140 U178 ( .A1(n85), .A2(reply_data[8]), .B1(n84), .B2(
        request_data[8]), .ZN(n63) );
  ND3D0BWP12T30P140 U179 ( .A1(n65), .A2(n64), .A3(n63), .ZN(N558) );
  AOI22D0BWP12T30P140 U180 ( .A1(dmaw_remaining[7]), .A2(n615), .B1(
        dmar_remaining[7]), .B2(n614), .ZN(n68) );
  AOI22D0BWP12T30P140 U181 ( .A1(dmaw_addr[7]), .A2(n617), .B1(dmar_addr[7]), 
        .B2(n616), .ZN(n67) );
  AOI22D0BWP12T30P140 U182 ( .A1(n85), .A2(reply_data[9]), .B1(n84), .B2(
        request_data[9]), .ZN(n66) );
  ND3D0BWP12T30P140 U183 ( .A1(n68), .A2(n67), .A3(n66), .ZN(N559) );
  AOI22D0BWP12T30P140 U184 ( .A1(dmaw_remaining[8]), .A2(n615), .B1(
        dmar_remaining[8]), .B2(n614), .ZN(n71) );
  AOI22D0BWP12T30P140 U185 ( .A1(dmaw_addr[8]), .A2(n617), .B1(dmar_addr[8]), 
        .B2(n616), .ZN(n70) );
  AOI22D0BWP12T30P140 U186 ( .A1(n85), .A2(reply_data[10]), .B1(n84), .B2(
        request_data[10]), .ZN(n69) );
  ND3D0BWP12T30P140 U187 ( .A1(n71), .A2(n70), .A3(n69), .ZN(N560) );
  AOI22D0BWP12T30P140 U188 ( .A1(dmaw_remaining[9]), .A2(n615), .B1(
        dmar_remaining[9]), .B2(n614), .ZN(n74) );
  AOI22D0BWP12T30P140 U189 ( .A1(dmaw_addr[9]), .A2(n617), .B1(dmar_addr[9]), 
        .B2(n616), .ZN(n73) );
  AOI22D0BWP12T30P140 U190 ( .A1(n85), .A2(reply_data[11]), .B1(n84), .B2(
        request_data[11]), .ZN(n72) );
  ND3D0BWP12T30P140 U191 ( .A1(n74), .A2(n73), .A3(n72), .ZN(N561) );
  AOI22D0BWP12T30P140 U192 ( .A1(dmaw_remaining[10]), .A2(n615), .B1(
        dmar_remaining[10]), .B2(n614), .ZN(n77) );
  AOI22D0BWP12T30P140 U193 ( .A1(dmaw_addr[10]), .A2(n617), .B1(dmar_addr[10]), 
        .B2(n616), .ZN(n76) );
  AOI22D0BWP12T30P140 U194 ( .A1(n85), .A2(reply_data[12]), .B1(n84), .B2(
        request_data[12]), .ZN(n75) );
  ND3D0BWP12T30P140 U195 ( .A1(n77), .A2(n76), .A3(n75), .ZN(N562) );
  OA22D0BWP12T30P140 U196 ( .A1(n600), .A2(request_data[5]), .B1(down_data[9]), 
        .B2(n592), .Z(n162) );
  AOI22D0BWP12T30P140 U197 ( .A1(dmaw_remaining[11]), .A2(n615), .B1(
        dmar_remaining[11]), .B2(n614), .ZN(n80) );
  AOI22D0BWP12T30P140 U198 ( .A1(dmaw_addr[11]), .A2(n617), .B1(dmar_addr[11]), 
        .B2(n616), .ZN(n79) );
  AOI22D0BWP12T30P140 U199 ( .A1(n85), .A2(reply_data[13]), .B1(n84), .B2(
        request_data[13]), .ZN(n78) );
  ND3D0BWP12T30P140 U200 ( .A1(n80), .A2(n79), .A3(n78), .ZN(N563) );
  AOI22D0BWP12T30P140 U201 ( .A1(dmaw_remaining[12]), .A2(n615), .B1(
        dmar_remaining[12]), .B2(n614), .ZN(n83) );
  AOI22D0BWP12T30P140 U202 ( .A1(dmaw_addr[12]), .A2(n617), .B1(dmar_addr[12]), 
        .B2(n616), .ZN(n82) );
  AOI22D0BWP12T30P140 U203 ( .A1(n85), .A2(reply_data[14]), .B1(n84), .B2(
        request_data[14]), .ZN(n81) );
  ND3D0BWP12T30P140 U204 ( .A1(n83), .A2(n82), .A3(n81), .ZN(N564) );
  AOI22D0BWP12T30P140 U205 ( .A1(dmaw_remaining[13]), .A2(n615), .B1(
        dmar_remaining[13]), .B2(n614), .ZN(n88) );
  AOI22D0BWP12T30P140 U206 ( .A1(dmaw_addr[13]), .A2(n617), .B1(dmar_addr[13]), 
        .B2(n616), .ZN(n87) );
  AOI22D0BWP12T30P140 U207 ( .A1(n85), .A2(reply_data[15]), .B1(n84), .B2(
        request_data[15]), .ZN(n86) );
  ND3D0BWP12T30P140 U208 ( .A1(n88), .A2(n87), .A3(n86), .ZN(N565) );
  INVD0BWP12T30P140 U209 ( .I(dmaw_addr[16]), .ZN(n127) );
  INVD0BWP12T30P140 U210 ( .I(dmar_addr[16]), .ZN(n98) );
  INVD0BWP12T30P140 U211 ( .I(n616), .ZN(n89) );
  OAI22D0BWP12T30P140 U212 ( .A1(n127), .A2(n90), .B1(n98), .B2(n89), .ZN(N568) );
  INVD0BWP12T30P140 U213 ( .I(dmaw_addr[17]), .ZN(n398) );
  INVD0BWP12T30P140 U214 ( .I(dmar_addr[17]), .ZN(n414) );
  OAI22D0BWP12T30P140 U215 ( .A1(n398), .A2(n90), .B1(n414), .B2(n89), .ZN(
        N569) );
  AO22D0BWP12T30P140 U216 ( .A1(dmaw_addr[18]), .A2(n617), .B1(dmar_addr[18]), 
        .B2(n1), .Z(N570) );
  INVD0BWP12T30P140 U217 ( .I(dmaw_addr[19]), .ZN(n140) );
  INVD0BWP12T30P140 U218 ( .I(dmar_addr[19]), .ZN(n348) );
  OAI22D0BWP12T30P140 U219 ( .A1(n140), .A2(n90), .B1(n348), .B2(n89), .ZN(
        N571) );
  INVD0BWP12T30P140 U220 ( .I(dmaw_addr[20]), .ZN(n129) );
  INVD0BWP12T30P140 U221 ( .I(dmar_addr[20]), .ZN(n99) );
  OAI22D0BWP12T30P140 U222 ( .A1(n129), .A2(n90), .B1(n99), .B2(n89), .ZN(N572) );
  INVD0BWP12T30P140 U223 ( .I(dmaw_addr[21]), .ZN(n394) );
  INVD0BWP12T30P140 U224 ( .I(dmar_addr[21]), .ZN(n410) );
  OAI22D0BWP12T30P140 U225 ( .A1(n394), .A2(n90), .B1(n410), .B2(n89), .ZN(
        N573) );
  AO22D0BWP12T30P140 U226 ( .A1(dmaw_addr[22]), .A2(n617), .B1(dmar_addr[22]), 
        .B2(n616), .Z(N574) );
  INVD0BWP12T30P140 U227 ( .I(dmaw_addr[23]), .ZN(n308) );
  INVD0BWP12T30P140 U228 ( .I(dmar_addr[23]), .ZN(n359) );
  OAI22D0BWP12T30P140 U229 ( .A1(n308), .A2(n90), .B1(n359), .B2(n89), .ZN(
        N575) );
  INVD0BWP12T30P140 U230 ( .I(dmaw_addr[24]), .ZN(n130) );
  INVD0BWP12T30P140 U231 ( .I(dmar_addr[24]), .ZN(n100) );
  OAI22D0BWP12T30P140 U232 ( .A1(n130), .A2(n90), .B1(n100), .B2(n89), .ZN(
        N576) );
  INVD0BWP12T30P140 U233 ( .I(dmaw_addr[25]), .ZN(n391) );
  INVD0BWP12T30P140 U234 ( .I(dmar_addr[25]), .ZN(n407) );
  OAI22D0BWP12T30P140 U235 ( .A1(n391), .A2(n90), .B1(n407), .B2(n89), .ZN(
        N577) );
  AO22D0BWP12T30P140 U236 ( .A1(dmaw_addr[26]), .A2(n617), .B1(dmar_addr[26]), 
        .B2(n616), .Z(N578) );
  INVD0BWP12T30P140 U237 ( .I(dmaw_addr[27]), .ZN(n625) );
  INVD0BWP12T30P140 U238 ( .I(dmar_addr[27]), .ZN(n620) );
  OAI22D0BWP12T30P140 U239 ( .A1(n625), .A2(n90), .B1(n620), .B2(n89), .ZN(
        N579) );
  INVD0BWP12T30P140 U240 ( .I(dmaw_addr[28]), .ZN(n320) );
  INVD0BWP12T30P140 U241 ( .I(dmar_addr[28]), .ZN(n109) );
  OAI22D0BWP12T30P140 U242 ( .A1(n320), .A2(n90), .B1(n109), .B2(n89), .ZN(
        N580) );
  AO22D0BWP12T30P140 U243 ( .A1(dmaw_addr[29]), .A2(n617), .B1(dmar_addr[29]), 
        .B2(n616), .Z(N581) );
  AOI21D0BWP12T30P140 U244 ( .A1(dmar_next), .A2(n91), .B(n552), .ZN(n92) );
  AOI22D0BWP12T30P140 U245 ( .A1(dmar_remaining[11]), .A2(n92), .B1(n554), 
        .B2(csr_di[13]), .ZN(n93) );
  OAI31D0BWP12T30P140 U246 ( .A1(dmar_remaining[11]), .A2(n532), .A3(n517), 
        .B(n93), .ZN(n233) );
  ND2D0BWP12T30P140 U247 ( .A1(n113), .A2(n94), .ZN(n95) );
  NR2D0BWP12T30P140 U248 ( .A1(n95), .A2(n422), .ZN(n598) );
  INVD0BWP12T30P140 U249 ( .I(n598), .ZN(n594) );
  OA221D0BWP12T30P140 U250 ( .A1(n594), .A2(csr_di[1]), .B1(n598), .B2(
        request_write), .C(n611), .Z(n158) );
  INVD0BWP12T30P140 U251 ( .I(dmar_addr[7]), .ZN(n506) );
  NR3D0BWP12T30P140 U252 ( .A1(n97), .A2(n96), .A3(n506), .ZN(n370) );
  ND3D0BWP12T30P140 U253 ( .A1(n370), .A2(dmar_addr[10]), .A3(dmar_addr[9]), 
        .ZN(n435) );
  INVD0BWP12T30P140 U254 ( .I(dmar_addr[11]), .ZN(n449) );
  INR3D1BWP12T30P140 U255 ( .A1(dmar_addr[12]), .B1(n435), .B2(n449), .ZN(n565) );
  ND3D0BWP12T30P140 U256 ( .A1(n565), .A2(dmar_addr[14]), .A3(dmar_addr[13]), 
        .ZN(n334) );
  INVD0BWP12T30P140 U257 ( .I(dmar_addr[15]), .ZN(n445) );
  NR3D0BWP12T30P140 U258 ( .A1(n334), .A2(n98), .A3(n445), .ZN(n483) );
  ND3D0BWP12T30P140 U259 ( .A1(n483), .A2(dmar_addr[18]), .A3(dmar_addr[17]), 
        .ZN(n110) );
  NR3D0BWP12T30P140 U260 ( .A1(n110), .A2(n99), .A3(n348), .ZN(n479) );
  ND3D0BWP12T30P140 U261 ( .A1(n479), .A2(dmar_addr[22]), .A3(dmar_addr[21]), 
        .ZN(n103) );
  NR3D0BWP12T30P140 U262 ( .A1(n103), .A2(n100), .A3(n359), .ZN(n475) );
  ND3D0BWP12T30P140 U263 ( .A1(n475), .A2(dmar_addr[26]), .A3(dmar_addr[25]), 
        .ZN(n101) );
  INVD0BWP12T30P140 U264 ( .I(n589), .ZN(n564) );
  IOA21D0BWP12T30P140 U265 ( .A1(n101), .A2(n411), .B(n564), .ZN(n624) );
  AOI21D0BWP12T30P140 U266 ( .A1(n411), .A2(n620), .B(n624), .ZN(n105) );
  INVD0BWP12T30P140 U267 ( .I(n608), .ZN(n622) );
  NR2D0BWP12T30P140 U268 ( .A1(n602), .A2(n101), .ZN(n621) );
  ND2D0BWP12T30P140 U269 ( .A1(dmar_addr[27]), .A2(n621), .ZN(n108) );
  MAOI22D0BWP12T30P140 U270 ( .A1(csr_di[30]), .A2(n622), .B1(dmar_addr[28]), 
        .B2(n108), .ZN(n102) );
  OAI21D0BWP12T30P140 U271 ( .A1(n105), .A2(n109), .B(n102), .ZN(n200) );
  AOI21D0BWP12T30P140 U272 ( .A1(n436), .A2(n103), .B(n589), .ZN(n355) );
  IND2D1BWP12T30P140 U273 ( .A1(n103), .B1(n411), .ZN(n358) );
  MAOI22D0BWP12T30P140 U274 ( .A1(csr_di[25]), .A2(n622), .B1(dmar_addr[23]), 
        .B2(n358), .ZN(n104) );
  OAI21D0BWP12T30P140 U275 ( .A1(n355), .A2(n359), .B(n104), .ZN(n205) );
  OAI21D0BWP12T30P140 U276 ( .A1(dmar_addr[28]), .A2(n591), .B(n105), .ZN(n106) );
  AOI22D0BWP12T30P140 U277 ( .A1(csr_di[31]), .A2(n622), .B1(dmar_addr[29]), 
        .B2(n106), .ZN(n107) );
  OAI31D0BWP12T30P140 U278 ( .A1(dmar_addr[29]), .A2(n109), .A3(n108), .B(n107), .ZN(n199) );
  AOI21D0BWP12T30P140 U279 ( .A1(n436), .A2(n110), .B(n589), .ZN(n344) );
  INVD0BWP12T30P140 U280 ( .I(n608), .ZN(n566) );
  IND2D1BWP12T30P140 U281 ( .A1(n110), .B1(n411), .ZN(n347) );
  MAOI22D0BWP12T30P140 U282 ( .A1(csr_di[21]), .A2(n566), .B1(dmar_addr[19]), 
        .B2(n347), .ZN(n111) );
  OAI21D0BWP12T30P140 U283 ( .A1(n344), .A2(n348), .B(n111), .ZN(n209) );
  ND2D0BWP12T30P140 U284 ( .A1(n113), .A2(n112), .ZN(n399) );
  NR2D0BWP12T30P140 U285 ( .A1(n114), .A2(n399), .ZN(n115) );
  ND2D0BWP12T30P140 U286 ( .A1(n611), .A2(n115), .ZN(n126) );
  INVD0BWP12T30P140 U287 ( .I(dmaw_addr[8]), .ZN(n118) );
  NR2D0BWP12T30P140 U288 ( .A1(n632), .A2(n115), .ZN(n440) );
  ND2D0BWP12T30P140 U289 ( .A1(n440), .A2(dmaw_next), .ZN(n588) );
  INVD0BWP12T30P140 U290 ( .I(n588), .ZN(n395) );
  INVD0BWP12T30P140 U291 ( .I(n395), .ZN(n575) );
  ND3D0BWP12T30P140 U292 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .A3(
        dmaw_addr[2]), .ZN(n122) );
  INVD0BWP12T30P140 U293 ( .I(dmaw_addr[4]), .ZN(n124) );
  INVD0BWP12T30P140 U294 ( .I(dmaw_addr[3]), .ZN(n433) );
  NR3D0BWP12T30P140 U295 ( .A1(n122), .A2(n124), .A3(n433), .ZN(n581) );
  ND3D0BWP12T30P140 U296 ( .A1(n581), .A2(dmaw_addr[6]), .A3(dmaw_addr[5]), 
        .ZN(n119) );
  NR2D0BWP12T30P140 U297 ( .A1(n575), .A2(n119), .ZN(n427) );
  INR2D1BWP12T30P140 U298 ( .A1(n440), .B1(dmaw_next), .ZN(n586) );
  AOI21D0BWP12T30P140 U299 ( .A1(n440), .A2(n119), .B(n586), .ZN(n430) );
  OAI21D0BWP12T30P140 U300 ( .A1(dmaw_addr[7]), .A2(n575), .B(n430), .ZN(n116)
         );
  AOI32D0BWP12T30P140 U301 ( .A1(dmaw_addr[7]), .A2(n118), .A3(n427), .B1(
        dmaw_addr[8]), .B2(n116), .ZN(n117) );
  OAI21D0BWP12T30P140 U302 ( .A1(n126), .A2(n468), .B(n117), .ZN(n266) );
  INVD0BWP12T30P140 U303 ( .I(dmaw_addr[15]), .ZN(n453) );
  INVD0BWP12T30P140 U304 ( .I(dmaw_addr[7]), .ZN(n429) );
  NR3D0BWP12T30P140 U305 ( .A1(n119), .A2(n118), .A3(n429), .ZN(n576) );
  ND3D0BWP12T30P140 U306 ( .A1(n576), .A2(dmaw_addr[10]), .A3(dmaw_addr[9]), 
        .ZN(n439) );
  INVD0BWP12T30P140 U307 ( .I(dmaw_addr[11]), .ZN(n457) );
  INR3D1BWP12T30P140 U308 ( .A1(dmaw_addr[12]), .B1(n439), .B2(n457), .ZN(n571) );
  ND3D0BWP12T30P140 U309 ( .A1(n571), .A2(dmaw_addr[14]), .A3(dmaw_addr[13]), 
        .ZN(n128) );
  IND2D1BWP12T30P140 U310 ( .A1(n128), .B1(n395), .ZN(n451) );
  AOI21D0BWP12T30P140 U311 ( .A1(n440), .A2(n128), .B(n586), .ZN(n454) );
  OAI21D0BWP12T30P140 U312 ( .A1(dmaw_addr[15]), .A2(n588), .B(n454), .ZN(n120) );
  INVD0BWP12T30P140 U313 ( .I(n126), .ZN(n582) );
  CKBD0BWP12T30P140 U314 ( .I(n582), .Z(n627) );
  AOI22D0BWP12T30P140 U315 ( .A1(dmaw_addr[16]), .A2(n120), .B1(n627), .B2(
        csr_di[18]), .ZN(n121) );
  OAI31D0BWP12T30P140 U316 ( .A1(dmaw_addr[16]), .A2(n453), .A3(n451), .B(n121), .ZN(n258) );
  NR2D0BWP12T30P140 U317 ( .A1(n588), .A2(n122), .ZN(n431) );
  AOI21D0BWP12T30P140 U318 ( .A1(n440), .A2(n122), .B(n586), .ZN(n434) );
  OAI21D0BWP12T30P140 U319 ( .A1(dmaw_addr[3]), .A2(n575), .B(n434), .ZN(n123)
         );
  AOI32D0BWP12T30P140 U320 ( .A1(dmaw_addr[3]), .A2(n124), .A3(n431), .B1(
        dmaw_addr[4]), .B2(n123), .ZN(n125) );
  OAI21D0BWP12T30P140 U321 ( .A1(n126), .A2(n607), .B(n125), .ZN(n270) );
  NR3D0BWP12T30P140 U322 ( .A1(n128), .A2(n127), .A3(n453), .ZN(n497) );
  ND3D0BWP12T30P140 U323 ( .A1(n497), .A2(dmaw_addr[18]), .A3(dmaw_addr[17]), 
        .ZN(n133) );
  NR3D0BWP12T30P140 U324 ( .A1(n133), .A2(n129), .A3(n140), .ZN(n491) );
  ND3D0BWP12T30P140 U325 ( .A1(n491), .A2(dmaw_addr[22]), .A3(dmaw_addr[21]), 
        .ZN(n136) );
  NR3D0BWP12T30P140 U326 ( .A1(n136), .A2(n130), .A3(n308), .ZN(n487) );
  ND3D0BWP12T30P140 U327 ( .A1(n487), .A2(dmaw_addr[26]), .A3(dmaw_addr[25]), 
        .ZN(n131) );
  INVD0BWP12T30P140 U328 ( .I(n586), .ZN(n580) );
  IOA21D0BWP12T30P140 U329 ( .A1(n131), .A2(n395), .B(n580), .ZN(n629) );
  AOI21D0BWP12T30P140 U330 ( .A1(n395), .A2(n625), .B(n629), .ZN(n316) );
  NR2D0BWP12T30P140 U331 ( .A1(n575), .A2(n131), .ZN(n626) );
  ND2D0BWP12T30P140 U332 ( .A1(dmaw_addr[27]), .A2(n626), .ZN(n319) );
  MAOI22D0BWP12T30P140 U333 ( .A1(csr_di[30]), .A2(n582), .B1(dmaw_addr[28]), 
        .B2(n319), .ZN(n132) );
  OAI21D0BWP12T30P140 U334 ( .A1(n316), .A2(n320), .B(n132), .ZN(n246) );
  IND2D1BWP12T30P140 U335 ( .A1(n133), .B1(n395), .ZN(n138) );
  AOI21D0BWP12T30P140 U336 ( .A1(n440), .A2(n133), .B(n586), .ZN(n141) );
  OAI21D0BWP12T30P140 U337 ( .A1(dmaw_addr[19]), .A2(n588), .B(n141), .ZN(n134) );
  AOI22D0BWP12T30P140 U338 ( .A1(dmaw_addr[20]), .A2(n134), .B1(n627), .B2(
        csr_di[22]), .ZN(n135) );
  OAI31D0BWP12T30P140 U339 ( .A1(dmaw_addr[20]), .A2(n140), .A3(n138), .B(n135), .ZN(n254) );
  AOI21D0BWP12T30P140 U340 ( .A1(n440), .A2(n136), .B(n586), .ZN(n142) );
  IND2D1BWP12T30P140 U341 ( .A1(n136), .B1(n395), .ZN(n307) );
  MAOI22D0BWP12T30P140 U342 ( .A1(csr_di[25]), .A2(n627), .B1(dmaw_addr[23]), 
        .B2(n307), .ZN(n137) );
  OAI21D0BWP12T30P140 U343 ( .A1(n142), .A2(n308), .B(n137), .ZN(n251) );
  MAOI22D0BWP12T30P140 U344 ( .A1(csr_di[21]), .A2(n582), .B1(dmaw_addr[19]), 
        .B2(n138), .ZN(n139) );
  OAI21D0BWP12T30P140 U345 ( .A1(n141), .A2(n140), .B(n139), .ZN(n255) );
  OAI21D0BWP12T30P140 U346 ( .A1(dmaw_addr[23]), .A2(n588), .B(n142), .ZN(n143) );
  AOI22D0BWP12T30P140 U347 ( .A1(dmaw_addr[24]), .A2(n143), .B1(n582), .B2(
        csr_di[26]), .ZN(n144) );
  OAI31D0BWP12T30P140 U348 ( .A1(dmaw_addr[24]), .A2(n308), .A3(n307), .B(n144), .ZN(n250) );
  NR2D0BWP12T30P140 U349 ( .A1(n399), .A2(n311), .ZN(n309) );
  NR2D0BWP12T30P140 U350 ( .A1(n632), .A2(n309), .ZN(n324) );
  ND2D0BWP12T30P140 U351 ( .A1(dmaw_next), .A2(n324), .ZN(n528) );
  NR3D0BWP12T30P140 U352 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(dmaw_remaining[2]), .ZN(n463) );
  INVD0BWP12T30P140 U353 ( .I(n463), .ZN(n510) );
  NR3D0BWP12T30P140 U354 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[3]), 
        .A3(n510), .ZN(n543) );
  INR3D1BWP12T30P140 U355 ( .A1(n543), .B1(dmaw_remaining[6]), .B2(
        dmaw_remaining[5]), .ZN(n461) );
  INVD0BWP12T30P140 U356 ( .I(n461), .ZN(n503) );
  NR3D0BWP12T30P140 U357 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[7]), 
        .A3(n503), .ZN(n538) );
  INR3D1BWP12T30P140 U358 ( .A1(n538), .B1(dmaw_remaining[10]), .B2(
        dmaw_remaining[9]), .ZN(n521) );
  INVD0BWP12T30P140 U359 ( .I(n521), .ZN(n524) );
  NR3D0BWP12T30P140 U360 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[11]), 
        .A3(n524), .ZN(n325) );
  INVD0BWP12T30P140 U361 ( .I(n325), .ZN(n332) );
  INVD0BWP12T30P140 U362 ( .I(dmaw_remaining[11]), .ZN(n310) );
  INVD0BWP12T30P140 U363 ( .I(n324), .ZN(n542) );
  AOI31D0BWP12T30P140 U364 ( .A1(dmaw_next), .A2(n310), .A3(n521), .B(n542), 
        .ZN(n312) );
  NR3D0BWP12T30P140 U365 ( .A1(n632), .A2(n399), .A3(n311), .ZN(n544) );
  AOI22D0BWP12T30P140 U366 ( .A1(dmaw_remaining[12]), .A2(n312), .B1(n544), 
        .B2(csr_di[14]), .ZN(n313) );
  OAI21D0BWP12T30P140 U367 ( .A1(n528), .A2(n332), .B(n313), .ZN(n278) );
  AOI22D0BWP12T30P140 U368 ( .A1(n472), .A2(n529), .B1(n554), .B2(csr_di[2]), 
        .ZN(n314) );
  OAI21D0BWP12T30P140 U369 ( .A1(n315), .A2(n529), .B(n314), .ZN(n244) );
  OAI21D0BWP12T30P140 U370 ( .A1(dmaw_addr[28]), .A2(n588), .B(n316), .ZN(n317) );
  AOI22D0BWP12T30P140 U371 ( .A1(n627), .A2(csr_di[31]), .B1(dmaw_addr[29]), 
        .B2(n317), .ZN(n318) );
  OAI31D0BWP12T30P140 U372 ( .A1(dmaw_addr[29]), .A2(n320), .A3(n319), .B(n318), .ZN(n245) );
  INVD0BWP12T30P140 U373 ( .I(n554), .ZN(n474) );
  AOI21D0BWP12T30P140 U374 ( .A1(dmar_remaining[13]), .A2(n322), .B(n321), 
        .ZN(n323) );
  OAI21D0BWP12T30P140 U375 ( .A1(n474), .A2(n536), .B(n323), .ZN(n231) );
  INVD0BWP12T30P140 U376 ( .I(n528), .ZN(n464) );
  IND2D1BWP12T30P140 U377 ( .A1(dmaw_next), .B1(n324), .ZN(n460) );
  OAI21D0BWP12T30P140 U378 ( .A1(n325), .A2(n528), .B(n460), .ZN(n534) );
  AOI21D0BWP12T30P140 U379 ( .A1(n464), .A2(dmaw_remaining[13]), .B(n534), 
        .ZN(n330) );
  INVD0BWP12T30P140 U380 ( .I(dmaw_remaining[14]), .ZN(n331) );
  NR3D0BWP12T30P140 U381 ( .A1(dmaw_remaining[13]), .A2(n528), .A3(n332), .ZN(
        n533) );
  AOI22D0BWP12T30P140 U382 ( .A1(csr_di[16]), .A2(n544), .B1(n533), .B2(n331), 
        .ZN(n326) );
  OAI21D0BWP12T30P140 U383 ( .A1(n330), .A2(n331), .B(n326), .ZN(n276) );
  INVD0BWP12T30P140 U384 ( .I(dmaw_remaining[0]), .ZN(n525) );
  INVD0BWP12T30P140 U385 ( .I(dmaw_remaining[1]), .ZN(n327) );
  AOI31D0BWP12T30P140 U386 ( .A1(dmaw_next), .A2(n525), .A3(n327), .B(n542), 
        .ZN(n328) );
  AOI22D0BWP12T30P140 U387 ( .A1(dmaw_remaining[2]), .A2(n328), .B1(n544), 
        .B2(csr_di[4]), .ZN(n329) );
  OAI21D0BWP12T30P140 U388 ( .A1(n528), .A2(n510), .B(n329), .ZN(n288) );
  OAI21D0BWP12T30P140 U389 ( .A1(n528), .A2(n331), .B(n330), .ZN(n333) );
  NR4D0BWP12T30P140 U390 ( .A1(dmaw_remaining[14]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[15]), .A4(n332), .ZN(n609) );
  AO222D0BWP12T30P140 U391 ( .A1(n333), .A2(dmaw_remaining[15]), .B1(
        csr_di[17]), .B2(n544), .C1(n464), .C2(n609), .Z(n275) );
  IND2D1BWP12T30P140 U392 ( .A1(n334), .B1(n411), .ZN(n443) );
  AOI21D0BWP12T30P140 U393 ( .A1(n436), .A2(n334), .B(n589), .ZN(n446) );
  OAI21D0BWP12T30P140 U394 ( .A1(dmar_addr[15]), .A2(n591), .B(n446), .ZN(n335) );
  AOI22D0BWP12T30P140 U395 ( .A1(dmar_addr[16]), .A2(n335), .B1(n622), .B2(
        csr_di[18]), .ZN(n336) );
  OAI31D0BWP12T30P140 U396 ( .A1(dmar_addr[16]), .A2(n445), .A3(n443), .B(n336), .ZN(n212) );
  INVD0BWP12T30P140 U397 ( .I(dmar_remaining[1]), .ZN(n337) );
  AOI31D0BWP12T30P140 U398 ( .A1(dmar_next), .A2(n529), .A3(n337), .B(n552), 
        .ZN(n338) );
  AOI22D0BWP12T30P140 U399 ( .A1(dmar_remaining[2]), .A2(n338), .B1(n554), 
        .B2(csr_di[4]), .ZN(n339) );
  OAI21D0BWP12T30P140 U400 ( .A1(n532), .A2(n520), .B(n339), .ZN(n242) );
  OAI21D0BWP12T30P140 U401 ( .A1(n532), .A2(n341), .B(n340), .ZN(n343) );
  NR4D0BWP12T30P140 U402 ( .A1(dmar_remaining[14]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[15]), .A4(n342), .ZN(n610) );
  AO222D0BWP12T30P140 U403 ( .A1(n343), .A2(dmar_remaining[15]), .B1(n472), 
        .B2(n610), .C1(csr_di[17]), .C2(n554), .Z(n229) );
  OAI21D0BWP12T30P140 U404 ( .A1(dmar_addr[19]), .A2(n591), .B(n344), .ZN(n345) );
  AOI22D0BWP12T30P140 U405 ( .A1(dmar_addr[20]), .A2(n345), .B1(n622), .B2(
        csr_di[22]), .ZN(n346) );
  OAI31D0BWP12T30P140 U406 ( .A1(dmar_addr[20]), .A2(n348), .A3(n347), .B(n346), .ZN(n208) );
  INVD0BWP12T30P140 U407 ( .I(dmaw_remaining[9]), .ZN(n349) );
  AOI31D0BWP12T30P140 U408 ( .A1(dmaw_next), .A2(n538), .A3(n349), .B(n542), 
        .ZN(n350) );
  AOI22D0BWP12T30P140 U409 ( .A1(dmaw_remaining[10]), .A2(n350), .B1(n544), 
        .B2(csr_di[12]), .ZN(n351) );
  OAI21D0BWP12T30P140 U410 ( .A1(n528), .A2(n524), .B(n351), .ZN(n280) );
  INVD0BWP12T30P140 U411 ( .I(dmaw_remaining[5]), .ZN(n352) );
  AOI31D0BWP12T30P140 U412 ( .A1(dmaw_next), .A2(n543), .A3(n352), .B(n542), 
        .ZN(n353) );
  AOI22D0BWP12T30P140 U413 ( .A1(dmaw_remaining[6]), .A2(n353), .B1(n544), 
        .B2(csr_di[8]), .ZN(n354) );
  OAI21D0BWP12T30P140 U414 ( .A1(n528), .A2(n503), .B(n354), .ZN(n284) );
  OAI21D0BWP12T30P140 U415 ( .A1(dmar_addr[23]), .A2(n591), .B(n355), .ZN(n356) );
  AOI22D0BWP12T30P140 U416 ( .A1(dmar_addr[24]), .A2(n356), .B1(n566), .B2(
        csr_di[26]), .ZN(n357) );
  OAI31D0BWP12T30P140 U417 ( .A1(dmar_addr[24]), .A2(n359), .A3(n358), .B(n357), .ZN(n204) );
  INVD0BWP12T30P140 U418 ( .I(dmar_remaining[5]), .ZN(n360) );
  AOI31D0BWP12T30P140 U419 ( .A1(dmar_next), .A2(n553), .A3(n360), .B(n552), 
        .ZN(n361) );
  AOI22D0BWP12T30P140 U420 ( .A1(dmar_remaining[6]), .A2(n361), .B1(n554), 
        .B2(csr_di[8]), .ZN(n362) );
  OAI21D0BWP12T30P140 U421 ( .A1(n532), .A2(n513), .B(n362), .ZN(n238) );
  ND2D0BWP12T30P140 U422 ( .A1(n411), .A2(n370), .ZN(n373) );
  OAI21D0BWP12T30P140 U423 ( .A1(n370), .A2(n602), .B(n564), .ZN(n363) );
  AOI22D0BWP12T30P140 U424 ( .A1(dmar_addr[9]), .A2(n363), .B1(n566), .B2(
        csr_di[11]), .ZN(n364) );
  OAI21D0BWP12T30P140 U425 ( .A1(dmar_addr[9]), .A2(n373), .B(n364), .ZN(n219)
         );
  INVD0BWP12T30P140 U426 ( .I(n418), .ZN(n470) );
  AO22D0BWP12T30P140 U427 ( .A1(n470), .A2(csr_di[1]), .B1(n469), .B2(
        request_data[1]), .Z(n157) );
  ND2D0BWP12T30P140 U428 ( .A1(n411), .A2(n375), .ZN(n378) );
  OAI21D0BWP12T30P140 U429 ( .A1(n375), .A2(n591), .B(n564), .ZN(n365) );
  AOI22D0BWP12T30P140 U430 ( .A1(dmar_addr[5]), .A2(n365), .B1(n566), .B2(
        csr_di[7]), .ZN(n366) );
  OAI21D0BWP12T30P140 U431 ( .A1(dmar_addr[5]), .A2(n378), .B(n366), .ZN(n223)
         );
  INVD0BWP12T30P140 U432 ( .I(dmar_addr[13]), .ZN(n369) );
  ND2D0BWP12T30P140 U433 ( .A1(n411), .A2(n565), .ZN(n569) );
  AOI22D0BWP12T30P140 U434 ( .A1(dmar_addr[14]), .A2(n367), .B1(n566), .B2(
        csr_di[16]), .ZN(n368) );
  OAI31D0BWP12T30P140 U435 ( .A1(dmar_addr[14]), .A2(n369), .A3(n569), .B(n368), .ZN(n214) );
  AO22D0BWP12T30P140 U436 ( .A1(csr_di[7]), .A2(n470), .B1(n469), .B2(
        request_data[7]), .Z(n196) );
  INVD0BWP12T30P140 U437 ( .I(dmar_addr[9]), .ZN(n374) );
  AOI32D0BWP12T30P140 U438 ( .A1(n370), .A2(n564), .A3(dmar_addr[9]), .B1(n591), .B2(n564), .ZN(n371) );
  AOI22D0BWP12T30P140 U439 ( .A1(dmar_addr[10]), .A2(n371), .B1(n566), .B2(
        csr_di[12]), .ZN(n372) );
  OAI31D0BWP12T30P140 U440 ( .A1(dmar_addr[10]), .A2(n374), .A3(n373), .B(n372), .ZN(n218) );
  INVD0BWP12T30P140 U441 ( .I(dmar_addr[5]), .ZN(n379) );
  AOI32D0BWP12T30P140 U442 ( .A1(n375), .A2(n564), .A3(dmar_addr[5]), .B1(n591), .B2(n564), .ZN(n376) );
  AOI22D0BWP12T30P140 U443 ( .A1(dmar_addr[6]), .A2(n376), .B1(n566), .B2(
        csr_di[8]), .ZN(n377) );
  OAI31D0BWP12T30P140 U444 ( .A1(dmar_addr[6]), .A2(n379), .A3(n378), .B(n377), 
        .ZN(n222) );
  AO22D0BWP12T30P140 U445 ( .A1(csr_di[8]), .A2(n470), .B1(n469), .B2(
        request_data[8]), .Z(n194) );
  INVD0BWP12T30P140 U446 ( .I(dmaw_addr[13]), .ZN(n382) );
  ND2D0BWP12T30P140 U447 ( .A1(n395), .A2(n571), .ZN(n574) );
  AOI22D0BWP12T30P140 U448 ( .A1(dmaw_addr[14]), .A2(n380), .B1(n582), .B2(
        csr_di[16]), .ZN(n381) );
  OAI31D0BWP12T30P140 U449 ( .A1(dmaw_addr[14]), .A2(n382), .A3(n574), .B(n381), .ZN(n260) );
  INVD0BWP12T30P140 U450 ( .I(dmaw_addr[9]), .ZN(n385) );
  ND2D0BWP12T30P140 U451 ( .A1(n395), .A2(n576), .ZN(n579) );
  AOI32D0BWP12T30P140 U452 ( .A1(n576), .A2(n580), .A3(dmaw_addr[9]), .B1(n588), .B2(n580), .ZN(n383) );
  AOI22D0BWP12T30P140 U453 ( .A1(dmaw_addr[10]), .A2(n383), .B1(n627), .B2(
        csr_di[12]), .ZN(n384) );
  OAI31D0BWP12T30P140 U454 ( .A1(dmaw_addr[10]), .A2(n385), .A3(n579), .B(n384), .ZN(n264) );
  AO22D0BWP12T30P140 U455 ( .A1(csr_di[9]), .A2(n470), .B1(n469), .B2(
        request_data[9]), .Z(n192) );
  INVD0BWP12T30P140 U456 ( .I(dmaw_addr[5]), .ZN(n388) );
  ND2D0BWP12T30P140 U457 ( .A1(n395), .A2(n581), .ZN(n585) );
  AOI32D0BWP12T30P140 U458 ( .A1(n581), .A2(n580), .A3(dmaw_addr[5]), .B1(n588), .B2(n580), .ZN(n386) );
  AOI22D0BWP12T30P140 U459 ( .A1(dmaw_addr[6]), .A2(n386), .B1(n582), .B2(
        csr_di[8]), .ZN(n387) );
  OAI31D0BWP12T30P140 U460 ( .A1(dmaw_addr[6]), .A2(n388), .A3(n585), .B(n387), 
        .ZN(n268) );
  ND2D0BWP12T30P140 U461 ( .A1(n395), .A2(n487), .ZN(n490) );
  AOI22D0BWP12T30P140 U462 ( .A1(dmaw_addr[26]), .A2(n389), .B1(n582), .B2(
        csr_di[28]), .ZN(n390) );
  OAI31D0BWP12T30P140 U463 ( .A1(dmaw_addr[26]), .A2(n391), .A3(n490), .B(n390), .ZN(n248) );
  AO22D0BWP12T30P140 U464 ( .A1(csr_di[11]), .A2(n470), .B1(n469), .B2(
        request_data[11]), .Z(n188) );
  ND2D0BWP12T30P140 U465 ( .A1(n395), .A2(n491), .ZN(n494) );
  AOI22D0BWP12T30P140 U466 ( .A1(dmaw_addr[22]), .A2(n392), .B1(n627), .B2(
        csr_di[24]), .ZN(n393) );
  OAI31D0BWP12T30P140 U467 ( .A1(dmaw_addr[22]), .A2(n394), .A3(n494), .B(n393), .ZN(n252) );
  ND2D0BWP12T30P140 U468 ( .A1(n395), .A2(n497), .ZN(n500) );
  AOI32D0BWP12T30P140 U469 ( .A1(n497), .A2(n3), .A3(dmaw_addr[17]), .B1(n575), 
        .B2(n580), .ZN(n396) );
  AOI22D0BWP12T30P140 U470 ( .A1(dmaw_addr[18]), .A2(n396), .B1(n582), .B2(
        csr_di[20]), .ZN(n397) );
  OAI31D0BWP12T30P140 U471 ( .A1(dmaw_addr[18]), .A2(n398), .A3(n500), .B(n397), .ZN(n256) );
  AO22D0BWP12T30P140 U472 ( .A1(csr_di[12]), .A2(n470), .B1(n469), .B2(
        request_data[12]), .Z(n186) );
  NR2D0BWP12T30P140 U473 ( .A1(n399), .A2(n422), .ZN(n401) );
  INVD0BWP12T30P140 U474 ( .I(csr_di[0]), .ZN(n425) );
  OAI21D0BWP12T30P140 U475 ( .A1(dmaw_en), .A2(n401), .B(n611), .ZN(n400) );
  AOI21D0BWP12T30P140 U476 ( .A1(n401), .A2(n425), .B(n400), .ZN(n177) );
  ND2D0BWP12T30P140 U477 ( .A1(dmar_addr[1]), .A2(dmar_addr[0]), .ZN(n404) );
  AOI22D0BWP12T30P140 U478 ( .A1(dmar_addr[2]), .A2(n402), .B1(n566), .B2(
        csr_di[4]), .ZN(n403) );
  OAI31D0BWP12T30P140 U479 ( .A1(dmar_addr[2]), .A2(n602), .A3(n404), .B(n403), 
        .ZN(n226) );
  AO22D0BWP12T30P140 U480 ( .A1(csr_di[13]), .A2(n470), .B1(n469), .B2(
        request_data[13]), .Z(n184) );
  ND2D0BWP12T30P140 U481 ( .A1(n411), .A2(n475), .ZN(n478) );
  AOI22D0BWP12T30P140 U482 ( .A1(dmar_addr[26]), .A2(n405), .B1(n566), .B2(
        csr_di[28]), .ZN(n406) );
  OAI31D0BWP12T30P140 U483 ( .A1(dmar_addr[26]), .A2(n407), .A3(n478), .B(n406), .ZN(n202) );
  ND2D0BWP12T30P140 U484 ( .A1(n411), .A2(n479), .ZN(n482) );
  AOI32D0BWP12T30P140 U485 ( .A1(n479), .A2(n2), .A3(dmar_addr[21]), .B1(n591), 
        .B2(n564), .ZN(n408) );
  AOI22D0BWP12T30P140 U486 ( .A1(dmar_addr[22]), .A2(n408), .B1(n622), .B2(
        csr_di[24]), .ZN(n409) );
  OAI31D0BWP12T30P140 U487 ( .A1(dmar_addr[22]), .A2(n410), .A3(n482), .B(n409), .ZN(n206) );
  AO22D0BWP12T30P140 U488 ( .A1(csr_di[14]), .A2(n470), .B1(n469), .B2(
        request_data[14]), .Z(n182) );
  ND2D0BWP12T30P140 U489 ( .A1(n411), .A2(n483), .ZN(n486) );
  AOI32D0BWP12T30P140 U490 ( .A1(n483), .A2(n2), .A3(dmar_addr[17]), .B1(n602), 
        .B2(n564), .ZN(n412) );
  AOI22D0BWP12T30P140 U491 ( .A1(dmar_addr[18]), .A2(n412), .B1(n622), .B2(
        csr_di[20]), .ZN(n413) );
  OAI31D0BWP12T30P140 U492 ( .A1(dmar_addr[18]), .A2(n414), .A3(n486), .B(n413), .ZN(n210) );
  AOI21D0BWP12T30P140 U493 ( .A1(n436), .A2(n415), .B(n589), .ZN(n601) );
  NR2D0BWP12T30P140 U494 ( .A1(n591), .A2(n415), .ZN(n604) );
  AOI22D0BWP12T30P140 U495 ( .A1(csr_di[5]), .A2(n622), .B1(n604), .B2(n417), 
        .ZN(n416) );
  OAI21D0BWP12T30P140 U496 ( .A1(n601), .A2(n417), .B(n416), .ZN(n225) );
  MOAI22D0BWP12T30P140 U497 ( .A1(n418), .A2(n425), .B1(n469), .B2(
        request_data[0]), .ZN(n175) );
  ND2D0BWP12T30P140 U498 ( .A1(dmaw_addr[1]), .A2(dmaw_addr[0]), .ZN(n421) );
  AOI32D0BWP12T30P140 U499 ( .A1(dmaw_addr[1]), .A2(n3), .A3(dmaw_addr[0]), 
        .B1(n575), .B2(n580), .ZN(n419) );
  AOI22D0BWP12T30P140 U500 ( .A1(dmaw_addr[2]), .A2(n419), .B1(n582), .B2(
        csr_di[4]), .ZN(n420) );
  OAI31D0BWP12T30P140 U501 ( .A1(dmaw_addr[2]), .A2(n575), .A3(n421), .B(n420), 
        .ZN(n272) );
  NR2D0BWP12T30P140 U502 ( .A1(n423), .A2(n422), .ZN(n426) );
  OAI21D0BWP12T30P140 U503 ( .A1(dmar_en), .A2(n426), .B(n611), .ZN(n424) );
  AOI21D0BWP12T30P140 U504 ( .A1(n426), .A2(n425), .B(n424), .ZN(n176) );
  AO22D0BWP12T30P140 U505 ( .A1(csr_di[3]), .A2(n470), .B1(request_data[3]), 
        .B2(n469), .Z(n169) );
  AOI22D0BWP12T30P140 U506 ( .A1(csr_di[9]), .A2(n627), .B1(n427), .B2(n429), 
        .ZN(n428) );
  OAI21D0BWP12T30P140 U507 ( .A1(n430), .A2(n429), .B(n428), .ZN(n267) );
  AOI22D0BWP12T30P140 U508 ( .A1(csr_di[5]), .A2(n582), .B1(n431), .B2(n433), 
        .ZN(n432) );
  OAI21D0BWP12T30P140 U509 ( .A1(n434), .A2(n433), .B(n432), .ZN(n271) );
  AO22D0BWP12T30P140 U510 ( .A1(csr_di[4]), .A2(n470), .B1(request_data[4]), 
        .B2(n469), .Z(n166) );
  OR2D0BWP12T30P140 U511 ( .A1(n435), .A2(n591), .Z(n447) );
  AOI21D0BWP12T30P140 U512 ( .A1(n436), .A2(n435), .B(n589), .ZN(n450) );
  OAI21D0BWP12T30P140 U513 ( .A1(dmar_addr[11]), .A2(n591), .B(n450), .ZN(n437) );
  AOI22D0BWP12T30P140 U514 ( .A1(dmar_addr[12]), .A2(n437), .B1(n566), .B2(
        csr_di[14]), .ZN(n438) );
  OAI31D0BWP12T30P140 U515 ( .A1(dmar_addr[12]), .A2(n449), .A3(n447), .B(n438), .ZN(n216) );
  OR2D0BWP12T30P140 U516 ( .A1(n439), .A2(n588), .Z(n455) );
  AOI21D0BWP12T30P140 U517 ( .A1(n440), .A2(n439), .B(n586), .ZN(n458) );
  OAI21D0BWP12T30P140 U518 ( .A1(dmaw_addr[11]), .A2(n588), .B(n458), .ZN(n441) );
  AOI22D0BWP12T30P140 U519 ( .A1(dmaw_addr[12]), .A2(n441), .B1(n627), .B2(
        csr_di[14]), .ZN(n442) );
  OAI31D0BWP12T30P140 U520 ( .A1(dmaw_addr[12]), .A2(n457), .A3(n455), .B(n442), .ZN(n262) );
  AO22D0BWP12T30P140 U521 ( .A1(csr_di[5]), .A2(n470), .B1(request_data[5]), 
        .B2(n469), .Z(n163) );
  MAOI22D0BWP12T30P140 U522 ( .A1(csr_di[17]), .A2(n566), .B1(dmar_addr[15]), 
        .B2(n443), .ZN(n444) );
  OAI21D0BWP12T30P140 U523 ( .A1(n446), .A2(n445), .B(n444), .ZN(n213) );
  MAOI22D0BWP12T30P140 U524 ( .A1(csr_di[13]), .A2(n566), .B1(dmar_addr[11]), 
        .B2(n447), .ZN(n448) );
  OAI21D0BWP12T30P140 U525 ( .A1(n450), .A2(n449), .B(n448), .ZN(n217) );
  AO22D0BWP12T30P140 U526 ( .A1(csr_di[3]), .A2(n496), .B1(request_addr[3]), 
        .B2(n495), .Z(n170) );
  MAOI22D0BWP12T30P140 U527 ( .A1(csr_di[17]), .A2(n627), .B1(dmaw_addr[15]), 
        .B2(n451), .ZN(n452) );
  OAI21D0BWP12T30P140 U528 ( .A1(n454), .A2(n453), .B(n452), .ZN(n259) );
  MAOI22D0BWP12T30P140 U529 ( .A1(csr_di[13]), .A2(n627), .B1(dmaw_addr[11]), 
        .B2(n455), .ZN(n456) );
  OAI21D0BWP12T30P140 U530 ( .A1(n458), .A2(n457), .B(n456), .ZN(n263) );
  AO22D0BWP12T30P140 U531 ( .A1(csr_di[4]), .A2(n496), .B1(request_addr[4]), 
        .B2(n495), .Z(n167) );
  AOI22D0BWP12T30P140 U532 ( .A1(n464), .A2(n525), .B1(n544), .B2(csr_di[2]), 
        .ZN(n459) );
  OAI21D0BWP12T30P140 U533 ( .A1(n460), .A2(n525), .B(n459), .ZN(n290) );
  INVD0BWP12T30P140 U534 ( .I(n544), .ZN(n537) );
  AOI21D0BWP12T30P140 U535 ( .A1(dmaw_next), .A2(n461), .B(n542), .ZN(n501) );
  AOI32D0BWP12T30P140 U536 ( .A1(n464), .A2(dmaw_remaining[8]), .A3(
        dmaw_remaining[7]), .B1(n501), .B2(dmaw_remaining[8]), .ZN(n462) );
  ND2D0BWP12T30P140 U537 ( .A1(n464), .A2(n538), .ZN(n541) );
  OAI211D0BWP12T30P140 U538 ( .A1(n537), .A2(n468), .B(n462), .C(n541), .ZN(
        n282) );
  AO22D0BWP12T30P140 U539 ( .A1(csr_di[6]), .A2(n496), .B1(request_addr[6]), 
        .B2(n495), .Z(n161) );
  AOI21D0BWP12T30P140 U540 ( .A1(dmaw_next), .A2(n463), .B(n542), .ZN(n508) );
  AOI32D0BWP12T30P140 U541 ( .A1(n464), .A2(dmaw_remaining[4]), .A3(
        dmaw_remaining[3]), .B1(n508), .B2(dmaw_remaining[4]), .ZN(n465) );
  ND2D0BWP12T30P140 U542 ( .A1(n464), .A2(n543), .ZN(n547) );
  OAI211D0BWP12T30P140 U543 ( .A1(n537), .A2(n607), .B(n465), .C(n547), .ZN(
        n286) );
  ND2D0BWP12T30P140 U544 ( .A1(n472), .A2(n548), .ZN(n551) );
  AOI21D0BWP12T30P140 U545 ( .A1(dmar_next), .A2(n466), .B(n552), .ZN(n511) );
  AOI32D0BWP12T30P140 U546 ( .A1(n472), .A2(dmar_remaining[8]), .A3(
        dmar_remaining[7]), .B1(n511), .B2(dmar_remaining[8]), .ZN(n467) );
  OAI211D0BWP12T30P140 U547 ( .A1(n468), .A2(n474), .B(n551), .C(n467), .ZN(
        n236) );
  AO22D0BWP12T30P140 U548 ( .A1(csr_di[2]), .A2(n470), .B1(request_data[2]), 
        .B2(n469), .Z(n172) );
  ND2D0BWP12T30P140 U549 ( .A1(n472), .A2(n553), .ZN(n557) );
  AOI21D0BWP12T30P140 U550 ( .A1(dmar_next), .A2(n471), .B(n552), .ZN(n518) );
  AOI32D0BWP12T30P140 U551 ( .A1(n472), .A2(dmar_remaining[4]), .A3(
        dmar_remaining[3]), .B1(n518), .B2(dmar_remaining[4]), .ZN(n473) );
  OAI211D0BWP12T30P140 U552 ( .A1(n607), .A2(n474), .B(n557), .C(n473), .ZN(
        n240) );
  OAI21D0BWP12T30P140 U553 ( .A1(n475), .A2(n602), .B(n564), .ZN(n476) );
  AOI22D0BWP12T30P140 U554 ( .A1(dmar_addr[25]), .A2(n476), .B1(n622), .B2(
        csr_di[27]), .ZN(n477) );
  OAI21D0BWP12T30P140 U555 ( .A1(dmar_addr[25]), .A2(n478), .B(n477), .ZN(n203) );
  AO22D0BWP12T30P140 U556 ( .A1(csr_di[2]), .A2(n496), .B1(request_addr[2]), 
        .B2(n495), .Z(n173) );
  OAI21D0BWP12T30P140 U557 ( .A1(n479), .A2(n602), .B(n564), .ZN(n480) );
  AOI22D0BWP12T30P140 U558 ( .A1(dmar_addr[21]), .A2(n480), .B1(n622), .B2(
        csr_di[23]), .ZN(n481) );
  OAI21D0BWP12T30P140 U559 ( .A1(dmar_addr[21]), .A2(n482), .B(n481), .ZN(n207) );
  OAI21D0BWP12T30P140 U560 ( .A1(n483), .A2(n602), .B(n564), .ZN(n484) );
  AOI22D0BWP12T30P140 U561 ( .A1(dmar_addr[17]), .A2(n484), .B1(n622), .B2(
        csr_di[19]), .ZN(n485) );
  OAI21D0BWP12T30P140 U562 ( .A1(dmar_addr[17]), .A2(n486), .B(n485), .ZN(n211) );
  AO22D0BWP12T30P140 U563 ( .A1(csr_di[0]), .A2(n496), .B1(request_addr[0]), 
        .B2(n495), .Z(n178) );
  OAI21D0BWP12T30P140 U564 ( .A1(n487), .A2(n575), .B(n580), .ZN(n488) );
  AOI22D0BWP12T30P140 U565 ( .A1(dmaw_addr[25]), .A2(n488), .B1(n627), .B2(
        csr_di[27]), .ZN(n489) );
  OAI21D0BWP12T30P140 U566 ( .A1(dmaw_addr[25]), .A2(n490), .B(n489), .ZN(n249) );
  OAI21D0BWP12T30P140 U567 ( .A1(n491), .A2(n575), .B(n580), .ZN(n492) );
  AOI22D0BWP12T30P140 U568 ( .A1(dmaw_addr[21]), .A2(n492), .B1(n582), .B2(
        csr_di[23]), .ZN(n493) );
  OAI21D0BWP12T30P140 U569 ( .A1(dmaw_addr[21]), .A2(n494), .B(n493), .ZN(n253) );
  AO22D0BWP12T30P140 U570 ( .A1(csr_di[1]), .A2(n496), .B1(request_addr[1]), 
        .B2(n495), .Z(n155) );
  OAI21D0BWP12T30P140 U571 ( .A1(n497), .A2(n575), .B(n580), .ZN(n498) );
  AOI22D0BWP12T30P140 U572 ( .A1(dmaw_addr[17]), .A2(n498), .B1(n582), .B2(
        csr_di[19]), .ZN(n499) );
  OAI21D0BWP12T30P140 U573 ( .A1(dmaw_addr[17]), .A2(n500), .B(n499), .ZN(n257) );
  AOI22D0BWP12T30P140 U574 ( .A1(dmaw_remaining[7]), .A2(n501), .B1(n544), 
        .B2(csr_di[9]), .ZN(n502) );
  OAI31D0BWP12T30P140 U575 ( .A1(dmaw_remaining[7]), .A2(n528), .A3(n503), .B(
        n502), .ZN(n283) );
  AOI22D0BWP12T30P140 U576 ( .A1(csr_di[9]), .A2(n622), .B1(n504), .B2(n506), 
        .ZN(n505) );
  OAI21D0BWP12T30P140 U577 ( .A1(n507), .A2(n506), .B(n505), .ZN(n221) );
  AOI22D0BWP12T30P140 U578 ( .A1(dmaw_remaining[3]), .A2(n508), .B1(n544), 
        .B2(csr_di[5]), .ZN(n509) );
  OAI31D0BWP12T30P140 U579 ( .A1(dmaw_remaining[3]), .A2(n528), .A3(n510), .B(
        n509), .ZN(n287) );
  AOI22D0BWP12T30P140 U580 ( .A1(dmar_remaining[7]), .A2(n511), .B1(n554), 
        .B2(csr_di[9]), .ZN(n512) );
  OAI31D0BWP12T30P140 U581 ( .A1(dmar_remaining[7]), .A2(n532), .A3(n513), .B(
        n512), .ZN(n237) );
  INVD0BWP12T30P140 U582 ( .I(dmar_remaining[9]), .ZN(n514) );
  AOI31D0BWP12T30P140 U583 ( .A1(dmar_next), .A2(n548), .A3(n514), .B(n552), 
        .ZN(n515) );
  AOI22D0BWP12T30P140 U584 ( .A1(dmar_remaining[10]), .A2(n515), .B1(n554), 
        .B2(csr_di[12]), .ZN(n516) );
  OAI21D0BWP12T30P140 U585 ( .A1(n532), .A2(n517), .B(n516), .ZN(n234) );
  AOI22D0BWP12T30P140 U586 ( .A1(dmar_remaining[3]), .A2(n518), .B1(n554), 
        .B2(csr_di[5]), .ZN(n519) );
  OAI31D0BWP12T30P140 U587 ( .A1(dmar_remaining[3]), .A2(n532), .A3(n520), .B(
        n519), .ZN(n241) );
  AOI21D0BWP12T30P140 U588 ( .A1(dmaw_next), .A2(n521), .B(n542), .ZN(n522) );
  AOI22D0BWP12T30P140 U589 ( .A1(dmaw_remaining[11]), .A2(n522), .B1(n544), 
        .B2(csr_di[13]), .ZN(n523) );
  OAI31D0BWP12T30P140 U590 ( .A1(dmaw_remaining[11]), .A2(n528), .A3(n524), 
        .B(n523), .ZN(n279) );
  OA22D0BWP12T30P140 U591 ( .A1(n600), .A2(request_addr[1]), .B1(down_addr[13]), .B2(n592), .Z(n147) );
  AOI21D0BWP12T30P140 U592 ( .A1(dmaw_next), .A2(n525), .B(n542), .ZN(n526) );
  AOI22D0BWP12T30P140 U593 ( .A1(dmaw_remaining[1]), .A2(n526), .B1(n544), 
        .B2(csr_di[3]), .ZN(n527) );
  OAI31D0BWP12T30P140 U594 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), 
        .A3(n528), .B(n527), .ZN(n289) );
  AOI21D0BWP12T30P140 U595 ( .A1(dmar_next), .A2(n529), .B(n552), .ZN(n530) );
  AOI22D0BWP12T30P140 U596 ( .A1(dmar_remaining[1]), .A2(n530), .B1(n554), 
        .B2(csr_di[3]), .ZN(n531) );
  OAI31D0BWP12T30P140 U597 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), 
        .A3(n532), .B(n531), .ZN(n243) );
  OA22D0BWP12T30P140 U598 ( .A1(n600), .A2(request_addr[2]), .B1(down_addr[14]), .B2(n592), .Z(n148) );
  AOI21D0BWP12T30P140 U599 ( .A1(dmaw_remaining[13]), .A2(n534), .B(n533), 
        .ZN(n535) );
  OAI21D0BWP12T30P140 U600 ( .A1(n537), .A2(n536), .B(n535), .ZN(n277) );
  AOI21D0BWP12T30P140 U601 ( .A1(dmaw_next), .A2(n538), .B(n542), .ZN(n539) );
  AOI22D0BWP12T30P140 U602 ( .A1(dmaw_remaining[9]), .A2(n539), .B1(n544), 
        .B2(csr_di[11]), .ZN(n540) );
  OAI21D0BWP12T30P140 U603 ( .A1(dmaw_remaining[9]), .A2(n541), .B(n540), .ZN(
        n281) );
  OA22D0BWP12T30P140 U604 ( .A1(n593), .A2(request_addr[4]), .B1(down_addr[16]), .B2(n592), .Z(n150) );
  AOI21D0BWP12T30P140 U605 ( .A1(dmaw_next), .A2(n543), .B(n542), .ZN(n545) );
  AOI22D0BWP12T30P140 U606 ( .A1(dmaw_remaining[5]), .A2(n545), .B1(n544), 
        .B2(csr_di[7]), .ZN(n546) );
  OAI21D0BWP12T30P140 U607 ( .A1(dmaw_remaining[5]), .A2(n547), .B(n546), .ZN(
        n285) );
  AOI21D0BWP12T30P140 U608 ( .A1(dmar_next), .A2(n548), .B(n552), .ZN(n549) );
  AOI22D0BWP12T30P140 U609 ( .A1(dmar_remaining[9]), .A2(n549), .B1(n554), 
        .B2(csr_di[11]), .ZN(n550) );
  OAI21D0BWP12T30P140 U610 ( .A1(dmar_remaining[9]), .A2(n551), .B(n550), .ZN(
        n235) );
  OA22D0BWP12T30P140 U611 ( .A1(n593), .A2(request_addr[5]), .B1(down_addr[17]), .B2(n592), .Z(n151) );
  AOI21D0BWP12T30P140 U612 ( .A1(dmar_next), .A2(n553), .B(n552), .ZN(n555) );
  AOI22D0BWP12T30P140 U613 ( .A1(dmar_remaining[5]), .A2(n555), .B1(n554), 
        .B2(csr_di[7]), .ZN(n556) );
  OAI21D0BWP12T30P140 U614 ( .A1(dmar_remaining[5]), .A2(n557), .B(n556), .ZN(
        n239) );
  INVD0BWP12T30P140 U615 ( .I(dmar_addr[0]), .ZN(n560) );
  OAI21D0BWP12T30P140 U616 ( .A1(dmar_addr[0]), .A2(n602), .B(n564), .ZN(n558)
         );
  AOI22D0BWP12T30P140 U617 ( .A1(dmar_addr[1]), .A2(n558), .B1(n566), .B2(
        csr_di[3]), .ZN(n559) );
  OAI31D0BWP12T30P140 U618 ( .A1(dmar_addr[1]), .A2(n602), .A3(n560), .B(n559), 
        .ZN(n227) );
  OA22D0BWP12T30P140 U619 ( .A1(n600), .A2(request_addr[6]), .B1(down_addr[18]), .B2(n592), .Z(n152) );
  OAI21D0BWP12T30P140 U620 ( .A1(dmaw_addr[0]), .A2(n575), .B(n580), .ZN(n561)
         );
  AOI22D0BWP12T30P140 U621 ( .A1(dmaw_addr[1]), .A2(n561), .B1(n627), .B2(
        csr_di[3]), .ZN(n562) );
  OAI31D0BWP12T30P140 U622 ( .A1(dmaw_addr[1]), .A2(n575), .A3(n563), .B(n562), 
        .ZN(n273) );
  OAI21D0BWP12T30P140 U623 ( .A1(n565), .A2(n602), .B(n564), .ZN(n567) );
  AOI22D0BWP12T30P140 U624 ( .A1(dmar_addr[13]), .A2(n567), .B1(n566), .B2(
        csr_di[15]), .ZN(n568) );
  OAI21D0BWP12T30P140 U625 ( .A1(dmar_addr[13]), .A2(n569), .B(n568), .ZN(n215) );
  ND4D0BWP12T30P140 U626 ( .A1(up_addr_valid), .A2(up_frame_valid), .A3(
        up_data_valid), .A4(up_en), .ZN(n570) );
  INR3D1BWP12T30P140 U627 ( .A1(up_next_frame), .B1(n632), .B2(n570), .ZN(N708) );
  CKMUX2D0BWP12T30P140 U628 ( .I0(reply_data[0]), .I1(up_data[4]), .S(N708), 
        .Z(n306) );
  OAI21D0BWP12T30P140 U629 ( .A1(n571), .A2(n575), .B(n580), .ZN(n572) );
  AOI22D0BWP12T30P140 U630 ( .A1(dmaw_addr[13]), .A2(n572), .B1(n627), .B2(
        csr_di[15]), .ZN(n573) );
  OAI21D0BWP12T30P140 U631 ( .A1(dmaw_addr[13]), .A2(n574), .B(n573), .ZN(n261) );
  OAI21D0BWP12T30P140 U632 ( .A1(n576), .A2(n575), .B(n580), .ZN(n577) );
  AOI22D0BWP12T30P140 U633 ( .A1(dmaw_addr[9]), .A2(n577), .B1(n582), .B2(
        csr_di[11]), .ZN(n578) );
  OAI21D0BWP12T30P140 U634 ( .A1(dmaw_addr[9]), .A2(n579), .B(n578), .ZN(n265)
         );
  CKMUX2D0BWP12T30P140 U635 ( .I0(reply_data[1]), .I1(up_data[5]), .S(N708), 
        .Z(n291) );
  OAI21D0BWP12T30P140 U636 ( .A1(n581), .A2(n588), .B(n580), .ZN(n583) );
  AOI22D0BWP12T30P140 U637 ( .A1(dmaw_addr[5]), .A2(n583), .B1(n582), .B2(
        csr_di[7]), .ZN(n584) );
  OAI21D0BWP12T30P140 U638 ( .A1(dmaw_addr[5]), .A2(n585), .B(n584), .ZN(n269)
         );
  AOI22D0BWP12T30P140 U639 ( .A1(n586), .A2(dmaw_addr[0]), .B1(n627), .B2(
        csr_di[2]), .ZN(n587) );
  OAI21D0BWP12T30P140 U640 ( .A1(dmaw_addr[0]), .A2(n588), .B(n587), .ZN(n274)
         );
  CKMUX2D0BWP12T30P140 U641 ( .I0(reply_data[3]), .I1(up_data[7]), .S(N708), 
        .Z(n293) );
  AOI22D0BWP12T30P140 U642 ( .A1(n589), .A2(dmar_addr[0]), .B1(n622), .B2(
        csr_di[2]), .ZN(n590) );
  OAI21D0BWP12T30P140 U643 ( .A1(dmar_addr[0]), .A2(n591), .B(n590), .ZN(n228)
         );
  AN2D0BWP12T30P140 U644 ( .A1(down_data[1]), .A2(n593), .Z(n145) );
  CKMUX2D0BWP12T30P140 U645 ( .I0(reply_data[4]), .I1(up_data[8]), .S(N708), 
        .Z(n294) );
  CKMUX2D0BWP12T30P140 U646 ( .I0(reply_data[5]), .I1(up_data[9]), .S(N708), 
        .Z(n295) );
  CKMUX2D0BWP12T30P140 U647 ( .I0(reply_data[6]), .I1(up_data[10]), .S(N708), 
        .Z(n296) );
  CKMUX2D0BWP12T30P140 U648 ( .I0(reply_data[7]), .I1(up_data[11]), .S(N708), 
        .Z(n297) );
  CKMUX2D0BWP12T30P140 U649 ( .I0(reply_data[8]), .I1(up_data[12]), .S(N708), 
        .Z(n298) );
  CKMUX2D0BWP12T30P140 U650 ( .I0(reply_data[9]), .I1(up_data[13]), .S(N708), 
        .Z(n299) );
  CKMUX2D0BWP12T30P140 U651 ( .I0(reply_data[10]), .I1(up_data[14]), .S(N708), 
        .Z(n300) );
  CKMUX2D0BWP12T30P140 U652 ( .I0(reply_data[11]), .I1(up_data[15]), .S(N708), 
        .Z(n301) );
  CKMUX2D0BWP12T30P140 U653 ( .I0(reply_data[12]), .I1(up_data[16]), .S(N708), 
        .Z(n302) );
  CKMUX2D0BWP12T30P140 U654 ( .I0(reply_data[13]), .I1(up_data[17]), .S(N708), 
        .Z(n303) );
  CKMUX2D0BWP12T30P140 U655 ( .I0(reply_data[14]), .I1(up_data[18]), .S(N708), 
        .Z(n304) );
  CKMUX2D0BWP12T30P140 U656 ( .I0(reply_data[15]), .I1(up_data[19]), .S(N708), 
        .Z(n305) );
  MAOI22D0BWP12T30P140 U657 ( .A1(n599), .A2(request_write), .B1(down_addr[19]), .B2(n592), .ZN(n153) );
  CKMUX2D0BWP12T30P140 U658 ( .I0(reply_data[2]), .I1(up_data[6]), .S(N708), 
        .Z(n292) );
  OA22D0BWP12T30P140 U659 ( .A1(n593), .A2(request_data[0]), .B1(down_data[4]), 
        .B2(n599), .Z(n174) );
  OA22D0BWP12T30P140 U660 ( .A1(n593), .A2(request_data[1]), .B1(down_data[5]), 
        .B2(n592), .Z(n156) );
  OA22D0BWP12T30P140 U661 ( .A1(n600), .A2(request_data[2]), .B1(down_data[6]), 
        .B2(n599), .Z(n171) );
  OA22D0BWP12T30P140 U662 ( .A1(n593), .A2(request_data[3]), .B1(down_data[7]), 
        .B2(n599), .Z(n168) );
  OA22D0BWP12T30P140 U663 ( .A1(n593), .A2(request_data[11]), .B1(
        down_data[15]), .B2(n599), .Z(n187) );
  OA22D0BWP12T30P140 U664 ( .A1(n593), .A2(request_data[13]), .B1(
        down_data[17]), .B2(n599), .Z(n183) );
  OA22D0BWP12T30P140 U665 ( .A1(n600), .A2(request_data[14]), .B1(
        down_data[18]), .B2(n599), .Z(n181) );
  ND2D0BWP12T30P140 U666 ( .A1(csr_di[0]), .A2(n611), .ZN(n595) );
  OAI32D0BWP12T30P140 U667 ( .A1(n598), .A2(n597), .A3(n596), .B1(n595), .B2(
        n594), .ZN(n154) );
  OA22D0BWP12T30P140 U668 ( .A1(n600), .A2(request_data[4]), .B1(down_data[8]), 
        .B2(n599), .Z(n165) );
  OAI21D0BWP12T30P140 U669 ( .A1(dmar_addr[3]), .A2(n602), .B(n601), .ZN(n603)
         );
  AOI32D0BWP12T30P140 U670 ( .A1(dmar_addr[3]), .A2(n605), .A3(n604), .B1(
        dmar_addr[4]), .B2(n603), .ZN(n606) );
  OAI21D0BWP12T30P140 U671 ( .A1(n608), .A2(n607), .B(n606), .ZN(n224) );
  CKBD0BWP12T30P140 U672 ( .I(sys_clk), .Z(n649) );
  CKBD0BWP12T30P140 U673 ( .I(sys_clk), .Z(n650) );
  CKBD0BWP12T30P140 U674 ( .I(sys_clk), .Z(n654) );
  CKBD0BWP12T30P140 U675 ( .I(sys_clk), .Z(n653) );
  CKBD0BWP12T30P140 U676 ( .I(sys_clk), .Z(n655) );
  CKBD0BWP12T30P140 U677 ( .I(sys_clk), .Z(n651) );
  CKBD0BWP12T30P140 U678 ( .I(sys_clk), .Z(n652) );
  CKBD0BWP12T30P140 U679 ( .I(sys_clk), .Z(n656) );
  CKBD0BWP12T30P140 U680 ( .I(sys_clk), .Z(n648) );
  CKBD0BWP12T30P140 U681 ( .I(sys_clk), .Z(n657) );
  INVD0BWP12T30P140 U682 ( .I(n609), .ZN(n630) );
  ND2D0BWP12T30P140 U683 ( .A1(n611), .A2(n630), .ZN(N20) );
  INVD0BWP12T30P140 U684 ( .I(n610), .ZN(n631) );
  ND2D0BWP12T30P140 U685 ( .A1(n611), .A2(n631), .ZN(N19) );
  AOI22D0BWP12T30P140 U686 ( .A1(dmaw_remaining[14]), .A2(n615), .B1(
        dmar_remaining[14]), .B2(n614), .ZN(n613) );
  AOI22D0BWP12T30P140 U687 ( .A1(dmaw_addr[14]), .A2(n617), .B1(dmar_addr[14]), 
        .B2(n616), .ZN(n612) );
  ND2D0BWP12T30P140 U688 ( .A1(n613), .A2(n612), .ZN(N566) );
  AOI22D0BWP12T30P140 U689 ( .A1(dmaw_remaining[15]), .A2(n615), .B1(
        dmar_remaining[15]), .B2(n614), .ZN(n619) );
  AOI22D0BWP12T30P140 U690 ( .A1(dmaw_addr[15]), .A2(n617), .B1(dmar_addr[15]), 
        .B2(n616), .ZN(n618) );
  ND2D0BWP12T30P140 U691 ( .A1(n619), .A2(n618), .ZN(N567) );
  AOI22D0BWP12T30P140 U692 ( .A1(csr_di[29]), .A2(n622), .B1(n621), .B2(n620), 
        .ZN(n623) );
  IOA21D0BWP12T30P140 U693 ( .A1(dmar_addr[27]), .A2(n624), .B(n623), .ZN(n201) );
  AOI22D0BWP12T30P140 U694 ( .A1(csr_di[29]), .A2(n627), .B1(n626), .B2(n625), 
        .ZN(n628) );
  IOA21D0BWP12T30P140 U695 ( .A1(dmaw_addr[27]), .A2(n629), .B(n628), .ZN(n247) );
  NR3D0BWP12T30P140 U696 ( .A1(n632), .A2(dmaw_finished_r), .A3(n630), .ZN(
        N706) );
  NR3D0BWP12T30P140 U697 ( .A1(n632), .A2(dmar_finished_r), .A3(n631), .ZN(
        N705) );
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
  DFQD2BWP12T30P140 wbm_adr_o_reg_31_ ( .D(n70), .CP(n154), .Q(wbm_adr_o[31])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_30_ ( .D(n69), .CP(n153), .Q(wbm_adr_o[30])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_28_ ( .D(n67), .CP(sys_clk), .Q(
        wbm_adr_o[28]) );
  DFQD2BWP12T30P140 wbm_adr_o_reg_27_ ( .D(n66), .CP(n155), .Q(wbm_adr_o[27])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_26_ ( .D(n65), .CP(n154), .Q(wbm_adr_o[26])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_25_ ( .D(n64), .CP(n154), .Q(wbm_adr_o[25])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_24_ ( .D(n63), .CP(n154), .Q(wbm_adr_o[24])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_23_ ( .D(n62), .CP(n154), .Q(wbm_adr_o[23])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_22_ ( .D(n61), .CP(n154), .Q(wbm_adr_o[22])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_21_ ( .D(n60), .CP(n154), .Q(wbm_adr_o[21])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_20_ ( .D(n59), .CP(n154), .Q(wbm_adr_o[20])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_19_ ( .D(n58), .CP(n154), .Q(wbm_adr_o[19])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_18_ ( .D(n57), .CP(n154), .Q(wbm_adr_o[18])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_17_ ( .D(n56), .CP(n154), .Q(wbm_adr_o[17])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_16_ ( .D(n55), .CP(n154), .Q(wbm_adr_o[16])
         );
  DFQD2BWP12T30P140 wbm_adr_o_reg_15_ ( .D(n54), .CP(n154), .Q(wbm_adr_o[15])
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
  DFQD2BWP12T30P140 wbm_adr_o_reg_0_ ( .D(n71), .CP(n153), .Q(wbm_adr_o[1]) );
  DFQD2BWP12T30P140 down_pcmleft_valid_reg ( .D(n104), .CP(n155), .Q(
        down_pcmleft_valid) );
  DFQD2BWP12T30P140 down_pcmright_reg_17_ ( .D(n101), .CP(n155), .Q(
        down_pcmright[17]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_11_ ( .D(n80), .CP(sys_clk), .Q(
        down_pcmleft[11]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_9_ ( .D(n78), .CP(sys_clk), .Q(
        down_pcmleft[9]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_6_ ( .D(n75), .CP(n155), .Q(
        down_pcmleft[6]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_5_ ( .D(n74), .CP(n155), .Q(
        down_pcmleft[5]) );
  DFQD2BWP12T30P140 down_pcmright_reg_6_ ( .D(n91), .CP(n154), .Q(
        down_pcmright[6]) );
  DFQD2BWP12T30P140 down_pcmright_reg_4_ ( .D(n89), .CP(n153), .Q(
        down_pcmright[4]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_7_ ( .D(n76), .CP(n155), .Q(
        down_pcmleft[7]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_4_ ( .D(n73), .CP(n155), .Q(
        down_pcmleft[4]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_10_ ( .D(n79), .CP(sys_clk), .Q(
        down_pcmleft[10]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_8_ ( .D(n77), .CP(n155), .Q(
        down_pcmleft[8]) );
  DFQD2BWP12T30P140 down_pcmright_reg_14_ ( .D(n99), .CP(sys_clk), .Q(
        down_pcmright[14]) );
  DFQD2BWP12T30P140 down_pcmright_reg_12_ ( .D(n97), .CP(n155), .Q(
        down_pcmright[12]) );
  DFQD2BWP12T30P140 down_pcmright_reg_11_ ( .D(n96), .CP(n154), .Q(
        down_pcmright[11]) );
  DFQD2BWP12T30P140 down_pcmright_reg_5_ ( .D(n90), .CP(sys_clk), .Q(
        down_pcmright[5]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_14_ ( .D(n83), .CP(n154), .Q(
        down_pcmleft[14]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_13_ ( .D(n82), .CP(n153), .Q(
        down_pcmleft[13]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_12_ ( .D(n81), .CP(n155), .Q(
        down_pcmleft[12]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_19_ ( .D(n87), .CP(n154), .Q(
        down_pcmleft[19]) );
  DFQD2BWP12T30P140 down_pcmright_reg_13_ ( .D(n98), .CP(n155), .Q(
        down_pcmright[13]) );
  DFQD2BWP12T30P140 down_pcmright_reg_10_ ( .D(n95), .CP(n154), .Q(
        down_pcmright[10]) );
  DFQD2BWP12T30P140 down_pcmright_reg_9_ ( .D(n94), .CP(n153), .Q(
        down_pcmright[9]) );
  DFQD2BWP12T30P140 down_pcmright_reg_7_ ( .D(n92), .CP(sys_clk), .Q(
        down_pcmright[7]) );
  DFQD2BWP12T30P140 down_pcmright_reg_16_ ( .D(n100), .CP(n155), .Q(
        down_pcmright[16]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_18_ ( .D(n86), .CP(n153), .Q(
        down_pcmleft[18]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_16_ ( .D(n84), .CP(n155), .Q(
        down_pcmleft[16]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_17_ ( .D(n85), .CP(n154), .Q(
        down_pcmleft[17]) );
  DFQD2BWP12T30P140 down_pcmleft_reg_0_ ( .D(n72), .CP(n155), .Q(
        down_pcmleft[15]) );
  DFQD2BWP12T30P140 down_pcmright_reg_0_ ( .D(n88), .CP(n153), .Q(
        down_pcmright[15]) );
  DFQD2BWP12T30P140 state_reg_1_ ( .D(n106), .CP(n155), .Q(state[1]) );
  DFQD2BWP12T30P140 state_reg_0_ ( .D(n107), .CP(n155), .Q(state[0]) );
  DFQD1BWP12T30P140 wbm_adr_o_reg_29_ ( .D(n68), .CP(n155), .Q(wbm_adr_o[29])
         );
  DFQD1BWP12T30P140 wbm_adr_o_reg_14_ ( .D(n53), .CP(n154), .Q(wbm_adr_o[14])
         );
  DFQD1BWP12T30P140 down_pcmright_reg_18_ ( .D(n102), .CP(n155), .Q(
        down_pcmright[18]) );
  DFQD1BWP12T30P140 down_pcmright_reg_8_ ( .D(n93), .CP(n153), .Q(
        down_pcmright[8]) );
  DFQD1BWP12T30P140 state_reg_2_ ( .D(n105), .CP(n155), .Q(state[2]) );
  ND2D0BWP12T30P140 U3 ( .A1(n38), .A2(n37), .ZN(wbm_cyc_o) );
  ND2D0BWP12T30P140 U4 ( .A1(n14), .A2(state[0]), .ZN(n38) );
  NR2D0BWP12T30P140 U5 ( .A1(state[2]), .A2(state[1]), .ZN(n14) );
  AOI21D0BWP12T30P140 U6 ( .A1(n2), .A2(n109), .B(n21), .ZN(n33) );
  CKBD0BWP12T30P140 U7 ( .I(down_pcmright[15]), .Z(down_pcmright[0]) );
  CKBD0BWP12T30P140 U8 ( .I(down_pcmright[16]), .Z(down_pcmright[1]) );
  CKBD0BWP12T30P140 U9 ( .I(down_pcmright[17]), .Z(down_pcmright[2]) );
  CKBD0BWP12T30P140 U10 ( .I(down_pcmright[18]), .Z(down_pcmright[3]) );
  CKBD0BWP12T30P140 U11 ( .I(down_pcmleft[15]), .Z(down_pcmleft[0]) );
  CKBD0BWP12T30P140 U12 ( .I(down_pcmleft[16]), .Z(down_pcmleft[1]) );
  CKBD0BWP12T30P140 U13 ( .I(down_pcmleft[17]), .Z(down_pcmleft[2]) );
  CKBD0BWP12T30P140 U14 ( .I(down_pcmleft[18]), .Z(down_pcmleft[3]) );
  CKBD0BWP12T30P140 U15 ( .I(down_pcmleft_valid), .Z(down_pcmright_valid) );
  CKBD0BWP12T30P140 U16 ( .I(up_pcmright[4]), .Z(wbm_dat_o[0]) );
  CKBD0BWP12T30P140 U17 ( .I(up_pcmright[5]), .Z(wbm_dat_o[1]) );
  CKBD0BWP12T30P140 U18 ( .I(up_pcmright[6]), .Z(wbm_dat_o[2]) );
  CKBD0BWP12T30P140 U19 ( .I(up_pcmright[7]), .Z(wbm_dat_o[3]) );
  CKBD0BWP12T30P140 U20 ( .I(up_pcmright[8]), .Z(wbm_dat_o[4]) );
  CKBD0BWP12T30P140 U21 ( .I(up_pcmright[9]), .Z(wbm_dat_o[5]) );
  CKBD0BWP12T30P140 U22 ( .I(up_pcmright[10]), .Z(wbm_dat_o[6]) );
  CKBD0BWP12T30P140 U23 ( .I(up_pcmright[11]), .Z(wbm_dat_o[7]) );
  CKBD0BWP12T30P140 U24 ( .I(up_pcmright[12]), .Z(wbm_dat_o[8]) );
  CKBD0BWP12T30P140 U25 ( .I(up_pcmright[13]), .Z(wbm_dat_o[9]) );
  CKBD0BWP12T30P140 U26 ( .I(up_pcmright[14]), .Z(wbm_dat_o[10]) );
  CKBD0BWP12T30P140 U27 ( .I(up_pcmright[15]), .Z(wbm_dat_o[11]) );
  CKBD0BWP12T30P140 U28 ( .I(up_pcmright[16]), .Z(wbm_dat_o[12]) );
  CKBD0BWP12T30P140 U29 ( .I(up_pcmright[17]), .Z(wbm_dat_o[13]) );
  CKBD0BWP12T30P140 U30 ( .I(up_pcmright[18]), .Z(wbm_dat_o[14]) );
  CKBD0BWP12T30P140 U31 ( .I(up_pcmright[19]), .Z(wbm_dat_o[15]) );
  CKBD0BWP12T30P140 U32 ( .I(up_pcmleft[4]), .Z(wbm_dat_o[16]) );
  CKBD0BWP12T30P140 U33 ( .I(up_pcmleft[5]), .Z(wbm_dat_o[17]) );
  CKBD0BWP12T30P140 U34 ( .I(up_pcmleft[6]), .Z(wbm_dat_o[18]) );
  CKBD0BWP12T30P140 U35 ( .I(up_pcmleft[7]), .Z(wbm_dat_o[19]) );
  CKBD0BWP12T30P140 U36 ( .I(up_pcmleft[8]), .Z(wbm_dat_o[20]) );
  CKBD0BWP12T30P140 U37 ( .I(up_pcmleft[9]), .Z(wbm_dat_o[21]) );
  CKBD0BWP12T30P140 U38 ( .I(up_pcmleft[10]), .Z(wbm_dat_o[22]) );
  CKBD0BWP12T30P140 U39 ( .I(up_pcmleft[11]), .Z(wbm_dat_o[23]) );
  CKBD0BWP12T30P140 U40 ( .I(up_pcmleft[12]), .Z(wbm_dat_o[24]) );
  CKBD0BWP12T30P140 U41 ( .I(up_pcmleft[13]), .Z(wbm_dat_o[25]) );
  CKBD0BWP12T30P140 U42 ( .I(up_pcmleft[14]), .Z(wbm_dat_o[26]) );
  CKBD0BWP12T30P140 U43 ( .I(up_pcmleft[15]), .Z(wbm_dat_o[27]) );
  CKBD0BWP12T30P140 U44 ( .I(up_pcmleft[16]), .Z(wbm_dat_o[28]) );
  CKBD0BWP12T30P140 U45 ( .I(up_pcmleft[17]), .Z(wbm_dat_o[29]) );
  CKBD0BWP12T30P140 U46 ( .I(up_pcmleft[18]), .Z(wbm_dat_o[30]) );
  CKBD0BWP12T30P140 U47 ( .I(up_pcmleft[19]), .Z(wbm_dat_o[31]) );
  INVD0BWP12T30P140 U48 ( .I(state[1]), .ZN(n35) );
  NR3D0BWP12T30P140 U49 ( .A1(state[2]), .A2(state[0]), .A3(n35), .ZN(wbm_we_o) );
  INVD0BWP12T30P140 U50 ( .I(wbm_we_o), .ZN(n37) );
  CKBD0BWP12T30P140 U51 ( .I(wbm_cyc_o), .Z(wbm_stb_o) );
  CKBD0BWP12T30P140 U52 ( .I(wbm_adr_o[1]), .Z(wbm_adr_o[0]) );
  INVD0BWP12T30P140 U53 ( .I(dmar_en), .ZN(n32) );
  INVD0BWP12T30P140 U54 ( .I(dmaw_en), .ZN(n1) );
  AOI22D0BWP12T30P140 U55 ( .A1(down_next_frame), .A2(n32), .B1(up_next_frame), 
        .B2(n1), .ZN(n2) );
  INVD0BWP12T30P140 U56 ( .I(state[0]), .ZN(n109) );
  INVD0BWP12T30P140 U57 ( .I(n14), .ZN(n21) );
  CKMUX2D0BWP12T30P140 U58 ( .I0(down_pcmright[12]), .I1(wbm_dat_i[8]), .S(n33), .Z(n97) );
  CKMUX2D0BWP12T30P140 U59 ( .I0(down_pcmright[11]), .I1(wbm_dat_i[7]), .S(n33), .Z(n96) );
  CKBD0BWP12T30P140 U60 ( .I(n33), .Z(n34) );
  CKMUX2D0BWP12T30P140 U61 ( .I0(down_pcmright[8]), .I1(wbm_dat_i[4]), .S(n34), 
        .Z(n93) );
  CKMUX2D0BWP12T30P140 U62 ( .I0(down_pcmright[5]), .I1(wbm_dat_i[1]), .S(n33), 
        .Z(n90) );
  CKMUX2D0BWP12T30P140 U63 ( .I0(down_pcmleft[14]), .I1(wbm_dat_i[26]), .S(n33), .Z(n83) );
  CKMUX2D0BWP12T30P140 U64 ( .I0(down_pcmleft[13]), .I1(wbm_dat_i[25]), .S(n33), .Z(n82) );
  CKMUX2D0BWP12T30P140 U65 ( .I0(down_pcmleft[12]), .I1(wbm_dat_i[24]), .S(n33), .Z(n81) );
  CKMUX2D0BWP12T30P140 U66 ( .I0(down_pcmleft[19]), .I1(wbm_dat_i[31]), .S(n33), .Z(n87) );
  CKMUX2D0BWP12T30P140 U67 ( .I0(down_pcmright[13]), .I1(wbm_dat_i[9]), .S(n34), .Z(n98) );
  CKMUX2D0BWP12T30P140 U68 ( .I0(down_pcmright[10]), .I1(wbm_dat_i[6]), .S(n34), .Z(n95) );
  CKMUX2D0BWP12T30P140 U69 ( .I0(down_pcmright[9]), .I1(wbm_dat_i[5]), .S(n33), 
        .Z(n94) );
  CKMUX2D0BWP12T30P140 U70 ( .I0(down_pcmright[7]), .I1(wbm_dat_i[3]), .S(n33), 
        .Z(n92) );
  CKMUX2D0BWP12T30P140 U71 ( .I0(down_pcmright[16]), .I1(wbm_dat_i[12]), .S(
        n34), .Z(n100) );
  CKMUX2D0BWP12T30P140 U72 ( .I0(down_pcmleft[18]), .I1(wbm_dat_i[30]), .S(n34), .Z(n86) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(down_pcmleft[16]), .I1(wbm_dat_i[28]), .S(n33), .Z(n84) );
  CKMUX2D0BWP12T30P140 U74 ( .I0(down_pcmleft[17]), .I1(wbm_dat_i[29]), .S(n33), .Z(n85) );
  CKMUX2D0BWP12T30P140 U75 ( .I0(down_pcmleft[15]), .I1(wbm_dat_i[27]), .S(n33), .Z(n72) );
  INVD0BWP12T30P140 U76 ( .I(sys_rst), .ZN(n15) );
  INVD0BWP12T30P140 U77 ( .I(state[2]), .ZN(n24) );
  INVD0BWP12T30P140 U78 ( .I(wbm_ack_i), .ZN(n39) );
  AOI21D0BWP12T30P140 U79 ( .A1(n39), .A2(wbm_cyc_o), .B(sys_rst), .ZN(n22) );
  ND3D0BWP12T30P140 U80 ( .A1(n109), .A2(n22), .A3(state[1]), .ZN(n3) );
  OAI31D0BWP12T30P140 U81 ( .A1(sys_rst), .A2(n24), .A3(n109), .B(n3), .ZN(
        n105) );
  CKMUX2D0BWP12T30P140 U82 ( .I0(down_pcmright[15]), .I1(wbm_dat_i[11]), .S(
        n34), .Z(n88) );
  NR4D0BWP12T30P140 U83 ( .A1(dmar_remaining[0]), .A2(dmar_remaining[1]), .A3(
        dmar_remaining[2]), .A4(dmar_remaining[3]), .ZN(n7) );
  NR4D0BWP12T30P140 U84 ( .A1(dmar_remaining[4]), .A2(dmar_remaining[5]), .A3(
        dmar_remaining[6]), .A4(dmar_remaining[7]), .ZN(n6) );
  NR4D0BWP12T30P140 U85 ( .A1(dmar_remaining[8]), .A2(dmar_remaining[9]), .A3(
        dmar_remaining[10]), .A4(dmar_remaining[11]), .ZN(n5) );
  NR4D0BWP12T30P140 U86 ( .A1(dmar_remaining[12]), .A2(dmar_remaining[13]), 
        .A3(dmar_remaining[14]), .A4(dmar_remaining[15]), .ZN(n4) );
  ND4D0BWP12T30P140 U87 ( .A1(n7), .A2(n6), .A3(n5), .A4(n4), .ZN(n8) );
  ND3D0BWP12T30P140 U88 ( .A1(n8), .A2(dmar_en), .A3(down_next_frame), .ZN(n20) );
  NR4D0BWP12T30P140 U89 ( .A1(dmaw_remaining[0]), .A2(dmaw_remaining[1]), .A3(
        dmaw_remaining[2]), .A4(dmaw_remaining[3]), .ZN(n12) );
  NR4D0BWP12T30P140 U90 ( .A1(dmaw_remaining[4]), .A2(dmaw_remaining[5]), .A3(
        dmaw_remaining[6]), .A4(dmaw_remaining[7]), .ZN(n11) );
  NR4D0BWP12T30P140 U91 ( .A1(dmaw_remaining[8]), .A2(dmaw_remaining[9]), .A3(
        dmaw_remaining[10]), .A4(dmaw_remaining[11]), .ZN(n10) );
  NR4D0BWP12T30P140 U92 ( .A1(dmaw_remaining[12]), .A2(dmaw_remaining[13]), 
        .A3(dmaw_remaining[14]), .A4(dmaw_remaining[15]), .ZN(n9) );
  ND4D0BWP12T30P140 U93 ( .A1(n12), .A2(n11), .A3(n10), .A4(n9), .ZN(n13) );
  AN2D0BWP12T30P140 U94 ( .A1(n20), .A2(n13), .Z(n25) );
  AOI31D0BWP12T30P140 U95 ( .A1(n25), .A2(up_next_frame), .A3(dmaw_en), .B(
        state[0]), .ZN(n18) );
  ND2D0BWP12T30P140 U96 ( .A1(n14), .A2(n22), .ZN(n17) );
  INR2D1BWP12T30P140 U97 ( .A1(wbm_cyc_o), .B1(wbm_ack_i), .ZN(n16) );
  OAI21D0BWP12T30P140 U98 ( .A1(state[2]), .A2(n16), .B(n15), .ZN(n19) );
  OAI22D0BWP12T30P140 U99 ( .A1(n18), .A2(n17), .B1(n35), .B2(n19), .ZN(n106)
         );
  OAI21D0BWP12T30P140 U100 ( .A1(state[1]), .A2(sys_rst), .B(n19), .ZN(n23) );
  NR3D0BWP12T30P140 U101 ( .A1(state[0]), .A2(n21), .A3(n20), .ZN(n26) );
  CKBD0BWP12T30P140 U102 ( .I(n26), .Z(n30) );
  AO22D0BWP12T30P140 U103 ( .A1(state[0]), .A2(n23), .B1(n22), .B2(n30), .Z(
        n107) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(down_pcmright[14]), .I1(wbm_dat_i[10]), .S(
        n34), .Z(n99) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(down_pcmright[19]), .I1(wbm_dat_i[15]), .S(
        n34), .Z(n103) );
  ND3D0BWP12T30P140 U106 ( .A1(n24), .A2(dmaw_en), .A3(up_next_frame), .ZN(n36) );
  INR4D0BWP12T30P140 U107 ( .A1(n25), .B1(state[1]), .B2(state[0]), .B3(n36), 
        .ZN(n29) );
  CKBD0BWP12T30P140 U108 ( .I(n29), .Z(n27) );
  NR2D0BWP12T30P140 U109 ( .A1(n26), .A2(n27), .ZN(n28) );
  CKBD0BWP12T30P140 U110 ( .I(n28), .Z(n31) );
  AO222D0BWP12T30P140 U111 ( .A1(n30), .A2(dmar_addr[29]), .B1(n31), .B2(
        wbm_adr_o[31]), .C1(n27), .C2(dmaw_addr[29]), .Z(n70) );
  AO222D0BWP12T30P140 U112 ( .A1(n26), .A2(dmar_addr[28]), .B1(n31), .B2(
        wbm_adr_o[30]), .C1(n27), .C2(dmaw_addr[28]), .Z(n69) );
  AO222D0BWP12T30P140 U113 ( .A1(n30), .A2(dmar_addr[27]), .B1(n31), .B2(
        wbm_adr_o[29]), .C1(n27), .C2(dmaw_addr[27]), .Z(n68) );
  AO222D0BWP12T30P140 U114 ( .A1(n26), .A2(dmar_addr[26]), .B1(n31), .B2(
        wbm_adr_o[28]), .C1(n27), .C2(dmaw_addr[26]), .Z(n67) );
  AO222D0BWP12T30P140 U115 ( .A1(n30), .A2(dmar_addr[25]), .B1(n31), .B2(
        wbm_adr_o[27]), .C1(n29), .C2(dmaw_addr[25]), .Z(n66) );
  AO222D0BWP12T30P140 U116 ( .A1(n26), .A2(dmar_addr[24]), .B1(n31), .B2(
        wbm_adr_o[26]), .C1(n27), .C2(dmaw_addr[24]), .Z(n65) );
  AO222D0BWP12T30P140 U117 ( .A1(n30), .A2(dmar_addr[23]), .B1(n28), .B2(
        wbm_adr_o[25]), .C1(n29), .C2(dmaw_addr[23]), .Z(n64) );
  AO222D0BWP12T30P140 U118 ( .A1(n26), .A2(dmar_addr[22]), .B1(n28), .B2(
        wbm_adr_o[24]), .C1(n27), .C2(dmaw_addr[22]), .Z(n63) );
  AO222D0BWP12T30P140 U119 ( .A1(n30), .A2(dmar_addr[21]), .B1(n31), .B2(
        wbm_adr_o[23]), .C1(n29), .C2(dmaw_addr[21]), .Z(n62) );
  AO222D0BWP12T30P140 U120 ( .A1(n26), .A2(dmar_addr[20]), .B1(n28), .B2(
        wbm_adr_o[22]), .C1(n27), .C2(dmaw_addr[20]), .Z(n61) );
  AO222D0BWP12T30P140 U121 ( .A1(n30), .A2(dmar_addr[19]), .B1(n31), .B2(
        wbm_adr_o[21]), .C1(n29), .C2(dmaw_addr[19]), .Z(n60) );
  AO222D0BWP12T30P140 U122 ( .A1(n26), .A2(dmar_addr[18]), .B1(n28), .B2(
        wbm_adr_o[20]), .C1(n27), .C2(dmaw_addr[18]), .Z(n59) );
  AO222D0BWP12T30P140 U123 ( .A1(n30), .A2(dmar_addr[17]), .B1(n31), .B2(
        wbm_adr_o[19]), .C1(n29), .C2(dmaw_addr[17]), .Z(n58) );
  AO222D0BWP12T30P140 U124 ( .A1(n30), .A2(dmar_addr[16]), .B1(n28), .B2(
        wbm_adr_o[18]), .C1(n27), .C2(dmaw_addr[16]), .Z(n57) );
  AO222D0BWP12T30P140 U125 ( .A1(n26), .A2(dmar_addr[15]), .B1(n31), .B2(
        wbm_adr_o[17]), .C1(n29), .C2(dmaw_addr[15]), .Z(n56) );
  AO222D0BWP12T30P140 U126 ( .A1(n30), .A2(dmar_addr[14]), .B1(n28), .B2(
        wbm_adr_o[16]), .C1(n27), .C2(dmaw_addr[14]), .Z(n55) );
  AO222D0BWP12T30P140 U127 ( .A1(n26), .A2(dmar_addr[13]), .B1(n31), .B2(
        wbm_adr_o[15]), .C1(n29), .C2(dmaw_addr[13]), .Z(n54) );
  AO222D0BWP12T30P140 U128 ( .A1(n30), .A2(dmar_addr[12]), .B1(n28), .B2(
        wbm_adr_o[14]), .C1(n29), .C2(dmaw_addr[12]), .Z(n53) );
  AO222D0BWP12T30P140 U129 ( .A1(n26), .A2(dmar_addr[11]), .B1(n28), .B2(
        wbm_adr_o[13]), .C1(n29), .C2(dmaw_addr[11]), .Z(n52) );
  AO222D0BWP12T30P140 U130 ( .A1(n30), .A2(dmar_addr[10]), .B1(n28), .B2(
        wbm_adr_o[12]), .C1(n29), .C2(dmaw_addr[10]), .Z(n51) );
  AO222D0BWP12T30P140 U131 ( .A1(n26), .A2(dmar_addr[9]), .B1(n28), .B2(
        wbm_adr_o[11]), .C1(n27), .C2(dmaw_addr[9]), .Z(n50) );
  AO222D0BWP12T30P140 U132 ( .A1(n30), .A2(dmar_addr[8]), .B1(n28), .B2(
        wbm_adr_o[10]), .C1(n29), .C2(dmaw_addr[8]), .Z(n49) );
  AO222D0BWP12T30P140 U133 ( .A1(n26), .A2(dmar_addr[7]), .B1(n28), .B2(
        wbm_adr_o[9]), .C1(n27), .C2(dmaw_addr[7]), .Z(n48) );
  AO222D0BWP12T30P140 U134 ( .A1(n30), .A2(dmar_addr[6]), .B1(n31), .B2(
        wbm_adr_o[8]), .C1(n29), .C2(dmaw_addr[6]), .Z(n47) );
  AO222D0BWP12T30P140 U135 ( .A1(n26), .A2(dmar_addr[5]), .B1(n28), .B2(
        wbm_adr_o[7]), .C1(n27), .C2(dmaw_addr[5]), .Z(n46) );
  AO222D0BWP12T30P140 U136 ( .A1(n30), .A2(dmar_addr[4]), .B1(n31), .B2(
        wbm_adr_o[6]), .C1(n29), .C2(dmaw_addr[4]), .Z(n45) );
  AO222D0BWP12T30P140 U137 ( .A1(n26), .A2(dmar_addr[3]), .B1(n28), .B2(
        wbm_adr_o[5]), .C1(n27), .C2(dmaw_addr[3]), .Z(n44) );
  AO222D0BWP12T30P140 U138 ( .A1(n26), .A2(dmar_addr[2]), .B1(n31), .B2(
        wbm_adr_o[4]), .C1(n29), .C2(dmaw_addr[2]), .Z(n43) );
  AO222D0BWP12T30P140 U139 ( .A1(n30), .A2(dmar_addr[1]), .B1(n28), .B2(
        wbm_adr_o[3]), .C1(n27), .C2(dmaw_addr[1]), .Z(n42) );
  AO222D0BWP12T30P140 U140 ( .A1(n30), .A2(dmar_addr[0]), .B1(n31), .B2(
        wbm_adr_o[2]), .C1(n29), .C2(dmaw_addr[0]), .Z(n41) );
  AN2D0BWP12T30P140 U141 ( .A1(n31), .A2(wbm_adr_o[1]), .Z(n71) );
  MAOI22D0BWP12T30P140 U142 ( .A1(n34), .A2(n32), .B1(down_pcmleft_valid), 
        .B2(n34), .ZN(n104) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(down_pcmright[18]), .I1(wbm_dat_i[14]), .S(
        n34), .Z(n102) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(down_pcmright[17]), .I1(wbm_dat_i[13]), .S(
        n34), .Z(n101) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(down_pcmleft[11]), .I1(wbm_dat_i[23]), .S(
        n33), .Z(n80) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(down_pcmleft[9]), .I1(wbm_dat_i[21]), .S(n33), .Z(n78) );
  CKMUX2D0BWP12T30P140 U147 ( .I0(down_pcmleft[6]), .I1(wbm_dat_i[18]), .S(n34), .Z(n75) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(down_pcmleft[5]), .I1(wbm_dat_i[17]), .S(n33), .Z(n74) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(down_pcmright[6]), .I1(wbm_dat_i[2]), .S(n34), .Z(n91) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(down_pcmright[4]), .I1(wbm_dat_i[0]), .S(n34), .Z(n89) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(down_pcmleft[7]), .I1(wbm_dat_i[19]), .S(n33), .Z(n76) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(down_pcmleft[4]), .I1(wbm_dat_i[16]), .S(n34), .Z(n73) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(down_pcmleft[10]), .I1(wbm_dat_i[22]), .S(
        n34), .Z(n79) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(down_pcmleft[8]), .I1(wbm_dat_i[20]), .S(n34), .Z(n77) );
  AN3D0BWP12T30P140 U155 ( .A1(n36), .A2(n35), .A3(n109), .Z(up_en) );
  CKBD0BWP12T30P140 U156 ( .I(sys_clk), .Z(n153) );
  CKBD0BWP12T30P140 U157 ( .I(sys_clk), .Z(n154) );
  CKBD0BWP12T30P140 U158 ( .I(sys_clk), .Z(n155) );
  NR2D0BWP12T30P140 U159 ( .A1(n39), .A2(n37), .ZN(dmaw_next) );
  NR2D0BWP12T30P140 U160 ( .A1(n39), .A2(n38), .ZN(dmar_next) );
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

