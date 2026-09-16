/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:34:00 2026
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
  wire   rHWRITE, rHTRANS_1_, rHSEL, r_wb_cyc_o, N7, master_wants_write,
         wb_stb_o_int, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n39, n40, n41, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88;
  wire   [31:0] rHADDR;

  DFCNQD1BWP12T30P140 wb_dat_o_reg_0_ ( .D(HWDATA[0]), .CP(HCLK), .CDN(HRESETn), .Q(wb_dat_o[0]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_2_ ( .D(rHADDR[2]), .CP(HCLK), .CDN(n79), 
        .Q(wb_adr_o[2]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_1_ ( .D(rHADDR[1]), .CP(HCLK), .CDN(n79), 
        .Q(wb_adr_o[1]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_0_ ( .D(rHADDR[0]), .CP(HCLK), .CDN(n79), 
        .Q(wb_adr_o[0]) );
  DFCNQD1BWP12T30P140 r_wb_cyc_o_reg ( .D(N7), .CP(HCLK), .CDN(n79), .Q(
        r_wb_cyc_o) );
  DFCNQD1BWP12T30P140 wb_cyc_o_reg ( .D(wb_stb_o_int), .CP(HCLK), .CDN(n79), 
        .Q(wb_stb_o) );
  DFCNQD1BWP12T30P140 wb_we_o_reg ( .D(master_wants_write), .CP(n88), .CDN(
        HRESETn), .Q(wb_we_o) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_31_ ( .D(HWDATA[31]), .CP(n84), .CDN(
        HRESETn), .Q(wb_dat_o[31]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_30_ ( .D(HWDATA[30]), .CP(n84), .CDN(n79), 
        .Q(wb_dat_o[30]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_29_ ( .D(HWDATA[29]), .CP(n84), .CDN(n80), 
        .Q(wb_dat_o[29]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_28_ ( .D(HWDATA[28]), .CP(n84), .CDN(n83), 
        .Q(wb_dat_o[28]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_27_ ( .D(HWDATA[27]), .CP(n84), .CDN(n81), 
        .Q(wb_dat_o[27]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_26_ ( .D(HWDATA[26]), .CP(n84), .CDN(n82), 
        .Q(wb_dat_o[26]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_25_ ( .D(HWDATA[25]), .CP(n84), .CDN(
        HRESETn), .Q(wb_dat_o[25]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_24_ ( .D(HWDATA[24]), .CP(n84), .CDN(n79), 
        .Q(wb_dat_o[24]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_23_ ( .D(HWDATA[23]), .CP(n84), .CDN(n80), 
        .Q(wb_dat_o[23]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_22_ ( .D(HWDATA[22]), .CP(n84), .CDN(n83), 
        .Q(wb_dat_o[22]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_21_ ( .D(HWDATA[21]), .CP(n84), .CDN(n81), 
        .Q(wb_dat_o[21]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_20_ ( .D(HWDATA[20]), .CP(n84), .CDN(n82), 
        .Q(wb_dat_o[20]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_19_ ( .D(HWDATA[19]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[19]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_18_ ( .D(HWDATA[18]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[18]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_17_ ( .D(HWDATA[17]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[17]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_16_ ( .D(HWDATA[16]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[16]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_15_ ( .D(HWDATA[15]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[15]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_14_ ( .D(HWDATA[14]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[14]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_13_ ( .D(HWDATA[13]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[13]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_12_ ( .D(HWDATA[12]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[12]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_11_ ( .D(HWDATA[11]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[11]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_10_ ( .D(HWDATA[10]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[10]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_9_ ( .D(HWDATA[9]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[9]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_8_ ( .D(HWDATA[8]), .CP(n85), .CDN(n82), 
        .Q(wb_dat_o[8]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_7_ ( .D(HWDATA[7]), .CP(n86), .CDN(n82), 
        .Q(wb_dat_o[7]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_6_ ( .D(HWDATA[6]), .CP(n86), .CDN(n82), 
        .Q(wb_dat_o[6]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_5_ ( .D(HWDATA[5]), .CP(n86), .CDN(n81), 
        .Q(wb_dat_o[5]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_4_ ( .D(HWDATA[4]), .CP(n86), .CDN(n81), 
        .Q(wb_dat_o[4]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_3_ ( .D(HWDATA[3]), .CP(n86), .CDN(n81), 
        .Q(wb_dat_o[3]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_2_ ( .D(HWDATA[2]), .CP(n86), .CDN(n81), 
        .Q(wb_dat_o[2]) );
  DFCNQD1BWP12T30P140 wb_dat_o_reg_1_ ( .D(HWDATA[1]), .CP(n86), .CDN(n81), 
        .Q(wb_dat_o[1]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_31_ ( .D(rHADDR[31]), .CP(n86), .CDN(n81), 
        .Q(wb_adr_o[31]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_30_ ( .D(rHADDR[30]), .CP(n86), .CDN(n81), 
        .Q(wb_adr_o[30]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_29_ ( .D(rHADDR[29]), .CP(n86), .CDN(n81), 
        .Q(wb_adr_o[29]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_28_ ( .D(rHADDR[28]), .CP(n86), .CDN(n81), 
        .Q(wb_adr_o[28]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_27_ ( .D(rHADDR[27]), .CP(n86), .CDN(n81), 
        .Q(wb_adr_o[27]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_26_ ( .D(rHADDR[26]), .CP(n87), .CDN(n81), 
        .Q(wb_adr_o[26]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_25_ ( .D(rHADDR[25]), .CP(n87), .CDN(n81), 
        .Q(wb_adr_o[25]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_24_ ( .D(rHADDR[24]), .CP(n87), .CDN(n81), 
        .Q(wb_adr_o[24]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_23_ ( .D(rHADDR[23]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[23]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_22_ ( .D(rHADDR[22]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[22]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_21_ ( .D(rHADDR[21]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[21]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_20_ ( .D(rHADDR[20]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[20]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_19_ ( .D(rHADDR[19]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[19]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_18_ ( .D(rHADDR[18]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[18]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_17_ ( .D(rHADDR[17]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[17]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_16_ ( .D(rHADDR[16]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[16]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_15_ ( .D(rHADDR[15]), .CP(n87), .CDN(n80), 
        .Q(wb_adr_o[15]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_14_ ( .D(rHADDR[14]), .CP(n88), .CDN(n80), 
        .Q(wb_adr_o[14]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_13_ ( .D(rHADDR[13]), .CP(n88), .CDN(n80), 
        .Q(wb_adr_o[13]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_12_ ( .D(rHADDR[12]), .CP(n88), .CDN(n80), 
        .Q(wb_adr_o[12]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_11_ ( .D(rHADDR[11]), .CP(n88), .CDN(n80), 
        .Q(wb_adr_o[11]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_10_ ( .D(rHADDR[10]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[10]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_9_ ( .D(rHADDR[9]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[9]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_8_ ( .D(rHADDR[8]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[8]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_7_ ( .D(rHADDR[7]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[7]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_6_ ( .D(rHADDR[6]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[6]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_5_ ( .D(rHADDR[5]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[5]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_4_ ( .D(rHADDR[4]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[4]) );
  DFCNQD1BWP12T30P140 wb_adr_o_reg_3_ ( .D(rHADDR[3]), .CP(n88), .CDN(n79), 
        .Q(wb_adr_o[3]) );
  DFCNQD1BWP12T30P140 rHWRITE_reg ( .D(n36), .CP(n85), .CDN(HRESETn), .Q(
        rHWRITE) );
  DFCNQD1BWP12T30P140 rHTRANS_reg_1_ ( .D(n34), .CP(n86), .CDN(HRESETn), .Q(
        rHTRANS_1_) );
  DFCNQD1BWP12T30P140 rHSEL_reg ( .D(n35), .CP(n84), .CDN(HRESETn), .Q(rHSEL)
         );
  DFCNQD1BWP12T30P140 rHADDR_reg_31_ ( .D(n33), .CP(n87), .CDN(HRESETn), .Q(
        rHADDR[31]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_30_ ( .D(n32), .CP(HCLK), .CDN(HRESETn), .Q(
        rHADDR[30]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_29_ ( .D(n31), .CP(n88), .CDN(HRESETn), .Q(
        rHADDR[29]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_28_ ( .D(n30), .CP(n85), .CDN(HRESETn), .Q(
        rHADDR[28]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_27_ ( .D(n29), .CP(n86), .CDN(HRESETn), .Q(
        rHADDR[27]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_26_ ( .D(n28), .CP(n84), .CDN(HRESETn), .Q(
        rHADDR[26]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_25_ ( .D(n27), .CP(n87), .CDN(HRESETn), .Q(
        rHADDR[25]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_24_ ( .D(n26), .CP(HCLK), .CDN(n83), .Q(
        rHADDR[24]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_23_ ( .D(n25), .CP(HCLK), .CDN(n83), .Q(
        rHADDR[23]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_22_ ( .D(n24), .CP(n88), .CDN(n83), .Q(
        rHADDR[22]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_21_ ( .D(n23), .CP(n85), .CDN(n83), .Q(
        rHADDR[21]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_20_ ( .D(n22), .CP(n86), .CDN(n83), .Q(
        rHADDR[20]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_19_ ( .D(n21), .CP(n84), .CDN(n83), .Q(
        rHADDR[19]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_18_ ( .D(n20), .CP(n87), .CDN(n83), .Q(
        rHADDR[18]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_17_ ( .D(n19), .CP(HCLK), .CDN(n83), .Q(
        rHADDR[17]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_16_ ( .D(n18), .CP(n88), .CDN(n83), .Q(
        rHADDR[16]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_15_ ( .D(n17), .CP(n85), .CDN(n83), .Q(
        rHADDR[15]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_14_ ( .D(n16), .CP(n86), .CDN(n83), .Q(
        rHADDR[14]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_13_ ( .D(n15), .CP(n84), .CDN(n83), .Q(
        rHADDR[13]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_12_ ( .D(n14), .CP(n87), .CDN(n83), .Q(
        rHADDR[12]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_11_ ( .D(n13), .CP(n88), .CDN(n81), .Q(
        rHADDR[11]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_10_ ( .D(n12), .CP(n85), .CDN(n79), .Q(
        rHADDR[10]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_9_ ( .D(n11), .CP(n86), .CDN(n80), .Q(
        rHADDR[9]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_8_ ( .D(n10), .CP(n84), .CDN(n83), .Q(
        rHADDR[8]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_7_ ( .D(n9), .CP(n87), .CDN(n81), .Q(
        rHADDR[7]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_6_ ( .D(n8), .CP(n84), .CDN(n82), .Q(
        rHADDR[6]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_5_ ( .D(n7), .CP(n87), .CDN(n83), .Q(
        rHADDR[5]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_4_ ( .D(n6), .CP(n88), .CDN(n79), .Q(
        rHADDR[4]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_3_ ( .D(n5), .CP(n85), .CDN(n80), .Q(
        rHADDR[3]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_2_ ( .D(n4), .CP(n86), .CDN(n83), .Q(
        rHADDR[2]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_1_ ( .D(n3), .CP(n84), .CDN(n81), .Q(
        rHADDR[1]) );
  DFCNQD1BWP12T30P140 rHADDR_reg_0_ ( .D(n2), .CP(n87), .CDN(n82), .Q(
        rHADDR[0]) );
  TIEHBWP12T30P140 U44 ( .Z(n39) );
  INVD0BWP12T30P140 U45 ( .I(n39), .ZN(wb_rst_o) );
  INVD0BWP12T30P140 U46 ( .I(n39), .ZN(HRESP) );
  CKBD0BWP12T30P140 U47 ( .I(HREADY), .Z(n41) );
  INVD0BWP12T30P140 U48 ( .I(wb_stb_o), .ZN(n40) );
  INVD0BWP12T30P140 U49 ( .I(n40), .ZN(wb_sel_o[0]) );
  INVD0BWP12T30P140 U50 ( .I(n40), .ZN(wb_sel_o[1]) );
  INVD0BWP12T30P140 U51 ( .I(n40), .ZN(wb_sel_o[2]) );
  INVD0BWP12T30P140 U52 ( .I(n40), .ZN(wb_sel_o[3]) );
  INVD0BWP12T30P140 U53 ( .I(n40), .ZN(wb_cyc_o) );
  CKBD0BWP12T30P140 U54 ( .I(wb_dat_i[0]), .Z(HRDATA[0]) );
  CKBD0BWP12T30P140 U55 ( .I(wb_dat_i[1]), .Z(HRDATA[1]) );
  CKBD0BWP12T30P140 U56 ( .I(wb_dat_i[2]), .Z(HRDATA[2]) );
  CKBD0BWP12T30P140 U57 ( .I(wb_dat_i[3]), .Z(HRDATA[3]) );
  CKBD0BWP12T30P140 U58 ( .I(wb_dat_i[4]), .Z(HRDATA[4]) );
  CKBD0BWP12T30P140 U59 ( .I(wb_dat_i[5]), .Z(HRDATA[5]) );
  CKBD0BWP12T30P140 U60 ( .I(wb_dat_i[6]), .Z(HRDATA[6]) );
  CKBD0BWP12T30P140 U61 ( .I(wb_dat_i[7]), .Z(HRDATA[7]) );
  CKBD0BWP12T30P140 U62 ( .I(wb_dat_i[8]), .Z(HRDATA[8]) );
  CKBD0BWP12T30P140 U63 ( .I(wb_dat_i[9]), .Z(HRDATA[9]) );
  CKBD0BWP12T30P140 U64 ( .I(wb_dat_i[10]), .Z(HRDATA[10]) );
  CKBD0BWP12T30P140 U65 ( .I(wb_dat_i[11]), .Z(HRDATA[11]) );
  CKBD0BWP12T30P140 U66 ( .I(wb_dat_i[12]), .Z(HRDATA[12]) );
  CKBD0BWP12T30P140 U67 ( .I(wb_dat_i[13]), .Z(HRDATA[13]) );
  CKBD0BWP12T30P140 U68 ( .I(wb_dat_i[14]), .Z(HRDATA[14]) );
  CKBD0BWP12T30P140 U69 ( .I(wb_dat_i[15]), .Z(HRDATA[15]) );
  CKBD0BWP12T30P140 U70 ( .I(wb_dat_i[16]), .Z(HRDATA[16]) );
  CKBD0BWP12T30P140 U71 ( .I(wb_dat_i[17]), .Z(HRDATA[17]) );
  CKBD0BWP12T30P140 U72 ( .I(wb_dat_i[18]), .Z(HRDATA[18]) );
  CKBD0BWP12T30P140 U73 ( .I(wb_dat_i[19]), .Z(HRDATA[19]) );
  CKBD0BWP12T30P140 U74 ( .I(wb_dat_i[20]), .Z(HRDATA[20]) );
  CKBD0BWP12T30P140 U75 ( .I(wb_dat_i[21]), .Z(HRDATA[21]) );
  CKBD0BWP12T30P140 U76 ( .I(wb_dat_i[22]), .Z(HRDATA[22]) );
  CKBD0BWP12T30P140 U77 ( .I(wb_dat_i[23]), .Z(HRDATA[23]) );
  CKBD0BWP12T30P140 U78 ( .I(wb_dat_i[24]), .Z(HRDATA[24]) );
  CKBD0BWP12T30P140 U79 ( .I(wb_dat_i[25]), .Z(HRDATA[25]) );
  CKBD0BWP12T30P140 U80 ( .I(wb_dat_i[26]), .Z(HRDATA[26]) );
  CKBD0BWP12T30P140 U81 ( .I(wb_dat_i[27]), .Z(HRDATA[27]) );
  CKBD0BWP12T30P140 U82 ( .I(wb_dat_i[28]), .Z(HRDATA[28]) );
  CKBD0BWP12T30P140 U83 ( .I(wb_dat_i[29]), .Z(HRDATA[29]) );
  CKBD0BWP12T30P140 U84 ( .I(wb_dat_i[30]), .Z(HRDATA[30]) );
  CKBD0BWP12T30P140 U85 ( .I(wb_dat_i[31]), .Z(HRDATA[31]) );
  CKMUX2D0BWP12T30P140 U86 ( .I0(rHADDR[0]), .I1(HADDR[0]), .S(HREADY), .Z(n2)
         );
  AN2D0BWP12T30P140 U87 ( .A1(rHTRANS_1_), .A2(rHSEL), .Z(wb_stb_o_int) );
  AN2D0BWP12T30P140 U88 ( .A1(rHWRITE), .A2(wb_stb_o_int), .Z(
        master_wants_write) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(rHADDR[15]), .I1(HADDR[15]), .S(n41), .Z(n17)
         );
  CKMUX2D0BWP12T30P140 U90 ( .I0(rHADDR[1]), .I1(HADDR[1]), .S(HREADY), .Z(n3)
         );
  CKMUX2D0BWP12T30P140 U91 ( .I0(rHTRANS_1_), .I1(HTRANS[1]), .S(HREADY), .Z(
        n34) );
  CKMUX2D0BWP12T30P140 U92 ( .I0(rHADDR[16]), .I1(HADDR[16]), .S(n41), .Z(n18)
         );
  CKMUX2D0BWP12T30P140 U93 ( .I0(rHADDR[2]), .I1(HADDR[2]), .S(HREADY), .Z(n4)
         );
  CKMUX2D0BWP12T30P140 U94 ( .I0(rHADDR[23]), .I1(HADDR[23]), .S(HREADY), .Z(
        n25) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(rHADDR[17]), .I1(HADDR[17]), .S(n41), .Z(n19)
         );
  CKMUX2D0BWP12T30P140 U96 ( .I0(rHADDR[3]), .I1(HADDR[3]), .S(HREADY), .Z(n5)
         );
  CKMUX2D0BWP12T30P140 U97 ( .I0(rHADDR[24]), .I1(HADDR[24]), .S(HREADY), .Z(
        n26) );
  CKMUX2D0BWP12T30P140 U98 ( .I0(rHADDR[18]), .I1(HADDR[18]), .S(n41), .Z(n20)
         );
  CKMUX2D0BWP12T30P140 U99 ( .I0(rHADDR[4]), .I1(HADDR[4]), .S(HREADY), .Z(n6)
         );
  CKMUX2D0BWP12T30P140 U100 ( .I0(rHADDR[7]), .I1(HADDR[7]), .S(HREADY), .Z(n9) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(rHADDR[19]), .I1(HADDR[19]), .S(n41), .Z(n21) );
  CKMUX2D0BWP12T30P140 U102 ( .I0(rHADDR[5]), .I1(HADDR[5]), .S(HREADY), .Z(n7) );
  CKMUX2D0BWP12T30P140 U103 ( .I0(rHADDR[27]), .I1(HADDR[27]), .S(HREADY), .Z(
        n29) );
  CKMUX2D0BWP12T30P140 U104 ( .I0(rHADDR[20]), .I1(HADDR[20]), .S(n41), .Z(n22) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(rHADDR[6]), .I1(HADDR[6]), .S(HREADY), .Z(n8) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(rHADDR[26]), .I1(HADDR[26]), .S(n41), .Z(n28) );
  CKMUX2D0BWP12T30P140 U107 ( .I0(rHADDR[21]), .I1(HADDR[21]), .S(n41), .Z(n23) );
  CKMUX2D0BWP12T30P140 U108 ( .I0(rHADDR[28]), .I1(HADDR[28]), .S(HREADY), .Z(
        n30) );
  CKMUX2D0BWP12T30P140 U109 ( .I0(rHADDR[30]), .I1(HADDR[30]), .S(n41), .Z(n32) );
  CKMUX2D0BWP12T30P140 U110 ( .I0(rHADDR[22]), .I1(HADDR[22]), .S(HREADY), .Z(
        n24) );
  CKMUX2D0BWP12T30P140 U111 ( .I0(rHADDR[8]), .I1(HADDR[8]), .S(HREADY), .Z(
        n10) );
  CKMUX2D0BWP12T30P140 U112 ( .I0(rHADDR[29]), .I1(HADDR[29]), .S(n41), .Z(n31) );
  CKMUX2D0BWP12T30P140 U113 ( .I0(rHSEL), .I1(HSEL), .S(HREADY), .Z(n35) );
  CKMUX2D0BWP12T30P140 U114 ( .I0(rHADDR[9]), .I1(HADDR[9]), .S(n41), .Z(n11)
         );
  CKMUX2D0BWP12T30P140 U115 ( .I0(rHADDR[12]), .I1(HADDR[12]), .S(n41), .Z(n14) );
  CKMUX2D0BWP12T30P140 U116 ( .I0(rHADDR[31]), .I1(HADDR[31]), .S(n41), .Z(n33) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(rHADDR[10]), .I1(HADDR[10]), .S(n41), .Z(n12) );
  CKMUX2D0BWP12T30P140 U118 ( .I0(rHADDR[25]), .I1(HADDR[25]), .S(HREADY), .Z(
        n27) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(rHWRITE), .I1(HWRITE), .S(n41), .Z(n36) );
  CKMUX2D0BWP12T30P140 U120 ( .I0(rHADDR[11]), .I1(HADDR[11]), .S(n41), .Z(n13) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(rHADDR[14]), .I1(HADDR[14]), .S(n41), .Z(n16) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(rHADDR[13]), .I1(HADDR[13]), .S(n41), .Z(n15) );
  CKBD0BWP12T30P140 U123 ( .I(HCLK), .Z(n87) );
  CKBD0BWP12T30P140 U124 ( .I(HCLK), .Z(n84) );
  CKBD0BWP12T30P140 U125 ( .I(HCLK), .Z(n86) );
  CKBD0BWP12T30P140 U126 ( .I(HCLK), .Z(n85) );
  CKBD0BWP12T30P140 U127 ( .I(HCLK), .Z(n88) );
  CKBD0BWP12T30P140 U128 ( .I(HRESETn), .Z(n82) );
  CKBD0BWP12T30P140 U129 ( .I(HRESETn), .Z(n81) );
  CKBD0BWP12T30P140 U130 ( .I(HRESETn), .Z(n83) );
  CKBD0BWP12T30P140 U131 ( .I(HRESETn), .Z(n80) );
  CKBD0BWP12T30P140 U132 ( .I(HRESETn), .Z(n79) );
  AN2D0BWP12T30P140 U133 ( .A1(wb_ack_i), .A2(r_wb_cyc_o), .Z(HREADYOUT) );
  AN2D0BWP12T30P140 U134 ( .A1(HCLK), .A2(HRESETn), .Z(wb_clk_o) );
  INR2D1BWP12T30P140 U135 ( .A1(wb_stb_o), .B1(HREADYOUT), .ZN(N7) );
endmodule

