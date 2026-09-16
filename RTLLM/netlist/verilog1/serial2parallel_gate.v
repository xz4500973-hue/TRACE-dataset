/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:44:39 2026
/////////////////////////////////////////////////////////////


module serial2parallel ( clk, rst_n, din_serial, din_valid, dout_parallel, 
        dout_valid );
  output [7:0] dout_parallel;
  input clk, rst_n, din_serial, din_valid;
  output dout_valid;
  wire   N16, N17, N18, N19, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [3:0] cnt;
  wire   [7:0] din_tmp;

  DFCNQD1BWP12T30P140 dout_valid_reg ( .D(n33), .CP(clk), .CDN(rst_n), .Q(
        dout_valid) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_6_ ( .D(n23), .CP(n37), .CDN(n35), .Q(
        dout_parallel[6]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_5_ ( .D(n22), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[5]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_4_ ( .D(n21), .CP(n37), .CDN(n35), .Q(
        dout_parallel[4]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_3_ ( .D(n20), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[3]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_2_ ( .D(n19), .CP(n37), .CDN(n35), .Q(
        dout_parallel[2]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_1_ ( .D(n18), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[1]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_0_ ( .D(n17), .CP(n37), .CDN(n35), .Q(
        dout_parallel[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N19), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 din_tmp_reg_1_ ( .D(n31), .CP(clk), .CDN(rst_n), .Q(
        din_tmp[1]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_2_ ( .D(n30), .CP(n37), .CDN(n35), .Q(
        din_tmp[2]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_3_ ( .D(n29), .CP(clk), .CDN(rst_n), .Q(
        din_tmp[3]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_4_ ( .D(n28), .CP(n37), .CDN(n35), .Q(
        din_tmp[4]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_5_ ( .D(n27), .CP(clk), .CDN(rst_n), .Q(
        din_tmp[5]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_6_ ( .D(n26), .CP(n37), .CDN(n35), .Q(
        din_tmp[6]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_7_ ( .D(n24), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[7]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_7_ ( .D(n25), .CP(n37), .CDN(n35), .Q(
        din_tmp[7]) );
  DFCNQD1BWP12T30P140 din_tmp_reg_0_ ( .D(n32), .CP(clk), .CDN(rst_n), .Q(
        din_tmp[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N18), .CP(n37), .CDN(n35), .Q(cnt[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N17), .CP(n37), .CDN(n35), .Q(cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N16), .CP(n37), .CDN(n35), .Q(cnt[0]) );
  INVD0BWP12T30P140 U40 ( .I(rst_n), .ZN(n34) );
  INVD0BWP12T30P140 U41 ( .I(n34), .ZN(n35) );
  INVD0BWP12T30P140 U42 ( .I(clk), .ZN(n36) );
  INVD0BWP12T30P140 U43 ( .I(n36), .ZN(n37) );
  INVD0BWP12T30P140 U44 ( .I(cnt[3]), .ZN(n40) );
  NR4D0BWP12T30P140 U45 ( .A1(cnt[1]), .A2(cnt[2]), .A3(cnt[0]), .A4(n40), 
        .ZN(n33) );
  INVD0BWP12T30P140 U46 ( .I(n33), .ZN(n48) );
  ND2D0BWP12T30P140 U47 ( .A1(din_valid), .A2(n48), .ZN(n38) );
  NR2D0BWP12T30P140 U48 ( .A1(cnt[0]), .A2(n38), .ZN(N16) );
  INVD0BWP12T30P140 U49 ( .I(din_tmp[6]), .ZN(n49) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n33), .A2(n49), .B1(dout_parallel[6]), .B2(
        n33), .ZN(n23) );
  INVD0BWP12T30P140 U51 ( .I(din_tmp[5]), .ZN(n47) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n33), .A2(n47), .B1(dout_parallel[5]), .B2(
        n33), .ZN(n22) );
  INVD0BWP12T30P140 U53 ( .I(din_tmp[4]), .ZN(n45) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n33), .A2(n45), .B1(dout_parallel[4]), .B2(
        n33), .ZN(n21) );
  INVD0BWP12T30P140 U55 ( .I(din_tmp[3]), .ZN(n44) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n33), .A2(n44), .B1(dout_parallel[3]), .B2(
        n33), .ZN(n20) );
  INVD0BWP12T30P140 U57 ( .I(din_tmp[2]), .ZN(n43) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n33), .A2(n43), .B1(dout_parallel[2]), .B2(
        n33), .ZN(n19) );
  INVD0BWP12T30P140 U59 ( .I(din_tmp[1]), .ZN(n42) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n33), .A2(n42), .B1(dout_parallel[1]), .B2(
        n33), .ZN(n18) );
  INVD0BWP12T30P140 U61 ( .I(din_tmp[0]), .ZN(n41) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n33), .A2(n41), .B1(dout_parallel[0]), .B2(
        n33), .ZN(n17) );
  ND3D0BWP12T30P140 U63 ( .A1(cnt[2]), .A2(cnt[1]), .A3(cnt[0]), .ZN(n39) );
  ND3D0BWP12T30P140 U64 ( .A1(n48), .A2(n39), .A3(din_valid), .ZN(n51) );
  ND2D0BWP12T30P140 U65 ( .A1(din_valid), .A2(n40), .ZN(n46) );
  OAI22D0BWP12T30P140 U66 ( .A1(n40), .A2(n51), .B1(n46), .B2(n39), .ZN(N19)
         );
  INVD0BWP12T30P140 U67 ( .I(n46), .ZN(n50) );
  AOI22D0BWP12T30P140 U68 ( .A1(n50), .A2(n41), .B1(n42), .B2(n46), .ZN(n31)
         );
  AOI22D0BWP12T30P140 U69 ( .A1(n50), .A2(n42), .B1(n43), .B2(n46), .ZN(n30)
         );
  AOI22D0BWP12T30P140 U70 ( .A1(n50), .A2(n43), .B1(n44), .B2(n46), .ZN(n29)
         );
  AOI22D0BWP12T30P140 U71 ( .A1(n50), .A2(n44), .B1(n45), .B2(n46), .ZN(n28)
         );
  AOI22D0BWP12T30P140 U72 ( .A1(n50), .A2(n45), .B1(n47), .B2(n46), .ZN(n27)
         );
  AOI22D0BWP12T30P140 U73 ( .A1(n50), .A2(n47), .B1(n49), .B2(n46), .ZN(n26)
         );
  CKMUX2D0BWP12T30P140 U74 ( .I0(din_tmp[7]), .I1(dout_parallel[7]), .S(n48), 
        .Z(n24) );
  MAOI22D0BWP12T30P140 U75 ( .A1(n50), .A2(n49), .B1(din_tmp[7]), .B2(n50), 
        .ZN(n25) );
  CKMUX2D0BWP12T30P140 U76 ( .I0(din_tmp[0]), .I1(din_serial), .S(n50), .Z(n32) );
  INVD0BWP12T30P140 U77 ( .I(cnt[2]), .ZN(n52) );
  ND2D0BWP12T30P140 U78 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n53) );
  AOI21D0BWP12T30P140 U79 ( .A1(n52), .A2(n53), .B(n51), .ZN(N18) );
  OA211D0BWP12T30P140 U80 ( .A1(cnt[1]), .A2(cnt[0]), .B(din_valid), .C(n53), 
        .Z(N17) );
endmodule

