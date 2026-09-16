/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:51:43 2026
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
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645;
  wire   [3:0] waddr;
  wire   [4:0] wcnt;
  wire   [127:0] mem;
  wire   [3:0] raddr;
  wire   [4:0] rcnt;
  wire   [4:0] rcnt_sync2_w;
  wire   [4:0] rcnt_sync1_w;
  wire   [4:0] wcnt_sync2_r;
  wire   [4:0] wcnt_sync1_r;

  DFCNQD1BWP12T30P140 wcnt_sync2_r_reg_3_ ( .D(wcnt_sync1_r[3]), .CP(rclk), 
        .CDN(rrstn), .Q(wcnt_sync2_r[3]) );
  DFCNQD1BWP12T30P140 wcnt_sync2_r_reg_4_ ( .D(wcnt_sync1_r[4]), .CP(rclk), 
        .CDN(rrstn), .Q(wcnt_sync2_r[4]) );
  DFCNQD1BWP12T30P140 wcnt_sync2_r_reg_2_ ( .D(wcnt_sync1_r[2]), .CP(rclk), 
        .CDN(rrstn), .Q(wcnt_sync2_r[2]) );
  DFCNQD1BWP12T30P140 wcnt_sync2_r_reg_1_ ( .D(wcnt_sync1_r[1]), .CP(rclk), 
        .CDN(rrstn), .Q(wcnt_sync2_r[1]) );
  DFCNQD1BWP12T30P140 wcnt_sync2_r_reg_0_ ( .D(wcnt_sync1_r[0]), .CP(rclk), 
        .CDN(rrstn), .Q(wcnt_sync2_r[0]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_0_ ( .D(n168), .CP(n638), .CDN(n637), .Q(
        rdata[0]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_7_ ( .D(n167), .CP(n638), .CDN(n637), .Q(
        rdata[7]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_6_ ( .D(n166), .CP(n638), .CDN(n637), .Q(
        rdata[6]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_5_ ( .D(n165), .CP(n638), .CDN(n637), .Q(
        rdata[5]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_4_ ( .D(n164), .CP(n638), .CDN(n637), .Q(
        rdata[4]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_3_ ( .D(n163), .CP(n638), .CDN(n637), .Q(
        rdata[3]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_2_ ( .D(n162), .CP(n638), .CDN(n637), .Q(
        rdata[2]) );
  DFCNQD1BWP12T30P140 rdata_reg_reg_1_ ( .D(n161), .CP(n638), .CDN(rrstn), .Q(
        rdata[1]) );
  DFCNQD1BWP12T30P140 rcnt_sync2_w_reg_4_ ( .D(rcnt_sync1_w[4]), .CP(n639), 
        .CDN(n317), .Q(rcnt_sync2_w[4]) );
  DFCNQD1BWP12T30P140 waddr_reg_0_ ( .D(n309), .CP(n645), .CDN(wrstn), .Q(
        waddr[0]) );
  DFCNQD1BWP12T30P140 rcnt_sync2_w_reg_2_ ( .D(rcnt_sync1_w[2]), .CP(n645), 
        .CDN(n317), .Q(rcnt_sync2_w[2]) );
  DFCNQD1BWP12T30P140 rcnt_sync2_w_reg_0_ ( .D(rcnt_sync1_w[0]), .CP(n645), 
        .CDN(wrstn), .Q(rcnt_sync2_w[0]) );
  DFCNQD1BWP12T30P140 rcnt_sync2_w_reg_1_ ( .D(rcnt_sync1_w[1]), .CP(n645), 
        .CDN(n317), .Q(rcnt_sync2_w[1]) );
  DFCNQD1BWP12T30P140 rcnt_sync2_w_reg_3_ ( .D(rcnt_sync1_w[3]), .CP(n644), 
        .CDN(wrstn), .Q(rcnt_sync2_w[3]) );
  DFQD2BWP12T30P140 mem_reg_15__1_ ( .D(n300), .CP(n639), .Q(mem[1]) );
  DFQD2BWP12T30P140 mem_reg_15__2_ ( .D(n299), .CP(n639), .Q(mem[2]) );
  DFQD2BWP12T30P140 mem_reg_15__3_ ( .D(n298), .CP(n639), .Q(mem[3]) );
  DFQD2BWP12T30P140 mem_reg_15__4_ ( .D(n297), .CP(n639), .Q(mem[4]) );
  DFQD2BWP12T30P140 mem_reg_15__5_ ( .D(n296), .CP(n639), .Q(mem[5]) );
  DFQD2BWP12T30P140 mem_reg_15__6_ ( .D(n295), .CP(n639), .Q(mem[6]) );
  DFQD2BWP12T30P140 mem_reg_15__7_ ( .D(n294), .CP(n639), .Q(mem[7]) );
  DFQD2BWP12T30P140 mem_reg_15__0_ ( .D(n293), .CP(n639), .Q(mem[0]) );
  DFQD2BWP12T30P140 mem_reg_11__0_ ( .D(n268), .CP(n639), .Q(mem[32]) );
  DFQD2BWP12T30P140 mem_reg_11__1_ ( .D(n267), .CP(n639), .Q(mem[33]) );
  DFQD2BWP12T30P140 mem_reg_11__3_ ( .D(n265), .CP(n639), .Q(mem[35]) );
  DFQD2BWP12T30P140 mem_reg_11__4_ ( .D(n264), .CP(n640), .Q(mem[36]) );
  DFQD2BWP12T30P140 mem_reg_11__5_ ( .D(n263), .CP(n640), .Q(mem[37]) );
  DFQD2BWP12T30P140 mem_reg_11__6_ ( .D(n262), .CP(n640), .Q(mem[38]) );
  DFQD2BWP12T30P140 mem_reg_11__7_ ( .D(n261), .CP(n640), .Q(mem[39]) );
  DFQD2BWP12T30P140 mem_reg_7__0_ ( .D(n236), .CP(n640), .Q(mem[64]) );
  DFQD2BWP12T30P140 mem_reg_7__1_ ( .D(n235), .CP(n640), .Q(mem[65]) );
  DFQD2BWP12T30P140 mem_reg_7__2_ ( .D(n234), .CP(n640), .Q(mem[66]) );
  DFQD2BWP12T30P140 mem_reg_7__3_ ( .D(n233), .CP(n639), .Q(mem[67]) );
  DFQD2BWP12T30P140 mem_reg_7__4_ ( .D(n232), .CP(n640), .Q(mem[68]) );
  DFQD2BWP12T30P140 mem_reg_7__5_ ( .D(n231), .CP(n640), .Q(mem[69]) );
  DFQD2BWP12T30P140 mem_reg_7__6_ ( .D(n230), .CP(n640), .Q(mem[70]) );
  DFQD2BWP12T30P140 mem_reg_7__7_ ( .D(n229), .CP(n640), .Q(mem[71]) );
  DFQD2BWP12T30P140 mem_reg_3__0_ ( .D(n204), .CP(n640), .Q(mem[96]) );
  DFQD2BWP12T30P140 mem_reg_3__2_ ( .D(n202), .CP(n641), .Q(mem[98]) );
  DFQD2BWP12T30P140 mem_reg_3__3_ ( .D(n201), .CP(n641), .Q(mem[99]) );
  DFQD2BWP12T30P140 mem_reg_3__4_ ( .D(n200), .CP(n641), .Q(mem[100]) );
  DFQD2BWP12T30P140 mem_reg_3__5_ ( .D(n199), .CP(n641), .Q(mem[101]) );
  DFQD2BWP12T30P140 mem_reg_3__6_ ( .D(n198), .CP(n641), .Q(mem[102]) );
  DFQD2BWP12T30P140 mem_reg_3__7_ ( .D(n197), .CP(n641), .Q(mem[103]) );
  DFQD2BWP12T30P140 mem_reg_13__0_ ( .D(n284), .CP(n641), .Q(mem[16]) );
  DFQD2BWP12T30P140 mem_reg_13__1_ ( .D(n283), .CP(n641), .Q(mem[17]) );
  DFQD2BWP12T30P140 mem_reg_13__2_ ( .D(n282), .CP(n641), .Q(mem[18]) );
  DFQD2BWP12T30P140 mem_reg_13__3_ ( .D(n281), .CP(n641), .Q(mem[19]) );
  DFQD2BWP12T30P140 mem_reg_13__4_ ( .D(n280), .CP(n641), .Q(mem[20]) );
  DFQD2BWP12T30P140 mem_reg_13__5_ ( .D(n279), .CP(n642), .Q(mem[21]) );
  DFQD2BWP12T30P140 mem_reg_13__6_ ( .D(n278), .CP(n642), .Q(mem[22]) );
  DFQD2BWP12T30P140 mem_reg_13__7_ ( .D(n277), .CP(n642), .Q(mem[23]) );
  DFQD2BWP12T30P140 mem_reg_9__1_ ( .D(n251), .CP(n642), .Q(mem[49]) );
  DFQD2BWP12T30P140 mem_reg_9__2_ ( .D(n250), .CP(n642), .Q(mem[50]) );
  DFQD2BWP12T30P140 mem_reg_9__3_ ( .D(n249), .CP(n642), .Q(mem[51]) );
  DFQD2BWP12T30P140 mem_reg_9__4_ ( .D(n248), .CP(n642), .Q(mem[52]) );
  DFQD2BWP12T30P140 mem_reg_9__5_ ( .D(n247), .CP(n642), .Q(mem[53]) );
  DFQD2BWP12T30P140 mem_reg_9__6_ ( .D(n246), .CP(n642), .Q(mem[54]) );
  DFQD2BWP12T30P140 mem_reg_9__7_ ( .D(n245), .CP(n642), .Q(mem[55]) );
  DFQD2BWP12T30P140 mem_reg_5__0_ ( .D(n220), .CP(n642), .Q(mem[80]) );
  DFQD2BWP12T30P140 mem_reg_5__1_ ( .D(n219), .CP(n643), .Q(mem[81]) );
  DFQD2BWP12T30P140 mem_reg_5__2_ ( .D(n218), .CP(n643), .Q(mem[82]) );
  DFQD2BWP12T30P140 mem_reg_5__3_ ( .D(n217), .CP(n643), .Q(mem[83]) );
  DFQD2BWP12T30P140 mem_reg_5__4_ ( .D(n216), .CP(n643), .Q(mem[84]) );
  DFQD2BWP12T30P140 mem_reg_5__5_ ( .D(n215), .CP(n643), .Q(mem[85]) );
  DFQD2BWP12T30P140 mem_reg_5__6_ ( .D(n214), .CP(n643), .Q(mem[86]) );
  DFQD2BWP12T30P140 mem_reg_1__0_ ( .D(n188), .CP(n643), .Q(mem[112]) );
  DFQD2BWP12T30P140 mem_reg_1__1_ ( .D(n187), .CP(n643), .Q(mem[113]) );
  DFQD2BWP12T30P140 mem_reg_1__2_ ( .D(n186), .CP(n643), .Q(mem[114]) );
  DFQD2BWP12T30P140 mem_reg_1__3_ ( .D(n185), .CP(n643), .Q(mem[115]) );
  DFQD2BWP12T30P140 mem_reg_1__4_ ( .D(n184), .CP(n643), .Q(mem[116]) );
  DFQD2BWP12T30P140 mem_reg_1__5_ ( .D(n183), .CP(n645), .Q(mem[117]) );
  DFQD2BWP12T30P140 mem_reg_1__6_ ( .D(n182), .CP(n645), .Q(mem[118]) );
  DFQD2BWP12T30P140 mem_reg_1__7_ ( .D(n181), .CP(n642), .Q(mem[119]) );
  DFQD2BWP12T30P140 mem_reg_14__0_ ( .D(n292), .CP(n643), .Q(mem[8]) );
  DFQD2BWP12T30P140 mem_reg_14__1_ ( .D(n291), .CP(n643), .Q(mem[9]) );
  DFQD2BWP12T30P140 mem_reg_14__2_ ( .D(n290), .CP(wclk), .Q(mem[10]) );
  DFQD2BWP12T30P140 mem_reg_14__3_ ( .D(n289), .CP(n644), .Q(mem[11]) );
  DFQD2BWP12T30P140 mem_reg_14__4_ ( .D(n288), .CP(n644), .Q(mem[12]) );
  DFQD2BWP12T30P140 mem_reg_14__5_ ( .D(n287), .CP(n640), .Q(mem[13]) );
  DFQD2BWP12T30P140 mem_reg_14__7_ ( .D(n285), .CP(n639), .Q(mem[15]) );
  DFQD2BWP12T30P140 mem_reg_10__0_ ( .D(n260), .CP(n640), .Q(mem[40]) );
  DFQD2BWP12T30P140 mem_reg_10__1_ ( .D(n259), .CP(n642), .Q(mem[41]) );
  DFQD2BWP12T30P140 mem_reg_10__2_ ( .D(n258), .CP(n644), .Q(mem[42]) );
  DFQD2BWP12T30P140 mem_reg_10__3_ ( .D(n257), .CP(wclk), .Q(mem[43]) );
  DFQD2BWP12T30P140 mem_reg_10__4_ ( .D(n256), .CP(n645), .Q(mem[44]) );
  DFQD2BWP12T30P140 mem_reg_10__5_ ( .D(n255), .CP(n640), .Q(mem[45]) );
  DFQD2BWP12T30P140 mem_reg_10__6_ ( .D(n254), .CP(n641), .Q(mem[46]) );
  DFQD2BWP12T30P140 mem_reg_10__7_ ( .D(n253), .CP(n642), .Q(mem[47]) );
  DFQD2BWP12T30P140 mem_reg_6__0_ ( .D(n228), .CP(n643), .Q(mem[72]) );
  DFQD2BWP12T30P140 mem_reg_6__1_ ( .D(n227), .CP(n641), .Q(mem[73]) );
  DFQD2BWP12T30P140 mem_reg_6__2_ ( .D(n226), .CP(n643), .Q(mem[74]) );
  DFQD2BWP12T30P140 mem_reg_6__3_ ( .D(n225), .CP(n644), .Q(mem[75]) );
  DFQD2BWP12T30P140 mem_reg_6__4_ ( .D(n224), .CP(n644), .Q(mem[76]) );
  DFQD2BWP12T30P140 mem_reg_6__6_ ( .D(n222), .CP(n642), .Q(mem[78]) );
  DFQD2BWP12T30P140 mem_reg_6__7_ ( .D(n221), .CP(n643), .Q(mem[79]) );
  DFQD2BWP12T30P140 mem_reg_2__0_ ( .D(n196), .CP(n645), .Q(mem[104]) );
  DFQD2BWP12T30P140 mem_reg_2__1_ ( .D(n195), .CP(n640), .Q(mem[105]) );
  DFQD2BWP12T30P140 mem_reg_2__2_ ( .D(n194), .CP(n645), .Q(mem[106]) );
  DFQD2BWP12T30P140 mem_reg_2__3_ ( .D(n193), .CP(wclk), .Q(mem[107]) );
  DFQD2BWP12T30P140 mem_reg_2__4_ ( .D(n192), .CP(n640), .Q(mem[108]) );
  DFQD2BWP12T30P140 mem_reg_2__5_ ( .D(n191), .CP(n641), .Q(mem[109]) );
  DFQD2BWP12T30P140 mem_reg_2__6_ ( .D(n190), .CP(n639), .Q(mem[110]) );
  DFQD2BWP12T30P140 mem_reg_2__7_ ( .D(n189), .CP(n642), .Q(mem[111]) );
  DFQD2BWP12T30P140 mem_reg_12__5_ ( .D(n276), .CP(n640), .Q(mem[29]) );
  DFQD2BWP12T30P140 mem_reg_12__6_ ( .D(n275), .CP(n641), .Q(mem[30]) );
  DFQD2BWP12T30P140 mem_reg_12__7_ ( .D(n274), .CP(n639), .Q(mem[31]) );
  DFQD2BWP12T30P140 mem_reg_12__0_ ( .D(n273), .CP(n644), .Q(mem[24]) );
  DFQD2BWP12T30P140 mem_reg_12__2_ ( .D(n271), .CP(n643), .Q(mem[26]) );
  DFQD2BWP12T30P140 mem_reg_12__3_ ( .D(n270), .CP(n645), .Q(mem[27]) );
  DFQD2BWP12T30P140 mem_reg_12__4_ ( .D(n269), .CP(wclk), .Q(mem[28]) );
  DFQD2BWP12T30P140 mem_reg_8__0_ ( .D(n244), .CP(n640), .Q(mem[56]) );
  DFQD2BWP12T30P140 mem_reg_8__1_ ( .D(n243), .CP(n641), .Q(mem[57]) );
  DFQD2BWP12T30P140 mem_reg_8__2_ ( .D(n242), .CP(wclk), .Q(mem[58]) );
  DFQD2BWP12T30P140 mem_reg_8__3_ ( .D(n241), .CP(wclk), .Q(mem[59]) );
  DFQD2BWP12T30P140 mem_reg_8__4_ ( .D(n240), .CP(n644), .Q(mem[60]) );
  DFQD2BWP12T30P140 mem_reg_8__5_ ( .D(n239), .CP(n644), .Q(mem[61]) );
  DFQD2BWP12T30P140 mem_reg_8__6_ ( .D(n238), .CP(n644), .Q(mem[62]) );
  DFQD2BWP12T30P140 mem_reg_8__7_ ( .D(n237), .CP(n644), .Q(mem[63]) );
  DFQD2BWP12T30P140 mem_reg_4__0_ ( .D(n212), .CP(n644), .Q(mem[88]) );
  DFQD2BWP12T30P140 mem_reg_4__1_ ( .D(n211), .CP(n644), .Q(mem[89]) );
  DFQD2BWP12T30P140 mem_reg_4__2_ ( .D(n210), .CP(n644), .Q(mem[90]) );
  DFQD2BWP12T30P140 mem_reg_4__4_ ( .D(n208), .CP(n644), .Q(mem[92]) );
  DFQD2BWP12T30P140 mem_reg_4__5_ ( .D(n207), .CP(n644), .Q(mem[93]) );
  DFQD2BWP12T30P140 mem_reg_4__6_ ( .D(n206), .CP(n644), .Q(mem[94]) );
  DFQD2BWP12T30P140 mem_reg_0__2_ ( .D(n178), .CP(n644), .Q(mem[122]) );
  DFCNQD1BWP12T30P140 raddr_reg_3_ ( .D(n169), .CP(n638), .CDN(n637), .Q(
        raddr[3]) );
  DFQD2BWP12T30P140 mem_reg_4__7_ ( .D(n205), .CP(n641), .Q(mem[95]) );
  DFQD2BWP12T30P140 mem_reg_0__0_ ( .D(n180), .CP(n639), .Q(mem[120]) );
  DFQD2BWP12T30P140 mem_reg_0__1_ ( .D(n179), .CP(n644), .Q(mem[121]) );
  DFQD2BWP12T30P140 mem_reg_0__3_ ( .D(n177), .CP(n642), .Q(mem[123]) );
  DFQD2BWP12T30P140 mem_reg_0__4_ ( .D(n176), .CP(n643), .Q(mem[124]) );
  DFQD2BWP12T30P140 mem_reg_0__5_ ( .D(n175), .CP(wclk), .Q(mem[125]) );
  DFQD2BWP12T30P140 mem_reg_0__6_ ( .D(n174), .CP(n645), .Q(mem[126]) );
  DFCNQD1BWP12T30P140 waddr_reg_2_ ( .D(n307), .CP(n645), .CDN(n317), .Q(
        waddr[2]) );
  DFCNQD1BWP12T30P140 wcnt_sync1_r_reg_4_ ( .D(wcnt[4]), .CP(rclk), .CDN(rrstn), .Q(wcnt_sync1_r[4]) );
  DFCNQD1BWP12T30P140 wcnt_sync1_r_reg_3_ ( .D(wcnt[3]), .CP(rclk), .CDN(rrstn), .Q(wcnt_sync1_r[3]) );
  DFCNQD1BWP12T30P140 wcnt_sync1_r_reg_2_ ( .D(wcnt[2]), .CP(rclk), .CDN(rrstn), .Q(wcnt_sync1_r[2]) );
  DFCNQD1BWP12T30P140 wcnt_sync1_r_reg_1_ ( .D(wcnt[1]), .CP(rclk), .CDN(rrstn), .Q(wcnt_sync1_r[1]) );
  DFCNQD1BWP12T30P140 wcnt_sync1_r_reg_0_ ( .D(wcnt[0]), .CP(rclk), .CDN(rrstn), .Q(wcnt_sync1_r[0]) );
  DFCNQD1BWP12T30P140 waddr_reg_3_ ( .D(n306), .CP(n645), .CDN(wrstn), .Q(
        waddr[3]) );
  DFCNQD1BWP12T30P140 rcnt_reg_0_ ( .D(n314), .CP(rclk), .CDN(rrstn), .Q(
        rcnt[0]) );
  DFCNQD1BWP12T30P140 rcnt_reg_2_ ( .D(n312), .CP(rclk), .CDN(rrstn), .Q(
        rcnt[2]) );
  DFCNQD1BWP12T30P140 raddr_reg_2_ ( .D(n170), .CP(n638), .CDN(n637), .Q(
        raddr[2]) );
  DFCNQD1BWP12T30P140 raddr_reg_1_ ( .D(n171), .CP(n638), .CDN(n637), .Q(
        raddr[1]) );
  DFCNQD1BWP12T30P140 rcnt_sync1_w_reg_0_ ( .D(rcnt[0]), .CP(n645), .CDN(n317), 
        .Q(rcnt_sync1_w[0]) );
  DFCNQD1BWP12T30P140 rcnt_sync1_w_reg_1_ ( .D(rcnt[1]), .CP(n645), .CDN(wrstn), .Q(rcnt_sync1_w[1]) );
  DFCNQD1BWP12T30P140 rcnt_sync1_w_reg_2_ ( .D(rcnt[2]), .CP(n645), .CDN(n317), 
        .Q(rcnt_sync1_w[2]) );
  DFCNQD1BWP12T30P140 rcnt_sync1_w_reg_3_ ( .D(rcnt[3]), .CP(n642), .CDN(wrstn), .Q(rcnt_sync1_w[3]) );
  DFCNQD1BWP12T30P140 rcnt_sync1_w_reg_4_ ( .D(rcnt[4]), .CP(n643), .CDN(n317), 
        .Q(rcnt_sync1_w[4]) );
  DFCNQD1BWP12T30P140 rcnt_reg_4_ ( .D(n310), .CP(rclk), .CDN(n637), .Q(
        rcnt[4]) );
  DFCNQD1BWP12T30P140 waddr_reg_1_ ( .D(n308), .CP(n645), .CDN(wrstn), .Q(
        waddr[1]) );
  DFCNQD1BWP12T30P140 wcnt_reg_2_ ( .D(n303), .CP(n645), .CDN(n317), .Q(
        wcnt[2]) );
  DFCNQD1BWP12T30P140 wcnt_reg_0_ ( .D(n304), .CP(n645), .CDN(wrstn), .Q(
        wcnt[0]) );
  DFCNQD1BWP12T30P140 rcnt_reg_1_ ( .D(n313), .CP(rclk), .CDN(rrstn), .Q(
        rcnt[1]) );
  DFCNQD1BWP12T30P140 wcnt_reg_4_ ( .D(n301), .CP(wclk), .CDN(n317), .Q(
        wcnt[4]) );
  DFCNQD1BWP12T30P140 raddr_reg_0_ ( .D(n172), .CP(n638), .CDN(n637), .Q(
        raddr[0]) );
  DFCNQD1BWP12T30P140 rcnt_reg_3_ ( .D(n311), .CP(rclk), .CDN(n637), .Q(
        rcnt[3]) );
  DFCNQD1BWP12T30P140 wcnt_reg_1_ ( .D(n305), .CP(n645), .CDN(wrstn), .Q(
        wcnt[1]) );
  DFCNQD1BWP12T30P140 wcnt_reg_3_ ( .D(n302), .CP(n639), .CDN(n317), .Q(
        wcnt[3]) );
  DFQD1BWP12T30P140 mem_reg_11__2_ ( .D(n266), .CP(n639), .Q(mem[34]) );
  DFQD1BWP12T30P140 mem_reg_3__1_ ( .D(n203), .CP(n641), .Q(mem[97]) );
  DFQD1BWP12T30P140 mem_reg_9__0_ ( .D(n252), .CP(n642), .Q(mem[48]) );
  DFQD1BWP12T30P140 mem_reg_5__7_ ( .D(n213), .CP(n643), .Q(mem[87]) );
  DFQD1BWP12T30P140 mem_reg_14__6_ ( .D(n286), .CP(n641), .Q(mem[14]) );
  DFQD1BWP12T30P140 mem_reg_6__5_ ( .D(n223), .CP(n639), .Q(mem[77]) );
  DFQD1BWP12T30P140 mem_reg_12__1_ ( .D(n272), .CP(n642), .Q(mem[25]) );
  DFQD1BWP12T30P140 mem_reg_4__3_ ( .D(n209), .CP(n644), .Q(mem[91]) );
  DFQD1BWP12T30P140 mem_reg_0__7_ ( .D(n173), .CP(wclk), .Q(mem[127]) );
  INVD0BWP12T30P140 U320 ( .I(wrstn), .ZN(n316) );
  INVD0BWP12T30P140 U321 ( .I(n316), .ZN(n317) );
  INVD0BWP12T30P140 U322 ( .I(rcnt[4]), .ZN(n634) );
  INVD0BWP12T30P140 U323 ( .I(rcnt[1]), .ZN(n320) );
  INVD0BWP12T30P140 U324 ( .I(wcnt_sync2_r[3]), .ZN(n319) );
  OAI22D0BWP12T30P140 U325 ( .A1(n320), .A2(wcnt_sync2_r[1]), .B1(n319), .B2(
        rcnt[3]), .ZN(n318) );
  AOI221D0BWP12T30P140 U326 ( .A1(n320), .A2(wcnt_sync2_r[1]), .B1(rcnt[3]), 
        .B2(n319), .C(n318), .ZN(n323) );
  INVD0BWP12T30P140 U327 ( .I(rcnt[2]), .ZN(n557) );
  INVD0BWP12T30P140 U328 ( .I(rcnt[0]), .ZN(n559) );
  OAI22D0BWP12T30P140 U329 ( .A1(n557), .A2(wcnt_sync2_r[2]), .B1(n559), .B2(
        wcnt_sync2_r[0]), .ZN(n321) );
  AOI221D0BWP12T30P140 U330 ( .A1(n557), .A2(wcnt_sync2_r[2]), .B1(
        wcnt_sync2_r[0]), .B2(n559), .C(n321), .ZN(n322) );
  OAI211D0BWP12T30P140 U331 ( .A1(wcnt_sync2_r[4]), .A2(n634), .B(n323), .C(
        n322), .ZN(n324) );
  AOI21D0BWP12T30P140 U332 ( .A1(wcnt_sync2_r[4]), .A2(n634), .B(n324), .ZN(
        rempty) );
  INR2D1BWP12T30P140 U333 ( .A1(rinc), .B1(rempty), .ZN(n545) );
  IND2D1BWP12T30P140 U334 ( .A1(raddr[3]), .B1(n545), .ZN(n580) );
  INVD0BWP12T30P140 U335 ( .I(mem[104]), .ZN(n369) );
  INVD0BWP12T30P140 U336 ( .I(raddr[2]), .ZN(n553) );
  INVD0BWP12T30P140 U337 ( .I(raddr[0]), .ZN(n325) );
  ND3D0BWP12T30P140 U338 ( .A1(n553), .A2(n325), .A3(raddr[1]), .ZN(n529) );
  INVD0BWP12T30P140 U339 ( .I(mem[120]), .ZN(n573) );
  INVD0BWP12T30P140 U340 ( .I(raddr[1]), .ZN(n549) );
  ND3D0BWP12T30P140 U341 ( .A1(n553), .A2(n549), .A3(n325), .ZN(n528) );
  OAI22D0BWP12T30P140 U342 ( .A1(n369), .A2(n529), .B1(n573), .B2(n528), .ZN(
        n329) );
  INVD0BWP12T30P140 U343 ( .I(mem[88]), .ZN(n626) );
  ND3D0BWP12T30P140 U344 ( .A1(n549), .A2(n325), .A3(raddr[2]), .ZN(n533) );
  INVD0BWP12T30P140 U345 ( .I(mem[112]), .ZN(n350) );
  ND3D0BWP12T30P140 U346 ( .A1(n553), .A2(n549), .A3(raddr[0]), .ZN(n531) );
  OAI22D0BWP12T30P140 U347 ( .A1(n626), .A2(n533), .B1(n350), .B2(n531), .ZN(
        n328) );
  INVD0BWP12T30P140 U348 ( .I(mem[72]), .ZN(n365) );
  ND3D0BWP12T30P140 U349 ( .A1(n325), .A2(raddr[2]), .A3(raddr[1]), .ZN(n537)
         );
  INVD0BWP12T30P140 U350 ( .I(mem[80]), .ZN(n346) );
  ND3D0BWP12T30P140 U351 ( .A1(n549), .A2(raddr[2]), .A3(raddr[0]), .ZN(n535)
         );
  OAI22D0BWP12T30P140 U352 ( .A1(n365), .A2(n537), .B1(n346), .B2(n535), .ZN(
        n327) );
  INVD0BWP12T30P140 U353 ( .I(mem[64]), .ZN(n371) );
  ND3D0BWP12T30P140 U354 ( .A1(raddr[0]), .A2(raddr[1]), .A3(raddr[2]), .ZN(
        n581) );
  INVD0BWP12T30P140 U355 ( .I(mem[96]), .ZN(n361) );
  ND3D0BWP12T30P140 U356 ( .A1(n553), .A2(raddr[0]), .A3(raddr[1]), .ZN(n552)
         );
  OAI22D0BWP12T30P140 U357 ( .A1(n371), .A2(n581), .B1(n361), .B2(n552), .ZN(
        n326) );
  NR4D0BWP12T30P140 U358 ( .A1(n329), .A2(n328), .A3(n327), .A4(n326), .ZN(
        n336) );
  INVD0BWP12T30P140 U359 ( .I(rdata[0]), .ZN(n335) );
  ND2D0BWP12T30P140 U360 ( .A1(n545), .A2(raddr[3]), .ZN(n544) );
  INVD0BWP12T30P140 U361 ( .I(mem[40]), .ZN(n359) );
  INVD0BWP12T30P140 U362 ( .I(mem[56]), .ZN(n618) );
  OAI22D0BWP12T30P140 U363 ( .A1(n359), .A2(n529), .B1(n618), .B2(n528), .ZN(
        n333) );
  INVD0BWP12T30P140 U364 ( .I(mem[24]), .ZN(n378) );
  INVD0BWP12T30P140 U365 ( .I(mem[48]), .ZN(n345) );
  OAI22D0BWP12T30P140 U366 ( .A1(n378), .A2(n533), .B1(n345), .B2(n531), .ZN(
        n332) );
  INVD0BWP12T30P140 U367 ( .I(mem[8]), .ZN(n356) );
  INVD0BWP12T30P140 U368 ( .I(mem[16]), .ZN(n352) );
  OAI22D0BWP12T30P140 U369 ( .A1(n356), .A2(n537), .B1(n352), .B2(n535), .ZN(
        n331) );
  INVD0BWP12T30P140 U370 ( .I(mem[0]), .ZN(n603) );
  INVD0BWP12T30P140 U371 ( .I(mem[32]), .ZN(n590) );
  OAI22D0BWP12T30P140 U372 ( .A1(n603), .A2(n581), .B1(n590), .B2(n552), .ZN(
        n330) );
  NR4D0BWP12T30P140 U373 ( .A1(n333), .A2(n332), .A3(n331), .A4(n330), .ZN(
        n334) );
  OAI222D0BWP12T30P140 U374 ( .A1(n580), .A2(n336), .B1(n335), .B2(n545), .C1(
        n544), .C2(n334), .ZN(n168) );
  INVD0BWP12T30P140 U375 ( .I(wcnt[2]), .ZN(n452) );
  INVD0BWP12T30P140 U376 ( .I(wcnt[0]), .ZN(n589) );
  OAI21D0BWP12T30P140 U377 ( .A1(n589), .A2(rcnt_sync2_w[0]), .B(wcnt[4]), 
        .ZN(n337) );
  AOI211D0BWP12T30P140 U378 ( .A1(n589), .A2(rcnt_sync2_w[0]), .B(
        rcnt_sync2_w[4]), .C(n337), .ZN(n342) );
  INVD0BWP12T30P140 U379 ( .I(wcnt[1]), .ZN(n340) );
  INVD0BWP12T30P140 U380 ( .I(wcnt[3]), .ZN(n339) );
  OAI22D0BWP12T30P140 U381 ( .A1(rcnt_sync2_w[3]), .A2(n339), .B1(
        rcnt_sync2_w[1]), .B2(n340), .ZN(n338) );
  AOI221D0BWP12T30P140 U382 ( .A1(n340), .A2(rcnt_sync2_w[1]), .B1(n339), .B2(
        rcnt_sync2_w[3]), .C(n338), .ZN(n341) );
  OAI211D0BWP12T30P140 U383 ( .A1(rcnt_sync2_w[2]), .A2(n452), .B(n342), .C(
        n341), .ZN(n343) );
  AOI21D0BWP12T30P140 U384 ( .A1(rcnt_sync2_w[2]), .A2(n452), .B(n343), .ZN(
        wfull) );
  INVD0BWP12T30P140 U385 ( .I(waddr[2]), .ZN(n562) );
  ND2D0BWP12T30P140 U386 ( .A1(waddr[3]), .A2(n562), .ZN(n592) );
  INVD0BWP12T30P140 U387 ( .I(waddr[1]), .ZN(n344) );
  IND2D1BWP12T30P140 U388 ( .A1(wfull), .B1(winc), .ZN(n588) );
  INVD0BWP12T30P140 U389 ( .I(waddr[0]), .ZN(n551) );
  NR2D0BWP12T30P140 U390 ( .A1(n588), .A2(n551), .ZN(n550) );
  ND3D0BWP12T30P140 U391 ( .A1(n344), .A2(n550), .A3(wrstn), .ZN(n349) );
  NR2D0BWP12T30P140 U392 ( .A1(n592), .A2(n349), .ZN(n380) );
  INVD0BWP12T30P140 U393 ( .I(wdata[3]), .ZN(n624) );
  INVD0BWP12T30P140 U394 ( .I(mem[51]), .ZN(n485) );
  INVD0BWP12T30P140 U395 ( .I(n380), .ZN(n379) );
  AOI22D0BWP12T30P140 U396 ( .A1(n380), .A2(n624), .B1(n485), .B2(n379), .ZN(
        n249) );
  INVD0BWP12T30P140 U397 ( .I(wdata[4]), .ZN(n631) );
  INVD0BWP12T30P140 U398 ( .I(mem[52]), .ZN(n464) );
  AOI22D0BWP12T30P140 U399 ( .A1(n380), .A2(n631), .B1(n464), .B2(n379), .ZN(
        n248) );
  INVD0BWP12T30P140 U400 ( .I(wdata[1]), .ZN(n617) );
  INVD0BWP12T30P140 U401 ( .I(mem[49]), .ZN(n532) );
  AOI22D0BWP12T30P140 U402 ( .A1(n380), .A2(n617), .B1(n532), .B2(n379), .ZN(
        n251) );
  INVD0BWP12T30P140 U403 ( .I(wdata[5]), .ZN(n602) );
  INVD0BWP12T30P140 U404 ( .I(mem[53]), .ZN(n438) );
  AOI22D0BWP12T30P140 U405 ( .A1(n380), .A2(n602), .B1(n438), .B2(n379), .ZN(
        n247) );
  INVD0BWP12T30P140 U406 ( .I(wdata[6]), .ZN(n621) );
  INVD0BWP12T30P140 U407 ( .I(mem[54]), .ZN(n415) );
  AOI22D0BWP12T30P140 U408 ( .A1(n380), .A2(n621), .B1(n415), .B2(n379), .ZN(
        n246) );
  INVD0BWP12T30P140 U409 ( .I(wdata[0]), .ZN(n627) );
  AOI22D0BWP12T30P140 U410 ( .A1(n380), .A2(n627), .B1(n345), .B2(n379), .ZN(
        n252) );
  INVD0BWP12T30P140 U411 ( .I(wdata[7]), .ZN(n610) );
  INVD0BWP12T30P140 U412 ( .I(mem[55]), .ZN(n392) );
  AOI22D0BWP12T30P140 U413 ( .A1(n380), .A2(n610), .B1(n392), .B2(n379), .ZN(
        n245) );
  INVD0BWP12T30P140 U414 ( .I(waddr[3]), .ZN(n560) );
  ND2D0BWP12T30P140 U415 ( .A1(waddr[2]), .A2(n560), .ZN(n575) );
  NR2D0BWP12T30P140 U416 ( .A1(n575), .A2(n349), .ZN(n348) );
  INVD0BWP12T30P140 U417 ( .I(n348), .ZN(n347) );
  AOI22D0BWP12T30P140 U418 ( .A1(n348), .A2(n627), .B1(n346), .B2(n347), .ZN(
        n220) );
  ND2D0BWP12T30P140 U419 ( .A1(waddr[3]), .A2(waddr[2]), .ZN(n376) );
  NR2D0BWP12T30P140 U420 ( .A1(n376), .A2(n349), .ZN(n353) );
  INVD0BWP12T30P140 U421 ( .I(mem[23]), .ZN(n394) );
  INVD0BWP12T30P140 U422 ( .I(n353), .ZN(n351) );
  AOI22D0BWP12T30P140 U423 ( .A1(n353), .A2(n610), .B1(n394), .B2(n351), .ZN(
        n277) );
  INVD0BWP12T30P140 U424 ( .I(mem[81]), .ZN(n520) );
  AOI22D0BWP12T30P140 U425 ( .A1(n348), .A2(n617), .B1(n520), .B2(n347), .ZN(
        n219) );
  INVD0BWP12T30P140 U426 ( .I(wdata[2]), .ZN(n615) );
  INVD0BWP12T30P140 U427 ( .I(mem[82]), .ZN(n498) );
  AOI22D0BWP12T30P140 U428 ( .A1(n348), .A2(n615), .B1(n498), .B2(n347), .ZN(
        n218) );
  INVD0BWP12T30P140 U429 ( .I(mem[22]), .ZN(n417) );
  AOI22D0BWP12T30P140 U430 ( .A1(n353), .A2(n621), .B1(n417), .B2(n351), .ZN(
        n278) );
  INVD0BWP12T30P140 U431 ( .I(mem[83]), .ZN(n476) );
  AOI22D0BWP12T30P140 U432 ( .A1(n348), .A2(n624), .B1(n476), .B2(n347), .ZN(
        n217) );
  INVD0BWP12T30P140 U433 ( .I(mem[84]), .ZN(n455) );
  AOI22D0BWP12T30P140 U434 ( .A1(n348), .A2(n631), .B1(n455), .B2(n347), .ZN(
        n216) );
  INVD0BWP12T30P140 U435 ( .I(mem[21]), .ZN(n440) );
  AOI22D0BWP12T30P140 U436 ( .A1(n353), .A2(n602), .B1(n440), .B2(n351), .ZN(
        n279) );
  INVD0BWP12T30P140 U437 ( .I(mem[85]), .ZN(n429) );
  AOI22D0BWP12T30P140 U438 ( .A1(n348), .A2(n602), .B1(n429), .B2(n347), .ZN(
        n215) );
  INVD0BWP12T30P140 U439 ( .I(mem[86]), .ZN(n406) );
  AOI22D0BWP12T30P140 U440 ( .A1(n348), .A2(n621), .B1(n406), .B2(n347), .ZN(
        n214) );
  INVD0BWP12T30P140 U441 ( .I(mem[20]), .ZN(n465) );
  AOI22D0BWP12T30P140 U442 ( .A1(n353), .A2(n631), .B1(n465), .B2(n351), .ZN(
        n280) );
  INVD0BWP12T30P140 U443 ( .I(mem[87]), .ZN(n383) );
  AOI22D0BWP12T30P140 U444 ( .A1(n348), .A2(n610), .B1(n383), .B2(n347), .ZN(
        n213) );
  ND2D0BWP12T30P140 U445 ( .A1(n560), .A2(n562), .ZN(n563) );
  NR2D0BWP12T30P140 U446 ( .A1(n563), .A2(n349), .ZN(n355) );
  INVD0BWP12T30P140 U447 ( .I(n355), .ZN(n354) );
  AOI22D0BWP12T30P140 U448 ( .A1(n355), .A2(n627), .B1(n350), .B2(n354), .ZN(
        n188) );
  INVD0BWP12T30P140 U449 ( .I(mem[19]), .ZN(n487) );
  AOI22D0BWP12T30P140 U450 ( .A1(n353), .A2(n624), .B1(n487), .B2(n351), .ZN(
        n281) );
  INVD0BWP12T30P140 U451 ( .I(mem[113]), .ZN(n519) );
  AOI22D0BWP12T30P140 U452 ( .A1(n355), .A2(n617), .B1(n519), .B2(n354), .ZN(
        n187) );
  INVD0BWP12T30P140 U453 ( .I(mem[114]), .ZN(n497) );
  AOI22D0BWP12T30P140 U454 ( .A1(n355), .A2(n615), .B1(n497), .B2(n354), .ZN(
        n186) );
  INVD0BWP12T30P140 U455 ( .I(mem[18]), .ZN(n509) );
  AOI22D0BWP12T30P140 U456 ( .A1(n353), .A2(n615), .B1(n509), .B2(n351), .ZN(
        n282) );
  INVD0BWP12T30P140 U457 ( .I(mem[115]), .ZN(n475) );
  AOI22D0BWP12T30P140 U458 ( .A1(n355), .A2(n624), .B1(n475), .B2(n354), .ZN(
        n185) );
  INVD0BWP12T30P140 U459 ( .I(mem[116]), .ZN(n454) );
  AOI22D0BWP12T30P140 U460 ( .A1(n355), .A2(n631), .B1(n454), .B2(n354), .ZN(
        n184) );
  INVD0BWP12T30P140 U461 ( .I(mem[17]), .ZN(n536) );
  AOI22D0BWP12T30P140 U462 ( .A1(n353), .A2(n617), .B1(n536), .B2(n351), .ZN(
        n283) );
  INVD0BWP12T30P140 U463 ( .I(mem[117]), .ZN(n428) );
  AOI22D0BWP12T30P140 U464 ( .A1(n355), .A2(n602), .B1(n428), .B2(n354), .ZN(
        n183) );
  INVD0BWP12T30P140 U465 ( .I(mem[118]), .ZN(n405) );
  AOI22D0BWP12T30P140 U466 ( .A1(n355), .A2(n621), .B1(n405), .B2(n354), .ZN(
        n182) );
  AOI22D0BWP12T30P140 U467 ( .A1(n353), .A2(n627), .B1(n352), .B2(n351), .ZN(
        n284) );
  INVD0BWP12T30P140 U468 ( .I(mem[119]), .ZN(n382) );
  AOI22D0BWP12T30P140 U469 ( .A1(n355), .A2(n610), .B1(n382), .B2(n354), .ZN(
        n181) );
  IND3D1BWP12T30P140 U470 ( .A1(n588), .B1(n551), .B2(n317), .ZN(n375) );
  IND2D1BWP12T30P140 U471 ( .A1(n375), .B1(waddr[1]), .ZN(n368) );
  NR2D0BWP12T30P140 U472 ( .A1(n368), .A2(n376), .ZN(n358) );
  INVD0BWP12T30P140 U473 ( .I(n358), .ZN(n357) );
  AOI22D0BWP12T30P140 U474 ( .A1(n357), .A2(n356), .B1(n627), .B2(n358), .ZN(
        n292) );
  ND2D0BWP12T30P140 U475 ( .A1(waddr[1]), .A2(n550), .ZN(n561) );
  IND2D1BWP12T30P140 U476 ( .A1(n561), .B1(wrstn), .ZN(n377) );
  NR2D0BWP12T30P140 U477 ( .A1(n377), .A2(n563), .ZN(n360) );
  INVD0BWP12T30P140 U478 ( .I(mem[103]), .ZN(n385) );
  INVD0BWP12T30P140 U479 ( .I(n360), .ZN(n362) );
  AOI22D0BWP12T30P140 U480 ( .A1(n360), .A2(n610), .B1(n385), .B2(n362), .ZN(
        n197) );
  INVD0BWP12T30P140 U481 ( .I(mem[9]), .ZN(n538) );
  AOI22D0BWP12T30P140 U482 ( .A1(n358), .A2(n617), .B1(n538), .B2(n357), .ZN(
        n291) );
  INVD0BWP12T30P140 U483 ( .I(mem[10]), .ZN(n510) );
  AOI22D0BWP12T30P140 U484 ( .A1(n358), .A2(n615), .B1(n510), .B2(n357), .ZN(
        n290) );
  INVD0BWP12T30P140 U485 ( .I(mem[102]), .ZN(n408) );
  AOI22D0BWP12T30P140 U486 ( .A1(n360), .A2(n621), .B1(n408), .B2(n362), .ZN(
        n198) );
  INVD0BWP12T30P140 U487 ( .I(mem[11]), .ZN(n488) );
  AOI22D0BWP12T30P140 U488 ( .A1(n358), .A2(n624), .B1(n488), .B2(n357), .ZN(
        n289) );
  INVD0BWP12T30P140 U489 ( .I(mem[12]), .ZN(n466) );
  AOI22D0BWP12T30P140 U490 ( .A1(n358), .A2(n631), .B1(n466), .B2(n357), .ZN(
        n288) );
  INVD0BWP12T30P140 U491 ( .I(mem[101]), .ZN(n431) );
  AOI22D0BWP12T30P140 U492 ( .A1(n360), .A2(n602), .B1(n431), .B2(n362), .ZN(
        n199) );
  INVD0BWP12T30P140 U493 ( .I(mem[13]), .ZN(n441) );
  AOI22D0BWP12T30P140 U494 ( .A1(n358), .A2(n602), .B1(n441), .B2(n357), .ZN(
        n287) );
  INVD0BWP12T30P140 U495 ( .I(mem[14]), .ZN(n418) );
  AOI22D0BWP12T30P140 U496 ( .A1(n358), .A2(n621), .B1(n418), .B2(n357), .ZN(
        n286) );
  INVD0BWP12T30P140 U497 ( .I(mem[100]), .ZN(n457) );
  AOI22D0BWP12T30P140 U498 ( .A1(n360), .A2(n631), .B1(n457), .B2(n362), .ZN(
        n200) );
  INVD0BWP12T30P140 U499 ( .I(mem[15]), .ZN(n395) );
  AOI22D0BWP12T30P140 U500 ( .A1(n358), .A2(n610), .B1(n395), .B2(n357), .ZN(
        n285) );
  NR2D0BWP12T30P140 U501 ( .A1(n592), .A2(n368), .ZN(n364) );
  INVD0BWP12T30P140 U502 ( .I(n364), .ZN(n363) );
  AOI22D0BWP12T30P140 U503 ( .A1(n364), .A2(n627), .B1(n359), .B2(n363), .ZN(
        n260) );
  INVD0BWP12T30P140 U504 ( .I(mem[99]), .ZN(n478) );
  AOI22D0BWP12T30P140 U505 ( .A1(n360), .A2(n624), .B1(n478), .B2(n362), .ZN(
        n201) );
  INVD0BWP12T30P140 U506 ( .I(mem[41]), .ZN(n530) );
  AOI22D0BWP12T30P140 U507 ( .A1(n364), .A2(n617), .B1(n530), .B2(n363), .ZN(
        n259) );
  INVD0BWP12T30P140 U508 ( .I(mem[42]), .ZN(n506) );
  AOI22D0BWP12T30P140 U509 ( .A1(n364), .A2(n615), .B1(n506), .B2(n363), .ZN(
        n258) );
  INVD0BWP12T30P140 U510 ( .I(mem[98]), .ZN(n500) );
  AOI22D0BWP12T30P140 U511 ( .A1(n360), .A2(n615), .B1(n500), .B2(n362), .ZN(
        n202) );
  INVD0BWP12T30P140 U512 ( .I(mem[43]), .ZN(n484) );
  AOI22D0BWP12T30P140 U513 ( .A1(n364), .A2(n624), .B1(n484), .B2(n363), .ZN(
        n257) );
  INVD0BWP12T30P140 U514 ( .I(mem[44]), .ZN(n463) );
  AOI22D0BWP12T30P140 U515 ( .A1(n364), .A2(n631), .B1(n463), .B2(n363), .ZN(
        n256) );
  INVD0BWP12T30P140 U516 ( .I(mem[97]), .ZN(n522) );
  AOI22D0BWP12T30P140 U517 ( .A1(n360), .A2(n617), .B1(n522), .B2(n362), .ZN(
        n203) );
  INVD0BWP12T30P140 U518 ( .I(mem[45]), .ZN(n437) );
  AOI22D0BWP12T30P140 U519 ( .A1(n364), .A2(n602), .B1(n437), .B2(n363), .ZN(
        n255) );
  INVD0BWP12T30P140 U520 ( .I(mem[46]), .ZN(n414) );
  AOI22D0BWP12T30P140 U521 ( .A1(n364), .A2(n621), .B1(n414), .B2(n363), .ZN(
        n254) );
  AOI22D0BWP12T30P140 U522 ( .A1(n362), .A2(n361), .B1(n627), .B2(n360), .ZN(
        n204) );
  INVD0BWP12T30P140 U523 ( .I(mem[47]), .ZN(n391) );
  AOI22D0BWP12T30P140 U524 ( .A1(n364), .A2(n610), .B1(n391), .B2(n363), .ZN(
        n253) );
  NR2D0BWP12T30P140 U525 ( .A1(n575), .A2(n368), .ZN(n367) );
  INVD0BWP12T30P140 U526 ( .I(n367), .ZN(n366) );
  AOI22D0BWP12T30P140 U527 ( .A1(n367), .A2(n627), .B1(n365), .B2(n366), .ZN(
        n228) );
  NR2D0BWP12T30P140 U528 ( .A1(n377), .A2(n575), .ZN(n372) );
  INVD0BWP12T30P140 U529 ( .I(mem[71]), .ZN(n386) );
  INVD0BWP12T30P140 U530 ( .I(n372), .ZN(n370) );
  AOI22D0BWP12T30P140 U531 ( .A1(n372), .A2(n610), .B1(n386), .B2(n370), .ZN(
        n229) );
  INVD0BWP12T30P140 U532 ( .I(mem[73]), .ZN(n521) );
  AOI22D0BWP12T30P140 U533 ( .A1(n367), .A2(n617), .B1(n521), .B2(n366), .ZN(
        n227) );
  INVD0BWP12T30P140 U534 ( .I(mem[74]), .ZN(n499) );
  AOI22D0BWP12T30P140 U535 ( .A1(n367), .A2(n615), .B1(n499), .B2(n366), .ZN(
        n226) );
  INVD0BWP12T30P140 U536 ( .I(mem[70]), .ZN(n409) );
  AOI22D0BWP12T30P140 U537 ( .A1(n372), .A2(n621), .B1(n409), .B2(n370), .ZN(
        n230) );
  INVD0BWP12T30P140 U538 ( .I(mem[75]), .ZN(n477) );
  AOI22D0BWP12T30P140 U539 ( .A1(n367), .A2(n624), .B1(n477), .B2(n366), .ZN(
        n225) );
  INVD0BWP12T30P140 U540 ( .I(mem[76]), .ZN(n456) );
  AOI22D0BWP12T30P140 U541 ( .A1(n367), .A2(n631), .B1(n456), .B2(n366), .ZN(
        n224) );
  INVD0BWP12T30P140 U542 ( .I(mem[69]), .ZN(n432) );
  AOI22D0BWP12T30P140 U543 ( .A1(n372), .A2(n602), .B1(n432), .B2(n370), .ZN(
        n231) );
  INVD0BWP12T30P140 U544 ( .I(mem[77]), .ZN(n430) );
  AOI22D0BWP12T30P140 U545 ( .A1(n367), .A2(n602), .B1(n430), .B2(n366), .ZN(
        n223) );
  INVD0BWP12T30P140 U546 ( .I(mem[78]), .ZN(n407) );
  AOI22D0BWP12T30P140 U547 ( .A1(n367), .A2(n621), .B1(n407), .B2(n366), .ZN(
        n222) );
  INVD0BWP12T30P140 U548 ( .I(mem[68]), .ZN(n458) );
  AOI22D0BWP12T30P140 U549 ( .A1(n372), .A2(n631), .B1(n458), .B2(n370), .ZN(
        n232) );
  INVD0BWP12T30P140 U550 ( .I(mem[79]), .ZN(n384) );
  AOI22D0BWP12T30P140 U551 ( .A1(n367), .A2(n610), .B1(n384), .B2(n366), .ZN(
        n221) );
  NR2D0BWP12T30P140 U552 ( .A1(n563), .A2(n368), .ZN(n374) );
  INVD0BWP12T30P140 U553 ( .I(n374), .ZN(n373) );
  AOI22D0BWP12T30P140 U554 ( .A1(n374), .A2(n627), .B1(n369), .B2(n373), .ZN(
        n196) );
  INVD0BWP12T30P140 U555 ( .I(mem[67]), .ZN(n479) );
  AOI22D0BWP12T30P140 U556 ( .A1(n372), .A2(n624), .B1(n479), .B2(n370), .ZN(
        n233) );
  INVD0BWP12T30P140 U557 ( .I(mem[105]), .ZN(n518) );
  AOI22D0BWP12T30P140 U558 ( .A1(n374), .A2(n617), .B1(n518), .B2(n373), .ZN(
        n195) );
  INVD0BWP12T30P140 U559 ( .I(mem[106]), .ZN(n496) );
  AOI22D0BWP12T30P140 U560 ( .A1(n374), .A2(n615), .B1(n496), .B2(n373), .ZN(
        n194) );
  INVD0BWP12T30P140 U561 ( .I(mem[66]), .ZN(n501) );
  AOI22D0BWP12T30P140 U562 ( .A1(n372), .A2(n615), .B1(n501), .B2(n370), .ZN(
        n234) );
  INVD0BWP12T30P140 U563 ( .I(mem[107]), .ZN(n474) );
  AOI22D0BWP12T30P140 U564 ( .A1(n374), .A2(n624), .B1(n474), .B2(n373), .ZN(
        n193) );
  INVD0BWP12T30P140 U565 ( .I(mem[108]), .ZN(n453) );
  AOI22D0BWP12T30P140 U566 ( .A1(n374), .A2(n631), .B1(n453), .B2(n373), .ZN(
        n192) );
  INVD0BWP12T30P140 U567 ( .I(mem[65]), .ZN(n523) );
  AOI22D0BWP12T30P140 U568 ( .A1(n372), .A2(n617), .B1(n523), .B2(n370), .ZN(
        n235) );
  INVD0BWP12T30P140 U569 ( .I(mem[109]), .ZN(n427) );
  AOI22D0BWP12T30P140 U570 ( .A1(n374), .A2(n602), .B1(n427), .B2(n373), .ZN(
        n191) );
  INVD0BWP12T30P140 U571 ( .I(mem[110]), .ZN(n404) );
  AOI22D0BWP12T30P140 U572 ( .A1(n374), .A2(n621), .B1(n404), .B2(n373), .ZN(
        n190) );
  AOI22D0BWP12T30P140 U573 ( .A1(n372), .A2(n627), .B1(n371), .B2(n370), .ZN(
        n236) );
  INVD0BWP12T30P140 U574 ( .I(mem[111]), .ZN(n381) );
  AOI22D0BWP12T30P140 U575 ( .A1(n374), .A2(n610), .B1(n381), .B2(n373), .ZN(
        n189) );
  OR2D0BWP12T30P140 U576 ( .A1(n375), .A2(waddr[1]), .Z(n591) );
  NR2D0BWP12T30P140 U577 ( .A1(n376), .A2(n591), .ZN(n598) );
  INVD0BWP12T30P140 U578 ( .I(mem[29]), .ZN(n439) );
  INVD0BWP12T30P140 U579 ( .I(n598), .ZN(n596) );
  AOI22D0BWP12T30P140 U580 ( .A1(n598), .A2(n602), .B1(n439), .B2(n596), .ZN(
        n276) );
  NR2D0BWP12T30P140 U581 ( .A1(n377), .A2(n592), .ZN(n632) );
  INVD0BWP12T30P140 U582 ( .I(mem[39]), .ZN(n396) );
  INVD0BWP12T30P140 U583 ( .I(n632), .ZN(n629) );
  AOI22D0BWP12T30P140 U584 ( .A1(n632), .A2(n610), .B1(n396), .B2(n629), .ZN(
        n261) );
  INVD0BWP12T30P140 U585 ( .I(mem[30]), .ZN(n416) );
  AOI22D0BWP12T30P140 U586 ( .A1(n598), .A2(n621), .B1(n416), .B2(n596), .ZN(
        n275) );
  INVD0BWP12T30P140 U587 ( .I(mem[31]), .ZN(n393) );
  AOI22D0BWP12T30P140 U588 ( .A1(n598), .A2(n610), .B1(n393), .B2(n596), .ZN(
        n274) );
  INVD0BWP12T30P140 U589 ( .I(mem[38]), .ZN(n419) );
  AOI22D0BWP12T30P140 U590 ( .A1(n632), .A2(n621), .B1(n419), .B2(n629), .ZN(
        n262) );
  AOI22D0BWP12T30P140 U591 ( .A1(n598), .A2(n627), .B1(n378), .B2(n596), .ZN(
        n273) );
  INVD0BWP12T30P140 U592 ( .I(mem[25]), .ZN(n534) );
  AOI22D0BWP12T30P140 U593 ( .A1(n598), .A2(n617), .B1(n534), .B2(n596), .ZN(
        n272) );
  INVD0BWP12T30P140 U594 ( .I(mem[37]), .ZN(n442) );
  AOI22D0BWP12T30P140 U595 ( .A1(n632), .A2(n602), .B1(n442), .B2(n629), .ZN(
        n263) );
  INVD0BWP12T30P140 U596 ( .I(mem[26]), .ZN(n508) );
  AOI22D0BWP12T30P140 U597 ( .A1(n598), .A2(n615), .B1(n508), .B2(n596), .ZN(
        n271) );
  INVD0BWP12T30P140 U598 ( .I(mem[27]), .ZN(n486) );
  AOI22D0BWP12T30P140 U599 ( .A1(n598), .A2(n624), .B1(n486), .B2(n596), .ZN(
        n270) );
  INVD0BWP12T30P140 U600 ( .I(mem[50]), .ZN(n507) );
  AOI22D0BWP12T30P140 U601 ( .A1(n380), .A2(n615), .B1(n507), .B2(n379), .ZN(
        n250) );
  NR2D0BWP12T30P140 U602 ( .A1(n589), .A2(n588), .ZN(n587) );
  ND2D0BWP12T30P140 U603 ( .A1(wcnt[1]), .A2(n587), .ZN(n451) );
  OA21D0BWP12T30P140 U604 ( .A1(wcnt[1]), .A2(n587), .B(n451), .Z(n305) );
  INVD0BWP12T30P140 U605 ( .I(mem[127]), .ZN(n564) );
  OAI22D0BWP12T30P140 U606 ( .A1(n381), .A2(n529), .B1(n564), .B2(n528), .ZN(
        n390) );
  INVD0BWP12T30P140 U607 ( .I(mem[95]), .ZN(n576) );
  OAI22D0BWP12T30P140 U608 ( .A1(n576), .A2(n533), .B1(n382), .B2(n531), .ZN(
        n389) );
  OAI22D0BWP12T30P140 U609 ( .A1(n384), .A2(n537), .B1(n383), .B2(n535), .ZN(
        n388) );
  OAI22D0BWP12T30P140 U610 ( .A1(n386), .A2(n581), .B1(n385), .B2(n552), .ZN(
        n387) );
  NR4D0BWP12T30P140 U611 ( .A1(n390), .A2(n389), .A3(n388), .A4(n387), .ZN(
        n403) );
  INVD0BWP12T30P140 U612 ( .I(rdata[7]), .ZN(n402) );
  INVD0BWP12T30P140 U613 ( .I(mem[63]), .ZN(n600) );
  OAI22D0BWP12T30P140 U614 ( .A1(n391), .A2(n529), .B1(n600), .B2(n528), .ZN(
        n400) );
  OAI22D0BWP12T30P140 U615 ( .A1(n393), .A2(n533), .B1(n392), .B2(n531), .ZN(
        n399) );
  OAI22D0BWP12T30P140 U616 ( .A1(n395), .A2(n537), .B1(n394), .B2(n535), .ZN(
        n398) );
  INVD0BWP12T30P140 U617 ( .I(mem[7]), .ZN(n609) );
  OAI22D0BWP12T30P140 U618 ( .A1(n609), .A2(n581), .B1(n396), .B2(n552), .ZN(
        n397) );
  NR4D0BWP12T30P140 U619 ( .A1(n400), .A2(n399), .A3(n398), .A4(n397), .ZN(
        n401) );
  OAI222D0BWP12T30P140 U620 ( .A1(n580), .A2(n403), .B1(n402), .B2(n545), .C1(
        n544), .C2(n401), .ZN(n167) );
  INVD0BWP12T30P140 U621 ( .I(n545), .ZN(n578) );
  NR2D0BWP12T30P140 U622 ( .A1(n559), .A2(n578), .ZN(n558) );
  ND2D0BWP12T30P140 U623 ( .A1(rcnt[1]), .A2(n558), .ZN(n556) );
  NR2D0BWP12T30P140 U624 ( .A1(n557), .A2(n556), .ZN(n555) );
  ND2D0BWP12T30P140 U625 ( .A1(rcnt[3]), .A2(n555), .ZN(n633) );
  OA21D0BWP12T30P140 U626 ( .A1(rcnt[3]), .A2(n555), .B(n633), .Z(n311) );
  INVD0BWP12T30P140 U627 ( .I(mem[126]), .ZN(n565) );
  OAI22D0BWP12T30P140 U628 ( .A1(n404), .A2(n529), .B1(n565), .B2(n528), .ZN(
        n413) );
  INVD0BWP12T30P140 U629 ( .I(mem[94]), .ZN(n586) );
  OAI22D0BWP12T30P140 U630 ( .A1(n586), .A2(n533), .B1(n405), .B2(n531), .ZN(
        n412) );
  OAI22D0BWP12T30P140 U631 ( .A1(n407), .A2(n537), .B1(n406), .B2(n535), .ZN(
        n411) );
  OAI22D0BWP12T30P140 U632 ( .A1(n409), .A2(n581), .B1(n408), .B2(n552), .ZN(
        n410) );
  NR4D0BWP12T30P140 U633 ( .A1(n413), .A2(n412), .A3(n411), .A4(n410), .ZN(
        n426) );
  INVD0BWP12T30P140 U634 ( .I(rdata[6]), .ZN(n425) );
  INVD0BWP12T30P140 U635 ( .I(mem[62]), .ZN(n620) );
  OAI22D0BWP12T30P140 U636 ( .A1(n414), .A2(n529), .B1(n620), .B2(n528), .ZN(
        n423) );
  OAI22D0BWP12T30P140 U637 ( .A1(n416), .A2(n533), .B1(n415), .B2(n531), .ZN(
        n422) );
  OAI22D0BWP12T30P140 U638 ( .A1(n418), .A2(n537), .B1(n417), .B2(n535), .ZN(
        n421) );
  INVD0BWP12T30P140 U639 ( .I(mem[6]), .ZN(n595) );
  OAI22D0BWP12T30P140 U640 ( .A1(n595), .A2(n581), .B1(n419), .B2(n552), .ZN(
        n420) );
  NR4D0BWP12T30P140 U641 ( .A1(n423), .A2(n422), .A3(n421), .A4(n420), .ZN(
        n424) );
  OAI222D0BWP12T30P140 U642 ( .A1(n580), .A2(n426), .B1(n425), .B2(n545), .C1(
        n544), .C2(n424), .ZN(n166) );
  ND2D0BWP12T30P140 U643 ( .A1(n545), .A2(raddr[0]), .ZN(n548) );
  OA21D0BWP12T30P140 U644 ( .A1(n545), .A2(raddr[0]), .B(n548), .Z(n172) );
  OA21D0BWP12T30P140 U645 ( .A1(rcnt[1]), .A2(n558), .B(n556), .Z(n313) );
  NR2D0BWP12T30P140 U646 ( .A1(n452), .A2(n451), .ZN(n450) );
  ND2D0BWP12T30P140 U647 ( .A1(wcnt[3]), .A2(n450), .ZN(n635) );
  OA21D0BWP12T30P140 U648 ( .A1(wcnt[3]), .A2(n450), .B(n635), .Z(n302) );
  INVD0BWP12T30P140 U649 ( .I(mem[125]), .ZN(n566) );
  OAI22D0BWP12T30P140 U650 ( .A1(n427), .A2(n529), .B1(n566), .B2(n528), .ZN(
        n436) );
  INVD0BWP12T30P140 U651 ( .I(mem[93]), .ZN(n594) );
  OAI22D0BWP12T30P140 U652 ( .A1(n594), .A2(n533), .B1(n428), .B2(n531), .ZN(
        n435) );
  OAI22D0BWP12T30P140 U653 ( .A1(n430), .A2(n537), .B1(n429), .B2(n535), .ZN(
        n434) );
  OAI22D0BWP12T30P140 U654 ( .A1(n432), .A2(n581), .B1(n431), .B2(n552), .ZN(
        n433) );
  NR4D0BWP12T30P140 U655 ( .A1(n436), .A2(n435), .A3(n434), .A4(n433), .ZN(
        n449) );
  INVD0BWP12T30P140 U656 ( .I(rdata[5]), .ZN(n448) );
  INVD0BWP12T30P140 U657 ( .I(mem[61]), .ZN(n601) );
  OAI22D0BWP12T30P140 U658 ( .A1(n437), .A2(n529), .B1(n601), .B2(n528), .ZN(
        n446) );
  OAI22D0BWP12T30P140 U659 ( .A1(n439), .A2(n533), .B1(n438), .B2(n531), .ZN(
        n445) );
  OAI22D0BWP12T30P140 U660 ( .A1(n441), .A2(n537), .B1(n440), .B2(n535), .ZN(
        n444) );
  INVD0BWP12T30P140 U661 ( .I(mem[5]), .ZN(n585) );
  OAI22D0BWP12T30P140 U662 ( .A1(n585), .A2(n581), .B1(n442), .B2(n552), .ZN(
        n443) );
  NR4D0BWP12T30P140 U663 ( .A1(n446), .A2(n445), .A3(n444), .A4(n443), .ZN(
        n447) );
  OAI222D0BWP12T30P140 U664 ( .A1(n580), .A2(n449), .B1(n448), .B2(n545), .C1(
        n544), .C2(n447), .ZN(n165) );
  AOI21D0BWP12T30P140 U665 ( .A1(n452), .A2(n451), .B(n450), .ZN(n303) );
  OA21D0BWP12T30P140 U666 ( .A1(waddr[1]), .A2(n550), .B(n561), .Z(n308) );
  INVD0BWP12T30P140 U667 ( .I(mem[124]), .ZN(n569) );
  OAI22D0BWP12T30P140 U668 ( .A1(n453), .A2(n529), .B1(n569), .B2(n528), .ZN(
        n462) );
  INVD0BWP12T30P140 U669 ( .I(mem[92]), .ZN(n599) );
  OAI22D0BWP12T30P140 U670 ( .A1(n599), .A2(n533), .B1(n454), .B2(n531), .ZN(
        n461) );
  OAI22D0BWP12T30P140 U671 ( .A1(n456), .A2(n537), .B1(n455), .B2(n535), .ZN(
        n460) );
  OAI22D0BWP12T30P140 U672 ( .A1(n458), .A2(n581), .B1(n457), .B2(n552), .ZN(
        n459) );
  NR4D0BWP12T30P140 U673 ( .A1(n462), .A2(n461), .A3(n460), .A4(n459), .ZN(
        n473) );
  INVD0BWP12T30P140 U674 ( .I(rdata[4]), .ZN(n472) );
  INVD0BWP12T30P140 U675 ( .I(mem[60]), .ZN(n604) );
  OAI22D0BWP12T30P140 U676 ( .A1(n463), .A2(n529), .B1(n604), .B2(n528), .ZN(
        n470) );
  INVD0BWP12T30P140 U677 ( .I(mem[28]), .ZN(n597) );
  OAI22D0BWP12T30P140 U678 ( .A1(n597), .A2(n533), .B1(n464), .B2(n531), .ZN(
        n469) );
  OAI22D0BWP12T30P140 U679 ( .A1(n466), .A2(n537), .B1(n465), .B2(n535), .ZN(
        n468) );
  INVD0BWP12T30P140 U680 ( .I(mem[4]), .ZN(n577) );
  INVD0BWP12T30P140 U681 ( .I(mem[36]), .ZN(n630) );
  OAI22D0BWP12T30P140 U682 ( .A1(n577), .A2(n581), .B1(n630), .B2(n552), .ZN(
        n467) );
  NR4D0BWP12T30P140 U683 ( .A1(n470), .A2(n469), .A3(n468), .A4(n467), .ZN(
        n471) );
  OAI222D0BWP12T30P140 U684 ( .A1(n580), .A2(n473), .B1(n472), .B2(n545), .C1(
        n544), .C2(n471), .ZN(n164) );
  INVD0BWP12T30P140 U685 ( .I(mem[123]), .ZN(n570) );
  OAI22D0BWP12T30P140 U686 ( .A1(n474), .A2(n529), .B1(n570), .B2(n528), .ZN(
        n483) );
  INVD0BWP12T30P140 U687 ( .I(mem[91]), .ZN(n606) );
  OAI22D0BWP12T30P140 U688 ( .A1(n606), .A2(n533), .B1(n475), .B2(n531), .ZN(
        n482) );
  OAI22D0BWP12T30P140 U689 ( .A1(n477), .A2(n537), .B1(n476), .B2(n535), .ZN(
        n481) );
  OAI22D0BWP12T30P140 U690 ( .A1(n479), .A2(n581), .B1(n478), .B2(n552), .ZN(
        n480) );
  NR4D0BWP12T30P140 U691 ( .A1(n483), .A2(n482), .A3(n481), .A4(n480), .ZN(
        n495) );
  INVD0BWP12T30P140 U692 ( .I(rdata[3]), .ZN(n494) );
  INVD0BWP12T30P140 U693 ( .I(mem[59]), .ZN(n607) );
  OAI22D0BWP12T30P140 U694 ( .A1(n484), .A2(n529), .B1(n607), .B2(n528), .ZN(
        n492) );
  OAI22D0BWP12T30P140 U695 ( .A1(n486), .A2(n533), .B1(n485), .B2(n531), .ZN(
        n491) );
  OAI22D0BWP12T30P140 U696 ( .A1(n488), .A2(n537), .B1(n487), .B2(n535), .ZN(
        n490) );
  INVD0BWP12T30P140 U697 ( .I(mem[3]), .ZN(n574) );
  INVD0BWP12T30P140 U698 ( .I(mem[35]), .ZN(n623) );
  OAI22D0BWP12T30P140 U699 ( .A1(n574), .A2(n581), .B1(n623), .B2(n552), .ZN(
        n489) );
  NR4D0BWP12T30P140 U700 ( .A1(n492), .A2(n491), .A3(n490), .A4(n489), .ZN(
        n493) );
  OAI222D0BWP12T30P140 U701 ( .A1(n580), .A2(n495), .B1(n494), .B2(n545), .C1(
        n544), .C2(n493), .ZN(n163) );
  INVD0BWP12T30P140 U702 ( .I(mem[122]), .ZN(n583) );
  OAI22D0BWP12T30P140 U703 ( .A1(n496), .A2(n529), .B1(n583), .B2(n528), .ZN(
        n505) );
  INVD0BWP12T30P140 U704 ( .I(mem[90]), .ZN(n613) );
  OAI22D0BWP12T30P140 U705 ( .A1(n613), .A2(n533), .B1(n497), .B2(n531), .ZN(
        n504) );
  OAI22D0BWP12T30P140 U706 ( .A1(n499), .A2(n537), .B1(n498), .B2(n535), .ZN(
        n503) );
  OAI22D0BWP12T30P140 U707 ( .A1(n501), .A2(n581), .B1(n500), .B2(n552), .ZN(
        n502) );
  NR4D0BWP12T30P140 U708 ( .A1(n505), .A2(n504), .A3(n503), .A4(n502), .ZN(
        n517) );
  INVD0BWP12T30P140 U709 ( .I(rdata[2]), .ZN(n516) );
  INVD0BWP12T30P140 U710 ( .I(mem[58]), .ZN(n614) );
  OAI22D0BWP12T30P140 U711 ( .A1(n506), .A2(n529), .B1(n614), .B2(n528), .ZN(
        n514) );
  OAI22D0BWP12T30P140 U712 ( .A1(n508), .A2(n533), .B1(n507), .B2(n531), .ZN(
        n513) );
  OAI22D0BWP12T30P140 U713 ( .A1(n510), .A2(n537), .B1(n509), .B2(n535), .ZN(
        n512) );
  INVD0BWP12T30P140 U714 ( .I(mem[2]), .ZN(n571) );
  INVD0BWP12T30P140 U715 ( .I(mem[34]), .ZN(n612) );
  OAI22D0BWP12T30P140 U716 ( .A1(n571), .A2(n581), .B1(n612), .B2(n552), .ZN(
        n511) );
  NR4D0BWP12T30P140 U717 ( .A1(n514), .A2(n513), .A3(n512), .A4(n511), .ZN(
        n515) );
  OAI222D0BWP12T30P140 U718 ( .A1(n580), .A2(n517), .B1(n516), .B2(n545), .C1(
        n544), .C2(n515), .ZN(n162) );
  INVD0BWP12T30P140 U719 ( .I(mem[121]), .ZN(n572) );
  OAI22D0BWP12T30P140 U720 ( .A1(n518), .A2(n529), .B1(n572), .B2(n528), .ZN(
        n527) );
  INVD0BWP12T30P140 U721 ( .I(mem[89]), .ZN(n616) );
  OAI22D0BWP12T30P140 U722 ( .A1(n616), .A2(n533), .B1(n519), .B2(n531), .ZN(
        n526) );
  OAI22D0BWP12T30P140 U723 ( .A1(n521), .A2(n537), .B1(n520), .B2(n535), .ZN(
        n525) );
  OAI22D0BWP12T30P140 U724 ( .A1(n523), .A2(n581), .B1(n522), .B2(n552), .ZN(
        n524) );
  NR4D0BWP12T30P140 U725 ( .A1(n527), .A2(n526), .A3(n525), .A4(n524), .ZN(
        n547) );
  INVD0BWP12T30P140 U726 ( .I(rdata[1]), .ZN(n546) );
  INVD0BWP12T30P140 U727 ( .I(mem[57]), .ZN(n593) );
  OAI22D0BWP12T30P140 U728 ( .A1(n530), .A2(n529), .B1(n593), .B2(n528), .ZN(
        n542) );
  OAI22D0BWP12T30P140 U729 ( .A1(n534), .A2(n533), .B1(n532), .B2(n531), .ZN(
        n541) );
  OAI22D0BWP12T30P140 U730 ( .A1(n538), .A2(n537), .B1(n536), .B2(n535), .ZN(
        n540) );
  INVD0BWP12T30P140 U731 ( .I(mem[1]), .ZN(n568) );
  INVD0BWP12T30P140 U732 ( .I(mem[33]), .ZN(n605) );
  OAI22D0BWP12T30P140 U733 ( .A1(n568), .A2(n581), .B1(n605), .B2(n552), .ZN(
        n539) );
  NR4D0BWP12T30P140 U734 ( .A1(n542), .A2(n541), .A3(n540), .A4(n539), .ZN(
        n543) );
  OAI222D0BWP12T30P140 U735 ( .A1(n580), .A2(n547), .B1(n546), .B2(n545), .C1(
        n544), .C2(n543), .ZN(n161) );
  NR2D0BWP12T30P140 U736 ( .A1(n549), .A2(n548), .ZN(n554) );
  AOI21D0BWP12T30P140 U737 ( .A1(n549), .A2(n548), .B(n554), .ZN(n171) );
  AOI21D0BWP12T30P140 U738 ( .A1(n588), .A2(n551), .B(n550), .ZN(n309) );
  OAI22D0BWP12T30P140 U739 ( .A1(n554), .A2(n553), .B1(n578), .B2(n552), .ZN(
        n170) );
  AOI21D0BWP12T30P140 U740 ( .A1(n557), .A2(n556), .B(n555), .ZN(n312) );
  AOI21D0BWP12T30P140 U741 ( .A1(n559), .A2(n578), .B(n558), .ZN(n314) );
  NR2D0BWP12T30P140 U742 ( .A1(n562), .A2(n561), .ZN(n567) );
  OAI22D0BWP12T30P140 U743 ( .A1(n567), .A2(n560), .B1(n561), .B2(n575), .ZN(
        n306) );
  AOI21D0BWP12T30P140 U744 ( .A1(n562), .A2(n561), .B(n567), .ZN(n307) );
  NR2D0BWP12T30P140 U745 ( .A1(n563), .A2(n591), .ZN(n584) );
  INVD0BWP12T30P140 U746 ( .I(n584), .ZN(n582) );
  AOI22D0BWP12T30P140 U747 ( .A1(n584), .A2(n610), .B1(n564), .B2(n582), .ZN(
        n173) );
  AOI22D0BWP12T30P140 U748 ( .A1(n584), .A2(n621), .B1(n565), .B2(n582), .ZN(
        n174) );
  AOI22D0BWP12T30P140 U749 ( .A1(n584), .A2(n602), .B1(n566), .B2(n582), .ZN(
        n175) );
  ND3D0BWP12T30P140 U750 ( .A1(n317), .A2(waddr[3]), .A3(n567), .ZN(n608) );
  INVD0BWP12T30P140 U751 ( .I(n608), .ZN(n611) );
  AOI22D0BWP12T30P140 U752 ( .A1(n611), .A2(n617), .B1(n568), .B2(n608), .ZN(
        n300) );
  AOI22D0BWP12T30P140 U753 ( .A1(n584), .A2(n631), .B1(n569), .B2(n582), .ZN(
        n176) );
  AOI22D0BWP12T30P140 U754 ( .A1(n584), .A2(n624), .B1(n570), .B2(n582), .ZN(
        n177) );
  AOI22D0BWP12T30P140 U755 ( .A1(n611), .A2(n615), .B1(n571), .B2(n608), .ZN(
        n299) );
  AOI22D0BWP12T30P140 U756 ( .A1(n584), .A2(n617), .B1(n572), .B2(n582), .ZN(
        n179) );
  AOI22D0BWP12T30P140 U757 ( .A1(n584), .A2(n627), .B1(n573), .B2(n582), .ZN(
        n180) );
  AOI22D0BWP12T30P140 U758 ( .A1(n611), .A2(n624), .B1(n574), .B2(n608), .ZN(
        n298) );
  NR2D0BWP12T30P140 U759 ( .A1(n575), .A2(n591), .ZN(n628) );
  INVD0BWP12T30P140 U760 ( .I(n628), .ZN(n625) );
  AOI22D0BWP12T30P140 U761 ( .A1(n628), .A2(n610), .B1(n576), .B2(n625), .ZN(
        n205) );
  AOI22D0BWP12T30P140 U762 ( .A1(n611), .A2(n631), .B1(n577), .B2(n608), .ZN(
        n297) );
  OAI21D0BWP12T30P140 U763 ( .A1(n581), .A2(n578), .B(raddr[3]), .ZN(n579) );
  OAI21D0BWP12T30P140 U764 ( .A1(n581), .A2(n580), .B(n579), .ZN(n169) );
  AOI22D0BWP12T30P140 U765 ( .A1(n584), .A2(n615), .B1(n583), .B2(n582), .ZN(
        n178) );
  AOI22D0BWP12T30P140 U766 ( .A1(n611), .A2(n602), .B1(n585), .B2(n608), .ZN(
        n296) );
  AOI22D0BWP12T30P140 U767 ( .A1(n628), .A2(n621), .B1(n586), .B2(n625), .ZN(
        n206) );
  AOI21D0BWP12T30P140 U768 ( .A1(n589), .A2(n588), .B(n587), .ZN(n304) );
  AOI22D0BWP12T30P140 U769 ( .A1(n632), .A2(n627), .B1(n590), .B2(n629), .ZN(
        n268) );
  NR2D0BWP12T30P140 U770 ( .A1(n592), .A2(n591), .ZN(n622) );
  INVD0BWP12T30P140 U771 ( .I(n622), .ZN(n619) );
  AOI22D0BWP12T30P140 U772 ( .A1(n622), .A2(n617), .B1(n593), .B2(n619), .ZN(
        n243) );
  AOI22D0BWP12T30P140 U773 ( .A1(n628), .A2(n602), .B1(n594), .B2(n625), .ZN(
        n207) );
  AOI22D0BWP12T30P140 U774 ( .A1(n611), .A2(n621), .B1(n595), .B2(n608), .ZN(
        n295) );
  AOI22D0BWP12T30P140 U775 ( .A1(n598), .A2(n631), .B1(n597), .B2(n596), .ZN(
        n269) );
  AOI22D0BWP12T30P140 U776 ( .A1(n628), .A2(n631), .B1(n599), .B2(n625), .ZN(
        n208) );
  AOI22D0BWP12T30P140 U777 ( .A1(n622), .A2(n610), .B1(n600), .B2(n619), .ZN(
        n237) );
  AOI22D0BWP12T30P140 U778 ( .A1(n622), .A2(n602), .B1(n601), .B2(n619), .ZN(
        n239) );
  AOI22D0BWP12T30P140 U779 ( .A1(n611), .A2(n627), .B1(n603), .B2(n608), .ZN(
        n293) );
  AOI22D0BWP12T30P140 U780 ( .A1(n622), .A2(n631), .B1(n604), .B2(n619), .ZN(
        n240) );
  AOI22D0BWP12T30P140 U781 ( .A1(n632), .A2(n617), .B1(n605), .B2(n629), .ZN(
        n267) );
  AOI22D0BWP12T30P140 U782 ( .A1(n628), .A2(n624), .B1(n606), .B2(n625), .ZN(
        n209) );
  AOI22D0BWP12T30P140 U783 ( .A1(n622), .A2(n624), .B1(n607), .B2(n619), .ZN(
        n241) );
  AOI22D0BWP12T30P140 U784 ( .A1(n611), .A2(n610), .B1(n609), .B2(n608), .ZN(
        n294) );
  AOI22D0BWP12T30P140 U785 ( .A1(n632), .A2(n615), .B1(n612), .B2(n629), .ZN(
        n266) );
  AOI22D0BWP12T30P140 U786 ( .A1(n628), .A2(n615), .B1(n613), .B2(n625), .ZN(
        n210) );
  AOI22D0BWP12T30P140 U787 ( .A1(n622), .A2(n615), .B1(n614), .B2(n619), .ZN(
        n242) );
  AOI22D0BWP12T30P140 U788 ( .A1(n628), .A2(n617), .B1(n616), .B2(n625), .ZN(
        n211) );
  AOI22D0BWP12T30P140 U789 ( .A1(n622), .A2(n627), .B1(n618), .B2(n619), .ZN(
        n244) );
  AOI22D0BWP12T30P140 U790 ( .A1(n622), .A2(n621), .B1(n620), .B2(n619), .ZN(
        n238) );
  AOI22D0BWP12T30P140 U791 ( .A1(n632), .A2(n624), .B1(n623), .B2(n629), .ZN(
        n265) );
  AOI22D0BWP12T30P140 U792 ( .A1(n628), .A2(n627), .B1(n626), .B2(n625), .ZN(
        n212) );
  AOI22D0BWP12T30P140 U793 ( .A1(n632), .A2(n631), .B1(n630), .B2(n629), .ZN(
        n264) );
  CKBD0BWP12T30P140 U794 ( .I(wclk), .Z(n639) );
  CKBD0BWP12T30P140 U795 ( .I(wclk), .Z(n641) );
  CKBD0BWP12T30P140 U796 ( .I(wclk), .Z(n640) );
  CKBD0BWP12T30P140 U797 ( .I(wclk), .Z(n645) );
  CKBD0BWP12T30P140 U798 ( .I(rclk), .Z(n638) );
  CKBD0BWP12T30P140 U799 ( .I(wclk), .Z(n644) );
  CKBD0BWP12T30P140 U800 ( .I(wclk), .Z(n643) );
  CKBD0BWP12T30P140 U801 ( .I(wclk), .Z(n642) );
  CKBD0BWP12T30P140 U802 ( .I(rrstn), .Z(n637) );
  MUX2ND0BWP12T30P140 U803 ( .I0(rcnt[4]), .I1(n634), .S(n633), .ZN(n310) );
  INVD0BWP12T30P140 U804 ( .I(wcnt[4]), .ZN(n636) );
  MUX2ND0BWP12T30P140 U805 ( .I0(wcnt[4]), .I1(n636), .S(n635), .ZN(n301) );
endmodule

