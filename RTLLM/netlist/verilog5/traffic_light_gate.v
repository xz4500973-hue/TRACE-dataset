/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sun Jun 21 01:18:56 2026
/////////////////////////////////////////////////////////////


module traffic_light ( rst_n, clk, pass_request, clock, red, yellow, green );
  output [7:0] clock;
  input rst_n, clk, pass_request;
  output red, yellow, green;
  wire   N32, N33, N34, N35, N36, N37, N38, N39, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [1:0] st;

  DFSNQD1BWP12T30P140 cnt_reg_1_ ( .D(N33), .CP(clk), .SDN(rst_n), .Q(clock[1]) );
  DFSNQD1BWP12T30P140 cnt_reg_3_ ( .D(N35), .CP(clk), .SDN(rst_n), .Q(clock[3]) );
  DFCNQD1BWP12T30P140 green_reg ( .D(n19), .CP(clk), .CDN(rst_n), .Q(green) );
  DFCNQD1BWP12T30P140 yellow_reg ( .D(n17), .CP(clk), .CDN(rst_n), .Q(yellow)
         );
  DFCNQD1BWP12T30P140 red_reg ( .D(n18), .CP(clk), .CDN(rst_n), .Q(red) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(N37), .CP(clk), .CDN(rst_n), .Q(clock[5]) );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(N39), .CP(clk), .CDN(rst_n), .Q(clock[7]) );
  DFCNQD1BWP12T30P140 st_reg_0_ ( .D(n15), .CP(clk), .CDN(rst_n), .Q(st[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N34), .CP(clk), .CDN(rst_n), .Q(clock[2]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(N38), .CP(clk), .CDN(rst_n), .Q(clock[6]) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(N36), .CP(clk), .CDN(rst_n), .Q(clock[4]) );
  DFCNQD1BWP12T30P140 st_reg_1_ ( .D(n16), .CP(clk), .CDN(rst_n), .Q(st[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N32), .CP(clk), .CDN(rst_n), .Q(clock[0]) );
  INVD0BWP12T30P140 U30 ( .I(st[0]), .ZN(n30) );
  NR2D0BWP12T30P140 U31 ( .A1(st[1]), .A2(n30), .ZN(n19) );
  INVD0BWP12T30P140 U32 ( .I(clock[3]), .ZN(n24) );
  INVD0BWP12T30P140 U33 ( .I(clock[2]), .ZN(n22) );
  NR4D0BWP12T30P140 U34 ( .A1(clock[7]), .A2(clock[6]), .A3(clock[5]), .A4(
        clock[4]), .ZN(n21) );
  OAI21D0BWP12T30P140 U35 ( .A1(n24), .A2(n22), .B(n21), .ZN(n20) );
  ND3D0BWP12T30P140 U36 ( .A1(n20), .A2(pass_request), .A3(n19), .ZN(n47) );
  INVD0BWP12T30P140 U37 ( .I(n47), .ZN(n38) );
  ND3D0BWP12T30P140 U38 ( .A1(n22), .A2(clock[0]), .A3(n21), .ZN(n23) );
  NR3D0BWP12T30P140 U39 ( .A1(clock[3]), .A2(clock[1]), .A3(n23), .ZN(n41) );
  ND2D0BWP12T30P140 U40 ( .A1(n19), .A2(n41), .ZN(n39) );
  OAI21D0BWP12T30P140 U41 ( .A1(n38), .A2(clock[0]), .B(n39), .ZN(N32) );
  NR2D0BWP12T30P140 U42 ( .A1(st[0]), .A2(st[1]), .ZN(n18) );
  AOI21D0BWP12T30P140 U43 ( .A1(st[1]), .A2(n41), .B(n38), .ZN(n27) );
  NR3D0BWP12T30P140 U44 ( .A1(clock[2]), .A2(clock[1]), .A3(clock[0]), .ZN(n31) );
  ND2D0BWP12T30P140 U45 ( .A1(n31), .A2(n24), .ZN(n36) );
  ND2D0BWP12T30P140 U46 ( .A1(n18), .A2(n41), .ZN(n45) );
  IND2D1BWP12T30P140 U47 ( .A1(n31), .B1(clock[3]), .ZN(n25) );
  ND4D0BWP12T30P140 U48 ( .A1(n27), .A2(n36), .A3(n45), .A4(n25), .ZN(N35) );
  INVD0BWP12T30P140 U49 ( .I(st[1]), .ZN(n40) );
  NR2D0BWP12T30P140 U50 ( .A1(st[0]), .A2(n40), .ZN(n17) );
  NR2D0BWP12T30P140 U51 ( .A1(clock[4]), .A2(n36), .ZN(n44) );
  INVD0BWP12T30P140 U52 ( .I(clock[5]), .ZN(n43) );
  ND2D0BWP12T30P140 U53 ( .A1(n44), .A2(n43), .ZN(n42) );
  NR2D0BWP12T30P140 U54 ( .A1(clock[6]), .A2(n42), .ZN(n34) );
  OAI21D0BWP12T30P140 U55 ( .A1(clock[7]), .A2(n34), .B(n47), .ZN(n26) );
  AOI21D0BWP12T30P140 U56 ( .A1(clock[7]), .A2(n34), .B(n26), .ZN(N39) );
  INVD0BWP12T30P140 U57 ( .I(clock[0]), .ZN(n29) );
  INVD0BWP12T30P140 U58 ( .I(clock[1]), .ZN(n28) );
  ND2D0BWP12T30P140 U59 ( .A1(n28), .A2(n29), .ZN(n32) );
  OAI211D0BWP12T30P140 U60 ( .A1(n29), .A2(n28), .B(n27), .C(n32), .ZN(N33) );
  OAI21D0BWP12T30P140 U61 ( .A1(n41), .A2(n30), .B(n45), .ZN(n15) );
  AOI21D0BWP12T30P140 U62 ( .A1(clock[2]), .A2(n32), .B(n31), .ZN(n33) );
  MOAI22D0BWP12T30P140 U63 ( .A1(n38), .A2(n33), .B1(n40), .B2(n41), .ZN(N34)
         );
  AOI21D0BWP12T30P140 U64 ( .A1(clock[6]), .A2(n42), .B(n34), .ZN(n35) );
  NR2D0BWP12T30P140 U65 ( .A1(n38), .A2(n35), .ZN(N38) );
  AOI21D0BWP12T30P140 U66 ( .A1(clock[4]), .A2(n36), .B(n44), .ZN(n37) );
  OAI21D0BWP12T30P140 U67 ( .A1(n38), .A2(n37), .B(n45), .ZN(N36) );
  OAI21D0BWP12T30P140 U68 ( .A1(n41), .A2(n40), .B(n39), .ZN(n16) );
  OAI21D0BWP12T30P140 U69 ( .A1(n44), .A2(n43), .B(n42), .ZN(n46) );
  IOA21D0BWP12T30P140 U70 ( .A1(n47), .A2(n46), .B(n45), .ZN(N37) );
endmodule

