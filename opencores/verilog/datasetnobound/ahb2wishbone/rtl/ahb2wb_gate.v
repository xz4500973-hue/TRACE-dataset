/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Jun 11 11:05:50 2026
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
  wire   N49, N50, N52, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;

  LHQD2BWP12T30P140 dat_o_reg_0_ ( .E(n47), .D(hwdata[0]), .Q(dat_o[0]) );
  LHQD2BWP12T30P140 dat_o_reg_1_ ( .E(n47), .D(hwdata[1]), .Q(dat_o[1]) );
  LHQD2BWP12T30P140 dat_o_reg_2_ ( .E(n47), .D(hwdata[2]), .Q(dat_o[2]) );
  LHQD2BWP12T30P140 dat_o_reg_3_ ( .E(n47), .D(hwdata[3]), .Q(dat_o[3]) );
  LHQD2BWP12T30P140 dat_o_reg_4_ ( .E(n47), .D(hwdata[4]), .Q(dat_o[4]) );
  LHQD2BWP12T30P140 dat_o_reg_5_ ( .E(n47), .D(hwdata[5]), .Q(dat_o[5]) );
  LHQD2BWP12T30P140 dat_o_reg_6_ ( .E(n47), .D(hwdata[6]), .Q(dat_o[6]) );
  LHQD2BWP12T30P140 dat_o_reg_7_ ( .E(n47), .D(hwdata[7]), .Q(dat_o[7]) );
  LHQD2BWP12T30P140 dat_o_reg_8_ ( .E(n47), .D(hwdata[8]), .Q(dat_o[8]) );
  LHQD2BWP12T30P140 dat_o_reg_9_ ( .E(n47), .D(hwdata[9]), .Q(dat_o[9]) );
  LHQD2BWP12T30P140 dat_o_reg_10_ ( .E(n47), .D(hwdata[10]), .Q(dat_o[10]) );
  LHQD2BWP12T30P140 dat_o_reg_11_ ( .E(n47), .D(hwdata[11]), .Q(dat_o[11]) );
  LHQD2BWP12T30P140 dat_o_reg_12_ ( .E(n47), .D(hwdata[12]), .Q(dat_o[12]) );
  LHQD2BWP12T30P140 dat_o_reg_13_ ( .E(n48), .D(hwdata[13]), .Q(dat_o[13]) );
  LHQD2BWP12T30P140 dat_o_reg_15_ ( .E(n48), .D(hwdata[15]), .Q(dat_o[15]) );
  LHQD2BWP12T30P140 dat_o_reg_16_ ( .E(n47), .D(hwdata[16]), .Q(dat_o[16]) );
  LHQD2BWP12T30P140 dat_o_reg_17_ ( .E(n48), .D(hwdata[17]), .Q(dat_o[17]) );
  LHQD2BWP12T30P140 dat_o_reg_18_ ( .E(n47), .D(hwdata[18]), .Q(dat_o[18]) );
  LHQD2BWP12T30P140 dat_o_reg_19_ ( .E(n48), .D(hwdata[19]), .Q(dat_o[19]) );
  LHQD2BWP12T30P140 dat_o_reg_20_ ( .E(n48), .D(hwdata[20]), .Q(dat_o[20]) );
  LHQD2BWP12T30P140 dat_o_reg_21_ ( .E(n48), .D(hwdata[21]), .Q(dat_o[21]) );
  LHQD2BWP12T30P140 dat_o_reg_22_ ( .E(n48), .D(hwdata[22]), .Q(dat_o[22]) );
  LHQD2BWP12T30P140 dat_o_reg_23_ ( .E(n48), .D(hwdata[23]), .Q(dat_o[23]) );
  LHQD2BWP12T30P140 dat_o_reg_24_ ( .E(n48), .D(hwdata[24]), .Q(dat_o[24]) );
  LHQD2BWP12T30P140 dat_o_reg_25_ ( .E(n48), .D(hwdata[25]), .Q(dat_o[25]) );
  LHQD2BWP12T30P140 dat_o_reg_26_ ( .E(n48), .D(hwdata[26]), .Q(dat_o[26]) );
  LHQD2BWP12T30P140 dat_o_reg_27_ ( .E(n48), .D(hwdata[27]), .Q(dat_o[27]) );
  LHQD2BWP12T30P140 dat_o_reg_28_ ( .E(n48), .D(hwdata[28]), .Q(dat_o[28]) );
  LHQD2BWP12T30P140 dat_o_reg_30_ ( .E(n48), .D(hwdata[30]), .Q(dat_o[30]) );
  LHQD2BWP12T30P140 dat_o_reg_31_ ( .E(n48), .D(hwdata[31]), .Q(dat_o[31]) );
  LHQD2BWP12T30P140 hrdata_reg_1_ ( .E(n49), .D(dat_i[1]), .Q(hrdata[1]) );
  LHQD2BWP12T30P140 hrdata_reg_3_ ( .E(n49), .D(dat_i[3]), .Q(hrdata[3]) );
  LHQD2BWP12T30P140 hrdata_reg_5_ ( .E(n49), .D(dat_i[5]), .Q(hrdata[5]) );
  LHQD2BWP12T30P140 hrdata_reg_7_ ( .E(n49), .D(dat_i[7]), .Q(hrdata[7]) );
  LHQD2BWP12T30P140 hrdata_reg_9_ ( .E(n49), .D(dat_i[9]), .Q(hrdata[9]) );
  LHQD2BWP12T30P140 hrdata_reg_11_ ( .E(n49), .D(dat_i[11]), .Q(hrdata[11]) );
  LHQD2BWP12T30P140 hrdata_reg_13_ ( .E(n49), .D(dat_i[13]), .Q(hrdata[13]) );
  LHQD2BWP12T30P140 hrdata_reg_15_ ( .E(n49), .D(dat_i[15]), .Q(hrdata[15]) );
  LHQD2BWP12T30P140 hrdata_reg_17_ ( .E(n49), .D(dat_i[17]), .Q(hrdata[17]) );
  LHQD2BWP12T30P140 hrdata_reg_19_ ( .E(n49), .D(dat_i[19]), .Q(hrdata[19]) );
  LHQD2BWP12T30P140 hrdata_reg_21_ ( .E(n49), .D(dat_i[21]), .Q(hrdata[21]) );
  LHQD2BWP12T30P140 hrdata_reg_23_ ( .E(n49), .D(dat_i[23]), .Q(hrdata[23]) );
  LHQD2BWP12T30P140 hrdata_reg_27_ ( .E(n49), .D(dat_i[27]), .Q(hrdata[27]) );
  LHQD2BWP12T30P140 hrdata_reg_29_ ( .E(n49), .D(dat_i[29]), .Q(hrdata[29]) );
  LHQD2BWP12T30P140 hrdata_reg_31_ ( .E(n49), .D(dat_i[31]), .Q(hrdata[31]) );
  DFQD2BWP12T30P140 addr_temp_reg_0_ ( .D(n30), .CP(hclk), .Q(adr_o[0]) );
  DFQD2BWP12T30P140 addr_temp_reg_15_ ( .D(n28), .CP(n33), .Q(adr_o[15]) );
  DFQD2BWP12T30P140 addr_temp_reg_14_ ( .D(n27), .CP(hclk), .Q(adr_o[14]) );
  DFQD2BWP12T30P140 addr_temp_reg_13_ ( .D(n26), .CP(n33), .Q(adr_o[13]) );
  DFQD2BWP12T30P140 addr_temp_reg_12_ ( .D(n25), .CP(hclk), .Q(adr_o[12]) );
  DFQD2BWP12T30P140 addr_temp_reg_11_ ( .D(n24), .CP(n33), .Q(adr_o[11]) );
  DFQD2BWP12T30P140 addr_temp_reg_10_ ( .D(n23), .CP(hclk), .Q(adr_o[10]) );
  DFQD2BWP12T30P140 addr_temp_reg_9_ ( .D(n22), .CP(n33), .Q(adr_o[9]) );
  DFQD2BWP12T30P140 addr_temp_reg_8_ ( .D(n21), .CP(hclk), .Q(adr_o[8]) );
  DFQD2BWP12T30P140 addr_temp_reg_7_ ( .D(n20), .CP(n33), .Q(adr_o[7]) );
  DFQD2BWP12T30P140 addr_temp_reg_6_ ( .D(n19), .CP(hclk), .Q(adr_o[6]) );
  DFQD2BWP12T30P140 addr_temp_reg_4_ ( .D(n17), .CP(hclk), .Q(adr_o[4]) );
  DFQD2BWP12T30P140 addr_temp_reg_3_ ( .D(n16), .CP(n33), .Q(adr_o[3]) );
  DFQD2BWP12T30P140 addr_temp_reg_2_ ( .D(n15), .CP(hclk), .Q(adr_o[2]) );
  DFQD2BWP12T30P140 addr_temp_reg_1_ ( .D(n14), .CP(n33), .Q(adr_o[1]) );
  DFQD2BWP12T30P140 hresp_reg_0_ ( .D(n12), .CP(hclk), .Q(hresp[0]) );
  DFQD2BWP12T30P140 hresp_reg_1_ ( .D(n11), .CP(n33), .Q(hresp[1]) );
  DFQD2BWP12T30P140 cyc_o_reg ( .D(n31), .CP(hclk), .Q(cyc_o) );
  DFQD2BWP12T30P140 hwrite_temp_reg ( .D(n29), .CP(n33), .Q(we_o) );
  DFQD2BWP12T30P140 stb_o_reg ( .D(n13), .CP(n33), .Q(stb_o) );
  LHQD2BWP12T30P140 hrdata_reg_0_ ( .E(N52), .D(dat_i[0]), .Q(hrdata[0]) );
  LHQD2BWP12T30P140 hrdata_reg_2_ ( .E(N52), .D(dat_i[2]), .Q(hrdata[2]) );
  LHQD2BWP12T30P140 hrdata_reg_4_ ( .E(N52), .D(dat_i[4]), .Q(hrdata[4]) );
  LHQD2BWP12T30P140 hrdata_reg_6_ ( .E(N52), .D(dat_i[6]), .Q(hrdata[6]) );
  LHQD2BWP12T30P140 hrdata_reg_8_ ( .E(N52), .D(dat_i[8]), .Q(hrdata[8]) );
  LHQD2BWP12T30P140 hrdata_reg_12_ ( .E(N52), .D(dat_i[12]), .Q(hrdata[12]) );
  LHQD2BWP12T30P140 hrdata_reg_14_ ( .E(N52), .D(dat_i[14]), .Q(hrdata[14]) );
  LHQD2BWP12T30P140 hrdata_reg_16_ ( .E(N52), .D(dat_i[16]), .Q(hrdata[16]) );
  LHQD2BWP12T30P140 hrdata_reg_18_ ( .E(N52), .D(dat_i[18]), .Q(hrdata[18]) );
  LHQD2BWP12T30P140 hrdata_reg_20_ ( .E(N52), .D(dat_i[20]), .Q(hrdata[20]) );
  LHQD2BWP12T30P140 hrdata_reg_22_ ( .E(N52), .D(dat_i[22]), .Q(hrdata[22]) );
  LHQD2BWP12T30P140 hrdata_reg_24_ ( .E(N52), .D(dat_i[24]), .Q(hrdata[24]) );
  LHQD2BWP12T30P140 hrdata_reg_26_ ( .E(N52), .D(dat_i[26]), .Q(hrdata[26]) );
  LHQD2BWP12T30P140 hrdata_reg_28_ ( .E(N52), .D(dat_i[28]), .Q(hrdata[28]) );
  LHQD2BWP12T30P140 hrdata_reg_30_ ( .E(N52), .D(dat_i[30]), .Q(hrdata[30]) );
  LHQD1BWP12T30P140 dat_o_reg_14_ ( .E(n47), .D(hwdata[14]), .Q(dat_o[14]) );
  LHQD1BWP12T30P140 dat_o_reg_29_ ( .E(n48), .D(hwdata[29]), .Q(dat_o[29]) );
  LHQD1BWP12T30P140 hrdata_reg_25_ ( .E(n49), .D(dat_i[25]), .Q(hrdata[25]) );
  DFQD1BWP12T30P140 addr_temp_reg_5_ ( .D(n18), .CP(n33), .Q(adr_o[5]) );
  LHQD1BWP12T30P140 hrdata_reg_10_ ( .E(N52), .D(dat_i[10]), .Q(hrdata[10]) );
  LHQD1BWP12T30P140 hready_reg ( .E(N49), .D(N50), .Q(hready) );
  INVD0BWP12T30P140 U38 ( .I(hclk), .ZN(n32) );
  INVD0BWP12T30P140 U39 ( .I(n32), .ZN(n33) );
  INVD0BWP12T30P140 U40 ( .I(hresetn), .ZN(n45) );
  NR2D0BWP12T30P140 U41 ( .A1(n45), .A2(we_o), .ZN(N52) );
  CKBD0BWP12T30P140 U42 ( .I(N52), .Z(n49) );
  INVD0BWP12T30P140 U43 ( .I(n49), .ZN(n48) );
  INVD0BWP12T30P140 U44 ( .I(n49), .ZN(n47) );
  INR4D0BWP12T30P140 U45 ( .A1(hsel), .B1(hburst[2]), .B2(hburst[1]), .B3(
        hburst[0]), .ZN(n42) );
  INVD0BWP12T30P140 U46 ( .I(hready), .ZN(n38) );
  INVD0BWP12T30P140 U47 ( .I(htrans[1]), .ZN(n40) );
  NR3D0BWP12T30P140 U48 ( .A1(htrans[0]), .A2(n38), .A3(n40), .ZN(n34) );
  AOI21D0BWP12T30P140 U49 ( .A1(n42), .A2(n34), .B(n45), .ZN(n37) );
  CKMUX2D0BWP12T30P140 U50 ( .I0(haddr[0]), .I1(adr_o[0]), .S(n37), .Z(n30) );
  CKMUX2D0BWP12T30P140 U51 ( .I0(haddr[15]), .I1(adr_o[15]), .S(n37), .Z(n28)
         );
  CKMUX2D0BWP12T30P140 U52 ( .I0(hwrite), .I1(we_o), .S(n37), .Z(n29) );
  INVD0BWP12T30P140 U53 ( .I(htrans[0]), .ZN(n39) );
  AOI31D0BWP12T30P140 U54 ( .A1(hready), .A2(n42), .A3(n39), .B(stb_o), .ZN(
        n36) );
  ND2D0BWP12T30P140 U55 ( .A1(n42), .A2(hready), .ZN(n35) );
  OAI21D0BWP12T30P140 U56 ( .A1(htrans[1]), .A2(n35), .B(hresetn), .ZN(n46) );
  NR2D0BWP12T30P140 U57 ( .A1(n36), .A2(n46), .ZN(n13) );
  CKMUX2D0BWP12T30P140 U58 ( .I0(haddr[14]), .I1(adr_o[14]), .S(n37), .Z(n27)
         );
  CKMUX2D0BWP12T30P140 U59 ( .I0(haddr[13]), .I1(adr_o[13]), .S(n37), .Z(n26)
         );
  CKMUX2D0BWP12T30P140 U60 ( .I0(haddr[12]), .I1(adr_o[12]), .S(n37), .Z(n25)
         );
  CKMUX2D0BWP12T30P140 U61 ( .I0(haddr[11]), .I1(adr_o[11]), .S(n37), .Z(n24)
         );
  CKMUX2D0BWP12T30P140 U62 ( .I0(haddr[10]), .I1(adr_o[10]), .S(n37), .Z(n23)
         );
  CKMUX2D0BWP12T30P140 U63 ( .I0(haddr[9]), .I1(adr_o[9]), .S(n37), .Z(n22) );
  CKMUX2D0BWP12T30P140 U64 ( .I0(haddr[8]), .I1(adr_o[8]), .S(n37), .Z(n21) );
  CKMUX2D0BWP12T30P140 U65 ( .I0(haddr[7]), .I1(adr_o[7]), .S(n37), .Z(n20) );
  CKMUX2D0BWP12T30P140 U66 ( .I0(haddr[6]), .I1(adr_o[6]), .S(n37), .Z(n19) );
  CKMUX2D0BWP12T30P140 U67 ( .I0(haddr[5]), .I1(adr_o[5]), .S(n37), .Z(n18) );
  CKMUX2D0BWP12T30P140 U68 ( .I0(haddr[4]), .I1(adr_o[4]), .S(n37), .Z(n17) );
  CKMUX2D0BWP12T30P140 U69 ( .I0(haddr[3]), .I1(adr_o[3]), .S(n37), .Z(n16) );
  CKMUX2D0BWP12T30P140 U70 ( .I0(haddr[2]), .I1(adr_o[2]), .S(n37), .Z(n15) );
  CKMUX2D0BWP12T30P140 U71 ( .I0(haddr[1]), .I1(adr_o[1]), .S(n37), .Z(n14) );
  AOI221D0BWP12T30P140 U72 ( .A1(htrans[1]), .A2(htrans[0]), .B1(n40), .B2(n39), .C(n38), .ZN(n41) );
  AOI32D0BWP12T30P140 U73 ( .A1(htrans[1]), .A2(n42), .A3(cyc_o), .B1(n41), 
        .B2(n42), .ZN(n44) );
  INVD0BWP12T30P140 U74 ( .I(cyc_o), .ZN(n43) );
  AOI221D0BWP12T30P140 U75 ( .A1(hready), .A2(n44), .B1(n43), .B2(n44), .C(n45), .ZN(n31) );
  OR2D0BWP12T30P140 U76 ( .A1(ack_i), .A2(n45), .Z(N50) );
  IND2D1BWP12T30P140 U77 ( .A1(stb_o), .B1(hresetn), .ZN(N49) );
  INR2D1BWP12T30P140 U78 ( .A1(hresp[0]), .B1(n46), .ZN(n12) );
  INR2D1BWP12T30P140 U79 ( .A1(hresp[1]), .B1(n46), .ZN(n11) );
endmodule

