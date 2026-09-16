/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 13:33:31 2026
/////////////////////////////////////////////////////////////


module ahb2wb ( adr_o, dat_o, dat_i, ack_i, cyc_o, we_o, stb_o, hclk, hresetn, 
        haddr, htrans, hwrite, hsize, hburst, hsel, hwdata, hrdata, hresp, 
        hready, clk_i, rst_i );
  output [15:0] adr_o;
  output [31:0] dat_o;
  input [31:0] dat_i;
  input [15:0] haddr;
  input [1:0] htrans;
  input [2:0] hsize;
  input [2:0] hburst;
  input [31:0] hwdata;
  output [31:0] hrdata;
  output [1:0] hresp;
  input ack_i, hclk, hresetn, hwrite, hsel, clk_i, rst_i;
  output cyc_o, we_o, stb_o, hready;
  wire   N45, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116;

  DFQD2BWP12T30P140 dat_o_reg_0_ ( .D(n97), .CP(hclk), .Q(dat_o[0]) );
  DFQD2BWP12T30P140 hrdata_reg_10_ ( .D(n23), .CP(hclk), .Q(hrdata[10]) );
  DFQD2BWP12T30P140 hrdata_reg_9_ ( .D(n22), .CP(hclk), .Q(hrdata[9]) );
  DFQD2BWP12T30P140 hrdata_reg_8_ ( .D(n21), .CP(hclk), .Q(hrdata[8]) );
  DFQD2BWP12T30P140 hrdata_reg_7_ ( .D(n20), .CP(hclk), .Q(hrdata[7]) );
  DFQD2BWP12T30P140 hrdata_reg_6_ ( .D(n19), .CP(hclk), .Q(hrdata[6]) );
  DFQD2BWP12T30P140 hrdata_reg_5_ ( .D(n18), .CP(hclk), .Q(hrdata[5]) );
  DFQD2BWP12T30P140 hrdata_reg_4_ ( .D(n17), .CP(hclk), .Q(hrdata[4]) );
  DFQD2BWP12T30P140 hrdata_reg_3_ ( .D(n16), .CP(hclk), .Q(hrdata[3]) );
  DFQD2BWP12T30P140 hrdata_reg_2_ ( .D(n15), .CP(hclk), .Q(hrdata[2]) );
  DFQD2BWP12T30P140 hrdata_reg_1_ ( .D(n14), .CP(hclk), .Q(hrdata[1]) );
  DFQD2BWP12T30P140 hrdata_reg_0_ ( .D(n13), .CP(hclk), .Q(hrdata[0]) );
  DFQD2BWP12T30P140 hready_reg ( .D(N45), .CP(hclk), .Q(hready) );
  DFQD2BWP12T30P140 hwrite_temp_reg ( .D(n65), .CP(hclk), .Q(we_o) );
  DFQD2BWP12T30P140 dat_o_reg_1_ ( .D(n96), .CP(n116), .Q(dat_o[1]) );
  DFQD2BWP12T30P140 dat_o_reg_2_ ( .D(n95), .CP(n116), .Q(dat_o[2]) );
  DFQD2BWP12T30P140 dat_o_reg_3_ ( .D(n94), .CP(n116), .Q(dat_o[3]) );
  DFQD2BWP12T30P140 dat_o_reg_4_ ( .D(n93), .CP(n116), .Q(dat_o[4]) );
  DFQD2BWP12T30P140 dat_o_reg_5_ ( .D(n92), .CP(n116), .Q(dat_o[5]) );
  DFQD2BWP12T30P140 dat_o_reg_6_ ( .D(n91), .CP(n116), .Q(dat_o[6]) );
  DFQD2BWP12T30P140 dat_o_reg_7_ ( .D(n90), .CP(n116), .Q(dat_o[7]) );
  DFQD2BWP12T30P140 dat_o_reg_8_ ( .D(n89), .CP(n116), .Q(dat_o[8]) );
  DFQD2BWP12T30P140 dat_o_reg_9_ ( .D(n88), .CP(n116), .Q(dat_o[9]) );
  DFQD2BWP12T30P140 dat_o_reg_10_ ( .D(n87), .CP(n116), .Q(dat_o[10]) );
  DFQD2BWP12T30P140 dat_o_reg_11_ ( .D(n86), .CP(n116), .Q(dat_o[11]) );
  DFQD2BWP12T30P140 dat_o_reg_12_ ( .D(n85), .CP(n116), .Q(dat_o[12]) );
  DFQD2BWP12T30P140 dat_o_reg_13_ ( .D(n84), .CP(n115), .Q(dat_o[13]) );
  DFQD2BWP12T30P140 dat_o_reg_14_ ( .D(n83), .CP(n115), .Q(dat_o[14]) );
  DFQD2BWP12T30P140 dat_o_reg_16_ ( .D(n81), .CP(n115), .Q(dat_o[16]) );
  DFQD2BWP12T30P140 dat_o_reg_17_ ( .D(n80), .CP(n115), .Q(dat_o[17]) );
  DFQD2BWP12T30P140 dat_o_reg_18_ ( .D(n79), .CP(n115), .Q(dat_o[18]) );
  DFQD2BWP12T30P140 dat_o_reg_19_ ( .D(n78), .CP(n115), .Q(dat_o[19]) );
  DFQD2BWP12T30P140 dat_o_reg_20_ ( .D(n77), .CP(n115), .Q(dat_o[20]) );
  DFQD2BWP12T30P140 dat_o_reg_21_ ( .D(n76), .CP(n115), .Q(dat_o[21]) );
  DFQD2BWP12T30P140 dat_o_reg_22_ ( .D(n75), .CP(n115), .Q(dat_o[22]) );
  DFQD2BWP12T30P140 dat_o_reg_23_ ( .D(n74), .CP(n115), .Q(dat_o[23]) );
  DFQD2BWP12T30P140 dat_o_reg_24_ ( .D(n73), .CP(n115), .Q(dat_o[24]) );
  DFQD2BWP12T30P140 dat_o_reg_25_ ( .D(n72), .CP(n116), .Q(dat_o[25]) );
  DFQD2BWP12T30P140 dat_o_reg_26_ ( .D(n71), .CP(n113), .Q(dat_o[26]) );
  DFQD2BWP12T30P140 dat_o_reg_27_ ( .D(n70), .CP(n114), .Q(dat_o[27]) );
  DFQD2BWP12T30P140 dat_o_reg_28_ ( .D(n69), .CP(n115), .Q(dat_o[28]) );
  DFQD2BWP12T30P140 dat_o_reg_29_ ( .D(n68), .CP(n116), .Q(dat_o[29]) );
  DFQD2BWP12T30P140 dat_o_reg_31_ ( .D(n66), .CP(n114), .Q(dat_o[31]) );
  DFQD2BWP12T30P140 hresp_reg_0_ ( .D(n46), .CP(n114), .Q(hresp[0]) );
  DFQD2BWP12T30P140 hresp_reg_1_ ( .D(n45), .CP(n114), .Q(hresp[1]) );
  DFQD2BWP12T30P140 addr_temp_reg_0_ ( .D(n64), .CP(n115), .Q(adr_o[0]) );
  DFQD2BWP12T30P140 addr_temp_reg_15_ ( .D(n63), .CP(n116), .Q(adr_o[15]) );
  DFQD2BWP12T30P140 addr_temp_reg_14_ ( .D(n62), .CP(n113), .Q(adr_o[14]) );
  DFQD2BWP12T30P140 addr_temp_reg_13_ ( .D(n61), .CP(n114), .Q(adr_o[13]) );
  DFQD2BWP12T30P140 addr_temp_reg_12_ ( .D(n60), .CP(n115), .Q(adr_o[12]) );
  DFQD2BWP12T30P140 addr_temp_reg_11_ ( .D(n59), .CP(n116), .Q(adr_o[11]) );
  DFQD2BWP12T30P140 addr_temp_reg_10_ ( .D(n58), .CP(n113), .Q(adr_o[10]) );
  DFQD2BWP12T30P140 addr_temp_reg_9_ ( .D(n57), .CP(n114), .Q(adr_o[9]) );
  DFQD2BWP12T30P140 addr_temp_reg_8_ ( .D(n56), .CP(n114), .Q(adr_o[8]) );
  DFQD2BWP12T30P140 addr_temp_reg_7_ ( .D(n55), .CP(n115), .Q(adr_o[7]) );
  DFQD2BWP12T30P140 addr_temp_reg_6_ ( .D(n54), .CP(n116), .Q(adr_o[6]) );
  DFQD2BWP12T30P140 addr_temp_reg_4_ ( .D(n52), .CP(n115), .Q(adr_o[4]) );
  DFQD2BWP12T30P140 addr_temp_reg_3_ ( .D(n51), .CP(n114), .Q(adr_o[3]) );
  DFQD2BWP12T30P140 addr_temp_reg_2_ ( .D(n50), .CP(n115), .Q(adr_o[2]) );
  DFQD2BWP12T30P140 addr_temp_reg_1_ ( .D(n49), .CP(n116), .Q(adr_o[1]) );
  DFQD2BWP12T30P140 hrdata_reg_31_ ( .D(n44), .CP(n114), .Q(hrdata[31]) );
  DFQD2BWP12T30P140 hrdata_reg_30_ ( .D(n43), .CP(n114), .Q(hrdata[30]) );
  DFQD2BWP12T30P140 hrdata_reg_29_ ( .D(n42), .CP(n114), .Q(hrdata[29]) );
  DFQD2BWP12T30P140 hrdata_reg_28_ ( .D(n41), .CP(n114), .Q(hrdata[28]) );
  DFQD2BWP12T30P140 hrdata_reg_27_ ( .D(n40), .CP(n114), .Q(hrdata[27]) );
  DFQD2BWP12T30P140 hrdata_reg_26_ ( .D(n39), .CP(n114), .Q(hrdata[26]) );
  DFQD2BWP12T30P140 hrdata_reg_25_ ( .D(n38), .CP(n114), .Q(hrdata[25]) );
  DFQD2BWP12T30P140 hrdata_reg_24_ ( .D(n37), .CP(n114), .Q(hrdata[24]) );
  DFQD2BWP12T30P140 hrdata_reg_23_ ( .D(n36), .CP(n114), .Q(hrdata[23]) );
  DFQD2BWP12T30P140 hrdata_reg_22_ ( .D(n35), .CP(n113), .Q(hrdata[22]) );
  DFQD2BWP12T30P140 hrdata_reg_20_ ( .D(n33), .CP(n113), .Q(hrdata[20]) );
  DFQD2BWP12T30P140 hrdata_reg_19_ ( .D(n32), .CP(n113), .Q(hrdata[19]) );
  DFQD2BWP12T30P140 hrdata_reg_18_ ( .D(n31), .CP(n113), .Q(hrdata[18]) );
  DFQD2BWP12T30P140 hrdata_reg_17_ ( .D(n30), .CP(n113), .Q(hrdata[17]) );
  DFQD2BWP12T30P140 hrdata_reg_16_ ( .D(n29), .CP(n113), .Q(hrdata[16]) );
  DFQD2BWP12T30P140 hrdata_reg_15_ ( .D(n28), .CP(n113), .Q(hrdata[15]) );
  DFQD2BWP12T30P140 hrdata_reg_14_ ( .D(n27), .CP(n113), .Q(hrdata[14]) );
  DFQD2BWP12T30P140 hrdata_reg_13_ ( .D(n26), .CP(n113), .Q(hrdata[13]) );
  DFQD2BWP12T30P140 hrdata_reg_12_ ( .D(n25), .CP(n113), .Q(hrdata[12]) );
  DFQD2BWP12T30P140 hrdata_reg_11_ ( .D(n24), .CP(n113), .Q(hrdata[11]) );
  DFQD1BWP12T30P140 stb_o_reg ( .D(n48), .CP(n114), .Q(stb_o) );
  DFQD1BWP12T30P140 dat_o_reg_15_ ( .D(n82), .CP(n115), .Q(dat_o[15]) );
  DFQD1BWP12T30P140 dat_o_reg_30_ ( .D(n67), .CP(n113), .Q(dat_o[30]) );
  DFQD1BWP12T30P140 addr_temp_reg_5_ ( .D(n53), .CP(n113), .Q(adr_o[5]) );
  DFQD1BWP12T30P140 hrdata_reg_21_ ( .D(n34), .CP(n113), .Q(hrdata[21]) );
  DFQD1BWP12T30P140 cyc_o_reg ( .D(n47), .CP(n113), .Q(cyc_o) );
  CKBD0BWP12T30P140 U101 ( .I(n101), .Z(n100) );
  CKBD0BWP12T30P140 U102 ( .I(n111), .Z(n110) );
  INVD0BWP12T30P140 U103 ( .I(hresetn), .ZN(n106) );
  NR2D0BWP12T30P140 U104 ( .A1(we_o), .A2(n106), .ZN(n111) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(hrdata[10]), .I1(dat_i[10]), .S(n111), .Z(
        n23) );
  CKMUX2D0BWP12T30P140 U106 ( .I0(hrdata[9]), .I1(dat_i[9]), .S(n110), .Z(n22)
         );
  CKMUX2D0BWP12T30P140 U107 ( .I0(hrdata[8]), .I1(dat_i[8]), .S(n111), .Z(n21)
         );
  CKMUX2D0BWP12T30P140 U108 ( .I0(hrdata[7]), .I1(dat_i[7]), .S(n110), .Z(n20)
         );
  CKMUX2D0BWP12T30P140 U109 ( .I0(hrdata[6]), .I1(dat_i[6]), .S(n111), .Z(n19)
         );
  CKMUX2D0BWP12T30P140 U110 ( .I0(hrdata[5]), .I1(dat_i[5]), .S(n110), .Z(n18)
         );
  CKMUX2D0BWP12T30P140 U111 ( .I0(hrdata[4]), .I1(dat_i[4]), .S(n110), .Z(n17)
         );
  CKMUX2D0BWP12T30P140 U112 ( .I0(hrdata[3]), .I1(dat_i[3]), .S(n110), .Z(n16)
         );
  CKMUX2D0BWP12T30P140 U113 ( .I0(hrdata[2]), .I1(dat_i[2]), .S(n110), .Z(n15)
         );
  CKMUX2D0BWP12T30P140 U114 ( .I0(hrdata[1]), .I1(dat_i[1]), .S(n110), .Z(n14)
         );
  CKMUX2D0BWP12T30P140 U115 ( .I0(hrdata[0]), .I1(dat_i[0]), .S(n110), .Z(n13)
         );
  INVD0BWP12T30P140 U116 ( .I(stb_o), .ZN(n99) );
  OR3D0BWP12T30P140 U117 ( .A1(ack_i), .A2(n99), .A3(n106), .Z(N45) );
  INVD0BWP12T30P140 U118 ( .I(htrans[1]), .ZN(n103) );
  INR4D0BWP12T30P140 U119 ( .A1(hsel), .B1(hburst[1]), .B2(hburst[2]), .B3(
        hburst[0]), .ZN(n105) );
  ND2D0BWP12T30P140 U120 ( .A1(n105), .A2(hready), .ZN(n98) );
  OAI31D1BWP12T30P140 U121 ( .A1(htrans[0]), .A2(n103), .A3(n98), .B(hresetn), 
        .ZN(n109) );
  CKMUX2D0BWP12T30P140 U122 ( .I0(we_o), .I1(hwrite), .S(n109), .Z(n65) );
  OAI21D0BWP12T30P140 U123 ( .A1(htrans[1]), .A2(n98), .B(hresetn), .ZN(n112)
         );
  AOI221D0BWP12T30P140 U124 ( .A1(htrans[0]), .A2(n99), .B1(n98), .B2(n99), 
        .C(n112), .ZN(n48) );
  ND2D0BWP12T30P140 U125 ( .A1(hresetn), .A2(we_o), .ZN(n101) );
  CKMUX2D0BWP12T30P140 U126 ( .I0(hwdata[1]), .I1(dat_o[1]), .S(n100), .Z(n96)
         );
  CKMUX2D0BWP12T30P140 U127 ( .I0(hwdata[2]), .I1(dat_o[2]), .S(n101), .Z(n95)
         );
  CKMUX2D0BWP12T30P140 U128 ( .I0(hwdata[3]), .I1(dat_o[3]), .S(n100), .Z(n94)
         );
  CKMUX2D0BWP12T30P140 U129 ( .I0(hwdata[4]), .I1(dat_o[4]), .S(n101), .Z(n93)
         );
  CKMUX2D0BWP12T30P140 U130 ( .I0(hwdata[5]), .I1(dat_o[5]), .S(n100), .Z(n92)
         );
  CKMUX2D0BWP12T30P140 U131 ( .I0(hwdata[6]), .I1(dat_o[6]), .S(n101), .Z(n91)
         );
  CKMUX2D0BWP12T30P140 U132 ( .I0(hwdata[7]), .I1(dat_o[7]), .S(n100), .Z(n90)
         );
  CKMUX2D0BWP12T30P140 U133 ( .I0(hwdata[8]), .I1(dat_o[8]), .S(n101), .Z(n89)
         );
  CKMUX2D0BWP12T30P140 U134 ( .I0(hwdata[9]), .I1(dat_o[9]), .S(n101), .Z(n88)
         );
  CKMUX2D0BWP12T30P140 U135 ( .I0(hwdata[10]), .I1(dat_o[10]), .S(n101), .Z(
        n87) );
  CKMUX2D0BWP12T30P140 U136 ( .I0(hwdata[11]), .I1(dat_o[11]), .S(n101), .Z(
        n86) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(hwdata[12]), .I1(dat_o[12]), .S(n101), .Z(
        n85) );
  CKMUX2D0BWP12T30P140 U138 ( .I0(hwdata[13]), .I1(dat_o[13]), .S(n101), .Z(
        n84) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(hwdata[14]), .I1(dat_o[14]), .S(n100), .Z(
        n83) );
  CKMUX2D0BWP12T30P140 U140 ( .I0(hwdata[15]), .I1(dat_o[15]), .S(n101), .Z(
        n82) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(hwdata[16]), .I1(dat_o[16]), .S(n100), .Z(
        n81) );
  CKMUX2D0BWP12T30P140 U142 ( .I0(hwdata[17]), .I1(dat_o[17]), .S(n101), .Z(
        n80) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(hwdata[18]), .I1(dat_o[18]), .S(n100), .Z(
        n79) );
  CKMUX2D0BWP12T30P140 U144 ( .I0(hwdata[19]), .I1(dat_o[19]), .S(n101), .Z(
        n78) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(hwdata[20]), .I1(dat_o[20]), .S(n100), .Z(
        n77) );
  CKMUX2D0BWP12T30P140 U146 ( .I0(hwdata[21]), .I1(dat_o[21]), .S(n101), .Z(
        n76) );
  CKMUX2D0BWP12T30P140 U147 ( .I0(hwdata[22]), .I1(dat_o[22]), .S(n100), .Z(
        n75) );
  CKMUX2D0BWP12T30P140 U148 ( .I0(hwdata[0]), .I1(dat_o[0]), .S(n101), .Z(n97)
         );
  CKMUX2D0BWP12T30P140 U149 ( .I0(hwdata[24]), .I1(dat_o[24]), .S(n100), .Z(
        n73) );
  CKMUX2D0BWP12T30P140 U150 ( .I0(hwdata[25]), .I1(dat_o[25]), .S(n101), .Z(
        n72) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(hwdata[26]), .I1(dat_o[26]), .S(n100), .Z(
        n71) );
  CKMUX2D0BWP12T30P140 U152 ( .I0(hwdata[27]), .I1(dat_o[27]), .S(n100), .Z(
        n70) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(hwdata[28]), .I1(dat_o[28]), .S(n100), .Z(
        n69) );
  CKMUX2D0BWP12T30P140 U154 ( .I0(hwdata[29]), .I1(dat_o[29]), .S(n100), .Z(
        n68) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(hwdata[30]), .I1(dat_o[30]), .S(n100), .Z(
        n67) );
  CKMUX2D0BWP12T30P140 U156 ( .I0(hwdata[31]), .I1(dat_o[31]), .S(n100), .Z(
        n66) );
  CKMUX2D0BWP12T30P140 U157 ( .I0(adr_o[0]), .I1(haddr[0]), .S(n109), .Z(n64)
         );
  CKMUX2D0BWP12T30P140 U158 ( .I0(adr_o[15]), .I1(haddr[15]), .S(n109), .Z(n63) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(adr_o[14]), .I1(haddr[14]), .S(n109), .Z(n62) );
  CKMUX2D0BWP12T30P140 U160 ( .I0(adr_o[13]), .I1(haddr[13]), .S(n109), .Z(n61) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(adr_o[12]), .I1(haddr[12]), .S(n109), .Z(n60) );
  CKMUX2D0BWP12T30P140 U162 ( .I0(adr_o[11]), .I1(haddr[11]), .S(n109), .Z(n59) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(adr_o[10]), .I1(haddr[10]), .S(n109), .Z(n58) );
  CKMUX2D0BWP12T30P140 U164 ( .I0(adr_o[9]), .I1(haddr[9]), .S(n109), .Z(n57)
         );
  CKMUX2D0BWP12T30P140 U165 ( .I0(adr_o[8]), .I1(haddr[8]), .S(n109), .Z(n56)
         );
  CKMUX2D0BWP12T30P140 U166 ( .I0(adr_o[7]), .I1(haddr[7]), .S(n109), .Z(n55)
         );
  CKMUX2D0BWP12T30P140 U167 ( .I0(hwdata[23]), .I1(dat_o[23]), .S(n101), .Z(
        n74) );
  CKMUX2D0BWP12T30P140 U168 ( .I0(adr_o[4]), .I1(haddr[4]), .S(n109), .Z(n52)
         );
  INVD0BWP12T30P140 U169 ( .I(htrans[0]), .ZN(n102) );
  OA221D0BWP12T30P140 U170 ( .A1(n103), .A2(n102), .B1(htrans[1]), .B2(
        htrans[0]), .C(hready), .Z(n104) );
  AOI32D0BWP12T30P140 U171 ( .A1(cyc_o), .A2(n105), .A3(htrans[1]), .B1(n104), 
        .B2(n105), .ZN(n108) );
  INVD0BWP12T30P140 U172 ( .I(cyc_o), .ZN(n107) );
  AOI221D0BWP12T30P140 U173 ( .A1(hready), .A2(n108), .B1(n107), .B2(n108), 
        .C(n106), .ZN(n47) );
  CKMUX2D0BWP12T30P140 U174 ( .I0(hrdata[31]), .I1(dat_i[31]), .S(n111), .Z(
        n44) );
  CKMUX2D0BWP12T30P140 U175 ( .I0(adr_o[6]), .I1(haddr[6]), .S(n109), .Z(n54)
         );
  CKMUX2D0BWP12T30P140 U176 ( .I0(hrdata[11]), .I1(dat_i[11]), .S(n110), .Z(
        n24) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(hrdata[24]), .I1(dat_i[24]), .S(n110), .Z(
        n37) );
  CKMUX2D0BWP12T30P140 U178 ( .I0(hrdata[12]), .I1(dat_i[12]), .S(n111), .Z(
        n25) );
  CKMUX2D0BWP12T30P140 U179 ( .I0(adr_o[5]), .I1(haddr[5]), .S(n109), .Z(n53)
         );
  CKMUX2D0BWP12T30P140 U180 ( .I0(adr_o[2]), .I1(haddr[2]), .S(n109), .Z(n50)
         );
  CKMUX2D0BWP12T30P140 U181 ( .I0(hrdata[13]), .I1(dat_i[13]), .S(n110), .Z(
        n26) );
  CKMUX2D0BWP12T30P140 U182 ( .I0(hrdata[29]), .I1(dat_i[29]), .S(n111), .Z(
        n42) );
  CKMUX2D0BWP12T30P140 U183 ( .I0(hrdata[26]), .I1(dat_i[26]), .S(n110), .Z(
        n39) );
  CKMUX2D0BWP12T30P140 U184 ( .I0(hrdata[14]), .I1(dat_i[14]), .S(n111), .Z(
        n27) );
  CKMUX2D0BWP12T30P140 U185 ( .I0(hrdata[27]), .I1(dat_i[27]), .S(n111), .Z(
        n40) );
  CKMUX2D0BWP12T30P140 U186 ( .I0(hrdata[15]), .I1(dat_i[15]), .S(n110), .Z(
        n28) );
  CKMUX2D0BWP12T30P140 U187 ( .I0(adr_o[3]), .I1(haddr[3]), .S(n109), .Z(n51)
         );
  CKMUX2D0BWP12T30P140 U188 ( .I0(hrdata[17]), .I1(dat_i[17]), .S(n110), .Z(
        n30) );
  CKMUX2D0BWP12T30P140 U189 ( .I0(hrdata[16]), .I1(dat_i[16]), .S(n111), .Z(
        n29) );
  CKMUX2D0BWP12T30P140 U190 ( .I0(adr_o[1]), .I1(haddr[1]), .S(n109), .Z(n49)
         );
  CKMUX2D0BWP12T30P140 U191 ( .I0(hrdata[25]), .I1(dat_i[25]), .S(n111), .Z(
        n38) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(hrdata[30]), .I1(dat_i[30]), .S(n110), .Z(
        n43) );
  CKMUX2D0BWP12T30P140 U193 ( .I0(hrdata[18]), .I1(dat_i[18]), .S(n111), .Z(
        n31) );
  CKMUX2D0BWP12T30P140 U194 ( .I0(hrdata[19]), .I1(dat_i[19]), .S(n111), .Z(
        n32) );
  CKMUX2D0BWP12T30P140 U195 ( .I0(hrdata[23]), .I1(dat_i[23]), .S(n111), .Z(
        n36) );
  CKMUX2D0BWP12T30P140 U196 ( .I0(hrdata[28]), .I1(dat_i[28]), .S(n110), .Z(
        n41) );
  CKMUX2D0BWP12T30P140 U197 ( .I0(hrdata[20]), .I1(dat_i[20]), .S(n111), .Z(
        n33) );
  CKMUX2D0BWP12T30P140 U198 ( .I0(hrdata[21]), .I1(dat_i[21]), .S(n111), .Z(
        n34) );
  CKMUX2D0BWP12T30P140 U199 ( .I0(hrdata[22]), .I1(dat_i[22]), .S(n111), .Z(
        n35) );
  CKBD0BWP12T30P140 U200 ( .I(hclk), .Z(n113) );
  CKBD0BWP12T30P140 U201 ( .I(hclk), .Z(n116) );
  CKBD0BWP12T30P140 U202 ( .I(hclk), .Z(n115) );
  CKBD0BWP12T30P140 U203 ( .I(hclk), .Z(n114) );
  INR2D1BWP12T30P140 U204 ( .A1(hresp[0]), .B1(n112), .ZN(n46) );
  INR2D1BWP12T30P140 U205 ( .A1(hresp[1]), .B1(n112), .ZN(n45) );
endmodule

