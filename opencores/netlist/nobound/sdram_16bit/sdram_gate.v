/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:41:36 2026
/////////////////////////////////////////////////////////////


module sdram ( clk_i, rst_i, stb_i, we_i, sel_i, cyc_i, addr_i, data_i, data_o, 
        stall_o, ack_o, sdram_clk_o, sdram_cke_o, sdram_cs_o, sdram_ras_o, 
        sdram_cas_o, sdram_we_o, sdram_dqm_o, sdram_addr_o, sdram_ba_o, 
        sdram_data_io );
  input [3:0] sel_i;
  input [31:0] addr_i;
  input [31:0] data_i;
  output [31:0] data_o;
  output [1:0] sdram_dqm_o;
  output [12:0] sdram_addr_o;
  output [1:0] sdram_ba_o;
  inout [15:0] sdram_data_io;
  input clk_i, rst_i, stb_i, we_i, cyc_i;
  output stall_o, ack_o, sdram_clk_o, sdram_cke_o, sdram_cs_o, sdram_ras_o,
         sdram_cas_o, sdram_we_o;
  wire   refresh_q, N207, N208, N209, N210, N230, N231, N232, N233, N234, N235,
         N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246,
         data_rd_en_q, N390, n2, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629;
  wire   [3:0] state_q;
  wire   [3:0] target_state_q;
  wire   [3:0] row_open_q;
  wire   [51:0] active_row_q;
  wire   [3:0] target_state_r;
  wire   [3:0] delay_state_q;
  wire   [3:0] delay_r;
  wire   [3:0] delay_q;
  wire   [16:0] refresh_timer_q;
  wire   [15:0] sample_data0_q;
  wire   [15:0] data_q;
  wire   [1:0] dqm_buffer_q;
  wire   [3:0] rd_q;

  DFSNQD1BWP12T30P140 refresh_timer_q_reg_2_ ( .D(N232), .CP(n629), .SDN(n620), 
        .Q(refresh_timer_q[2]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_3_ ( .D(N233), .CP(n629), .SDN(n612), 
        .Q(refresh_timer_q[3]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_5_ ( .D(N235), .CP(n629), .SDN(n613), 
        .Q(refresh_timer_q[5]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_6_ ( .D(N236), .CP(n629), .SDN(n620), 
        .Q(refresh_timer_q[6]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_7_ ( .D(N237), .CP(n629), .SDN(n619), 
        .Q(refresh_timer_q[7]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_8_ ( .D(N238), .CP(n629), .SDN(n618), 
        .Q(refresh_timer_q[8]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_9_ ( .D(N239), .CP(n629), .SDN(n617), 
        .Q(refresh_timer_q[9]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_12_ ( .D(N242), .CP(n629), .SDN(n615), .Q(refresh_timer_q[12]) );
  DFSNQD1BWP12T30P140 target_state_q_reg_1_ ( .D(target_state_r[1]), .CP(n629), 
        .SDN(n613), .Q(target_state_q[1]) );
  DFSNQD1BWP12T30P140 delay_state_q_reg_1_ ( .D(n303), .CP(n629), .SDN(n616), 
        .Q(delay_state_q[1]) );
  DFSNQD1BWP12T30P140 data_rd_en_q_reg ( .D(n362), .CP(n629), .SDN(n612), .Q(
        data_rd_en_q) );
  DFSNQD1BWP12T30P140 command_q_reg_2_ ( .D(n297), .CP(n629), .SDN(n614), .Q(
        sdram_ras_o) );
  DFSNQD1BWP12T30P140 command_q_reg_1_ ( .D(n296), .CP(n629), .SDN(n612), .Q(
        sdram_cas_o) );
  DFSNQD1BWP12T30P140 command_q_reg_0_ ( .D(n295), .CP(n629), .SDN(n614), .Q(
        sdram_we_o) );
  DFCNQD1BWP12T30P140 ack_q_reg ( .D(N390), .CP(n629), .CDN(n612), .Q(ack_o)
         );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_0_ ( .D(N230), .CP(n629), .CDN(n619), 
        .Q(refresh_timer_q[0]) );
  DFCNQD1BWP12T30P140 addr_q_reg_10_ ( .D(n292), .CP(n622), .CDN(n617), .Q(
        sdram_addr_o[10]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_3_ ( .D(target_state_r[3]), .CP(n626), 
        .CDN(n620), .Q(target_state_q[3]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_3_ ( .D(n305), .CP(n623), .CDN(n618), 
        .Q(delay_state_q[3]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_2_ ( .D(n304), .CP(n623), .CDN(n618), 
        .Q(delay_state_q[2]) );
  DFCNQD1BWP12T30P140 dqm_q_reg_1_ ( .D(n299), .CP(n623), .CDN(n617), .Q(
        sdram_dqm_o[1]) );
  DFCNQD1BWP12T30P140 dqm_q_reg_0_ ( .D(n300), .CP(n623), .CDN(n617), .Q(
        sdram_dqm_o[0]) );
  DFCNQD1BWP12T30P140 addr_q_reg_8_ ( .D(n290), .CP(n625), .CDN(n617), .Q(
        sdram_addr_o[8]) );
  DFCNQD1BWP12T30P140 addr_q_reg_7_ ( .D(n289), .CP(n628), .CDN(n617), .Q(
        sdram_addr_o[7]) );
  DFCNQD1BWP12T30P140 addr_q_reg_6_ ( .D(n288), .CP(n624), .CDN(n616), .Q(
        sdram_addr_o[6]) );
  DFCNQD1BWP12T30P140 addr_q_reg_5_ ( .D(n287), .CP(n626), .CDN(n616), .Q(
        sdram_addr_o[5]) );
  DFCNQD1BWP12T30P140 addr_q_reg_4_ ( .D(n286), .CP(n624), .CDN(n616), .Q(
        sdram_addr_o[4]) );
  DFCNQD1BWP12T30P140 addr_q_reg_3_ ( .D(n285), .CP(n623), .CDN(n616), .Q(
        sdram_addr_o[3]) );
  DFCNQD1BWP12T30P140 addr_q_reg_2_ ( .D(n284), .CP(n621), .CDN(n616), .Q(
        sdram_addr_o[2]) );
  DFCNQD1BWP12T30P140 addr_q_reg_1_ ( .D(n283), .CP(n626), .CDN(n616), .Q(
        sdram_addr_o[1]) );
  DFCNQD1BWP12T30P140 addr_q_reg_0_ ( .D(n282), .CP(n624), .CDN(n616), .Q(
        sdram_addr_o[0]) );
  DFCNQD1BWP12T30P140 cke_q_reg ( .D(n279), .CP(n624), .CDN(n616), .Q(
        sdram_cke_o) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_15_ ( .D(sample_data0_q[15]), .CP(n624), .CDN(n615), .Q(data_o[31]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_14_ ( .D(sample_data0_q[14]), .CP(n625), .CDN(n615), .Q(data_o[30]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_13_ ( .D(sample_data0_q[13]), .CP(n625), .CDN(n615), .Q(data_o[29]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_12_ ( .D(sample_data0_q[12]), .CP(n625), .CDN(n613), .Q(data_o[28]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_11_ ( .D(sample_data0_q[11]), .CP(n626), .CDN(n619), .Q(data_o[27]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_10_ ( .D(sample_data0_q[10]), .CP(n626), .CDN(n617), .Q(data_o[26]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_9_ ( .D(sample_data0_q[9]), .CP(n626), 
        .CDN(n614), .Q(data_o[25]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_8_ ( .D(sample_data0_q[8]), .CP(n627), 
        .CDN(n617), .Q(data_o[24]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_7_ ( .D(sample_data0_q[7]), .CP(n627), 
        .CDN(n614), .Q(data_o[23]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_6_ ( .D(sample_data0_q[6]), .CP(n627), 
        .CDN(n613), .Q(data_o[22]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_5_ ( .D(sample_data0_q[5]), .CP(n625), 
        .CDN(n613), .Q(data_o[21]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_4_ ( .D(sample_data0_q[4]), .CP(n628), 
        .CDN(n613), .Q(data_o[20]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_3_ ( .D(sample_data0_q[3]), .CP(n628), 
        .CDN(n613), .Q(data_o[19]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_2_ ( .D(sample_data0_q[2]), .CP(n628), 
        .CDN(n612), .Q(data_o[18]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_1_ ( .D(sample_data0_q[1]), .CP(n628), 
        .CDN(n612), .Q(data_o[17]) );
  DFCNQD1BWP12T30P140 addr_q_reg_12_ ( .D(n294), .CP(n623), .CDN(n617), .Q(
        sdram_addr_o[12]) );
  DFCNQD1BWP12T30P140 addr_q_reg_11_ ( .D(n293), .CP(n621), .CDN(n617), .Q(
        sdram_addr_o[11]) );
  DFCNQD1BWP12T30P140 addr_q_reg_9_ ( .D(n291), .CP(clk_i), .CDN(n617), .Q(
        sdram_addr_o[9]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_0_ ( .D(sample_data0_q[0]), .CP(n628), 
        .CDN(n612), .Q(data_o[16]) );
  DFCNQD1BWP12T30P140 command_q_reg_3_ ( .D(n298), .CP(n623), .CDN(n617), .Q(
        sdram_cs_o) );
  DFCNQD1BWP12T30P140 bank_q_reg_1_ ( .D(n281), .CP(n624), .CDN(n616), .Q(
        sdram_ba_o[1]) );
  DFCNQD1BWP12T30P140 bank_q_reg_0_ ( .D(n280), .CP(n624), .CDN(n616), .Q(
        sdram_ba_o[0]) );
  DFCNQD1BWP12T30P140 delay_q_reg_1_ ( .D(delay_r[1]), .CP(n621), .CDN(n616), 
        .Q(delay_q[1]) );
  DFCNQD1BWP12T30P140 delay_q_reg_3_ ( .D(delay_r[3]), .CP(n621), .CDN(n615), 
        .Q(delay_q[3]) );
  DFCNQD1BWP12T30P140 delay_q_reg_2_ ( .D(delay_r[2]), .CP(n621), .CDN(n246), 
        .Q(delay_q[2]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__0_ ( .D(n358), .CP(n621), .CDN(n246), 
        .Q(active_row_q[0]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__12_ ( .D(n357), .CP(n621), .CDN(n617), .Q(active_row_q[12]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__11_ ( .D(n356), .CP(n621), .CDN(n618), .Q(active_row_q[11]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__10_ ( .D(n355), .CP(n622), .CDN(n620), .Q(active_row_q[10]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__9_ ( .D(n354), .CP(n625), .CDN(n246), 
        .Q(active_row_q[9]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__8_ ( .D(n353), .CP(n628), .CDN(n613), 
        .Q(active_row_q[8]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__7_ ( .D(n352), .CP(clk_i), .CDN(n612), .Q(active_row_q[7]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__6_ ( .D(n351), .CP(n622), .CDN(n614), 
        .Q(active_row_q[6]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__5_ ( .D(n350), .CP(n624), .CDN(n616), 
        .Q(active_row_q[5]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__4_ ( .D(n349), .CP(n623), .CDN(n616), 
        .Q(active_row_q[4]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__3_ ( .D(n348), .CP(n621), .CDN(n615), 
        .Q(active_row_q[3]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__2_ ( .D(n347), .CP(clk_i), .CDN(n617), .Q(active_row_q[2]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__1_ ( .D(n346), .CP(clk_i), .CDN(n618), .Q(active_row_q[1]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__0_ ( .D(n345), .CP(n627), .CDN(n246), 
        .Q(active_row_q[13]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__12_ ( .D(n344), .CP(n627), .CDN(n620), .Q(active_row_q[25]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__11_ ( .D(n343), .CP(n626), .CDN(n613), .Q(active_row_q[24]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__10_ ( .D(n342), .CP(n622), .CDN(n612), .Q(active_row_q[23]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__9_ ( .D(n341), .CP(n625), .CDN(n614), 
        .Q(active_row_q[22]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__8_ ( .D(n340), .CP(n628), .CDN(n615), 
        .Q(active_row_q[21]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__7_ ( .D(n339), .CP(clk_i), .CDN(n616), .Q(active_row_q[20]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__6_ ( .D(n338), .CP(clk_i), .CDN(n615), .Q(active_row_q[19]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__5_ ( .D(n337), .CP(n624), .CDN(n617), 
        .Q(active_row_q[18]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__4_ ( .D(n336), .CP(n623), .CDN(n618), 
        .Q(active_row_q[17]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__3_ ( .D(n335), .CP(n621), .CDN(n619), 
        .Q(active_row_q[16]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__2_ ( .D(n334), .CP(clk_i), .CDN(n620), .Q(active_row_q[15]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__1_ ( .D(n333), .CP(clk_i), .CDN(n613), .Q(active_row_q[14]) );
  DFCNQD1BWP12T30P140 dqm_buffer_q_reg_1_ ( .D(n302), .CP(n623), .CDN(n617), 
        .Q(dqm_buffer_q[1]) );
  DFCNQD1BWP12T30P140 dqm_buffer_q_reg_0_ ( .D(n301), .CP(n623), .CDN(n617), 
        .Q(dqm_buffer_q[0]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__0_ ( .D(n332), .CP(n623), .CDN(n614), 
        .Q(active_row_q[26]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__12_ ( .D(n331), .CP(n621), .CDN(n618), .Q(active_row_q[38]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__11_ ( .D(n330), .CP(clk_i), .CDN(
        n619), .Q(active_row_q[37]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__10_ ( .D(n329), .CP(n627), .CDN(n619), .Q(active_row_q[36]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__9_ ( .D(n328), .CP(n626), .CDN(n619), 
        .Q(active_row_q[35]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__8_ ( .D(n327), .CP(n622), .CDN(n619), 
        .Q(active_row_q[34]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__7_ ( .D(n326), .CP(n625), .CDN(n619), 
        .Q(active_row_q[33]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__6_ ( .D(n325), .CP(n628), .CDN(n619), 
        .Q(active_row_q[32]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__5_ ( .D(n324), .CP(n624), .CDN(n619), 
        .Q(active_row_q[31]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__4_ ( .D(n323), .CP(n623), .CDN(n619), 
        .Q(active_row_q[30]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__3_ ( .D(n322), .CP(n621), .CDN(n619), 
        .Q(active_row_q[29]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__2_ ( .D(n321), .CP(n622), .CDN(n619), 
        .Q(active_row_q[28]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__1_ ( .D(n320), .CP(n622), .CDN(n619), 
        .Q(active_row_q[27]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__0_ ( .D(n319), .CP(n622), .CDN(n619), 
        .Q(active_row_q[39]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__12_ ( .D(n318), .CP(n622), .CDN(n619), .Q(active_row_q[51]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__11_ ( .D(n317), .CP(n622), .CDN(n618), .Q(active_row_q[50]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__10_ ( .D(n316), .CP(n622), .CDN(n618), .Q(active_row_q[49]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__9_ ( .D(n315), .CP(n622), .CDN(n618), 
        .Q(active_row_q[48]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__8_ ( .D(n314), .CP(n622), .CDN(n618), 
        .Q(active_row_q[47]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__7_ ( .D(n313), .CP(n622), .CDN(n618), 
        .Q(active_row_q[46]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__6_ ( .D(n312), .CP(n622), .CDN(n618), 
        .Q(active_row_q[45]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__5_ ( .D(n311), .CP(n622), .CDN(n618), 
        .Q(active_row_q[44]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__4_ ( .D(n310), .CP(n622), .CDN(n618), 
        .Q(active_row_q[43]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__3_ ( .D(n309), .CP(n623), .CDN(n618), 
        .Q(active_row_q[42]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__2_ ( .D(n308), .CP(n623), .CDN(n618), 
        .Q(active_row_q[41]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__1_ ( .D(n307), .CP(n623), .CDN(n618), 
        .Q(active_row_q[40]) );
  DFCNQD1BWP12T30P140 rd_q_reg_3_ ( .D(rd_q[2]), .CP(n624), .CDN(n615), .Q(
        rd_q[3]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_0_ ( .D(target_state_r[0]), .CP(n621), 
        .CDN(n246), .Q(target_state_q[0]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_0_ ( .D(n306), .CP(n623), .CDN(n617), 
        .Q(delay_state_q[0]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_15_ ( .D(n247), .CP(n624), .CDN(n615), 
        .Q(data_o[15]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_14_ ( .D(n248), .CP(n625), .CDN(n615), 
        .Q(data_o[14]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_13_ ( .D(n249), .CP(n625), .CDN(n615), 
        .Q(data_o[13]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_12_ ( .D(n250), .CP(n625), .CDN(n620), 
        .Q(data_o[12]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_11_ ( .D(n251), .CP(n626), .CDN(n614), 
        .Q(data_o[11]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_10_ ( .D(n252), .CP(n626), .CDN(n612), 
        .Q(data_o[10]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_9_ ( .D(n253), .CP(n626), .CDN(n613), 
        .Q(data_o[9]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_8_ ( .D(n254), .CP(n627), .CDN(n614), 
        .Q(data_o[8]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_7_ ( .D(n255), .CP(n627), .CDN(n614), 
        .Q(data_o[7]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_6_ ( .D(n256), .CP(n627), .CDN(n614), 
        .Q(data_o[6]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_5_ ( .D(n257), .CP(n624), .CDN(n613), 
        .Q(data_o[5]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_4_ ( .D(n258), .CP(n623), .CDN(n613), 
        .Q(data_o[4]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_3_ ( .D(n259), .CP(n621), .CDN(n613), 
        .Q(data_o[3]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_2_ ( .D(n260), .CP(n628), .CDN(n612), 
        .Q(data_o[2]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_1_ ( .D(n261), .CP(n628), .CDN(n612), 
        .Q(data_o[1]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_0_ ( .D(n278), .CP(n628), .CDN(n612), 
        .Q(data_o[0]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_11_ ( .D(N241), .CP(n622), .CDN(n620), .Q(refresh_timer_q[11]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_13_ ( .D(N243), .CP(n625), .CDN(n620), .Q(refresh_timer_q[13]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_16_ ( .D(N246), .CP(n628), .CDN(n620), .Q(refresh_timer_q[16]) );
  DFCNQD1BWP12T30P140 delay_q_reg_0_ ( .D(delay_r[0]), .CP(n621), .CDN(n246), 
        .Q(delay_q[0]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_10_ ( .D(N240), .CP(n624), .CDN(n620), .Q(refresh_timer_q[10]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_2_ ( .D(target_state_r[2]), .CP(n621), 
        .CDN(n246), .Q(target_state_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_14_ ( .D(N244), .CP(n627), .CDN(n620), .Q(refresh_timer_q[14]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_3_ ( .D(n359), .CP(n624), .CDN(n620), .Q(
        row_open_q[3]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_0_ ( .D(n364), .CP(n623), .CDN(n620), .Q(
        row_open_q[0]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_1_ ( .D(n361), .CP(clk_i), .CDN(n612), 
        .Q(row_open_q[1]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_2_ ( .D(n360), .CP(clk_i), .CDN(n619), 
        .Q(row_open_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_15_ ( .D(N245), .CP(n621), .CDN(n620), .Q(refresh_timer_q[15]) );
  DFCNQD1BWP12T30P140 refresh_q_reg ( .D(n363), .CP(n621), .CDN(n246), .Q(
        refresh_q) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_4_ ( .D(N234), .CP(n626), .CDN(n620), 
        .Q(refresh_timer_q[4]) );
  DFCNQD1BWP12T30P140 rd_q_reg_0_ ( .D(n365), .CP(n624), .CDN(n616), .Q(
        rd_q[0]) );
  DFCNQD1BWP12T30P140 rd_q_reg_1_ ( .D(rd_q[0]), .CP(n624), .CDN(n616), .Q(
        rd_q[1]) );
  DFCNQD1BWP12T30P140 rd_q_reg_2_ ( .D(rd_q[1]), .CP(n624), .CDN(n616), .Q(
        rd_q[2]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_15_ ( .D(sdram_data_io[15]), .CP(n624), .CDN(n615), .Q(sample_data0_q[15]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_14_ ( .D(sdram_data_io[14]), .CP(n625), .CDN(n615), .Q(sample_data0_q[14]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_13_ ( .D(sdram_data_io[13]), .CP(n625), .CDN(n615), .Q(sample_data0_q[13]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_12_ ( .D(sdram_data_io[12]), .CP(n625), .CDN(n619), .Q(sample_data0_q[12]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_11_ ( .D(sdram_data_io[11]), .CP(n626), .CDN(n617), .Q(sample_data0_q[11]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_10_ ( .D(sdram_data_io[10]), .CP(n626), .CDN(n616), .Q(sample_data0_q[10]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_9_ ( .D(sdram_data_io[9]), .CP(n626), 
        .CDN(n614), .Q(sample_data0_q[9]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_8_ ( .D(sdram_data_io[8]), .CP(n627), 
        .CDN(n614), .Q(sample_data0_q[8]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_7_ ( .D(sdram_data_io[7]), .CP(n627), 
        .CDN(n614), .Q(sample_data0_q[7]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_6_ ( .D(sdram_data_io[6]), .CP(n627), 
        .CDN(n614), .Q(sample_data0_q[6]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_5_ ( .D(sdram_data_io[5]), .CP(clk_i), 
        .CDN(n613), .Q(sample_data0_q[5]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_4_ ( .D(sdram_data_io[4]), .CP(n627), 
        .CDN(n613), .Q(sample_data0_q[4]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_3_ ( .D(sdram_data_io[3]), .CP(n626), 
        .CDN(n613), .Q(sample_data0_q[3]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_2_ ( .D(sdram_data_io[2]), .CP(n628), 
        .CDN(n612), .Q(sample_data0_q[2]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_1_ ( .D(sdram_data_io[1]), .CP(n628), 
        .CDN(n612), .Q(sample_data0_q[1]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_0_ ( .D(sdram_data_io[0]), .CP(n628), 
        .CDN(n612), .Q(sample_data0_q[0]) );
  DFCNQD1BWP12T30P140 state_q_reg_2_ ( .D(N209), .CP(n627), .CDN(n620), .Q(
        state_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_1_ ( .D(N231), .CP(n627), .CDN(n620), 
        .Q(refresh_timer_q[1]) );
  DFCNQD1BWP12T30P140 state_q_reg_0_ ( .D(N207), .CP(n623), .CDN(n620), .Q(
        state_q[0]) );
  DFCNQD1BWP12T30P140 state_q_reg_3_ ( .D(N210), .CP(n621), .CDN(n246), .Q(
        state_q[3]) );
  DFCNQD1BWP12T30P140 state_q_reg_1_ ( .D(N208), .CP(n621), .CDN(n246), .Q(
        state_q[1]) );
  DFCNQD1BWP12T30P140 data_q_reg_15_ ( .D(n262), .CP(n624), .CDN(n615), .Q(
        data_q[15]) );
  DFCNQD1BWP12T30P140 data_q_reg_14_ ( .D(n263), .CP(n625), .CDN(n615), .Q(
        data_q[14]) );
  DFCNQD1BWP12T30P140 data_q_reg_13_ ( .D(n264), .CP(n625), .CDN(n615), .Q(
        data_q[13]) );
  DFCNQD1BWP12T30P140 data_q_reg_12_ ( .D(n265), .CP(n625), .CDN(n615), .Q(
        data_q[12]) );
  DFCNQD1BWP12T30P140 data_q_reg_11_ ( .D(n266), .CP(n626), .CDN(n618), .Q(
        data_q[11]) );
  DFCNQD1BWP12T30P140 data_q_reg_10_ ( .D(n267), .CP(n626), .CDN(n246), .Q(
        data_q[10]) );
  DFCNQD1BWP12T30P140 data_q_reg_9_ ( .D(n268), .CP(n626), .CDN(n614), .Q(
        data_q[9]) );
  DFCNQD1BWP12T30P140 data_q_reg_8_ ( .D(n269), .CP(n627), .CDN(n614), .Q(
        data_q[8]) );
  DFCNQD1BWP12T30P140 data_q_reg_7_ ( .D(n270), .CP(n627), .CDN(n614), .Q(
        data_q[7]) );
  DFCNQD1BWP12T30P140 data_q_reg_6_ ( .D(n271), .CP(n627), .CDN(n614), .Q(
        data_q[6]) );
  DFCNQD1BWP12T30P140 data_q_reg_5_ ( .D(n272), .CP(n622), .CDN(n613), .Q(
        data_q[5]) );
  DFCNQD1BWP12T30P140 data_q_reg_4_ ( .D(n273), .CP(n625), .CDN(n613), .Q(
        data_q[4]) );
  DFCNQD1BWP12T30P140 data_q_reg_3_ ( .D(n274), .CP(n628), .CDN(n613), .Q(
        data_q[3]) );
  DFCNQD1BWP12T30P140 data_q_reg_2_ ( .D(n275), .CP(n628), .CDN(n612), .Q(
        data_q[2]) );
  DFCNQD1BWP12T30P140 data_q_reg_1_ ( .D(n276), .CP(n628), .CDN(n612), .Q(
        data_q[1]) );
  DFCNQD1BWP12T30P140 data_q_reg_0_ ( .D(n277), .CP(n628), .CDN(n612), .Q(
        data_q[0]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_0_ ( .I(data_q[0]), .OE(n2), .Z(
        sdram_data_io[0]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_1_ ( .I(data_q[1]), .OE(n2), .Z(
        sdram_data_io[1]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_2_ ( .I(data_q[2]), .OE(n2), .Z(
        sdram_data_io[2]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_3_ ( .I(data_q[3]), .OE(n2), .Z(
        sdram_data_io[3]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_4_ ( .I(data_q[4]), .OE(n2), .Z(
        sdram_data_io[4]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_5_ ( .I(data_q[5]), .OE(n2), .Z(
        sdram_data_io[5]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_6_ ( .I(data_q[6]), .OE(n2), .Z(
        sdram_data_io[6]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_7_ ( .I(data_q[7]), .OE(n2), .Z(
        sdram_data_io[7]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_8_ ( .I(data_q[8]), .OE(n2), .Z(
        sdram_data_io[8]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_9_ ( .I(data_q[9]), .OE(n2), .Z(
        sdram_data_io[9]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_10_ ( .I(data_q[10]), .OE(n2), .Z(
        sdram_data_io[10]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_11_ ( .I(data_q[11]), .OE(n2), .Z(
        sdram_data_io[11]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_12_ ( .I(data_q[12]), .OE(n2), .Z(
        sdram_data_io[12]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_13_ ( .I(data_q[13]), .OE(n2), .Z(
        sdram_data_io[13]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_14_ ( .I(data_q[14]), .OE(n2), .Z(
        sdram_data_io[14]) );
  BUFTD4BWP12T30P140 sdram_data_io_tri_15_ ( .I(data_q[15]), .OE(n2), .Z(
        sdram_data_io[15]) );
  AOI221D0BWP12T30P140 U369 ( .A1(n522), .A2(n458), .B1(n451), .B2(n458), .C(
        n553), .ZN(N243) );
  AOI221D0BWP12T30P140 U370 ( .A1(n588), .A2(n572), .B1(n571), .B2(n572), .C(
        n585), .ZN(N209) );
  AOI221D0BWP12T30P140 U371 ( .A1(n588), .A2(n545), .B1(n544), .B2(n545), .C(
        n585), .ZN(N208) );
  AOI221D0BWP12T30P140 U372 ( .A1(n588), .A2(n587), .B1(n586), .B2(n587), .C(
        n585), .ZN(N210) );
  AOI221D0BWP12T30P140 U373 ( .A1(n460), .A2(n523), .B1(n452), .B2(n523), .C(
        n553), .ZN(N241) );
  AOI221D0BWP12T30P140 U374 ( .A1(n556), .A2(n555), .B1(n554), .B2(n555), .C(
        n553), .ZN(N239) );
  AOI221D0BWP12T30P140 U375 ( .A1(n526), .A2(n548), .B1(n525), .B2(n548), .C(
        n553), .ZN(N235) );
  AOI221D0BWP12T30P140 U376 ( .A1(n529), .A2(n528), .B1(n527), .B2(n528), .C(
        n553), .ZN(N234) );
  NR3D0BWP12T30P140 U377 ( .A1(state_q[3]), .A2(state_q[0]), .A3(n539), .ZN(
        n568) );
  INVD0BWP12T30P140 U378 ( .I(state_q[2]), .ZN(n539) );
  NR2D0BWP12T30P140 U379 ( .A1(n594), .A2(rd_q[3]), .ZN(n470) );
  INVD0BWP12T30P140 U380 ( .I(n580), .ZN(n598) );
  INVD0BWP12T30P140 U381 ( .I(state_q[1]), .ZN(n436) );
  NR3D0BWP12T30P140 U382 ( .A1(state_q[0]), .A2(state_q[2]), .A3(n436), .ZN(
        n438) );
  INVD0BWP12T30P140 U383 ( .I(state_q[3]), .ZN(n538) );
  AN2D0BWP12T30P140 U384 ( .A1(n438), .A2(n538), .Z(n533) );
  ND2D0BWP12T30P140 U385 ( .A1(refresh_q), .A2(n533), .ZN(n481) );
  INVD0BWP12T30P140 U386 ( .I(addr_i[11]), .ZN(n367) );
  NR2D0BWP12T30P140 U387 ( .A1(addr_i[10]), .A2(n367), .ZN(n443) );
  INVD0BWP12T30P140 U388 ( .I(addr_i[10]), .ZN(n366) );
  NR2D0BWP12T30P140 U389 ( .A1(addr_i[11]), .A2(n366), .ZN(n441) );
  AOI22D0BWP12T30P140 U390 ( .A1(n443), .A2(active_row_q[23]), .B1(n441), .B2(
        active_row_q[36]), .ZN(n369) );
  NR2D0BWP12T30P140 U391 ( .A1(n367), .A2(n366), .ZN(n447) );
  NR2D0BWP12T30P140 U392 ( .A1(addr_i[11]), .A2(addr_i[10]), .ZN(n427) );
  AOI22D0BWP12T30P140 U393 ( .A1(n447), .A2(active_row_q[10]), .B1(n427), .B2(
        active_row_q[49]), .ZN(n368) );
  ND2D0BWP12T30P140 U394 ( .A1(n369), .A2(n368), .ZN(n374) );
  INVD0BWP12T30P140 U395 ( .I(addr_i[22]), .ZN(n562) );
  AOI22D0BWP12T30P140 U396 ( .A1(n443), .A2(active_row_q[25]), .B1(n441), .B2(
        active_row_q[38]), .ZN(n371) );
  AOI22D0BWP12T30P140 U397 ( .A1(n447), .A2(active_row_q[12]), .B1(n427), .B2(
        active_row_q[51]), .ZN(n370) );
  ND2D0BWP12T30P140 U398 ( .A1(n371), .A2(n370), .ZN(n373) );
  INVD0BWP12T30P140 U399 ( .I(addr_i[24]), .ZN(n492) );
  OAI22D0BWP12T30P140 U400 ( .A1(n492), .A2(n373), .B1(n562), .B2(n374), .ZN(
        n372) );
  AOI221D0BWP12T30P140 U401 ( .A1(n374), .A2(n562), .B1(n373), .B2(n492), .C(
        n372), .ZN(n423) );
  INVD0BWP12T30P140 U402 ( .I(addr_i[18]), .ZN(n504) );
  AOI22D0BWP12T30P140 U403 ( .A1(n447), .A2(active_row_q[6]), .B1(n427), .B2(
        active_row_q[45]), .ZN(n376) );
  AOI22D0BWP12T30P140 U404 ( .A1(n443), .A2(active_row_q[19]), .B1(n441), .B2(
        active_row_q[32]), .ZN(n375) );
  ND2D0BWP12T30P140 U405 ( .A1(n376), .A2(n375), .ZN(n386) );
  AOI22D0BWP12T30P140 U406 ( .A1(n443), .A2(active_row_q[17]), .B1(n441), .B2(
        active_row_q[30]), .ZN(n378) );
  AOI22D0BWP12T30P140 U407 ( .A1(n447), .A2(active_row_q[4]), .B1(n427), .B2(
        active_row_q[43]), .ZN(n377) );
  ND2D0BWP12T30P140 U408 ( .A1(n378), .A2(n377), .ZN(n383) );
  INVD0BWP12T30P140 U409 ( .I(addr_i[16]), .ZN(n503) );
  AOI22D0BWP12T30P140 U410 ( .A1(n443), .A2(active_row_q[24]), .B1(n441), .B2(
        active_row_q[37]), .ZN(n380) );
  AOI22D0BWP12T30P140 U411 ( .A1(n447), .A2(active_row_q[11]), .B1(n427), .B2(
        active_row_q[50]), .ZN(n379) );
  ND2D0BWP12T30P140 U412 ( .A1(n380), .A2(n379), .ZN(n382) );
  INVD0BWP12T30P140 U413 ( .I(addr_i[23]), .ZN(n494) );
  OAI22D0BWP12T30P140 U414 ( .A1(n494), .A2(n382), .B1(n503), .B2(n383), .ZN(
        n381) );
  AOI221D0BWP12T30P140 U415 ( .A1(n383), .A2(n503), .B1(n382), .B2(n494), .C(
        n381), .ZN(n384) );
  OAI21D0BWP12T30P140 U416 ( .A1(n504), .A2(n386), .B(n384), .ZN(n385) );
  AOI21D0BWP12T30P140 U417 ( .A1(n504), .A2(n386), .B(n385), .ZN(n422) );
  AOI22D0BWP12T30P140 U418 ( .A1(n443), .A2(active_row_q[13]), .B1(n441), .B2(
        active_row_q[26]), .ZN(n388) );
  AOI22D0BWP12T30P140 U419 ( .A1(n447), .A2(active_row_q[0]), .B1(n427), .B2(
        active_row_q[39]), .ZN(n387) );
  ND2D0BWP12T30P140 U420 ( .A1(n388), .A2(n387), .ZN(n393) );
  INVD0BWP12T30P140 U421 ( .I(addr_i[12]), .ZN(n495) );
  AOI22D0BWP12T30P140 U422 ( .A1(n443), .A2(active_row_q[22]), .B1(n441), .B2(
        active_row_q[35]), .ZN(n390) );
  AOI22D0BWP12T30P140 U423 ( .A1(n447), .A2(active_row_q[9]), .B1(n427), .B2(
        active_row_q[48]), .ZN(n389) );
  ND2D0BWP12T30P140 U424 ( .A1(n390), .A2(n389), .ZN(n392) );
  INVD0BWP12T30P140 U425 ( .I(addr_i[21]), .ZN(n498) );
  OAI22D0BWP12T30P140 U426 ( .A1(n498), .A2(n392), .B1(n495), .B2(n393), .ZN(
        n391) );
  AOI221D0BWP12T30P140 U427 ( .A1(n393), .A2(n495), .B1(n392), .B2(n498), .C(
        n391), .ZN(n418) );
  AOI22D0BWP12T30P140 U428 ( .A1(n443), .A2(active_row_q[16]), .B1(n441), .B2(
        active_row_q[29]), .ZN(n395) );
  AOI22D0BWP12T30P140 U429 ( .A1(n447), .A2(active_row_q[3]), .B1(n427), .B2(
        active_row_q[42]), .ZN(n394) );
  ND2D0BWP12T30P140 U430 ( .A1(n395), .A2(n394), .ZN(n400) );
  INVD0BWP12T30P140 U431 ( .I(addr_i[15]), .ZN(n501) );
  AOI22D0BWP12T30P140 U432 ( .A1(n443), .A2(active_row_q[15]), .B1(n441), .B2(
        active_row_q[28]), .ZN(n397) );
  AOI22D0BWP12T30P140 U433 ( .A1(n447), .A2(active_row_q[2]), .B1(n427), .B2(
        active_row_q[41]), .ZN(n396) );
  ND2D0BWP12T30P140 U434 ( .A1(n397), .A2(n396), .ZN(n399) );
  INVD0BWP12T30P140 U435 ( .I(addr_i[14]), .ZN(n499) );
  OAI22D0BWP12T30P140 U436 ( .A1(n499), .A2(n399), .B1(n501), .B2(n400), .ZN(
        n398) );
  AOI221D0BWP12T30P140 U437 ( .A1(n400), .A2(n501), .B1(n399), .B2(n499), .C(
        n398), .ZN(n417) );
  AOI22D0BWP12T30P140 U438 ( .A1(n443), .A2(active_row_q[14]), .B1(n441), .B2(
        active_row_q[27]), .ZN(n402) );
  AOI22D0BWP12T30P140 U439 ( .A1(n447), .A2(active_row_q[1]), .B1(n427), .B2(
        active_row_q[40]), .ZN(n401) );
  ND2D0BWP12T30P140 U440 ( .A1(n402), .A2(n401), .ZN(n407) );
  INVD0BWP12T30P140 U441 ( .I(addr_i[13]), .ZN(n497) );
  AOI22D0BWP12T30P140 U442 ( .A1(n443), .A2(active_row_q[18]), .B1(n441), .B2(
        active_row_q[31]), .ZN(n404) );
  AOI22D0BWP12T30P140 U443 ( .A1(n447), .A2(active_row_q[5]), .B1(n427), .B2(
        active_row_q[44]), .ZN(n403) );
  ND2D0BWP12T30P140 U444 ( .A1(n404), .A2(n403), .ZN(n406) );
  INVD0BWP12T30P140 U445 ( .I(addr_i[17]), .ZN(n570) );
  OAI22D0BWP12T30P140 U446 ( .A1(n570), .A2(n406), .B1(n497), .B2(n407), .ZN(
        n405) );
  AOI221D0BWP12T30P140 U447 ( .A1(n407), .A2(n497), .B1(n406), .B2(n570), .C(
        n405), .ZN(n416) );
  AOI22D0BWP12T30P140 U448 ( .A1(n443), .A2(active_row_q[20]), .B1(n441), .B2(
        active_row_q[33]), .ZN(n409) );
  AOI22D0BWP12T30P140 U449 ( .A1(n447), .A2(active_row_q[7]), .B1(n427), .B2(
        active_row_q[46]), .ZN(n408) );
  ND2D0BWP12T30P140 U450 ( .A1(n409), .A2(n408), .ZN(n414) );
  INVD0BWP12T30P140 U451 ( .I(addr_i[19]), .ZN(n502) );
  AOI22D0BWP12T30P140 U452 ( .A1(n443), .A2(active_row_q[21]), .B1(n441), .B2(
        active_row_q[34]), .ZN(n411) );
  AOI22D0BWP12T30P140 U453 ( .A1(n447), .A2(active_row_q[8]), .B1(n427), .B2(
        active_row_q[47]), .ZN(n410) );
  ND2D0BWP12T30P140 U454 ( .A1(n411), .A2(n410), .ZN(n413) );
  INVD0BWP12T30P140 U455 ( .I(addr_i[20]), .ZN(n500) );
  OAI22D0BWP12T30P140 U456 ( .A1(n500), .A2(n413), .B1(n502), .B2(n414), .ZN(
        n412) );
  AOI221D0BWP12T30P140 U457 ( .A1(n414), .A2(n502), .B1(n413), .B2(n500), .C(
        n412), .ZN(n415) );
  AN4D0BWP12T30P140 U458 ( .A1(n418), .A2(n417), .A3(n416), .A4(n415), .Z(n421) );
  AOI22D0BWP12T30P140 U459 ( .A1(n443), .A2(row_open_q[2]), .B1(n441), .B2(
        row_open_q[1]), .ZN(n420) );
  AOI22D0BWP12T30P140 U460 ( .A1(n447), .A2(row_open_q[3]), .B1(n427), .B2(
        row_open_q[0]), .ZN(n419) );
  ND2D0BWP12T30P140 U461 ( .A1(n420), .A2(n419), .ZN(n583) );
  ND4D0BWP12T30P140 U462 ( .A1(n423), .A2(n422), .A3(n421), .A4(n583), .ZN(
        n424) );
  INVD0BWP12T30P140 U463 ( .I(n424), .ZN(n537) );
  ND2D0BWP12T30P140 U464 ( .A1(stb_i), .A2(cyc_i), .ZN(n425) );
  NR2D0BWP12T30P140 U465 ( .A1(refresh_q), .A2(n425), .ZN(n536) );
  ND2D0BWP12T30P140 U466 ( .A1(n536), .A2(n533), .ZN(n482) );
  NR2D0BWP12T30P140 U467 ( .A1(n537), .A2(n482), .ZN(n611) );
  AO21D0BWP12T30P140 U468 ( .A1(target_state_q[2]), .A2(n481), .B(n611), .Z(
        target_state_r[2]) );
  NR2D0BWP12T30P140 U469 ( .A1(n424), .A2(n482), .ZN(n516) );
  INVD0BWP12T30P140 U470 ( .I(refresh_q), .ZN(n520) );
  AO31D0BWP12T30P140 U471 ( .A1(n520), .A2(n425), .A3(n533), .B(state_q[3]), 
        .Z(n509) );
  INR3D1BWP12T30P140 U472 ( .A1(n438), .B1(n516), .B2(n509), .ZN(n426) );
  INVD0BWP12T30P140 U473 ( .I(target_state_q[3]), .ZN(n581) );
  OAI21D0BWP12T30P140 U474 ( .A1(n426), .A2(n581), .B(n481), .ZN(
        target_state_r[3]) );
  INVD0BWP12T30P140 U475 ( .I(target_state_q[0]), .ZN(n507) );
  OAI21D0BWP12T30P140 U476 ( .A1(n426), .A2(n507), .B(n481), .ZN(
        target_state_r[0]) );
  IND2D1BWP12T30P140 U477 ( .A1(n426), .B1(target_state_q[1]), .ZN(n610) );
  IND4D1BWP12T30P140 U478 ( .A1(target_state_r[2]), .B1(target_state_r[3]), 
        .B2(target_state_r[0]), .B3(n610), .ZN(n455) );
  ND2D0BWP12T30P140 U479 ( .A1(n539), .A2(n436), .ZN(n437) );
  INVD0BWP12T30P140 U480 ( .I(n437), .ZN(n472) );
  ND2D0BWP12T30P140 U481 ( .A1(state_q[3]), .A2(n472), .ZN(n477) );
  NR2D0BWP12T30P140 U482 ( .A1(state_q[0]), .A2(n477), .ZN(n577) );
  INVD0BWP12T30P140 U483 ( .I(n577), .ZN(n511) );
  NR2D0BWP12T30P140 U484 ( .A1(n455), .A2(n511), .ZN(n559) );
  IOA21D0BWP12T30P140 U485 ( .A1(n427), .A2(n577), .B(row_open_q[0]), .ZN(n428) );
  INVD0BWP12T30P140 U486 ( .I(state_q[0]), .ZN(n432) );
  NR2D0BWP12T30P140 U487 ( .A1(n432), .A2(state_q[3]), .ZN(n471) );
  ND3D0BWP12T30P140 U488 ( .A1(n539), .A2(state_q[1]), .A3(n471), .ZN(n580) );
  ND2D0BWP12T30P140 U489 ( .A1(n427), .A2(n598), .ZN(n488) );
  OAI21D0BWP12T30P140 U490 ( .A1(n559), .A2(n428), .B(n488), .ZN(n364) );
  INVD0BWP12T30P140 U491 ( .I(refresh_timer_q[0]), .ZN(N230) );
  INVD0BWP12T30P140 U492 ( .I(n568), .ZN(stall_o) );
  INVD0BWP12T30P140 U493 ( .I(refresh_timer_q[1]), .ZN(n517) );
  NR4D0BWP12T30P140 U494 ( .A1(refresh_timer_q[14]), .A2(refresh_timer_q[16]), 
        .A3(refresh_timer_q[7]), .A4(refresh_timer_q[6]), .ZN(n430) );
  NR4D0BWP12T30P140 U495 ( .A1(refresh_timer_q[15]), .A2(refresh_timer_q[11]), 
        .A3(refresh_timer_q[13]), .A4(refresh_timer_q[12]), .ZN(n429) );
  IND4D1BWP12T30P140 U496 ( .A1(refresh_timer_q[8]), .B1(n430), .B2(n429), 
        .B3(N230), .ZN(n431) );
  OR3D0BWP12T30P140 U497 ( .A1(refresh_timer_q[10]), .A2(refresh_timer_q[9]), 
        .A3(n431), .Z(n434) );
  NR3D0BWP12T30P140 U498 ( .A1(refresh_timer_q[2]), .A2(n517), .A3(n434), .ZN(
        n433) );
  INVD0BWP12T30P140 U499 ( .I(refresh_timer_q[5]), .ZN(n525) );
  INVD0BWP12T30P140 U500 ( .I(refresh_timer_q[4]), .ZN(n527) );
  AN4D0BWP12T30P140 U501 ( .A1(n433), .A2(n525), .A3(n527), .A4(
        refresh_timer_q[3]), .Z(n440) );
  ND3D0BWP12T30P140 U502 ( .A1(n432), .A2(n538), .A3(n472), .ZN(n567) );
  INVD0BWP12T30P140 U503 ( .I(n567), .ZN(n508) );
  ND2D0BWP12T30P140 U504 ( .A1(n440), .A2(n508), .ZN(n599) );
  NR2D0BWP12T30P140 U505 ( .A1(n432), .A2(n477), .ZN(n521) );
  INVD0BWP12T30P140 U506 ( .I(refresh_timer_q[3]), .ZN(n450) );
  ND4D0BWP12T30P140 U507 ( .A1(refresh_timer_q[5]), .A2(n433), .A3(
        refresh_timer_q[4]), .A4(n450), .ZN(n547) );
  NR4D0BWP12T30P140 U508 ( .A1(refresh_timer_q[1]), .A2(refresh_timer_q[2]), 
        .A3(refresh_timer_q[4]), .A4(n434), .ZN(n449) );
  ND3D0BWP12T30P140 U509 ( .A1(refresh_timer_q[5]), .A2(refresh_timer_q[3]), 
        .A3(n449), .ZN(n557) );
  AOI221D0BWP12T30P140 U510 ( .A1(refresh_timer_q[1]), .A2(n450), .B1(n517), 
        .B2(refresh_timer_q[3]), .C(n434), .ZN(n435) );
  ND4D0BWP12T30P140 U511 ( .A1(refresh_timer_q[2]), .A2(refresh_timer_q[4]), 
        .A3(n435), .A4(n525), .ZN(n566) );
  ND4D0BWP12T30P140 U512 ( .A1(n508), .A2(n547), .A3(n557), .A4(n566), .ZN(
        n439) );
  AN2D0BWP12T30P140 U513 ( .A1(n471), .A2(n436), .Z(n532) );
  ND2D0BWP12T30P140 U514 ( .A1(n437), .A2(state_q[3]), .ZN(n578) );
  INVD0BWP12T30P140 U515 ( .I(n578), .ZN(n483) );
  NR3D0BWP12T30P140 U516 ( .A1(n438), .A2(n532), .A3(n483), .ZN(n552) );
  OAI21D0BWP12T30P140 U517 ( .A1(n440), .A2(n439), .B(n552), .ZN(n601) );
  NR3D0BWP12T30P140 U518 ( .A1(n521), .A2(n598), .A3(n601), .ZN(n565) );
  ND2D0BWP12T30P140 U519 ( .A1(n565), .A2(stall_o), .ZN(n454) );
  INR2D1BWP12T30P140 U520 ( .A1(n599), .B1(n454), .ZN(n597) );
  ND3D0BWP12T30P140 U521 ( .A1(state_q[2]), .A2(state_q[1]), .A3(n471), .ZN(
        n607) );
  OAI21D0BWP12T30P140 U522 ( .A1(n567), .A2(n557), .B(n607), .ZN(n602) );
  INR3D1BWP12T30P140 U523 ( .A1(n597), .B1(n577), .B2(n602), .ZN(n560) );
  AN2D0BWP12T30P140 U524 ( .A1(n560), .A2(n566), .Z(n603) );
  AN2D0BWP12T30P140 U525 ( .A1(n603), .A2(sdram_cs_o), .Z(n298) );
  IOA21D0BWP12T30P140 U526 ( .A1(n441), .A2(n577), .B(row_open_q[1]), .ZN(n442) );
  ND2D0BWP12T30P140 U527 ( .A1(n441), .A2(n598), .ZN(n491) );
  OAI21D0BWP12T30P140 U528 ( .A1(n559), .A2(n442), .B(n491), .ZN(n361) );
  IOA21D0BWP12T30P140 U529 ( .A1(n443), .A2(n577), .B(row_open_q[2]), .ZN(n444) );
  ND2D0BWP12T30P140 U530 ( .A1(n443), .A2(n598), .ZN(n468) );
  OAI21D0BWP12T30P140 U531 ( .A1(n559), .A2(n444), .B(n468), .ZN(n360) );
  NR2D0BWP12T30P140 U532 ( .A1(refresh_timer_q[7]), .A2(refresh_timer_q[6]), 
        .ZN(n445) );
  INVD0BWP12T30P140 U533 ( .I(refresh_timer_q[2]), .ZN(n456) );
  ND3D0BWP12T30P140 U534 ( .A1(n517), .A2(n456), .A3(N230), .ZN(n518) );
  NR2D0BWP12T30P140 U535 ( .A1(refresh_timer_q[3]), .A2(n518), .ZN(n529) );
  ND2D0BWP12T30P140 U536 ( .A1(n529), .A2(n527), .ZN(n528) );
  INVD0BWP12T30P140 U537 ( .I(n528), .ZN(n526) );
  ND2D0BWP12T30P140 U538 ( .A1(n525), .A2(n526), .ZN(n548) );
  INVD0BWP12T30P140 U539 ( .I(n548), .ZN(n531) );
  ND2D0BWP12T30P140 U540 ( .A1(n445), .A2(n531), .ZN(n551) );
  NR2D0BWP12T30P140 U541 ( .A1(refresh_timer_q[8]), .A2(n551), .ZN(n556) );
  INVD0BWP12T30P140 U542 ( .I(refresh_timer_q[9]), .ZN(n554) );
  ND2D0BWP12T30P140 U543 ( .A1(n556), .A2(n554), .ZN(n555) );
  NR2D0BWP12T30P140 U544 ( .A1(refresh_timer_q[10]), .A2(n555), .ZN(n460) );
  INVD0BWP12T30P140 U545 ( .I(refresh_timer_q[11]), .ZN(n452) );
  ND2D0BWP12T30P140 U546 ( .A1(n460), .A2(n452), .ZN(n523) );
  NR2D0BWP12T30P140 U547 ( .A1(refresh_timer_q[12]), .A2(n523), .ZN(n522) );
  INVD0BWP12T30P140 U548 ( .I(refresh_timer_q[13]), .ZN(n451) );
  ND2D0BWP12T30P140 U549 ( .A1(n522), .A2(n451), .ZN(n458) );
  NR2D0BWP12T30P140 U550 ( .A1(refresh_timer_q[14]), .A2(n458), .ZN(n467) );
  INVD0BWP12T30P140 U551 ( .I(n467), .ZN(n446) );
  OA21D0BWP12T30P140 U552 ( .A1(refresh_timer_q[15]), .A2(n446), .B(
        refresh_timer_q[16]), .Z(N246) );
  IOA21D0BWP12T30P140 U553 ( .A1(n447), .A2(n577), .B(row_open_q[3]), .ZN(n448) );
  ND2D0BWP12T30P140 U554 ( .A1(n447), .A2(n598), .ZN(n453) );
  OAI21D0BWP12T30P140 U555 ( .A1(n559), .A2(n448), .B(n453), .ZN(n359) );
  ND3D0BWP12T30P140 U556 ( .A1(n450), .A2(n525), .A3(n449), .ZN(n519) );
  INVD0BWP12T30P140 U557 ( .I(n519), .ZN(n553) );
  MOAI22D0BWP12T30P140 U558 ( .A1(n498), .A2(n580), .B1(n597), .B2(
        sdram_addr_o[9]), .ZN(n291) );
  ND2D0BWP12T30P140 U559 ( .A1(state_q[1]), .A2(n568), .ZN(n591) );
  INVD0BWP12T30P140 U560 ( .I(n591), .ZN(n594) );
  INVD0BWP12T30P140 U561 ( .I(rd_q[3]), .ZN(n606) );
  NR2D0BWP12T30P140 U562 ( .A1(n594), .A2(n606), .ZN(n469) );
  AO222D0BWP12T30P140 U563 ( .A1(n594), .A2(data_i[16]), .B1(n469), .B2(
        data_o[16]), .C1(n470), .C2(data_o[0]), .Z(n278) );
  INVD0BWP12T30P140 U564 ( .I(n453), .ZN(n465) );
  CKBD0BWP12T30P140 U565 ( .I(n465), .Z(n464) );
  MAOI22D0BWP12T30P140 U566 ( .A1(n464), .A2(n495), .B1(active_row_q[0]), .B2(
        n464), .ZN(n358) );
  MOAI22D0BWP12T30P140 U567 ( .A1(n494), .A2(n580), .B1(n597), .B2(
        sdram_addr_o[11]), .ZN(n293) );
  NR2D0BWP12T30P140 U568 ( .A1(n577), .A2(n598), .ZN(n605) );
  AOI21D0BWP12T30P140 U569 ( .A1(n577), .A2(n455), .B(n454), .ZN(n462) );
  AOI21D0BWP12T30P140 U570 ( .A1(n605), .A2(stall_o), .B(n462), .ZN(n463) );
  AO22D0BWP12T30P140 U571 ( .A1(addr_i[11]), .A2(n463), .B1(n462), .B2(
        sdram_ba_o[1]), .Z(n281) );
  MAOI22D0BWP12T30P140 U572 ( .A1(n465), .A2(n492), .B1(active_row_q[12]), 
        .B2(n464), .ZN(n357) );
  CKBD0BWP12T30P140 U573 ( .I(n594), .Z(n592) );
  AO222D0BWP12T30P140 U574 ( .A1(n592), .A2(data_i[18]), .B1(n470), .B2(
        data_o[2]), .C1(data_o[18]), .C2(n469), .Z(n260) );
  MAOI22D0BWP12T30P140 U575 ( .A1(n465), .A2(n494), .B1(active_row_q[11]), 
        .B2(n464), .ZN(n356) );
  NR2D0BWP12T30P140 U576 ( .A1(refresh_timer_q[0]), .A2(refresh_timer_q[1]), 
        .ZN(n457) );
  OAI21D0BWP12T30P140 U577 ( .A1(n457), .A2(n456), .B(n518), .ZN(N232) );
  AO222D0BWP12T30P140 U578 ( .A1(n594), .A2(data_i[19]), .B1(n470), .B2(
        data_o[3]), .C1(data_o[19]), .C2(n469), .Z(n259) );
  MAOI22D0BWP12T30P140 U579 ( .A1(n465), .A2(n562), .B1(active_row_q[10]), 
        .B2(n464), .ZN(n355) );
  AO222D0BWP12T30P140 U580 ( .A1(n592), .A2(data_i[20]), .B1(n470), .B2(
        data_o[4]), .C1(data_o[20]), .C2(n469), .Z(n258) );
  MAOI22D0BWP12T30P140 U581 ( .A1(n465), .A2(n498), .B1(active_row_q[9]), .B2(
        n464), .ZN(n354) );
  MOAI22D0BWP12T30P140 U582 ( .A1(n492), .A2(n580), .B1(n597), .B2(
        sdram_addr_o[12]), .ZN(n294) );
  AO222D0BWP12T30P140 U583 ( .A1(n592), .A2(data_i[21]), .B1(n470), .B2(
        data_o[5]), .C1(data_o[21]), .C2(n469), .Z(n257) );
  MAOI22D0BWP12T30P140 U584 ( .A1(n465), .A2(n500), .B1(active_row_q[8]), .B2(
        n464), .ZN(n353) );
  AO222D0BWP12T30P140 U585 ( .A1(n592), .A2(data_i[22]), .B1(n470), .B2(
        data_o[6]), .C1(data_o[22]), .C2(n469), .Z(n256) );
  AOI21D0BWP12T30P140 U586 ( .A1(refresh_timer_q[14]), .A2(n458), .B(n467), 
        .ZN(n459) );
  NR2D0BWP12T30P140 U587 ( .A1(n553), .A2(n459), .ZN(N244) );
  AO222D0BWP12T30P140 U588 ( .A1(n594), .A2(data_i[17]), .B1(n470), .B2(
        data_o[1]), .C1(data_o[17]), .C2(n469), .Z(n261) );
  AO222D0BWP12T30P140 U589 ( .A1(n592), .A2(data_i[23]), .B1(n470), .B2(
        data_o[7]), .C1(data_o[23]), .C2(n469), .Z(n255) );
  MAOI22D0BWP12T30P140 U590 ( .A1(n465), .A2(n504), .B1(active_row_q[6]), .B2(
        n464), .ZN(n351) );
  AO222D0BWP12T30P140 U591 ( .A1(n592), .A2(data_i[24]), .B1(n470), .B2(
        data_o[8]), .C1(data_o[24]), .C2(n469), .Z(n254) );
  AOI21D0BWP12T30P140 U592 ( .A1(refresh_timer_q[10]), .A2(n555), .B(n460), 
        .ZN(n461) );
  NR2D0BWP12T30P140 U593 ( .A1(n553), .A2(n461), .ZN(N240) );
  MAOI22D0BWP12T30P140 U594 ( .A1(n465), .A2(n570), .B1(active_row_q[5]), .B2(
        n464), .ZN(n350) );
  AO222D0BWP12T30P140 U595 ( .A1(n592), .A2(data_i[25]), .B1(n470), .B2(
        data_o[9]), .C1(data_o[25]), .C2(n469), .Z(n253) );
  MAOI22D0BWP12T30P140 U596 ( .A1(n465), .A2(n503), .B1(active_row_q[4]), .B2(
        n465), .ZN(n349) );
  AO22D0BWP12T30P140 U597 ( .A1(addr_i[10]), .A2(n463), .B1(n462), .B2(
        sdram_ba_o[0]), .Z(n280) );
  AO222D0BWP12T30P140 U598 ( .A1(n592), .A2(data_i[26]), .B1(n470), .B2(
        data_o[10]), .C1(data_o[26]), .C2(n469), .Z(n252) );
  MAOI22D0BWP12T30P140 U599 ( .A1(n465), .A2(n501), .B1(active_row_q[3]), .B2(
        n464), .ZN(n348) );
  AO222D0BWP12T30P140 U600 ( .A1(n592), .A2(data_i[27]), .B1(n470), .B2(
        data_o[11]), .C1(data_o[27]), .C2(n469), .Z(n251) );
  MAOI22D0BWP12T30P140 U601 ( .A1(n465), .A2(n499), .B1(active_row_q[2]), .B2(
        n464), .ZN(n347) );
  AO222D0BWP12T30P140 U602 ( .A1(n592), .A2(data_i[28]), .B1(n470), .B2(
        data_o[12]), .C1(data_o[28]), .C2(n469), .Z(n250) );
  MAOI22D0BWP12T30P140 U603 ( .A1(n465), .A2(n502), .B1(active_row_q[7]), .B2(
        n464), .ZN(n352) );
  MAOI22D0BWP12T30P140 U604 ( .A1(n465), .A2(n497), .B1(active_row_q[1]), .B2(
        n464), .ZN(n346) );
  OAI21D0BWP12T30P140 U605 ( .A1(refresh_timer_q[15]), .A2(n467), .B(n519), 
        .ZN(n466) );
  AOI21D0BWP12T30P140 U606 ( .A1(refresh_timer_q[15]), .A2(n467), .B(n466), 
        .ZN(N245) );
  AO222D0BWP12T30P140 U607 ( .A1(n592), .A2(data_i[29]), .B1(n470), .B2(
        data_o[13]), .C1(data_o[29]), .C2(n469), .Z(n249) );
  INVD0BWP12T30P140 U608 ( .I(n468), .ZN(n490) );
  CKBD0BWP12T30P140 U609 ( .I(n490), .Z(n489) );
  MAOI22D0BWP12T30P140 U610 ( .A1(n489), .A2(n495), .B1(active_row_q[13]), 
        .B2(n489), .ZN(n345) );
  AO222D0BWP12T30P140 U611 ( .A1(n592), .A2(data_i[30]), .B1(n470), .B2(
        data_o[14]), .C1(data_o[30]), .C2(n469), .Z(n248) );
  MAOI22D0BWP12T30P140 U612 ( .A1(n490), .A2(n492), .B1(active_row_q[25]), 
        .B2(n489), .ZN(n344) );
  AO222D0BWP12T30P140 U613 ( .A1(n592), .A2(data_i[31]), .B1(n470), .B2(
        data_o[15]), .C1(data_o[31]), .C2(n469), .Z(n247) );
  MAOI22D0BWP12T30P140 U614 ( .A1(n490), .A2(n494), .B1(active_row_q[24]), 
        .B2(n489), .ZN(n343) );
  NR2D0BWP12T30P140 U615 ( .A1(delay_q[0]), .A2(delay_q[1]), .ZN(n478) );
  INVD0BWP12T30P140 U616 ( .I(n478), .ZN(n475) );
  NR2D0BWP12T30P140 U617 ( .A1(delay_q[2]), .A2(n475), .ZN(n474) );
  ND2D0BWP12T30P140 U618 ( .A1(n472), .A2(n471), .ZN(n588) );
  NR2D0BWP12T30P140 U619 ( .A1(delay_q[3]), .A2(n474), .ZN(n473) );
  AOI211D0BWP12T30P140 U620 ( .A1(delay_q[3]), .A2(n474), .B(n588), .C(n473), 
        .ZN(delay_r[3]) );
  AOI21D0BWP12T30P140 U621 ( .A1(n475), .A2(delay_q[2]), .B(n474), .ZN(n476)
         );
  NR2D0BWP12T30P140 U622 ( .A1(n588), .A2(n476), .ZN(delay_r[2]) );
  OAI211D0BWP12T30P140 U623 ( .A1(delay_q[0]), .A2(n588), .B(n477), .C(n580), 
        .ZN(delay_r[0]) );
  AOI21D0BWP12T30P140 U624 ( .A1(delay_q[1]), .A2(delay_q[0]), .B(n478), .ZN(
        n480) );
  INVD0BWP12T30P140 U625 ( .I(we_i), .ZN(n534) );
  ND3D0BWP12T30P140 U626 ( .A1(n534), .A2(n537), .A3(n536), .ZN(n479) );
  AOI31D0BWP12T30P140 U627 ( .A1(n532), .A2(state_q[2]), .A3(n479), .B(n521), 
        .ZN(n513) );
  OAI21D0BWP12T30P140 U628 ( .A1(n480), .A2(n588), .B(n513), .ZN(delay_r[1])
         );
  INVD0BWP12T30P140 U629 ( .I(n481), .ZN(n574) );
  NR4D0BWP12T30P140 U630 ( .A1(row_open_q[3]), .A2(row_open_q[0]), .A3(
        row_open_q[2]), .A4(row_open_q[1]), .ZN(n487) );
  OR2D0BWP12T30P140 U631 ( .A1(n583), .A2(n482), .Z(n512) );
  INVD0BWP12T30P140 U632 ( .I(n588), .ZN(n543) );
  AOI211D0BWP12T30P140 U633 ( .A1(n543), .A2(delay_state_q[0]), .B(n577), .C(
        n568), .ZN(n485) );
  AOI22D0BWP12T30P140 U634 ( .A1(state_q[0]), .A2(n483), .B1(target_state_q[0]), .B2(n598), .ZN(n484) );
  ND3D0BWP12T30P140 U635 ( .A1(n512), .A2(n485), .A3(n484), .ZN(n486) );
  AOI21D0BWP12T30P140 U636 ( .A1(n574), .A2(n487), .B(n486), .ZN(n608) );
  NR4D0BWP12T30P140 U637 ( .A1(delay_r[3]), .A2(delay_r[2]), .A3(delay_r[0]), 
        .A4(delay_r[1]), .ZN(n609) );
  INVD0BWP12T30P140 U638 ( .I(n609), .ZN(n585) );
  MAOI22D0BWP12T30P140 U639 ( .A1(n608), .A2(n585), .B1(n585), .B2(
        delay_state_q[0]), .ZN(n306) );
  MAOI22D0BWP12T30P140 U640 ( .A1(n490), .A2(n562), .B1(active_row_q[23]), 
        .B2(n489), .ZN(n342) );
  MAOI22D0BWP12T30P140 U641 ( .A1(n490), .A2(n498), .B1(active_row_q[22]), 
        .B2(n489), .ZN(n341) );
  MAOI22D0BWP12T30P140 U642 ( .A1(n490), .A2(n500), .B1(active_row_q[21]), 
        .B2(n489), .ZN(n340) );
  INVD0BWP12T30P140 U643 ( .I(n488), .ZN(n493) );
  CKBD0BWP12T30P140 U644 ( .I(n493), .Z(n496) );
  MAOI22D0BWP12T30P140 U645 ( .A1(n493), .A2(n497), .B1(active_row_q[40]), 
        .B2(n496), .ZN(n307) );
  MAOI22D0BWP12T30P140 U646 ( .A1(n490), .A2(n502), .B1(active_row_q[20]), 
        .B2(n489), .ZN(n339) );
  MAOI22D0BWP12T30P140 U647 ( .A1(n493), .A2(n499), .B1(active_row_q[41]), 
        .B2(n496), .ZN(n308) );
  MAOI22D0BWP12T30P140 U648 ( .A1(n490), .A2(n504), .B1(active_row_q[19]), 
        .B2(n489), .ZN(n338) );
  MAOI22D0BWP12T30P140 U649 ( .A1(n493), .A2(n501), .B1(active_row_q[42]), 
        .B2(n496), .ZN(n309) );
  MAOI22D0BWP12T30P140 U650 ( .A1(n490), .A2(n570), .B1(active_row_q[18]), 
        .B2(n489), .ZN(n337) );
  MAOI22D0BWP12T30P140 U651 ( .A1(n493), .A2(n503), .B1(active_row_q[43]), 
        .B2(n493), .ZN(n310) );
  MAOI22D0BWP12T30P140 U652 ( .A1(n490), .A2(n503), .B1(active_row_q[17]), 
        .B2(n490), .ZN(n336) );
  MAOI22D0BWP12T30P140 U653 ( .A1(n493), .A2(n570), .B1(active_row_q[44]), 
        .B2(n496), .ZN(n311) );
  MAOI22D0BWP12T30P140 U654 ( .A1(n490), .A2(n501), .B1(active_row_q[16]), 
        .B2(n489), .ZN(n335) );
  MAOI22D0BWP12T30P140 U655 ( .A1(n493), .A2(n504), .B1(active_row_q[45]), 
        .B2(n496), .ZN(n312) );
  MAOI22D0BWP12T30P140 U656 ( .A1(n490), .A2(n499), .B1(active_row_q[15]), 
        .B2(n489), .ZN(n334) );
  MAOI22D0BWP12T30P140 U657 ( .A1(n493), .A2(n502), .B1(active_row_q[46]), 
        .B2(n496), .ZN(n313) );
  MAOI22D0BWP12T30P140 U658 ( .A1(n490), .A2(n497), .B1(active_row_q[14]), 
        .B2(n489), .ZN(n333) );
  MAOI22D0BWP12T30P140 U659 ( .A1(n493), .A2(n500), .B1(active_row_q[47]), 
        .B2(n496), .ZN(n314) );
  MAOI22D0BWP12T30P140 U660 ( .A1(n594), .A2(sel_i[3]), .B1(dqm_buffer_q[1]), 
        .B2(n594), .ZN(n302) );
  MAOI22D0BWP12T30P140 U661 ( .A1(n493), .A2(n498), .B1(active_row_q[48]), 
        .B2(n496), .ZN(n315) );
  MAOI22D0BWP12T30P140 U662 ( .A1(n592), .A2(sel_i[2]), .B1(dqm_buffer_q[0]), 
        .B2(n594), .ZN(n301) );
  MAOI22D0BWP12T30P140 U663 ( .A1(n493), .A2(n562), .B1(active_row_q[49]), 
        .B2(n496), .ZN(n316) );
  INVD0BWP12T30P140 U664 ( .I(n491), .ZN(n506) );
  CKBD0BWP12T30P140 U665 ( .I(n506), .Z(n505) );
  MAOI22D0BWP12T30P140 U666 ( .A1(n505), .A2(n495), .B1(active_row_q[26]), 
        .B2(n505), .ZN(n332) );
  MAOI22D0BWP12T30P140 U667 ( .A1(n493), .A2(n494), .B1(active_row_q[50]), 
        .B2(n496), .ZN(n317) );
  MAOI22D0BWP12T30P140 U668 ( .A1(n506), .A2(n492), .B1(active_row_q[38]), 
        .B2(n505), .ZN(n331) );
  MAOI22D0BWP12T30P140 U669 ( .A1(n493), .A2(n492), .B1(active_row_q[51]), 
        .B2(n496), .ZN(n318) );
  MAOI22D0BWP12T30P140 U670 ( .A1(n506), .A2(n494), .B1(active_row_q[37]), 
        .B2(n505), .ZN(n330) );
  MAOI22D0BWP12T30P140 U671 ( .A1(n496), .A2(n495), .B1(active_row_q[39]), 
        .B2(n496), .ZN(n319) );
  MAOI22D0BWP12T30P140 U672 ( .A1(n506), .A2(n562), .B1(active_row_q[36]), 
        .B2(n505), .ZN(n329) );
  MAOI22D0BWP12T30P140 U673 ( .A1(n506), .A2(n497), .B1(active_row_q[27]), 
        .B2(n505), .ZN(n320) );
  MAOI22D0BWP12T30P140 U674 ( .A1(n506), .A2(n498), .B1(active_row_q[35]), 
        .B2(n505), .ZN(n328) );
  MAOI22D0BWP12T30P140 U675 ( .A1(n506), .A2(n499), .B1(active_row_q[28]), 
        .B2(n505), .ZN(n321) );
  MAOI22D0BWP12T30P140 U676 ( .A1(n506), .A2(n500), .B1(active_row_q[34]), 
        .B2(n505), .ZN(n327) );
  MAOI22D0BWP12T30P140 U677 ( .A1(n506), .A2(n501), .B1(active_row_q[29]), 
        .B2(n505), .ZN(n322) );
  MAOI22D0BWP12T30P140 U678 ( .A1(n506), .A2(n502), .B1(active_row_q[33]), 
        .B2(n505), .ZN(n326) );
  MAOI22D0BWP12T30P140 U679 ( .A1(n506), .A2(n503), .B1(active_row_q[30]), 
        .B2(n506), .ZN(n323) );
  MAOI22D0BWP12T30P140 U680 ( .A1(n506), .A2(n504), .B1(active_row_q[32]), 
        .B2(n505), .ZN(n325) );
  MAOI22D0BWP12T30P140 U681 ( .A1(n506), .A2(n570), .B1(active_row_q[31]), 
        .B2(n505), .ZN(n324) );
  NR3D0BWP12T30P140 U682 ( .A1(target_state_q[2]), .A2(n507), .A3(n581), .ZN(
        n576) );
  AOI22D0BWP12T30P140 U683 ( .A1(state_q[1]), .A2(n509), .B1(refresh_q), .B2(
        n508), .ZN(n510) );
  ND3D0BWP12T30P140 U684 ( .A1(n538), .A2(state_q[2]), .A3(state_q[1]), .ZN(
        n595) );
  OAI211D0BWP12T30P140 U685 ( .A1(n576), .A2(n511), .B(n510), .C(n595), .ZN(
        n515) );
  INVD0BWP12T30P140 U686 ( .I(target_state_q[1]), .ZN(n575) );
  OAI211D0BWP12T30P140 U687 ( .A1(n605), .A2(n575), .B(n513), .C(n512), .ZN(
        n514) );
  AOI211D0BWP12T30P140 U688 ( .A1(n516), .A2(we_i), .B(n515), .C(n514), .ZN(
        n545) );
  INVD0BWP12T30P140 U689 ( .I(delay_state_q[1]), .ZN(n544) );
  OAI32D0BWP12T30P140 U690 ( .A1(refresh_timer_q[0]), .A2(refresh_timer_q[1]), 
        .A3(n553), .B1(n517), .B2(N230), .ZN(N231) );
  INVD0BWP12T30P140 U691 ( .I(n607), .ZN(n593) );
  AO222D0BWP12T30P140 U692 ( .A1(n595), .A2(data_q[0]), .B1(n594), .B2(
        data_i[0]), .C1(data_o[0]), .C2(n593), .Z(n277) );
  AO22D0BWP12T30P140 U693 ( .A1(refresh_timer_q[3]), .A2(n518), .B1(n529), 
        .B2(n519), .Z(N233) );
  AO222D0BWP12T30P140 U694 ( .A1(n595), .A2(data_q[9]), .B1(n594), .B2(
        data_i[9]), .C1(data_o[9]), .C2(n593), .Z(n268) );
  OAI21D0BWP12T30P140 U695 ( .A1(n521), .A2(n520), .B(n519), .ZN(n363) );
  AO222D0BWP12T30P140 U696 ( .A1(n595), .A2(data_q[1]), .B1(n594), .B2(
        data_i[1]), .C1(data_o[1]), .C2(n593), .Z(n276) );
  AOI21D0BWP12T30P140 U697 ( .A1(refresh_timer_q[12]), .A2(n523), .B(n522), 
        .ZN(n524) );
  NR2D0BWP12T30P140 U698 ( .A1(n553), .A2(n524), .ZN(N242) );
  AO222D0BWP12T30P140 U699 ( .A1(addr_i[19]), .A2(n598), .B1(n568), .B2(
        addr_i[8]), .C1(sdram_addr_o[7]), .C2(n597), .Z(n289) );
  AO222D0BWP12T30P140 U700 ( .A1(n595), .A2(data_q[2]), .B1(n594), .B2(
        data_i[2]), .C1(data_o[2]), .C2(n593), .Z(n275) );
  AO222D0BWP12T30P140 U701 ( .A1(addr_i[20]), .A2(n598), .B1(n568), .B2(
        addr_i[9]), .C1(sdram_addr_o[8]), .C2(n597), .Z(n290) );
  AO222D0BWP12T30P140 U702 ( .A1(addr_i[13]), .A2(n598), .B1(n568), .B2(
        addr_i[2]), .C1(sdram_addr_o[1]), .C2(n597), .Z(n283) );
  AO222D0BWP12T30P140 U703 ( .A1(n595), .A2(data_q[3]), .B1(n594), .B2(
        data_i[3]), .C1(data_o[3]), .C2(n593), .Z(n274) );
  AO222D0BWP12T30P140 U704 ( .A1(addr_i[14]), .A2(n598), .B1(n568), .B2(
        addr_i[3]), .C1(sdram_addr_o[2]), .C2(n597), .Z(n284) );
  INVD0BWP12T30P140 U705 ( .I(refresh_timer_q[6]), .ZN(n530) );
  AOI221D0BWP12T30P140 U706 ( .A1(refresh_timer_q[6]), .A2(n531), .B1(n530), 
        .B2(n548), .C(n553), .ZN(N236) );
  AO222D0BWP12T30P140 U707 ( .A1(n595), .A2(data_q[4]), .B1(n594), .B2(
        data_i[4]), .C1(data_o[4]), .C2(n593), .Z(n273) );
  AO222D0BWP12T30P140 U708 ( .A1(n595), .A2(data_q[15]), .B1(n594), .B2(
        data_i[15]), .C1(data_o[15]), .C2(n593), .Z(n262) );
  INR2D1BWP12T30P140 U709 ( .A1(n532), .B1(n539), .ZN(n535) );
  AOI221D0BWP12T30P140 U710 ( .A1(n593), .A2(we_i), .B1(n535), .B2(n534), .C(
        n533), .ZN(n541) );
  ND2D0BWP12T30P140 U711 ( .A1(n537), .A2(n536), .ZN(n540) );
  OAI22D0BWP12T30P140 U712 ( .A1(n541), .A2(n540), .B1(n539), .B2(n538), .ZN(
        n542) );
  AOI211D0BWP12T30P140 U713 ( .A1(target_state_q[2]), .A2(n598), .B(n568), .C(
        n542), .ZN(n572) );
  NR2D0BWP12T30P140 U714 ( .A1(n543), .A2(n609), .ZN(n584) );
  INVD0BWP12T30P140 U715 ( .I(delay_state_q[2]), .ZN(n571) );
  OAI22D0BWP12T30P140 U716 ( .A1(n609), .A2(n572), .B1(n584), .B2(n571), .ZN(
        n304) );
  AO222D0BWP12T30P140 U717 ( .A1(n595), .A2(data_q[5]), .B1(n594), .B2(
        data_i[5]), .C1(data_o[5]), .C2(n593), .Z(n272) );
  OAI22D0BWP12T30P140 U718 ( .A1(n609), .A2(n545), .B1(n584), .B2(n544), .ZN(
        n303) );
  INVD0BWP12T30P140 U719 ( .I(sdram_cke_o), .ZN(n546) );
  OAI21D0BWP12T30P140 U720 ( .A1(n567), .A2(n547), .B(n546), .ZN(n279) );
  NR2D0BWP12T30P140 U721 ( .A1(refresh_timer_q[6]), .A2(n548), .ZN(n550) );
  INVD0BWP12T30P140 U722 ( .I(refresh_timer_q[7]), .ZN(n549) );
  OAI21D0BWP12T30P140 U723 ( .A1(n550), .A2(n549), .B(n551), .ZN(N237) );
  AO222D0BWP12T30P140 U724 ( .A1(n595), .A2(data_q[13]), .B1(n594), .B2(
        data_i[13]), .C1(data_o[13]), .C2(n593), .Z(n264) );
  AO222D0BWP12T30P140 U725 ( .A1(addr_i[18]), .A2(n598), .B1(n568), .B2(
        addr_i[7]), .C1(sdram_addr_o[6]), .C2(n597), .Z(n288) );
  AO222D0BWP12T30P140 U726 ( .A1(n595), .A2(data_q[6]), .B1(n592), .B2(
        data_i[6]), .C1(data_o[6]), .C2(n593), .Z(n271) );
  AO21D0BWP12T30P140 U727 ( .A1(refresh_timer_q[8]), .A2(n551), .B(n556), .Z(
        N238) );
  INVD0BWP12T30P140 U728 ( .I(data_rd_en_q), .ZN(n2) );
  OAI21D0BWP12T30P140 U729 ( .A1(n592), .A2(n2), .B(n552), .ZN(n362) );
  AO222D0BWP12T30P140 U730 ( .A1(n595), .A2(data_q[7]), .B1(n594), .B2(
        data_i[7]), .C1(data_o[7]), .C2(n593), .Z(n270) );
  NR2D0BWP12T30P140 U731 ( .A1(n557), .A2(n567), .ZN(n558) );
  AOI211D0BWP12T30P140 U732 ( .A1(sdram_addr_o[10]), .A2(n560), .B(n559), .C(
        n558), .ZN(n561) );
  OAI21D0BWP12T30P140 U733 ( .A1(n562), .A2(n580), .B(n561), .ZN(n292) );
  AO222D0BWP12T30P140 U734 ( .A1(addr_i[15]), .A2(n598), .B1(n568), .B2(
        addr_i[4]), .C1(sdram_addr_o[3]), .C2(n597), .Z(n285) );
  NR2D0BWP12T30P140 U735 ( .A1(state_q[1]), .A2(stall_o), .ZN(n365) );
  IND2D1BWP12T30P140 U736 ( .A1(n365), .B1(n595), .ZN(n573) );
  INVD0BWP12T30P140 U737 ( .I(n573), .ZN(n589) );
  AOI22D0BWP12T30P140 U738 ( .A1(n593), .A2(dqm_buffer_q[0]), .B1(n589), .B2(
        sdram_dqm_o[0]), .ZN(n563) );
  OAI21D0BWP12T30P140 U739 ( .A1(sel_i[0]), .A2(n591), .B(n563), .ZN(n300) );
  AO222D0BWP12T30P140 U740 ( .A1(n595), .A2(data_q[8]), .B1(n592), .B2(
        data_i[8]), .C1(data_o[8]), .C2(n593), .Z(n269) );
  AO222D0BWP12T30P140 U741 ( .A1(addr_i[16]), .A2(n598), .B1(n568), .B2(
        addr_i[5]), .C1(sdram_addr_o[4]), .C2(n597), .Z(n286) );
  AOI211D0BWP12T30P140 U742 ( .A1(n603), .A2(sdram_we_o), .B(n593), .C(n365), 
        .ZN(n564) );
  OAI211D0BWP12T30P140 U743 ( .A1(n567), .A2(n566), .B(n565), .C(n564), .ZN(
        n295) );
  AOI22D0BWP12T30P140 U744 ( .A1(n568), .A2(addr_i[6]), .B1(n597), .B2(
        sdram_addr_o[5]), .ZN(n569) );
  OAI211D0BWP12T30P140 U745 ( .A1(n580), .A2(n570), .B(n569), .C(n599), .ZN(
        n287) );
  AO211D0BWP12T30P140 U746 ( .A1(sdram_ras_o), .A2(n603), .B(n601), .C(n573), 
        .Z(n297) );
  AOI31D0BWP12T30P140 U747 ( .A1(n577), .A2(n576), .A3(n575), .B(n574), .ZN(
        n579) );
  OAI211D0BWP12T30P140 U748 ( .A1(n581), .A2(n580), .B(n579), .C(n578), .ZN(
        n582) );
  AOI21D0BWP12T30P140 U749 ( .A1(n611), .A2(n583), .B(n582), .ZN(n587) );
  INVD0BWP12T30P140 U750 ( .I(delay_state_q[3]), .ZN(n586) );
  OAI22D0BWP12T30P140 U751 ( .A1(n609), .A2(n587), .B1(n584), .B2(n586), .ZN(
        n305) );
  AO222D0BWP12T30P140 U752 ( .A1(n595), .A2(data_q[12]), .B1(n592), .B2(
        data_i[12]), .C1(data_o[12]), .C2(n593), .Z(n265) );
  AO222D0BWP12T30P140 U753 ( .A1(n595), .A2(data_q[10]), .B1(n592), .B2(
        data_i[10]), .C1(data_o[10]), .C2(n593), .Z(n267) );
  AOI22D0BWP12T30P140 U754 ( .A1(n593), .A2(dqm_buffer_q[1]), .B1(n589), .B2(
        sdram_dqm_o[1]), .ZN(n590) );
  OAI21D0BWP12T30P140 U755 ( .A1(sel_i[1]), .A2(n591), .B(n590), .ZN(n299) );
  AO222D0BWP12T30P140 U756 ( .A1(n595), .A2(data_q[14]), .B1(n592), .B2(
        data_i[14]), .C1(data_o[14]), .C2(n593), .Z(n263) );
  AO222D0BWP12T30P140 U757 ( .A1(n595), .A2(data_q[11]), .B1(n594), .B2(
        data_i[11]), .C1(data_o[11]), .C2(n593), .Z(n266) );
  INVD0BWP12T30P140 U758 ( .I(sdram_clk_o), .ZN(n629) );
  INVD0BWP12T30P140 U759 ( .I(sdram_clk_o), .ZN(n621) );
  INVD0BWP12T30P140 U760 ( .I(sdram_clk_o), .ZN(n623) );
  INVD0BWP12T30P140 U761 ( .I(sdram_clk_o), .ZN(n624) );
  INVD0BWP12T30P140 U762 ( .I(clk_i), .ZN(sdram_clk_o) );
  INVD0BWP12T30P140 U763 ( .I(sdram_clk_o), .ZN(n628) );
  INVD0BWP12T30P140 U764 ( .I(sdram_clk_o), .ZN(n625) );
  INVD0BWP12T30P140 U765 ( .I(sdram_clk_o), .ZN(n622) );
  INVD0BWP12T30P140 U766 ( .I(sdram_clk_o), .ZN(n626) );
  INVD0BWP12T30P140 U767 ( .I(sdram_clk_o), .ZN(n627) );
  INVD0BWP12T30P140 U768 ( .I(rst_i), .ZN(n246) );
  CKBD0BWP12T30P140 U769 ( .I(n246), .Z(n618) );
  CKBD0BWP12T30P140 U770 ( .I(n246), .Z(n615) );
  CKBD0BWP12T30P140 U771 ( .I(n246), .Z(n616) );
  CKBD0BWP12T30P140 U772 ( .I(n246), .Z(n613) );
  CKBD0BWP12T30P140 U773 ( .I(n246), .Z(n612) );
  CKBD0BWP12T30P140 U774 ( .I(n246), .Z(n617) );
  CKBD0BWP12T30P140 U775 ( .I(n246), .Z(n619) );
  CKBD0BWP12T30P140 U776 ( .I(n246), .Z(n614) );
  CKBD0BWP12T30P140 U777 ( .I(n246), .Z(n620) );
  AOI22D0BWP12T30P140 U778 ( .A1(addr_i[12]), .A2(n598), .B1(n597), .B2(
        sdram_addr_o[0]), .ZN(n600) );
  ND2D0BWP12T30P140 U779 ( .A1(n600), .A2(n599), .ZN(n282) );
  AOI211D0BWP12T30P140 U780 ( .A1(n603), .A2(sdram_cas_o), .B(n602), .C(n601), 
        .ZN(n604) );
  ND2D0BWP12T30P140 U781 ( .A1(n605), .A2(n604), .ZN(n296) );
  ND2D0BWP12T30P140 U782 ( .A1(n607), .A2(n606), .ZN(N390) );
  ND2D0BWP12T30P140 U783 ( .A1(n609), .A2(n608), .ZN(N207) );
  IOA21D0BWP12T30P140 U784 ( .A1(n611), .A2(we_i), .B(n610), .ZN(
        target_state_r[1]) );
endmodule

