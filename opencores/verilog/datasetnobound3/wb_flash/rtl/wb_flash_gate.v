/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 15:53:03 2026
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
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73;
  wire   [3:0] waitstate;

  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_7_ ( .D(flash_dat_i[7]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[15]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_6_ ( .D(flash_dat_i[6]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[14]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_5_ ( .D(flash_dat_i[5]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[13]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_4_ ( .D(flash_dat_i[4]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[12]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_3_ ( .D(flash_dat_i[3]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[11]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_2_ ( .D(flash_dat_i[2]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[10]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_1_ ( .D(flash_dat_i[1]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[9]) );
  DFSNQD1BWP12T30P140 flash_dat_i_pipe_reg_0_ ( .D(flash_dat_i[0]), .CP(clk_i), 
        .SDN(nrst_i), .Q(wb_dat_o[8]) );
  DFCNQD1BWP12T30P140 wb_ack_o_reg ( .D(n30), .CP(clk_i), .CDN(nrst_i), .Q(
        wb_ack_o) );
  DFCNQD1BWP12T30P140 waitstate_reg_2_ ( .D(n32), .CP(clk_i), .CDN(nrst_i), 
        .Q(waitstate[2]) );
  DFCNQD1BWP12T30P140 waitstate_reg_1_ ( .D(n31), .CP(clk_i), .CDN(nrst_i), 
        .Q(waitstate[1]) );
  DFCNQD1BWP12T30P140 waitstate_reg_3_ ( .D(n33), .CP(clk_i), .CDN(nrst_i), 
        .Q(waitstate[3]) );
  DFCNQD1BWP12T30P140 waitstate_reg_0_ ( .D(n34), .CP(clk_i), .CDN(nrst_i), 
        .Q(waitstate[0]) );
  CKBD0BWP12T30P140 U50 ( .I(wb_adr_i[2]), .Z(flash_adr_o[2]) );
  CKBD0BWP12T30P140 U51 ( .I(wb_adr_i[3]), .Z(flash_adr_o[3]) );
  CKBD0BWP12T30P140 U52 ( .I(wb_adr_i[4]), .Z(flash_adr_o[4]) );
  CKBD0BWP12T30P140 U53 ( .I(wb_adr_i[5]), .Z(flash_adr_o[5]) );
  CKBD0BWP12T30P140 U54 ( .I(wb_adr_i[6]), .Z(flash_adr_o[6]) );
  CKBD0BWP12T30P140 U55 ( .I(wb_adr_i[7]), .Z(flash_adr_o[7]) );
  CKBD0BWP12T30P140 U56 ( .I(wb_adr_i[8]), .Z(flash_adr_o[8]) );
  CKBD0BWP12T30P140 U57 ( .I(wb_adr_i[9]), .Z(flash_adr_o[9]) );
  CKBD0BWP12T30P140 U58 ( .I(wb_adr_i[10]), .Z(flash_adr_o[10]) );
  CKBD0BWP12T30P140 U59 ( .I(wb_adr_i[11]), .Z(flash_adr_o[11]) );
  CKBD0BWP12T30P140 U60 ( .I(wb_adr_i[12]), .Z(flash_adr_o[12]) );
  CKBD0BWP12T30P140 U61 ( .I(wb_adr_i[13]), .Z(flash_adr_o[13]) );
  CKBD0BWP12T30P140 U62 ( .I(wb_adr_i[14]), .Z(flash_adr_o[14]) );
  CKBD0BWP12T30P140 U63 ( .I(wb_adr_i[15]), .Z(flash_adr_o[15]) );
  CKBD0BWP12T30P140 U64 ( .I(wb_adr_i[16]), .Z(flash_adr_o[16]) );
  CKBD0BWP12T30P140 U65 ( .I(wb_adr_i[17]), .Z(flash_adr_o[17]) );
  CKBD0BWP12T30P140 U66 ( .I(wb_adr_i[18]), .Z(flash_adr_o[18]) );
  INVD0BWP12T30P140 U67 ( .I(wb_dat_o[8]), .ZN(n35) );
  INVD0BWP12T30P140 U68 ( .I(n35), .ZN(wb_dat_o[16]) );
  INVD0BWP12T30P140 U69 ( .I(n35), .ZN(wb_dat_o[24]) );
  INVD0BWP12T30P140 U70 ( .I(n35), .ZN(wb_dat_o[0]) );
  INVD0BWP12T30P140 U71 ( .I(wb_dat_o[9]), .ZN(n36) );
  INVD0BWP12T30P140 U72 ( .I(n36), .ZN(wb_dat_o[17]) );
  INVD0BWP12T30P140 U73 ( .I(n36), .ZN(wb_dat_o[25]) );
  INVD0BWP12T30P140 U74 ( .I(n36), .ZN(wb_dat_o[1]) );
  INVD0BWP12T30P140 U75 ( .I(wb_dat_o[10]), .ZN(n37) );
  INVD0BWP12T30P140 U76 ( .I(n37), .ZN(wb_dat_o[18]) );
  INVD0BWP12T30P140 U77 ( .I(n37), .ZN(wb_dat_o[26]) );
  INVD0BWP12T30P140 U78 ( .I(n37), .ZN(wb_dat_o[2]) );
  INVD0BWP12T30P140 U79 ( .I(wb_dat_o[11]), .ZN(n38) );
  INVD0BWP12T30P140 U80 ( .I(n38), .ZN(wb_dat_o[19]) );
  INVD0BWP12T30P140 U81 ( .I(n38), .ZN(wb_dat_o[27]) );
  INVD0BWP12T30P140 U82 ( .I(n38), .ZN(wb_dat_o[3]) );
  INVD0BWP12T30P140 U83 ( .I(wb_dat_o[12]), .ZN(n39) );
  INVD0BWP12T30P140 U84 ( .I(n39), .ZN(wb_dat_o[20]) );
  INVD0BWP12T30P140 U85 ( .I(n39), .ZN(wb_dat_o[28]) );
  INVD0BWP12T30P140 U86 ( .I(n39), .ZN(wb_dat_o[4]) );
  INVD0BWP12T30P140 U87 ( .I(wb_dat_o[13]), .ZN(n40) );
  INVD0BWP12T30P140 U88 ( .I(n40), .ZN(wb_dat_o[21]) );
  INVD0BWP12T30P140 U89 ( .I(n40), .ZN(wb_dat_o[29]) );
  INVD0BWP12T30P140 U90 ( .I(n40), .ZN(wb_dat_o[5]) );
  INVD0BWP12T30P140 U91 ( .I(wb_dat_o[14]), .ZN(n41) );
  INVD0BWP12T30P140 U92 ( .I(n41), .ZN(wb_dat_o[22]) );
  INVD0BWP12T30P140 U93 ( .I(n41), .ZN(wb_dat_o[30]) );
  INVD0BWP12T30P140 U94 ( .I(n41), .ZN(wb_dat_o[6]) );
  INVD0BWP12T30P140 U95 ( .I(wb_dat_o[15]), .ZN(n42) );
  INVD0BWP12T30P140 U96 ( .I(n42), .ZN(wb_dat_o[23]) );
  INVD0BWP12T30P140 U97 ( .I(n42), .ZN(wb_dat_o[31]) );
  INVD0BWP12T30P140 U98 ( .I(n42), .ZN(wb_dat_o[7]) );
  CKND2D1BWP12T30P140 U99 ( .A1(wb_cyc_i), .A2(wb_stb_i), .ZN(flash_ce) );
  NR4D0BWP12T30P140 U100 ( .A1(waitstate[1]), .A2(waitstate[0]), .A3(
        waitstate[2]), .A4(waitstate[3]), .ZN(n46) );
  AOI21D0BWP12T30P140 U101 ( .A1(n46), .A2(flash_ce), .B(waitstate[0]), .ZN(
        n34) );
  INVD0BWP12T30P140 U102 ( .I(waitstate[2]), .ZN(n45) );
  ND2D0BWP12T30P140 U103 ( .A1(waitstate[1]), .A2(waitstate[0]), .ZN(n44) );
  NR2D0BWP12T30P140 U104 ( .A1(n45), .A2(n44), .ZN(n43) );
  ND2D0BWP12T30P140 U105 ( .A1(waitstate[3]), .A2(n43), .ZN(n47) );
  OA21D0BWP12T30P140 U106 ( .A1(waitstate[3]), .A2(n43), .B(n47), .Z(n33) );
  OA21D0BWP12T30P140 U107 ( .A1(waitstate[1]), .A2(waitstate[0]), .B(n44), .Z(
        n31) );
  AOI21D0BWP12T30P140 U108 ( .A1(n45), .A2(n44), .B(n43), .ZN(n32) );
  INVD0BWP12T30P140 U109 ( .I(wb_ack_o), .ZN(n48) );
  AOI21D0BWP12T30P140 U110 ( .A1(n48), .A2(n47), .B(n46), .ZN(n30) );
  NR3D0BWP12T30P140 U111 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[3]), .A3(wb_sel_i[1]), .ZN(n49) );
  CKND2D1BWP12T30P140 U112 ( .A1(wb_sel_i[2]), .A2(n49), .ZN(n52) );
  INVD0BWP12T30P140 U113 ( .I(wb_sel_i[1]), .ZN(n51) );
  NR2D0BWP12T30P140 U114 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[2]), .ZN(n50) );
  ND3D0BWP12T30P140 U115 ( .A1(n51), .A2(n50), .A3(wb_sel_i[3]), .ZN(n72) );
  CKND2D1BWP12T30P140 U116 ( .A1(n52), .A2(n72), .ZN(flash_adr_o[1]) );
  OR2D0BWP12T30P140 U117 ( .A1(wb_we_i), .A2(flash_ce), .Z(flash_oe) );
  NR4D0BWP12T30P140 U118 ( .A1(wb_sel_i[0]), .A2(wb_sel_i[3]), .A3(wb_sel_i[2]), .A4(n51), .ZN(n73) );
  NR2D0BWP12T30P140 U119 ( .A1(n73), .A2(flash_adr_o[1]), .ZN(n67) );
  AOI22D0BWP12T30P140 U120 ( .A1(n73), .A2(wb_dat_i[15]), .B1(n67), .B2(
        wb_dat_i[7]), .ZN(n54) );
  INVD0BWP12T30P140 U121 ( .I(n52), .ZN(n69) );
  INVD0BWP12T30P140 U122 ( .I(n72), .ZN(n68) );
  AOI22D0BWP12T30P140 U123 ( .A1(n69), .A2(wb_dat_i[23]), .B1(n68), .B2(
        wb_dat_i[31]), .ZN(n53) );
  ND2D0BWP12T30P140 U124 ( .A1(n54), .A2(n53), .ZN(flash_dat_o[7]) );
  AOI22D0BWP12T30P140 U125 ( .A1(n73), .A2(wb_dat_i[14]), .B1(n67), .B2(
        wb_dat_i[6]), .ZN(n56) );
  AOI22D0BWP12T30P140 U126 ( .A1(n69), .A2(wb_dat_i[22]), .B1(n68), .B2(
        wb_dat_i[30]), .ZN(n55) );
  ND2D0BWP12T30P140 U127 ( .A1(n56), .A2(n55), .ZN(flash_dat_o[6]) );
  AOI22D0BWP12T30P140 U128 ( .A1(n73), .A2(wb_dat_i[13]), .B1(n67), .B2(
        wb_dat_i[5]), .ZN(n58) );
  AOI22D0BWP12T30P140 U129 ( .A1(n69), .A2(wb_dat_i[21]), .B1(n68), .B2(
        wb_dat_i[29]), .ZN(n57) );
  ND2D0BWP12T30P140 U130 ( .A1(n58), .A2(n57), .ZN(flash_dat_o[5]) );
  AOI22D0BWP12T30P140 U131 ( .A1(n73), .A2(wb_dat_i[12]), .B1(n67), .B2(
        wb_dat_i[4]), .ZN(n60) );
  AOI22D0BWP12T30P140 U132 ( .A1(n69), .A2(wb_dat_i[20]), .B1(n68), .B2(
        wb_dat_i[28]), .ZN(n59) );
  ND2D0BWP12T30P140 U133 ( .A1(n60), .A2(n59), .ZN(flash_dat_o[4]) );
  AOI22D0BWP12T30P140 U134 ( .A1(n73), .A2(wb_dat_i[11]), .B1(n67), .B2(
        wb_dat_i[3]), .ZN(n62) );
  AOI22D0BWP12T30P140 U135 ( .A1(n69), .A2(wb_dat_i[19]), .B1(n68), .B2(
        wb_dat_i[27]), .ZN(n61) );
  ND2D0BWP12T30P140 U136 ( .A1(n62), .A2(n61), .ZN(flash_dat_o[3]) );
  AOI22D0BWP12T30P140 U137 ( .A1(n73), .A2(wb_dat_i[10]), .B1(n67), .B2(
        wb_dat_i[2]), .ZN(n64) );
  AOI22D0BWP12T30P140 U138 ( .A1(n69), .A2(wb_dat_i[18]), .B1(n68), .B2(
        wb_dat_i[26]), .ZN(n63) );
  ND2D0BWP12T30P140 U139 ( .A1(n64), .A2(n63), .ZN(flash_dat_o[2]) );
  AOI22D0BWP12T30P140 U140 ( .A1(n73), .A2(wb_dat_i[9]), .B1(n67), .B2(
        wb_dat_i[1]), .ZN(n66) );
  AOI22D0BWP12T30P140 U141 ( .A1(n69), .A2(wb_dat_i[17]), .B1(n68), .B2(
        wb_dat_i[25]), .ZN(n65) );
  ND2D0BWP12T30P140 U142 ( .A1(n66), .A2(n65), .ZN(flash_dat_o[1]) );
  AOI22D0BWP12T30P140 U143 ( .A1(n73), .A2(wb_dat_i[8]), .B1(n67), .B2(
        wb_dat_i[0]), .ZN(n71) );
  AOI22D0BWP12T30P140 U144 ( .A1(n69), .A2(wb_dat_i[16]), .B1(n68), .B2(
        wb_dat_i[24]), .ZN(n70) );
  ND2D0BWP12T30P140 U145 ( .A1(n71), .A2(n70), .ZN(flash_dat_o[0]) );
  IND2D1BWP12T30P140 U146 ( .A1(flash_ce), .B1(wb_we_i), .ZN(flash_we) );
  IND2D1BWP12T30P140 U147 ( .A1(n73), .B1(n72), .ZN(flash_adr_o[0]) );
endmodule

