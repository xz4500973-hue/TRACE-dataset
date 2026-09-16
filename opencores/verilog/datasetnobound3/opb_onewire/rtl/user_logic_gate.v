/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 14:32:31 2026
/////////////////////////////////////////////////////////////


module user_logic ( DQ_Wire_I, DQ_Wire_O, DQ_Wire_T, main_fifty_clock, 
        Bus2IP_Clk, Bus2IP_Reset, Bus2IP_Data, Bus2IP_BE, Bus2IP_RdCE, 
        Bus2IP_WrCE, IP2Bus_Data, IP2Bus_Ack, IP2Bus_Retry, IP2Bus_Error, 
        IP2Bus_ToutSup );
  input [0:31] Bus2IP_Data;
  input [0:3] Bus2IP_BE;
  input [0:3] Bus2IP_RdCE;
  input [0:3] Bus2IP_WrCE;
  output [0:31] IP2Bus_Data;
  input DQ_Wire_I, main_fifty_clock, Bus2IP_Clk, Bus2IP_Reset;
  output DQ_Wire_O, DQ_Wire_T, IP2Bus_Ack, IP2Bus_Retry, IP2Bus_Error,
         IP2Bus_ToutSup;
  wire   onewire_status_register_31_, slv_reg3_31_, primary_clock, N252, N253,
         N254, N255, N256, primary_clock_div_by_two, read_shutdown_one,
         onewire_received_bit, N432, N433, N434, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n874, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n870, n871, n872, n873;
  wire   [0:31] slv_reg2;
  wire   [2:0] byte_opcode;
  wire   [2:0] byte_inject_opcode;
  wire   [0:31] slv_reg1;
  wire   [7:0] write_byte;
  wire   [7:0] read_byte;
  wire   [5:0] primary_clock_divider;
  wire   [2:0] onewire_opcode;
  wire   [2:0] onewire_inject_opcode;
  wire   [4:0] byte_counter;
  wire   [2:0] onewire_seq_state;
  wire   [9:0] onewire_timer;

  DFQD2BWP12T30P140 onewire_inject_opcode_reg_2_ ( .D(N434), .CP(n556), .Q(
        onewire_inject_opcode[2]) );
  DFQD2BWP12T30P140 DQ_Wire_HiZ_reg ( .D(n479), .CP(n557), .Q(DQ_Wire_O) );
  DFQD2BWP12T30P140 byte_counter_reg_4_ ( .D(n870), .CP(
        primary_clock_div_by_two), .Q(byte_counter[4]) );
  DFQD2BWP12T30P140 slv_reg2_reg_0_ ( .D(n517), .CP(Bus2IP_Clk), .Q(
        slv_reg2[0]) );
  DFQD2BWP12T30P140 slv_reg2_reg_1_ ( .D(n518), .CP(Bus2IP_Clk), .Q(
        slv_reg2[1]) );
  DFQD2BWP12T30P140 slv_reg2_reg_2_ ( .D(n519), .CP(Bus2IP_Clk), .Q(
        slv_reg2[2]) );
  DFQD2BWP12T30P140 slv_reg2_reg_3_ ( .D(n520), .CP(Bus2IP_Clk), .Q(
        slv_reg2[3]) );
  DFQD2BWP12T30P140 onewire_seq_state_reg_2_ ( .D(n481), .CP(primary_clock), 
        .Q(onewire_seq_state[2]) );
  DFQD2BWP12T30P140 read_byte_reg_2_ ( .D(n473), .CP(n556), .Q(read_byte[2])
         );
  DFQD2BWP12T30P140 read_byte_reg_3_ ( .D(n472), .CP(primary_clock_div_by_two), 
        .Q(read_byte[3]) );
  DFQD2BWP12T30P140 byte_counter_reg_1_ ( .D(n447), .CP(n556), .Q(
        byte_counter[1]) );
  DFQD2BWP12T30P140 onewire_timer_reg_9_ ( .D(n438), .CP(primary_clock), .Q(
        onewire_timer[9]) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_2_ ( .D(N254), .CP(
        main_fifty_clock), .Q(primary_clock_divider[2]) );
  DFQD2BWP12T30P140 read_byte_reg_1_ ( .D(n474), .CP(primary_clock_div_by_two), 
        .Q(read_byte[1]) );
  DFQD2BWP12T30P140 read_byte_reg_5_ ( .D(n470), .CP(primary_clock_div_by_two), 
        .Q(read_byte[5]) );
  DFQD2BWP12T30P140 read_byte_reg_6_ ( .D(n469), .CP(n556), .Q(read_byte[6])
         );
  DFQD2BWP12T30P140 read_byte_reg_7_ ( .D(n468), .CP(primary_clock_div_by_two), 
        .Q(read_byte[7]) );
  DFQD2BWP12T30P140 read_byte_reg_0_ ( .D(n475), .CP(n556), .Q(read_byte[0])
         );
  DFQD2BWP12T30P140 onewire_presence_detected_reg ( .D(n437), .CP(
        primary_clock), .Q(onewire_status_register_31_) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_1_ ( .D(N253), .CP(
        main_fifty_clock), .Q(primary_clock_divider[1]) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_4_ ( .D(N256), .CP(
        main_fifty_clock), .Q(primary_clock_divider[4]) );
  DFQD2BWP12T30P140 byte_counter_reg_3_ ( .D(n449), .CP(
        primary_clock_div_by_two), .Q(byte_counter[3]) );
  DFQD2BWP12T30P140 onewire_inject_opcode_reg_0_ ( .D(N432), .CP(n556), .Q(
        onewire_inject_opcode[0]) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_5_ ( .D(n874), .CP(
        main_fifty_clock), .Q(primary_clock_divider[5]) );
  DFQD2BWP12T30P140 onewire_seq_state_reg_1_ ( .D(n480), .CP(primary_clock), 
        .Q(onewire_seq_state[1]) );
  DFQD2BWP12T30P140 byte_counter_reg_2_ ( .D(n448), .CP(
        primary_clock_div_by_two), .Q(byte_counter[2]) );
  DFQD2BWP12T30P140 onewire_opcode_reg_1_ ( .D(n476), .CP(primary_clock), .Q(
        onewire_opcode[1]) );
  DFQD2BWP12T30P140 byte_counter_reg_0_ ( .D(n451), .CP(n556), .Q(
        byte_counter[0]) );
  DFQD2BWP12T30P140 onewire_timer_reg_6_ ( .D(n441), .CP(primary_clock), .Q(
        onewire_timer[6]) );
  DFQD2BWP12T30P140 onewire_timer_reg_4_ ( .D(n443), .CP(primary_clock), .Q(
        onewire_timer[4]) );
  DFQD2BWP12T30P140 read_shutdown_one_reg ( .D(n467), .CP(n556), .Q(
        read_shutdown_one) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_0_ ( .D(N252), .CP(
        main_fifty_clock), .Q(primary_clock_divider[0]) );
  DFQD2BWP12T30P140 onewire_timer_reg_7_ ( .D(n440), .CP(primary_clock), .Q(
        onewire_timer[7]) );
  DFQD2BWP12T30P140 onewire_seq_state_reg_0_ ( .D(n482), .CP(primary_clock), 
        .Q(onewire_seq_state[0]) );
  DFQD2BWP12T30P140 onewire_timer_reg_5_ ( .D(n442), .CP(primary_clock), .Q(
        onewire_timer[5]) );
  DFQD2BWP12T30P140 byte_inject_opcode_reg_0_ ( .D(n462), .CP(n872), .Q(
        byte_inject_opcode[0]) );
  DFQD2BWP12T30P140 write_byte_reg_5_ ( .D(n454), .CP(Bus2IP_Clk), .Q(
        write_byte[5]) );
  DFQD2BWP12T30P140 byte_opcode_reg_2_ ( .D(n465), .CP(
        primary_clock_div_by_two), .Q(byte_opcode[2]) );
  DFQD2BWP12T30P140 byte_opcode_reg_1_ ( .D(n464), .CP(n556), .Q(
        byte_opcode[1]) );
  DFQD2BWP12T30P140 primary_clock_divider_reg_3_ ( .D(N255), .CP(
        main_fifty_clock), .Q(primary_clock_divider[3]) );
  DFQD2BWP12T30P140 write_byte_reg_7_ ( .D(n452), .CP(n871), .Q(write_byte[7])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_4_ ( .D(n521), .CP(n873), .Q(slv_reg2[4]) );
  DFQD2BWP12T30P140 slv_reg2_reg_6_ ( .D(n523), .CP(n873), .Q(slv_reg2[6]) );
  DFQD2BWP12T30P140 slv_reg2_reg_7_ ( .D(n524), .CP(n873), .Q(slv_reg2[7]) );
  DFQD2BWP12T30P140 slv_reg2_reg_8_ ( .D(n525), .CP(n873), .Q(slv_reg2[8]) );
  DFQD2BWP12T30P140 slv_reg2_reg_9_ ( .D(n526), .CP(n873), .Q(slv_reg2[9]) );
  DFQD2BWP12T30P140 slv_reg2_reg_10_ ( .D(n527), .CP(n873), .Q(slv_reg2[10])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_11_ ( .D(n528), .CP(n873), .Q(slv_reg2[11])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_12_ ( .D(n529), .CP(n873), .Q(slv_reg2[12])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_13_ ( .D(n530), .CP(n873), .Q(slv_reg2[13])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_14_ ( .D(n531), .CP(n873), .Q(slv_reg2[14])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_15_ ( .D(n532), .CP(n873), .Q(slv_reg2[15])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_16_ ( .D(n533), .CP(n872), .Q(slv_reg2[16])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_17_ ( .D(n534), .CP(n872), .Q(slv_reg2[17])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_18_ ( .D(n535), .CP(n872), .Q(slv_reg2[18])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_19_ ( .D(n536), .CP(n872), .Q(slv_reg2[19])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_21_ ( .D(n538), .CP(n872), .Q(slv_reg2[21])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_22_ ( .D(n539), .CP(n872), .Q(slv_reg2[22])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_23_ ( .D(n540), .CP(n872), .Q(slv_reg2[23])
         );
  DFQD2BWP12T30P140 write_byte_reg_3_ ( .D(n456), .CP(n872), .Q(write_byte[3])
         );
  DFQD2BWP12T30P140 write_byte_reg_6_ ( .D(n453), .CP(n873), .Q(write_byte[6])
         );
  DFQD2BWP12T30P140 write_byte_reg_1_ ( .D(n458), .CP(Bus2IP_Clk), .Q(
        write_byte[1]) );
  DFQD2BWP12T30P140 write_byte_reg_2_ ( .D(n457), .CP(n873), .Q(write_byte[2])
         );
  DFQD2BWP12T30P140 write_byte_reg_4_ ( .D(n455), .CP(n871), .Q(write_byte[4])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_24_ ( .D(n541), .CP(n872), .Q(slv_reg2[24])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_25_ ( .D(n542), .CP(n872), .Q(slv_reg2[25])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_26_ ( .D(n543), .CP(n872), .Q(slv_reg2[26])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_27_ ( .D(n544), .CP(n872), .Q(slv_reg2[27])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_28_ ( .D(n545), .CP(Bus2IP_Clk), .Q(
        slv_reg2[28]) );
  DFQD2BWP12T30P140 onewire_timer_reg_8_ ( .D(n439), .CP(primary_clock), .Q(
        onewire_timer[8]) );
  DFQD2BWP12T30P140 slv_reg2_reg_31_ ( .D(n548), .CP(n871), .Q(slv_reg2[31])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_0_ ( .D(n516), .CP(n872), .Q(slv_reg1[0]) );
  DFQD2BWP12T30P140 slv_reg1_reg_1_ ( .D(n515), .CP(n873), .Q(slv_reg1[1]) );
  DFQD2BWP12T30P140 slv_reg1_reg_2_ ( .D(n514), .CP(Bus2IP_Clk), .Q(
        slv_reg1[2]) );
  DFQD2BWP12T30P140 slv_reg1_reg_3_ ( .D(n513), .CP(n871), .Q(slv_reg1[3]) );
  DFQD2BWP12T30P140 slv_reg1_reg_4_ ( .D(n512), .CP(n872), .Q(slv_reg1[4]) );
  DFQD2BWP12T30P140 slv_reg1_reg_5_ ( .D(n511), .CP(n873), .Q(slv_reg1[5]) );
  DFQD2BWP12T30P140 slv_reg1_reg_6_ ( .D(n510), .CP(Bus2IP_Clk), .Q(
        slv_reg1[6]) );
  DFQD2BWP12T30P140 slv_reg1_reg_7_ ( .D(n509), .CP(n871), .Q(slv_reg1[7]) );
  DFQD2BWP12T30P140 slv_reg1_reg_8_ ( .D(n508), .CP(n871), .Q(slv_reg1[8]) );
  DFQD2BWP12T30P140 slv_reg1_reg_9_ ( .D(n507), .CP(n871), .Q(slv_reg1[9]) );
  DFQD2BWP12T30P140 slv_reg1_reg_10_ ( .D(n506), .CP(n871), .Q(slv_reg1[10])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_11_ ( .D(n505), .CP(n871), .Q(slv_reg1[11])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_12_ ( .D(n504), .CP(n871), .Q(slv_reg1[12])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_14_ ( .D(n502), .CP(n871), .Q(slv_reg1[14])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_15_ ( .D(n501), .CP(n871), .Q(slv_reg1[15])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_16_ ( .D(n500), .CP(n871), .Q(slv_reg1[16])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_17_ ( .D(n499), .CP(n871), .Q(slv_reg1[17])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_18_ ( .D(n498), .CP(n871), .Q(slv_reg1[18])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_19_ ( .D(n497), .CP(n871), .Q(slv_reg1[19])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_20_ ( .D(n496), .CP(Bus2IP_Clk), .Q(
        slv_reg1[20]) );
  DFQD2BWP12T30P140 slv_reg1_reg_21_ ( .D(n495), .CP(n872), .Q(slv_reg1[21])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_22_ ( .D(n494), .CP(n871), .Q(slv_reg1[22])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_23_ ( .D(n493), .CP(n872), .Q(slv_reg1[23])
         );
  DFQD2BWP12T30P140 onewire_opcode_reg_0_ ( .D(n478), .CP(primary_clock), .Q(
        onewire_opcode[0]) );
  DFQD2BWP12T30P140 byte_opcode_reg_0_ ( .D(n466), .CP(
        primary_clock_div_by_two), .Q(byte_opcode[0]) );
  DFQD2BWP12T30P140 onewire_opcode_reg_2_ ( .D(n477), .CP(primary_clock), .Q(
        onewire_opcode[2]) );
  DFQD2BWP12T30P140 slv_reg1_reg_24_ ( .D(n492), .CP(n873), .Q(slv_reg1[24])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_27_ ( .D(n489), .CP(n873), .Q(slv_reg1[27])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_28_ ( .D(n488), .CP(n871), .Q(slv_reg1[28])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_29_ ( .D(n487), .CP(n872), .Q(slv_reg1[29])
         );
  DFQD2BWP12T30P140 slv_reg1_reg_30_ ( .D(n486), .CP(n873), .Q(slv_reg1[30])
         );
  DFQD2BWP12T30P140 slv_reg2_reg_29_ ( .D(n546), .CP(Bus2IP_Clk), .Q(
        slv_reg2[29]) );
  DFQD2BWP12T30P140 slv_reg2_reg_30_ ( .D(n547), .CP(Bus2IP_Clk), .Q(
        slv_reg2[30]) );
  DFQD2BWP12T30P140 slv_reg1_reg_26_ ( .D(n490), .CP(Bus2IP_Clk), .Q(
        slv_reg1[26]) );
  DFQD2BWP12T30P140 slv_reg1_reg_31_ ( .D(n485), .CP(Bus2IP_Clk), .Q(
        slv_reg1[31]) );
  DFQD2BWP12T30P140 byte_inject_opcode_reg_1_ ( .D(n460), .CP(n872), .Q(
        byte_inject_opcode[1]) );
  DFQD2BWP12T30P140 byte_inject_opcode_reg_2_ ( .D(n461), .CP(n873), .Q(
        byte_inject_opcode[2]) );
  DFQD2BWP12T30P140 onewire_timer_reg_0_ ( .D(n484), .CP(primary_clock), .Q(
        onewire_timer[0]) );
  DFQD2BWP12T30P140 onewire_timer_reg_3_ ( .D(n444), .CP(primary_clock), .Q(
        onewire_timer[3]) );
  DFQD2BWP12T30P140 onewire_timer_reg_1_ ( .D(n446), .CP(primary_clock), .Q(
        onewire_timer[1]) );
  DFQD2BWP12T30P140 onewire_timer_reg_2_ ( .D(n445), .CP(primary_clock), .Q(
        onewire_timer[2]) );
  DFQD2BWP12T30P140 onewire_received_bit_reg ( .D(n483), .CP(primary_clock), 
        .Q(onewire_received_bit) );
  DFQD1BWP12T30P140 primary_clock_div_by_two_reg ( .D(n555), .CP(primary_clock), .Q(primary_clock_div_by_two) );
  DFQD1BWP12T30P140 read_byte_reg_4_ ( .D(n471), .CP(n556), .Q(read_byte[4])
         );
  DFQD1BWP12T30P140 onewire_inject_opcode_reg_1_ ( .D(N433), .CP(
        primary_clock_div_by_two), .Q(onewire_inject_opcode[1]) );
  DFQD1BWP12T30P140 slv_reg2_reg_5_ ( .D(n522), .CP(n873), .Q(slv_reg2[5]) );
  DFQD1BWP12T30P140 slv_reg2_reg_20_ ( .D(n537), .CP(n872), .Q(slv_reg2[20])
         );
  DFQD1BWP12T30P140 write_byte_reg_0_ ( .D(n459), .CP(n871), .Q(write_byte[0])
         );
  DFQD1BWP12T30P140 slv_reg1_reg_13_ ( .D(n503), .CP(n871), .Q(slv_reg1[13])
         );
  DFQD1BWP12T30P140 slv_reg1_reg_25_ ( .D(n491), .CP(Bus2IP_Clk), .Q(
        slv_reg1[25]) );
  DFQD1BWP12T30P140 slv_reg3_reg_31_ ( .D(n463), .CP(Bus2IP_Clk), .Q(
        slv_reg3_31_) );
  DFQD1BWP12T30P140 primary_clock_reg ( .D(n436), .CP(main_fifty_clock), .Q(
        primary_clock) );
  TIEHBWP12T30P140 U694 ( .Z(n554) );
  INVD0BWP12T30P140 U695 ( .I(n554), .ZN(IP2Bus_ToutSup) );
  INVD0BWP12T30P140 U696 ( .I(n554), .ZN(IP2Bus_Error) );
  INVD0BWP12T30P140 U697 ( .I(n554), .ZN(IP2Bus_Retry) );
  INVD0BWP12T30P140 U698 ( .I(primary_clock_div_by_two), .ZN(n555) );
  INVD0BWP12T30P140 U699 ( .I(n555), .ZN(n556) );
  INVD0BWP12T30P140 U700 ( .I(n868), .ZN(n557) );
  AO21D0BWP12T30P140 U701 ( .A1(n752), .A2(n666), .B(n830), .Z(n558) );
  INR4D0BWP12T30P140 U702 ( .A1(Bus2IP_RdCE[1]), .B1(Bus2IP_RdCE[0]), .B2(
        Bus2IP_RdCE[3]), .B3(Bus2IP_RdCE[2]), .ZN(n857) );
  TIELBWP12T30P140 U703 ( .ZN(n874) );
  CKBD0BWP12T30P140 U704 ( .I(DQ_Wire_O), .Z(DQ_Wire_T) );
  INVD0BWP12T30P140 U705 ( .I(Bus2IP_WrCE[2]), .ZN(n645) );
  NR2D0BWP12T30P140 U706 ( .A1(Bus2IP_WrCE[0]), .A2(Bus2IP_WrCE[3]), .ZN(n848)
         );
  INVD0BWP12T30P140 U707 ( .I(n848), .ZN(n559) );
  INVD0BWP12T30P140 U708 ( .I(Bus2IP_Reset), .ZN(n792) );
  OAI31D0BWP12T30P140 U709 ( .A1(Bus2IP_WrCE[1]), .A2(n645), .A3(n559), .B(
        n792), .ZN(n566) );
  OAI21D0BWP12T30P140 U710 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[1]), .B(n566), 
        .ZN(n683) );
  NR2D0BWP12T30P140 U711 ( .A1(Bus2IP_Reset), .A2(n683), .ZN(n684) );
  AO22D0BWP12T30P140 U712 ( .A1(Bus2IP_Data[12]), .A2(n684), .B1(slv_reg2[12]), 
        .B2(n683), .Z(n529) );
  AO22D0BWP12T30P140 U713 ( .A1(Bus2IP_Data[13]), .A2(n684), .B1(slv_reg2[13]), 
        .B2(n683), .Z(n530) );
  AO22D0BWP12T30P140 U714 ( .A1(Bus2IP_Data[10]), .A2(n684), .B1(slv_reg2[10]), 
        .B2(n683), .Z(n527) );
  AO22D0BWP12T30P140 U715 ( .A1(Bus2IP_Data[14]), .A2(n684), .B1(slv_reg2[14]), 
        .B2(n683), .Z(n531) );
  AO22D0BWP12T30P140 U716 ( .A1(Bus2IP_Data[15]), .A2(n684), .B1(slv_reg2[15]), 
        .B2(n683), .Z(n532) );
  AO22D0BWP12T30P140 U717 ( .A1(Bus2IP_Data[9]), .A2(n684), .B1(slv_reg2[9]), 
        .B2(n683), .Z(n526) );
  OAI21D0BWP12T30P140 U718 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[2]), .B(n566), 
        .ZN(n560) );
  NR2D0BWP12T30P140 U719 ( .A1(Bus2IP_Reset), .A2(n560), .ZN(n561) );
  AO22D0BWP12T30P140 U720 ( .A1(Bus2IP_Data[16]), .A2(n561), .B1(slv_reg2[16]), 
        .B2(n560), .Z(n533) );
  AO22D0BWP12T30P140 U721 ( .A1(Bus2IP_Data[17]), .A2(n561), .B1(slv_reg2[17]), 
        .B2(n560), .Z(n534) );
  AO22D0BWP12T30P140 U722 ( .A1(Bus2IP_Data[8]), .A2(n684), .B1(slv_reg2[8]), 
        .B2(n683), .Z(n525) );
  AO22D0BWP12T30P140 U723 ( .A1(Bus2IP_Data[18]), .A2(n561), .B1(slv_reg2[18]), 
        .B2(n560), .Z(n535) );
  AO22D0BWP12T30P140 U724 ( .A1(Bus2IP_Data[19]), .A2(n561), .B1(slv_reg2[19]), 
        .B2(n560), .Z(n536) );
  OAI21D0BWP12T30P140 U725 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[0]), .B(n566), 
        .ZN(n797) );
  NR2D0BWP12T30P140 U726 ( .A1(Bus2IP_Reset), .A2(n797), .ZN(n798) );
  AO22D0BWP12T30P140 U727 ( .A1(Bus2IP_Data[7]), .A2(n798), .B1(slv_reg2[7]), 
        .B2(n797), .Z(n524) );
  AO22D0BWP12T30P140 U728 ( .A1(Bus2IP_Data[20]), .A2(n561), .B1(slv_reg2[20]), 
        .B2(n560), .Z(n537) );
  AO22D0BWP12T30P140 U729 ( .A1(Bus2IP_Data[21]), .A2(n561), .B1(slv_reg2[21]), 
        .B2(n560), .Z(n538) );
  AO22D0BWP12T30P140 U730 ( .A1(Bus2IP_Data[6]), .A2(n798), .B1(slv_reg2[6]), 
        .B2(n797), .Z(n523) );
  AO22D0BWP12T30P140 U731 ( .A1(Bus2IP_Data[22]), .A2(n561), .B1(slv_reg2[22]), 
        .B2(n560), .Z(n539) );
  AO22D0BWP12T30P140 U732 ( .A1(Bus2IP_Data[23]), .A2(n561), .B1(slv_reg2[23]), 
        .B2(n560), .Z(n540) );
  AO22D0BWP12T30P140 U733 ( .A1(Bus2IP_Data[5]), .A2(n798), .B1(slv_reg2[5]), 
        .B2(n797), .Z(n522) );
  NR3D0BWP12T30P140 U734 ( .A1(byte_opcode[0]), .A2(byte_opcode[2]), .A3(
        byte_opcode[1]), .ZN(n680) );
  ND2D0BWP12T30P140 U735 ( .A1(n680), .A2(slv_reg3_31_), .ZN(n796) );
  INVD0BWP12T30P140 U736 ( .I(n796), .ZN(n801) );
  OA22D0BWP12T30P140 U737 ( .A1(n796), .A2(slv_reg1[28]), .B1(write_byte[3]), 
        .B2(n801), .Z(n456) );
  OA22D0BWP12T30P140 U738 ( .A1(n796), .A2(slv_reg1[25]), .B1(write_byte[6]), 
        .B2(n801), .Z(n453) );
  AO22D0BWP12T30P140 U739 ( .A1(Bus2IP_Data[4]), .A2(n798), .B1(slv_reg2[4]), 
        .B2(n797), .Z(n521) );
  OA22D0BWP12T30P140 U740 ( .A1(n796), .A2(slv_reg1[30]), .B1(write_byte[1]), 
        .B2(n801), .Z(n458) );
  OA22D0BWP12T30P140 U741 ( .A1(n796), .A2(slv_reg1[29]), .B1(write_byte[2]), 
        .B2(n801), .Z(n457) );
  OA22D0BWP12T30P140 U742 ( .A1(n796), .A2(slv_reg1[24]), .B1(write_byte[7]), 
        .B2(n801), .Z(n452) );
  OA22D0BWP12T30P140 U743 ( .A1(n796), .A2(slv_reg1[27]), .B1(write_byte[4]), 
        .B2(n801), .Z(n455) );
  ND3D0BWP12T30P140 U744 ( .A1(primary_clock_divider[1]), .A2(
        primary_clock_divider[0]), .A3(primary_clock_divider[2]), .ZN(n565) );
  INVD0BWP12T30P140 U745 ( .I(n565), .ZN(n722) );
  INVD0BWP12T30P140 U746 ( .I(primary_clock_divider[3]), .ZN(n564) );
  ND2D0BWP12T30P140 U747 ( .A1(primary_clock_divider[4]), .A2(
        primary_clock_divider[3]), .ZN(n563) );
  OAI21D0BWP12T30P140 U748 ( .A1(n563), .A2(n565), .B(primary_clock_divider[5]), .ZN(n562) );
  OAI21D0BWP12T30P140 U749 ( .A1(primary_clock_divider[5]), .A2(n563), .B(n562), .ZN(n867) );
  AOI221D0BWP12T30P140 U750 ( .A1(n722), .A2(primary_clock_divider[3]), .B1(
        n565), .B2(n564), .C(n867), .ZN(N255) );
  OAI21D0BWP12T30P140 U751 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[3]), .B(n566), 
        .ZN(n789) );
  NR2D0BWP12T30P140 U752 ( .A1(Bus2IP_Reset), .A2(n789), .ZN(n790) );
  AO22D0BWP12T30P140 U753 ( .A1(Bus2IP_Data[24]), .A2(n790), .B1(slv_reg2[24]), 
        .B2(n789), .Z(n541) );
  INVD0BWP12T30P140 U754 ( .I(byte_opcode[2]), .ZN(n578) );
  INVD0BWP12T30P140 U755 ( .I(n680), .ZN(n733) );
  INVD0BWP12T30P140 U756 ( .I(byte_inject_opcode[0]), .ZN(n734) );
  INVD0BWP12T30P140 U757 ( .I(byte_inject_opcode[2]), .ZN(n725) );
  AOI31D0BWP12T30P140 U758 ( .A1(byte_inject_opcode[1]), .A2(n734), .A3(n725), 
        .B(n733), .ZN(n567) );
  INVD0BWP12T30P140 U759 ( .I(onewire_opcode[2]), .ZN(n586) );
  INVD0BWP12T30P140 U760 ( .I(onewire_opcode[1]), .ZN(n678) );
  ND2D0BWP12T30P140 U761 ( .A1(n586), .A2(n678), .ZN(n604) );
  NR2D0BWP12T30P140 U762 ( .A1(n604), .A2(onewire_opcode[0]), .ZN(n617) );
  INVD0BWP12T30P140 U763 ( .I(n617), .ZN(n747) );
  NR4D0BWP12T30P140 U764 ( .A1(byte_opcode[2]), .A2(byte_opcode[0]), .A3(n567), 
        .A4(n747), .ZN(n696) );
  NR3D0BWP12T30P140 U765 ( .A1(byte_inject_opcode[2]), .A2(
        byte_inject_opcode[1]), .A3(n734), .ZN(n569) );
  NR2D0BWP12T30P140 U766 ( .A1(byte_opcode[2]), .A2(byte_opcode[1]), .ZN(n568)
         );
  OAI211D0BWP12T30P140 U767 ( .A1(byte_opcode[0]), .A2(n569), .B(n617), .C(
        n568), .ZN(n570) );
  OAI21D0BWP12T30P140 U768 ( .A1(byte_counter[4]), .A2(byte_counter[3]), .B(
        n733), .ZN(n697) );
  IND2D1BWP12T30P140 U769 ( .A1(n570), .B1(n697), .ZN(n774) );
  INVD0BWP12T30P140 U770 ( .I(n774), .ZN(n861) );
  NR2D0BWP12T30P140 U771 ( .A1(n680), .A2(n861), .ZN(n674) );
  ND2D0BWP12T30P140 U772 ( .A1(n674), .A2(byte_counter[1]), .ZN(n766) );
  INVD0BWP12T30P140 U773 ( .I(n766), .ZN(n769) );
  ND2D0BWP12T30P140 U774 ( .A1(n674), .A2(byte_counter[0]), .ZN(n768) );
  INVD0BWP12T30P140 U775 ( .I(n768), .ZN(n767) );
  NR2D0BWP12T30P140 U776 ( .A1(n769), .A2(n767), .ZN(n779) );
  ND2D0BWP12T30P140 U777 ( .A1(byte_counter[4]), .A2(n733), .ZN(n786) );
  ND2D0BWP12T30P140 U778 ( .A1(n674), .A2(byte_counter[2]), .ZN(n784) );
  ND2D0BWP12T30P140 U779 ( .A1(byte_counter[3]), .A2(n733), .ZN(n711) );
  AOI32D0BWP12T30P140 U780 ( .A1(n779), .A2(n786), .A3(n784), .B1(n711), .B2(
        n786), .ZN(n656) );
  ND2D0BWP12T30P140 U781 ( .A1(n696), .A2(n656), .ZN(n571) );
  ND2D0BWP12T30P140 U782 ( .A1(n733), .A2(n571), .ZN(n576) );
  AOI31D0BWP12T30P140 U783 ( .A1(byte_opcode[0]), .A2(byte_opcode[1]), .A3(
        n578), .B(n576), .ZN(n574) );
  INVD0BWP12T30P140 U784 ( .I(n576), .ZN(n579) );
  INVD0BWP12T30P140 U785 ( .I(byte_inject_opcode[1]), .ZN(n802) );
  NR2D0BWP12T30P140 U786 ( .A1(n697), .A2(n570), .ZN(n572) );
  IND2D1BWP12T30P140 U787 ( .A1(n572), .B1(n571), .ZN(n736) );
  NR4D0BWP12T30P140 U788 ( .A1(byte_inject_opcode[2]), .A2(n734), .A3(n802), 
        .A4(n736), .ZN(n573) );
  OAI21D0BWP12T30P140 U789 ( .A1(n579), .A2(n573), .B(n617), .ZN(n575) );
  NR2D0BWP12T30P140 U790 ( .A1(n574), .A2(n575), .ZN(N434) );
  IND2D1BWP12T30P140 U791 ( .A1(n736), .B1(n575), .ZN(n732) );
  IND2D1BWP12T30P140 U792 ( .A1(N434), .B1(byte_opcode[1]), .ZN(n577) );
  OAI32D0BWP12T30P140 U793 ( .A1(n579), .A2(n802), .A3(n732), .B1(n577), .B2(
        n576), .ZN(n464) );
  AO22D0BWP12T30P140 U794 ( .A1(Bus2IP_Data[25]), .A2(n790), .B1(slv_reg2[25]), 
        .B2(n789), .Z(n542) );
  OAI31D0BWP12T30P140 U795 ( .A1(n579), .A2(n725), .A3(n736), .B(n578), .ZN(
        n465) );
  AO22D0BWP12T30P140 U796 ( .A1(Bus2IP_Data[26]), .A2(n790), .B1(slv_reg2[26]), 
        .B2(n789), .Z(n543) );
  AO22D0BWP12T30P140 U797 ( .A1(Bus2IP_Data[27]), .A2(n790), .B1(slv_reg2[27]), 
        .B2(n789), .Z(n544) );
  INVD0BWP12T30P140 U798 ( .I(write_byte[5]), .ZN(n688) );
  MAOI22D0BWP12T30P140 U799 ( .A1(n688), .A2(n796), .B1(n796), .B2(
        slv_reg1[26]), .ZN(n454) );
  AO22D0BWP12T30P140 U800 ( .A1(Bus2IP_Data[28]), .A2(n790), .B1(slv_reg2[28]), 
        .B2(n789), .Z(n545) );
  INVD0BWP12T30P140 U801 ( .I(onewire_timer[8]), .ZN(n581) );
  INVD0BWP12T30P140 U802 ( .I(onewire_timer[6]), .ZN(n671) );
  INVD0BWP12T30P140 U803 ( .I(onewire_timer[5]), .ZN(n644) );
  ND2D0BWP12T30P140 U804 ( .A1(n671), .A2(n644), .ZN(n742) );
  INVD0BWP12T30P140 U805 ( .I(onewire_timer[4]), .ZN(n663) );
  INVD0BWP12T30P140 U806 ( .I(onewire_timer[3]), .ZN(n756) );
  NR2D0BWP12T30P140 U807 ( .A1(onewire_timer[2]), .A2(onewire_timer[1]), .ZN(
        n600) );
  INVD0BWP12T30P140 U808 ( .I(n600), .ZN(n580) );
  NR2D0BWP12T30P140 U809 ( .A1(n580), .A2(onewire_timer[0]), .ZN(n591) );
  ND3D0BWP12T30P140 U810 ( .A1(n663), .A2(n756), .A3(n591), .ZN(n603) );
  OR2D0BWP12T30P140 U811 ( .A1(n742), .A2(n603), .Z(n607) );
  OR2D0BWP12T30P140 U812 ( .A1(onewire_timer[7]), .A2(n607), .Z(n628) );
  MUX2ND0BWP12T30P140 U813 ( .I0(onewire_timer[8]), .I1(n581), .S(n628), .ZN(
        n626) );
  INVD0BWP12T30P140 U814 ( .I(n626), .ZN(n636) );
  INVD0BWP12T30P140 U815 ( .I(onewire_seq_state[2]), .ZN(n788) );
  ND2D0BWP12T30P140 U816 ( .A1(onewire_seq_state[1]), .A2(n788), .ZN(n597) );
  INVD0BWP12T30P140 U817 ( .I(n597), .ZN(n615) );
  INVD0BWP12T30P140 U818 ( .I(onewire_inject_opcode[2]), .ZN(n748) );
  ND2D0BWP12T30P140 U819 ( .A1(onewire_inject_opcode[0]), .A2(n748), .ZN(n584)
         );
  AOI211D0BWP12T30P140 U820 ( .A1(n617), .A2(n584), .B(onewire_opcode[1]), .C(
        onewire_opcode[2]), .ZN(n649) );
  NR2D0BWP12T30P140 U821 ( .A1(onewire_timer[8]), .A2(onewire_timer[7]), .ZN(
        n598) );
  INVD0BWP12T30P140 U822 ( .I(n598), .ZN(n738) );
  NR2D0BWP12T30P140 U823 ( .A1(n738), .A2(onewire_timer[6]), .ZN(n593) );
  NR2D0BWP12T30P140 U824 ( .A1(onewire_timer[4]), .A2(onewire_timer[3]), .ZN(
        n630) );
  ND2D0BWP12T30P140 U825 ( .A1(n630), .A2(n644), .ZN(n582) );
  INVD0BWP12T30P140 U826 ( .I(onewire_timer[0]), .ZN(n739) );
  NR2D0BWP12T30P140 U827 ( .A1(onewire_timer[1]), .A2(n739), .ZN(n602) );
  INVD0BWP12T30P140 U828 ( .I(onewire_timer[9]), .ZN(n765) );
  ND2D0BWP12T30P140 U829 ( .A1(n602), .A2(n765), .ZN(n592) );
  NR3D0BWP12T30P140 U830 ( .A1(onewire_timer[2]), .A2(n582), .A3(n592), .ZN(
        n583) );
  ND2D0BWP12T30P140 U831 ( .A1(n593), .A2(n583), .ZN(n814) );
  NR2D0BWP12T30P140 U832 ( .A1(onewire_seq_state[2]), .A2(onewire_seq_state[1]), .ZN(n616) );
  ND2D0BWP12T30P140 U833 ( .A1(onewire_seq_state[0]), .A2(n616), .ZN(n596) );
  INVD0BWP12T30P140 U834 ( .I(n596), .ZN(n589) );
  ND2D0BWP12T30P140 U835 ( .A1(n589), .A2(n747), .ZN(n813) );
  NR2D0BWP12T30P140 U836 ( .A1(n814), .A2(n813), .ZN(n658) );
  ND2D0BWP12T30P140 U837 ( .A1(n649), .A2(n658), .ZN(n865) );
  ND2D0BWP12T30P140 U838 ( .A1(n747), .A2(n865), .ZN(n619) );
  INVD0BWP12T30P140 U839 ( .I(onewire_inject_opcode[1]), .ZN(n676) );
  NR3D0BWP12T30P140 U840 ( .A1(n676), .A2(n584), .A3(n747), .ZN(n585) );
  AOI31D0BWP12T30P140 U841 ( .A1(onewire_opcode[0]), .A2(onewire_opcode[1]), 
        .A3(n586), .B(n585), .ZN(n844) );
  NR2D0BWP12T30P140 U842 ( .A1(n596), .A2(n619), .ZN(n832) );
  INVD0BWP12T30P140 U843 ( .I(n814), .ZN(n751) );
  ND2D0BWP12T30P140 U844 ( .A1(n832), .A2(n751), .ZN(n595) );
  INR2D1BWP12T30P140 U845 ( .A1(n591), .B1(onewire_timer[3]), .ZN(n587) );
  OAI21D0BWP12T30P140 U846 ( .A1(n587), .A2(n663), .B(n603), .ZN(n744) );
  INVD0BWP12T30P140 U847 ( .I(n744), .ZN(n660) );
  INVD0BWP12T30P140 U848 ( .I(onewire_inject_opcode[0]), .ZN(n731) );
  ND3D0BWP12T30P140 U849 ( .A1(n731), .A2(n748), .A3(onewire_inject_opcode[1]), 
        .ZN(n588) );
  AOI211D0BWP12T30P140 U850 ( .A1(n617), .A2(n588), .B(onewire_opcode[0]), .C(
        onewire_opcode[2]), .ZN(n752) );
  ND2D0BWP12T30P140 U851 ( .A1(n589), .A2(n752), .ZN(n590) );
  NR2D0BWP12T30P140 U852 ( .A1(n619), .A2(n590), .ZN(n620) );
  AOI221D0BWP12T30P140 U853 ( .A1(onewire_timer[0]), .A2(onewire_timer[2]), 
        .B1(onewire_timer[1]), .B2(onewire_timer[2]), .C(n591), .ZN(n842) );
  MUX2ND0BWP12T30P140 U854 ( .I0(n756), .I1(onewire_timer[3]), .S(n591), .ZN(
        n755) );
  INR4D0BWP12T30P140 U855 ( .A1(n593), .B1(onewire_timer[5]), .B2(n755), .B3(
        n592), .ZN(n594) );
  ND4D0BWP12T30P140 U856 ( .A1(n660), .A2(n620), .A3(n842), .A4(n594), .ZN(
        n666) );
  OAI21D0BWP12T30P140 U857 ( .A1(n844), .A2(n595), .B(n666), .ZN(n862) );
  NR2D0BWP12T30P140 U858 ( .A1(n619), .A2(n862), .ZN(n864) );
  INR2D1BWP12T30P140 U859 ( .A1(n864), .B1(n596), .ZN(n642) );
  NR2D0BWP12T30P140 U860 ( .A1(onewire_seq_state[0]), .A2(n597), .ZN(n629) );
  ND2D0BWP12T30P140 U861 ( .A1(n629), .A2(n747), .ZN(n646) );
  NR3D0BWP12T30P140 U862 ( .A1(onewire_opcode[0]), .A2(onewire_opcode[2]), 
        .A3(n646), .ZN(n621) );
  ND2D0BWP12T30P140 U863 ( .A1(n598), .A2(n765), .ZN(n599) );
  ND2D0BWP12T30P140 U864 ( .A1(onewire_timer[0]), .A2(n644), .ZN(n632) );
  NR4D0BWP12T30P140 U865 ( .A1(onewire_timer[6]), .A2(onewire_timer[3]), .A3(
        n599), .A4(n632), .ZN(n611) );
  ND3D0BWP12T30P140 U866 ( .A1(n600), .A2(n621), .A3(n611), .ZN(n610) );
  NR2D0BWP12T30P140 U867 ( .A1(onewire_timer[2]), .A2(n626), .ZN(n634) );
  NR2D0BWP12T30P140 U868 ( .A1(onewire_timer[8]), .A2(n628), .ZN(n601) );
  MUX2ND0BWP12T30P140 U869 ( .I0(n765), .I1(onewire_timer[9]), .S(n601), .ZN(
        n762) );
  AOI21D0BWP12T30P140 U870 ( .A1(onewire_timer[1]), .A2(n739), .B(n602), .ZN(
        n825) );
  NR2D0BWP12T30P140 U871 ( .A1(n762), .A2(n825), .ZN(n741) );
  NR2D0BWP12T30P140 U872 ( .A1(onewire_timer[5]), .A2(n603), .ZN(n606) );
  AOI21D0BWP12T30P140 U873 ( .A1(onewire_timer[5]), .A2(n603), .B(n606), .ZN(
        n639) );
  NR4D0BWP12T30P140 U874 ( .A1(onewire_timer[3]), .A2(n739), .A3(n604), .A4(
        n646), .ZN(n605) );
  ND4D0BWP12T30P140 U875 ( .A1(n634), .A2(n741), .A3(n639), .A4(n605), .ZN(
        n609) );
  OAI21D0BWP12T30P140 U876 ( .A1(n606), .A2(n671), .B(n607), .ZN(n664) );
  INVD0BWP12T30P140 U877 ( .I(n664), .ZN(n667) );
  ND2D0BWP12T30P140 U878 ( .A1(n607), .A2(onewire_timer[7]), .ZN(n627) );
  ND2D0BWP12T30P140 U879 ( .A1(n667), .A2(n627), .ZN(n608) );
  AOI211D0BWP12T30P140 U880 ( .A1(n610), .A2(n609), .B(n608), .C(n744), .ZN(
        n726) );
  NR2D0BWP12T30P140 U881 ( .A1(n617), .A2(n726), .ZN(n613) );
  ND2D0BWP12T30P140 U882 ( .A1(onewire_seq_state[0]), .A2(n615), .ZN(n737) );
  INVD0BWP12T30P140 U883 ( .I(n737), .ZN(n618) );
  INVD0BWP12T30P140 U884 ( .I(n842), .ZN(n833) );
  NR3D0BWP12T30P140 U885 ( .A1(onewire_timer[1]), .A2(onewire_timer[4]), .A3(
        n833), .ZN(n612) );
  INVD0BWP12T30P140 U886 ( .I(n844), .ZN(n822) );
  ND4D0BWP12T30P140 U887 ( .A1(n618), .A2(n612), .A3(n611), .A4(n822), .ZN(
        n727) );
  ND2D0BWP12T30P140 U888 ( .A1(n613), .A2(n727), .ZN(n677) );
  OAI31D0BWP12T30P140 U889 ( .A1(onewire_inject_opcode[0]), .A2(
        onewire_inject_opcode[1]), .A3(n748), .B(n677), .ZN(n614) );
  INVD0BWP12T30P140 U890 ( .I(onewire_opcode[0]), .ZN(n730) );
  ND3D0BWP12T30P140 U891 ( .A1(n614), .A2(n678), .A3(n730), .ZN(n745) );
  INVD0BWP12T30P140 U892 ( .I(n745), .ZN(n760) );
  OAI21D0BWP12T30P140 U893 ( .A1(n615), .A2(n642), .B(n760), .ZN(n624) );
  INVD0BWP12T30P140 U894 ( .I(onewire_seq_state[0]), .ZN(n651) );
  ND2D0BWP12T30P140 U895 ( .A1(n616), .A2(n651), .ZN(n625) );
  ND2D0BWP12T30P140 U896 ( .A1(n864), .A2(n625), .ZN(n761) );
  ND2D0BWP12T30P140 U897 ( .A1(n760), .A2(n761), .ZN(n805) );
  NR2D0BWP12T30P140 U898 ( .A1(n617), .A2(n616), .ZN(n819) );
  AOI31D0BWP12T30P140 U899 ( .A1(n819), .A2(n646), .A3(n737), .B(n844), .ZN(
        n623) );
  INVD0BWP12T30P140 U900 ( .I(n649), .ZN(n806) );
  AOI21D0BWP12T30P140 U901 ( .A1(n819), .A2(n646), .B(n806), .ZN(n622) );
  INR2D1BWP12T30P140 U902 ( .A1(n625), .B1(n619), .ZN(n647) );
  INVD0BWP12T30P140 U903 ( .I(n752), .ZN(n637) );
  NR2D0BWP12T30P140 U904 ( .A1(n647), .A2(n637), .ZN(n804) );
  OR2D0BWP12T30P140 U905 ( .A1(n621), .A2(n620), .Z(n829) );
  NR4D0BWP12T30P140 U906 ( .A1(n623), .A2(n622), .A3(n804), .A4(n829), .ZN(
        n828) );
  ND3D0BWP12T30P140 U907 ( .A1(n624), .A2(n805), .A3(n828), .ZN(n763) );
  INVD0BWP12T30P140 U908 ( .I(n763), .ZN(n838) );
  ND2D0BWP12T30P140 U909 ( .A1(n747), .A2(n625), .ZN(n810) );
  NR2D0BWP12T30P140 U910 ( .A1(n828), .A2(n810), .ZN(n653) );
  AOI22D0BWP12T30P140 U911 ( .A1(onewire_timer[8]), .A2(n838), .B1(n653), .B2(
        n626), .ZN(n635) );
  ND2D0BWP12T30P140 U912 ( .A1(n628), .A2(n627), .ZN(n652) );
  INVD0BWP12T30P140 U913 ( .I(n652), .ZN(n655) );
  IND4D1BWP12T30P140 U914 ( .A1(onewire_timer[1]), .B1(n630), .B2(n629), .B3(
        n765), .ZN(n631) );
  NR3D0BWP12T30P140 U915 ( .A1(n664), .A2(n632), .A3(n631), .ZN(n633) );
  ND3D0BWP12T30P140 U916 ( .A1(n634), .A2(n655), .A3(n633), .ZN(n709) );
  IND2D1BWP12T30P140 U917 ( .A1(n761), .B1(n760), .ZN(n708) );
  NR2D0BWP12T30P140 U918 ( .A1(n708), .A2(n838), .ZN(n824) );
  INVD0BWP12T30P140 U919 ( .I(n824), .ZN(n841) );
  AOI32D0BWP12T30P140 U920 ( .A1(n636), .A2(n635), .A3(n709), .B1(n841), .B2(
        n635), .ZN(n439) );
  OA22D0BWP12T30P140 U921 ( .A1(n796), .A2(slv_reg1[31]), .B1(write_byte[0]), 
        .B2(n801), .Z(n459) );
  INVD0BWP12T30P140 U922 ( .I(slv_reg2[31]), .ZN(n852) );
  OAI22D0BWP12T30P140 U923 ( .A1(slv_reg3_31_), .A2(n734), .B1(n852), .B2(n796), .ZN(n462) );
  AO22D0BWP12T30P140 U924 ( .A1(Bus2IP_Data[31]), .A2(n790), .B1(slv_reg2[31]), 
        .B2(n789), .Z(n548) );
  INVD0BWP12T30P140 U925 ( .I(n828), .ZN(n837) );
  INVD0BWP12T30P140 U926 ( .I(n647), .ZN(n659) );
  ND2D0BWP12T30P140 U927 ( .A1(n810), .A2(n637), .ZN(n638) );
  OAI22D0BWP12T30P140 U928 ( .A1(n639), .A2(n659), .B1(n638), .B2(n822), .ZN(
        n641) );
  AOI21D0BWP12T30P140 U929 ( .A1(n639), .A2(n709), .B(n841), .ZN(n640) );
  AOI21D0BWP12T30P140 U930 ( .A1(n837), .A2(n641), .B(n640), .ZN(n643) );
  IND3D1BWP12T30P140 U931 ( .A1(n814), .B1(n642), .B2(n760), .ZN(n839) );
  OAI211D0BWP12T30P140 U932 ( .A1(n763), .A2(n644), .B(n643), .C(n839), .ZN(
        n442) );
  AO31D0BWP12T30P140 U933 ( .A1(n645), .A2(Bus2IP_WrCE[1]), .A3(n848), .B(
        Bus2IP_Reset), .Z(n759) );
  OAI21D0BWP12T30P140 U934 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[0]), .B(n759), 
        .ZN(n672) );
  NR2D0BWP12T30P140 U935 ( .A1(Bus2IP_Reset), .A2(n672), .ZN(n673) );
  AO22D0BWP12T30P140 U936 ( .A1(Bus2IP_Data[0]), .A2(n673), .B1(slv_reg1[0]), 
        .B2(n672), .Z(n516) );
  ND2D0BWP12T30P140 U937 ( .A1(n864), .A2(n839), .ZN(n787) );
  INVD0BWP12T30P140 U938 ( .I(n709), .ZN(n665) );
  OAI21D0BWP12T30P140 U939 ( .A1(n665), .A2(n761), .B(n760), .ZN(n706) );
  NR2D0BWP12T30P140 U940 ( .A1(n646), .A2(n814), .ZN(n823) );
  INVD0BWP12T30P140 U941 ( .I(n823), .ZN(n843) );
  AOI21D0BWP12T30P140 U942 ( .A1(n647), .A2(n843), .B(n844), .ZN(n648) );
  AOI211D0BWP12T30P140 U943 ( .A1(n649), .A2(n810), .B(n804), .C(n648), .ZN(
        n650) );
  OAI211D0BWP12T30P140 U944 ( .A1(n651), .A2(n787), .B(n706), .C(n650), .ZN(
        n482) );
  AO22D0BWP12T30P140 U945 ( .A1(Bus2IP_Data[1]), .A2(n673), .B1(slv_reg1[1]), 
        .B2(n672), .Z(n515) );
  AOI22D0BWP12T30P140 U946 ( .A1(onewire_timer[7]), .A2(n838), .B1(n653), .B2(
        n652), .ZN(n654) );
  AOI32D0BWP12T30P140 U947 ( .A1(n655), .A2(n654), .A3(n709), .B1(n841), .B2(
        n654), .ZN(n440) );
  AO22D0BWP12T30P140 U948 ( .A1(Bus2IP_Data[2]), .A2(n673), .B1(slv_reg1[2]), 
        .B2(n672), .Z(n514) );
  NR2D0BWP12T30P140 U949 ( .A1(primary_clock_divider[0]), .A2(n867), .ZN(N252)
         );
  AO22D0BWP12T30P140 U950 ( .A1(Bus2IP_Data[3]), .A2(n673), .B1(slv_reg1[3]), 
        .B2(n672), .Z(n513) );
  IND2D1BWP12T30P140 U951 ( .A1(n656), .B1(n696), .ZN(n776) );
  INVD0BWP12T30P140 U952 ( .I(n776), .ZN(n675) );
  NR2D0BWP12T30P140 U953 ( .A1(n680), .A2(read_shutdown_one), .ZN(n657) );
  NR2D0BWP12T30P140 U954 ( .A1(n675), .A2(n657), .ZN(n467) );
  AO22D0BWP12T30P140 U955 ( .A1(Bus2IP_Data[4]), .A2(n673), .B1(slv_reg1[4]), 
        .B2(n672), .Z(n512) );
  NR2D0BWP12T30P140 U956 ( .A1(n658), .A2(n810), .ZN(n830) );
  OAI22D0BWP12T30P140 U957 ( .A1(n660), .A2(n659), .B1(n558), .B2(n822), .ZN(
        n661) );
  AOI22D0BWP12T30P140 U958 ( .A1(n824), .A2(n744), .B1(n837), .B2(n661), .ZN(
        n662) );
  OAI211D0BWP12T30P140 U959 ( .A1(n763), .A2(n663), .B(n662), .C(n839), .ZN(
        n443) );
  AO22D0BWP12T30P140 U960 ( .A1(Bus2IP_Data[5]), .A2(n673), .B1(slv_reg1[5]), 
        .B2(n672), .Z(n511) );
  OAI21D0BWP12T30P140 U961 ( .A1(n665), .A2(n664), .B(n824), .ZN(n670) );
  INVD0BWP12T30P140 U962 ( .I(n666), .ZN(n803) );
  ND2D0BWP12T30P140 U963 ( .A1(n819), .A2(n822), .ZN(n834) );
  OAI22D0BWP12T30P140 U964 ( .A1(n667), .A2(n810), .B1(n834), .B2(n843), .ZN(
        n668) );
  OAI21D0BWP12T30P140 U965 ( .A1(n803), .A2(n668), .B(n837), .ZN(n669) );
  OAI211D0BWP12T30P140 U966 ( .A1(n763), .A2(n671), .B(n670), .C(n669), .ZN(
        n441) );
  AO22D0BWP12T30P140 U967 ( .A1(Bus2IP_Data[6]), .A2(n673), .B1(slv_reg1[6]), 
        .B2(n672), .Z(n510) );
  AO22D0BWP12T30P140 U968 ( .A1(Bus2IP_Data[7]), .A2(n673), .B1(slv_reg1[7]), 
        .B2(n672), .Z(n509) );
  ND2D0BWP12T30P140 U969 ( .A1(n674), .A2(n776), .ZN(n778) );
  INVD0BWP12T30P140 U970 ( .I(n778), .ZN(n699) );
  ND2D0BWP12T30P140 U971 ( .A1(n733), .A2(byte_counter[0]), .ZN(n771) );
  AO222D0BWP12T30P140 U972 ( .A1(n699), .A2(byte_counter[0]), .B1(n675), .B2(
        n768), .C1(n861), .C2(n771), .Z(n451) );
  OAI21D0BWP12T30P140 U973 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[1]), .B(n759), 
        .ZN(n703) );
  NR2D0BWP12T30P140 U974 ( .A1(Bus2IP_Reset), .A2(n703), .ZN(n704) );
  AO22D0BWP12T30P140 U975 ( .A1(Bus2IP_Data[8]), .A2(n704), .B1(slv_reg1[8]), 
        .B2(n703), .Z(n508) );
  OAI22D0BWP12T30P140 U976 ( .A1(n678), .A2(n677), .B1(n676), .B2(n747), .ZN(
        n476) );
  AO22D0BWP12T30P140 U977 ( .A1(Bus2IP_Data[9]), .A2(n704), .B1(slv_reg1[9]), 
        .B2(n703), .Z(n507) );
  INVD0BWP12T30P140 U978 ( .I(n784), .ZN(n780) );
  NR2D0BWP12T30P140 U979 ( .A1(n766), .A2(n768), .ZN(n782) );
  INVD0BWP12T30P140 U980 ( .I(n782), .ZN(n679) );
  AOI221D0BWP12T30P140 U981 ( .A1(n780), .A2(n782), .B1(n784), .B2(n679), .C(
        n776), .ZN(n682) );
  ND2D0BWP12T30P140 U982 ( .A1(byte_counter[2]), .A2(n733), .ZN(n691) );
  INVD0BWP12T30P140 U983 ( .I(n771), .ZN(n685) );
  INVD0BWP12T30P140 U984 ( .I(byte_counter[1]), .ZN(n777) );
  NR2D0BWP12T30P140 U985 ( .A1(n680), .A2(n777), .ZN(n772) );
  ND2D0BWP12T30P140 U986 ( .A1(n685), .A2(n772), .ZN(n690) );
  NR2D0BWP12T30P140 U987 ( .A1(n691), .A2(n690), .ZN(n698) );
  AOI211D0BWP12T30P140 U988 ( .A1(n691), .A2(n690), .B(n698), .C(n774), .ZN(
        n681) );
  AO211D0BWP12T30P140 U989 ( .A1(n699), .A2(byte_counter[2]), .B(n682), .C(
        n681), .Z(n448) );
  AO22D0BWP12T30P140 U990 ( .A1(Bus2IP_Data[10]), .A2(n704), .B1(slv_reg1[10]), 
        .B2(n703), .Z(n506) );
  AO22D0BWP12T30P140 U991 ( .A1(Bus2IP_Data[11]), .A2(n684), .B1(slv_reg2[11]), 
        .B2(n683), .Z(n528) );
  AO22D0BWP12T30P140 U992 ( .A1(Bus2IP_Data[11]), .A2(n704), .B1(slv_reg1[11]), 
        .B2(n703), .Z(n505) );
  AO22D0BWP12T30P140 U993 ( .A1(Bus2IP_Data[12]), .A2(n704), .B1(slv_reg1[12]), 
        .B2(n703), .Z(n504) );
  INVD0BWP12T30P140 U994 ( .I(n691), .ZN(n695) );
  INVD0BWP12T30P140 U995 ( .I(n772), .ZN(n686) );
  AOI221D0BWP12T30P140 U996 ( .A1(write_byte[3]), .A2(n685), .B1(write_byte[2]), .B2(n771), .C(n686), .ZN(n694) );
  AOI221D0BWP12T30P140 U997 ( .A1(n685), .A2(write_byte[1]), .B1(n771), .B2(
        write_byte[0]), .C(n772), .ZN(n693) );
  NR2D0BWP12T30P140 U998 ( .A1(n772), .A2(n771), .ZN(n770) );
  AOI221D0BWP12T30P140 U999 ( .A1(write_byte[6]), .A2(n772), .B1(write_byte[4]), .B2(n686), .C(n685), .ZN(n687) );
  AOI21D0BWP12T30P140 U1000 ( .A1(n770), .A2(n688), .B(n687), .ZN(n689) );
  OAI21D0BWP12T30P140 U1001 ( .A1(write_byte[7]), .A2(n690), .B(n689), .ZN(
        n692) );
  OAI32D0BWP12T30P140 U1002 ( .A1(n695), .A2(n694), .A3(n693), .B1(n692), .B2(
        n691), .ZN(n860) );
  ND2D0BWP12T30P140 U1003 ( .A1(n697), .A2(n696), .ZN(n859) );
  OAI21D0BWP12T30P140 U1004 ( .A1(n774), .A2(n860), .B(n859), .ZN(N432) );
  AO22D0BWP12T30P140 U1005 ( .A1(Bus2IP_Data[13]), .A2(n704), .B1(slv_reg1[13]), .B2(n703), .Z(n503) );
  AOI22D0BWP12T30P140 U1006 ( .A1(byte_counter[3]), .A2(n699), .B1(n861), .B2(
        n698), .ZN(n700) );
  ND3D0BWP12T30P140 U1007 ( .A1(n780), .A2(n769), .A3(n767), .ZN(n713) );
  AOI32D0BWP12T30P140 U1008 ( .A1(n711), .A2(n700), .A3(n713), .B1(n776), .B2(
        n700), .ZN(n449) );
  AO22D0BWP12T30P140 U1009 ( .A1(Bus2IP_Data[14]), .A2(n704), .B1(slv_reg1[14]), .B2(n703), .Z(n502) );
  ND2D0BWP12T30P140 U1010 ( .A1(n722), .A2(primary_clock_divider[3]), .ZN(n702) );
  INVD0BWP12T30P140 U1011 ( .I(primary_clock_divider[4]), .ZN(n701) );
  AOI221D0BWP12T30P140 U1012 ( .A1(primary_clock_divider[3]), .A2(
        primary_clock_divider[4]), .B1(n702), .B2(n701), .C(
        primary_clock_divider[5]), .ZN(N256) );
  AO22D0BWP12T30P140 U1013 ( .A1(Bus2IP_Data[15]), .A2(n704), .B1(slv_reg1[15]), .B2(n703), .Z(n501) );
  INVD0BWP12T30P140 U1014 ( .I(n867), .ZN(n705) );
  ND2D0BWP12T30P140 U1015 ( .A1(primary_clock_divider[1]), .A2(
        primary_clock_divider[0]), .ZN(n724) );
  OA211D0BWP12T30P140 U1016 ( .A1(primary_clock_divider[1]), .A2(
        primary_clock_divider[0]), .B(n705), .C(n724), .Z(N253) );
  OAI21D0BWP12T30P140 U1017 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[2]), .B(n759), 
        .ZN(n720) );
  NR2D0BWP12T30P140 U1018 ( .A1(Bus2IP_Reset), .A2(n720), .ZN(n721) );
  AO22D0BWP12T30P140 U1019 ( .A1(Bus2IP_Data[16]), .A2(n721), .B1(slv_reg1[16]), .B2(n720), .Z(n500) );
  ND2D0BWP12T30P140 U1020 ( .A1(n706), .A2(onewire_status_register_31_), .ZN(
        n707) );
  OAI31D0BWP12T30P140 U1021 ( .A1(DQ_Wire_I), .A2(n709), .A3(n708), .B(n707), 
        .ZN(n437) );
  AO22D0BWP12T30P140 U1022 ( .A1(Bus2IP_Data[17]), .A2(n721), .B1(slv_reg1[17]), .B2(n720), .Z(n499) );
  NR2D0BWP12T30P140 U1023 ( .A1(read_shutdown_one), .A2(n859), .ZN(n783) );
  ND3D0BWP12T30P140 U1024 ( .A1(n766), .A2(n783), .A3(n767), .ZN(n716) );
  NR2D0BWP12T30P140 U1025 ( .A1(n780), .A2(n716), .ZN(n710) );
  CKMUX2D0BWP12T30P140 U1026 ( .I0(read_byte[0]), .I1(onewire_received_bit), 
        .S(n710), .Z(n475) );
  AO22D0BWP12T30P140 U1027 ( .A1(Bus2IP_Data[18]), .A2(n721), .B1(slv_reg1[18]), .B2(n720), .Z(n498) );
  NR3D0BWP12T30P140 U1028 ( .A1(n776), .A2(read_shutdown_one), .A3(n711), .ZN(
        n712) );
  CKMUX2D0BWP12T30P140 U1029 ( .I0(read_byte[7]), .I1(onewire_received_bit), 
        .S(n712), .Z(n468) );
  AO22D0BWP12T30P140 U1030 ( .A1(Bus2IP_Data[19]), .A2(n721), .B1(slv_reg1[19]), .B2(n720), .Z(n497) );
  INR2D1BWP12T30P140 U1031 ( .A1(n783), .B1(n713), .ZN(n714) );
  CKMUX2D0BWP12T30P140 U1032 ( .I0(read_byte[6]), .I1(onewire_received_bit), 
        .S(n714), .Z(n469) );
  AO22D0BWP12T30P140 U1033 ( .A1(Bus2IP_Data[20]), .A2(n721), .B1(slv_reg1[20]), .B2(n720), .Z(n496) );
  ND3D0BWP12T30P140 U1034 ( .A1(n768), .A2(n783), .A3(n769), .ZN(n718) );
  NR2D0BWP12T30P140 U1035 ( .A1(n784), .A2(n718), .ZN(n715) );
  CKMUX2D0BWP12T30P140 U1036 ( .I0(read_byte[5]), .I1(onewire_received_bit), 
        .S(n715), .Z(n470) );
  AO22D0BWP12T30P140 U1037 ( .A1(Bus2IP_Data[21]), .A2(n721), .B1(slv_reg1[21]), .B2(n720), .Z(n495) );
  NR2D0BWP12T30P140 U1038 ( .A1(n784), .A2(n716), .ZN(n717) );
  CKMUX2D0BWP12T30P140 U1039 ( .I0(read_byte[4]), .I1(onewire_received_bit), 
        .S(n717), .Z(n471) );
  AO22D0BWP12T30P140 U1040 ( .A1(Bus2IP_Data[22]), .A2(n721), .B1(slv_reg1[22]), .B2(n720), .Z(n494) );
  NR2D0BWP12T30P140 U1041 ( .A1(n780), .A2(n718), .ZN(n719) );
  CKMUX2D0BWP12T30P140 U1042 ( .I0(read_byte[1]), .I1(onewire_received_bit), 
        .S(n719), .Z(n474) );
  AO22D0BWP12T30P140 U1043 ( .A1(Bus2IP_Data[23]), .A2(n721), .B1(slv_reg1[23]), .B2(n720), .Z(n493) );
  INVD0BWP12T30P140 U1044 ( .I(primary_clock_divider[2]), .ZN(n723) );
  AOI211D0BWP12T30P140 U1045 ( .A1(n724), .A2(n723), .B(n722), .C(n867), .ZN(
        N254) );
  MOAI22D0BWP12T30P140 U1046 ( .A1(slv_reg3_31_), .A2(n725), .B1(slv_reg2[29]), 
        .B2(n801), .ZN(n461) );
  INVD0BWP12T30P140 U1047 ( .I(n726), .ZN(n728) );
  ND2D0BWP12T30P140 U1048 ( .A1(n728), .A2(n727), .ZN(n729) );
  OAI22D0BWP12T30P140 U1049 ( .A1(n731), .A2(n747), .B1(n730), .B2(n729), .ZN(
        n478) );
  INVD0BWP12T30P140 U1050 ( .I(byte_opcode[0]), .ZN(n735) );
  OAI33D0BWP12T30P140 U1051 ( .A1(n736), .A2(N434), .A3(n735), .B1(n734), .B2(
        n733), .B3(n732), .ZN(n466) );
  NR4D0BWP12T30P140 U1052 ( .A1(onewire_timer[2]), .A2(n739), .A3(n738), .A4(
        n737), .ZN(n740) );
  IND4D1BWP12T30P140 U1053 ( .A1(n742), .B1(n741), .B2(n740), .B3(n756), .ZN(
        n743) );
  OAI31D0BWP12T30P140 U1054 ( .A1(n745), .A2(n744), .A3(n743), .B(
        onewire_opcode[2]), .ZN(n746) );
  OAI21D0BWP12T30P140 U1055 ( .A1(n748), .A2(n747), .B(n746), .ZN(n477) );
  AN2D0BWP12T30P140 U1056 ( .A1(n832), .A2(n822), .Z(n750) );
  INVD0BWP12T30P140 U1057 ( .I(n755), .ZN(n753) );
  AOI21D0BWP12T30P140 U1058 ( .A1(n753), .A2(n843), .B(n834), .ZN(n749) );
  AOI221D0BWP12T30P140 U1059 ( .A1(n751), .A2(n750), .B1(n755), .B2(n750), .C(
        n749), .ZN(n758) );
  AOI21D0BWP12T30P140 U1060 ( .A1(n753), .A2(n830), .B(n752), .ZN(n754) );
  AOI22D0BWP12T30P140 U1061 ( .A1(n829), .A2(n755), .B1(n844), .B2(n754), .ZN(
        n757) );
  AOI32D0BWP12T30P140 U1062 ( .A1(n758), .A2(n763), .A3(n757), .B1(n838), .B2(
        n756), .ZN(n444) );
  OAI21D0BWP12T30P140 U1063 ( .A1(Bus2IP_Reset), .A2(Bus2IP_BE[3]), .B(n759), 
        .ZN(n799) );
  NR2D0BWP12T30P140 U1064 ( .A1(Bus2IP_Reset), .A2(n799), .ZN(n800) );
  AO22D0BWP12T30P140 U1065 ( .A1(Bus2IP_Data[24]), .A2(n800), .B1(slv_reg1[24]), .B2(n799), .Z(n492) );
  INVD0BWP12T30P140 U1066 ( .I(n810), .ZN(n809) );
  AOI22D0BWP12T30P140 U1067 ( .A1(n809), .A2(n762), .B1(n761), .B2(n760), .ZN(
        n764) );
  AOI22D0BWP12T30P140 U1068 ( .A1(n838), .A2(n765), .B1(n764), .B2(n763), .ZN(
        n438) );
  AO22D0BWP12T30P140 U1069 ( .A1(Bus2IP_Data[25]), .A2(n800), .B1(slv_reg1[25]), .B2(n799), .Z(n491) );
  AOI22D0BWP12T30P140 U1070 ( .A1(n769), .A2(n768), .B1(n767), .B2(n766), .ZN(
        n775) );
  AOI21D0BWP12T30P140 U1071 ( .A1(n772), .A2(n771), .B(n770), .ZN(n773) );
  OAI222D0BWP12T30P140 U1072 ( .A1(n778), .A2(n777), .B1(n776), .B2(n775), 
        .C1(n774), .C2(n773), .ZN(n447) );
  AO22D0BWP12T30P140 U1073 ( .A1(Bus2IP_Data[27]), .A2(n800), .B1(slv_reg1[27]), .B2(n799), .Z(n489) );
  ND3D0BWP12T30P140 U1074 ( .A1(n780), .A2(n779), .A3(n783), .ZN(n781) );
  CKMUX2D0BWP12T30P140 U1075 ( .I0(onewire_received_bit), .I1(read_byte[3]), 
        .S(n781), .Z(n472) );
  AO22D0BWP12T30P140 U1076 ( .A1(Bus2IP_Data[28]), .A2(n800), .B1(slv_reg1[28]), .B2(n799), .Z(n488) );
  ND3D0BWP12T30P140 U1077 ( .A1(n784), .A2(n783), .A3(n782), .ZN(n785) );
  CKMUX2D0BWP12T30P140 U1078 ( .I0(onewire_received_bit), .I1(read_byte[2]), 
        .S(n785), .Z(n473) );
  AO22D0BWP12T30P140 U1079 ( .A1(Bus2IP_Data[29]), .A2(n800), .B1(slv_reg1[29]), .B2(n799), .Z(n487) );
  INVD0BWP12T30P140 U1080 ( .I(n786), .ZN(n870) );
  NR2D0BWP12T30P140 U1081 ( .A1(n788), .A2(n787), .ZN(n481) );
  AO22D0BWP12T30P140 U1082 ( .A1(Bus2IP_Data[30]), .A2(n800), .B1(slv_reg1[30]), .B2(n799), .Z(n486) );
  AO22D0BWP12T30P140 U1083 ( .A1(Bus2IP_Data[3]), .A2(n798), .B1(slv_reg2[3]), 
        .B2(n797), .Z(n520) );
  AO22D0BWP12T30P140 U1084 ( .A1(Bus2IP_Data[26]), .A2(n800), .B1(slv_reg1[26]), .B2(n799), .Z(n490) );
  AO22D0BWP12T30P140 U1085 ( .A1(Bus2IP_Data[29]), .A2(n790), .B1(slv_reg2[29]), .B2(n789), .Z(n546) );
  AO22D0BWP12T30P140 U1086 ( .A1(Bus2IP_Data[2]), .A2(n798), .B1(slv_reg2[2]), 
        .B2(n797), .Z(n519) );
  AO22D0BWP12T30P140 U1087 ( .A1(Bus2IP_Data[30]), .A2(n790), .B1(slv_reg2[30]), .B2(n789), .Z(n547) );
  AO22D0BWP12T30P140 U1088 ( .A1(Bus2IP_Data[1]), .A2(n798), .B1(slv_reg2[1]), 
        .B2(n797), .Z(n518) );
  NR2D0BWP12T30P140 U1089 ( .A1(Bus2IP_WrCE[2]), .A2(Bus2IP_WrCE[1]), .ZN(n847) );
  IND4D1BWP12T30P140 U1090 ( .A1(Bus2IP_WrCE[0]), .B1(Bus2IP_BE[3]), .B2(
        Bus2IP_WrCE[3]), .B3(n847), .ZN(n795) );
  INVD0BWP12T30P140 U1091 ( .I(Bus2IP_Data[31]), .ZN(n791) );
  AOI21D0BWP12T30P140 U1092 ( .A1(slv_reg3_31_), .A2(n733), .B(n791), .ZN(n793) );
  OAI21D0BWP12T30P140 U1093 ( .A1(n793), .A2(n795), .B(n792), .ZN(n794) );
  AOI21D0BWP12T30P140 U1094 ( .A1(n796), .A2(n795), .B(n794), .ZN(n463) );
  AO22D0BWP12T30P140 U1095 ( .A1(Bus2IP_Data[0]), .A2(n798), .B1(slv_reg2[0]), 
        .B2(n797), .Z(n517) );
  AO22D0BWP12T30P140 U1096 ( .A1(Bus2IP_Data[31]), .A2(n800), .B1(slv_reg1[31]), .B2(n799), .Z(n485) );
  MOAI22D0BWP12T30P140 U1097 ( .A1(slv_reg3_31_), .A2(n802), .B1(slv_reg2[30]), 
        .B2(n801), .ZN(n460) );
  INVD0BWP12T30P140 U1098 ( .I(n830), .ZN(n821) );
  INVD0BWP12T30P140 U1099 ( .I(n839), .ZN(n863) );
  NR2D0BWP12T30P140 U1100 ( .A1(n804), .A2(n803), .ZN(n816) );
  OAI211D0BWP12T30P140 U1101 ( .A1(n830), .A2(n806), .B(n816), .C(n805), .ZN(
        n807) );
  AOI211D0BWP12T30P140 U1102 ( .A1(n822), .A2(n821), .B(n863), .C(n807), .ZN(
        n808) );
  CKMUX2D0BWP12T30P140 U1103 ( .I0(n809), .I1(DQ_Wire_O), .S(n808), .Z(n479)
         );
  OAI21D0BWP12T30P140 U1104 ( .A1(onewire_timer[0]), .A2(n810), .B(n816), .ZN(
        n811) );
  AOI22D0BWP12T30P140 U1105 ( .A1(onewire_timer[0]), .A2(n838), .B1(n837), 
        .B2(n811), .ZN(n812) );
  OAI21D0BWP12T30P140 U1106 ( .A1(onewire_timer[0]), .A2(n841), .B(n812), .ZN(
        n484) );
  INVD0BWP12T30P140 U1107 ( .I(n825), .ZN(n815) );
  AOI21D0BWP12T30P140 U1108 ( .A1(n815), .A2(n814), .B(n813), .ZN(n818) );
  INVD0BWP12T30P140 U1109 ( .I(n816), .ZN(n817) );
  AO211D0BWP12T30P140 U1110 ( .A1(n819), .A2(n825), .B(n818), .C(n817), .Z(
        n820) );
  AOI221D0BWP12T30P140 U1111 ( .A1(n823), .A2(n822), .B1(n821), .B2(n822), .C(
        n820), .ZN(n827) );
  AOI22D0BWP12T30P140 U1112 ( .A1(onewire_timer[1]), .A2(n838), .B1(n825), 
        .B2(n824), .ZN(n826) );
  OAI21D0BWP12T30P140 U1113 ( .A1(n828), .A2(n827), .B(n826), .ZN(n446) );
  OAI21D0BWP12T30P140 U1114 ( .A1(n830), .A2(n829), .B(n842), .ZN(n831) );
  AOI22D0BWP12T30P140 U1115 ( .A1(n833), .A2(n832), .B1(n831), .B2(n844), .ZN(
        n835) );
  AOI32D0BWP12T30P140 U1116 ( .A1(n842), .A2(n835), .A3(n843), .B1(n834), .B2(
        n835), .ZN(n836) );
  AOI22D0BWP12T30P140 U1117 ( .A1(onewire_timer[2]), .A2(n838), .B1(n837), 
        .B2(n836), .ZN(n840) );
  OAI211D0BWP12T30P140 U1118 ( .A1(n842), .A2(n841), .B(n840), .C(n839), .ZN(
        n445) );
  NR2D0BWP12T30P140 U1119 ( .A1(n844), .A2(n843), .ZN(n845) );
  CKMUX2D0BWP12T30P140 U1120 ( .I0(onewire_received_bit), .I1(DQ_Wire_I), .S(
        n845), .Z(n483) );
  CKBD0BWP12T30P140 U1121 ( .I(Bus2IP_Clk), .Z(n873) );
  CKBD0BWP12T30P140 U1122 ( .I(Bus2IP_Clk), .Z(n872) );
  CKBD0BWP12T30P140 U1123 ( .I(Bus2IP_Clk), .Z(n871) );
  NR2D0BWP12T30P140 U1124 ( .A1(Bus2IP_RdCE[0]), .A2(Bus2IP_RdCE[1]), .ZN(n849) );
  NR2D0BWP12T30P140 U1125 ( .A1(Bus2IP_RdCE[3]), .A2(Bus2IP_RdCE[2]), .ZN(n846) );
  ND4D0BWP12T30P140 U1126 ( .A1(n848), .A2(n847), .A3(n849), .A4(n846), .ZN(
        IP2Bus_Ack) );
  IND3D1BWP12T30P140 U1127 ( .A1(Bus2IP_RdCE[3]), .B1(n849), .B2(
        Bus2IP_RdCE[2]), .ZN(n853) );
  INR4D0BWP12T30P140 U1128 ( .A1(Bus2IP_RdCE[0]), .B1(Bus2IP_RdCE[3]), .B2(
        Bus2IP_RdCE[1]), .B3(Bus2IP_RdCE[2]), .ZN(n854) );
  CKBD0BWP12T30P140 U1129 ( .I(n857), .Z(n855) );
  AOI22D0BWP12T30P140 U1130 ( .A1(read_byte[0]), .A2(n854), .B1(slv_reg1[31]), 
        .B2(n855), .ZN(n851) );
  IND4D1BWP12T30P140 U1131 ( .A1(Bus2IP_RdCE[2]), .B1(n849), .B2(
        onewire_status_register_31_), .B3(Bus2IP_RdCE[3]), .ZN(n850) );
  OAI211D0BWP12T30P140 U1132 ( .A1(n852), .A2(n853), .B(n851), .C(n850), .ZN(
        IP2Bus_Data[31]) );
  INVD0BWP12T30P140 U1133 ( .I(n853), .ZN(n858) );
  CKBD0BWP12T30P140 U1134 ( .I(n858), .Z(n856) );
  AO222D0BWP12T30P140 U1135 ( .A1(read_byte[1]), .A2(n854), .B1(slv_reg1[30]), 
        .B2(n855), .C1(slv_reg2[30]), .C2(n856), .Z(IP2Bus_Data[30]) );
  AO222D0BWP12T30P140 U1136 ( .A1(read_byte[2]), .A2(n854), .B1(slv_reg1[29]), 
        .B2(n855), .C1(slv_reg2[29]), .C2(n856), .Z(IP2Bus_Data[29]) );
  AO222D0BWP12T30P140 U1137 ( .A1(read_byte[3]), .A2(n854), .B1(slv_reg1[28]), 
        .B2(n855), .C1(slv_reg2[28]), .C2(n856), .Z(IP2Bus_Data[28]) );
  AO222D0BWP12T30P140 U1138 ( .A1(read_byte[4]), .A2(n854), .B1(slv_reg1[27]), 
        .B2(n855), .C1(slv_reg2[27]), .C2(n856), .Z(IP2Bus_Data[27]) );
  AO222D0BWP12T30P140 U1139 ( .A1(read_byte[5]), .A2(n854), .B1(slv_reg1[26]), 
        .B2(n855), .C1(slv_reg2[26]), .C2(n856), .Z(IP2Bus_Data[26]) );
  AO222D0BWP12T30P140 U1140 ( .A1(read_byte[6]), .A2(n854), .B1(slv_reg1[25]), 
        .B2(n855), .C1(slv_reg2[25]), .C2(n856), .Z(IP2Bus_Data[25]) );
  AO222D0BWP12T30P140 U1141 ( .A1(read_byte[7]), .A2(n854), .B1(slv_reg1[24]), 
        .B2(n855), .C1(slv_reg2[24]), .C2(n856), .Z(IP2Bus_Data[24]) );
  AO22D0BWP12T30P140 U1142 ( .A1(slv_reg2[22]), .A2(n858), .B1(slv_reg1[22]), 
        .B2(n855), .Z(IP2Bus_Data[22]) );
  AO22D0BWP12T30P140 U1143 ( .A1(slv_reg2[20]), .A2(n858), .B1(slv_reg1[20]), 
        .B2(n855), .Z(IP2Bus_Data[20]) );
  AO22D0BWP12T30P140 U1144 ( .A1(slv_reg2[18]), .A2(n858), .B1(slv_reg1[18]), 
        .B2(n855), .Z(IP2Bus_Data[18]) );
  AO22D0BWP12T30P140 U1145 ( .A1(slv_reg2[15]), .A2(n856), .B1(slv_reg1[15]), 
        .B2(n855), .Z(IP2Bus_Data[15]) );
  AO22D0BWP12T30P140 U1146 ( .A1(slv_reg2[13]), .A2(n856), .B1(slv_reg1[13]), 
        .B2(n855), .Z(IP2Bus_Data[13]) );
  AO22D0BWP12T30P140 U1147 ( .A1(slv_reg2[6]), .A2(n856), .B1(slv_reg1[6]), 
        .B2(n855), .Z(IP2Bus_Data[6]) );
  AO22D0BWP12T30P140 U1148 ( .A1(slv_reg2[4]), .A2(n856), .B1(slv_reg1[4]), 
        .B2(n855), .Z(IP2Bus_Data[4]) );
  AO22D0BWP12T30P140 U1149 ( .A1(slv_reg2[2]), .A2(n856), .B1(slv_reg1[2]), 
        .B2(n855), .Z(IP2Bus_Data[2]) );
  AO22D0BWP12T30P140 U1150 ( .A1(slv_reg2[0]), .A2(n856), .B1(slv_reg1[0]), 
        .B2(n855), .Z(IP2Bus_Data[0]) );
  AO22D0BWP12T30P140 U1151 ( .A1(slv_reg2[23]), .A2(n858), .B1(slv_reg1[23]), 
        .B2(n857), .Z(IP2Bus_Data[23]) );
  AO22D0BWP12T30P140 U1152 ( .A1(slv_reg2[21]), .A2(n856), .B1(slv_reg1[21]), 
        .B2(n857), .Z(IP2Bus_Data[21]) );
  AO22D0BWP12T30P140 U1153 ( .A1(slv_reg2[19]), .A2(n856), .B1(slv_reg1[19]), 
        .B2(n857), .Z(IP2Bus_Data[19]) );
  AO22D0BWP12T30P140 U1154 ( .A1(slv_reg2[17]), .A2(n856), .B1(slv_reg1[17]), 
        .B2(n857), .Z(IP2Bus_Data[17]) );
  AO22D0BWP12T30P140 U1155 ( .A1(slv_reg2[16]), .A2(n858), .B1(slv_reg1[16]), 
        .B2(n857), .Z(IP2Bus_Data[16]) );
  AO22D0BWP12T30P140 U1156 ( .A1(slv_reg2[14]), .A2(n858), .B1(slv_reg1[14]), 
        .B2(n857), .Z(IP2Bus_Data[14]) );
  AO22D0BWP12T30P140 U1157 ( .A1(slv_reg2[12]), .A2(n858), .B1(slv_reg1[12]), 
        .B2(n857), .Z(IP2Bus_Data[12]) );
  AO22D0BWP12T30P140 U1158 ( .A1(slv_reg2[11]), .A2(n858), .B1(slv_reg1[11]), 
        .B2(n857), .Z(IP2Bus_Data[11]) );
  AO22D0BWP12T30P140 U1159 ( .A1(slv_reg2[10]), .A2(n858), .B1(slv_reg1[10]), 
        .B2(n857), .Z(IP2Bus_Data[10]) );
  AO22D0BWP12T30P140 U1160 ( .A1(slv_reg2[9]), .A2(n858), .B1(slv_reg1[9]), 
        .B2(n857), .Z(IP2Bus_Data[9]) );
  AO22D0BWP12T30P140 U1161 ( .A1(slv_reg2[8]), .A2(n858), .B1(slv_reg1[8]), 
        .B2(n857), .Z(IP2Bus_Data[8]) );
  AO22D0BWP12T30P140 U1162 ( .A1(slv_reg2[7]), .A2(n858), .B1(slv_reg1[7]), 
        .B2(n857), .Z(IP2Bus_Data[7]) );
  AO22D0BWP12T30P140 U1163 ( .A1(slv_reg2[5]), .A2(n858), .B1(slv_reg1[5]), 
        .B2(n857), .Z(IP2Bus_Data[5]) );
  AO22D0BWP12T30P140 U1164 ( .A1(slv_reg2[3]), .A2(n858), .B1(slv_reg1[3]), 
        .B2(n857), .Z(IP2Bus_Data[3]) );
  AO22D0BWP12T30P140 U1165 ( .A1(slv_reg2[1]), .A2(n858), .B1(slv_reg1[1]), 
        .B2(n857), .Z(IP2Bus_Data[1]) );
  IOA21D0BWP12T30P140 U1166 ( .A1(n861), .A2(n860), .B(n859), .ZN(N433) );
  AOI211D0BWP12T30P140 U1167 ( .A1(onewire_seq_state[1]), .A2(n864), .B(n863), 
        .C(n862), .ZN(n866) );
  ND2D0BWP12T30P140 U1168 ( .A1(n866), .A2(n865), .ZN(n480) );
  INVD0BWP12T30P140 U1169 ( .I(primary_clock), .ZN(n868) );
  MUX2ND0BWP12T30P140 U1170 ( .I0(n868), .I1(n557), .S(n867), .ZN(n436) );
endmodule

