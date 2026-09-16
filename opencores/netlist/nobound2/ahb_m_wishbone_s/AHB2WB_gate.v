/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 12:06:41 2026
/////////////////////////////////////////////////////////////


module AHB2WB ( HCLK, HRESETn, HADDR, HWDATA, HWRITE, HSEL, HTRANS, HSIZE, 
        HREADY, HRDATA, HRESP, HREADYOUT, wb_clk_o, wb_rst_o, wb_adr_o, 
        wb_dat_o, wb_sel_o, wb_we_o, wb_stb_o, wb_cyc_o, wb_dat_i, wb_ack_i );
  input [31:0] HADDR;
  input [31:0] HWDATA;
  input [1:0] HTRANS;
  input [2:0] HSIZE;
  output [31:0] HRDATA;
  output [31:0] wb_adr_o;
  output [31:0] wb_dat_o;
  output [3:0] wb_sel_o;
  input [31:0] wb_dat_i;
  input HCLK, HRESETn, HWRITE, HSEL, HREADY, wb_ack_i;
  output HRESP, HREADYOUT, wb_clk_o, wb_rst_o, wb_we_o, wb_stb_o, wb_cyc_o;
  wire   rHWRITE, rHTRANS_1_, rHSEL, r_wb_cyc_o, N6, n5, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n39, n41, n43,
         n45, n47, n49, n51, n53, n55, n57, n59, n61, n63, n65, n67, n69, n71,
         n73, n76, n77, n78, n80, n151;

  DFCNQD1BWP12T30P140 rHADDR_reg_31_ ( .D(n73), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[31]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_19_ ( .D(n49), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[19]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_18_ ( .D(n47), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[18]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_17_ ( .D(n45), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[17]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_16_ ( .D(n43), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[16]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_15_ ( .D(n41), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[15]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_14_ ( .D(n39), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[14]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_13_ ( .D(n37), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[13]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_12_ ( .D(n35), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[12]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_11_ ( .D(n33), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[11]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_10_ ( .D(n31), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[10]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_9_ ( .D(n29), .CP(HCLK), .CDN(n151), .Q(
        wb_adr_o[9]) );
  DFCNQD1BWP12T30P140 r_wb_cyc_o_reg ( .D(N6), .CP(wb_clk_o), .CDN(n151), .Q(
        r_wb_cyc_o) );
  DFCNQD1BWP12T30P140 rHADDR_reg_30_ ( .D(n71), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[30]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_29_ ( .D(n69), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[29]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_28_ ( .D(n67), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[28]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_27_ ( .D(n65), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[27]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_26_ ( .D(n63), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[26]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_25_ ( .D(n61), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[25]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_24_ ( .D(n59), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[24]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_23_ ( .D(n57), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[23]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_22_ ( .D(n55), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[22]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_21_ ( .D(n53), .CP(HCLK), .CDN(HRESETn), .Q(
        wb_adr_o[21]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_20_ ( .D(n51), .CP(wb_clk_o), .CDN(HRESETn), 
        .Q(wb_adr_o[20]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_8_ ( .D(n27), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[8]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_7_ ( .D(n25), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[7]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_6_ ( .D(n23), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[6]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_5_ ( .D(n21), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[5]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_4_ ( .D(n19), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[4]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_3_ ( .D(n17), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[3]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_2_ ( .D(n15), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[2]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_1_ ( .D(n13), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[1]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_0_ ( .D(n11), .CP(wb_clk_o), .CDN(n151), .Q(
        wb_adr_o[0]) );
  DFCNQD1BWP12T30P140 rHSEL_reg ( .D(n5), .CP(wb_clk_o), .CDN(HRESETn), .Q(
        rHSEL) );
  DFCNQD1BWP12T30P140 rHTRANS_reg_1_ ( .D(n7), .CP(wb_clk_o), .CDN(n151), .Q(
        rHTRANS_1_) );
  DFCNQD1BWP12T30P140 rHWRITE_reg ( .D(n9), .CP(wb_clk_o), .CDN(n151), .Q(
        rHWRITE) );
  TIEHBWP12T30P140 U45 ( .Z(n76) );
  INVD1BWP12T30P140 U46 ( .I(n76), .ZN(HRESP) );
  CKBD0BWP12T30P140 U47 ( .I(HREADY), .Z(n78) );
  CKND2D1BWP12T30P140 U48 ( .A1(rHSEL), .A2(rHTRANS_1_), .ZN(n80) );
  INVD0BWP12T30P140 U49 ( .I(n80), .ZN(wb_stb_o) );
  INVD0BWP12T30P140 U50 ( .I(wb_stb_o), .ZN(n77) );
  INVD0BWP12T30P140 U51 ( .I(n77), .ZN(wb_sel_o[0]) );
  INVD0BWP12T30P140 U52 ( .I(n77), .ZN(wb_sel_o[1]) );
  INVD0BWP12T30P140 U53 ( .I(n77), .ZN(wb_sel_o[2]) );
  INVD0BWP12T30P140 U54 ( .I(n77), .ZN(wb_sel_o[3]) );
  INVD0BWP12T30P140 U55 ( .I(n77), .ZN(wb_cyc_o) );
  CKBD0BWP12T30P140 U56 ( .I(HWDATA[0]), .Z(wb_dat_o[0]) );
  CKBD0BWP12T30P140 U57 ( .I(HWDATA[1]), .Z(wb_dat_o[1]) );
  CKBD0BWP12T30P140 U58 ( .I(HWDATA[2]), .Z(wb_dat_o[2]) );
  CKBD0BWP12T30P140 U59 ( .I(HWDATA[3]), .Z(wb_dat_o[3]) );
  CKBD0BWP12T30P140 U60 ( .I(HWDATA[4]), .Z(wb_dat_o[4]) );
  CKBD0BWP12T30P140 U61 ( .I(HWDATA[5]), .Z(wb_dat_o[5]) );
  CKBD0BWP12T30P140 U62 ( .I(HWDATA[6]), .Z(wb_dat_o[6]) );
  CKBD0BWP12T30P140 U63 ( .I(HWDATA[7]), .Z(wb_dat_o[7]) );
  CKBD0BWP12T30P140 U64 ( .I(HWDATA[8]), .Z(wb_dat_o[8]) );
  CKBD0BWP12T30P140 U65 ( .I(HWDATA[9]), .Z(wb_dat_o[9]) );
  CKBD0BWP12T30P140 U66 ( .I(HWDATA[10]), .Z(wb_dat_o[10]) );
  CKBD0BWP12T30P140 U67 ( .I(HWDATA[11]), .Z(wb_dat_o[11]) );
  CKBD0BWP12T30P140 U68 ( .I(HWDATA[12]), .Z(wb_dat_o[12]) );
  CKBD0BWP12T30P140 U69 ( .I(HWDATA[13]), .Z(wb_dat_o[13]) );
  CKBD0BWP12T30P140 U70 ( .I(HWDATA[14]), .Z(wb_dat_o[14]) );
  CKBD0BWP12T30P140 U71 ( .I(HWDATA[15]), .Z(wb_dat_o[15]) );
  CKBD0BWP12T30P140 U72 ( .I(HWDATA[16]), .Z(wb_dat_o[16]) );
  CKBD0BWP12T30P140 U73 ( .I(HWDATA[17]), .Z(wb_dat_o[17]) );
  CKBD0BWP12T30P140 U74 ( .I(HWDATA[18]), .Z(wb_dat_o[18]) );
  CKBD0BWP12T30P140 U75 ( .I(HWDATA[19]), .Z(wb_dat_o[19]) );
  CKBD0BWP12T30P140 U76 ( .I(HWDATA[20]), .Z(wb_dat_o[20]) );
  CKBD0BWP12T30P140 U77 ( .I(HWDATA[21]), .Z(wb_dat_o[21]) );
  CKBD0BWP12T30P140 U78 ( .I(HWDATA[22]), .Z(wb_dat_o[22]) );
  CKBD0BWP12T30P140 U79 ( .I(HWDATA[23]), .Z(wb_dat_o[23]) );
  CKBD0BWP12T30P140 U80 ( .I(HWDATA[24]), .Z(wb_dat_o[24]) );
  CKBD0BWP12T30P140 U81 ( .I(HWDATA[25]), .Z(wb_dat_o[25]) );
  CKBD0BWP12T30P140 U82 ( .I(HWDATA[26]), .Z(wb_dat_o[26]) );
  CKBD0BWP12T30P140 U83 ( .I(HWDATA[27]), .Z(wb_dat_o[27]) );
  CKBD0BWP12T30P140 U84 ( .I(HWDATA[28]), .Z(wb_dat_o[28]) );
  CKBD0BWP12T30P140 U85 ( .I(HWDATA[29]), .Z(wb_dat_o[29]) );
  CKBD0BWP12T30P140 U86 ( .I(HWDATA[30]), .Z(wb_dat_o[30]) );
  CKBD0BWP12T30P140 U87 ( .I(HWDATA[31]), .Z(wb_dat_o[31]) );
  CKBD0BWP12T30P140 U88 ( .I(wb_dat_i[0]), .Z(HRDATA[0]) );
  CKBD0BWP12T30P140 U89 ( .I(wb_dat_i[1]), .Z(HRDATA[1]) );
  CKBD0BWP12T30P140 U90 ( .I(wb_dat_i[2]), .Z(HRDATA[2]) );
  CKBD0BWP12T30P140 U91 ( .I(wb_dat_i[3]), .Z(HRDATA[3]) );
  CKBD0BWP12T30P140 U92 ( .I(wb_dat_i[4]), .Z(HRDATA[4]) );
  CKBD0BWP12T30P140 U93 ( .I(wb_dat_i[5]), .Z(HRDATA[5]) );
  CKBD0BWP12T30P140 U94 ( .I(wb_dat_i[6]), .Z(HRDATA[6]) );
  CKBD0BWP12T30P140 U95 ( .I(wb_dat_i[7]), .Z(HRDATA[7]) );
  CKBD0BWP12T30P140 U96 ( .I(wb_dat_i[8]), .Z(HRDATA[8]) );
  CKBD0BWP12T30P140 U97 ( .I(wb_dat_i[9]), .Z(HRDATA[9]) );
  CKBD0BWP12T30P140 U98 ( .I(wb_dat_i[10]), .Z(HRDATA[10]) );
  CKBD0BWP12T30P140 U99 ( .I(wb_dat_i[11]), .Z(HRDATA[11]) );
  CKBD0BWP12T30P140 U100 ( .I(wb_dat_i[12]), .Z(HRDATA[12]) );
  CKBD0BWP12T30P140 U101 ( .I(wb_dat_i[13]), .Z(HRDATA[13]) );
  CKBD0BWP12T30P140 U102 ( .I(wb_dat_i[14]), .Z(HRDATA[14]) );
  CKBD0BWP12T30P140 U103 ( .I(wb_dat_i[15]), .Z(HRDATA[15]) );
  CKBD0BWP12T30P140 U104 ( .I(wb_dat_i[16]), .Z(HRDATA[16]) );
  CKBD0BWP12T30P140 U105 ( .I(wb_dat_i[17]), .Z(HRDATA[17]) );
  CKBD0BWP12T30P140 U106 ( .I(wb_dat_i[18]), .Z(HRDATA[18]) );
  CKBD0BWP12T30P140 U107 ( .I(wb_dat_i[19]), .Z(HRDATA[19]) );
  CKBD0BWP12T30P140 U108 ( .I(wb_dat_i[20]), .Z(HRDATA[20]) );
  CKBD0BWP12T30P140 U109 ( .I(wb_dat_i[21]), .Z(HRDATA[21]) );
  CKBD0BWP12T30P140 U110 ( .I(wb_dat_i[22]), .Z(HRDATA[22]) );
  CKBD0BWP12T30P140 U111 ( .I(wb_dat_i[23]), .Z(HRDATA[23]) );
  CKBD0BWP12T30P140 U112 ( .I(wb_dat_i[24]), .Z(HRDATA[24]) );
  CKBD0BWP12T30P140 U113 ( .I(wb_dat_i[25]), .Z(HRDATA[25]) );
  CKBD0BWP12T30P140 U114 ( .I(wb_dat_i[26]), .Z(HRDATA[26]) );
  CKBD0BWP12T30P140 U115 ( .I(wb_dat_i[27]), .Z(HRDATA[27]) );
  CKBD0BWP12T30P140 U116 ( .I(wb_dat_i[28]), .Z(HRDATA[28]) );
  CKBD0BWP12T30P140 U117 ( .I(wb_dat_i[29]), .Z(HRDATA[29]) );
  CKBD0BWP12T30P140 U118 ( .I(wb_dat_i[30]), .Z(HRDATA[30]) );
  CKBD0BWP12T30P140 U119 ( .I(wb_dat_i[31]), .Z(HRDATA[31]) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(wb_adr_o[31]), .I1(HADDR[31]), .S(HREADY), 
        .Z(n73) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(wb_adr_o[19]), .I1(HADDR[19]), .S(HREADY), 
        .Z(n49) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(rHWRITE), .I1(HWRITE), .S(HREADY), .Z(n9) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(wb_adr_o[18]), .I1(HADDR[18]), .S(n78), .Z(
        n47) );
  CKMUX2D0BWP12T30P140 U124 ( .I0(wb_adr_o[17]), .I1(HADDR[17]), .S(n78), .Z(
        n45) );
  CKMUX2D0BWP12T30P140 U125 ( .I0(rHTRANS_1_), .I1(HTRANS[1]), .S(HREADY), .Z(
        n7) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(wb_adr_o[16]), .I1(HADDR[16]), .S(n78), .Z(
        n43) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(rHSEL), .I1(HSEL), .S(HREADY), .Z(n5) );
  CKMUX2D0BWP12T30P140 U128 ( .I0(wb_adr_o[15]), .I1(HADDR[15]), .S(n78), .Z(
        n41) );
  CKMUX2D0BWP12T30P140 U129 ( .I0(wb_adr_o[14]), .I1(HADDR[14]), .S(n78), .Z(
        n39) );
  CKMUX2D0BWP12T30P140 U130 ( .I0(wb_adr_o[0]), .I1(HADDR[0]), .S(HREADY), .Z(
        n11) );
  CKMUX2D0BWP12T30P140 U131 ( .I0(wb_adr_o[13]), .I1(HADDR[13]), .S(n78), .Z(
        n37) );
  CKMUX2D0BWP12T30P140 U132 ( .I0(wb_adr_o[12]), .I1(HADDR[12]), .S(n78), .Z(
        n35) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(wb_adr_o[1]), .I1(HADDR[1]), .S(HREADY), .Z(
        n13) );
  CKMUX2D0BWP12T30P140 U134 ( .I0(wb_adr_o[11]), .I1(HADDR[11]), .S(n78), .Z(
        n33) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(wb_adr_o[10]), .I1(HADDR[10]), .S(n78), .Z(
        n31) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(wb_adr_o[2]), .I1(HADDR[2]), .S(HREADY), .Z(
        n15) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(wb_adr_o[9]), .I1(HADDR[9]), .S(n78), .Z(n29) );
  AN2D0BWP12T30P140 U138 ( .A1(wb_ack_i), .A2(r_wb_cyc_o), .Z(HREADYOUT) );
  NR2D0BWP12T30P140 U139 ( .A1(HREADYOUT), .A2(n80), .ZN(N6) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(wb_adr_o[3]), .I1(HADDR[3]), .S(HREADY), .Z(
        n17) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(wb_adr_o[6]), .I1(HADDR[6]), .S(n78), .Z(n23) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(wb_adr_o[30]), .I1(HADDR[30]), .S(HREADY), 
        .Z(n71) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(wb_adr_o[4]), .I1(HADDR[4]), .S(HREADY), .Z(
        n19) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(wb_adr_o[23]), .I1(HADDR[23]), .S(HREADY), 
        .Z(n57) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(wb_adr_o[29]), .I1(HADDR[29]), .S(n78), .Z(
        n69) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(wb_adr_o[5]), .I1(HADDR[5]), .S(HREADY), .Z(
        n21) );
  CKMUX2D0BWP12T30P140 U147 ( .I0(wb_adr_o[8]), .I1(HADDR[8]), .S(n78), .Z(n27) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(wb_adr_o[28]), .I1(HADDR[28]), .S(HREADY), 
        .Z(n67) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(wb_adr_o[20]), .I1(HADDR[20]), .S(n78), .Z(
        n51) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(wb_adr_o[25]), .I1(HADDR[25]), .S(HREADY), 
        .Z(n61) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(wb_adr_o[27]), .I1(HADDR[27]), .S(n78), .Z(
        n65) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(wb_adr_o[7]), .I1(HADDR[7]), .S(n78), .Z(n25) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(wb_adr_o[22]), .I1(HADDR[22]), .S(HREADY), 
        .Z(n55) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(wb_adr_o[26]), .I1(HADDR[26]), .S(n78), .Z(
        n63) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(wb_adr_o[21]), .I1(HADDR[21]), .S(HREADY), 
        .Z(n53) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(wb_adr_o[24]), .I1(HADDR[24]), .S(n78), .Z(
        n59) );
  BUFFD1BWP12T30P140 U157 ( .I(HCLK), .Z(wb_clk_o) );
  INVD0BWP12T30P140 U158 ( .I(HRESETn), .ZN(wb_rst_o) );
  INVD0BWP12T30P140 U159 ( .I(wb_rst_o), .ZN(n151) );
  INR2D1BWP12T30P140 U160 ( .A1(rHWRITE), .B1(n80), .ZN(wb_we_o) );
endmodule

