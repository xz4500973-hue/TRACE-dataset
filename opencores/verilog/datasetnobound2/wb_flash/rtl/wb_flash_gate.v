/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:02:40 2026
/////////////////////////////////////////////////////////////


module wb_flash ( clk_i, nrst_i, wb_adr_i, wb_dat_o, wb_dat_i, wb_sel_i, 
        wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, flash_adr_o, flash_dat_o, 
        flash_dat_i, flash_oe, flash_ce, flash_we );
  input [18:0] wb_adr_i;
  output [31:0] wb_dat_o;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  output [18:0] flash_adr_o;
  output [7:0] flash_dat_o;
  input [7:0] flash_dat_i;
  input clk_i, nrst_i, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, flash_oe, flash_ce, flash_we;
  wire   in_wait, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85;
  wire   [3:0] wait_cnt;

  DFCNQD1BWP12T30P140 wb_ack_o_reg ( .D(n36), .CP(clk_i), .CDN(nrst_i), .Q(
        wb_ack_o) );
  DFCNQD1BWP12T30P140 wait_cnt_reg_0_ ( .D(n40), .CP(clk_i), .CDN(nrst_i), .Q(
        wait_cnt[0]) );
  DFCNQD1BWP12T30P140 wait_cnt_reg_3_ ( .D(n37), .CP(clk_i), .CDN(nrst_i), .Q(
        wait_cnt[3]) );
  DFCNQD1BWP12T30P140 wait_cnt_reg_2_ ( .D(n38), .CP(clk_i), .CDN(nrst_i), .Q(
        wait_cnt[2]) );
  DFCNQD1BWP12T30P140 in_wait_reg ( .D(n41), .CP(clk_i), .CDN(nrst_i), .Q(
        in_wait) );
  DFCNQD1BWP12T30P140 wait_cnt_reg_1_ ( .D(n39), .CP(clk_i), .CDN(nrst_i), .Q(
        wait_cnt[1]) );
  NR2D0BWP12T30P140 U57 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[2]), .ZN(n59) );
  ND3D0BWP12T30P140 U58 ( .A1(n60), .A2(n59), .A3(wb_sel_i[3]), .ZN(n62) );
  CKBD0BWP12T30P140 U59 ( .I(wb_adr_i[2]), .Z(flash_adr_o[2]) );
  CKBD0BWP12T30P140 U60 ( .I(wb_adr_i[3]), .Z(flash_adr_o[3]) );
  CKBD0BWP12T30P140 U61 ( .I(wb_adr_i[4]), .Z(flash_adr_o[4]) );
  CKBD0BWP12T30P140 U62 ( .I(wb_adr_i[5]), .Z(flash_adr_o[5]) );
  CKBD0BWP12T30P140 U63 ( .I(wb_adr_i[6]), .Z(flash_adr_o[6]) );
  CKBD0BWP12T30P140 U64 ( .I(wb_adr_i[7]), .Z(flash_adr_o[7]) );
  CKBD0BWP12T30P140 U65 ( .I(wb_adr_i[8]), .Z(flash_adr_o[8]) );
  CKBD0BWP12T30P140 U66 ( .I(wb_adr_i[9]), .Z(flash_adr_o[9]) );
  CKBD0BWP12T30P140 U67 ( .I(wb_adr_i[10]), .Z(flash_adr_o[10]) );
  CKBD0BWP12T30P140 U68 ( .I(wb_adr_i[11]), .Z(flash_adr_o[11]) );
  CKBD0BWP12T30P140 U69 ( .I(wb_adr_i[12]), .Z(flash_adr_o[12]) );
  CKBD0BWP12T30P140 U70 ( .I(wb_adr_i[13]), .Z(flash_adr_o[13]) );
  CKBD0BWP12T30P140 U71 ( .I(wb_adr_i[14]), .Z(flash_adr_o[14]) );
  CKBD0BWP12T30P140 U72 ( .I(wb_adr_i[15]), .Z(flash_adr_o[15]) );
  CKBD0BWP12T30P140 U73 ( .I(wb_adr_i[16]), .Z(flash_adr_o[16]) );
  CKBD0BWP12T30P140 U74 ( .I(wb_adr_i[17]), .Z(flash_adr_o[17]) );
  CKBD0BWP12T30P140 U75 ( .I(wb_adr_i[18]), .Z(flash_adr_o[18]) );
  INVD0BWP12T30P140 U76 ( .I(flash_dat_i[0]), .ZN(n42) );
  INVD0BWP12T30P140 U77 ( .I(n42), .ZN(wb_dat_o[8]) );
  INVD0BWP12T30P140 U78 ( .I(n42), .ZN(wb_dat_o[16]) );
  INVD0BWP12T30P140 U79 ( .I(n42), .ZN(wb_dat_o[24]) );
  INVD0BWP12T30P140 U80 ( .I(n42), .ZN(wb_dat_o[0]) );
  INVD0BWP12T30P140 U81 ( .I(flash_dat_i[1]), .ZN(n43) );
  INVD0BWP12T30P140 U82 ( .I(n43), .ZN(wb_dat_o[9]) );
  INVD0BWP12T30P140 U83 ( .I(n43), .ZN(wb_dat_o[17]) );
  INVD0BWP12T30P140 U84 ( .I(n43), .ZN(wb_dat_o[25]) );
  INVD0BWP12T30P140 U85 ( .I(n43), .ZN(wb_dat_o[1]) );
  INVD0BWP12T30P140 U86 ( .I(flash_dat_i[2]), .ZN(n44) );
  INVD0BWP12T30P140 U87 ( .I(n44), .ZN(wb_dat_o[10]) );
  INVD0BWP12T30P140 U88 ( .I(n44), .ZN(wb_dat_o[18]) );
  INVD0BWP12T30P140 U89 ( .I(n44), .ZN(wb_dat_o[26]) );
  INVD0BWP12T30P140 U90 ( .I(n44), .ZN(wb_dat_o[2]) );
  INVD0BWP12T30P140 U91 ( .I(flash_dat_i[3]), .ZN(n45) );
  INVD0BWP12T30P140 U92 ( .I(n45), .ZN(wb_dat_o[11]) );
  INVD0BWP12T30P140 U93 ( .I(n45), .ZN(wb_dat_o[19]) );
  INVD0BWP12T30P140 U94 ( .I(n45), .ZN(wb_dat_o[27]) );
  INVD0BWP12T30P140 U95 ( .I(n45), .ZN(wb_dat_o[3]) );
  INVD0BWP12T30P140 U96 ( .I(flash_dat_i[4]), .ZN(n46) );
  INVD0BWP12T30P140 U97 ( .I(n46), .ZN(wb_dat_o[12]) );
  INVD0BWP12T30P140 U98 ( .I(n46), .ZN(wb_dat_o[20]) );
  INVD0BWP12T30P140 U99 ( .I(n46), .ZN(wb_dat_o[28]) );
  INVD0BWP12T30P140 U100 ( .I(n46), .ZN(wb_dat_o[4]) );
  INVD0BWP12T30P140 U101 ( .I(flash_dat_i[5]), .ZN(n47) );
  INVD0BWP12T30P140 U102 ( .I(n47), .ZN(wb_dat_o[13]) );
  INVD0BWP12T30P140 U103 ( .I(n47), .ZN(wb_dat_o[21]) );
  INVD0BWP12T30P140 U104 ( .I(n47), .ZN(wb_dat_o[29]) );
  INVD0BWP12T30P140 U105 ( .I(n47), .ZN(wb_dat_o[5]) );
  INVD0BWP12T30P140 U106 ( .I(flash_dat_i[6]), .ZN(n48) );
  INVD0BWP12T30P140 U107 ( .I(n48), .ZN(wb_dat_o[14]) );
  INVD0BWP12T30P140 U108 ( .I(n48), .ZN(wb_dat_o[22]) );
  INVD0BWP12T30P140 U109 ( .I(n48), .ZN(wb_dat_o[30]) );
  INVD0BWP12T30P140 U110 ( .I(n48), .ZN(wb_dat_o[6]) );
  INVD0BWP12T30P140 U111 ( .I(flash_dat_i[7]), .ZN(n49) );
  INVD0BWP12T30P140 U112 ( .I(n49), .ZN(wb_dat_o[15]) );
  INVD0BWP12T30P140 U113 ( .I(n49), .ZN(wb_dat_o[23]) );
  INVD0BWP12T30P140 U114 ( .I(n49), .ZN(wb_dat_o[31]) );
  INVD0BWP12T30P140 U115 ( .I(n49), .ZN(wb_dat_o[7]) );
  CKND2D1BWP12T30P140 U116 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(flash_ce) );
  ND2D0BWP12T30P140 U117 ( .A1(in_wait), .A2(wait_cnt[0]), .ZN(n50) );
  OAI21D0BWP12T30P140 U118 ( .A1(in_wait), .A2(flash_ce), .B(n50), .ZN(n51) );
  INVD0BWP12T30P140 U119 ( .I(n50), .ZN(n63) );
  MAOI22D0BWP12T30P140 U120 ( .A1(wait_cnt[1]), .A2(n51), .B1(n63), .B2(
        wait_cnt[1]), .ZN(n39) );
  INVD0BWP12T30P140 U121 ( .I(in_wait), .ZN(n57) );
  INVD0BWP12T30P140 U122 ( .I(wait_cnt[3]), .ZN(n54) );
  ND3D0BWP12T30P140 U123 ( .A1(wait_cnt[2]), .A2(n63), .A3(wait_cnt[1]), .ZN(
        n55) );
  NR2D0BWP12T30P140 U124 ( .A1(n54), .A2(n55), .ZN(n58) );
  AOI21D0BWP12T30P140 U125 ( .A1(n57), .A2(flash_ce), .B(n58), .ZN(n41) );
  INVD0BWP12T30P140 U126 ( .I(wait_cnt[2]), .ZN(n53) );
  OAI21D0BWP12T30P140 U127 ( .A1(wait_cnt[1]), .A2(n57), .B(n51), .ZN(n52) );
  AO32D0BWP12T30P140 U128 ( .A1(n53), .A2(n63), .A3(wait_cnt[1]), .B1(n52), 
        .B2(wait_cnt[2]), .Z(n38) );
  AOI21D0BWP12T30P140 U129 ( .A1(in_wait), .A2(n53), .B(n52), .ZN(n56) );
  AOI22D0BWP12T30P140 U130 ( .A1(wait_cnt[3]), .A2(n56), .B1(n55), .B2(n54), 
        .ZN(n37) );
  ND2D0BWP12T30P140 U131 ( .A1(n57), .A2(flash_ce), .ZN(n64) );
  AO21D0BWP12T30P140 U132 ( .A1(wb_ack_o), .A2(n64), .B(n58), .Z(n36) );
  INVD1BWP12T30P140 U133 ( .I(wb_sel_i[1]), .ZN(n60) );
  NR4D0BWP12T30P140 U134 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[3]), .A3(wb_sel_i[2]), .A4(n60), .ZN(n81) );
  INVD0BWP12T30P140 U135 ( .I(n62), .ZN(n82) );
  OR2D0BWP12T30P140 U136 ( .A1(n81), .A2(n82), .Z(flash_adr_o[0]) );
  NR3D0BWP12T30P140 U137 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[3]), .A3(wb_sel_i[1]), .ZN(n61) );
  CKND2D1BWP12T30P140 U138 ( .A1(wb_sel_i[2]), .A2(n61), .ZN(n65) );
  CKND2D1BWP12T30P140 U139 ( .A1(n65), .A2(n62), .ZN(flash_adr_o[1]) );
  OR2D0BWP12T30P140 U140 ( .A1(wb_we_i), .A2(flash_ce), .Z(flash_oe) );
  IAO21D0BWP12T30P140 U141 ( .A1(wait_cnt[0]), .A2(n64), .B(n63), .ZN(n40) );
  NR2D0BWP12T30P140 U142 ( .A1(n81), .A2(flash_adr_o[1]), .ZN(n80) );
  AOI22D0BWP12T30P140 U143 ( .A1(n81), .A2(wb_dat_i[15]), .B1(n80), .B2(
        wb_dat_i[7]), .ZN(n67) );
  INVD0BWP12T30P140 U144 ( .I(n65), .ZN(n83) );
  AOI22D0BWP12T30P140 U145 ( .A1(n83), .A2(wb_dat_i[23]), .B1(n82), .B2(
        wb_dat_i[31]), .ZN(n66) );
  ND2D0BWP12T30P140 U146 ( .A1(n67), .A2(n66), .ZN(flash_dat_o[7]) );
  AOI22D0BWP12T30P140 U147 ( .A1(n81), .A2(wb_dat_i[14]), .B1(n80), .B2(
        wb_dat_i[6]), .ZN(n69) );
  AOI22D0BWP12T30P140 U148 ( .A1(n83), .A2(wb_dat_i[22]), .B1(n82), .B2(
        wb_dat_i[30]), .ZN(n68) );
  ND2D0BWP12T30P140 U149 ( .A1(n69), .A2(n68), .ZN(flash_dat_o[6]) );
  AOI22D0BWP12T30P140 U150 ( .A1(n81), .A2(wb_dat_i[13]), .B1(n80), .B2(
        wb_dat_i[5]), .ZN(n71) );
  AOI22D0BWP12T30P140 U151 ( .A1(n83), .A2(wb_dat_i[21]), .B1(n82), .B2(
        wb_dat_i[29]), .ZN(n70) );
  ND2D0BWP12T30P140 U152 ( .A1(n71), .A2(n70), .ZN(flash_dat_o[5]) );
  AOI22D0BWP12T30P140 U153 ( .A1(n81), .A2(wb_dat_i[12]), .B1(n80), .B2(
        wb_dat_i[4]), .ZN(n73) );
  AOI22D0BWP12T30P140 U154 ( .A1(n83), .A2(wb_dat_i[20]), .B1(n82), .B2(
        wb_dat_i[28]), .ZN(n72) );
  ND2D0BWP12T30P140 U155 ( .A1(n73), .A2(n72), .ZN(flash_dat_o[4]) );
  AOI22D0BWP12T30P140 U156 ( .A1(n81), .A2(wb_dat_i[11]), .B1(n80), .B2(
        wb_dat_i[3]), .ZN(n75) );
  AOI22D0BWP12T30P140 U157 ( .A1(n83), .A2(wb_dat_i[19]), .B1(n82), .B2(
        wb_dat_i[27]), .ZN(n74) );
  ND2D0BWP12T30P140 U158 ( .A1(n75), .A2(n74), .ZN(flash_dat_o[3]) );
  AOI22D0BWP12T30P140 U159 ( .A1(n81), .A2(wb_dat_i[10]), .B1(n80), .B2(
        wb_dat_i[2]), .ZN(n77) );
  AOI22D0BWP12T30P140 U160 ( .A1(n83), .A2(wb_dat_i[18]), .B1(n82), .B2(
        wb_dat_i[26]), .ZN(n76) );
  ND2D0BWP12T30P140 U161 ( .A1(n77), .A2(n76), .ZN(flash_dat_o[2]) );
  AOI22D0BWP12T30P140 U162 ( .A1(n81), .A2(wb_dat_i[9]), .B1(n80), .B2(
        wb_dat_i[1]), .ZN(n79) );
  AOI22D0BWP12T30P140 U163 ( .A1(n83), .A2(wb_dat_i[17]), .B1(n82), .B2(
        wb_dat_i[25]), .ZN(n78) );
  ND2D0BWP12T30P140 U164 ( .A1(n79), .A2(n78), .ZN(flash_dat_o[1]) );
  AOI22D0BWP12T30P140 U165 ( .A1(n81), .A2(wb_dat_i[8]), .B1(n80), .B2(
        wb_dat_i[0]), .ZN(n85) );
  AOI22D0BWP12T30P140 U166 ( .A1(n83), .A2(wb_dat_i[16]), .B1(n82), .B2(
        wb_dat_i[24]), .ZN(n84) );
  ND2D0BWP12T30P140 U167 ( .A1(n85), .A2(n84), .ZN(flash_dat_o[0]) );
  IND2D1BWP12T30P140 U168 ( .A1(flash_ce), .B1(wb_we_i), .ZN(flash_we) );
endmodule

