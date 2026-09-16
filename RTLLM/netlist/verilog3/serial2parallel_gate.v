/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 00:31:40 2026
/////////////////////////////////////////////////////////////


module serial2parallel ( clk, rst_n, din_serial, din_valid, dout_parallel, 
        dout_valid );
  output [7:0] dout_parallel;
  input clk, rst_n, din_serial, din_valid;
  output dout_valid;
  wire   N12, N13, N14, N15, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [3:0] cnt;
  wire   [7:0] sr;

  DFCNQD1BWP12T30P140 dout_valid_reg ( .D(n34), .CP(clk), .CDN(rst_n), .Q(
        dout_valid) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_0_ ( .D(n25), .CP(n38), .CDN(n36), .Q(
        dout_parallel[0]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_1_ ( .D(n24), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[1]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_2_ ( .D(n23), .CP(n38), .CDN(n36), .Q(
        dout_parallel[2]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_3_ ( .D(n22), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[3]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_4_ ( .D(n21), .CP(n38), .CDN(n36), .Q(
        dout_parallel[4]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_5_ ( .D(n20), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[5]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_6_ ( .D(n19), .CP(n38), .CDN(n36), .Q(
        dout_parallel[6]) );
  DFCNQD1BWP12T30P140 dout_parallel_reg_7_ ( .D(n18), .CP(clk), .CDN(rst_n), 
        .Q(dout_parallel[7]) );
  DFCNQD1BWP12T30P140 sr_reg_1_ ( .D(n32), .CP(n38), .CDN(n36), .Q(sr[1]) );
  DFCNQD1BWP12T30P140 sr_reg_2_ ( .D(n31), .CP(clk), .CDN(rst_n), .Q(sr[2]) );
  DFCNQD1BWP12T30P140 sr_reg_3_ ( .D(n30), .CP(n38), .CDN(n36), .Q(sr[3]) );
  DFCNQD1BWP12T30P140 sr_reg_4_ ( .D(n29), .CP(clk), .CDN(rst_n), .Q(sr[4]) );
  DFCNQD1BWP12T30P140 sr_reg_5_ ( .D(n28), .CP(n38), .CDN(n36), .Q(sr[5]) );
  DFCNQD1BWP12T30P140 sr_reg_6_ ( .D(n27), .CP(clk), .CDN(rst_n), .Q(sr[6]) );
  DFCNQD1BWP12T30P140 sr_reg_7_ ( .D(n26), .CP(n38), .CDN(n36), .Q(sr[7]) );
  DFCNQD1BWP12T30P140 cnt_reg_3_ ( .D(N15), .CP(clk), .CDN(rst_n), .Q(cnt[3])
         );
  DFCNQD1BWP12T30P140 sr_reg_0_ ( .D(n33), .CP(n38), .CDN(n36), .Q(sr[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N14), .CP(n38), .CDN(n36), .Q(cnt[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_1_ ( .D(N13), .CP(n38), .CDN(n36), .Q(cnt[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N12), .CP(clk), .CDN(rst_n), .Q(cnt[0])
         );
  INVD0BWP12T30P140 U41 ( .I(rst_n), .ZN(n35) );
  INVD0BWP12T30P140 U42 ( .I(n35), .ZN(n36) );
  INVD0BWP12T30P140 U43 ( .I(clk), .ZN(n37) );
  INVD0BWP12T30P140 U44 ( .I(n37), .ZN(n38) );
  INVD0BWP12T30P140 U45 ( .I(din_valid), .ZN(n51) );
  NR2D0BWP12T30P140 U46 ( .A1(cnt[0]), .A2(n51), .ZN(N12) );
  INVD0BWP12T30P140 U47 ( .I(cnt[3]), .ZN(n48) );
  NR4D0BWP12T30P140 U48 ( .A1(cnt[0]), .A2(cnt[1]), .A3(cnt[2]), .A4(n48), 
        .ZN(n34) );
  INVD0BWP12T30P140 U49 ( .I(sr[0]), .ZN(n39) );
  MAOI22D0BWP12T30P140 U50 ( .A1(n34), .A2(n39), .B1(dout_parallel[0]), .B2(
        n34), .ZN(n25) );
  INVD0BWP12T30P140 U51 ( .I(sr[1]), .ZN(n40) );
  MAOI22D0BWP12T30P140 U52 ( .A1(n34), .A2(n40), .B1(dout_parallel[1]), .B2(
        n34), .ZN(n24) );
  INVD0BWP12T30P140 U53 ( .I(sr[2]), .ZN(n41) );
  MAOI22D0BWP12T30P140 U54 ( .A1(n34), .A2(n41), .B1(dout_parallel[2]), .B2(
        n34), .ZN(n23) );
  INVD0BWP12T30P140 U55 ( .I(sr[3]), .ZN(n42) );
  MAOI22D0BWP12T30P140 U56 ( .A1(n34), .A2(n42), .B1(dout_parallel[3]), .B2(
        n34), .ZN(n22) );
  INVD0BWP12T30P140 U57 ( .I(sr[4]), .ZN(n43) );
  MAOI22D0BWP12T30P140 U58 ( .A1(n34), .A2(n43), .B1(dout_parallel[4]), .B2(
        n34), .ZN(n21) );
  INVD0BWP12T30P140 U59 ( .I(sr[5]), .ZN(n44) );
  MAOI22D0BWP12T30P140 U60 ( .A1(n34), .A2(n44), .B1(dout_parallel[5]), .B2(
        n34), .ZN(n20) );
  INVD0BWP12T30P140 U61 ( .I(sr[6]), .ZN(n46) );
  MAOI22D0BWP12T30P140 U62 ( .A1(n34), .A2(n46), .B1(dout_parallel[6]), .B2(
        n34), .ZN(n19) );
  INVD0BWP12T30P140 U63 ( .I(sr[7]), .ZN(n45) );
  MAOI22D0BWP12T30P140 U64 ( .A1(n34), .A2(n45), .B1(dout_parallel[7]), .B2(
        n34), .ZN(n18) );
  NR2D0BWP12T30P140 U65 ( .A1(n51), .A2(n34), .ZN(n50) );
  INVD0BWP12T30P140 U66 ( .I(n50), .ZN(n47) );
  AOI22D0BWP12T30P140 U67 ( .A1(n50), .A2(n39), .B1(n40), .B2(n47), .ZN(n32)
         );
  AOI22D0BWP12T30P140 U68 ( .A1(n50), .A2(n40), .B1(n41), .B2(n47), .ZN(n31)
         );
  AOI22D0BWP12T30P140 U69 ( .A1(n50), .A2(n41), .B1(n42), .B2(n47), .ZN(n30)
         );
  AOI22D0BWP12T30P140 U70 ( .A1(n50), .A2(n42), .B1(n43), .B2(n47), .ZN(n29)
         );
  AOI22D0BWP12T30P140 U71 ( .A1(n50), .A2(n43), .B1(n44), .B2(n47), .ZN(n28)
         );
  AOI22D0BWP12T30P140 U72 ( .A1(n50), .A2(n44), .B1(n46), .B2(n47), .ZN(n27)
         );
  AOI22D0BWP12T30P140 U73 ( .A1(n50), .A2(n46), .B1(n45), .B2(n47), .ZN(n26)
         );
  ND3D0BWP12T30P140 U74 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .ZN(n49) );
  INVD0BWP12T30P140 U75 ( .I(n49), .ZN(n52) );
  OAI33D0BWP12T30P140 U76 ( .A1(cnt[3]), .A2(n51), .A3(n49), .B1(n48), .B2(n47), .B3(n52), .ZN(N15) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(sr[0]), .I1(din_serial), .S(n50), .Z(n33) );
  INVD0BWP12T30P140 U78 ( .I(cnt[2]), .ZN(n53) );
  ND2D0BWP12T30P140 U79 ( .A1(cnt[1]), .A2(cnt[0]), .ZN(n54) );
  AOI211D0BWP12T30P140 U80 ( .A1(n53), .A2(n54), .B(n52), .C(n51), .ZN(N14) );
  OA211D0BWP12T30P140 U81 ( .A1(cnt[1]), .A2(cnt[0]), .B(din_valid), .C(n54), 
        .Z(N13) );
endmodule

