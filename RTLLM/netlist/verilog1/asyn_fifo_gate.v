/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:27:53 2026
/////////////////////////////////////////////////////////////


module asyn_fifo ( wclk, rclk, wrstn, rrstn, winc, rinc, wdata, wfull, rempty, 
        rdata );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrstn, rrstn, winc, rinc;
  output wfull, rempty;
  wire   n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
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
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
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
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482;
  wire   [4:0] waddr_bin;
  wire   [4:0] raddr_bin;
  wire   [3:0] waddr_gray;
  wire   [3:0] raddr_gray;
  wire   [4:0] wptr;
  wire   [4:0] rptr;
  wire   [4:0] rptr_syn;
  wire   [4:0] rptr_buff;
  wire   [4:0] wptr_syn;
  wire   [4:0] wptr_buff;
  wire   [127:0] dual_port_RAM_RAM_MEM;

  DFCNQD1BWP12T30P140 wptr_syn_reg_3_ ( .D(wptr_buff[3]), .CP(rclk), .CDN(
        rrstn), .Q(wptr_syn[3]) );
  DFCNQD1BWP12T30P140 wptr_syn_reg_2_ ( .D(wptr_buff[2]), .CP(rclk), .CDN(
        rrstn), .Q(wptr_syn[2]) );
  DFCNQD1BWP12T30P140 rptr_syn_reg_0_ ( .D(rptr_buff[0]), .CP(wclk), .CDN(
        wrstn), .Q(rptr_syn[0]) );
  DFCNQD1BWP12T30P140 wptr_syn_reg_1_ ( .D(wptr_buff[1]), .CP(rclk), .CDN(
        rrstn), .Q(wptr_syn[1]) );
  DFCNQD1BWP12T30P140 wptr_syn_reg_4_ ( .D(wptr_buff[4]), .CP(rclk), .CDN(
        rrstn), .Q(wptr_syn[4]) );
  DFCNQD1BWP12T30P140 rptr_syn_reg_2_ ( .D(rptr_buff[2]), .CP(n482), .CDN(
        wrstn), .Q(rptr_syn[2]) );
  DFCNQD1BWP12T30P140 wptr_syn_reg_0_ ( .D(wptr_buff[0]), .CP(n475), .CDN(
        rrstn), .Q(wptr_syn[0]) );
  DFCNQD1BWP12T30P140 rptr_syn_reg_1_ ( .D(rptr_buff[1]), .CP(n482), .CDN(
        wrstn), .Q(rptr_syn[1]) );
  DFCNQD1BWP12T30P140 rptr_syn_reg_4_ ( .D(rptr_buff[4]), .CP(n482), .CDN(
        wrstn), .Q(rptr_syn[4]) );
  DFCNQD1BWP12T30P140 rptr_syn_reg_3_ ( .D(rptr_buff[3]), .CP(n482), .CDN(
        wrstn), .Q(rptr_syn[3]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_0_ ( .D(n303), .CP(n482), .CDN(wrstn), .Q(
        waddr_bin[0]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_7_ ( .D(n164), .CP(n475), .Q(
        rdata[7]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_0_ ( .D(n178), .CP(n475), .Q(
        rdata[0]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_1_ ( .D(n176), .CP(n475), .Q(
        rdata[1]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_3_ ( .D(n172), .CP(n475), .Q(
        rdata[3]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_4_ ( .D(n170), .CP(n475), .Q(
        rdata[4]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_5_ ( .D(n168), .CP(n475), .Q(
        rdata[5]) );
  DFQD2BWP12T30P140 dual_port_RAM_rdata_reg_6_ ( .D(n166), .CP(n475), .Q(
        rdata[6]) );
  DFCNQD1BWP12T30P140 rptr_buff_reg_0_ ( .D(rptr[0]), .CP(wclk), .CDN(wrstn), 
        .Q(rptr_buff[0]) );
  DFCNQD1BWP12T30P140 wptr_buff_reg_0_ ( .D(wptr[0]), .CP(rclk), .CDN(rrstn), 
        .Q(wptr_buff[0]) );
  DFCNQD1BWP12T30P140 wptr_buff_reg_1_ ( .D(wptr[1]), .CP(rclk), .CDN(rrstn), 
        .Q(wptr_buff[1]) );
  DFCNQD1BWP12T30P140 wptr_buff_reg_2_ ( .D(wptr[2]), .CP(rclk), .CDN(rrstn), 
        .Q(wptr_buff[2]) );
  DFCNQD1BWP12T30P140 wptr_buff_reg_4_ ( .D(wptr[4]), .CP(rclk), .CDN(rrstn), 
        .Q(wptr_buff[4]) );
  DFCNQD1BWP12T30P140 wptr_buff_reg_3_ ( .D(wptr[3]), .CP(rclk), .CDN(rrstn), 
        .Q(wptr_buff[3]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__0_ ( .D(n267), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[32]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__1_ ( .D(n266), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[33]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__2_ ( .D(n265), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[34]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__3_ ( .D(n264), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[35]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__5_ ( .D(n262), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[37]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__6_ ( .D(n261), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[38]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__7_ ( .D(n260), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[39]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__0_ ( .D(n235), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[64]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__1_ ( .D(n234), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[65]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__2_ ( .D(n233), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[66]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__3_ ( .D(n232), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[67]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__4_ ( .D(n231), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[68]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__5_ ( .D(n230), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[69]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__6_ ( .D(n229), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[70]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_7__7_ ( .D(n228), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[71]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__0_ ( .D(n203), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[96]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__1_ ( .D(n202), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[97]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__2_ ( .D(n201), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[98]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__4_ ( .D(n199), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[100]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__5_ ( .D(n198), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[101]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__6_ ( .D(n197), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[102]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__7_ ( .D(n196), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[103]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__7_ ( .D(n180), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[119]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__0_ ( .D(n283), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[16]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__1_ ( .D(n282), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[17]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__2_ ( .D(n281), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[18]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__3_ ( .D(n280), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[19]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__4_ ( .D(n279), .CP(n476), 
        .Q(dual_port_RAM_RAM_MEM[20]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__5_ ( .D(n278), .CP(n478), 
        .Q(dual_port_RAM_RAM_MEM[21]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__6_ ( .D(n277), .CP(n477), 
        .Q(dual_port_RAM_RAM_MEM[22]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__0_ ( .D(n251), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[48]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__1_ ( .D(n250), .CP(n481), .Q(
        dual_port_RAM_RAM_MEM[49]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__3_ ( .D(n248), .CP(n482), .Q(
        dual_port_RAM_RAM_MEM[51]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__4_ ( .D(n247), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[52]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__5_ ( .D(n246), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[53]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__6_ ( .D(n245), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[54]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__7_ ( .D(n244), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[55]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__0_ ( .D(n219), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[80]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__1_ ( .D(n218), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[81]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__2_ ( .D(n217), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[82]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__3_ ( .D(n216), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[83]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__4_ ( .D(n215), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[84]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__5_ ( .D(n214), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[85]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__6_ ( .D(n213), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[86]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_5__7_ ( .D(n212), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[87]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__0_ ( .D(n187), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[112]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__2_ ( .D(n185), .CP(n482), .Q(
        dual_port_RAM_RAM_MEM[114]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__3_ ( .D(n184), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[115]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__4_ ( .D(n183), .CP(n480), .Q(
        dual_port_RAM_RAM_MEM[116]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__5_ ( .D(n182), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[117]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__6_ ( .D(n181), .CP(n481), .Q(
        dual_port_RAM_RAM_MEM[118]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__0_ ( .D(n275), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[24]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__1_ ( .D(n274), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[25]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__2_ ( .D(n273), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[26]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__3_ ( .D(n272), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[27]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__4_ ( .D(n271), .CP(n482), 
        .Q(dual_port_RAM_RAM_MEM[28]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__5_ ( .D(n270), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[29]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__6_ ( .D(n269), .CP(n478), 
        .Q(dual_port_RAM_RAM_MEM[30]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_12__7_ ( .D(n268), .CP(n477), 
        .Q(dual_port_RAM_RAM_MEM[31]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__0_ ( .D(n243), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[56]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__2_ ( .D(n241), .CP(n481), .Q(
        dual_port_RAM_RAM_MEM[58]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__3_ ( .D(n240), .CP(n482), .Q(
        dual_port_RAM_RAM_MEM[59]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__4_ ( .D(n239), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[60]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__5_ ( .D(n238), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[61]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__6_ ( .D(n237), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[62]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__7_ ( .D(n236), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[63]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__0_ ( .D(n211), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[88]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__1_ ( .D(n210), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[89]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__2_ ( .D(n209), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[90]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__3_ ( .D(n208), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[91]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__4_ ( .D(n207), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[92]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__5_ ( .D(n206), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[93]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__6_ ( .D(n205), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[94]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__0_ ( .D(n179), .CP(n482), .Q(
        dual_port_RAM_RAM_MEM[120]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__2_ ( .D(n175), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[122]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__3_ ( .D(n173), .CP(n480), .Q(
        dual_port_RAM_RAM_MEM[123]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__4_ ( .D(n171), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[124]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__5_ ( .D(n169), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[125]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__6_ ( .D(n167), .CP(n477), .Q(
        dual_port_RAM_RAM_MEM[126]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__7_ ( .D(n165), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[127]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__0_ ( .D(n291), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[8]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__1_ ( .D(n290), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[9]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__2_ ( .D(n289), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[10]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__3_ ( .D(n288), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[11]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__4_ ( .D(n287), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[12]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__5_ ( .D(n286), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[13]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__6_ ( .D(n285), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[14]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_14__7_ ( .D(n284), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[15]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__1_ ( .D(n258), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[41]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__2_ ( .D(n257), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[42]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__3_ ( .D(n256), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[43]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__4_ ( .D(n255), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[44]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__5_ ( .D(n254), .CP(n482), 
        .Q(dual_port_RAM_RAM_MEM[45]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__6_ ( .D(n253), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[46]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__7_ ( .D(n252), .CP(wclk), 
        .Q(dual_port_RAM_RAM_MEM[47]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__0_ ( .D(n227), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[72]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__1_ ( .D(n226), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[73]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__2_ ( .D(n225), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[74]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__3_ ( .D(n224), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[75]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__4_ ( .D(n223), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[76]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__5_ ( .D(n222), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[77]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__6_ ( .D(n221), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[78]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_4__7_ ( .D(n204), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[95]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__0_ ( .D(n195), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[104]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__1_ ( .D(n194), .CP(n482), .Q(
        dual_port_RAM_RAM_MEM[105]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__2_ ( .D(n193), .CP(wclk), .Q(
        dual_port_RAM_RAM_MEM[106]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__3_ ( .D(n192), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[107]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__4_ ( .D(n191), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[108]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__5_ ( .D(n190), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[109]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__6_ ( .D(n189), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[110]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_2__7_ ( .D(n188), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[111]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_13__7_ ( .D(n276), .CP(n480), 
        .Q(dual_port_RAM_RAM_MEM[23]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_3_ ( .D(n306), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[3]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__0_ ( .D(n299), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[0]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__1_ ( .D(n298), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[1]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__2_ ( .D(n297), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[2]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__4_ ( .D(n295), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[4]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__5_ ( .D(n294), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[5]) );
  DFQD2BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__6_ ( .D(n293), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[6]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_2_ ( .D(n302), .CP(n482), .CDN(wrstn), .Q(
        waddr_bin[2]) );
  DFCNQD1BWP12T30P140 rptr_reg_2_ ( .D(raddr_gray[2]), .CP(rclk), .CDN(rrstn), 
        .Q(rptr[2]) );
  DFCNQD1BWP12T30P140 rptr_reg_4_ ( .D(raddr_bin[4]), .CP(rclk), .CDN(rrstn), 
        .Q(rptr[4]) );
  DFCNQD1BWP12T30P140 rptr_reg_3_ ( .D(raddr_gray[3]), .CP(rclk), .CDN(rrstn), 
        .Q(rptr[3]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_1_ ( .D(n309), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[1]) );
  DFCNQD1BWP12T30P140 rptr_buff_reg_1_ ( .D(rptr[1]), .CP(n482), .CDN(wrstn), 
        .Q(rptr_buff[1]) );
  DFCNQD1BWP12T30P140 rptr_buff_reg_2_ ( .D(rptr[2]), .CP(n482), .CDN(wrstn), 
        .Q(rptr_buff[2]) );
  DFCNQD1BWP12T30P140 rptr_buff_reg_4_ ( .D(rptr[4]), .CP(n482), .CDN(wrstn), 
        .Q(rptr_buff[4]) );
  DFCNQD1BWP12T30P140 rptr_buff_reg_3_ ( .D(rptr[3]), .CP(n482), .CDN(wrstn), 
        .Q(rptr_buff[3]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_1_ ( .D(n304), .CP(n482), .CDN(wrstn), .Q(
        waddr_bin[1]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_3_ ( .D(n301), .CP(n481), .CDN(wrstn), .Q(
        waddr_bin[3]) );
  DFCNQD1BWP12T30P140 wptr_reg_0_ ( .D(waddr_gray[0]), .CP(n482), .CDN(wrstn), 
        .Q(wptr[0]) );
  DFCNQD1BWP12T30P140 wptr_reg_1_ ( .D(waddr_gray[1]), .CP(n482), .CDN(wrstn), 
        .Q(wptr[1]) );
  DFCNQD1BWP12T30P140 rptr_reg_0_ ( .D(raddr_gray[0]), .CP(n475), .CDN(rrstn), 
        .Q(rptr[0]) );
  DFCNQD1BWP12T30P140 rptr_reg_1_ ( .D(raddr_gray[1]), .CP(n475), .CDN(rrstn), 
        .Q(rptr[1]) );
  DFCNQD1BWP12T30P140 wptr_reg_2_ ( .D(waddr_gray[2]), .CP(n481), .CDN(wrstn), 
        .Q(wptr[2]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_4_ ( .D(n305), .CP(rclk), .CDN(rrstn), .Q(
        raddr_bin[4]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_0_ ( .D(n308), .CP(n475), .CDN(rrstn), .Q(
        raddr_bin[0]) );
  DFCNQD1BWP12T30P140 wptr_reg_3_ ( .D(waddr_gray[3]), .CP(n481), .CDN(wrstn), 
        .Q(wptr[3]) );
  DFCNQD1BWP12T30P140 wptr_reg_4_ ( .D(waddr_bin[4]), .CP(n481), .CDN(wrstn), 
        .Q(wptr[4]) );
  DFCNQD1BWP12T30P140 waddr_bin_reg_4_ ( .D(n300), .CP(n481), .CDN(wrstn), .Q(
        waddr_bin[4]) );
  DFCNQD1BWP12T30P140 raddr_bin_reg_2_ ( .D(n307), .CP(n475), .CDN(rrstn), .Q(
        raddr_bin[2]) );
  DFQD1BWP12T30P140 dual_port_RAM_rdata_reg_2_ ( .D(n174), .CP(n475), .Q(
        rdata[2]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_11__4_ ( .D(n263), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[36]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_3__3_ ( .D(n200), .CP(n476), .Q(
        dual_port_RAM_RAM_MEM[99]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_9__2_ ( .D(n249), .CP(n481), .Q(
        dual_port_RAM_RAM_MEM[50]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_1__1_ ( .D(n186), .CP(n481), .Q(
        dual_port_RAM_RAM_MEM[113]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_8__1_ ( .D(n242), .CP(n480), .Q(
        dual_port_RAM_RAM_MEM[57]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_0__1_ ( .D(n177), .CP(n479), .Q(
        dual_port_RAM_RAM_MEM[121]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_10__0_ ( .D(n259), .CP(n479), 
        .Q(dual_port_RAM_RAM_MEM[40]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_6__7_ ( .D(n220), .CP(n478), .Q(
        dual_port_RAM_RAM_MEM[79]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__3_ ( .D(n296), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[3]) );
  DFQD1BWP12T30P140 dual_port_RAM_RAM_MEM_reg_15__7_ ( .D(n292), .CP(n481), 
        .Q(dual_port_RAM_RAM_MEM[7]) );
  INVD0BWP12T30P140 U322 ( .I(wptr[2]), .ZN(n317) );
  OAI22D0BWP12T30P140 U323 ( .A1(wptr[3]), .A2(rptr_syn[3]), .B1(wptr[4]), 
        .B2(rptr_syn[4]), .ZN(n310) );
  AOI221D0BWP12T30P140 U324 ( .A1(wptr[3]), .A2(rptr_syn[3]), .B1(rptr_syn[4]), 
        .B2(wptr[4]), .C(n310), .ZN(n315) );
  INVD0BWP12T30P140 U325 ( .I(wptr[1]), .ZN(n313) );
  INVD0BWP12T30P140 U326 ( .I(wptr[0]), .ZN(n312) );
  OAI22D0BWP12T30P140 U327 ( .A1(n313), .A2(rptr_syn[1]), .B1(n312), .B2(
        rptr_syn[0]), .ZN(n311) );
  AOI221D0BWP12T30P140 U328 ( .A1(n313), .A2(rptr_syn[1]), .B1(rptr_syn[0]), 
        .B2(n312), .C(n311), .ZN(n314) );
  OAI211D0BWP12T30P140 U329 ( .A1(n317), .A2(rptr_syn[2]), .B(n315), .C(n314), 
        .ZN(n316) );
  AOI21D0BWP12T30P140 U330 ( .A1(n317), .A2(rptr_syn[2]), .B(n316), .ZN(wfull)
         );
  INR2D1BWP12T30P140 U331 ( .A1(winc), .B1(wfull), .ZN(n324) );
  INVD0BWP12T30P140 U332 ( .I(n324), .ZN(n340) );
  INVD0BWP12T30P140 U333 ( .I(waddr_bin[0]), .ZN(n355) );
  NR2D0BWP12T30P140 U334 ( .A1(n340), .A2(n355), .ZN(n368) );
  INVD0BWP12T30P140 U335 ( .I(waddr_bin[1]), .ZN(n367) );
  ND2D0BWP12T30P140 U336 ( .A1(n368), .A2(n367), .ZN(n366) );
  INVD0BWP12T30P140 U337 ( .I(waddr_bin[3]), .ZN(n339) );
  ND2D0BWP12T30P140 U338 ( .A1(waddr_bin[2]), .A2(n339), .ZN(n469) );
  NR2D0BWP12T30P140 U339 ( .A1(n366), .A2(n469), .ZN(n327) );
  INVD0BWP12T30P140 U340 ( .I(wdata[0]), .ZN(n463) );
  MAOI22D0BWP12T30P140 U341 ( .A1(n327), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[80]), .B2(n327), .ZN(n219) );
  INVD0BWP12T30P140 U342 ( .I(wdata[2]), .ZN(n462) );
  MAOI22D0BWP12T30P140 U343 ( .A1(n327), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[82]), .B2(n327), .ZN(n217) );
  INVD0BWP12T30P140 U344 ( .I(wdata[3]), .ZN(n455) );
  MAOI22D0BWP12T30P140 U345 ( .A1(n327), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[83]), .B2(n327), .ZN(n216) );
  INVD0BWP12T30P140 U346 ( .I(waddr_bin[2]), .ZN(n403) );
  ND2D0BWP12T30P140 U347 ( .A1(waddr_bin[3]), .A2(n403), .ZN(n470) );
  NR2D0BWP12T30P140 U348 ( .A1(n366), .A2(n470), .ZN(n318) );
  INVD0BWP12T30P140 U349 ( .I(wdata[7]), .ZN(n465) );
  MAOI22D0BWP12T30P140 U350 ( .A1(n318), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[55]), .B2(n318), .ZN(n244) );
  INVD0BWP12T30P140 U351 ( .I(wdata[4]), .ZN(n458) );
  MAOI22D0BWP12T30P140 U352 ( .A1(n327), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[84]), .B2(n327), .ZN(n215) );
  INVD0BWP12T30P140 U353 ( .I(wdata[5]), .ZN(n457) );
  MAOI22D0BWP12T30P140 U354 ( .A1(n327), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[85]), .B2(n327), .ZN(n214) );
  INVD0BWP12T30P140 U355 ( .I(wdata[6]), .ZN(n467) );
  MAOI22D0BWP12T30P140 U356 ( .A1(n318), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[54]), .B2(n318), .ZN(n245) );
  MAOI22D0BWP12T30P140 U357 ( .A1(n327), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[86]), .B2(n327), .ZN(n213) );
  MAOI22D0BWP12T30P140 U358 ( .A1(n327), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[87]), .B2(n327), .ZN(n212) );
  MAOI22D0BWP12T30P140 U359 ( .A1(n318), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[53]), .B2(n318), .ZN(n246) );
  ND2D0BWP12T30P140 U360 ( .A1(n403), .A2(n339), .ZN(n451) );
  NR2D0BWP12T30P140 U361 ( .A1(n366), .A2(n451), .ZN(n321) );
  MAOI22D0BWP12T30P140 U362 ( .A1(n321), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[112]), .B2(n321), .ZN(n187) );
  INVD0BWP12T30P140 U363 ( .I(wdata[1]), .ZN(n459) );
  MAOI22D0BWP12T30P140 U364 ( .A1(n321), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[113]), .B2(n321), .ZN(n186) );
  MAOI22D0BWP12T30P140 U365 ( .A1(n318), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[52]), .B2(n318), .ZN(n247) );
  MAOI22D0BWP12T30P140 U366 ( .A1(n321), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[114]), .B2(n321), .ZN(n185) );
  MAOI22D0BWP12T30P140 U367 ( .A1(n321), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[115]), .B2(n321), .ZN(n184) );
  MAOI22D0BWP12T30P140 U368 ( .A1(n318), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[51]), .B2(n318), .ZN(n248) );
  MAOI22D0BWP12T30P140 U369 ( .A1(n321), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[116]), .B2(n321), .ZN(n183) );
  MAOI22D0BWP12T30P140 U370 ( .A1(n321), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[117]), .B2(n321), .ZN(n182) );
  MAOI22D0BWP12T30P140 U371 ( .A1(n318), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[50]), .B2(n318), .ZN(n249) );
  MAOI22D0BWP12T30P140 U372 ( .A1(n321), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[118]), .B2(n321), .ZN(n181) );
  ND2D0BWP12T30P140 U373 ( .A1(waddr_bin[2]), .A2(waddr_bin[3]), .ZN(n404) );
  ND3D0BWP12T30P140 U374 ( .A1(n355), .A2(n367), .A3(n324), .ZN(n322) );
  NR2D0BWP12T30P140 U375 ( .A1(n404), .A2(n322), .ZN(n319) );
  MAOI22D0BWP12T30P140 U376 ( .A1(n319), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[24]), .B2(n319), .ZN(n275) );
  MAOI22D0BWP12T30P140 U377 ( .A1(n318), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[49]), .B2(n318), .ZN(n250) );
  MAOI22D0BWP12T30P140 U378 ( .A1(n319), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[25]), .B2(n319), .ZN(n274) );
  MAOI22D0BWP12T30P140 U379 ( .A1(n319), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[26]), .B2(n319), .ZN(n273) );
  MAOI22D0BWP12T30P140 U380 ( .A1(n318), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[48]), .B2(n318), .ZN(n251) );
  MAOI22D0BWP12T30P140 U381 ( .A1(n319), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[27]), .B2(n319), .ZN(n272) );
  MAOI22D0BWP12T30P140 U382 ( .A1(n319), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[28]), .B2(n319), .ZN(n271) );
  NR2D0BWP12T30P140 U383 ( .A1(n404), .A2(n366), .ZN(n450) );
  MAOI22D0BWP12T30P140 U384 ( .A1(n450), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[22]), .B2(n450), .ZN(n277) );
  MAOI22D0BWP12T30P140 U385 ( .A1(n319), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[29]), .B2(n319), .ZN(n270) );
  MAOI22D0BWP12T30P140 U386 ( .A1(n319), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[30]), .B2(n319), .ZN(n269) );
  MAOI22D0BWP12T30P140 U387 ( .A1(n450), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[21]), .B2(n450), .ZN(n278) );
  MAOI22D0BWP12T30P140 U388 ( .A1(n319), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[31]), .B2(n319), .ZN(n268) );
  NR2D0BWP12T30P140 U389 ( .A1(n470), .A2(n322), .ZN(n320) );
  MAOI22D0BWP12T30P140 U390 ( .A1(n320), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[56]), .B2(n320), .ZN(n243) );
  MAOI22D0BWP12T30P140 U391 ( .A1(n450), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[20]), .B2(n450), .ZN(n279) );
  MAOI22D0BWP12T30P140 U392 ( .A1(n320), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[57]), .B2(n320), .ZN(n242) );
  MAOI22D0BWP12T30P140 U393 ( .A1(n320), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[58]), .B2(n320), .ZN(n241) );
  MAOI22D0BWP12T30P140 U394 ( .A1(n450), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[19]), .B2(n450), .ZN(n280) );
  MAOI22D0BWP12T30P140 U395 ( .A1(n320), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[59]), .B2(n320), .ZN(n240) );
  MAOI22D0BWP12T30P140 U396 ( .A1(n320), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[60]), .B2(n320), .ZN(n239) );
  MAOI22D0BWP12T30P140 U397 ( .A1(n450), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[18]), .B2(n450), .ZN(n281) );
  MAOI22D0BWP12T30P140 U398 ( .A1(n320), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[61]), .B2(n320), .ZN(n238) );
  MAOI22D0BWP12T30P140 U399 ( .A1(n450), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[17]), .B2(n450), .ZN(n282) );
  MAOI22D0BWP12T30P140 U400 ( .A1(n320), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[62]), .B2(n320), .ZN(n237) );
  MAOI22D0BWP12T30P140 U401 ( .A1(n320), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[63]), .B2(n320), .ZN(n236) );
  MAOI22D0BWP12T30P140 U402 ( .A1(n450), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[16]), .B2(n450), .ZN(n283) );
  NR2D0BWP12T30P140 U403 ( .A1(n469), .A2(n322), .ZN(n461) );
  MAOI22D0BWP12T30P140 U404 ( .A1(n461), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[88]), .B2(n461), .ZN(n211) );
  MAOI22D0BWP12T30P140 U405 ( .A1(n461), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[89]), .B2(n461), .ZN(n210) );
  MAOI22D0BWP12T30P140 U406 ( .A1(n321), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[119]), .B2(n321), .ZN(n180) );
  MAOI22D0BWP12T30P140 U407 ( .A1(n461), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[90]), .B2(n461), .ZN(n209) );
  MAOI22D0BWP12T30P140 U408 ( .A1(n461), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[91]), .B2(n461), .ZN(n208) );
  ND2D0BWP12T30P140 U409 ( .A1(waddr_bin[1]), .A2(n368), .ZN(n445) );
  NR2D0BWP12T30P140 U410 ( .A1(n445), .A2(n451), .ZN(n325) );
  MAOI22D0BWP12T30P140 U411 ( .A1(n325), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[103]), .B2(n325), .ZN(n196) );
  MAOI22D0BWP12T30P140 U412 ( .A1(n461), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[92]), .B2(n461), .ZN(n207) );
  MAOI22D0BWP12T30P140 U413 ( .A1(n461), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[93]), .B2(n461), .ZN(n206) );
  MAOI22D0BWP12T30P140 U414 ( .A1(n325), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[102]), .B2(n325), .ZN(n197) );
  MAOI22D0BWP12T30P140 U415 ( .A1(n461), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[94]), .B2(n461), .ZN(n205) );
  NR2D0BWP12T30P140 U416 ( .A1(n451), .A2(n322), .ZN(n323) );
  MAOI22D0BWP12T30P140 U417 ( .A1(n323), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[120]), .B2(n323), .ZN(n179) );
  MAOI22D0BWP12T30P140 U418 ( .A1(n325), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[101]), .B2(n325), .ZN(n198) );
  MAOI22D0BWP12T30P140 U419 ( .A1(n323), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[121]), .B2(n323), .ZN(n177) );
  MAOI22D0BWP12T30P140 U420 ( .A1(n323), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[122]), .B2(n323), .ZN(n175) );
  MAOI22D0BWP12T30P140 U421 ( .A1(n325), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[100]), .B2(n325), .ZN(n199) );
  MAOI22D0BWP12T30P140 U422 ( .A1(n323), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[123]), .B2(n323), .ZN(n173) );
  MAOI22D0BWP12T30P140 U423 ( .A1(n323), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[124]), .B2(n323), .ZN(n171) );
  MAOI22D0BWP12T30P140 U424 ( .A1(n325), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[99]), .B2(n325), .ZN(n200) );
  MAOI22D0BWP12T30P140 U425 ( .A1(n323), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[125]), .B2(n323), .ZN(n169) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n323), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[126]), .B2(n323), .ZN(n167) );
  MAOI22D0BWP12T30P140 U427 ( .A1(n325), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[98]), .B2(n325), .ZN(n201) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n323), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[127]), .B2(n323), .ZN(n165) );
  ND3D0BWP12T30P140 U429 ( .A1(n355), .A2(waddr_bin[1]), .A3(n324), .ZN(n454)
         );
  NR2D0BWP12T30P140 U430 ( .A1(n404), .A2(n454), .ZN(n326) );
  MAOI22D0BWP12T30P140 U431 ( .A1(n326), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[8]), .B2(n326), .ZN(n291) );
  MAOI22D0BWP12T30P140 U432 ( .A1(n325), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[97]), .B2(n325), .ZN(n202) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n326), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[9]), .B2(n326), .ZN(n290) );
  MAOI22D0BWP12T30P140 U434 ( .A1(n326), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[10]), .B2(n326), .ZN(n289) );
  MAOI22D0BWP12T30P140 U435 ( .A1(n325), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[96]), .B2(n325), .ZN(n203) );
  MAOI22D0BWP12T30P140 U436 ( .A1(n326), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[11]), .B2(n326), .ZN(n288) );
  MAOI22D0BWP12T30P140 U437 ( .A1(n326), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[12]), .B2(n326), .ZN(n287) );
  NR2D0BWP12T30P140 U438 ( .A1(n445), .A2(n469), .ZN(n460) );
  MAOI22D0BWP12T30P140 U439 ( .A1(n460), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[71]), .B2(n460), .ZN(n228) );
  MAOI22D0BWP12T30P140 U440 ( .A1(n326), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[13]), .B2(n326), .ZN(n286) );
  MAOI22D0BWP12T30P140 U441 ( .A1(n326), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[14]), .B2(n326), .ZN(n285) );
  MAOI22D0BWP12T30P140 U442 ( .A1(n460), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[70]), .B2(n460), .ZN(n229) );
  MAOI22D0BWP12T30P140 U443 ( .A1(n326), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[15]), .B2(n326), .ZN(n284) );
  NR2D0BWP12T30P140 U444 ( .A1(n470), .A2(n454), .ZN(n456) );
  MAOI22D0BWP12T30P140 U445 ( .A1(n456), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[40]), .B2(n456), .ZN(n259) );
  MAOI22D0BWP12T30P140 U446 ( .A1(n460), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[69]), .B2(n460), .ZN(n230) );
  MAOI22D0BWP12T30P140 U447 ( .A1(n456), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[41]), .B2(n456), .ZN(n258) );
  MAOI22D0BWP12T30P140 U448 ( .A1(n456), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[42]), .B2(n456), .ZN(n257) );
  MAOI22D0BWP12T30P140 U449 ( .A1(n460), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[68]), .B2(n460), .ZN(n231) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n456), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[43]), .B2(n456), .ZN(n256) );
  MAOI22D0BWP12T30P140 U451 ( .A1(n456), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[44]), .B2(n456), .ZN(n255) );
  MAOI22D0BWP12T30P140 U452 ( .A1(n460), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[67]), .B2(n460), .ZN(n232) );
  MAOI22D0BWP12T30P140 U453 ( .A1(n456), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[45]), .B2(n456), .ZN(n254) );
  MAOI22D0BWP12T30P140 U454 ( .A1(n456), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[46]), .B2(n456), .ZN(n253) );
  MAOI22D0BWP12T30P140 U455 ( .A1(n327), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[81]), .B2(n327), .ZN(n218) );
  INVD0BWP12T30P140 U456 ( .I(rptr[3]), .ZN(n337) );
  INVD0BWP12T30P140 U457 ( .I(rptr[2]), .ZN(n330) );
  INVD0BWP12T30P140 U458 ( .I(rptr[1]), .ZN(n329) );
  OAI22D0BWP12T30P140 U459 ( .A1(n330), .A2(wptr_syn[2]), .B1(n329), .B2(
        wptr_syn[1]), .ZN(n328) );
  AOI221D0BWP12T30P140 U460 ( .A1(n330), .A2(wptr_syn[2]), .B1(wptr_syn[1]), 
        .B2(n329), .C(n328), .ZN(n335) );
  INVD0BWP12T30P140 U461 ( .I(rptr[0]), .ZN(n333) );
  INVD0BWP12T30P140 U462 ( .I(rptr[4]), .ZN(n332) );
  OAI22D0BWP12T30P140 U463 ( .A1(n333), .A2(wptr_syn[0]), .B1(n332), .B2(
        wptr_syn[4]), .ZN(n331) );
  AOI221D0BWP12T30P140 U464 ( .A1(n333), .A2(wptr_syn[0]), .B1(wptr_syn[4]), 
        .B2(n332), .C(n331), .ZN(n334) );
  OAI211D0BWP12T30P140 U465 ( .A1(n337), .A2(wptr_syn[3]), .B(n335), .C(n334), 
        .ZN(n336) );
  AOI21D0BWP12T30P140 U466 ( .A1(n337), .A2(wptr_syn[3]), .B(n336), .ZN(rempty) );
  INVD0BWP12T30P140 U467 ( .I(raddr_bin[1]), .ZN(n391) );
  IND2D1BWP12T30P140 U468 ( .A1(rempty), .B1(rinc), .ZN(n442) );
  INVD0BWP12T30P140 U469 ( .I(n442), .ZN(n446) );
  ND2D0BWP12T30P140 U470 ( .A1(n446), .A2(raddr_bin[0]), .ZN(n390) );
  NR2D0BWP12T30P140 U471 ( .A1(n391), .A2(n390), .ZN(n389) );
  INVD0BWP12T30P140 U472 ( .I(raddr_bin[2]), .ZN(n392) );
  ND2D0BWP12T30P140 U473 ( .A1(raddr_bin[0]), .A2(raddr_bin[1]), .ZN(n338) );
  NR2D0BWP12T30P140 U474 ( .A1(raddr_bin[2]), .A2(n338), .ZN(n432) );
  MOAI22D0BWP12T30P140 U475 ( .A1(n389), .A2(n392), .B1(n446), .B2(n432), .ZN(
        n307) );
  INVD0BWP12T30P140 U476 ( .I(waddr_bin[4]), .ZN(n474) );
  AOI22D0BWP12T30P140 U477 ( .A1(waddr_bin[3]), .A2(waddr_bin[4]), .B1(n474), 
        .B2(n339), .ZN(waddr_gray[3]) );
  OA21D0BWP12T30P140 U478 ( .A1(n446), .A2(raddr_bin[0]), .B(n390), .Z(n308)
         );
  AOI21D0BWP12T30P140 U479 ( .A1(n340), .A2(n355), .B(n368), .ZN(n303) );
  ND2D0BWP12T30P140 U480 ( .A1(raddr_bin[2]), .A2(n391), .ZN(n345) );
  OAI21D0BWP12T30P140 U481 ( .A1(raddr_bin[2]), .A2(n391), .B(n345), .ZN(
        raddr_gray[1]) );
  INVD0BWP12T30P140 U482 ( .I(raddr_bin[0]), .ZN(n346) );
  ND2D0BWP12T30P140 U483 ( .A1(raddr_bin[1]), .A2(n346), .ZN(n341) );
  OAI21D0BWP12T30P140 U484 ( .A1(raddr_bin[1]), .A2(n346), .B(n341), .ZN(
        raddr_gray[0]) );
  INVD0BWP12T30P140 U485 ( .I(raddr_bin[3]), .ZN(n449) );
  NR3D0BWP12T30P140 U486 ( .A1(raddr_bin[2]), .A2(raddr_bin[0]), .A3(
        raddr_bin[1]), .ZN(n430) );
  NR2D0BWP12T30P140 U487 ( .A1(raddr_bin[2]), .A2(n341), .ZN(n429) );
  AOI22D0BWP12T30P140 U488 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[63]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[47]), .ZN(n344) );
  NR3D0BWP12T30P140 U489 ( .A1(raddr_bin[2]), .A2(raddr_bin[1]), .A3(n346), 
        .ZN(n431) );
  AOI22D0BWP12T30P140 U490 ( .A1(dual_port_RAM_RAM_MEM[39]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[55]), .B2(n431), .ZN(n343) );
  NR2D0BWP12T30P140 U491 ( .A1(raddr_bin[0]), .A2(n345), .ZN(n434) );
  NR2D0BWP12T30P140 U492 ( .A1(n392), .A2(n341), .ZN(n433) );
  AOI22D0BWP12T30P140 U493 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[31]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[15]), .ZN(n342) );
  ND3D0BWP12T30P140 U494 ( .A1(n344), .A2(n343), .A3(n342), .ZN(n353) );
  NR3D0BWP12T30P140 U495 ( .A1(n392), .A2(n346), .A3(n391), .ZN(n447) );
  NR2D0BWP12T30P140 U496 ( .A1(n346), .A2(n345), .ZN(n435) );
  AO22D0BWP12T30P140 U497 ( .A1(dual_port_RAM_RAM_MEM[7]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[23]), .B2(n435), .Z(n352) );
  AOI22D0BWP12T30P140 U498 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[127]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[79]), .ZN(n350) );
  AOI22D0BWP12T30P140 U499 ( .A1(dual_port_RAM_RAM_MEM[119]), .A2(n431), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[111]), .ZN(n349) );
  AOI22D0BWP12T30P140 U500 ( .A1(dual_port_RAM_RAM_MEM[103]), .A2(n432), .B1(
        n434), .B2(dual_port_RAM_RAM_MEM[95]), .ZN(n348) );
  AOI22D0BWP12T30P140 U501 ( .A1(dual_port_RAM_RAM_MEM[71]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[87]), .B2(n435), .ZN(n347) );
  ND4D0BWP12T30P140 U502 ( .A1(n350), .A2(n349), .A3(n348), .A4(n347), .ZN(
        n351) );
  OAI32D0BWP12T30P140 U503 ( .A1(n449), .A2(n353), .A3(n352), .B1(raddr_bin[3]), .B2(n351), .ZN(n354) );
  MAOI22D0BWP12T30P140 U504 ( .A1(n446), .A2(n354), .B1(rdata[7]), .B2(n446), 
        .ZN(n164) );
  AOI22D0BWP12T30P140 U505 ( .A1(waddr_bin[1]), .A2(waddr_bin[2]), .B1(n403), 
        .B2(n367), .ZN(waddr_gray[1]) );
  AOI22D0BWP12T30P140 U506 ( .A1(waddr_bin[1]), .A2(waddr_bin[0]), .B1(n355), 
        .B2(n367), .ZN(waddr_gray[0]) );
  AOI22D0BWP12T30P140 U507 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[120]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[104]), .ZN(n359) );
  AOI22D0BWP12T30P140 U508 ( .A1(dual_port_RAM_RAM_MEM[96]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[112]), .B2(n431), .ZN(n358) );
  AOI22D0BWP12T30P140 U509 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[88]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[72]), .ZN(n357) );
  AOI22D0BWP12T30P140 U510 ( .A1(dual_port_RAM_RAM_MEM[64]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[80]), .B2(n435), .ZN(n356) );
  ND4D0BWP12T30P140 U511 ( .A1(n359), .A2(n358), .A3(n357), .A4(n356), .ZN(
        n365) );
  NR2D0BWP12T30P140 U512 ( .A1(raddr_bin[3]), .A2(n442), .ZN(n443) );
  AOI22D0BWP12T30P140 U513 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[56]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[40]), .ZN(n363) );
  AOI22D0BWP12T30P140 U514 ( .A1(dual_port_RAM_RAM_MEM[32]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[48]), .B2(n431), .ZN(n362) );
  AOI22D0BWP12T30P140 U515 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[24]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[8]), .ZN(n361) );
  AOI22D0BWP12T30P140 U516 ( .A1(dual_port_RAM_RAM_MEM[0]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[16]), .B2(n435), .ZN(n360) );
  ND4D0BWP12T30P140 U517 ( .A1(n363), .A2(n362), .A3(n361), .A4(n360), .ZN(
        n364) );
  NR2D0BWP12T30P140 U518 ( .A1(n442), .A2(n449), .ZN(n440) );
  AO222D0BWP12T30P140 U519 ( .A1(n365), .A2(n443), .B1(n442), .B2(rdata[0]), 
        .C1(n364), .C2(n440), .Z(n178) );
  OAI21D0BWP12T30P140 U520 ( .A1(n368), .A2(n367), .B(n366), .ZN(n304) );
  AOI22D0BWP12T30P140 U521 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[121]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[105]), .ZN(n372) );
  AOI22D0BWP12T30P140 U522 ( .A1(dual_port_RAM_RAM_MEM[97]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[113]), .B2(n431), .ZN(n371) );
  AOI22D0BWP12T30P140 U523 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[89]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[73]), .ZN(n370) );
  AOI22D0BWP12T30P140 U524 ( .A1(dual_port_RAM_RAM_MEM[65]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[81]), .B2(n435), .ZN(n369) );
  ND4D0BWP12T30P140 U525 ( .A1(n372), .A2(n371), .A3(n370), .A4(n369), .ZN(
        n378) );
  AOI22D0BWP12T30P140 U526 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[57]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[41]), .ZN(n376) );
  AOI22D0BWP12T30P140 U527 ( .A1(dual_port_RAM_RAM_MEM[33]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[49]), .B2(n431), .ZN(n375) );
  AOI22D0BWP12T30P140 U528 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[25]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[9]), .ZN(n374) );
  AOI22D0BWP12T30P140 U529 ( .A1(dual_port_RAM_RAM_MEM[1]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[17]), .B2(n435), .ZN(n373) );
  ND4D0BWP12T30P140 U530 ( .A1(n376), .A2(n375), .A3(n374), .A4(n373), .ZN(
        n377) );
  AO222D0BWP12T30P140 U531 ( .A1(n378), .A2(n443), .B1(n442), .B2(rdata[1]), 
        .C1(n377), .C2(n440), .Z(n176) );
  AOI22D0BWP12T30P140 U532 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[122]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[106]), .ZN(n382) );
  AOI22D0BWP12T30P140 U533 ( .A1(dual_port_RAM_RAM_MEM[98]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[114]), .B2(n431), .ZN(n381) );
  AOI22D0BWP12T30P140 U534 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[90]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[74]), .ZN(n380) );
  AOI22D0BWP12T30P140 U535 ( .A1(dual_port_RAM_RAM_MEM[66]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[82]), .B2(n435), .ZN(n379) );
  ND4D0BWP12T30P140 U536 ( .A1(n382), .A2(n381), .A3(n380), .A4(n379), .ZN(
        n388) );
  AOI22D0BWP12T30P140 U537 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[58]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[42]), .ZN(n386) );
  AOI22D0BWP12T30P140 U538 ( .A1(dual_port_RAM_RAM_MEM[34]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[50]), .B2(n431), .ZN(n385) );
  AOI22D0BWP12T30P140 U539 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[26]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[10]), .ZN(n384) );
  AOI22D0BWP12T30P140 U540 ( .A1(dual_port_RAM_RAM_MEM[2]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[18]), .B2(n435), .ZN(n383) );
  ND4D0BWP12T30P140 U541 ( .A1(n386), .A2(n385), .A3(n384), .A4(n383), .ZN(
        n387) );
  AO222D0BWP12T30P140 U542 ( .A1(n388), .A2(n443), .B1(n442), .B2(rdata[2]), 
        .C1(n387), .C2(n440), .Z(n174) );
  AOI21D0BWP12T30P140 U543 ( .A1(n391), .A2(n390), .B(n389), .ZN(n309) );
  INVD0BWP12T30P140 U544 ( .I(raddr_bin[4]), .ZN(n472) );
  AOI22D0BWP12T30P140 U545 ( .A1(raddr_bin[3]), .A2(raddr_bin[4]), .B1(n472), 
        .B2(n449), .ZN(raddr_gray[3]) );
  AOI22D0BWP12T30P140 U546 ( .A1(raddr_bin[2]), .A2(raddr_bin[3]), .B1(n449), 
        .B2(n392), .ZN(raddr_gray[2]) );
  AOI22D0BWP12T30P140 U547 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[123]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[107]), .ZN(n396) );
  AOI22D0BWP12T30P140 U548 ( .A1(dual_port_RAM_RAM_MEM[99]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[115]), .B2(n431), .ZN(n395) );
  AOI22D0BWP12T30P140 U549 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[91]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[75]), .ZN(n394) );
  AOI22D0BWP12T30P140 U550 ( .A1(dual_port_RAM_RAM_MEM[67]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[83]), .B2(n435), .ZN(n393) );
  ND4D0BWP12T30P140 U551 ( .A1(n396), .A2(n395), .A3(n394), .A4(n393), .ZN(
        n402) );
  AOI22D0BWP12T30P140 U552 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[59]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[43]), .ZN(n400) );
  AOI22D0BWP12T30P140 U553 ( .A1(dual_port_RAM_RAM_MEM[35]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[51]), .B2(n431), .ZN(n399) );
  AOI22D0BWP12T30P140 U554 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[27]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[11]), .ZN(n398) );
  AOI22D0BWP12T30P140 U555 ( .A1(dual_port_RAM_RAM_MEM[3]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[19]), .B2(n435), .ZN(n397) );
  ND4D0BWP12T30P140 U556 ( .A1(n400), .A2(n399), .A3(n398), .A4(n397), .ZN(
        n401) );
  AO222D0BWP12T30P140 U557 ( .A1(n402), .A2(n443), .B1(n442), .B2(rdata[3]), 
        .C1(n401), .C2(n440), .Z(n172) );
  NR2D0BWP12T30P140 U558 ( .A1(n403), .A2(n445), .ZN(n453) );
  AOI21D0BWP12T30P140 U559 ( .A1(n445), .A2(n403), .B(n453), .ZN(n302) );
  NR2D0BWP12T30P140 U560 ( .A1(n445), .A2(n404), .ZN(n452) );
  MAOI22D0BWP12T30P140 U561 ( .A1(n452), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[7]), .B2(n452), .ZN(n292) );
  AOI22D0BWP12T30P140 U562 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[124]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[108]), .ZN(n408) );
  AOI22D0BWP12T30P140 U563 ( .A1(dual_port_RAM_RAM_MEM[100]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[116]), .B2(n431), .ZN(n407) );
  AOI22D0BWP12T30P140 U564 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[92]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[76]), .ZN(n406) );
  AOI22D0BWP12T30P140 U565 ( .A1(dual_port_RAM_RAM_MEM[68]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[84]), .B2(n435), .ZN(n405) );
  ND4D0BWP12T30P140 U566 ( .A1(n408), .A2(n407), .A3(n406), .A4(n405), .ZN(
        n414) );
  AOI22D0BWP12T30P140 U567 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[60]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[44]), .ZN(n412) );
  AOI22D0BWP12T30P140 U568 ( .A1(dual_port_RAM_RAM_MEM[36]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[52]), .B2(n431), .ZN(n411) );
  AOI22D0BWP12T30P140 U569 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[28]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[12]), .ZN(n410) );
  AOI22D0BWP12T30P140 U570 ( .A1(dual_port_RAM_RAM_MEM[4]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[20]), .B2(n435), .ZN(n409) );
  ND4D0BWP12T30P140 U571 ( .A1(n412), .A2(n411), .A3(n410), .A4(n409), .ZN(
        n413) );
  AO222D0BWP12T30P140 U572 ( .A1(n414), .A2(n443), .B1(n442), .B2(rdata[4]), 
        .C1(n413), .C2(n440), .Z(n170) );
  MAOI22D0BWP12T30P140 U573 ( .A1(n452), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[6]), .B2(n452), .ZN(n293) );
  MAOI22D0BWP12T30P140 U574 ( .A1(n452), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[5]), .B2(n452), .ZN(n294) );
  AOI22D0BWP12T30P140 U575 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[125]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[109]), .ZN(n418) );
  AOI22D0BWP12T30P140 U576 ( .A1(dual_port_RAM_RAM_MEM[101]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[117]), .B2(n431), .ZN(n417) );
  AOI22D0BWP12T30P140 U577 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[93]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[77]), .ZN(n416) );
  AOI22D0BWP12T30P140 U578 ( .A1(dual_port_RAM_RAM_MEM[69]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[85]), .B2(n435), .ZN(n415) );
  ND4D0BWP12T30P140 U579 ( .A1(n418), .A2(n417), .A3(n416), .A4(n415), .ZN(
        n424) );
  AOI22D0BWP12T30P140 U580 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[61]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[45]), .ZN(n422) );
  AOI22D0BWP12T30P140 U581 ( .A1(dual_port_RAM_RAM_MEM[37]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[53]), .B2(n431), .ZN(n421) );
  AOI22D0BWP12T30P140 U582 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[29]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[13]), .ZN(n420) );
  AOI22D0BWP12T30P140 U583 ( .A1(dual_port_RAM_RAM_MEM[5]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[21]), .B2(n435), .ZN(n419) );
  ND4D0BWP12T30P140 U584 ( .A1(n422), .A2(n421), .A3(n420), .A4(n419), .ZN(
        n423) );
  AO222D0BWP12T30P140 U585 ( .A1(n424), .A2(n443), .B1(n442), .B2(rdata[5]), 
        .C1(n423), .C2(n440), .Z(n168) );
  MAOI22D0BWP12T30P140 U586 ( .A1(n452), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[4]), .B2(n452), .ZN(n295) );
  MAOI22D0BWP12T30P140 U587 ( .A1(n452), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[3]), .B2(n452), .ZN(n296) );
  AOI22D0BWP12T30P140 U588 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[126]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[110]), .ZN(n428) );
  AOI22D0BWP12T30P140 U589 ( .A1(dual_port_RAM_RAM_MEM[102]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[118]), .B2(n431), .ZN(n427) );
  AOI22D0BWP12T30P140 U590 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[94]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[78]), .ZN(n426) );
  AOI22D0BWP12T30P140 U591 ( .A1(dual_port_RAM_RAM_MEM[70]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[86]), .B2(n435), .ZN(n425) );
  ND4D0BWP12T30P140 U592 ( .A1(n428), .A2(n427), .A3(n426), .A4(n425), .ZN(
        n444) );
  AOI22D0BWP12T30P140 U593 ( .A1(n430), .A2(dual_port_RAM_RAM_MEM[62]), .B1(
        n429), .B2(dual_port_RAM_RAM_MEM[46]), .ZN(n439) );
  AOI22D0BWP12T30P140 U594 ( .A1(dual_port_RAM_RAM_MEM[38]), .A2(n432), .B1(
        dual_port_RAM_RAM_MEM[54]), .B2(n431), .ZN(n438) );
  AOI22D0BWP12T30P140 U595 ( .A1(n434), .A2(dual_port_RAM_RAM_MEM[30]), .B1(
        n433), .B2(dual_port_RAM_RAM_MEM[14]), .ZN(n437) );
  AOI22D0BWP12T30P140 U596 ( .A1(dual_port_RAM_RAM_MEM[6]), .A2(n447), .B1(
        dual_port_RAM_RAM_MEM[22]), .B2(n435), .ZN(n436) );
  ND4D0BWP12T30P140 U597 ( .A1(n439), .A2(n438), .A3(n437), .A4(n436), .ZN(
        n441) );
  AO222D0BWP12T30P140 U598 ( .A1(n444), .A2(n443), .B1(n442), .B2(rdata[6]), 
        .C1(n441), .C2(n440), .Z(n166) );
  MAOI22D0BWP12T30P140 U599 ( .A1(n452), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[2]), .B2(n452), .ZN(n297) );
  MAOI22D0BWP12T30P140 U600 ( .A1(n452), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[1]), .B2(n452), .ZN(n298) );
  NR2D0BWP12T30P140 U601 ( .A1(n445), .A2(n470), .ZN(n466) );
  MAOI22D0BWP12T30P140 U602 ( .A1(n466), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[32]), .B2(n466), .ZN(n267) );
  MAOI22D0BWP12T30P140 U603 ( .A1(n452), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[0]), .B2(n452), .ZN(n299) );
  ND2D0BWP12T30P140 U604 ( .A1(n446), .A2(n447), .ZN(n448) );
  AN3D0BWP12T30P140 U605 ( .A1(n447), .A2(n446), .A3(raddr_bin[3]), .Z(n471)
         );
  AOI21D0BWP12T30P140 U606 ( .A1(n449), .A2(n448), .B(n471), .ZN(n306) );
  MAOI22D0BWP12T30P140 U607 ( .A1(n450), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[23]), .B2(n450), .ZN(n276) );
  MAOI22D0BWP12T30P140 U608 ( .A1(n466), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[33]), .B2(n466), .ZN(n266) );
  NR2D0BWP12T30P140 U609 ( .A1(n451), .A2(n454), .ZN(n464) );
  MAOI22D0BWP12T30P140 U610 ( .A1(n464), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[111]), .B2(n464), .ZN(n188) );
  MAOI22D0BWP12T30P140 U611 ( .A1(n464), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[110]), .B2(n464), .ZN(n189) );
  MAOI22D0BWP12T30P140 U612 ( .A1(n466), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[34]), .B2(n466), .ZN(n265) );
  MAOI22D0BWP12T30P140 U613 ( .A1(n464), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[109]), .B2(n464), .ZN(n190) );
  INVD0BWP12T30P140 U614 ( .I(n452), .ZN(n473) );
  OA21D0BWP12T30P140 U615 ( .A1(waddr_bin[3]), .A2(n453), .B(n473), .Z(n301)
         );
  NR2D0BWP12T30P140 U616 ( .A1(n469), .A2(n454), .ZN(n468) );
  MAOI22D0BWP12T30P140 U617 ( .A1(n468), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[75]), .B2(n468), .ZN(n224) );
  MAOI22D0BWP12T30P140 U618 ( .A1(n464), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[105]), .B2(n464), .ZN(n194) );
  MAOI22D0BWP12T30P140 U619 ( .A1(n464), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[108]), .B2(n464), .ZN(n191) );
  MAOI22D0BWP12T30P140 U620 ( .A1(n468), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[77]), .B2(n468), .ZN(n222) );
  MAOI22D0BWP12T30P140 U621 ( .A1(n466), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[35]), .B2(n466), .ZN(n264) );
  MAOI22D0BWP12T30P140 U622 ( .A1(n460), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[66]), .B2(n460), .ZN(n233) );
  MAOI22D0BWP12T30P140 U623 ( .A1(n464), .A2(n455), .B1(
        dual_port_RAM_RAM_MEM[107]), .B2(n464), .ZN(n192) );
  MAOI22D0BWP12T30P140 U624 ( .A1(n456), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[47]), .B2(n456), .ZN(n252) );
  MAOI22D0BWP12T30P140 U625 ( .A1(n466), .A2(n457), .B1(
        dual_port_RAM_RAM_MEM[37]), .B2(n466), .ZN(n262) );
  MAOI22D0BWP12T30P140 U626 ( .A1(n468), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[76]), .B2(n468), .ZN(n223) );
  MAOI22D0BWP12T30P140 U627 ( .A1(n468), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[73]), .B2(n468), .ZN(n226) );
  MAOI22D0BWP12T30P140 U628 ( .A1(n466), .A2(n458), .B1(
        dual_port_RAM_RAM_MEM[36]), .B2(n466), .ZN(n263) );
  MAOI22D0BWP12T30P140 U629 ( .A1(n464), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[106]), .B2(n464), .ZN(n193) );
  MAOI22D0BWP12T30P140 U630 ( .A1(n468), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[79]), .B2(n468), .ZN(n220) );
  MAOI22D0BWP12T30P140 U631 ( .A1(n468), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[72]), .B2(n468), .ZN(n227) );
  MAOI22D0BWP12T30P140 U632 ( .A1(n460), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[64]), .B2(n460), .ZN(n235) );
  MAOI22D0BWP12T30P140 U633 ( .A1(n466), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[38]), .B2(n466), .ZN(n261) );
  MAOI22D0BWP12T30P140 U634 ( .A1(n460), .A2(n459), .B1(
        dual_port_RAM_RAM_MEM[65]), .B2(n460), .ZN(n234) );
  MAOI22D0BWP12T30P140 U635 ( .A1(n461), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[95]), .B2(n461), .ZN(n204) );
  MAOI22D0BWP12T30P140 U636 ( .A1(n468), .A2(n462), .B1(
        dual_port_RAM_RAM_MEM[74]), .B2(n468), .ZN(n225) );
  MAOI22D0BWP12T30P140 U637 ( .A1(n464), .A2(n463), .B1(
        dual_port_RAM_RAM_MEM[104]), .B2(n464), .ZN(n195) );
  MAOI22D0BWP12T30P140 U638 ( .A1(n466), .A2(n465), .B1(
        dual_port_RAM_RAM_MEM[39]), .B2(n466), .ZN(n260) );
  MAOI22D0BWP12T30P140 U639 ( .A1(n468), .A2(n467), .B1(
        dual_port_RAM_RAM_MEM[78]), .B2(n468), .ZN(n221) );
  CKBD0BWP12T30P140 U640 ( .I(rclk), .Z(n475) );
  CKBD0BWP12T30P140 U641 ( .I(wclk), .Z(n482) );
  CKBD0BWP12T30P140 U642 ( .I(wclk), .Z(n478) );
  CKBD0BWP12T30P140 U643 ( .I(wclk), .Z(n479) );
  CKBD0BWP12T30P140 U644 ( .I(wclk), .Z(n481) );
  CKBD0BWP12T30P140 U645 ( .I(wclk), .Z(n476) );
  CKBD0BWP12T30P140 U646 ( .I(wclk), .Z(n480) );
  CKBD0BWP12T30P140 U647 ( .I(wclk), .Z(n477) );
  ND2D0BWP12T30P140 U648 ( .A1(n470), .A2(n469), .ZN(waddr_gray[2]) );
  MUX2ND0BWP12T30P140 U649 ( .I0(n472), .I1(raddr_bin[4]), .S(n471), .ZN(n305)
         );
  MUX2ND0BWP12T30P140 U650 ( .I0(waddr_bin[4]), .I1(n474), .S(n473), .ZN(n300)
         );
endmodule

