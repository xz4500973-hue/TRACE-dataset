/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Sat Jun 20 23:50:42 2026
/////////////////////////////////////////////////////////////


module adder_pipe_64bit ( clk, rst_n, i_en, adda, addb, result, o_en );
  input [63:0] adda;
  input [63:0] addb;
  output [64:0] result;
  input clk, rst_n, i_en;
  output o_en;
  wire   en1, en2, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213;
  wire   [64:0] stg1;

  DFCNQD1BWP12T30P140 o_en_reg ( .D(en2), .CP(n211), .CDN(n203), .Q(o_en) );
  DFCNQD1BWP12T30P140 stg2_reg_64_ ( .D(stg1[64]), .CP(n210), .CDN(n206), .Q(
        result[64]) );
  DFCNQD1BWP12T30P140 stg2_reg_63_ ( .D(stg1[63]), .CP(n209), .CDN(n204), .Q(
        result[63]) );
  DFCNQD1BWP12T30P140 stg2_reg_62_ ( .D(stg1[62]), .CP(clk), .CDN(n203), .Q(
        result[62]) );
  DFCNQD1BWP12T30P140 stg2_reg_61_ ( .D(stg1[61]), .CP(n208), .CDN(rst_n), .Q(
        result[61]) );
  DFCNQD1BWP12T30P140 stg2_reg_60_ ( .D(stg1[60]), .CP(n213), .CDN(n207), .Q(
        result[60]) );
  DFCNQD1BWP12T30P140 stg2_reg_59_ ( .D(stg1[59]), .CP(n212), .CDN(n202), .Q(
        result[59]) );
  DFCNQD1BWP12T30P140 stg2_reg_58_ ( .D(stg1[58]), .CP(n211), .CDN(rst_n), .Q(
        result[58]) );
  DFCNQD1BWP12T30P140 stg2_reg_57_ ( .D(stg1[57]), .CP(n210), .CDN(n205), .Q(
        result[57]) );
  DFCNQD1BWP12T30P140 stg2_reg_56_ ( .D(stg1[56]), .CP(n209), .CDN(n207), .Q(
        result[56]) );
  DFCNQD1BWP12T30P140 stg2_reg_55_ ( .D(stg1[55]), .CP(clk), .CDN(n202), .Q(
        result[55]) );
  DFCNQD1BWP12T30P140 stg2_reg_54_ ( .D(stg1[54]), .CP(n213), .CDN(n202), .Q(
        result[54]) );
  DFCNQD1BWP12T30P140 stg2_reg_53_ ( .D(stg1[53]), .CP(n213), .CDN(n202), .Q(
        result[53]) );
  DFCNQD1BWP12T30P140 stg2_reg_52_ ( .D(stg1[52]), .CP(n213), .CDN(n202), .Q(
        result[52]) );
  DFCNQD1BWP12T30P140 stg2_reg_51_ ( .D(stg1[51]), .CP(n213), .CDN(n202), .Q(
        result[51]) );
  DFCNQD1BWP12T30P140 stg2_reg_50_ ( .D(stg1[50]), .CP(n213), .CDN(n202), .Q(
        result[50]) );
  DFCNQD1BWP12T30P140 stg2_reg_49_ ( .D(stg1[49]), .CP(n213), .CDN(n202), .Q(
        result[49]) );
  DFCNQD1BWP12T30P140 stg2_reg_48_ ( .D(stg1[48]), .CP(n213), .CDN(n202), .Q(
        result[48]) );
  DFCNQD1BWP12T30P140 stg2_reg_47_ ( .D(stg1[47]), .CP(n213), .CDN(n202), .Q(
        result[47]) );
  DFCNQD1BWP12T30P140 stg2_reg_46_ ( .D(stg1[46]), .CP(n213), .CDN(n202), .Q(
        result[46]) );
  DFCNQD1BWP12T30P140 stg2_reg_45_ ( .D(stg1[45]), .CP(n213), .CDN(n202), .Q(
        result[45]) );
  DFCNQD1BWP12T30P140 stg2_reg_44_ ( .D(stg1[44]), .CP(n213), .CDN(n202), .Q(
        result[44]) );
  DFCNQD1BWP12T30P140 stg2_reg_43_ ( .D(stg1[43]), .CP(n213), .CDN(n202), .Q(
        result[43]) );
  DFCNQD1BWP12T30P140 stg2_reg_42_ ( .D(stg1[42]), .CP(n212), .CDN(n203), .Q(
        result[42]) );
  DFCNQD1BWP12T30P140 stg2_reg_41_ ( .D(stg1[41]), .CP(n212), .CDN(n203), .Q(
        result[41]) );
  DFCNQD1BWP12T30P140 stg2_reg_40_ ( .D(stg1[40]), .CP(n212), .CDN(n203), .Q(
        result[40]) );
  DFCNQD1BWP12T30P140 stg2_reg_39_ ( .D(stg1[39]), .CP(n212), .CDN(n203), .Q(
        result[39]) );
  DFCNQD1BWP12T30P140 stg2_reg_38_ ( .D(stg1[38]), .CP(n212), .CDN(n203), .Q(
        result[38]) );
  DFCNQD1BWP12T30P140 stg2_reg_37_ ( .D(stg1[37]), .CP(n212), .CDN(n203), .Q(
        result[37]) );
  DFCNQD1BWP12T30P140 stg2_reg_36_ ( .D(stg1[36]), .CP(n212), .CDN(n203), .Q(
        result[36]) );
  DFCNQD1BWP12T30P140 stg2_reg_35_ ( .D(stg1[35]), .CP(n212), .CDN(n203), .Q(
        result[35]) );
  DFCNQD1BWP12T30P140 stg2_reg_34_ ( .D(stg1[34]), .CP(n212), .CDN(n203), .Q(
        result[34]) );
  DFCNQD1BWP12T30P140 stg2_reg_33_ ( .D(stg1[33]), .CP(n212), .CDN(n203), .Q(
        result[33]) );
  DFCNQD1BWP12T30P140 stg2_reg_32_ ( .D(stg1[32]), .CP(n212), .CDN(n203), .Q(
        result[32]) );
  DFCNQD1BWP12T30P140 stg2_reg_31_ ( .D(stg1[31]), .CP(n212), .CDN(n203), .Q(
        result[31]) );
  DFCNQD1BWP12T30P140 stg2_reg_30_ ( .D(stg1[30]), .CP(n211), .CDN(n203), .Q(
        result[30]) );
  DFCNQD1BWP12T30P140 stg2_reg_29_ ( .D(stg1[29]), .CP(n211), .CDN(n204), .Q(
        result[29]) );
  DFCNQD1BWP12T30P140 stg2_reg_28_ ( .D(stg1[28]), .CP(n211), .CDN(n204), .Q(
        result[28]) );
  DFCNQD1BWP12T30P140 stg2_reg_27_ ( .D(stg1[27]), .CP(n211), .CDN(n204), .Q(
        result[27]) );
  DFCNQD1BWP12T30P140 stg2_reg_26_ ( .D(stg1[26]), .CP(n211), .CDN(n204), .Q(
        result[26]) );
  DFCNQD1BWP12T30P140 stg2_reg_25_ ( .D(stg1[25]), .CP(n211), .CDN(n204), .Q(
        result[25]) );
  DFCNQD1BWP12T30P140 stg2_reg_24_ ( .D(stg1[24]), .CP(n211), .CDN(n204), .Q(
        result[24]) );
  DFCNQD1BWP12T30P140 stg2_reg_23_ ( .D(stg1[23]), .CP(n211), .CDN(n204), .Q(
        result[23]) );
  DFCNQD1BWP12T30P140 stg2_reg_22_ ( .D(stg1[22]), .CP(n211), .CDN(n204), .Q(
        result[22]) );
  DFCNQD1BWP12T30P140 stg2_reg_21_ ( .D(stg1[21]), .CP(n211), .CDN(n204), .Q(
        result[21]) );
  DFCNQD1BWP12T30P140 stg2_reg_20_ ( .D(stg1[20]), .CP(n211), .CDN(n204), .Q(
        result[20]) );
  DFCNQD1BWP12T30P140 stg2_reg_19_ ( .D(stg1[19]), .CP(n211), .CDN(n204), .Q(
        result[19]) );
  DFCNQD1BWP12T30P140 stg2_reg_18_ ( .D(stg1[18]), .CP(n210), .CDN(n204), .Q(
        result[18]) );
  DFCNQD1BWP12T30P140 stg2_reg_17_ ( .D(stg1[17]), .CP(n210), .CDN(n204), .Q(
        result[17]) );
  DFCNQD1BWP12T30P140 stg2_reg_16_ ( .D(stg1[16]), .CP(n210), .CDN(n202), .Q(
        result[16]) );
  DFCNQD1BWP12T30P140 stg2_reg_15_ ( .D(stg1[15]), .CP(n210), .CDN(n205), .Q(
        result[15]) );
  DFCNQD1BWP12T30P140 stg2_reg_14_ ( .D(stg1[14]), .CP(n210), .CDN(n206), .Q(
        result[14]) );
  DFCNQD1BWP12T30P140 stg2_reg_13_ ( .D(stg1[13]), .CP(n210), .CDN(n204), .Q(
        result[13]) );
  DFCNQD1BWP12T30P140 stg2_reg_12_ ( .D(stg1[12]), .CP(n210), .CDN(n203), .Q(
        result[12]) );
  DFCNQD1BWP12T30P140 stg2_reg_11_ ( .D(stg1[11]), .CP(n210), .CDN(n207), .Q(
        result[11]) );
  DFCNQD1BWP12T30P140 stg2_reg_10_ ( .D(stg1[10]), .CP(n210), .CDN(n202), .Q(
        result[10]) );
  DFCNQD1BWP12T30P140 stg2_reg_9_ ( .D(stg1[9]), .CP(n210), .CDN(n205), .Q(
        result[9]) );
  DFCNQD1BWP12T30P140 stg2_reg_8_ ( .D(stg1[8]), .CP(n210), .CDN(n206), .Q(
        result[8]) );
  DFCNQD1BWP12T30P140 stg2_reg_7_ ( .D(stg1[7]), .CP(n210), .CDN(n204), .Q(
        result[7]) );
  DFCNQD1BWP12T30P140 stg2_reg_6_ ( .D(stg1[6]), .CP(n209), .CDN(n203), .Q(
        result[6]) );
  DFCNQD1BWP12T30P140 stg2_reg_5_ ( .D(stg1[5]), .CP(n209), .CDN(n207), .Q(
        result[5]) );
  DFCNQD1BWP12T30P140 stg2_reg_4_ ( .D(stg1[4]), .CP(n209), .CDN(rst_n), .Q(
        result[4]) );
  DFCNQD1BWP12T30P140 stg2_reg_3_ ( .D(stg1[3]), .CP(n209), .CDN(n202), .Q(
        result[3]) );
  DFCNQD1BWP12T30P140 stg2_reg_2_ ( .D(stg1[2]), .CP(n209), .CDN(n206), .Q(
        result[2]) );
  DFCNQD1BWP12T30P140 stg2_reg_1_ ( .D(stg1[1]), .CP(n209), .CDN(n206), .Q(
        result[1]) );
  DFCNQD1BWP12T30P140 stg2_reg_0_ ( .D(stg1[0]), .CP(n209), .CDN(n204), .Q(
        result[0]) );
  DFCNQD1BWP12T30P140 en1_reg ( .D(n201), .CP(clk), .CDN(n206), .Q(en1) );
  DFCNQD1BWP12T30P140 en2_reg ( .D(en1), .CP(clk), .CDN(n204), .Q(en2) );
  DFCNQD1BWP12T30P140 stg1_reg_0_ ( .D(n1), .CP(n213), .CDN(n203), .Q(stg1[0])
         );
  DFCNQD1BWP12T30P140 stg1_reg_64_ ( .D(n65), .CP(n209), .CDN(n203), .Q(
        stg1[64]) );
  DFCNQD1BWP12T30P140 stg1_reg_63_ ( .D(n64), .CP(n209), .CDN(n207), .Q(
        stg1[63]) );
  DFCNQD1BWP12T30P140 stg1_reg_62_ ( .D(n63), .CP(n209), .CDN(n202), .Q(
        stg1[62]) );
  DFCNQD1BWP12T30P140 stg1_reg_61_ ( .D(n62), .CP(n209), .CDN(rst_n), .Q(
        stg1[61]) );
  DFCNQD1BWP12T30P140 stg1_reg_60_ ( .D(n61), .CP(n209), .CDN(rst_n), .Q(
        stg1[60]) );
  DFCNQD1BWP12T30P140 stg1_reg_59_ ( .D(n60), .CP(n208), .CDN(rst_n), .Q(
        stg1[59]) );
  DFCNQD1BWP12T30P140 stg1_reg_58_ ( .D(n59), .CP(n208), .CDN(rst_n), .Q(
        stg1[58]) );
  DFCNQD1BWP12T30P140 stg1_reg_57_ ( .D(n58), .CP(n208), .CDN(rst_n), .Q(
        stg1[57]) );
  DFCNQD1BWP12T30P140 stg1_reg_56_ ( .D(n57), .CP(n208), .CDN(rst_n), .Q(
        stg1[56]) );
  DFCNQD1BWP12T30P140 stg1_reg_55_ ( .D(n56), .CP(n208), .CDN(n205), .Q(
        stg1[55]) );
  DFCNQD1BWP12T30P140 stg1_reg_54_ ( .D(n55), .CP(n208), .CDN(n205), .Q(
        stg1[54]) );
  DFCNQD1BWP12T30P140 stg1_reg_53_ ( .D(n54), .CP(n208), .CDN(n205), .Q(
        stg1[53]) );
  DFCNQD1BWP12T30P140 stg1_reg_52_ ( .D(n53), .CP(n208), .CDN(n205), .Q(
        stg1[52]) );
  DFCNQD1BWP12T30P140 stg1_reg_51_ ( .D(n52), .CP(n208), .CDN(n205), .Q(
        stg1[51]) );
  DFCNQD1BWP12T30P140 stg1_reg_50_ ( .D(n51), .CP(n208), .CDN(n205), .Q(
        stg1[50]) );
  DFCNQD1BWP12T30P140 stg1_reg_49_ ( .D(n50), .CP(n208), .CDN(n205), .Q(
        stg1[49]) );
  DFCNQD1BWP12T30P140 stg1_reg_48_ ( .D(n49), .CP(n208), .CDN(n205), .Q(
        stg1[48]) );
  DFCNQD1BWP12T30P140 stg1_reg_47_ ( .D(n48), .CP(n210), .CDN(n205), .Q(
        stg1[47]) );
  DFCNQD1BWP12T30P140 stg1_reg_46_ ( .D(n47), .CP(n209), .CDN(n205), .Q(
        stg1[46]) );
  DFCNQD1BWP12T30P140 stg1_reg_45_ ( .D(n46), .CP(n208), .CDN(n205), .Q(
        stg1[45]) );
  DFCNQD1BWP12T30P140 stg1_reg_44_ ( .D(n45), .CP(clk), .CDN(n205), .Q(
        stg1[44]) );
  DFCNQD1BWP12T30P140 stg1_reg_43_ ( .D(n44), .CP(n209), .CDN(n205), .Q(
        stg1[43]) );
  DFCNQD1BWP12T30P140 stg1_reg_42_ ( .D(n43), .CP(n208), .CDN(rst_n), .Q(
        stg1[42]) );
  DFCNQD1BWP12T30P140 stg1_reg_41_ ( .D(n42), .CP(clk), .CDN(n207), .Q(
        stg1[41]) );
  DFCNQD1BWP12T30P140 stg1_reg_40_ ( .D(n41), .CP(n213), .CDN(n202), .Q(
        stg1[40]) );
  DFCNQD1BWP12T30P140 stg1_reg_39_ ( .D(n40), .CP(n212), .CDN(rst_n), .Q(
        stg1[39]) );
  DFCNQD1BWP12T30P140 stg1_reg_38_ ( .D(n39), .CP(n211), .CDN(n205), .Q(
        stg1[38]) );
  DFCNQD1BWP12T30P140 stg1_reg_37_ ( .D(n38), .CP(n210), .CDN(n205), .Q(
        stg1[37]) );
  DFCNQD1BWP12T30P140 stg1_reg_36_ ( .D(n37), .CP(n209), .CDN(n204), .Q(
        stg1[36]) );
  DFCNQD1BWP12T30P140 stg1_reg_35_ ( .D(n36), .CP(n208), .CDN(n205), .Q(
        stg1[35]) );
  DFCNQD1BWP12T30P140 stg1_reg_34_ ( .D(n35), .CP(n213), .CDN(n206), .Q(
        stg1[34]) );
  DFCNQD1BWP12T30P140 stg1_reg_33_ ( .D(n34), .CP(n213), .CDN(n204), .Q(
        stg1[33]) );
  DFCNQD1BWP12T30P140 stg1_reg_32_ ( .D(n33), .CP(n213), .CDN(n203), .Q(
        stg1[32]) );
  DFCNQD1BWP12T30P140 stg1_reg_31_ ( .D(n32), .CP(n212), .CDN(n207), .Q(
        stg1[31]) );
  DFCNQD1BWP12T30P140 stg1_reg_30_ ( .D(n31), .CP(n211), .CDN(n202), .Q(
        stg1[30]) );
  DFCNQD1BWP12T30P140 stg1_reg_29_ ( .D(n30), .CP(n210), .CDN(n206), .Q(
        stg1[29]) );
  DFCNQD1BWP12T30P140 stg1_reg_28_ ( .D(n29), .CP(n209), .CDN(n206), .Q(
        stg1[28]) );
  DFCNQD1BWP12T30P140 stg1_reg_27_ ( .D(n28), .CP(clk), .CDN(n206), .Q(
        stg1[27]) );
  DFCNQD1BWP12T30P140 stg1_reg_26_ ( .D(n27), .CP(n208), .CDN(n206), .Q(
        stg1[26]) );
  DFCNQD1BWP12T30P140 stg1_reg_25_ ( .D(n26), .CP(n212), .CDN(n206), .Q(
        stg1[25]) );
  DFCNQD1BWP12T30P140 stg1_reg_24_ ( .D(n25), .CP(clk), .CDN(n206), .Q(
        stg1[24]) );
  DFCNQD1BWP12T30P140 stg1_reg_23_ ( .D(n24), .CP(n211), .CDN(n206), .Q(
        stg1[23]) );
  DFCNQD1BWP12T30P140 stg1_reg_22_ ( .D(n23), .CP(n210), .CDN(n206), .Q(
        stg1[22]) );
  DFCNQD1BWP12T30P140 stg1_reg_21_ ( .D(n22), .CP(n209), .CDN(n206), .Q(
        stg1[21]) );
  DFCNQD1BWP12T30P140 stg1_reg_20_ ( .D(n21), .CP(clk), .CDN(n206), .Q(
        stg1[20]) );
  DFCNQD1BWP12T30P140 stg1_reg_19_ ( .D(n20), .CP(n208), .CDN(n206), .Q(
        stg1[19]) );
  DFCNQD1BWP12T30P140 stg1_reg_18_ ( .D(n19), .CP(n212), .CDN(n206), .Q(
        stg1[18]) );
  DFCNQD1BWP12T30P140 stg1_reg_17_ ( .D(n18), .CP(n213), .CDN(n206), .Q(
        stg1[17]) );
  DFCNQD1BWP12T30P140 stg1_reg_16_ ( .D(n17), .CP(n212), .CDN(n207), .Q(
        stg1[16]) );
  DFCNQD1BWP12T30P140 stg1_reg_15_ ( .D(n16), .CP(n211), .CDN(n207), .Q(
        stg1[15]) );
  DFCNQD1BWP12T30P140 stg1_reg_14_ ( .D(n15), .CP(n210), .CDN(n207), .Q(
        stg1[14]) );
  DFCNQD1BWP12T30P140 stg1_reg_13_ ( .D(n14), .CP(clk), .CDN(n207), .Q(
        stg1[13]) );
  DFCNQD1BWP12T30P140 stg1_reg_12_ ( .D(n13), .CP(clk), .CDN(n207), .Q(
        stg1[12]) );
  DFCNQD1BWP12T30P140 stg1_reg_11_ ( .D(n12), .CP(n212), .CDN(n207), .Q(
        stg1[11]) );
  DFCNQD1BWP12T30P140 stg1_reg_10_ ( .D(n11), .CP(n211), .CDN(n207), .Q(
        stg1[10]) );
  DFCNQD1BWP12T30P140 stg1_reg_9_ ( .D(n10), .CP(n210), .CDN(n207), .Q(stg1[9]) );
  DFCNQD1BWP12T30P140 stg1_reg_8_ ( .D(n9), .CP(n209), .CDN(n207), .Q(stg1[8])
         );
  DFCNQD1BWP12T30P140 stg1_reg_7_ ( .D(n8), .CP(n208), .CDN(n207), .Q(stg1[7])
         );
  DFCNQD1BWP12T30P140 stg1_reg_6_ ( .D(n7), .CP(clk), .CDN(n207), .Q(stg1[6])
         );
  DFCNQD1BWP12T30P140 stg1_reg_5_ ( .D(n6), .CP(clk), .CDN(n207), .Q(stg1[5])
         );
  DFCNQD1BWP12T30P140 stg1_reg_4_ ( .D(n5), .CP(n208), .CDN(n207), .Q(stg1[4])
         );
  DFCNQD1BWP12T30P140 stg1_reg_3_ ( .D(n4), .CP(n213), .CDN(rst_n), .Q(stg1[3]) );
  DFCNQD1BWP12T30P140 stg1_reg_2_ ( .D(n3), .CP(n212), .CDN(rst_n), .Q(stg1[2]) );
  DFCNQD1BWP12T30P140 stg1_reg_1_ ( .D(n2), .CP(n211), .CDN(rst_n), .Q(stg1[1]) );
  ND2D0BWP12T30P140 U69 ( .A1(addb[0]), .A2(adda[0]), .ZN(n170) );
  INVD0BWP12T30P140 U70 ( .I(adda[1]), .ZN(n67) );
  INVD0BWP12T30P140 U71 ( .I(addb[1]), .ZN(n69) );
  MAOI222D0BWP12T30P140 U72 ( .A(n170), .B(n67), .C(n69), .ZN(n74) );
  CKMUX2D0BWP12T30P140 U73 ( .I0(stg1[59]), .I1(n68), .S(i_en), .Z(n60) );
  CKBD0BWP12T30P140 U74 ( .I(i_en), .Z(n201) );
  MUX2ND0BWP12T30P140 U75 ( .I0(addb[1]), .I1(n69), .S(n170), .ZN(n70) );
  MAOI22D0BWP12T30P140 U76 ( .A1(adda[1]), .A2(n70), .B1(n70), .B2(adda[1]), 
        .ZN(n71) );
  CKMUX2D0BWP12T30P140 U77 ( .I0(stg1[1]), .I1(n71), .S(n201), .Z(n2) );
  FA1D0BWP12T30P140 U78 ( .A(adda[50]), .B(addb[50]), .CI(n72), .CO(n76), .S(
        n73) );
  CKBD0BWP12T30P140 U79 ( .I(i_en), .Z(n174) );
  CKMUX2D0BWP12T30P140 U80 ( .I0(stg1[50]), .I1(n73), .S(n174), .Z(n51) );
  FA1D0BWP12T30P140 U81 ( .A(adda[2]), .B(addb[2]), .CI(n74), .CO(n78), .S(n75) );
  CKMUX2D0BWP12T30P140 U82 ( .I0(stg1[2]), .I1(n75), .S(n201), .Z(n3) );
  FA1D0BWP12T30P140 U83 ( .A(adda[51]), .B(addb[51]), .CI(n76), .CO(n86), .S(
        n77) );
  CKMUX2D0BWP12T30P140 U84 ( .I0(stg1[51]), .I1(n77), .S(n174), .Z(n52) );
  FA1D0BWP12T30P140 U85 ( .A(adda[3]), .B(addb[3]), .CI(n78), .CO(n84), .S(n79) );
  CKMUX2D0BWP12T30P140 U86 ( .I0(stg1[3]), .I1(n79), .S(n201), .Z(n4) );
  FA1D0BWP12T30P140 U87 ( .A(adda[30]), .B(addb[30]), .CI(n80), .CO(n196), .S(
        n81) );
  CKBD0BWP12T30P140 U88 ( .I(i_en), .Z(n199) );
  CKMUX2D0BWP12T30P140 U89 ( .I0(stg1[30]), .I1(n81), .S(n199), .Z(n31) );
  FA1D0BWP12T30P140 U90 ( .A(adda[49]), .B(addb[49]), .CI(n82), .CO(n72), .S(
        n83) );
  CKMUX2D0BWP12T30P140 U91 ( .I0(stg1[49]), .I1(n83), .S(n174), .Z(n50) );
  FA1D0BWP12T30P140 U92 ( .A(adda[4]), .B(addb[4]), .CI(n84), .CO(n90), .S(n85) );
  CKMUX2D0BWP12T30P140 U93 ( .I0(stg1[4]), .I1(n85), .S(n201), .Z(n5) );
  FA1D0BWP12T30P140 U94 ( .A(adda[52]), .B(addb[52]), .CI(n86), .CO(n94), .S(
        n87) );
  CKMUX2D0BWP12T30P140 U95 ( .I0(stg1[52]), .I1(n87), .S(n174), .Z(n53) );
  FA1D0BWP12T30P140 U96 ( .A(adda[18]), .B(addb[18]), .CI(n88), .CO(n176), .S(
        n89) );
  CKMUX2D0BWP12T30P140 U97 ( .I0(stg1[18]), .I1(n89), .S(n201), .Z(n19) );
  FA1D0BWP12T30P140 U98 ( .A(adda[5]), .B(addb[5]), .CI(n90), .CO(n96), .S(n91) );
  CKMUX2D0BWP12T30P140 U99 ( .I0(stg1[5]), .I1(n91), .S(n201), .Z(n6) );
  FA1D0BWP12T30P140 U100 ( .A(adda[48]), .B(addb[48]), .CI(n92), .CO(n82), .S(
        n93) );
  CKMUX2D0BWP12T30P140 U101 ( .I0(stg1[48]), .I1(n93), .S(n174), .Z(n49) );
  FA1D0BWP12T30P140 U102 ( .A(adda[53]), .B(addb[53]), .CI(n94), .CO(n104), 
        .S(n95) );
  CKMUX2D0BWP12T30P140 U103 ( .I0(stg1[53]), .I1(n95), .S(n174), .Z(n54) );
  FA1D0BWP12T30P140 U104 ( .A(adda[6]), .B(addb[6]), .CI(n96), .CO(n102), .S(
        n97) );
  CKMUX2D0BWP12T30P140 U105 ( .I0(stg1[6]), .I1(n97), .S(n201), .Z(n7) );
  FA1D0BWP12T30P140 U106 ( .A(adda[9]), .B(addb[9]), .CI(n98), .CO(n120), .S(
        n99) );
  CKMUX2D0BWP12T30P140 U107 ( .I0(stg1[9]), .I1(n99), .S(n201), .Z(n10) );
  FA1D0BWP12T30P140 U108 ( .A(adda[47]), .B(addb[47]), .CI(n100), .CO(n92), 
        .S(n101) );
  CKMUX2D0BWP12T30P140 U109 ( .I0(stg1[47]), .I1(n101), .S(n174), .Z(n48) );
  FA1D0BWP12T30P140 U110 ( .A(adda[7]), .B(addb[7]), .CI(n102), .CO(n108), .S(
        n103) );
  CKMUX2D0BWP12T30P140 U111 ( .I0(stg1[7]), .I1(n103), .S(n201), .Z(n8) );
  FA1D0BWP12T30P140 U112 ( .A(adda[54]), .B(addb[54]), .CI(n104), .CO(n112), 
        .S(n105) );
  CKMUX2D0BWP12T30P140 U113 ( .I0(stg1[54]), .I1(n105), .S(n174), .Z(n55) );
  FA1D0BWP12T30P140 U114 ( .A(adda[21]), .B(addb[21]), .CI(n106), .CO(n178), 
        .S(n107) );
  CKMUX2D0BWP12T30P140 U115 ( .I0(stg1[21]), .I1(n107), .S(n199), .Z(n22) );
  FA1D0BWP12T30P140 U116 ( .A(adda[8]), .B(addb[8]), .CI(n108), .CO(n98), .S(
        n109) );
  CKMUX2D0BWP12T30P140 U117 ( .I0(stg1[8]), .I1(n109), .S(n201), .Z(n9) );
  FA1D0BWP12T30P140 U118 ( .A(adda[46]), .B(addb[46]), .CI(n110), .CO(n100), 
        .S(n111) );
  CKMUX2D0BWP12T30P140 U119 ( .I0(stg1[46]), .I1(n111), .S(n174), .Z(n47) );
  FA1D0BWP12T30P140 U120 ( .A(adda[55]), .B(addb[55]), .CI(n112), .CO(n122), 
        .S(n113) );
  CKMUX2D0BWP12T30P140 U121 ( .I0(stg1[55]), .I1(n113), .S(n174), .Z(n56) );
  FA1D0BWP12T30P140 U122 ( .A(adda[57]), .B(addb[57]), .CI(n114), .CO(n140), 
        .S(n115) );
  CKMUX2D0BWP12T30P140 U123 ( .I0(stg1[57]), .I1(n115), .S(n174), .Z(n58) );
  FA1D0BWP12T30P140 U124 ( .A(adda[12]), .B(addb[12]), .CI(n116), .CO(n138), 
        .S(n117) );
  CKMUX2D0BWP12T30P140 U125 ( .I0(stg1[12]), .I1(n117), .S(n201), .Z(n13) );
  FA1D0BWP12T30P140 U126 ( .A(adda[45]), .B(addb[45]), .CI(n118), .CO(n110), 
        .S(n119) );
  CKMUX2D0BWP12T30P140 U127 ( .I0(stg1[45]), .I1(n119), .S(n174), .Z(n46) );
  FA1D0BWP12T30P140 U128 ( .A(adda[10]), .B(addb[10]), .CI(n120), .CO(n126), 
        .S(n121) );
  CKMUX2D0BWP12T30P140 U129 ( .I0(stg1[10]), .I1(n121), .S(n201), .Z(n11) );
  FA1D0BWP12T30P140 U130 ( .A(adda[56]), .B(addb[56]), .CI(n122), .CO(n114), 
        .S(n123) );
  CKMUX2D0BWP12T30P140 U131 ( .I0(stg1[56]), .I1(n123), .S(n174), .Z(n57) );
  FA1D0BWP12T30P140 U132 ( .A(adda[24]), .B(addb[24]), .CI(n124), .CO(n180), 
        .S(n125) );
  CKMUX2D0BWP12T30P140 U133 ( .I0(stg1[24]), .I1(n125), .S(n199), .Z(n25) );
  FA1D0BWP12T30P140 U134 ( .A(adda[11]), .B(addb[11]), .CI(n126), .CO(n116), 
        .S(n127) );
  CKMUX2D0BWP12T30P140 U135 ( .I0(stg1[11]), .I1(n127), .S(n201), .Z(n12) );
  FA1D0BWP12T30P140 U136 ( .A(adda[44]), .B(addb[44]), .CI(n128), .CO(n118), 
        .S(n129) );
  CKMUX2D0BWP12T30P140 U137 ( .I0(stg1[44]), .I1(n129), .S(n174), .Z(n45) );
  FA1D0BWP12T30P140 U138 ( .A(adda[42]), .B(addb[42]), .CI(n130), .CO(n136), 
        .S(n131) );
  CKMUX2D0BWP12T30P140 U139 ( .I0(stg1[42]), .I1(n131), .S(n174), .Z(n43) );
  FA1D0BWP12T30P140 U140 ( .A(adda[28]), .B(addb[28]), .CI(n132), .CO(n198), 
        .S(n133) );
  CKMUX2D0BWP12T30P140 U141 ( .I0(stg1[28]), .I1(n133), .S(n199), .Z(n29) );
  FA1D0BWP12T30P140 U142 ( .A(adda[15]), .B(addb[15]), .CI(n134), .CO(n156), 
        .S(n135) );
  CKMUX2D0BWP12T30P140 U143 ( .I0(stg1[15]), .I1(n135), .S(n201), .Z(n16) );
  FA1D0BWP12T30P140 U144 ( .A(adda[43]), .B(addb[43]), .CI(n136), .CO(n128), 
        .S(n137) );
  CKMUX2D0BWP12T30P140 U145 ( .I0(stg1[43]), .I1(n137), .S(n174), .Z(n44) );
  FA1D0BWP12T30P140 U146 ( .A(adda[13]), .B(addb[13]), .CI(n138), .CO(n144), 
        .S(n139) );
  CKMUX2D0BWP12T30P140 U147 ( .I0(stg1[13]), .I1(n139), .S(n201), .Z(n14) );
  FA1D0BWP12T30P140 U148 ( .A(adda[58]), .B(addb[58]), .CI(n140), .CO(n150), 
        .S(n141) );
  CKMUX2D0BWP12T30P140 U149 ( .I0(stg1[58]), .I1(n141), .S(n174), .Z(n59) );
  FA1D0BWP12T30P140 U150 ( .A(adda[27]), .B(addb[27]), .CI(n142), .CO(n132), 
        .S(n143) );
  CKMUX2D0BWP12T30P140 U151 ( .I0(stg1[27]), .I1(n143), .S(n199), .Z(n28) );
  FA1D0BWP12T30P140 U152 ( .A(adda[14]), .B(addb[14]), .CI(n144), .CO(n134), 
        .S(n145) );
  CKMUX2D0BWP12T30P140 U153 ( .I0(stg1[14]), .I1(n145), .S(n199), .Z(n15) );
  FA1D0BWP12T30P140 U154 ( .A(adda[17]), .B(addb[17]), .CI(n146), .CO(n88), 
        .S(n147) );
  CKMUX2D0BWP12T30P140 U155 ( .I0(stg1[17]), .I1(n147), .S(n201), .Z(n18) );
  FA1D0BWP12T30P140 U156 ( .A(adda[40]), .B(addb[40]), .CI(n148), .CO(n154), 
        .S(n149) );
  CKMUX2D0BWP12T30P140 U157 ( .I0(stg1[40]), .I1(n149), .S(n174), .Z(n41) );
  FA1D0BWP12T30P140 U158 ( .A(adda[59]), .B(addb[59]), .CI(n150), .CO(n158), 
        .S(n68) );
  CKMUX2D0BWP12T30P140 U159 ( .I0(stg1[61]), .I1(n151), .S(i_en), .Z(n62) );
  FA1D0BWP12T30P140 U160 ( .A(adda[61]), .B(addb[61]), .CI(n152), .CO(n160), 
        .S(n151) );
  CKMUX2D0BWP12T30P140 U161 ( .I0(stg1[63]), .I1(n153), .S(i_en), .Z(n64) );
  FA1D0BWP12T30P140 U162 ( .A(adda[41]), .B(addb[41]), .CI(n154), .CO(n130), 
        .S(n155) );
  CKMUX2D0BWP12T30P140 U163 ( .I0(stg1[41]), .I1(n155), .S(n174), .Z(n42) );
  FA1D0BWP12T30P140 U164 ( .A(adda[16]), .B(addb[16]), .CI(n156), .CO(n146), 
        .S(n157) );
  CKMUX2D0BWP12T30P140 U165 ( .I0(stg1[16]), .I1(n157), .S(n201), .Z(n17) );
  FA1D0BWP12T30P140 U166 ( .A(adda[60]), .B(addb[60]), .CI(n158), .CO(n152), 
        .S(n159) );
  CKMUX2D0BWP12T30P140 U167 ( .I0(stg1[60]), .I1(n159), .S(i_en), .Z(n61) );
  FA1D0BWP12T30P140 U168 ( .A(adda[62]), .B(addb[62]), .CI(n160), .CO(n162), 
        .S(n161) );
  CKMUX2D0BWP12T30P140 U169 ( .I0(stg1[62]), .I1(n161), .S(i_en), .Z(n63) );
  FA1D0BWP12T30P140 U170 ( .A(adda[63]), .B(addb[63]), .CI(n162), .CO(n163), 
        .S(n153) );
  CKMUX2D0BWP12T30P140 U171 ( .I0(stg1[64]), .I1(n163), .S(n201), .Z(n65) );
  FA1D0BWP12T30P140 U172 ( .A(adda[20]), .B(addb[20]), .CI(n164), .CO(n106), 
        .S(n165) );
  CKMUX2D0BWP12T30P140 U173 ( .I0(stg1[20]), .I1(n165), .S(n199), .Z(n21) );
  FA1D0BWP12T30P140 U174 ( .A(adda[38]), .B(addb[38]), .CI(n166), .CO(n173), 
        .S(n167) );
  CKMUX2D0BWP12T30P140 U175 ( .I0(stg1[38]), .I1(n167), .S(n199), .Z(n39) );
  FA1D0BWP12T30P140 U176 ( .A(adda[36]), .B(addb[36]), .CI(n168), .CO(n190), 
        .S(n169) );
  CKMUX2D0BWP12T30P140 U177 ( .I0(stg1[36]), .I1(n169), .S(n199), .Z(n37) );
  INVD0BWP12T30P140 U178 ( .I(stg1[0]), .ZN(n172) );
  OAI211D0BWP12T30P140 U179 ( .A1(addb[0]), .A2(adda[0]), .B(i_en), .C(n170), 
        .ZN(n171) );
  OAI21D0BWP12T30P140 U180 ( .A1(i_en), .A2(n172), .B(n171), .ZN(n1) );
  FA1D0BWP12T30P140 U181 ( .A(adda[39]), .B(addb[39]), .CI(n173), .CO(n148), 
        .S(n175) );
  CKMUX2D0BWP12T30P140 U182 ( .I0(stg1[39]), .I1(n175), .S(n174), .Z(n40) );
  FA1D0BWP12T30P140 U183 ( .A(adda[19]), .B(addb[19]), .CI(n176), .CO(n164), 
        .S(n177) );
  CKMUX2D0BWP12T30P140 U184 ( .I0(stg1[19]), .I1(n177), .S(n201), .Z(n20) );
  FA1D0BWP12T30P140 U185 ( .A(adda[22]), .B(addb[22]), .CI(n178), .CO(n182), 
        .S(n179) );
  CKMUX2D0BWP12T30P140 U186 ( .I0(stg1[22]), .I1(n179), .S(n199), .Z(n23) );
  FA1D0BWP12T30P140 U187 ( .A(adda[25]), .B(addb[25]), .CI(n180), .CO(n184), 
        .S(n181) );
  CKMUX2D0BWP12T30P140 U188 ( .I0(stg1[25]), .I1(n181), .S(n199), .Z(n26) );
  FA1D0BWP12T30P140 U189 ( .A(adda[23]), .B(addb[23]), .CI(n182), .CO(n124), 
        .S(n183) );
  CKMUX2D0BWP12T30P140 U190 ( .I0(stg1[23]), .I1(n183), .S(n199), .Z(n24) );
  FA1D0BWP12T30P140 U191 ( .A(adda[26]), .B(addb[26]), .CI(n184), .CO(n142), 
        .S(n185) );
  CKMUX2D0BWP12T30P140 U192 ( .I0(stg1[26]), .I1(n185), .S(n199), .Z(n27) );
  FA1D0BWP12T30P140 U193 ( .A(adda[34]), .B(addb[34]), .CI(n186), .CO(n192), 
        .S(n187) );
  CKMUX2D0BWP12T30P140 U194 ( .I0(stg1[34]), .I1(n187), .S(n199), .Z(n35) );
  FA1D0BWP12T30P140 U195 ( .A(adda[32]), .B(addb[32]), .CI(n188), .CO(n194), 
        .S(n189) );
  CKMUX2D0BWP12T30P140 U196 ( .I0(stg1[32]), .I1(n189), .S(n199), .Z(n33) );
  FA1D0BWP12T30P140 U197 ( .A(adda[37]), .B(addb[37]), .CI(n190), .CO(n166), 
        .S(n191) );
  CKMUX2D0BWP12T30P140 U198 ( .I0(stg1[37]), .I1(n191), .S(n199), .Z(n38) );
  FA1D0BWP12T30P140 U199 ( .A(adda[35]), .B(addb[35]), .CI(n192), .CO(n168), 
        .S(n193) );
  CKMUX2D0BWP12T30P140 U200 ( .I0(stg1[35]), .I1(n193), .S(n199), .Z(n36) );
  FA1D0BWP12T30P140 U201 ( .A(adda[33]), .B(addb[33]), .CI(n194), .CO(n186), 
        .S(n195) );
  CKMUX2D0BWP12T30P140 U202 ( .I0(stg1[33]), .I1(n195), .S(n199), .Z(n34) );
  FA1D0BWP12T30P140 U203 ( .A(adda[31]), .B(addb[31]), .CI(n196), .CO(n188), 
        .S(n197) );
  CKMUX2D0BWP12T30P140 U204 ( .I0(stg1[31]), .I1(n197), .S(n199), .Z(n32) );
  FA1D0BWP12T30P140 U205 ( .A(adda[29]), .B(addb[29]), .CI(n198), .CO(n80), 
        .S(n200) );
  CKMUX2D0BWP12T30P140 U206 ( .I0(stg1[29]), .I1(n200), .S(n199), .Z(n30) );
  CKBD0BWP12T30P140 U207 ( .I(clk), .Z(n209) );
  CKBD0BWP12T30P140 U208 ( .I(clk), .Z(n210) );
  CKBD0BWP12T30P140 U209 ( .I(clk), .Z(n211) );
  CKBD0BWP12T30P140 U210 ( .I(clk), .Z(n212) );
  CKBD0BWP12T30P140 U211 ( .I(clk), .Z(n213) );
  CKBD0BWP12T30P140 U212 ( .I(clk), .Z(n208) );
  CKBD0BWP12T30P140 U213 ( .I(rst_n), .Z(n202) );
  CKBD0BWP12T30P140 U214 ( .I(rst_n), .Z(n207) );
  CKBD0BWP12T30P140 U215 ( .I(rst_n), .Z(n203) );
  CKBD0BWP12T30P140 U216 ( .I(rst_n), .Z(n204) );
  CKBD0BWP12T30P140 U217 ( .I(rst_n), .Z(n206) );
  CKBD0BWP12T30P140 U218 ( .I(rst_n), .Z(n205) );
endmodule

