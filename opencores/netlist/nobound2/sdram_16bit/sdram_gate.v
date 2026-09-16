/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:04:45 2026
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
  wire   refresh_q, N155, N156, N157, N158, N178, N179, N180, N181, N182, N183,
         N184, N185, N186, N187, N188, N189, N190, N191, N192, N193, N194,
         data_rd_en_q, N338, n2, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630;
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

  DFSNQD1BWP12T30P140 refresh_timer_q_reg_2_ ( .D(N180), .CP(n630), .SDN(n621), 
        .Q(refresh_timer_q[2]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_3_ ( .D(N181), .CP(n630), .SDN(n613), 
        .Q(refresh_timer_q[3]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_5_ ( .D(N183), .CP(n630), .SDN(n614), 
        .Q(refresh_timer_q[5]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_6_ ( .D(N184), .CP(n630), .SDN(n621), 
        .Q(refresh_timer_q[6]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_7_ ( .D(N185), .CP(n630), .SDN(n620), 
        .Q(refresh_timer_q[7]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_8_ ( .D(N186), .CP(n630), .SDN(n619), 
        .Q(refresh_timer_q[8]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_9_ ( .D(N187), .CP(n630), .SDN(n618), 
        .Q(refresh_timer_q[9]) );
  DFSNQD1BWP12T30P140 refresh_timer_q_reg_12_ ( .D(N190), .CP(n630), .SDN(n613), .Q(refresh_timer_q[12]) );
  DFSNQD1BWP12T30P140 target_state_q_reg_1_ ( .D(target_state_r[1]), .CP(n630), 
        .SDN(n617), .Q(target_state_q[1]) );
  DFSNQD1BWP12T30P140 data_rd_en_q_reg ( .D(n368), .CP(n630), .SDN(n616), .Q(
        data_rd_en_q) );
  DFSNQD1BWP12T30P140 delay_state_q_reg_1_ ( .D(n309), .CP(n630), .SDN(n614), 
        .Q(delay_state_q[1]) );
  DFSNQD1BWP12T30P140 command_q_reg_2_ ( .D(n303), .CP(n630), .SDN(n615), .Q(
        sdram_ras_o) );
  DFSNQD1BWP12T30P140 command_q_reg_1_ ( .D(n302), .CP(n630), .SDN(n613), .Q(
        sdram_cas_o) );
  DFSNQD1BWP12T30P140 command_q_reg_0_ ( .D(n301), .CP(n630), .SDN(n615), .Q(
        sdram_we_o) );
  DFCNQD1BWP12T30P140 ack_q_reg ( .D(N338), .CP(n630), .CDN(n613), .Q(ack_o)
         );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_0_ ( .D(N178), .CP(n630), .CDN(n620), 
        .Q(refresh_timer_q[0]) );
  DFCNQD1BWP12T30P140 addr_q_reg_10_ ( .D(n298), .CP(n624), .CDN(n618), .Q(
        sdram_addr_o[10]) );
  DFCNQD1BWP12T30P140 dqm_q_reg_1_ ( .D(n305), .CP(n623), .CDN(n618), .Q(
        sdram_dqm_o[1]) );
  DFCNQD1BWP12T30P140 dqm_q_reg_0_ ( .D(n306), .CP(n623), .CDN(n618), .Q(
        sdram_dqm_o[0]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_0_ ( .D(target_state_r[0]), .CP(n625), 
        .CDN(n252), .Q(target_state_q[0]) );
  DFCNQD1BWP12T30P140 addr_q_reg_8_ ( .D(n296), .CP(n624), .CDN(n618), .Q(
        sdram_addr_o[8]) );
  DFCNQD1BWP12T30P140 addr_q_reg_7_ ( .D(n295), .CP(n624), .CDN(n618), .Q(
        sdram_addr_o[7]) );
  DFCNQD1BWP12T30P140 addr_q_reg_6_ ( .D(n294), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[6]) );
  DFCNQD1BWP12T30P140 addr_q_reg_5_ ( .D(n293), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[5]) );
  DFCNQD1BWP12T30P140 addr_q_reg_4_ ( .D(n292), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[4]) );
  DFCNQD1BWP12T30P140 addr_q_reg_3_ ( .D(n291), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[3]) );
  DFCNQD1BWP12T30P140 addr_q_reg_2_ ( .D(n290), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[2]) );
  DFCNQD1BWP12T30P140 addr_q_reg_1_ ( .D(n289), .CP(n624), .CDN(n617), .Q(
        sdram_addr_o[1]) );
  DFCNQD1BWP12T30P140 addr_q_reg_0_ ( .D(n288), .CP(n625), .CDN(n617), .Q(
        sdram_addr_o[0]) );
  DFCNQD1BWP12T30P140 cke_q_reg ( .D(n285), .CP(n625), .CDN(n617), .Q(
        sdram_cke_o) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_15_ ( .D(sample_data0_q[15]), .CP(n625), .CDN(n615), .Q(data_o[31]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_14_ ( .D(sample_data0_q[14]), .CP(n626), .CDN(n617), .Q(data_o[30]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_13_ ( .D(sample_data0_q[13]), .CP(n627), .CDN(n618), .Q(data_o[29]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_12_ ( .D(sample_data0_q[12]), .CP(n627), .CDN(n616), .Q(data_o[28]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_11_ ( .D(sample_data0_q[11]), .CP(n626), .CDN(n616), .Q(data_o[27]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_10_ ( .D(sample_data0_q[10]), .CP(n626), .CDN(n616), .Q(data_o[26]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_9_ ( .D(sample_data0_q[9]), .CP(n626), 
        .CDN(n615), .Q(data_o[25]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_8_ ( .D(sample_data0_q[8]), .CP(n627), 
        .CDN(n618), .Q(data_o[24]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_7_ ( .D(sample_data0_q[7]), .CP(n627), 
        .CDN(n615), .Q(data_o[23]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_6_ ( .D(sample_data0_q[6]), .CP(n627), 
        .CDN(n614), .Q(data_o[22]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_5_ ( .D(sample_data0_q[5]), .CP(n628), 
        .CDN(n614), .Q(data_o[21]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_4_ ( .D(sample_data0_q[4]), .CP(n628), 
        .CDN(n614), .Q(data_o[20]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_3_ ( .D(sample_data0_q[3]), .CP(n628), 
        .CDN(n614), .Q(data_o[19]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_2_ ( .D(sample_data0_q[2]), .CP(n629), 
        .CDN(n613), .Q(data_o[18]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_1_ ( .D(sample_data0_q[1]), .CP(n629), 
        .CDN(n613), .Q(data_o[17]) );
  DFCNQD1BWP12T30P140 addr_q_reg_12_ ( .D(n300), .CP(n623), .CDN(n618), .Q(
        sdram_addr_o[12]) );
  DFCNQD1BWP12T30P140 addr_q_reg_11_ ( .D(n299), .CP(n624), .CDN(n618), .Q(
        sdram_addr_o[11]) );
  DFCNQD1BWP12T30P140 addr_q_reg_9_ ( .D(n297), .CP(n624), .CDN(n618), .Q(
        sdram_addr_o[9]) );
  DFCNQD1BWP12T30P140 sample_data_q_reg_0_ ( .D(sample_data0_q[0]), .CP(n629), 
        .CDN(n613), .Q(data_o[16]) );
  DFCNQD1BWP12T30P140 command_q_reg_3_ ( .D(n304), .CP(n623), .CDN(n618), .Q(
        sdram_cs_o) );
  DFCNQD1BWP12T30P140 bank_q_reg_1_ ( .D(n287), .CP(n625), .CDN(n617), .Q(
        sdram_ba_o[1]) );
  DFCNQD1BWP12T30P140 bank_q_reg_0_ ( .D(n286), .CP(n625), .CDN(n617), .Q(
        sdram_ba_o[0]) );
  DFCNQD1BWP12T30P140 delay_q_reg_1_ ( .D(delay_r[1]), .CP(n629), .CDN(n617), 
        .Q(delay_q[1]) );
  DFCNQD1BWP12T30P140 delay_q_reg_3_ ( .D(delay_r[3]), .CP(clk_i), .CDN(n619), 
        .Q(delay_q[3]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_3_ ( .D(target_state_r[3]), .CP(n623), 
        .CDN(n621), .Q(target_state_q[3]) );
  DFCNQD1BWP12T30P140 dqm_buffer_q_reg_1_ ( .D(n308), .CP(n623), .CDN(n618), 
        .Q(dqm_buffer_q[1]) );
  DFCNQD1BWP12T30P140 dqm_buffer_q_reg_0_ ( .D(n307), .CP(n623), .CDN(n618), 
        .Q(dqm_buffer_q[0]) );
  DFCNQD1BWP12T30P140 delay_q_reg_2_ ( .D(delay_r[2]), .CP(n622), .CDN(n252), 
        .Q(delay_q[2]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__0_ ( .D(n364), .CP(n623), .CDN(n252), 
        .Q(active_row_q[0]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__12_ ( .D(n363), .CP(n624), .CDN(n618), .Q(active_row_q[12]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__11_ ( .D(n362), .CP(n626), .CDN(n619), .Q(active_row_q[11]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__10_ ( .D(n361), .CP(n624), .CDN(n621), .Q(active_row_q[10]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__9_ ( .D(n360), .CP(n626), .CDN(n252), 
        .Q(active_row_q[9]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__8_ ( .D(n359), .CP(n627), .CDN(n614), 
        .Q(active_row_q[8]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__7_ ( .D(n358), .CP(clk_i), .CDN(n613), .Q(active_row_q[7]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__6_ ( .D(n357), .CP(n624), .CDN(n615), 
        .Q(active_row_q[6]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__5_ ( .D(n356), .CP(n628), .CDN(n616), 
        .Q(active_row_q[5]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__4_ ( .D(n355), .CP(n625), .CDN(n617), 
        .Q(active_row_q[4]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__3_ ( .D(n354), .CP(n629), .CDN(n616), 
        .Q(active_row_q[3]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__2_ ( .D(n353), .CP(clk_i), .CDN(n618), .Q(active_row_q[2]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_3__1_ ( .D(n352), .CP(clk_i), .CDN(n619), .Q(active_row_q[1]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__0_ ( .D(n351), .CP(n622), .CDN(n252), 
        .Q(active_row_q[13]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__12_ ( .D(n350), .CP(n622), .CDN(n621), .Q(active_row_q[25]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__11_ ( .D(n349), .CP(n623), .CDN(n614), .Q(active_row_q[24]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__10_ ( .D(n348), .CP(n624), .CDN(n613), .Q(active_row_q[23]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__9_ ( .D(n347), .CP(n626), .CDN(n615), 
        .Q(active_row_q[22]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__8_ ( .D(n346), .CP(n627), .CDN(n616), 
        .Q(active_row_q[21]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__7_ ( .D(n345), .CP(clk_i), .CDN(n617), .Q(active_row_q[20]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__6_ ( .D(n344), .CP(clk_i), .CDN(n620), .Q(active_row_q[19]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__5_ ( .D(n343), .CP(n628), .CDN(n618), 
        .Q(active_row_q[18]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__4_ ( .D(n342), .CP(n625), .CDN(n619), 
        .Q(active_row_q[17]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__3_ ( .D(n341), .CP(n629), .CDN(n620), 
        .Q(active_row_q[16]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__2_ ( .D(n340), .CP(clk_i), .CDN(n621), .Q(active_row_q[15]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_2__1_ ( .D(n339), .CP(clk_i), .CDN(n614), .Q(active_row_q[14]) );
  DFCNQD1BWP12T30P140 refresh_q_reg ( .D(n369), .CP(n627), .CDN(n252), .Q(
        refresh_q) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__0_ ( .D(n338), .CP(n624), .CDN(n615), 
        .Q(active_row_q[26]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__12_ ( .D(n337), .CP(n626), .CDN(n616), .Q(active_row_q[38]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__11_ ( .D(n336), .CP(n627), .CDN(n620), .Q(active_row_q[37]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__10_ ( .D(n335), .CP(n628), .CDN(n620), .Q(active_row_q[36]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__9_ ( .D(n334), .CP(n623), .CDN(n620), 
        .Q(active_row_q[35]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__8_ ( .D(n333), .CP(n628), .CDN(n620), 
        .Q(active_row_q[34]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__7_ ( .D(n332), .CP(n625), .CDN(n620), 
        .Q(active_row_q[33]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__6_ ( .D(n331), .CP(n629), .CDN(n620), 
        .Q(active_row_q[32]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__5_ ( .D(n330), .CP(n623), .CDN(n620), 
        .Q(active_row_q[31]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__4_ ( .D(n329), .CP(n629), .CDN(n620), 
        .Q(active_row_q[30]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__3_ ( .D(n328), .CP(clk_i), .CDN(n620), .Q(active_row_q[29]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__2_ ( .D(n327), .CP(n622), .CDN(n620), 
        .Q(active_row_q[28]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_1__1_ ( .D(n326), .CP(n622), .CDN(n620), 
        .Q(active_row_q[27]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__0_ ( .D(n325), .CP(n622), .CDN(n620), 
        .Q(active_row_q[39]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__12_ ( .D(n324), .CP(n622), .CDN(n620), .Q(active_row_q[51]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__11_ ( .D(n323), .CP(n622), .CDN(n619), .Q(active_row_q[50]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__10_ ( .D(n322), .CP(n622), .CDN(n619), .Q(active_row_q[49]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__9_ ( .D(n321), .CP(n622), .CDN(n619), 
        .Q(active_row_q[48]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__8_ ( .D(n320), .CP(n622), .CDN(n619), 
        .Q(active_row_q[47]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__7_ ( .D(n319), .CP(n622), .CDN(n619), 
        .Q(active_row_q[46]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__6_ ( .D(n318), .CP(n622), .CDN(n619), 
        .Q(active_row_q[45]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__5_ ( .D(n317), .CP(n622), .CDN(n619), 
        .Q(active_row_q[44]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__4_ ( .D(n316), .CP(n622), .CDN(n619), 
        .Q(active_row_q[43]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__3_ ( .D(n315), .CP(n623), .CDN(n619), 
        .Q(active_row_q[42]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__2_ ( .D(n314), .CP(n623), .CDN(n619), 
        .Q(active_row_q[41]) );
  DFCNQD1BWP12T30P140 active_row_q_reg_0__1_ ( .D(n313), .CP(n623), .CDN(n619), 
        .Q(active_row_q[40]) );
  DFCNQD1BWP12T30P140 rd_q_reg_3_ ( .D(rd_q[2]), .CP(n625), .CDN(n621), .Q(
        rd_q[3]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_3_ ( .D(n311), .CP(n623), .CDN(n619), 
        .Q(delay_state_q[3]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_2_ ( .D(n310), .CP(n623), .CDN(n619), 
        .Q(delay_state_q[2]) );
  DFCNQD1BWP12T30P140 delay_state_q_reg_0_ ( .D(n312), .CP(n623), .CDN(n618), 
        .Q(delay_state_q[0]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_15_ ( .D(n253), .CP(n625), .CDN(n614), 
        .Q(data_o[15]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_14_ ( .D(n254), .CP(n628), .CDN(n613), 
        .Q(data_o[14]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_13_ ( .D(n255), .CP(n625), .CDN(n615), 
        .Q(data_o[13]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_12_ ( .D(n256), .CP(n629), .CDN(n616), 
        .Q(data_o[12]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_11_ ( .D(n257), .CP(n626), .CDN(n616), 
        .Q(data_o[11]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_10_ ( .D(n258), .CP(n626), .CDN(n616), 
        .Q(data_o[10]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_9_ ( .D(n259), .CP(n626), .CDN(n616), 
        .Q(data_o[9]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_8_ ( .D(n260), .CP(n627), .CDN(n615), 
        .Q(data_o[8]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_7_ ( .D(n261), .CP(n627), .CDN(n615), 
        .Q(data_o[7]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_6_ ( .D(n262), .CP(n627), .CDN(n615), 
        .Q(data_o[6]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_5_ ( .D(n263), .CP(n628), .CDN(n614), 
        .Q(data_o[5]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_4_ ( .D(n264), .CP(n628), .CDN(n614), 
        .Q(data_o[4]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_3_ ( .D(n265), .CP(n628), .CDN(n614), 
        .Q(data_o[3]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_2_ ( .D(n266), .CP(n629), .CDN(n613), 
        .Q(data_o[2]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_1_ ( .D(n267), .CP(n629), .CDN(n613), 
        .Q(data_o[1]) );
  DFCNQD1BWP12T30P140 data_buffer_q_reg_0_ ( .D(n284), .CP(n629), .CDN(n613), 
        .Q(data_o[0]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_11_ ( .D(N189), .CP(n624), .CDN(n621), .Q(refresh_timer_q[11]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_13_ ( .D(N191), .CP(n626), .CDN(n621), .Q(refresh_timer_q[13]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_16_ ( .D(N194), .CP(n627), .CDN(n621), .Q(refresh_timer_q[16]) );
  DFCNQD1BWP12T30P140 delay_q_reg_0_ ( .D(delay_r[0]), .CP(n628), .CDN(n252), 
        .Q(delay_q[0]) );
  DFCNQD1BWP12T30P140 target_state_q_reg_2_ ( .D(target_state_r[2]), .CP(n625), 
        .CDN(n252), .Q(target_state_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_10_ ( .D(N188), .CP(n628), .CDN(n621), .Q(refresh_timer_q[10]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_14_ ( .D(N192), .CP(n622), .CDN(n621), .Q(refresh_timer_q[14]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_3_ ( .D(n365), .CP(n628), .CDN(n621), .Q(
        row_open_q[3]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_0_ ( .D(n370), .CP(n625), .CDN(n621), .Q(
        row_open_q[0]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_1_ ( .D(n367), .CP(n622), .CDN(n613), .Q(
        row_open_q[1]) );
  DFCNQD1BWP12T30P140 row_open_q_reg_2_ ( .D(n366), .CP(clk_i), .CDN(n620), 
        .Q(row_open_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_15_ ( .D(N193), .CP(n629), .CDN(n621), .Q(refresh_timer_q[15]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_4_ ( .D(N182), .CP(n623), .CDN(n621), 
        .Q(refresh_timer_q[4]) );
  DFCNQD1BWP12T30P140 rd_q_reg_0_ ( .D(n371), .CP(n625), .CDN(n617), .Q(
        rd_q[0]) );
  DFCNQD1BWP12T30P140 rd_q_reg_1_ ( .D(rd_q[0]), .CP(n625), .CDN(n617), .Q(
        rd_q[1]) );
  DFCNQD1BWP12T30P140 rd_q_reg_2_ ( .D(rd_q[1]), .CP(n625), .CDN(n617), .Q(
        rd_q[2]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_15_ ( .D(sdram_data_io[15]), .CP(n625), .CDN(n617), .Q(sample_data0_q[15]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_14_ ( .D(sdram_data_io[14]), .CP(
        clk_i), .CDN(n618), .Q(sample_data0_q[14]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_13_ ( .D(sdram_data_io[13]), .CP(n622), .CDN(n619), .Q(sample_data0_q[13]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_12_ ( .D(sdram_data_io[12]), .CP(n623), .CDN(n616), .Q(sample_data0_q[12]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_11_ ( .D(sdram_data_io[11]), .CP(n626), .CDN(n616), .Q(sample_data0_q[11]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_10_ ( .D(sdram_data_io[10]), .CP(n626), .CDN(n616), .Q(sample_data0_q[10]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_9_ ( .D(sdram_data_io[9]), .CP(n626), 
        .CDN(n615), .Q(sample_data0_q[9]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_8_ ( .D(sdram_data_io[8]), .CP(n627), 
        .CDN(n615), .Q(sample_data0_q[8]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_7_ ( .D(sdram_data_io[7]), .CP(n627), 
        .CDN(n615), .Q(sample_data0_q[7]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_6_ ( .D(sdram_data_io[6]), .CP(n627), 
        .CDN(n615), .Q(sample_data0_q[6]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_5_ ( .D(sdram_data_io[5]), .CP(n628), 
        .CDN(n614), .Q(sample_data0_q[5]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_4_ ( .D(sdram_data_io[4]), .CP(n628), 
        .CDN(n614), .Q(sample_data0_q[4]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_3_ ( .D(sdram_data_io[3]), .CP(n628), 
        .CDN(n614), .Q(sample_data0_q[3]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_2_ ( .D(sdram_data_io[2]), .CP(n629), 
        .CDN(n613), .Q(sample_data0_q[2]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_1_ ( .D(sdram_data_io[1]), .CP(n629), 
        .CDN(n613), .Q(sample_data0_q[1]) );
  DFCNQD1BWP12T30P140 sample_data0_q_reg_0_ ( .D(sdram_data_io[0]), .CP(n629), 
        .CDN(n613), .Q(sample_data0_q[0]) );
  DFCNQD1BWP12T30P140 state_q_reg_2_ ( .D(N157), .CP(n629), .CDN(n252), .Q(
        state_q[2]) );
  DFCNQD1BWP12T30P140 refresh_timer_q_reg_1_ ( .D(N179), .CP(n624), .CDN(n621), 
        .Q(refresh_timer_q[1]) );
  DFCNQD1BWP12T30P140 state_q_reg_0_ ( .D(N155), .CP(n622), .CDN(n621), .Q(
        state_q[0]) );
  DFCNQD1BWP12T30P140 state_q_reg_1_ ( .D(N156), .CP(n625), .CDN(n621), .Q(
        state_q[1]) );
  DFCNQD1BWP12T30P140 data_q_reg_15_ ( .D(n268), .CP(n625), .CDN(n616), .Q(
        data_q[15]) );
  DFCNQD1BWP12T30P140 data_q_reg_14_ ( .D(n269), .CP(n624), .CDN(n620), .Q(
        data_q[14]) );
  DFCNQD1BWP12T30P140 data_q_reg_13_ ( .D(n270), .CP(n626), .CDN(n252), .Q(
        data_q[13]) );
  DFCNQD1BWP12T30P140 data_q_reg_12_ ( .D(n271), .CP(n627), .CDN(n616), .Q(
        data_q[12]) );
  DFCNQD1BWP12T30P140 data_q_reg_11_ ( .D(n272), .CP(n626), .CDN(n616), .Q(
        data_q[11]) );
  DFCNQD1BWP12T30P140 data_q_reg_10_ ( .D(n273), .CP(n626), .CDN(n616), .Q(
        data_q[10]) );
  DFCNQD1BWP12T30P140 data_q_reg_9_ ( .D(n274), .CP(n626), .CDN(n615), .Q(
        data_q[9]) );
  DFCNQD1BWP12T30P140 data_q_reg_8_ ( .D(n275), .CP(n627), .CDN(n615), .Q(
        data_q[8]) );
  DFCNQD1BWP12T30P140 data_q_reg_7_ ( .D(n276), .CP(n627), .CDN(n615), .Q(
        data_q[7]) );
  DFCNQD1BWP12T30P140 data_q_reg_6_ ( .D(n277), .CP(n627), .CDN(n615), .Q(
        data_q[6]) );
  DFCNQD1BWP12T30P140 data_q_reg_5_ ( .D(n278), .CP(n628), .CDN(n614), .Q(
        data_q[5]) );
  DFCNQD1BWP12T30P140 data_q_reg_4_ ( .D(n279), .CP(n628), .CDN(n614), .Q(
        data_q[4]) );
  DFCNQD1BWP12T30P140 data_q_reg_3_ ( .D(n280), .CP(n628), .CDN(n614), .Q(
        data_q[3]) );
  DFCNQD1BWP12T30P140 data_q_reg_2_ ( .D(n281), .CP(n629), .CDN(n613), .Q(
        data_q[2]) );
  DFCNQD1BWP12T30P140 data_q_reg_1_ ( .D(n282), .CP(n629), .CDN(n613), .Q(
        data_q[1]) );
  DFCNQD1BWP12T30P140 data_q_reg_0_ ( .D(n283), .CP(n629), .CDN(n613), .Q(
        data_q[0]) );
  DFCNQD1BWP12T30P140 state_q_reg_3_ ( .D(N158), .CP(clk_i), .CDN(n252), .Q(
        state_q[3]) );
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
  AOI221D0BWP12T30P140 U375 ( .A1(n567), .A2(n399), .B1(n398), .B2(n399), .C(
        n570), .ZN(N191) );
  AOI221D0BWP12T30P140 U376 ( .A1(n401), .A2(n568), .B1(n400), .B2(n568), .C(
        n570), .ZN(N189) );
  AOI221D0BWP12T30P140 U377 ( .A1(we_i), .A2(n503), .B1(n507), .B2(n503), .C(
        n491), .ZN(n554) );
  AOI221D0BWP12T30P140 U378 ( .A1(n562), .A2(n561), .B1(n560), .B2(n561), .C(
        n570), .ZN(N187) );
  AOI221D0BWP12T30P140 U379 ( .A1(n524), .A2(n528), .B1(n380), .B2(n528), .C(
        n570), .ZN(N182) );
  ND2D0BWP12T30P140 U380 ( .A1(n381), .A2(state_q[2]), .ZN(stall_o) );
  NR2D0BWP12T30P140 U381 ( .A1(state_q[3]), .A2(state_q[0]), .ZN(n381) );
  INVD0BWP12T30P140 U382 ( .I(state_q[2]), .ZN(n523) );
  CKBD0BWP12T30P140 U383 ( .I(n536), .Z(n539) );
  INVD0BWP12T30P140 U384 ( .I(data_rd_en_q), .ZN(n2) );
  INVD0BWP12T30P140 U385 ( .I(refresh_timer_q[0]), .ZN(N178) );
  NR2D0BWP12T30P140 U386 ( .A1(refresh_timer_q[7]), .A2(refresh_timer_q[6]), 
        .ZN(n372) );
  INVD0BWP12T30P140 U387 ( .I(refresh_timer_q[1]), .ZN(n564) );
  INVD0BWP12T30P140 U388 ( .I(refresh_timer_q[2]), .ZN(n521) );
  ND3D0BWP12T30P140 U389 ( .A1(n564), .A2(n521), .A3(N178), .ZN(n525) );
  NR2D0BWP12T30P140 U390 ( .A1(refresh_timer_q[3]), .A2(n525), .ZN(n524) );
  INVD0BWP12T30P140 U391 ( .I(refresh_timer_q[4]), .ZN(n380) );
  ND2D0BWP12T30P140 U392 ( .A1(n524), .A2(n380), .ZN(n528) );
  NR2D0BWP12T30P140 U393 ( .A1(refresh_timer_q[5]), .A2(n528), .ZN(n530) );
  ND2D0BWP12T30P140 U394 ( .A1(n372), .A2(n530), .ZN(n537) );
  NR2D0BWP12T30P140 U395 ( .A1(refresh_timer_q[8]), .A2(n537), .ZN(n562) );
  INVD0BWP12T30P140 U396 ( .I(refresh_timer_q[9]), .ZN(n560) );
  ND2D0BWP12T30P140 U397 ( .A1(n562), .A2(n560), .ZN(n561) );
  NR2D0BWP12T30P140 U398 ( .A1(refresh_timer_q[10]), .A2(n561), .ZN(n401) );
  INVD0BWP12T30P140 U399 ( .I(refresh_timer_q[11]), .ZN(n400) );
  ND2D0BWP12T30P140 U400 ( .A1(n401), .A2(n400), .ZN(n568) );
  NR2D0BWP12T30P140 U401 ( .A1(refresh_timer_q[12]), .A2(n568), .ZN(n567) );
  INVD0BWP12T30P140 U402 ( .I(refresh_timer_q[13]), .ZN(n398) );
  ND2D0BWP12T30P140 U403 ( .A1(n567), .A2(n398), .ZN(n399) );
  NR2D0BWP12T30P140 U404 ( .A1(refresh_timer_q[14]), .A2(n399), .ZN(n396) );
  INVD0BWP12T30P140 U405 ( .I(refresh_timer_q[3]), .ZN(n386) );
  INVD0BWP12T30P140 U406 ( .I(refresh_timer_q[5]), .ZN(n382) );
  NR4D0BWP12T30P140 U407 ( .A1(refresh_timer_q[14]), .A2(refresh_timer_q[16]), 
        .A3(refresh_timer_q[7]), .A4(refresh_timer_q[6]), .ZN(n374) );
  NR4D0BWP12T30P140 U408 ( .A1(refresh_timer_q[15]), .A2(refresh_timer_q[11]), 
        .A3(refresh_timer_q[13]), .A4(refresh_timer_q[12]), .ZN(n373) );
  IND4D1BWP12T30P140 U409 ( .A1(refresh_timer_q[8]), .B1(n374), .B2(n373), 
        .B3(N178), .ZN(n375) );
  NR3D0BWP12T30P140 U410 ( .A1(refresh_timer_q[10]), .A2(refresh_timer_q[9]), 
        .A3(n375), .ZN(n383) );
  INVD0BWP12T30P140 U411 ( .I(n383), .ZN(n379) );
  NR4D0BWP12T30P140 U412 ( .A1(refresh_timer_q[1]), .A2(refresh_timer_q[2]), 
        .A3(refresh_timer_q[4]), .A4(n379), .ZN(n388) );
  ND3D0BWP12T30P140 U413 ( .A1(n386), .A2(n382), .A3(n388), .ZN(n527) );
  OAI21D0BWP12T30P140 U414 ( .A1(refresh_timer_q[15]), .A2(n396), .B(n527), 
        .ZN(n376) );
  AOI21D0BWP12T30P140 U415 ( .A1(refresh_timer_q[15]), .A2(n396), .B(n376), 
        .ZN(N193) );
  INVD0BWP12T30P140 U416 ( .I(addr_i[11]), .ZN(n394) );
  NR2D0BWP12T30P140 U417 ( .A1(addr_i[10]), .A2(n394), .ZN(n462) );
  INVD0BWP12T30P140 U418 ( .I(state_q[0]), .ZN(n494) );
  NR2D0BWP12T30P140 U419 ( .A1(n494), .A2(state_q[3]), .ZN(n480) );
  ND2D0BWP12T30P140 U420 ( .A1(state_q[1]), .A2(n523), .ZN(n409) );
  INR2D1BWP12T30P140 U421 ( .A1(n480), .B1(n409), .ZN(n599) );
  ND2D0BWP12T30P140 U422 ( .A1(n462), .A2(n599), .ZN(n402) );
  INVD0BWP12T30P140 U423 ( .I(n402), .ZN(n475) );
  INVD0BWP12T30P140 U424 ( .I(addr_i[23]), .ZN(n563) );
  CKBD0BWP12T30P140 U425 ( .I(n475), .Z(n476) );
  MAOI22D0BWP12T30P140 U426 ( .A1(n475), .A2(n563), .B1(active_row_q[24]), 
        .B2(n476), .ZN(n349) );
  INVD0BWP12T30P140 U427 ( .I(addr_i[24]), .ZN(n581) );
  MAOI22D0BWP12T30P140 U428 ( .A1(n475), .A2(n581), .B1(active_row_q[25]), 
        .B2(n476), .ZN(n350) );
  NR2D0BWP12T30P140 U429 ( .A1(addr_i[11]), .A2(addr_i[10]), .ZN(n463) );
  ND2D0BWP12T30P140 U430 ( .A1(n463), .A2(n599), .ZN(n405) );
  INVD0BWP12T30P140 U431 ( .I(n405), .ZN(n517) );
  CKBD0BWP12T30P140 U432 ( .I(n517), .Z(n516) );
  MAOI22D0BWP12T30P140 U433 ( .A1(n517), .A2(n563), .B1(active_row_q[50]), 
        .B2(n516), .ZN(n323) );
  INVD0BWP12T30P140 U434 ( .I(n527), .ZN(n570) );
  INVD0BWP12T30P140 U435 ( .I(target_state_q[1]), .ZN(n585) );
  INVD0BWP12T30P140 U436 ( .I(target_state_q[0]), .ZN(n493) );
  INVD0BWP12T30P140 U437 ( .I(target_state_q[3]), .ZN(n472) );
  NR3D0BWP12T30P140 U438 ( .A1(target_state_q[2]), .A2(n493), .A3(n472), .ZN(
        n542) );
  NR2D0BWP12T30P140 U439 ( .A1(state_q[2]), .A2(state_q[1]), .ZN(n481) );
  ND2D0BWP12T30P140 U440 ( .A1(state_q[3]), .A2(n481), .ZN(n486) );
  NR2D0BWP12T30P140 U441 ( .A1(state_q[0]), .A2(n486), .ZN(n540) );
  ND3D0BWP12T30P140 U442 ( .A1(n585), .A2(n542), .A3(n540), .ZN(n509) );
  INVD0BWP12T30P140 U443 ( .I(n509), .ZN(n407) );
  INVD0BWP12T30P140 U444 ( .I(addr_i[10]), .ZN(n393) );
  NR2D0BWP12T30P140 U445 ( .A1(addr_i[11]), .A2(n393), .ZN(n461) );
  IOA21D0BWP12T30P140 U446 ( .A1(n461), .A2(n540), .B(row_open_q[1]), .ZN(n377) );
  ND2D0BWP12T30P140 U447 ( .A1(n461), .A2(n599), .ZN(n477) );
  OAI21D0BWP12T30P140 U448 ( .A1(n407), .A2(n377), .B(n477), .ZN(n367) );
  INVD0BWP12T30P140 U449 ( .I(addr_i[20]), .ZN(n577) );
  MAOI22D0BWP12T30P140 U450 ( .A1(n475), .A2(n577), .B1(active_row_q[21]), 
        .B2(n476), .ZN(n346) );
  AOI21D0BWP12T30P140 U451 ( .A1(refresh_timer_q[14]), .A2(n399), .B(n396), 
        .ZN(n378) );
  NR2D0BWP12T30P140 U452 ( .A1(n570), .A2(n378), .ZN(N192) );
  INVD0BWP12T30P140 U453 ( .I(addr_i[22]), .ZN(n565) );
  INVD0BWP12T30P140 U454 ( .I(n599), .ZN(n579) );
  NR3D0BWP12T30P140 U455 ( .A1(refresh_timer_q[2]), .A2(n564), .A3(n379), .ZN(
        n387) );
  AN4D0BWP12T30P140 U456 ( .A1(n387), .A2(n382), .A3(n380), .A4(
        refresh_timer_q[3]), .Z(n385) );
  ND2D0BWP12T30P140 U457 ( .A1(n381), .A2(n481), .ZN(n547) );
  INVD0BWP12T30P140 U458 ( .I(n547), .ZN(n605) );
  ND2D0BWP12T30P140 U459 ( .A1(n385), .A2(n605), .ZN(n600) );
  NR2D0BWP12T30P140 U460 ( .A1(n494), .A2(n486), .ZN(n491) );
  NR2D0BWP12T30P140 U461 ( .A1(n599), .A2(n491), .ZN(n607) );
  ND4D0BWP12T30P140 U462 ( .A1(refresh_timer_q[2]), .A2(n383), .A3(
        refresh_timer_q[4]), .A4(n382), .ZN(n384) );
  AOI221D0BWP12T30P140 U463 ( .A1(refresh_timer_q[1]), .A2(n386), .B1(n564), 
        .B2(refresh_timer_q[3]), .C(n384), .ZN(n604) );
  NR3D0BWP12T30P140 U464 ( .A1(n385), .A2(n604), .A3(n547), .ZN(n389) );
  ND4D0BWP12T30P140 U465 ( .A1(refresh_timer_q[5]), .A2(n387), .A3(
        refresh_timer_q[4]), .A4(n386), .ZN(n515) );
  ND3D0BWP12T30P140 U466 ( .A1(refresh_timer_q[5]), .A2(refresh_timer_q[3]), 
        .A3(n388), .ZN(n390) );
  IND2D1BWP12T30P140 U467 ( .A1(n481), .B1(state_q[3]), .ZN(n510) );
  INVD0BWP12T30P140 U468 ( .I(state_q[1]), .ZN(n555) );
  ND2D0BWP12T30P140 U469 ( .A1(n480), .A2(n555), .ZN(n488) );
  OAI211D0BWP12T30P140 U470 ( .A1(state_q[0]), .A2(n409), .B(n510), .C(n488), 
        .ZN(n591) );
  AOI31D0BWP12T30P140 U471 ( .A1(n389), .A2(n515), .A3(n390), .B(n591), .ZN(
        n593) );
  ND3D0BWP12T30P140 U472 ( .A1(stall_o), .A2(n607), .A3(n593), .ZN(n473) );
  INR2D1BWP12T30P140 U473 ( .A1(n600), .B1(n473), .ZN(n598) );
  ND3D0BWP12T30P140 U474 ( .A1(state_q[2]), .A2(state_q[1]), .A3(n480), .ZN(
        n597) );
  INVD0BWP12T30P140 U475 ( .I(n597), .ZN(n538) );
  NR2D0BWP12T30P140 U476 ( .A1(n390), .A2(n547), .ZN(n609) );
  INR4D0BWP12T30P140 U477 ( .A1(n598), .B1(n540), .B2(n538), .B3(n609), .ZN(
        n526) );
  AOI211D0BWP12T30P140 U478 ( .A1(sdram_addr_o[10]), .A2(n526), .B(n407), .C(
        n609), .ZN(n391) );
  OAI21D0BWP12T30P140 U479 ( .A1(n565), .A2(n579), .B(n391), .ZN(n298) );
  AOI21D0BWP12T30P140 U480 ( .A1(refresh_timer_q[10]), .A2(n561), .B(n401), 
        .ZN(n392) );
  NR2D0BWP12T30P140 U481 ( .A1(n570), .A2(n392), .ZN(N188) );
  MAOI22D0BWP12T30P140 U482 ( .A1(n475), .A2(n565), .B1(active_row_q[23]), 
        .B2(n476), .ZN(n348) );
  NR2D0BWP12T30P140 U483 ( .A1(n394), .A2(n393), .ZN(n464) );
  IOA21D0BWP12T30P140 U484 ( .A1(n464), .A2(n540), .B(row_open_q[3]), .ZN(n395) );
  ND2D0BWP12T30P140 U485 ( .A1(n464), .A2(n599), .ZN(n534) );
  OAI21D0BWP12T30P140 U486 ( .A1(n407), .A2(n395), .B(n534), .ZN(n365) );
  INVD0BWP12T30P140 U487 ( .I(n396), .ZN(n397) );
  OA21D0BWP12T30P140 U488 ( .A1(refresh_timer_q[15]), .A2(n397), .B(
        refresh_timer_q[16]), .Z(N194) );
  INVD0BWP12T30P140 U489 ( .I(addr_i[21]), .ZN(n571) );
  MAOI22D0BWP12T30P140 U490 ( .A1(n475), .A2(n571), .B1(active_row_q[22]), 
        .B2(n476), .ZN(n347) );
  INVD0BWP12T30P140 U491 ( .I(addr_i[17]), .ZN(n575) );
  MAOI22D0BWP12T30P140 U492 ( .A1(n475), .A2(n575), .B1(active_row_q[18]), 
        .B2(n476), .ZN(n343) );
  INVD0BWP12T30P140 U493 ( .I(addr_i[18]), .ZN(n589) );
  MAOI22D0BWP12T30P140 U494 ( .A1(n475), .A2(n589), .B1(active_row_q[19]), 
        .B2(n476), .ZN(n344) );
  IOA21D0BWP12T30P140 U495 ( .A1(n462), .A2(n540), .B(row_open_q[2]), .ZN(n403) );
  OAI21D0BWP12T30P140 U496 ( .A1(n407), .A2(n403), .B(n402), .ZN(n366) );
  INVD0BWP12T30P140 U497 ( .I(stall_o), .ZN(n594) );
  ND2D0BWP12T30P140 U498 ( .A1(state_q[1]), .A2(n594), .ZN(n592) );
  INVD0BWP12T30P140 U499 ( .I(n592), .ZN(n536) );
  INVD0BWP12T30P140 U500 ( .I(rd_q[3]), .ZN(n596) );
  NR2D0BWP12T30P140 U501 ( .A1(n536), .A2(n596), .ZN(n478) );
  NR2D0BWP12T30P140 U502 ( .A1(n536), .A2(rd_q[3]), .ZN(n479) );
  AO222D0BWP12T30P140 U503 ( .A1(n539), .A2(data_i[16]), .B1(n478), .B2(
        data_o[16]), .C1(n479), .C2(data_o[0]), .Z(n284) );
  INVD0BWP12T30P140 U504 ( .I(addr_i[16]), .ZN(n583) );
  MAOI22D0BWP12T30P140 U505 ( .A1(n475), .A2(n583), .B1(active_row_q[17]), 
        .B2(n475), .ZN(n342) );
  INVD0BWP12T30P140 U506 ( .I(addr_i[19]), .ZN(n574) );
  MAOI22D0BWP12T30P140 U507 ( .A1(n475), .A2(n574), .B1(active_row_q[20]), 
        .B2(n476), .ZN(n345) );
  AOI32D0BWP12T30P140 U508 ( .A1(sdram_dqm_o[0]), .A2(n597), .A3(stall_o), 
        .B1(dqm_buffer_q[0]), .B2(n538), .ZN(n404) );
  OAI21D0BWP12T30P140 U509 ( .A1(sel_i[0]), .A2(n592), .B(n404), .ZN(n306) );
  AO222D0BWP12T30P140 U510 ( .A1(n539), .A2(data_i[18]), .B1(n479), .B2(
        data_o[2]), .C1(data_o[18]), .C2(n478), .Z(n266) );
  IOA21D0BWP12T30P140 U511 ( .A1(n463), .A2(n540), .B(row_open_q[0]), .ZN(n406) );
  OAI21D0BWP12T30P140 U512 ( .A1(n407), .A2(n406), .B(n405), .ZN(n370) );
  INVD0BWP12T30P140 U513 ( .I(addr_i[15]), .ZN(n576) );
  MAOI22D0BWP12T30P140 U514 ( .A1(n475), .A2(n576), .B1(active_row_q[16]), 
        .B2(n476), .ZN(n341) );
  AO222D0BWP12T30P140 U515 ( .A1(n539), .A2(data_i[19]), .B1(n479), .B2(
        data_o[3]), .C1(data_o[19]), .C2(n478), .Z(n265) );
  AOI32D0BWP12T30P140 U516 ( .A1(sdram_dqm_o[1]), .A2(n597), .A3(stall_o), 
        .B1(dqm_buffer_q[1]), .B2(n538), .ZN(n408) );
  OAI21D0BWP12T30P140 U517 ( .A1(sel_i[1]), .A2(n592), .B(n408), .ZN(n305) );
  INVD0BWP12T30P140 U518 ( .I(addr_i[14]), .ZN(n578) );
  MAOI22D0BWP12T30P140 U519 ( .A1(n475), .A2(n578), .B1(active_row_q[15]), 
        .B2(n476), .ZN(n340) );
  AO222D0BWP12T30P140 U520 ( .A1(n539), .A2(data_i[20]), .B1(n479), .B2(
        data_o[4]), .C1(data_o[20]), .C2(n478), .Z(n264) );
  NR3D0BWP12T30P140 U521 ( .A1(state_q[3]), .A2(state_q[0]), .A3(n409), .ZN(
        n550) );
  INVD0BWP12T30P140 U522 ( .I(n550), .ZN(n471) );
  INVD0BWP12T30P140 U523 ( .I(refresh_q), .ZN(n549) );
  NR2D0BWP12T30P140 U524 ( .A1(n471), .A2(n549), .ZN(n497) );
  INVD0BWP12T30P140 U525 ( .I(n497), .ZN(n511) );
  AOI22D0BWP12T30P140 U526 ( .A1(n462), .A2(active_row_q[23]), .B1(n461), .B2(
        active_row_q[36]), .ZN(n411) );
  AOI22D0BWP12T30P140 U527 ( .A1(n464), .A2(active_row_q[10]), .B1(n463), .B2(
        active_row_q[49]), .ZN(n410) );
  ND2D0BWP12T30P140 U528 ( .A1(n411), .A2(n410), .ZN(n416) );
  AOI22D0BWP12T30P140 U529 ( .A1(n462), .A2(active_row_q[25]), .B1(n461), .B2(
        active_row_q[38]), .ZN(n413) );
  AOI22D0BWP12T30P140 U530 ( .A1(n464), .A2(active_row_q[12]), .B1(n463), .B2(
        active_row_q[51]), .ZN(n412) );
  ND2D0BWP12T30P140 U531 ( .A1(n413), .A2(n412), .ZN(n415) );
  OAI22D0BWP12T30P140 U532 ( .A1(n581), .A2(n415), .B1(n565), .B2(n416), .ZN(
        n414) );
  AOI221D0BWP12T30P140 U533 ( .A1(n416), .A2(n565), .B1(n415), .B2(n581), .C(
        n414), .ZN(n469) );
  AOI22D0BWP12T30P140 U534 ( .A1(n464), .A2(active_row_q[6]), .B1(n463), .B2(
        active_row_q[45]), .ZN(n418) );
  AOI22D0BWP12T30P140 U535 ( .A1(n462), .A2(active_row_q[19]), .B1(n461), .B2(
        active_row_q[32]), .ZN(n417) );
  ND2D0BWP12T30P140 U536 ( .A1(n418), .A2(n417), .ZN(n428) );
  AOI22D0BWP12T30P140 U537 ( .A1(n462), .A2(active_row_q[17]), .B1(n461), .B2(
        active_row_q[30]), .ZN(n420) );
  AOI22D0BWP12T30P140 U538 ( .A1(n464), .A2(active_row_q[4]), .B1(n463), .B2(
        active_row_q[43]), .ZN(n419) );
  ND2D0BWP12T30P140 U539 ( .A1(n420), .A2(n419), .ZN(n425) );
  AOI22D0BWP12T30P140 U540 ( .A1(n462), .A2(active_row_q[24]), .B1(n461), .B2(
        active_row_q[37]), .ZN(n422) );
  AOI22D0BWP12T30P140 U541 ( .A1(n464), .A2(active_row_q[11]), .B1(n463), .B2(
        active_row_q[50]), .ZN(n421) );
  ND2D0BWP12T30P140 U542 ( .A1(n422), .A2(n421), .ZN(n424) );
  OAI22D0BWP12T30P140 U543 ( .A1(n563), .A2(n424), .B1(n583), .B2(n425), .ZN(
        n423) );
  AOI221D0BWP12T30P140 U544 ( .A1(n425), .A2(n583), .B1(n424), .B2(n563), .C(
        n423), .ZN(n426) );
  OAI21D0BWP12T30P140 U545 ( .A1(n589), .A2(n428), .B(n426), .ZN(n427) );
  AOI21D0BWP12T30P140 U546 ( .A1(n589), .A2(n428), .B(n427), .ZN(n468) );
  AOI22D0BWP12T30P140 U547 ( .A1(n462), .A2(active_row_q[13]), .B1(n461), .B2(
        active_row_q[26]), .ZN(n430) );
  AOI22D0BWP12T30P140 U548 ( .A1(n464), .A2(active_row_q[0]), .B1(n463), .B2(
        active_row_q[39]), .ZN(n429) );
  ND2D0BWP12T30P140 U549 ( .A1(n430), .A2(n429), .ZN(n435) );
  INVD0BWP12T30P140 U550 ( .I(addr_i[12]), .ZN(n535) );
  AOI22D0BWP12T30P140 U551 ( .A1(n462), .A2(active_row_q[22]), .B1(n461), .B2(
        active_row_q[35]), .ZN(n432) );
  AOI22D0BWP12T30P140 U552 ( .A1(n464), .A2(active_row_q[9]), .B1(n463), .B2(
        active_row_q[48]), .ZN(n431) );
  ND2D0BWP12T30P140 U553 ( .A1(n432), .A2(n431), .ZN(n434) );
  OAI22D0BWP12T30P140 U554 ( .A1(n571), .A2(n434), .B1(n535), .B2(n435), .ZN(
        n433) );
  AOI221D0BWP12T30P140 U555 ( .A1(n435), .A2(n535), .B1(n434), .B2(n571), .C(
        n433), .ZN(n460) );
  AOI22D0BWP12T30P140 U556 ( .A1(n462), .A2(active_row_q[16]), .B1(n461), .B2(
        active_row_q[29]), .ZN(n437) );
  AOI22D0BWP12T30P140 U557 ( .A1(n464), .A2(active_row_q[3]), .B1(n463), .B2(
        active_row_q[42]), .ZN(n436) );
  ND2D0BWP12T30P140 U558 ( .A1(n437), .A2(n436), .ZN(n442) );
  AOI22D0BWP12T30P140 U559 ( .A1(n462), .A2(active_row_q[15]), .B1(n461), .B2(
        active_row_q[28]), .ZN(n439) );
  AOI22D0BWP12T30P140 U560 ( .A1(n464), .A2(active_row_q[2]), .B1(n463), .B2(
        active_row_q[41]), .ZN(n438) );
  ND2D0BWP12T30P140 U561 ( .A1(n439), .A2(n438), .ZN(n441) );
  OAI22D0BWP12T30P140 U562 ( .A1(n578), .A2(n441), .B1(n576), .B2(n442), .ZN(
        n440) );
  AOI221D0BWP12T30P140 U563 ( .A1(n442), .A2(n576), .B1(n441), .B2(n578), .C(
        n440), .ZN(n459) );
  AOI22D0BWP12T30P140 U564 ( .A1(n462), .A2(active_row_q[14]), .B1(n461), .B2(
        active_row_q[27]), .ZN(n444) );
  AOI22D0BWP12T30P140 U565 ( .A1(n464), .A2(active_row_q[1]), .B1(n463), .B2(
        active_row_q[40]), .ZN(n443) );
  ND2D0BWP12T30P140 U566 ( .A1(n444), .A2(n443), .ZN(n449) );
  INVD0BWP12T30P140 U567 ( .I(addr_i[13]), .ZN(n587) );
  AOI22D0BWP12T30P140 U568 ( .A1(n462), .A2(active_row_q[18]), .B1(n461), .B2(
        active_row_q[31]), .ZN(n446) );
  AOI22D0BWP12T30P140 U569 ( .A1(n464), .A2(active_row_q[5]), .B1(n463), .B2(
        active_row_q[44]), .ZN(n445) );
  ND2D0BWP12T30P140 U570 ( .A1(n446), .A2(n445), .ZN(n448) );
  OAI22D0BWP12T30P140 U571 ( .A1(n575), .A2(n448), .B1(n587), .B2(n449), .ZN(
        n447) );
  AOI221D0BWP12T30P140 U572 ( .A1(n449), .A2(n587), .B1(n448), .B2(n575), .C(
        n447), .ZN(n458) );
  AOI22D0BWP12T30P140 U573 ( .A1(n462), .A2(active_row_q[20]), .B1(n461), .B2(
        active_row_q[33]), .ZN(n451) );
  AOI22D0BWP12T30P140 U574 ( .A1(n464), .A2(active_row_q[7]), .B1(n463), .B2(
        active_row_q[46]), .ZN(n450) );
  ND2D0BWP12T30P140 U575 ( .A1(n451), .A2(n450), .ZN(n456) );
  AOI22D0BWP12T30P140 U576 ( .A1(n462), .A2(active_row_q[21]), .B1(n461), .B2(
        active_row_q[34]), .ZN(n453) );
  AOI22D0BWP12T30P140 U577 ( .A1(n464), .A2(active_row_q[8]), .B1(n463), .B2(
        active_row_q[47]), .ZN(n452) );
  ND2D0BWP12T30P140 U578 ( .A1(n453), .A2(n452), .ZN(n455) );
  OAI22D0BWP12T30P140 U579 ( .A1(n577), .A2(n455), .B1(n574), .B2(n456), .ZN(
        n454) );
  AOI221D0BWP12T30P140 U580 ( .A1(n456), .A2(n574), .B1(n455), .B2(n577), .C(
        n454), .ZN(n457) );
  AN4D0BWP12T30P140 U581 ( .A1(n460), .A2(n459), .A3(n458), .A4(n457), .Z(n467) );
  AOI22D0BWP12T30P140 U582 ( .A1(n462), .A2(row_open_q[2]), .B1(n461), .B2(
        row_open_q[1]), .ZN(n466) );
  AOI22D0BWP12T30P140 U583 ( .A1(n464), .A2(row_open_q[3]), .B1(n463), .B2(
        row_open_q[0]), .ZN(n465) );
  ND2D0BWP12T30P140 U584 ( .A1(n466), .A2(n465), .ZN(n552) );
  ND4D0BWP12T30P140 U585 ( .A1(n469), .A2(n468), .A3(n467), .A4(n552), .ZN(
        n470) );
  INVD0BWP12T30P140 U586 ( .I(n470), .ZN(n490) );
  ND2D0BWP12T30P140 U587 ( .A1(stb_i), .A2(cyc_i), .ZN(n548) );
  NR2D0BWP12T30P140 U588 ( .A1(refresh_q), .A2(n548), .ZN(n489) );
  ND2D0BWP12T30P140 U589 ( .A1(n550), .A2(n489), .ZN(n551) );
  NR2D0BWP12T30P140 U590 ( .A1(n490), .A2(n551), .ZN(n584) );
  AO21D0BWP12T30P140 U591 ( .A1(target_state_q[2]), .A2(n511), .B(n584), .Z(
        target_state_r[2]) );
  NR2D0BWP12T30P140 U592 ( .A1(n470), .A2(n551), .ZN(n559) );
  AOI211D0BWP12T30P140 U593 ( .A1(n549), .A2(n548), .B(n559), .C(n471), .ZN(
        n586) );
  OAI21D0BWP12T30P140 U594 ( .A1(n586), .A2(n472), .B(n511), .ZN(
        target_state_r[3]) );
  OAI21D0BWP12T30P140 U595 ( .A1(n586), .A2(n493), .B(n511), .ZN(
        target_state_r[0]) );
  NR2D0BWP12T30P140 U596 ( .A1(n540), .A2(n599), .ZN(n612) );
  IND4D1BWP12T30P140 U597 ( .A1(target_state_r[2]), .B1(target_state_r[3]), 
        .B2(target_state_r[0]), .B3(n585), .ZN(n474) );
  AOI21D0BWP12T30P140 U598 ( .A1(n540), .A2(n474), .B(n473), .ZN(n518) );
  AOI21D0BWP12T30P140 U599 ( .A1(n612), .A2(stall_o), .B(n518), .ZN(n519) );
  AO22D0BWP12T30P140 U600 ( .A1(addr_i[11]), .A2(n519), .B1(n518), .B2(
        sdram_ba_o[1]), .Z(n287) );
  AO222D0BWP12T30P140 U601 ( .A1(n539), .A2(data_i[21]), .B1(n479), .B2(
        data_o[5]), .C1(data_o[21]), .C2(n478), .Z(n263) );
  MAOI22D0BWP12T30P140 U602 ( .A1(n475), .A2(n587), .B1(active_row_q[14]), 
        .B2(n476), .ZN(n339) );
  AO222D0BWP12T30P140 U603 ( .A1(n536), .A2(data_i[17]), .B1(n479), .B2(
        data_o[1]), .C1(data_o[17]), .C2(n478), .Z(n267) );
  AO222D0BWP12T30P140 U604 ( .A1(n539), .A2(data_i[22]), .B1(n479), .B2(
        data_o[6]), .C1(data_o[22]), .C2(n478), .Z(n262) );
  MAOI22D0BWP12T30P140 U605 ( .A1(n476), .A2(n535), .B1(active_row_q[13]), 
        .B2(n476), .ZN(n351) );
  OAI21D0BWP12T30P140 U606 ( .A1(n491), .A2(n549), .B(n527), .ZN(n369) );
  AO222D0BWP12T30P140 U607 ( .A1(n539), .A2(data_i[23]), .B1(n479), .B2(
        data_o[7]), .C1(data_o[23]), .C2(n478), .Z(n261) );
  AO222D0BWP12T30P140 U608 ( .A1(addr_i[20]), .A2(n599), .B1(n594), .B2(
        addr_i[9]), .C1(sdram_addr_o[8]), .C2(n598), .Z(n296) );
  AO222D0BWP12T30P140 U609 ( .A1(n539), .A2(data_i[24]), .B1(n479), .B2(
        data_o[8]), .C1(data_o[24]), .C2(n478), .Z(n260) );
  INVD0BWP12T30P140 U610 ( .I(n477), .ZN(n582) );
  CKBD0BWP12T30P140 U611 ( .I(n582), .Z(n580) );
  MAOI22D0BWP12T30P140 U612 ( .A1(n580), .A2(n535), .B1(active_row_q[26]), 
        .B2(n580), .ZN(n338) );
  AO222D0BWP12T30P140 U613 ( .A1(n539), .A2(data_i[25]), .B1(n479), .B2(
        data_o[9]), .C1(data_o[25]), .C2(n478), .Z(n259) );
  AO222D0BWP12T30P140 U614 ( .A1(n539), .A2(data_i[26]), .B1(n479), .B2(
        data_o[10]), .C1(data_o[26]), .C2(n478), .Z(n258) );
  AO222D0BWP12T30P140 U615 ( .A1(addr_i[19]), .A2(n599), .B1(n594), .B2(
        addr_i[8]), .C1(sdram_addr_o[7]), .C2(n598), .Z(n295) );
  AO222D0BWP12T30P140 U616 ( .A1(n539), .A2(data_i[27]), .B1(n479), .B2(
        data_o[11]), .C1(data_o[27]), .C2(n478), .Z(n257) );
  MAOI22D0BWP12T30P140 U617 ( .A1(n582), .A2(n563), .B1(active_row_q[37]), 
        .B2(n580), .ZN(n336) );
  AO222D0BWP12T30P140 U618 ( .A1(n539), .A2(data_i[28]), .B1(n479), .B2(
        data_o[12]), .C1(data_o[28]), .C2(n478), .Z(n256) );
  MAOI22D0BWP12T30P140 U619 ( .A1(n582), .A2(n565), .B1(active_row_q[36]), 
        .B2(n580), .ZN(n335) );
  AO222D0BWP12T30P140 U620 ( .A1(n539), .A2(data_i[29]), .B1(n479), .B2(
        data_o[13]), .C1(data_o[29]), .C2(n478), .Z(n255) );
  AO222D0BWP12T30P140 U621 ( .A1(addr_i[18]), .A2(n599), .B1(n594), .B2(
        addr_i[7]), .C1(sdram_addr_o[6]), .C2(n598), .Z(n294) );
  AO222D0BWP12T30P140 U622 ( .A1(n539), .A2(data_i[30]), .B1(n479), .B2(
        data_o[14]), .C1(data_o[30]), .C2(n478), .Z(n254) );
  MAOI22D0BWP12T30P140 U623 ( .A1(n582), .A2(n571), .B1(active_row_q[35]), 
        .B2(n580), .ZN(n334) );
  AO222D0BWP12T30P140 U624 ( .A1(n536), .A2(data_i[31]), .B1(n479), .B2(
        data_o[15]), .C1(data_o[31]), .C2(n478), .Z(n253) );
  MAOI22D0BWP12T30P140 U625 ( .A1(n582), .A2(n577), .B1(active_row_q[34]), 
        .B2(n580), .ZN(n333) );
  NR2D0BWP12T30P140 U626 ( .A1(delay_q[0]), .A2(delay_q[1]), .ZN(n487) );
  INVD0BWP12T30P140 U627 ( .I(n487), .ZN(n484) );
  NR2D0BWP12T30P140 U628 ( .A1(delay_q[2]), .A2(n484), .ZN(n483) );
  ND2D0BWP12T30P140 U629 ( .A1(n481), .A2(n480), .ZN(n495) );
  NR2D0BWP12T30P140 U630 ( .A1(delay_q[3]), .A2(n483), .ZN(n482) );
  AOI211D0BWP12T30P140 U631 ( .A1(delay_q[3]), .A2(n483), .B(n495), .C(n482), 
        .ZN(delay_r[3]) );
  AOI21D0BWP12T30P140 U632 ( .A1(n484), .A2(delay_q[2]), .B(n483), .ZN(n485)
         );
  NR2D0BWP12T30P140 U633 ( .A1(n495), .A2(n485), .ZN(delay_r[2]) );
  OAI211D0BWP12T30P140 U634 ( .A1(delay_q[0]), .A2(n495), .B(n486), .C(n579), 
        .ZN(delay_r[0]) );
  AOI21D0BWP12T30P140 U635 ( .A1(delay_q[1]), .A2(delay_q[0]), .B(n487), .ZN(
        n492) );
  NR2D0BWP12T30P140 U636 ( .A1(n523), .A2(n488), .ZN(n503) );
  ND2D0BWP12T30P140 U637 ( .A1(n490), .A2(n489), .ZN(n507) );
  OAI21D0BWP12T30P140 U638 ( .A1(n492), .A2(n495), .B(n554), .ZN(delay_r[1])
         );
  OAI22D0BWP12T30P140 U639 ( .A1(n494), .A2(n510), .B1(n493), .B2(n579), .ZN(
        n500) );
  NR4D0BWP12T30P140 U640 ( .A1(row_open_q[3]), .A2(row_open_q[0]), .A3(
        row_open_q[2]), .A4(row_open_q[1]), .ZN(n496) );
  INVD0BWP12T30P140 U641 ( .I(n495), .ZN(n544) );
  AOI22D0BWP12T30P140 U642 ( .A1(n497), .A2(n496), .B1(n544), .B2(
        delay_state_q[0]), .ZN(n498) );
  OAI21D0BWP12T30P140 U643 ( .A1(n552), .A2(n551), .B(n498), .ZN(n499) );
  NR4D0BWP12T30P140 U644 ( .A1(n540), .A2(n594), .A3(n500), .A4(n499), .ZN(
        n602) );
  NR4D0BWP12T30P140 U645 ( .A1(delay_r[3]), .A2(delay_r[2]), .A3(delay_r[0]), 
        .A4(delay_r[1]), .ZN(n603) );
  INVD0BWP12T30P140 U646 ( .I(n603), .ZN(n572) );
  MAOI22D0BWP12T30P140 U647 ( .A1(n602), .A2(n572), .B1(n572), .B2(
        delay_state_q[0]), .ZN(n312) );
  AOI22D0BWP12T30P140 U648 ( .A1(n594), .A2(addr_i[6]), .B1(n598), .B2(
        sdram_addr_o[5]), .ZN(n501) );
  OAI211D0BWP12T30P140 U649 ( .A1(n579), .A2(n575), .B(n501), .C(n600), .ZN(
        n293) );
  INVD0BWP12T30P140 U650 ( .I(we_i), .ZN(n502) );
  AOI22D0BWP12T30P140 U651 ( .A1(we_i), .A2(n538), .B1(n503), .B2(n502), .ZN(
        n506) );
  AOI22D0BWP12T30P140 U652 ( .A1(target_state_q[2]), .A2(n599), .B1(n544), 
        .B2(delay_state_q[2]), .ZN(n505) );
  INVD0BWP12T30P140 U653 ( .I(n559), .ZN(n504) );
  OAI211D0BWP12T30P140 U654 ( .A1(n507), .A2(n506), .B(n505), .C(n504), .ZN(
        n508) );
  AOI211D0BWP12T30P140 U655 ( .A1(state_q[2]), .A2(state_q[3]), .B(n594), .C(
        n508), .ZN(n566) );
  MAOI22D0BWP12T30P140 U656 ( .A1(n566), .A2(n572), .B1(n572), .B2(
        delay_state_q[2]), .ZN(n310) );
  MAOI22D0BWP12T30P140 U657 ( .A1(n582), .A2(n574), .B1(active_row_q[33]), 
        .B2(n580), .ZN(n332) );
  AOI22D0BWP12T30P140 U658 ( .A1(target_state_q[3]), .A2(n599), .B1(n544), 
        .B2(delay_state_q[3]), .ZN(n512) );
  ND4D0BWP12T30P140 U659 ( .A1(n512), .A2(n511), .A3(n510), .A4(n509), .ZN(
        n513) );
  AOI21D0BWP12T30P140 U660 ( .A1(n584), .A2(n552), .B(n513), .ZN(n520) );
  MAOI22D0BWP12T30P140 U661 ( .A1(n520), .A2(n572), .B1(n572), .B2(
        delay_state_q[3]), .ZN(n311) );
  MAOI22D0BWP12T30P140 U662 ( .A1(n582), .A2(n589), .B1(active_row_q[32]), 
        .B2(n580), .ZN(n331) );
  AO222D0BWP12T30P140 U663 ( .A1(addr_i[16]), .A2(n599), .B1(n594), .B2(
        addr_i[5]), .C1(sdram_addr_o[4]), .C2(n598), .Z(n292) );
  MAOI22D0BWP12T30P140 U664 ( .A1(n517), .A2(n587), .B1(active_row_q[40]), 
        .B2(n516), .ZN(n313) );
  MAOI22D0BWP12T30P140 U665 ( .A1(n582), .A2(n575), .B1(active_row_q[31]), 
        .B2(n580), .ZN(n330) );
  MAOI22D0BWP12T30P140 U666 ( .A1(n517), .A2(n578), .B1(active_row_q[41]), 
        .B2(n516), .ZN(n314) );
  MAOI22D0BWP12T30P140 U667 ( .A1(n582), .A2(n583), .B1(active_row_q[30]), 
        .B2(n582), .ZN(n329) );
  MAOI22D0BWP12T30P140 U668 ( .A1(n517), .A2(n576), .B1(active_row_q[42]), 
        .B2(n516), .ZN(n315) );
  AO222D0BWP12T30P140 U669 ( .A1(addr_i[15]), .A2(n599), .B1(n594), .B2(
        addr_i[4]), .C1(sdram_addr_o[3]), .C2(n598), .Z(n291) );
  MAOI22D0BWP12T30P140 U670 ( .A1(n517), .A2(n583), .B1(active_row_q[43]), 
        .B2(n517), .ZN(n316) );
  MAOI22D0BWP12T30P140 U671 ( .A1(n582), .A2(n576), .B1(active_row_q[29]), 
        .B2(n580), .ZN(n328) );
  MAOI22D0BWP12T30P140 U672 ( .A1(n517), .A2(n575), .B1(active_row_q[44]), 
        .B2(n516), .ZN(n317) );
  INVD0BWP12T30P140 U673 ( .I(sdram_cke_o), .ZN(n514) );
  OAI21D0BWP12T30P140 U674 ( .A1(n547), .A2(n515), .B(n514), .ZN(n285) );
  MAOI22D0BWP12T30P140 U675 ( .A1(n582), .A2(n578), .B1(active_row_q[28]), 
        .B2(n580), .ZN(n327) );
  MAOI22D0BWP12T30P140 U676 ( .A1(n517), .A2(n589), .B1(active_row_q[45]), 
        .B2(n516), .ZN(n318) );
  AO222D0BWP12T30P140 U677 ( .A1(addr_i[14]), .A2(n599), .B1(n594), .B2(
        addr_i[3]), .C1(sdram_addr_o[2]), .C2(n598), .Z(n290) );
  MAOI22D0BWP12T30P140 U678 ( .A1(n517), .A2(n574), .B1(active_row_q[46]), 
        .B2(n516), .ZN(n319) );
  MAOI22D0BWP12T30P140 U679 ( .A1(n582), .A2(n587), .B1(active_row_q[27]), 
        .B2(n580), .ZN(n326) );
  MAOI22D0BWP12T30P140 U680 ( .A1(n517), .A2(n577), .B1(active_row_q[47]), 
        .B2(n516), .ZN(n320) );
  MAOI22D0BWP12T30P140 U681 ( .A1(n516), .A2(n535), .B1(active_row_q[39]), 
        .B2(n516), .ZN(n325) );
  MAOI22D0BWP12T30P140 U682 ( .A1(n517), .A2(n571), .B1(active_row_q[48]), 
        .B2(n516), .ZN(n321) );
  AO222D0BWP12T30P140 U683 ( .A1(addr_i[13]), .A2(n599), .B1(n594), .B2(
        addr_i[2]), .C1(sdram_addr_o[1]), .C2(n598), .Z(n289) );
  MAOI22D0BWP12T30P140 U684 ( .A1(n517), .A2(n565), .B1(active_row_q[49]), 
        .B2(n516), .ZN(n322) );
  MAOI22D0BWP12T30P140 U685 ( .A1(n517), .A2(n581), .B1(active_row_q[51]), 
        .B2(n516), .ZN(n324) );
  AO22D0BWP12T30P140 U686 ( .A1(addr_i[10]), .A2(n519), .B1(n518), .B2(
        sdram_ba_o[0]), .Z(n286) );
  NR2D0BWP12T30P140 U687 ( .A1(n520), .A2(n572), .ZN(N158) );
  NR2D0BWP12T30P140 U688 ( .A1(refresh_timer_q[0]), .A2(refresh_timer_q[1]), 
        .ZN(n522) );
  OAI21D0BWP12T30P140 U689 ( .A1(n522), .A2(n521), .B(n525), .ZN(N180) );
  OR3D0BWP12T30P140 U690 ( .A1(state_q[3]), .A2(n555), .A3(n523), .Z(n545) );
  AO222D0BWP12T30P140 U691 ( .A1(n545), .A2(data_q[0]), .B1(n536), .B2(
        data_i[0]), .C1(n538), .C2(data_o[0]), .Z(n283) );
  AO222D0BWP12T30P140 U692 ( .A1(n545), .A2(data_q[1]), .B1(n536), .B2(
        data_i[1]), .C1(n538), .C2(data_o[1]), .Z(n282) );
  AO222D0BWP12T30P140 U693 ( .A1(n545), .A2(data_q[2]), .B1(n539), .B2(
        data_i[2]), .C1(n538), .C2(data_o[2]), .Z(n281) );
  AO22D0BWP12T30P140 U694 ( .A1(refresh_timer_q[3]), .A2(n525), .B1(n524), 
        .B2(n527), .Z(N181) );
  INR2D1BWP12T30P140 U695 ( .A1(n526), .B1(n604), .ZN(n610) );
  AN2D0BWP12T30P140 U696 ( .A1(n610), .A2(sdram_cs_o), .Z(n304) );
  AO222D0BWP12T30P140 U697 ( .A1(n545), .A2(data_q[3]), .B1(n536), .B2(
        data_i[3]), .C1(n538), .C2(data_o[3]), .Z(n280) );
  AO222D0BWP12T30P140 U698 ( .A1(n545), .A2(data_q[4]), .B1(n539), .B2(
        data_i[4]), .C1(n538), .C2(data_o[4]), .Z(n279) );
  AO222D0BWP12T30P140 U699 ( .A1(n545), .A2(data_q[5]), .B1(n536), .B2(
        data_i[5]), .C1(n538), .C2(data_o[5]), .Z(n278) );
  OA221D0BWP12T30P140 U700 ( .A1(n528), .A2(n530), .B1(refresh_timer_q[5]), 
        .B2(n530), .C(n527), .Z(N183) );
  AO222D0BWP12T30P140 U701 ( .A1(n545), .A2(data_q[6]), .B1(n536), .B2(
        data_i[6]), .C1(n538), .C2(data_o[6]), .Z(n277) );
  MAOI22D0BWP12T30P140 U702 ( .A1(n536), .A2(sel_i[3]), .B1(dqm_buffer_q[1]), 
        .B2(n536), .ZN(n308) );
  AO222D0BWP12T30P140 U703 ( .A1(n545), .A2(data_q[7]), .B1(n536), .B2(
        data_i[7]), .C1(n538), .C2(data_o[7]), .Z(n276) );
  AO222D0BWP12T30P140 U704 ( .A1(n545), .A2(data_q[8]), .B1(n536), .B2(
        data_i[8]), .C1(n538), .C2(data_o[8]), .Z(n275) );
  INVD0BWP12T30P140 U705 ( .I(refresh_timer_q[6]), .ZN(n529) );
  INVD0BWP12T30P140 U706 ( .I(n530), .ZN(n531) );
  AOI221D0BWP12T30P140 U707 ( .A1(refresh_timer_q[6]), .A2(n530), .B1(n529), 
        .B2(n531), .C(n570), .ZN(N184) );
  AO222D0BWP12T30P140 U708 ( .A1(n545), .A2(data_q[9]), .B1(n536), .B2(
        data_i[9]), .C1(n538), .C2(data_o[9]), .Z(n274) );
  MAOI22D0BWP12T30P140 U709 ( .A1(n536), .A2(sel_i[2]), .B1(dqm_buffer_q[0]), 
        .B2(n536), .ZN(n307) );
  AO222D0BWP12T30P140 U710 ( .A1(n545), .A2(data_q[10]), .B1(n539), .B2(
        data_i[10]), .C1(n538), .C2(data_o[10]), .Z(n273) );
  MOAI22D0BWP12T30P140 U711 ( .A1(n571), .A2(n579), .B1(n598), .B2(
        sdram_addr_o[9]), .ZN(n297) );
  AO222D0BWP12T30P140 U712 ( .A1(n545), .A2(data_q[11]), .B1(n539), .B2(
        data_i[11]), .C1(n538), .C2(data_o[11]), .Z(n272) );
  NR2D0BWP12T30P140 U713 ( .A1(refresh_timer_q[6]), .A2(n531), .ZN(n533) );
  INVD0BWP12T30P140 U714 ( .I(refresh_timer_q[7]), .ZN(n532) );
  OAI21D0BWP12T30P140 U715 ( .A1(n533), .A2(n532), .B(n537), .ZN(N185) );
  AO222D0BWP12T30P140 U716 ( .A1(n545), .A2(data_q[12]), .B1(n536), .B2(
        data_i[12]), .C1(n538), .C2(data_o[12]), .Z(n271) );
  INVD0BWP12T30P140 U717 ( .I(n534), .ZN(n590) );
  CKBD0BWP12T30P140 U718 ( .I(n590), .Z(n588) );
  MAOI22D0BWP12T30P140 U719 ( .A1(n588), .A2(n535), .B1(active_row_q[0]), .B2(
        n588), .ZN(n364) );
  AO222D0BWP12T30P140 U720 ( .A1(n545), .A2(data_q[13]), .B1(n539), .B2(
        data_i[13]), .C1(n538), .C2(data_o[13]), .Z(n270) );
  AO222D0BWP12T30P140 U721 ( .A1(n545), .A2(data_q[14]), .B1(n536), .B2(
        data_i[14]), .C1(n538), .C2(data_o[14]), .Z(n269) );
  AO21D0BWP12T30P140 U722 ( .A1(refresh_timer_q[8]), .A2(n537), .B(n562), .Z(
        N186) );
  AO222D0BWP12T30P140 U723 ( .A1(n545), .A2(data_q[15]), .B1(n539), .B2(
        data_i[15]), .C1(n538), .C2(data_o[15]), .Z(n268) );
  MAOI22D0BWP12T30P140 U724 ( .A1(n590), .A2(n581), .B1(active_row_q[12]), 
        .B2(n588), .ZN(n363) );
  INVD0BWP12T30P140 U725 ( .I(n540), .ZN(n541) );
  OAI22D0BWP12T30P140 U726 ( .A1(n612), .A2(n585), .B1(n542), .B2(n541), .ZN(
        n543) );
  AOI21D0BWP12T30P140 U727 ( .A1(n544), .A2(delay_state_q[1]), .B(n543), .ZN(
        n546) );
  OAI211D0BWP12T30P140 U728 ( .A1(n547), .A2(n549), .B(n546), .C(n545), .ZN(
        n558) );
  AOI31D0BWP12T30P140 U729 ( .A1(n550), .A2(n549), .A3(n548), .B(state_q[3]), 
        .ZN(n556) );
  OR2D0BWP12T30P140 U730 ( .A1(n552), .A2(n551), .Z(n553) );
  OAI211D0BWP12T30P140 U731 ( .A1(n556), .A2(n555), .B(n554), .C(n553), .ZN(
        n557) );
  AOI211D0BWP12T30P140 U732 ( .A1(n559), .A2(we_i), .B(n558), .C(n557), .ZN(
        n573) );
  NR2D0BWP12T30P140 U733 ( .A1(n573), .A2(n572), .ZN(N156) );
  MOAI22D0BWP12T30P140 U734 ( .A1(n563), .A2(n579), .B1(n598), .B2(
        sdram_addr_o[11]), .ZN(n299) );
  MAOI22D0BWP12T30P140 U735 ( .A1(n590), .A2(n563), .B1(active_row_q[11]), 
        .B2(n588), .ZN(n362) );
  OAI32D0BWP12T30P140 U736 ( .A1(refresh_timer_q[0]), .A2(refresh_timer_q[1]), 
        .A3(n570), .B1(n564), .B2(N178), .ZN(N179) );
  MAOI22D0BWP12T30P140 U737 ( .A1(n590), .A2(n565), .B1(active_row_q[10]), 
        .B2(n588), .ZN(n361) );
  NR2D0BWP12T30P140 U738 ( .A1(n566), .A2(n572), .ZN(N157) );
  AOI21D0BWP12T30P140 U739 ( .A1(refresh_timer_q[12]), .A2(n568), .B(n567), 
        .ZN(n569) );
  NR2D0BWP12T30P140 U740 ( .A1(n570), .A2(n569), .ZN(N190) );
  MAOI22D0BWP12T30P140 U741 ( .A1(n590), .A2(n571), .B1(active_row_q[9]), .B2(
        n588), .ZN(n360) );
  MAOI22D0BWP12T30P140 U742 ( .A1(n573), .A2(n572), .B1(n572), .B2(
        delay_state_q[1]), .ZN(n309) );
  MAOI22D0BWP12T30P140 U743 ( .A1(n590), .A2(n574), .B1(active_row_q[7]), .B2(
        n588), .ZN(n358) );
  MAOI22D0BWP12T30P140 U744 ( .A1(n590), .A2(n575), .B1(active_row_q[5]), .B2(
        n588), .ZN(n356) );
  MAOI22D0BWP12T30P140 U745 ( .A1(n590), .A2(n576), .B1(active_row_q[3]), .B2(
        n588), .ZN(n354) );
  MAOI22D0BWP12T30P140 U746 ( .A1(n590), .A2(n577), .B1(active_row_q[8]), .B2(
        n588), .ZN(n359) );
  MAOI22D0BWP12T30P140 U747 ( .A1(n590), .A2(n578), .B1(active_row_q[2]), .B2(
        n588), .ZN(n353) );
  MOAI22D0BWP12T30P140 U748 ( .A1(n581), .A2(n579), .B1(n598), .B2(
        sdram_addr_o[12]), .ZN(n300) );
  MAOI22D0BWP12T30P140 U749 ( .A1(n582), .A2(n581), .B1(active_row_q[38]), 
        .B2(n580), .ZN(n337) );
  MAOI22D0BWP12T30P140 U750 ( .A1(n590), .A2(n583), .B1(active_row_q[4]), .B2(
        n590), .ZN(n355) );
  MOAI22D0BWP12T30P140 U751 ( .A1(n586), .A2(n585), .B1(we_i), .B2(n584), .ZN(
        target_state_r[1]) );
  MAOI22D0BWP12T30P140 U752 ( .A1(n590), .A2(n587), .B1(active_row_q[1]), .B2(
        n588), .ZN(n352) );
  NR2D0BWP12T30P140 U753 ( .A1(state_q[1]), .A2(stall_o), .ZN(n371) );
  MAOI22D0BWP12T30P140 U754 ( .A1(n590), .A2(n589), .B1(active_row_q[6]), .B2(
        n588), .ZN(n357) );
  AO21D0BWP12T30P140 U755 ( .A1(data_rd_en_q), .A2(n592), .B(n591), .Z(n368)
         );
  ND2D0BWP12T30P140 U756 ( .A1(n593), .A2(n597), .ZN(n608) );
  AO211D0BWP12T30P140 U757 ( .A1(n610), .A2(sdram_ras_o), .B(n594), .C(n608), 
        .Z(n303) );
  INVD0BWP12T30P140 U758 ( .I(sdram_clk_o), .ZN(n630) );
  INVD0BWP12T30P140 U759 ( .I(sdram_clk_o), .ZN(n629) );
  INVD0BWP12T30P140 U760 ( .I(sdram_clk_o), .ZN(n625) );
  INVD0BWP12T30P140 U761 ( .I(sdram_clk_o), .ZN(n628) );
  INVD0BWP12T30P140 U762 ( .I(clk_i), .ZN(sdram_clk_o) );
  INVD0BWP12T30P140 U763 ( .I(sdram_clk_o), .ZN(n627) );
  INVD0BWP12T30P140 U764 ( .I(sdram_clk_o), .ZN(n626) );
  INVD0BWP12T30P140 U765 ( .I(sdram_clk_o), .ZN(n624) );
  INVD0BWP12T30P140 U766 ( .I(sdram_clk_o), .ZN(n623) );
  INVD0BWP12T30P140 U767 ( .I(sdram_clk_o), .ZN(n622) );
  INVD0BWP12T30P140 U768 ( .I(rst_i), .ZN(n252) );
  CKBD0BWP12T30P140 U769 ( .I(n252), .Z(n620) );
  CKBD0BWP12T30P140 U770 ( .I(n252), .Z(n616) );
  CKBD0BWP12T30P140 U771 ( .I(n252), .Z(n615) );
  CKBD0BWP12T30P140 U772 ( .I(n252), .Z(n613) );
  CKBD0BWP12T30P140 U773 ( .I(n252), .Z(n614) );
  CKBD0BWP12T30P140 U774 ( .I(n252), .Z(n619) );
  CKBD0BWP12T30P140 U775 ( .I(n252), .Z(n618) );
  CKBD0BWP12T30P140 U776 ( .I(n252), .Z(n621) );
  CKBD0BWP12T30P140 U777 ( .I(n252), .Z(n617) );
  ND2D0BWP12T30P140 U778 ( .A1(n597), .A2(n596), .ZN(N338) );
  AOI22D0BWP12T30P140 U779 ( .A1(addr_i[12]), .A2(n599), .B1(n598), .B2(
        sdram_addr_o[0]), .ZN(n601) );
  ND2D0BWP12T30P140 U780 ( .A1(n601), .A2(n600), .ZN(n288) );
  ND2D0BWP12T30P140 U781 ( .A1(n603), .A2(n602), .ZN(N155) );
  AOI22D0BWP12T30P140 U782 ( .A1(n605), .A2(n604), .B1(n610), .B2(sdram_we_o), 
        .ZN(n606) );
  IIND4D0BWP12T30P140 U783 ( .A1(n608), .A2(n371), .B1(n607), .B2(n606), .ZN(
        n301) );
  AOI211D0BWP12T30P140 U784 ( .A1(n610), .A2(sdram_cas_o), .B(n609), .C(n608), 
        .ZN(n611) );
  ND2D0BWP12T30P140 U785 ( .A1(n612), .A2(n611), .ZN(n302) );
endmodule

