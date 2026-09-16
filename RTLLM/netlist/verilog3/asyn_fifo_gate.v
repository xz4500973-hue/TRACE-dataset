/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:15:24 2026
/////////////////////////////////////////////////////////////


module asyn_fifo ( wclk, rclk, wrstn, rrstn, winc, rinc, wdata, wfull, rempty, 
        rdata );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrstn, rrstn, winc, rinc;
  output wfull, rempty;
  wire   n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
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
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480;
  wire   [4:0] waddr_bin;
  wire   [4:0] raddr_bin;
  wire   [3:0] waddr_gray;
  wire   [3:0] raddr_gray;
  wire   [4:0] wptr;
  wire   [4:0] rptr;
  wire   [9:0] rptr_sync;
  wire   [9:0] wptr_sync;
  wire   [127:0] mem;

  DFCNQD1BWP12T30P140 rdata_r_reg_0_ ( .D(n161), .CP(rclk), .CDN(rrstn), .Q(
        rdata[0]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_7_ ( .D(n168), .CP(rclk), .CDN(n472), .Q(
        rdata[7]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_6_ ( .D(n167), .CP(rclk), .CDN(n472), .Q(
        rdata[6]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_5_ ( .D(n166), .CP(rclk), .CDN(n472), .Q(
        rdata[5]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_4_ ( .D(n165), .CP(rclk), .CDN(n472), .Q(
        rdata[4]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_3_ ( .D(n164), .CP(rclk), .CDN(n472), .Q(
        rdata[3]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_2_ ( .D(n163), .CP(rclk), .CDN(n472), .Q(
        rdata[2]) );
  DFCNQD1BWP12T30P140 rdata_r_reg_1_ ( .D(n162), .CP(rclk), .CDN(rrstn), .Q(
        rdata[1]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_1__3_ ( .D(wptr_sync[8]), .CP(rclk), .CDN(
        n472), .Q(wptr_sync[3]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_1__0_ ( .D(wptr_sync[5]), .CP(rclk), .CDN(
        rrstn), .Q(wptr_sync[0]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_1__0_ ( .D(rptr_sync[5]), .CP(wclk), .CDN(
        wrstn), .Q(rptr_sync[0]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_1__4_ ( .D(wptr_sync[9]), .CP(rclk), .CDN(
        n472), .Q(wptr_sync[4]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_1__1_ ( .D(wptr_sync[6]), .CP(n473), .CDN(
        n472), .Q(wptr_sync[1]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_1__2_ ( .D(wptr_sync[7]), .CP(n473), .CDN(
        n472), .Q(wptr_sync[2]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_1__2_ ( .D(rptr_sync[7]), .CP(n480), .CDN(
        wrstn), .Q(rptr_sync[2]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_0_ ( .D(n300), .CP(n480), .CDN(wrstn), .Q(
        waddr_bin[0]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_1__1_ ( .D(rptr_sync[6]), .CP(n480), .CDN(
        wrstn), .Q(rptr_sync[1]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_1__4_ ( .D(rptr_sync[9]), .CP(n480), .CDN(
        wrstn), .Q(rptr_sync[4]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_1__3_ ( .D(rptr_sync[8]), .CP(n480), .CDN(
        wrstn), .Q(rptr_sync[3]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_0__0_ ( .D(rptr[0]), .CP(wclk), .CDN(wrstn), .Q(rptr_sync[5]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_0__3_ ( .D(wptr[3]), .CP(rclk), .CDN(n472), 
        .Q(wptr_sync[8]) );
  DFQD2BWP12T30P140 mem_reg_1__7_ ( .D(n288), .CP(n478), .Q(mem[119]) );
  DFQD2BWP12T30P140 mem_reg_1__6_ ( .D(n287), .CP(n478), .Q(mem[118]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n286), .CP(n478), .Q(mem[117]) );
  DFQD2BWP12T30P140 mem_reg_1__4_ ( .D(n285), .CP(n478), .Q(mem[116]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n284), .CP(n478), .Q(mem[115]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n283), .CP(n478), .Q(mem[114]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n282), .CP(n478), .Q(mem[113]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n281), .CP(n478), .Q(mem[112]) );
  DFQD2BWP12T30P140 mem_reg_5__6_ ( .D(n255), .CP(n479), .Q(mem[86]) );
  DFQD2BWP12T30P140 mem_reg_5__5_ ( .D(n254), .CP(n479), .Q(mem[85]) );
  DFQD2BWP12T30P140 mem_reg_5__4_ ( .D(n253), .CP(n480), .Q(mem[84]) );
  DFQD2BWP12T30P140 mem_reg_5__3_ ( .D(n252), .CP(wclk), .Q(mem[83]) );
  DFQD2BWP12T30P140 mem_reg_5__2_ ( .D(n251), .CP(n476), .Q(mem[82]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n250), .CP(n476), .Q(mem[81]) );
  DFQD2BWP12T30P140 mem_reg_5__0_ ( .D(n249), .CP(n476), .Q(mem[80]) );
  DFQD2BWP12T30P140 mem_reg_9__7_ ( .D(n224), .CP(wclk), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_9__6_ ( .D(n223), .CP(n477), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_9__5_ ( .D(n222), .CP(n476), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_9__4_ ( .D(n221), .CP(n478), .Q(mem[52]) );
  DFQD2BWP12T30P140 mem_reg_9__3_ ( .D(n220), .CP(n475), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_9__2_ ( .D(n219), .CP(n474), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n218), .CP(n479), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_13__7_ ( .D(n192), .CP(n478), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_13__6_ ( .D(n191), .CP(n474), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_13__5_ ( .D(n190), .CP(n474), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_13__4_ ( .D(n189), .CP(n474), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_13__3_ ( .D(n188), .CP(n474), .Q(mem[19]) );
  DFQD2BWP12T30P140 mem_reg_13__2_ ( .D(n187), .CP(n474), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_13__1_ ( .D(n186), .CP(n474), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_15__0_ ( .D(n169), .CP(n476), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_3__7_ ( .D(n272), .CP(n477), .Q(mem[103]) );
  DFQD2BWP12T30P140 mem_reg_3__6_ ( .D(n271), .CP(n477), .Q(mem[102]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n270), .CP(n477), .Q(mem[101]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n269), .CP(n477), .Q(mem[100]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n268), .CP(n477), .Q(mem[99]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n267), .CP(n477), .Q(mem[98]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n265), .CP(n477), .Q(mem[96]) );
  DFQD2BWP12T30P140 mem_reg_7__7_ ( .D(n240), .CP(n476), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_7__6_ ( .D(n239), .CP(n475), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_7__5_ ( .D(n238), .CP(n475), .Q(mem[69]) );
  DFQD2BWP12T30P140 mem_reg_7__4_ ( .D(n237), .CP(n475), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_7__3_ ( .D(n236), .CP(n475), .Q(mem[67]) );
  DFQD2BWP12T30P140 mem_reg_7__2_ ( .D(n235), .CP(n475), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n234), .CP(n475), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n233), .CP(n475), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_11__7_ ( .D(n208), .CP(n476), .Q(mem[39]) );
  DFQD2BWP12T30P140 mem_reg_11__6_ ( .D(n207), .CP(n479), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_11__5_ ( .D(n206), .CP(n480), .Q(mem[37]) );
  DFQD2BWP12T30P140 mem_reg_11__4_ ( .D(n205), .CP(n475), .Q(mem[36]) );
  DFQD2BWP12T30P140 mem_reg_11__3_ ( .D(n204), .CP(n474), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n202), .CP(n478), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_11__0_ ( .D(n201), .CP(n479), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_15__7_ ( .D(n176), .CP(n474), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_15__6_ ( .D(n175), .CP(n475), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_15__5_ ( .D(n174), .CP(n474), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_15__4_ ( .D(n173), .CP(n474), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_15__3_ ( .D(n172), .CP(n474), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_15__2_ ( .D(n171), .CP(n479), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_15__1_ ( .D(n170), .CP(n480), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_4__7_ ( .D(n264), .CP(n477), .Q(mem[95]) );
  DFQD2BWP12T30P140 mem_reg_4__6_ ( .D(n263), .CP(n476), .Q(mem[94]) );
  DFQD2BWP12T30P140 mem_reg_4__5_ ( .D(n262), .CP(n478), .Q(mem[93]) );
  DFQD2BWP12T30P140 mem_reg_4__4_ ( .D(n261), .CP(n475), .Q(mem[92]) );
  DFQD2BWP12T30P140 mem_reg_4__3_ ( .D(n260), .CP(n474), .Q(mem[91]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n258), .CP(n479), .Q(mem[89]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n257), .CP(wclk), .Q(mem[88]) );
  DFQD2BWP12T30P140 mem_reg_8__7_ ( .D(n232), .CP(n475), .Q(mem[63]) );
  DFQD2BWP12T30P140 mem_reg_8__6_ ( .D(n231), .CP(n475), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_8__5_ ( .D(n230), .CP(n475), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_8__4_ ( .D(n229), .CP(n475), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_8__3_ ( .D(n228), .CP(n475), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_8__2_ ( .D(n227), .CP(wclk), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n226), .CP(n477), .Q(mem[57]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n225), .CP(wclk), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_12__7_ ( .D(n200), .CP(n480), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_12__6_ ( .D(n199), .CP(n477), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_12__5_ ( .D(n198), .CP(n475), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_12__4_ ( .D(n197), .CP(n474), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_12__2_ ( .D(n195), .CP(n475), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_12__1_ ( .D(n194), .CP(n475), .Q(mem[25]) );
  DFQD2BWP12T30P140 mem_reg_12__0_ ( .D(n193), .CP(n478), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_2__7_ ( .D(n280), .CP(n478), .Q(mem[111]) );
  DFQD2BWP12T30P140 mem_reg_2__6_ ( .D(n279), .CP(n478), .Q(mem[110]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n278), .CP(n478), .Q(mem[109]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n277), .CP(n478), .Q(mem[108]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n276), .CP(n477), .Q(mem[107]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n275), .CP(n477), .Q(mem[106]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n274), .CP(n477), .Q(mem[105]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n273), .CP(n477), .Q(mem[104]) );
  DFQD2BWP12T30P140 mem_reg_6__7_ ( .D(n248), .CP(n476), .Q(mem[79]) );
  DFQD2BWP12T30P140 mem_reg_6__6_ ( .D(n247), .CP(n476), .Q(mem[78]) );
  DFQD2BWP12T30P140 mem_reg_6__5_ ( .D(n246), .CP(n476), .Q(mem[77]) );
  DFQD2BWP12T30P140 mem_reg_6__3_ ( .D(n244), .CP(n476), .Q(mem[75]) );
  DFQD2BWP12T30P140 mem_reg_6__2_ ( .D(n243), .CP(n476), .Q(mem[74]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n242), .CP(n476), .Q(mem[73]) );
  DFQD2BWP12T30P140 mem_reg_6__0_ ( .D(n241), .CP(n476), .Q(mem[72]) );
  DFQD2BWP12T30P140 mem_reg_10__7_ ( .D(n216), .CP(wclk), .Q(mem[47]) );
  DFQD2BWP12T30P140 mem_reg_10__6_ ( .D(n215), .CP(n480), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_10__5_ ( .D(n214), .CP(wclk), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_10__4_ ( .D(n213), .CP(n476), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_10__3_ ( .D(n212), .CP(n476), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_10__2_ ( .D(n211), .CP(n478), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n210), .CP(n477), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_10__0_ ( .D(n209), .CP(n476), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_14__7_ ( .D(n184), .CP(n474), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_14__6_ ( .D(n183), .CP(n474), .Q(mem[14]) );
  DFQD2BWP12T30P140 mem_reg_14__4_ ( .D(n181), .CP(n474), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_14__3_ ( .D(n180), .CP(n474), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_14__2_ ( .D(n179), .CP(n477), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_14__1_ ( .D(n178), .CP(n476), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_14__0_ ( .D(n177), .CP(n475), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_13__0_ ( .D(n185), .CP(n474), .Q(mem[16]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_0_ ( .D(n305), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[0]) );
  DFQD2BWP12T30P140 mem_reg_0__7_ ( .D(n296), .CP(n479), .Q(mem[127]) );
  DFQD2BWP12T30P140 mem_reg_0__6_ ( .D(n295), .CP(n479), .Q(mem[126]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n294), .CP(n479), .Q(mem[125]) );
  DFQD2BWP12T30P140 mem_reg_0__4_ ( .D(n293), .CP(n479), .Q(mem[124]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n292), .CP(n479), .Q(mem[123]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n291), .CP(n479), .Q(mem[122]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n290), .CP(n479), .Q(mem[121]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_2_ ( .D(n299), .CP(n480), .CDN(wrstn), .Q(
        waddr_bin[2]) );
  DFCNQD1BWP12T30P140 rptr_reg_0_ ( .D(raddr_gray[0]), .CP(rclk), .CDN(rrstn), 
        .Q(rptr[0]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_0__0_ ( .D(wptr[0]), .CP(n473), .CDN(rrstn), .Q(wptr_sync[5]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_0__1_ ( .D(wptr[1]), .CP(n473), .CDN(rrstn), .Q(wptr_sync[6]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_0__2_ ( .D(wptr[2]), .CP(n473), .CDN(n472), 
        .Q(wptr_sync[7]) );
  DFCNQD1BWP12T30P140 wptr_sync_reg_0__4_ ( .D(wptr[4]), .CP(n473), .CDN(n472), 
        .Q(wptr_sync[9]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_1_ ( .D(n306), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[1]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_0__1_ ( .D(rptr[1]), .CP(n480), .CDN(wrstn), .Q(rptr_sync[6]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_0__2_ ( .D(rptr[2]), .CP(n480), .CDN(wrstn), .Q(rptr_sync[7]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_0__4_ ( .D(rptr[4]), .CP(n480), .CDN(wrstn), .Q(rptr_sync[9]) );
  DFCNQD1BWP12T30P140 rptr_sync_reg_0__3_ ( .D(rptr[3]), .CP(n480), .CDN(wrstn), .Q(rptr_sync[8]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_3_ ( .D(n298), .CP(n479), .CDN(wrstn), .Q(
        waddr_bin[3]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_1_ ( .D(n301), .CP(n480), .CDN(wrstn), .Q(
        waddr_bin[1]) );
  DFCNQD1BWP12T30P140 rptr_reg_1_ ( .D(raddr_gray[1]), .CP(n473), .CDN(rrstn), 
        .Q(rptr[1]) );
  DFCNQD1BWP12T30P140 rptr_reg_2_ ( .D(raddr_gray[2]), .CP(n473), .CDN(rrstn), 
        .Q(rptr[2]) );
  DFCNQD1BWP12T30P140 rptr_reg_4_ ( .D(raddr_bin[4]), .CP(n473), .CDN(rrstn), 
        .Q(rptr[4]) );
  DFCNQD1BWP12T30P140 rptr_reg_3_ ( .D(raddr_gray[3]), .CP(n473), .CDN(rrstn), 
        .Q(rptr[3]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_3_ ( .D(n303), .CP(n473), .CDN(rrstn), .Q(
        raddr_bin[3]) );
  DFCNQD1BWP12T30P140 wptr_reg_0_ ( .D(waddr_gray[0]), .CP(n480), .CDN(wrstn), 
        .Q(wptr[0]) );
  DFCNQD1BWP12T30P140 wptr_reg_1_ ( .D(waddr_gray[1]), .CP(n480), .CDN(wrstn), 
        .Q(wptr[1]) );
  DFCNQD1BWP12T30P140 wptr_reg_2_ ( .D(waddr_gray[2]), .CP(n479), .CDN(wrstn), 
        .Q(wptr[2]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_2_ ( .D(n304), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[2]) );
  DFCNQD1BWP12T30P140 wptr_reg_3_ ( .D(waddr_gray[3]), .CP(n479), .CDN(wrstn), 
        .Q(wptr[3]) );
  DFCNQD1BWP12T30P140 wptr_reg_4_ ( .D(waddr_bin[4]), .CP(n479), .CDN(wrstn), 
        .Q(wptr[4]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_4_ ( .D(n302), .CP(n473), .CDN(rrstn), .Q(
        raddr_bin[4]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_4_ ( .D(n297), .CP(n479), .CDN(wrstn), .Q(
        waddr_bin[4]) );
  DFQD1BWP12T30P140 mem_reg_5__7_ ( .D(n256), .CP(n478), .Q(mem[87]) );
  DFQD1BWP12T30P140 mem_reg_9__0_ ( .D(n217), .CP(n480), .Q(mem[48]) );
  DFQD1BWP12T30P140 mem_reg_3__1_ ( .D(n266), .CP(n477), .Q(mem[97]) );
  DFQD1BWP12T30P140 mem_reg_11__2_ ( .D(n203), .CP(n478), .Q(mem[34]) );
  DFQD1BWP12T30P140 mem_reg_4__2_ ( .D(n259), .CP(n480), .Q(mem[90]) );
  DFQD1BWP12T30P140 mem_reg_12__3_ ( .D(n196), .CP(n477), .Q(mem[27]) );
  DFQD1BWP12T30P140 mem_reg_6__4_ ( .D(n245), .CP(n476), .Q(mem[76]) );
  DFQD1BWP12T30P140 mem_reg_14__5_ ( .D(n182), .CP(n474), .Q(mem[13]) );
  DFQD1BWP12T30P140 mem_reg_0__0_ ( .D(n289), .CP(n479), .Q(mem[120]) );
  INVD0BWP12T30P140 U319 ( .I(waddr_bin[0]), .ZN(n461) );
  INVD0BWP12T30P140 U320 ( .I(wptr[2]), .ZN(n314) );
  OAI22D0BWP12T30P140 U321 ( .A1(wptr[3]), .A2(rptr_sync[3]), .B1(wptr[4]), 
        .B2(rptr_sync[4]), .ZN(n307) );
  AOI221D0BWP12T30P140 U322 ( .A1(wptr[3]), .A2(rptr_sync[3]), .B1(
        rptr_sync[4]), .B2(wptr[4]), .C(n307), .ZN(n312) );
  INVD0BWP12T30P140 U323 ( .I(wptr[1]), .ZN(n310) );
  INVD0BWP12T30P140 U324 ( .I(wptr[0]), .ZN(n309) );
  OAI22D0BWP12T30P140 U325 ( .A1(n310), .A2(rptr_sync[1]), .B1(n309), .B2(
        rptr_sync[0]), .ZN(n308) );
  AOI221D0BWP12T30P140 U326 ( .A1(n310), .A2(rptr_sync[1]), .B1(rptr_sync[0]), 
        .B2(n309), .C(n308), .ZN(n311) );
  OAI211D0BWP12T30P140 U327 ( .A1(n314), .A2(rptr_sync[2]), .B(n312), .C(n311), 
        .ZN(n313) );
  AOI21D0BWP12T30P140 U328 ( .A1(n314), .A2(rptr_sync[2]), .B(n313), .ZN(wfull) );
  INR2D1BWP12T30P140 U329 ( .A1(winc), .B1(wfull), .ZN(n320) );
  INVD0BWP12T30P140 U330 ( .I(n320), .ZN(n462) );
  NR2D0BWP12T30P140 U331 ( .A1(n462), .A2(n461), .ZN(n460) );
  ND2D0BWP12T30P140 U332 ( .A1(n460), .A2(waddr_bin[1]), .ZN(n420) );
  INVD0BWP12T30P140 U333 ( .I(waddr_bin[3]), .ZN(n391) );
  ND2D0BWP12T30P140 U334 ( .A1(waddr_bin[2]), .A2(n391), .ZN(n467) );
  NR2D0BWP12T30P140 U335 ( .A1(n420), .A2(n467), .ZN(n322) );
  INVD0BWP12T30P140 U336 ( .I(wdata[2]), .ZN(n450) );
  MAOI22D0BWP12T30P140 U337 ( .A1(n322), .A2(n450), .B1(mem[66]), .B2(n322), 
        .ZN(n235) );
  INVD0BWP12T30P140 U338 ( .I(wdata[0]), .ZN(n456) );
  MAOI22D0BWP12T30P140 U339 ( .A1(n322), .A2(n456), .B1(mem[64]), .B2(n322), 
        .ZN(n233) );
  INVD0BWP12T30P140 U340 ( .I(waddr_bin[2]), .ZN(n421) );
  ND2D0BWP12T30P140 U341 ( .A1(waddr_bin[3]), .A2(n421), .ZN(n466) );
  NR2D0BWP12T30P140 U342 ( .A1(n420), .A2(n466), .ZN(n315) );
  INVD0BWP12T30P140 U343 ( .I(wdata[7]), .ZN(n463) );
  MAOI22D0BWP12T30P140 U344 ( .A1(n315), .A2(n463), .B1(mem[39]), .B2(n315), 
        .ZN(n208) );
  INVD0BWP12T30P140 U345 ( .I(wdata[3]), .ZN(n403) );
  MAOI22D0BWP12T30P140 U346 ( .A1(n322), .A2(n403), .B1(mem[67]), .B2(n322), 
        .ZN(n236) );
  INVD0BWP12T30P140 U347 ( .I(wdata[6]), .ZN(n464) );
  MAOI22D0BWP12T30P140 U348 ( .A1(n315), .A2(n464), .B1(mem[38]), .B2(n315), 
        .ZN(n207) );
  INVD0BWP12T30P140 U349 ( .I(wdata[5]), .ZN(n449) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n315), .A2(n449), .B1(mem[37]), .B2(n315), 
        .ZN(n206) );
  INVD0BWP12T30P140 U351 ( .I(wdata[4]), .ZN(n445) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n322), .A2(n445), .B1(mem[68]), .B2(n322), 
        .ZN(n237) );
  MAOI22D0BWP12T30P140 U353 ( .A1(n315), .A2(n445), .B1(mem[36]), .B2(n315), 
        .ZN(n205) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n315), .A2(n403), .B1(mem[35]), .B2(n315), 
        .ZN(n204) );
  MAOI22D0BWP12T30P140 U355 ( .A1(n322), .A2(n449), .B1(mem[69]), .B2(n322), 
        .ZN(n238) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n315), .A2(n450), .B1(mem[34]), .B2(n315), 
        .ZN(n203) );
  INVD0BWP12T30P140 U357 ( .I(wdata[1]), .ZN(n453) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n315), .A2(n453), .B1(mem[33]), .B2(n315), 
        .ZN(n202) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n322), .A2(n464), .B1(mem[70]), .B2(n322), 
        .ZN(n239) );
  MAOI22D0BWP12T30P140 U360 ( .A1(n315), .A2(n456), .B1(mem[32]), .B2(n315), 
        .ZN(n201) );
  ND2D0BWP12T30P140 U361 ( .A1(waddr_bin[3]), .A2(waddr_bin[2]), .ZN(n390) );
  NR2D0BWP12T30P140 U362 ( .A1(n420), .A2(n390), .ZN(n458) );
  MAOI22D0BWP12T30P140 U363 ( .A1(n458), .A2(n463), .B1(mem[7]), .B2(n458), 
        .ZN(n176) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n322), .A2(n463), .B1(mem[71]), .B2(n322), 
        .ZN(n240) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n458), .A2(n464), .B1(mem[6]), .B2(n458), 
        .ZN(n175) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n458), .A2(n449), .B1(mem[5]), .B2(n458), 
        .ZN(n174) );
  ND2D0BWP12T30P140 U367 ( .A1(n391), .A2(n421), .ZN(n402) );
  NR2D0BWP12T30P140 U368 ( .A1(n402), .A2(n420), .ZN(n317) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n317), .A2(n456), .B1(mem[96]), .B2(n317), 
        .ZN(n265) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n458), .A2(n445), .B1(mem[4]), .B2(n458), 
        .ZN(n173) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n458), .A2(n403), .B1(mem[3]), .B2(n458), 
        .ZN(n172) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n317), .A2(n453), .B1(mem[97]), .B2(n317), 
        .ZN(n266) );
  MAOI22D0BWP12T30P140 U373 ( .A1(n458), .A2(n450), .B1(mem[2]), .B2(n458), 
        .ZN(n171) );
  MAOI22D0BWP12T30P140 U374 ( .A1(n458), .A2(n453), .B1(mem[1]), .B2(n458), 
        .ZN(n170) );
  MAOI22D0BWP12T30P140 U375 ( .A1(n317), .A2(n450), .B1(mem[98]), .B2(n317), 
        .ZN(n267) );
  INVD0BWP12T30P140 U376 ( .I(waddr_bin[1]), .ZN(n452) );
  ND3D0BWP12T30P140 U377 ( .A1(n452), .A2(n461), .A3(n320), .ZN(n388) );
  NR2D0BWP12T30P140 U378 ( .A1(n467), .A2(n388), .ZN(n316) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n316), .A2(n463), .B1(mem[95]), .B2(n316), 
        .ZN(n264) );
  MAOI22D0BWP12T30P140 U380 ( .A1(n316), .A2(n464), .B1(mem[94]), .B2(n316), 
        .ZN(n263) );
  MAOI22D0BWP12T30P140 U381 ( .A1(n317), .A2(n403), .B1(mem[99]), .B2(n317), 
        .ZN(n268) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n316), .A2(n449), .B1(mem[93]), .B2(n316), 
        .ZN(n262) );
  MAOI22D0BWP12T30P140 U383 ( .A1(n316), .A2(n445), .B1(mem[92]), .B2(n316), 
        .ZN(n261) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n317), .A2(n445), .B1(mem[100]), .B2(n317), 
        .ZN(n269) );
  MAOI22D0BWP12T30P140 U385 ( .A1(n316), .A2(n403), .B1(mem[91]), .B2(n316), 
        .ZN(n260) );
  MAOI22D0BWP12T30P140 U386 ( .A1(n316), .A2(n450), .B1(mem[90]), .B2(n316), 
        .ZN(n259) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n317), .A2(n449), .B1(mem[101]), .B2(n317), 
        .ZN(n270) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n316), .A2(n453), .B1(mem[89]), .B2(n316), 
        .ZN(n258) );
  MAOI22D0BWP12T30P140 U389 ( .A1(n316), .A2(n456), .B1(mem[88]), .B2(n316), 
        .ZN(n257) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n317), .A2(n464), .B1(mem[102]), .B2(n317), 
        .ZN(n271) );
  NR2D0BWP12T30P140 U391 ( .A1(n466), .A2(n388), .ZN(n318) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n318), .A2(n463), .B1(mem[63]), .B2(n318), 
        .ZN(n232) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n318), .A2(n464), .B1(mem[62]), .B2(n318), 
        .ZN(n231) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n317), .A2(n463), .B1(mem[103]), .B2(n317), 
        .ZN(n272) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n318), .A2(n449), .B1(mem[61]), .B2(n318), 
        .ZN(n230) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n318), .A2(n445), .B1(mem[60]), .B2(n318), 
        .ZN(n229) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n458), .A2(n456), .B1(mem[0]), .B2(n458), 
        .ZN(n169) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n318), .A2(n403), .B1(mem[59]), .B2(n318), 
        .ZN(n228) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n318), .A2(n450), .B1(mem[58]), .B2(n318), 
        .ZN(n227) );
  ND2D0BWP12T30P140 U400 ( .A1(n460), .A2(n452), .ZN(n451) );
  NR2D0BWP12T30P140 U401 ( .A1(n451), .A2(n390), .ZN(n415) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n415), .A2(n453), .B1(mem[17]), .B2(n415), 
        .ZN(n186) );
  MAOI22D0BWP12T30P140 U403 ( .A1(n318), .A2(n453), .B1(mem[57]), .B2(n318), 
        .ZN(n226) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n318), .A2(n456), .B1(mem[56]), .B2(n318), 
        .ZN(n225) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n415), .A2(n450), .B1(mem[18]), .B2(n415), 
        .ZN(n187) );
  NR2D0BWP12T30P140 U406 ( .A1(n390), .A2(n388), .ZN(n319) );
  MAOI22D0BWP12T30P140 U407 ( .A1(n319), .A2(n463), .B1(mem[31]), .B2(n319), 
        .ZN(n200) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n319), .A2(n464), .B1(mem[30]), .B2(n319), 
        .ZN(n199) );
  MAOI22D0BWP12T30P140 U409 ( .A1(n415), .A2(n403), .B1(mem[19]), .B2(n415), 
        .ZN(n188) );
  MAOI22D0BWP12T30P140 U410 ( .A1(n319), .A2(n449), .B1(mem[29]), .B2(n319), 
        .ZN(n198) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n319), .A2(n445), .B1(mem[28]), .B2(n319), 
        .ZN(n197) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n415), .A2(n445), .B1(mem[20]), .B2(n415), 
        .ZN(n189) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n319), .A2(n403), .B1(mem[27]), .B2(n319), 
        .ZN(n196) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n319), .A2(n450), .B1(mem[26]), .B2(n319), 
        .ZN(n195) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n415), .A2(n449), .B1(mem[21]), .B2(n415), 
        .ZN(n190) );
  MAOI22D0BWP12T30P140 U416 ( .A1(n319), .A2(n453), .B1(mem[25]), .B2(n319), 
        .ZN(n194) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n415), .A2(n464), .B1(mem[22]), .B2(n415), 
        .ZN(n191) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n319), .A2(n456), .B1(mem[24]), .B2(n319), 
        .ZN(n193) );
  ND3D0BWP12T30P140 U419 ( .A1(n461), .A2(waddr_bin[1]), .A3(n320), .ZN(n389)
         );
  NR2D0BWP12T30P140 U420 ( .A1(n402), .A2(n389), .ZN(n321) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n321), .A2(n463), .B1(mem[111]), .B2(n321), 
        .ZN(n280) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n415), .A2(n463), .B1(mem[23]), .B2(n415), 
        .ZN(n192) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n321), .A2(n464), .B1(mem[110]), .B2(n321), 
        .ZN(n279) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n321), .A2(n449), .B1(mem[109]), .B2(n321), 
        .ZN(n278) );
  NR2D0BWP12T30P140 U425 ( .A1(n451), .A2(n466), .ZN(n345) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n345), .A2(n456), .B1(mem[48]), .B2(n345), 
        .ZN(n217) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n321), .A2(n445), .B1(mem[108]), .B2(n321), 
        .ZN(n277) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n321), .A2(n403), .B1(mem[107]), .B2(n321), 
        .ZN(n276) );
  MAOI22D0BWP12T30P140 U429 ( .A1(n345), .A2(n453), .B1(mem[49]), .B2(n345), 
        .ZN(n218) );
  MAOI22D0BWP12T30P140 U430 ( .A1(n321), .A2(n450), .B1(mem[106]), .B2(n321), 
        .ZN(n275) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n321), .A2(n453), .B1(mem[105]), .B2(n321), 
        .ZN(n274) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n345), .A2(n450), .B1(mem[50]), .B2(n345), 
        .ZN(n219) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n321), .A2(n456), .B1(mem[104]), .B2(n321), 
        .ZN(n273) );
  NR2D0BWP12T30P140 U434 ( .A1(n467), .A2(n389), .ZN(n323) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n323), .A2(n463), .B1(mem[79]), .B2(n323), 
        .ZN(n248) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n345), .A2(n403), .B1(mem[51]), .B2(n345), 
        .ZN(n220) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n323), .A2(n464), .B1(mem[78]), .B2(n323), 
        .ZN(n247) );
  MAOI22D0BWP12T30P140 U438 ( .A1(n323), .A2(n449), .B1(mem[77]), .B2(n323), 
        .ZN(n246) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n322), .A2(n453), .B1(mem[65]), .B2(n322), 
        .ZN(n234) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n323), .A2(n445), .B1(mem[76]), .B2(n323), 
        .ZN(n245) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n323), .A2(n403), .B1(mem[75]), .B2(n323), 
        .ZN(n244) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n345), .A2(n449), .B1(mem[53]), .B2(n345), 
        .ZN(n222) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n323), .A2(n450), .B1(mem[74]), .B2(n323), 
        .ZN(n243) );
  MAOI22D0BWP12T30P140 U444 ( .A1(n323), .A2(n453), .B1(mem[73]), .B2(n323), 
        .ZN(n242) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n345), .A2(n464), .B1(mem[54]), .B2(n345), 
        .ZN(n223) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n323), .A2(n456), .B1(mem[72]), .B2(n323), 
        .ZN(n241) );
  NR2D0BWP12T30P140 U447 ( .A1(n466), .A2(n389), .ZN(n377) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n377), .A2(n463), .B1(mem[47]), .B2(n377), 
        .ZN(n216) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n345), .A2(n463), .B1(mem[55]), .B2(n345), 
        .ZN(n224) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n377), .A2(n464), .B1(mem[46]), .B2(n377), 
        .ZN(n215) );
  INVD0BWP12T30P140 U451 ( .I(rptr[3]), .ZN(n333) );
  INVD0BWP12T30P140 U452 ( .I(rptr[2]), .ZN(n326) );
  INVD0BWP12T30P140 U453 ( .I(rptr[1]), .ZN(n325) );
  OAI22D0BWP12T30P140 U454 ( .A1(n326), .A2(wptr_sync[2]), .B1(n325), .B2(
        wptr_sync[1]), .ZN(n324) );
  AOI221D0BWP12T30P140 U455 ( .A1(n326), .A2(wptr_sync[2]), .B1(wptr_sync[1]), 
        .B2(n325), .C(n324), .ZN(n331) );
  INVD0BWP12T30P140 U456 ( .I(rptr[0]), .ZN(n329) );
  INVD0BWP12T30P140 U457 ( .I(rptr[4]), .ZN(n328) );
  OAI22D0BWP12T30P140 U458 ( .A1(n329), .A2(wptr_sync[0]), .B1(n328), .B2(
        wptr_sync[4]), .ZN(n327) );
  AOI221D0BWP12T30P140 U459 ( .A1(n329), .A2(wptr_sync[0]), .B1(wptr_sync[4]), 
        .B2(n328), .C(n327), .ZN(n330) );
  OAI211D0BWP12T30P140 U460 ( .A1(n333), .A2(wptr_sync[3]), .B(n331), .C(n330), 
        .ZN(n332) );
  AOI21D0BWP12T30P140 U461 ( .A1(n333), .A2(wptr_sync[3]), .B(n332), .ZN(
        rempty) );
  NR3D0BWP12T30P140 U462 ( .A1(raddr_bin[0]), .A2(raddr_bin[2]), .A3(
        raddr_bin[1]), .ZN(n429) );
  INVD0BWP12T30P140 U463 ( .I(raddr_bin[0]), .ZN(n455) );
  ND2D0BWP12T30P140 U464 ( .A1(raddr_bin[1]), .A2(n455), .ZN(n454) );
  NR2D0BWP12T30P140 U465 ( .A1(raddr_bin[2]), .A2(n454), .ZN(n428) );
  AOI22D0BWP12T30P140 U466 ( .A1(n429), .A2(mem[126]), .B1(n428), .B2(mem[110]), .ZN(n338) );
  NR3D0BWP12T30P140 U467 ( .A1(raddr_bin[2]), .A2(raddr_bin[1]), .A3(n455), 
        .ZN(n431) );
  ND2D0BWP12T30P140 U468 ( .A1(raddr_bin[0]), .A2(raddr_bin[1]), .ZN(n334) );
  NR2D0BWP12T30P140 U469 ( .A1(raddr_bin[2]), .A2(n334), .ZN(n430) );
  AOI22D0BWP12T30P140 U470 ( .A1(mem[118]), .A2(n431), .B1(mem[102]), .B2(n430), .ZN(n337) );
  INVD0BWP12T30P140 U471 ( .I(raddr_bin[1]), .ZN(n447) );
  ND2D0BWP12T30P140 U472 ( .A1(raddr_bin[2]), .A2(n447), .ZN(n446) );
  NR2D0BWP12T30P140 U473 ( .A1(raddr_bin[0]), .A2(n446), .ZN(n433) );
  INVD0BWP12T30P140 U474 ( .I(raddr_bin[2]), .ZN(n419) );
  NR2D0BWP12T30P140 U475 ( .A1(n419), .A2(n454), .ZN(n432) );
  AOI22D0BWP12T30P140 U476 ( .A1(n433), .A2(mem[94]), .B1(n432), .B2(mem[78]), 
        .ZN(n336) );
  NR2D0BWP12T30P140 U477 ( .A1(n455), .A2(n446), .ZN(n435) );
  NR3D0BWP12T30P140 U478 ( .A1(n455), .A2(n419), .A3(n447), .ZN(n434) );
  AOI22D0BWP12T30P140 U479 ( .A1(mem[86]), .A2(n435), .B1(mem[70]), .B2(n434), 
        .ZN(n335) );
  ND4D0BWP12T30P140 U480 ( .A1(n338), .A2(n337), .A3(n336), .A4(n335), .ZN(
        n344) );
  IND2D1BWP12T30P140 U481 ( .A1(rempty), .B1(rinc), .ZN(n442) );
  NR2D0BWP12T30P140 U482 ( .A1(raddr_bin[3]), .A2(n442), .ZN(n443) );
  AOI22D0BWP12T30P140 U483 ( .A1(n429), .A2(mem[62]), .B1(n428), .B2(mem[46]), 
        .ZN(n342) );
  AOI22D0BWP12T30P140 U484 ( .A1(mem[54]), .A2(n431), .B1(mem[38]), .B2(n430), 
        .ZN(n341) );
  AOI22D0BWP12T30P140 U485 ( .A1(n433), .A2(mem[30]), .B1(n432), .B2(mem[14]), 
        .ZN(n340) );
  AOI22D0BWP12T30P140 U486 ( .A1(mem[22]), .A2(n435), .B1(mem[6]), .B2(n434), 
        .ZN(n339) );
  ND4D0BWP12T30P140 U487 ( .A1(n342), .A2(n341), .A3(n340), .A4(n339), .ZN(
        n343) );
  INVD0BWP12T30P140 U488 ( .I(raddr_bin[3]), .ZN(n448) );
  NR2D0BWP12T30P140 U489 ( .A1(n442), .A2(n448), .ZN(n440) );
  AO222D0BWP12T30P140 U490 ( .A1(n344), .A2(n443), .B1(n442), .B2(rdata[6]), 
        .C1(n343), .C2(n440), .Z(n167) );
  MAOI22D0BWP12T30P140 U491 ( .A1(n345), .A2(n445), .B1(mem[52]), .B2(n345), 
        .ZN(n221) );
  MAOI22D0BWP12T30P140 U492 ( .A1(n377), .A2(n449), .B1(mem[45]), .B2(n377), 
        .ZN(n214) );
  NR2D0BWP12T30P140 U493 ( .A1(n451), .A2(n467), .ZN(n416) );
  MAOI22D0BWP12T30P140 U494 ( .A1(n416), .A2(n456), .B1(mem[80]), .B2(n416), 
        .ZN(n249) );
  MAOI22D0BWP12T30P140 U495 ( .A1(n377), .A2(n445), .B1(mem[44]), .B2(n377), 
        .ZN(n213) );
  INVD0BWP12T30P140 U496 ( .I(n442), .ZN(n422) );
  AOI22D0BWP12T30P140 U497 ( .A1(n429), .A2(mem[56]), .B1(n428), .B2(mem[40]), 
        .ZN(n348) );
  AOI22D0BWP12T30P140 U498 ( .A1(mem[48]), .A2(n431), .B1(mem[32]), .B2(n430), 
        .ZN(n347) );
  AOI22D0BWP12T30P140 U499 ( .A1(n433), .A2(mem[24]), .B1(n432), .B2(mem[8]), 
        .ZN(n346) );
  ND3D0BWP12T30P140 U500 ( .A1(n348), .A2(n347), .A3(n346), .ZN(n355) );
  AO22D0BWP12T30P140 U501 ( .A1(mem[0]), .A2(n434), .B1(mem[16]), .B2(n435), 
        .Z(n354) );
  AOI22D0BWP12T30P140 U502 ( .A1(mem[112]), .A2(n431), .B1(mem[96]), .B2(n430), 
        .ZN(n352) );
  AOI22D0BWP12T30P140 U503 ( .A1(n429), .A2(mem[120]), .B1(n428), .B2(mem[104]), .ZN(n351) );
  AOI22D0BWP12T30P140 U504 ( .A1(n433), .A2(mem[88]), .B1(n432), .B2(mem[72]), 
        .ZN(n350) );
  AOI22D0BWP12T30P140 U505 ( .A1(mem[80]), .A2(n435), .B1(mem[64]), .B2(n434), 
        .ZN(n349) );
  ND4D0BWP12T30P140 U506 ( .A1(n352), .A2(n351), .A3(n350), .A4(n349), .ZN(
        n353) );
  OAI32D0BWP12T30P140 U507 ( .A1(n448), .A2(n355), .A3(n354), .B1(raddr_bin[3]), .B2(n353), .ZN(n356) );
  MAOI22D0BWP12T30P140 U508 ( .A1(n422), .A2(n356), .B1(rdata[0]), .B2(n422), 
        .ZN(n161) );
  MAOI22D0BWP12T30P140 U509 ( .A1(n377), .A2(n403), .B1(mem[43]), .B2(n377), 
        .ZN(n212) );
  AOI22D0BWP12T30P140 U510 ( .A1(n429), .A2(mem[122]), .B1(n428), .B2(mem[106]), .ZN(n360) );
  AOI22D0BWP12T30P140 U511 ( .A1(mem[114]), .A2(n431), .B1(mem[98]), .B2(n430), 
        .ZN(n359) );
  AOI22D0BWP12T30P140 U512 ( .A1(n433), .A2(mem[90]), .B1(n432), .B2(mem[74]), 
        .ZN(n358) );
  AOI22D0BWP12T30P140 U513 ( .A1(mem[82]), .A2(n435), .B1(mem[66]), .B2(n434), 
        .ZN(n357) );
  ND4D0BWP12T30P140 U514 ( .A1(n360), .A2(n359), .A3(n358), .A4(n357), .ZN(
        n366) );
  AOI22D0BWP12T30P140 U515 ( .A1(n429), .A2(mem[58]), .B1(n428), .B2(mem[42]), 
        .ZN(n364) );
  AOI22D0BWP12T30P140 U516 ( .A1(mem[50]), .A2(n431), .B1(mem[34]), .B2(n430), 
        .ZN(n363) );
  AOI22D0BWP12T30P140 U517 ( .A1(n433), .A2(mem[26]), .B1(n432), .B2(mem[10]), 
        .ZN(n362) );
  AOI22D0BWP12T30P140 U518 ( .A1(mem[18]), .A2(n435), .B1(mem[2]), .B2(n434), 
        .ZN(n361) );
  ND4D0BWP12T30P140 U519 ( .A1(n364), .A2(n363), .A3(n362), .A4(n361), .ZN(
        n365) );
  AO222D0BWP12T30P140 U520 ( .A1(n366), .A2(n443), .B1(n442), .B2(rdata[2]), 
        .C1(n365), .C2(n440), .Z(n163) );
  MAOI22D0BWP12T30P140 U521 ( .A1(n416), .A2(n453), .B1(mem[81]), .B2(n416), 
        .ZN(n250) );
  MAOI22D0BWP12T30P140 U522 ( .A1(n377), .A2(n450), .B1(mem[42]), .B2(n377), 
        .ZN(n211) );
  AOI22D0BWP12T30P140 U523 ( .A1(n429), .A2(mem[127]), .B1(n428), .B2(mem[111]), .ZN(n370) );
  AOI22D0BWP12T30P140 U524 ( .A1(mem[119]), .A2(n431), .B1(mem[103]), .B2(n430), .ZN(n369) );
  AOI22D0BWP12T30P140 U525 ( .A1(n433), .A2(mem[95]), .B1(n432), .B2(mem[79]), 
        .ZN(n368) );
  AOI22D0BWP12T30P140 U526 ( .A1(mem[87]), .A2(n435), .B1(mem[71]), .B2(n434), 
        .ZN(n367) );
  ND4D0BWP12T30P140 U527 ( .A1(n370), .A2(n369), .A3(n368), .A4(n367), .ZN(
        n376) );
  AOI22D0BWP12T30P140 U528 ( .A1(n429), .A2(mem[63]), .B1(n428), .B2(mem[47]), 
        .ZN(n374) );
  AOI22D0BWP12T30P140 U529 ( .A1(mem[55]), .A2(n431), .B1(mem[39]), .B2(n430), 
        .ZN(n373) );
  AOI22D0BWP12T30P140 U530 ( .A1(n433), .A2(mem[31]), .B1(n432), .B2(mem[15]), 
        .ZN(n372) );
  AOI22D0BWP12T30P140 U531 ( .A1(mem[23]), .A2(n435), .B1(mem[7]), .B2(n434), 
        .ZN(n371) );
  ND4D0BWP12T30P140 U532 ( .A1(n374), .A2(n373), .A3(n372), .A4(n371), .ZN(
        n375) );
  AO222D0BWP12T30P140 U533 ( .A1(n376), .A2(n443), .B1(n442), .B2(rdata[7]), 
        .C1(n375), .C2(n440), .Z(n168) );
  MAOI22D0BWP12T30P140 U534 ( .A1(n377), .A2(n453), .B1(mem[41]), .B2(n377), 
        .ZN(n210) );
  MAOI22D0BWP12T30P140 U535 ( .A1(n416), .A2(n450), .B1(mem[82]), .B2(n416), 
        .ZN(n251) );
  MAOI22D0BWP12T30P140 U536 ( .A1(n377), .A2(n456), .B1(mem[40]), .B2(n377), 
        .ZN(n209) );
  AOI22D0BWP12T30P140 U537 ( .A1(n429), .A2(mem[124]), .B1(n428), .B2(mem[108]), .ZN(n381) );
  AOI22D0BWP12T30P140 U538 ( .A1(mem[116]), .A2(n431), .B1(mem[100]), .B2(n430), .ZN(n380) );
  AOI22D0BWP12T30P140 U539 ( .A1(n433), .A2(mem[92]), .B1(n432), .B2(mem[76]), 
        .ZN(n379) );
  AOI22D0BWP12T30P140 U540 ( .A1(mem[84]), .A2(n435), .B1(mem[68]), .B2(n434), 
        .ZN(n378) );
  ND4D0BWP12T30P140 U541 ( .A1(n381), .A2(n380), .A3(n379), .A4(n378), .ZN(
        n387) );
  AOI22D0BWP12T30P140 U542 ( .A1(n429), .A2(mem[60]), .B1(n428), .B2(mem[44]), 
        .ZN(n385) );
  AOI22D0BWP12T30P140 U543 ( .A1(mem[52]), .A2(n431), .B1(mem[36]), .B2(n430), 
        .ZN(n384) );
  AOI22D0BWP12T30P140 U544 ( .A1(n433), .A2(mem[28]), .B1(n432), .B2(mem[12]), 
        .ZN(n383) );
  AOI22D0BWP12T30P140 U545 ( .A1(mem[20]), .A2(n435), .B1(mem[4]), .B2(n434), 
        .ZN(n382) );
  ND4D0BWP12T30P140 U546 ( .A1(n385), .A2(n384), .A3(n383), .A4(n382), .ZN(
        n386) );
  AO222D0BWP12T30P140 U547 ( .A1(n387), .A2(n443), .B1(n442), .B2(rdata[4]), 
        .C1(n386), .C2(n440), .Z(n165) );
  NR2D0BWP12T30P140 U548 ( .A1(n402), .A2(n388), .ZN(n457) );
  MAOI22D0BWP12T30P140 U549 ( .A1(n457), .A2(n403), .B1(mem[123]), .B2(n457), 
        .ZN(n292) );
  NR2D0BWP12T30P140 U550 ( .A1(n390), .A2(n389), .ZN(n404) );
  MAOI22D0BWP12T30P140 U551 ( .A1(n404), .A2(n463), .B1(mem[15]), .B2(n404), 
        .ZN(n184) );
  MAOI22D0BWP12T30P140 U552 ( .A1(n416), .A2(n403), .B1(mem[83]), .B2(n416), 
        .ZN(n252) );
  INVD0BWP12T30P140 U553 ( .I(waddr_bin[4]), .ZN(n471) );
  AOI22D0BWP12T30P140 U554 ( .A1(waddr_bin[3]), .A2(waddr_bin[4]), .B1(n471), 
        .B2(n391), .ZN(waddr_gray[3]) );
  MAOI22D0BWP12T30P140 U555 ( .A1(n404), .A2(n464), .B1(mem[14]), .B2(n404), 
        .ZN(n183) );
  ND2D0BWP12T30P140 U556 ( .A1(n422), .A2(raddr_bin[0]), .ZN(n418) );
  NR2D0BWP12T30P140 U557 ( .A1(n447), .A2(n418), .ZN(n417) );
  MOAI22D0BWP12T30P140 U558 ( .A1(n417), .A2(n419), .B1(n422), .B2(n430), .ZN(
        n304) );
  MAOI22D0BWP12T30P140 U559 ( .A1(n404), .A2(n449), .B1(mem[13]), .B2(n404), 
        .ZN(n182) );
  AOI22D0BWP12T30P140 U560 ( .A1(n429), .A2(mem[125]), .B1(n428), .B2(mem[109]), .ZN(n395) );
  AOI22D0BWP12T30P140 U561 ( .A1(mem[117]), .A2(n431), .B1(mem[101]), .B2(n430), .ZN(n394) );
  AOI22D0BWP12T30P140 U562 ( .A1(n433), .A2(mem[93]), .B1(n432), .B2(mem[77]), 
        .ZN(n393) );
  AOI22D0BWP12T30P140 U563 ( .A1(mem[85]), .A2(n435), .B1(mem[69]), .B2(n434), 
        .ZN(n392) );
  ND4D0BWP12T30P140 U564 ( .A1(n395), .A2(n394), .A3(n393), .A4(n392), .ZN(
        n401) );
  AOI22D0BWP12T30P140 U565 ( .A1(n429), .A2(mem[61]), .B1(n428), .B2(mem[45]), 
        .ZN(n399) );
  AOI22D0BWP12T30P140 U566 ( .A1(mem[53]), .A2(n431), .B1(mem[37]), .B2(n430), 
        .ZN(n398) );
  AOI22D0BWP12T30P140 U567 ( .A1(n433), .A2(mem[29]), .B1(n432), .B2(mem[13]), 
        .ZN(n397) );
  AOI22D0BWP12T30P140 U568 ( .A1(mem[21]), .A2(n435), .B1(mem[5]), .B2(n434), 
        .ZN(n396) );
  ND4D0BWP12T30P140 U569 ( .A1(n399), .A2(n398), .A3(n397), .A4(n396), .ZN(
        n400) );
  AO222D0BWP12T30P140 U570 ( .A1(n401), .A2(n443), .B1(n442), .B2(rdata[5]), 
        .C1(n400), .C2(n440), .Z(n166) );
  MAOI22D0BWP12T30P140 U571 ( .A1(n416), .A2(n445), .B1(mem[84]), .B2(n416), 
        .ZN(n253) );
  MAOI22D0BWP12T30P140 U572 ( .A1(n404), .A2(n445), .B1(mem[12]), .B2(n404), 
        .ZN(n181) );
  NR2D0BWP12T30P140 U573 ( .A1(n451), .A2(n402), .ZN(n465) );
  MAOI22D0BWP12T30P140 U574 ( .A1(n465), .A2(n403), .B1(mem[115]), .B2(n465), 
        .ZN(n284) );
  MAOI22D0BWP12T30P140 U575 ( .A1(n404), .A2(n403), .B1(mem[11]), .B2(n404), 
        .ZN(n180) );
  MAOI22D0BWP12T30P140 U576 ( .A1(n416), .A2(n449), .B1(mem[85]), .B2(n416), 
        .ZN(n254) );
  MAOI22D0BWP12T30P140 U577 ( .A1(n404), .A2(n450), .B1(mem[10]), .B2(n404), 
        .ZN(n179) );
  MAOI22D0BWP12T30P140 U578 ( .A1(n457), .A2(n449), .B1(mem[125]), .B2(n457), 
        .ZN(n294) );
  AOI22D0BWP12T30P140 U579 ( .A1(waddr_bin[1]), .A2(waddr_bin[2]), .B1(n421), 
        .B2(n452), .ZN(waddr_gray[1]) );
  MAOI22D0BWP12T30P140 U580 ( .A1(n404), .A2(n453), .B1(mem[9]), .B2(n404), 
        .ZN(n178) );
  MAOI22D0BWP12T30P140 U581 ( .A1(n416), .A2(n464), .B1(mem[86]), .B2(n416), 
        .ZN(n255) );
  MAOI22D0BWP12T30P140 U582 ( .A1(n465), .A2(n453), .B1(mem[113]), .B2(n465), 
        .ZN(n282) );
  MAOI22D0BWP12T30P140 U583 ( .A1(n404), .A2(n456), .B1(mem[8]), .B2(n404), 
        .ZN(n177) );
  AOI22D0BWP12T30P140 U584 ( .A1(n429), .A2(mem[123]), .B1(n428), .B2(mem[107]), .ZN(n408) );
  AOI22D0BWP12T30P140 U585 ( .A1(mem[115]), .A2(n431), .B1(mem[99]), .B2(n430), 
        .ZN(n407) );
  AOI22D0BWP12T30P140 U586 ( .A1(n433), .A2(mem[91]), .B1(n432), .B2(mem[75]), 
        .ZN(n406) );
  AOI22D0BWP12T30P140 U587 ( .A1(mem[83]), .A2(n435), .B1(mem[67]), .B2(n434), 
        .ZN(n405) );
  ND4D0BWP12T30P140 U588 ( .A1(n408), .A2(n407), .A3(n406), .A4(n405), .ZN(
        n414) );
  AOI22D0BWP12T30P140 U589 ( .A1(n429), .A2(mem[59]), .B1(n428), .B2(mem[43]), 
        .ZN(n412) );
  AOI22D0BWP12T30P140 U590 ( .A1(mem[51]), .A2(n431), .B1(mem[35]), .B2(n430), 
        .ZN(n411) );
  AOI22D0BWP12T30P140 U591 ( .A1(n433), .A2(mem[27]), .B1(n432), .B2(mem[11]), 
        .ZN(n410) );
  AOI22D0BWP12T30P140 U592 ( .A1(mem[19]), .A2(n435), .B1(mem[3]), .B2(n434), 
        .ZN(n409) );
  ND4D0BWP12T30P140 U593 ( .A1(n412), .A2(n411), .A3(n410), .A4(n409), .ZN(
        n413) );
  AO222D0BWP12T30P140 U594 ( .A1(n414), .A2(n443), .B1(n442), .B2(rdata[3]), 
        .C1(n413), .C2(n440), .Z(n164) );
  MAOI22D0BWP12T30P140 U595 ( .A1(n415), .A2(n456), .B1(mem[16]), .B2(n415), 
        .ZN(n185) );
  MAOI22D0BWP12T30P140 U596 ( .A1(n416), .A2(n463), .B1(mem[87]), .B2(n416), 
        .ZN(n256) );
  OA21D0BWP12T30P140 U597 ( .A1(n422), .A2(raddr_bin[0]), .B(n418), .Z(n305)
         );
  AOI22D0BWP12T30P140 U598 ( .A1(waddr_bin[0]), .A2(waddr_bin[1]), .B1(n452), 
        .B2(n461), .ZN(waddr_gray[0]) );
  MAOI22D0BWP12T30P140 U599 ( .A1(n457), .A2(n463), .B1(mem[127]), .B2(n457), 
        .ZN(n296) );
  AOI21D0BWP12T30P140 U600 ( .A1(n447), .A2(n418), .B(n417), .ZN(n306) );
  MAOI22D0BWP12T30P140 U601 ( .A1(n457), .A2(n464), .B1(mem[126]), .B2(n457), 
        .ZN(n295) );
  AOI22D0BWP12T30P140 U602 ( .A1(raddr_bin[2]), .A2(raddr_bin[3]), .B1(n448), 
        .B2(n419), .ZN(raddr_gray[2]) );
  MAOI22D0BWP12T30P140 U603 ( .A1(n465), .A2(n456), .B1(mem[112]), .B2(n465), 
        .ZN(n281) );
  NR2D0BWP12T30P140 U604 ( .A1(n421), .A2(n420), .ZN(n459) );
  AOI21D0BWP12T30P140 U605 ( .A1(n421), .A2(n420), .B(n459), .ZN(n299) );
  ND2D0BWP12T30P140 U606 ( .A1(n422), .A2(n434), .ZN(n423) );
  AN3D0BWP12T30P140 U607 ( .A1(n434), .A2(n422), .A3(raddr_bin[3]), .Z(n468)
         );
  AOI21D0BWP12T30P140 U608 ( .A1(n448), .A2(n423), .B(n468), .ZN(n303) );
  AOI22D0BWP12T30P140 U609 ( .A1(n429), .A2(mem[121]), .B1(n428), .B2(mem[105]), .ZN(n427) );
  AOI22D0BWP12T30P140 U610 ( .A1(mem[113]), .A2(n431), .B1(mem[97]), .B2(n430), 
        .ZN(n426) );
  AOI22D0BWP12T30P140 U611 ( .A1(n433), .A2(mem[89]), .B1(n432), .B2(mem[73]), 
        .ZN(n425) );
  AOI22D0BWP12T30P140 U612 ( .A1(mem[81]), .A2(n435), .B1(mem[65]), .B2(n434), 
        .ZN(n424) );
  ND4D0BWP12T30P140 U613 ( .A1(n427), .A2(n426), .A3(n425), .A4(n424), .ZN(
        n444) );
  AOI22D0BWP12T30P140 U614 ( .A1(n429), .A2(mem[57]), .B1(n428), .B2(mem[41]), 
        .ZN(n439) );
  AOI22D0BWP12T30P140 U615 ( .A1(mem[49]), .A2(n431), .B1(mem[33]), .B2(n430), 
        .ZN(n438) );
  AOI22D0BWP12T30P140 U616 ( .A1(n433), .A2(mem[25]), .B1(n432), .B2(mem[9]), 
        .ZN(n437) );
  AOI22D0BWP12T30P140 U617 ( .A1(mem[17]), .A2(n435), .B1(mem[1]), .B2(n434), 
        .ZN(n436) );
  ND4D0BWP12T30P140 U618 ( .A1(n439), .A2(n438), .A3(n437), .A4(n436), .ZN(
        n441) );
  AO222D0BWP12T30P140 U619 ( .A1(n444), .A2(n443), .B1(n442), .B2(rdata[1]), 
        .C1(n441), .C2(n440), .Z(n162) );
  MAOI22D0BWP12T30P140 U620 ( .A1(n457), .A2(n445), .B1(mem[124]), .B2(n457), 
        .ZN(n293) );
  MAOI22D0BWP12T30P140 U621 ( .A1(n465), .A2(n445), .B1(mem[116]), .B2(n465), 
        .ZN(n285) );
  OAI21D0BWP12T30P140 U622 ( .A1(raddr_bin[2]), .A2(n447), .B(n446), .ZN(
        raddr_gray[1]) );
  INVD0BWP12T30P140 U623 ( .I(raddr_bin[4]), .ZN(n469) );
  AOI22D0BWP12T30P140 U624 ( .A1(raddr_bin[3]), .A2(raddr_bin[4]), .B1(n469), 
        .B2(n448), .ZN(raddr_gray[3]) );
  MAOI22D0BWP12T30P140 U625 ( .A1(n465), .A2(n449), .B1(mem[117]), .B2(n465), 
        .ZN(n286) );
  MAOI22D0BWP12T30P140 U626 ( .A1(n457), .A2(n450), .B1(mem[122]), .B2(n457), 
        .ZN(n291) );
  MAOI22D0BWP12T30P140 U627 ( .A1(n465), .A2(n450), .B1(mem[114]), .B2(n465), 
        .ZN(n283) );
  OAI21D0BWP12T30P140 U628 ( .A1(n460), .A2(n452), .B(n451), .ZN(n301) );
  MAOI22D0BWP12T30P140 U629 ( .A1(n457), .A2(n453), .B1(mem[121]), .B2(n457), 
        .ZN(n290) );
  OAI21D0BWP12T30P140 U630 ( .A1(raddr_bin[1]), .A2(n455), .B(n454), .ZN(
        raddr_gray[0]) );
  MAOI22D0BWP12T30P140 U631 ( .A1(n457), .A2(n456), .B1(mem[120]), .B2(n457), 
        .ZN(n289) );
  INVD0BWP12T30P140 U632 ( .I(n458), .ZN(n470) );
  OA21D0BWP12T30P140 U633 ( .A1(waddr_bin[3]), .A2(n459), .B(n470), .Z(n298)
         );
  AOI21D0BWP12T30P140 U634 ( .A1(n462), .A2(n461), .B(n460), .ZN(n300) );
  MAOI22D0BWP12T30P140 U635 ( .A1(n465), .A2(n463), .B1(mem[119]), .B2(n465), 
        .ZN(n288) );
  MAOI22D0BWP12T30P140 U636 ( .A1(n465), .A2(n464), .B1(mem[118]), .B2(n465), 
        .ZN(n287) );
  CKBD0BWP12T30P140 U637 ( .I(wclk), .Z(n480) );
  CKBD0BWP12T30P140 U638 ( .I(wclk), .Z(n479) );
  CKBD0BWP12T30P140 U639 ( .I(rclk), .Z(n473) );
  CKBD0BWP12T30P140 U640 ( .I(wclk), .Z(n476) );
  CKBD0BWP12T30P140 U641 ( .I(wclk), .Z(n477) );
  CKBD0BWP12T30P140 U642 ( .I(wclk), .Z(n478) );
  CKBD0BWP12T30P140 U643 ( .I(wclk), .Z(n474) );
  CKBD0BWP12T30P140 U644 ( .I(wclk), .Z(n475) );
  CKBD0BWP12T30P140 U645 ( .I(rrstn), .Z(n472) );
  ND2D0BWP12T30P140 U646 ( .A1(n467), .A2(n466), .ZN(waddr_gray[2]) );
  MUX2ND0BWP12T30P140 U647 ( .I0(n469), .I1(raddr_bin[4]), .S(n468), .ZN(n302)
         );
  MUX2ND0BWP12T30P140 U648 ( .I0(waddr_bin[4]), .I1(n471), .S(n470), .ZN(n297)
         );
endmodule

