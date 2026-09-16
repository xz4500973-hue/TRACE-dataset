/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:46:59 2026
/////////////////////////////////////////////////////////////


module traffic_light ( rst_n, clk, pass_request, clock, red, yellow, green );
  output [7:0] clock;
  input rst_n, clk, pass_request;
  output red, yellow, green;
  wire   p_red, p_green, p_yellow, N6, N7, N8, N29, N30, N31, N32, N33, N34,
         N35, N36, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [1:0] state;

  DFSNQD1BWP12T30P140 cnt_reg_1_ ( .D(N30), .CP(clk), .SDN(rst_n), .Q(clock[1]) );
  DFSNQD1BWP12T30P140 cnt_reg_3_ ( .D(N32), .CP(clk), .SDN(rst_n), .Q(clock[3]) );
  DFCNQD1BWP12T30P140 yellow_reg ( .D(p_yellow), .CP(clk), .CDN(rst_n), .Q(
        yellow) );
  DFCNQD1BWP12T30P140 red_reg ( .D(p_red), .CP(clk), .CDN(rst_n), .Q(red) );
  DFCNQD1BWP12T30P140 cnt_reg_5_ ( .D(N34), .CP(clk), .CDN(rst_n), .Q(clock[5]) );
  DFCNQD1BWP12T30P140 green_reg ( .D(p_green), .CP(clk), .CDN(rst_n), .Q(green) );
  DFCNQD1BWP12T30P140 cnt_reg_4_ ( .D(N33), .CP(clk), .CDN(rst_n), .Q(clock[4]) );
  DFCNQD1BWP12T30P140 cnt_reg_6_ ( .D(N35), .CP(clk), .CDN(rst_n), .Q(clock[6]) );
  DFCNQD1BWP12T30P140 cnt_reg_7_ ( .D(N36), .CP(clk), .CDN(rst_n), .Q(clock[7]) );
  DFCNQD1BWP12T30P140 state_reg_1_ ( .D(n20), .CP(clk), .CDN(rst_n), .Q(
        state[1]) );
  DFCNQD1BWP12T30P140 cnt_reg_0_ ( .D(N29), .CP(clk), .CDN(rst_n), .Q(clock[0]) );
  DFCNQD1BWP12T30P140 state_reg_0_ ( .D(n19), .CP(clk), .CDN(rst_n), .Q(
        state[0]) );
  DFCNQD1BWP12T30P140 cnt_reg_2_ ( .D(N31), .CP(clk), .CDN(rst_n), .Q(clock[2]) );
  DFCNQD1BWP12T30P140 p_yellow_reg ( .D(N8), .CP(clk), .CDN(rst_n), .Q(
        p_yellow) );
  DFCNQD1BWP12T30P140 p_green_reg ( .D(N7), .CP(clk), .CDN(rst_n), .Q(p_green)
         );
  DFCNQD1BWP12T30P140 p_red_reg ( .D(N6), .CP(clk), .CDN(rst_n), .Q(p_red) );
  INVD0BWP12T30P140 U34 ( .I(state[0]), .ZN(n49) );
  NR2D0BWP12T30P140 U35 ( .A1(state[1]), .A2(n49), .ZN(N6) );
  IND2D1BWP12T30P140 U36 ( .A1(yellow), .B1(p_yellow), .ZN(n46) );
  INVD0BWP12T30P140 U37 ( .I(n46), .ZN(n26) );
  IND2D1BWP12T30P140 U38 ( .A1(red), .B1(p_red), .ZN(n51) );
  ND2D0BWP12T30P140 U39 ( .A1(clock[0]), .A2(clock[1]), .ZN(n50) );
  INVD0BWP12T30P140 U40 ( .I(clock[2]), .ZN(n21) );
  INVD0BWP12T30P140 U41 ( .I(clock[3]), .ZN(n23) );
  AOI21D0BWP12T30P140 U42 ( .A1(n50), .A2(n21), .B(n23), .ZN(n22) );
  OR4D0BWP12T30P140 U43 ( .A1(clock[7]), .A2(clock[6]), .A3(clock[5]), .A4(
        clock[4]), .Z(n36) );
  OAI211D0BWP12T30P140 U44 ( .A1(n22), .A2(n36), .B(green), .C(pass_request), 
        .ZN(n53) );
  IND2D1BWP12T30P140 U45 ( .A1(green), .B1(p_green), .ZN(n44) );
  AN2D0BWP12T30P140 U46 ( .A1(n44), .A2(n46), .Z(n55) );
  ND3D0BWP12T30P140 U47 ( .A1(n51), .A2(n53), .A3(n55), .ZN(n39) );
  INVD0BWP12T30P140 U48 ( .I(n39), .ZN(n43) );
  NR3D0BWP12T30P140 U49 ( .A1(clock[0]), .A2(clock[1]), .A3(clock[2]), .ZN(n42) );
  ND2D0BWP12T30P140 U50 ( .A1(n42), .A2(n23), .ZN(n30) );
  OAI21D0BWP12T30P140 U51 ( .A1(n42), .A2(n23), .B(n30), .ZN(n24) );
  ND2D0BWP12T30P140 U52 ( .A1(n53), .A2(n44), .ZN(n38) );
  AOI21D0BWP12T30P140 U53 ( .A1(n43), .A2(n24), .B(n38), .ZN(n25) );
  OAI21D0BWP12T30P140 U54 ( .A1(n26), .A2(n51), .B(n25), .ZN(N32) );
  NR2D0BWP12T30P140 U55 ( .A1(clock[4]), .A2(n30), .ZN(n29) );
  INVD0BWP12T30P140 U56 ( .I(clock[5]), .ZN(n27) );
  ND2D0BWP12T30P140 U57 ( .A1(n29), .A2(n27), .ZN(n32) );
  OA21D0BWP12T30P140 U58 ( .A1(n29), .A2(n27), .B(n32), .Z(n28) );
  OAI21D0BWP12T30P140 U59 ( .A1(n28), .A2(n39), .B(n44), .ZN(N34) );
  AOI21D0BWP12T30P140 U60 ( .A1(clock[4]), .A2(n30), .B(n29), .ZN(n31) );
  OAI21D0BWP12T30P140 U61 ( .A1(n31), .A2(n39), .B(n44), .ZN(N33) );
  NR2D0BWP12T30P140 U62 ( .A1(clock[6]), .A2(n32), .ZN(n35) );
  AOI21D0BWP12T30P140 U63 ( .A1(n32), .A2(clock[6]), .B(n35), .ZN(n33) );
  NR2D0BWP12T30P140 U64 ( .A1(n39), .A2(n33), .ZN(N35) );
  NR2D0BWP12T30P140 U65 ( .A1(clock[7]), .A2(n35), .ZN(n34) );
  AOI211D0BWP12T30P140 U66 ( .A1(clock[7]), .A2(n35), .B(n39), .C(n34), .ZN(
        N36) );
  NR4D0BWP12T30P140 U67 ( .A1(clock[3]), .A2(clock[2]), .A3(n36), .A4(n50), 
        .ZN(n37) );
  INVD0BWP12T30P140 U68 ( .I(state[1]), .ZN(n48) );
  INVD0BWP12T30P140 U69 ( .I(n37), .ZN(n41) );
  AOI22D0BWP12T30P140 U70 ( .A1(n37), .A2(n49), .B1(n48), .B2(n41), .ZN(n20)
         );
  OAI22D0BWP12T30P140 U71 ( .A1(clock[0]), .A2(n39), .B1(n38), .B2(n46), .ZN(
        N29) );
  ND2D0BWP12T30P140 U72 ( .A1(state[0]), .A2(n41), .ZN(n40) );
  OAI211D0BWP12T30P140 U73 ( .A1(state[0]), .A2(n41), .B(state[1]), .C(n40), 
        .ZN(n19) );
  INVD0BWP12T30P140 U74 ( .I(n53), .ZN(n47) );
  OR2D0BWP12T30P140 U75 ( .A1(clock[0]), .A2(clock[1]), .Z(n52) );
  AOI32D0BWP12T30P140 U76 ( .A1(clock[2]), .A2(n43), .A3(n52), .B1(n42), .B2(
        n43), .ZN(n45) );
  OAI211D0BWP12T30P140 U77 ( .A1(n47), .A2(n46), .B(n45), .C(n44), .ZN(N31) );
  NR2D0BWP12T30P140 U78 ( .A1(state[0]), .A2(n48), .ZN(N8) );
  NR2D0BWP12T30P140 U79 ( .A1(n49), .A2(n48), .ZN(N7) );
  ND3D0BWP12T30P140 U80 ( .A1(n52), .A2(n51), .A3(n50), .ZN(n54) );
  IOA21D0BWP12T30P140 U81 ( .A1(n55), .A2(n54), .B(n53), .ZN(N30) );
endmodule

