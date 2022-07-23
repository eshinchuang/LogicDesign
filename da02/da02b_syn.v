/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Jun  5 22:12:16 2020
/////////////////////////////////////////////////////////////


module GCD_DW01_add_1 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6;

  ADDFXL U10 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n6), .S(SUM[0]) );
  ADDFXL U11 ( .A(A[1]), .B(B[1]), .CI(n6), .CO(n5), .S(SUM[1]) );
  ADDFXL U12 ( .A(A[2]), .B(B[2]), .CI(n5), .CO(n4), .S(SUM[2]) );
  ADDFXL U13 ( .A(A[3]), .B(B[3]), .CI(n4), .CO(n3), .S(SUM[3]) );
  ADDFXL U14 ( .A(A[4]), .B(B[4]), .CI(n3), .CO(n2), .S(SUM[4]) );
  ADDFXL U15 ( .A(A[5]), .B(B[5]), .CI(n2), .CO(CO), .S(SUM[5]) );
endmodule


module GCD_DW01_add_2 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;

  ADDFXL U11 ( .A(A[6]), .B(B[6]), .CI(n2), .CO(CO), .S(SUM[6]) );
  ADDFXL U12 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n7), .S(SUM[0]) );
  ADDFXL U13 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(n6), .S(SUM[1]) );
  ADDFXL U14 ( .A(A[2]), .B(B[2]), .CI(n6), .CO(n5), .S(SUM[2]) );
  ADDFXL U15 ( .A(A[3]), .B(B[3]), .CI(n5), .CO(n4), .S(SUM[3]) );
  ADDFXL U16 ( .A(A[4]), .B(B[4]), .CI(n4), .CO(n3), .S(SUM[4]) );
  ADDFXL U17 ( .A(A[5]), .B(B[5]), .CI(n3), .CO(n2), .S(SUM[5]) );
endmodule


module GCD_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n44, n45, n46, n47, n48, n49, n50, n51, \u_div/SumTmp[0][0] ,
         \u_div/SumTmp[0][1] , \u_div/SumTmp[0][2] , \u_div/SumTmp[0][3] ,
         \u_div/SumTmp[0][4] , \u_div/SumTmp[0][5] , \u_div/SumTmp[0][6] ,
         \u_div/SumTmp[0][7] , \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/CryTmp[0][1] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[6][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[1][3] , \u_div/PartRem[1][4] ,
         \u_div/PartRem[1][5] , \u_div/PartRem[1][6] , \u_div/PartRem[1][7] ,
         \u_div/PartRem[2][1] , \u_div/PartRem[2][2] , \u_div/PartRem[2][3] ,
         \u_div/PartRem[2][4] , \u_div/PartRem[2][5] , \u_div/PartRem[2][6] ,
         \u_div/PartRem[3][1] , \u_div/PartRem[3][2] , \u_div/PartRem[3][3] ,
         \u_div/PartRem[3][4] , \u_div/PartRem[3][5] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[4][2] , \u_div/PartRem[4][3] , \u_div/PartRem[4][4] ,
         \u_div/PartRem[5][1] , \u_div/PartRem[5][2] , \u_div/PartRem[5][3] ,
         \u_div/PartRem[6][1] , \u_div/PartRem[6][2] , \u_div/PartRem[7][1] ,
         \u_div/u_add_PartRem_1_2/n5 , \u_div/u_add_PartRem_1_2/n4 ,
         \u_div/u_add_PartRem_1_2/n3 , \u_div/u_add_PartRem_1_2/n2 , n1, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76;

  GCD_DW01_add_1 \u_div/u_add_PartRem_1_1  ( .A({\u_div/PartRem[2][6] , 
        \u_div/PartRem[2][5] , \u_div/PartRem[2][4] , \u_div/PartRem[2][3] , 
        \u_div/PartRem[2][2] , \u_div/PartRem[2][1] }), .B({n71, n74, n76, n72, 
        n68, n73}), .CI(\u_div/CryTmp[1][1] ), .SUM({\u_div/SumTmp[1][6] , 
        \u_div/SumTmp[1][5] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][3] , 
        \u_div/SumTmp[1][2] , \u_div/SumTmp[1][1] }), .CO(\u_div/CryTmp[1][7] ) );
  GCD_DW01_add_2 \u_div/u_add_PartRem_1_0  ( .A({\u_div/PartRem[1][7] , 
        \u_div/PartRem[1][6] , \u_div/PartRem[1][5] , \u_div/PartRem[1][4] , 
        \u_div/PartRem[1][3] , \u_div/PartRem[1][2] , \u_div/PartRem[1][1] }), 
        .B({n75, n71, n74, n76, n72, n68, n73}), .CI(\u_div/CryTmp[0][1] ), 
        .SUM({\u_div/SumTmp[0][7] , \u_div/SumTmp[0][6] , \u_div/SumTmp[0][5] , 
        \u_div/SumTmp[0][4] , \u_div/SumTmp[0][3] , \u_div/SumTmp[0][2] , 
        \u_div/SumTmp[0][1] }), .CO(n51) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_0  ( .A(a[0]), .B(\u_div/SumTmp[0][0] ), 
        .S0(n51), .Y(remainder[0]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/SumTmp[0][7] ), .S0(n51), .Y(remainder[7]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/SumTmp[0][1] ), .S0(n51), .Y(remainder[1]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/SumTmp[0][2] ), .S0(n51), .Y(remainder[2]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/SumTmp[0][3] ), .S0(n51), .Y(remainder[3]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/SumTmp[0][4] ), .S0(n51), .Y(remainder[4]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/SumTmp[0][5] ), .S0(n51), .Y(remainder[5]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/SumTmp[0][6] ), .S0(n51), .Y(remainder[6]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), 
        .S0(n48), .Y(\u_div/PartRem[3][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), 
        .S0(n49), .Y(\u_div/PartRem[2][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), 
        .S0(n50), .Y(\u_div/PartRem[1][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), 
        .S0(n46), .Y(\u_div/PartRem[5][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), 
        .S0(n47), .Y(\u_div/PartRem[4][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_0  ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), 
        .S0(n45), .Y(\u_div/PartRem[6][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(
        \u_div/SumTmp[3][4] ), .S0(n48), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(
        \u_div/SumTmp[3][3] ), .S0(n48), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(
        \u_div/SumTmp[3][2] ), .S0(n48), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/SumTmp[3][1] ), .S0(n48), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/SumTmp[2][1] ), .S0(n49), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/SumTmp[1][6] ), .S0(n50), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/SumTmp[1][5] ), .S0(n50), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/SumTmp[1][4] ), .S0(n50), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/SumTmp[1][3] ), .S0(n50), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/SumTmp[1][2] ), .S0(n50), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/SumTmp[1][1] ), .S0(n50), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(
        \u_div/SumTmp[5][2] ), .S0(n46), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/SumTmp[5][1] ), .S0(n46), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(
        \u_div/SumTmp[4][2] ), .S0(n47), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/SumTmp[4][1] ), .S0(n47), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(
        \u_div/SumTmp[6][1] ), .S0(n45), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(
        \u_div/SumTmp[4][3] ), .S0(n47), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(
        \u_div/SumTmp[2][5] ), .S0(n49), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(
        \u_div/SumTmp[2][4] ), .S0(n49), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(
        \u_div/SumTmp[2][3] ), .S0(n49), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(
        \u_div/SumTmp[2][2] ), .S0(n49), .Y(\u_div/PartRem[2][3] ) );
  NOR2BX1 U1 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n50) );
  CLKINVX1 U2 ( .A(b[1]), .Y(n73) );
  CLKINVX1 U3 ( .A(b[2]), .Y(n68) );
  CLKINVX1 U4 ( .A(b[3]), .Y(n72) );
  CLKINVX1 U5 ( .A(b[4]), .Y(n76) );
  CLKINVX1 U6 ( .A(b[5]), .Y(n74) );
  NOR2BX1 U7 ( .AN(\u_div/CryTmp[2][6] ), .B(n43), .Y(n49) );
  CLKINVX1 U8 ( .A(n43), .Y(n70) );
  NAND2BX1 U9 ( .AN(n42), .B(n72), .Y(n41) );
  NOR2X1 U10 ( .A(n29), .B(n42), .Y(n47) );
  AOI222XL U11 ( .A0(n60), .A1(\u_div/PartRem[5][3] ), .B0(n60), .B1(n72), 
        .C0(n72), .C1(\u_div/PartRem[5][3] ), .Y(n29) );
  XOR2X1 U12 ( .A(n60), .B(n33), .Y(\u_div/SumTmp[4][3] ) );
  XOR2X1 U13 ( .A(n72), .B(\u_div/PartRem[5][3] ), .Y(n33) );
  NOR2X1 U14 ( .A(n35), .B(n41), .Y(n46) );
  AOI222XL U15 ( .A0(n63), .A1(\u_div/PartRem[6][2] ), .B0(n63), .B1(n68), 
        .C0(n68), .C1(\u_div/PartRem[6][2] ), .Y(n35) );
  AOI222XL U16 ( .A0(\u_div/CryTmp[4][1] ), .A1(\u_div/PartRem[5][1] ), .B0(
        n73), .B1(\u_div/CryTmp[4][1] ), .C0(n73), .C1(\u_div/PartRem[5][1] ), 
        .Y(n32) );
  AOI222XL U17 ( .A0(\u_div/CryTmp[3][1] ), .A1(\u_div/PartRem[4][1] ), .B0(
        n73), .B1(\u_div/CryTmp[3][1] ), .C0(n73), .C1(\u_div/PartRem[4][1] ), 
        .Y(n23) );
  AOI222XL U18 ( .A0(n57), .A1(\u_div/PartRem[4][2] ), .B0(n57), .B1(n68), 
        .C0(n68), .C1(\u_div/PartRem[4][2] ), .Y(n25) );
  CLKINVX1 U19 ( .A(n23), .Y(n57) );
  NAND3X1 U20 ( .A(n76), .B(n74), .C(n70), .Y(n42) );
  NAND2X1 U21 ( .A(n71), .B(n75), .Y(n43) );
  XOR2X1 U22 ( .A(\u_div/PartRem[7][1] ), .B(n39), .Y(\u_div/SumTmp[6][1] ) );
  XOR2X1 U23 ( .A(\u_div/CryTmp[6][1] ), .B(n73), .Y(n39) );
  XOR2X1 U24 ( .A(\u_div/PartRem[5][1] ), .B(n30), .Y(\u_div/SumTmp[4][1] ) );
  XOR2X1 U25 ( .A(\u_div/CryTmp[4][1] ), .B(n73), .Y(n30) );
  XNOR2X1 U26 ( .A(n32), .B(n31), .Y(\u_div/SumTmp[4][2] ) );
  XOR2X1 U27 ( .A(n68), .B(\u_div/PartRem[5][2] ), .Y(n31) );
  XOR2X1 U28 ( .A(\u_div/PartRem[6][1] ), .B(n36), .Y(\u_div/SumTmp[5][1] ) );
  XOR2X1 U29 ( .A(\u_div/CryTmp[5][1] ), .B(n73), .Y(n36) );
  XOR2X1 U30 ( .A(n63), .B(n37), .Y(\u_div/SumTmp[5][2] ) );
  XOR2X1 U31 ( .A(n68), .B(\u_div/PartRem[6][2] ), .Y(n37) );
  XOR2X1 U32 ( .A(\u_div/PartRem[4][1] ), .B(n21), .Y(\u_div/SumTmp[3][1] ) );
  XOR2X1 U33 ( .A(\u_div/CryTmp[3][1] ), .B(n73), .Y(n21) );
  XNOR2X1 U34 ( .A(n23), .B(n22), .Y(\u_div/SumTmp[3][2] ) );
  XOR2X1 U35 ( .A(n68), .B(\u_div/PartRem[4][2] ), .Y(n22) );
  XNOR2X1 U36 ( .A(n25), .B(n24), .Y(\u_div/SumTmp[3][3] ) );
  XOR2X1 U37 ( .A(n72), .B(\u_div/PartRem[4][3] ), .Y(n24) );
  XOR2X1 U38 ( .A(n27), .B(n26), .Y(\u_div/SumTmp[3][4] ) );
  XNOR2X1 U39 ( .A(\u_div/PartRem[4][4] ), .B(n76), .Y(n27) );
  NAND2X1 U40 ( .A(n52), .B(n66), .Y(\u_div/CryTmp[6][1] ) );
  NAND2X1 U41 ( .A(n52), .B(n64), .Y(\u_div/CryTmp[5][1] ) );
  NAND2X1 U42 ( .A(n52), .B(n62), .Y(\u_div/CryTmp[4][1] ) );
  NAND2X1 U43 ( .A(n52), .B(n58), .Y(\u_div/CryTmp[3][1] ) );
  AOI222XL U44 ( .A0(n56), .A1(\u_div/PartRem[4][3] ), .B0(n56), .B1(n72), 
        .C0(n72), .C1(\u_div/PartRem[4][3] ), .Y(n26) );
  CLKINVX1 U45 ( .A(n25), .Y(n56) );
  AND3X2 U46 ( .A(n65), .B(n69), .C(n68), .Y(n45) );
  CLKINVX1 U47 ( .A(n38), .Y(n65) );
  CLKINVX1 U48 ( .A(n41), .Y(n69) );
  AOI222XL U49 ( .A0(\u_div/CryTmp[6][1] ), .A1(\u_div/PartRem[7][1] ), .B0(
        \u_div/CryTmp[6][1] ), .B1(n73), .C0(n73), .C1(\u_div/PartRem[7][1] ), 
        .Y(n38) );
  NAND2X1 U50 ( .A(n52), .B(n55), .Y(\u_div/CryTmp[2][1] ) );
  NAND2X1 U51 ( .A(n52), .B(n54), .Y(\u_div/CryTmp[1][1] ) );
  NAND2X1 U52 ( .A(n52), .B(n53), .Y(\u_div/CryTmp[0][1] ) );
  ADDFXL U53 ( .A(\u_div/PartRem[3][1] ), .B(n73), .CI(\u_div/CryTmp[2][1] ), 
        .CO(\u_div/u_add_PartRem_1_2/n5 ), .S(\u_div/SumTmp[2][1] ) );
  ADDFXL U54 ( .A(\u_div/PartRem[3][2] ), .B(n68), .CI(
        \u_div/u_add_PartRem_1_2/n5 ), .CO(\u_div/u_add_PartRem_1_2/n4 ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFXL U55 ( .A(\u_div/PartRem[3][3] ), .B(n72), .CI(
        \u_div/u_add_PartRem_1_2/n4 ), .CO(\u_div/u_add_PartRem_1_2/n3 ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFXL U56 ( .A(\u_div/PartRem[3][4] ), .B(n76), .CI(
        \u_div/u_add_PartRem_1_2/n3 ), .CO(\u_div/u_add_PartRem_1_2/n2 ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFXL U57 ( .A(\u_div/PartRem[3][5] ), .B(n74), .CI(
        \u_div/u_add_PartRem_1_2/n2 ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  CLKINVX1 U58 ( .A(n34), .Y(n63) );
  AOI222XL U59 ( .A0(\u_div/CryTmp[5][1] ), .A1(\u_div/PartRem[6][1] ), .B0(
        n73), .B1(\u_div/CryTmp[5][1] ), .C0(n73), .C1(\u_div/PartRem[6][1] ), 
        .Y(n34) );
  CLKINVX1 U60 ( .A(n28), .Y(n60) );
  AOI222XL U61 ( .A0(n61), .A1(\u_div/PartRem[5][2] ), .B0(n61), .B1(n68), 
        .C0(n68), .C1(\u_div/PartRem[5][2] ), .Y(n28) );
  CLKINVX1 U62 ( .A(n32), .Y(n61) );
  MXI2X1 U63 ( .A(n67), .B(n1), .S0(n44), .Y(\u_div/PartRem[7][1] ) );
  AOI211X1 U64 ( .A0(n52), .A1(n67), .B0(n40), .C0(n41), .Y(n44) );
  XNOR2X1 U65 ( .A(n52), .B(a[7]), .Y(n1) );
  NAND2X1 U66 ( .A(n73), .B(n68), .Y(n40) );
  AND3X2 U67 ( .A(\u_div/CryTmp[3][5] ), .B(n70), .C(n74), .Y(n48) );
  OAI222XL U68 ( .A0(n26), .A1(n59), .B0(n26), .B1(b[4]), .C0(b[4]), .C1(n59), 
        .Y(\u_div/CryTmp[3][5] ) );
  CLKINVX1 U69 ( .A(\u_div/PartRem[4][4] ), .Y(n59) );
  CLKBUFX3 U70 ( .A(b[0]), .Y(n52) );
  CLKINVX1 U71 ( .A(b[6]), .Y(n71) );
  OAI21XL U72 ( .A0(n52), .A1(n66), .B0(\u_div/CryTmp[6][1] ), .Y(
        \u_div/SumTmp[6][0] ) );
  OAI21XL U73 ( .A0(n52), .A1(n62), .B0(\u_div/CryTmp[4][1] ), .Y(
        \u_div/SumTmp[4][0] ) );
  OAI21XL U74 ( .A0(n52), .A1(n64), .B0(\u_div/CryTmp[5][1] ), .Y(
        \u_div/SumTmp[5][0] ) );
  OAI21XL U75 ( .A0(n52), .A1(n54), .B0(\u_div/CryTmp[1][1] ), .Y(
        \u_div/SumTmp[1][0] ) );
  OAI21XL U76 ( .A0(n52), .A1(n55), .B0(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][0] ) );
  OAI21XL U77 ( .A0(n52), .A1(n58), .B0(\u_div/CryTmp[3][1] ), .Y(
        \u_div/SumTmp[3][0] ) );
  CLKINVX1 U78 ( .A(b[7]), .Y(n75) );
  OAI21XL U79 ( .A0(n52), .A1(n53), .B0(\u_div/CryTmp[0][1] ), .Y(
        \u_div/SumTmp[0][0] ) );
  CLKINVX1 U80 ( .A(a[7]), .Y(n67) );
  CLKINVX1 U81 ( .A(a[6]), .Y(n66) );
  CLKINVX1 U82 ( .A(a[5]), .Y(n64) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n62) );
  CLKINVX1 U84 ( .A(a[3]), .Y(n58) );
  CLKINVX1 U85 ( .A(a[2]), .Y(n55) );
  CLKINVX1 U86 ( .A(a[1]), .Y(n54) );
  CLKINVX1 U87 ( .A(a[0]), .Y(n53) );
endmodule


module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Y;
  input CLK, RST_N, START;
  output DONE, ERROR;
  wire   error_next, N0, N1, N2, N3, N4, N5, N6, N7, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N50,
         N51, N52, N53, n10, n17, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87;
  wire   [1:0] state;
  wire   [7:0] reg_a;
  wire   [7:0] reg_b;
  wire   [1:0] state_next;
  wire   [7:0] next_a;
  wire   [7:0] next_b;

  GCD_DW_div_uns_0 rem_63 ( .a(reg_a), .b(reg_b), .remainder({N7, N6, N5, N4, 
        N3, N2, N1, N0}) );
  DFFRX1 \reg_a_reg[0]  ( .D(next_a[0]), .CK(CLK), .RN(RST_N), .Q(reg_a[0]) );
  DFFRX1 \reg_a_reg[1]  ( .D(next_a[1]), .CK(CLK), .RN(RST_N), .Q(reg_a[1]) );
  DFFRX1 \reg_a_reg[2]  ( .D(next_a[2]), .CK(CLK), .RN(RST_N), .Q(reg_a[2]) );
  DFFRX1 \reg_a_reg[3]  ( .D(next_a[3]), .CK(CLK), .RN(RST_N), .Q(reg_a[3]) );
  DFFRX1 \reg_a_reg[4]  ( .D(next_a[4]), .CK(CLK), .RN(RST_N), .Q(reg_a[4]) );
  DFFRX1 \reg_a_reg[5]  ( .D(next_a[5]), .CK(CLK), .RN(RST_N), .Q(reg_a[5]) );
  DFFRX1 \reg_a_reg[6]  ( .D(next_a[6]), .CK(CLK), .RN(RST_N), .Q(reg_a[6]) );
  DFFRX1 \reg_a_reg[7]  ( .D(next_a[7]), .CK(CLK), .RN(RST_N), .Q(reg_a[7]) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(CLK), .RN(RST_N), .Q(state[1]), .QN(n84) );
  DFFRX1 \reg_b_reg[0]  ( .D(next_b[0]), .CK(CLK), .RN(RST_N), .Q(reg_b[0]) );
  DFFRX1 \reg_b_reg[6]  ( .D(next_b[6]), .CK(CLK), .RN(RST_N), .Q(reg_b[6]) );
  DFFRX1 \reg_b_reg[5]  ( .D(next_b[5]), .CK(CLK), .RN(RST_N), .Q(reg_b[5]) );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(CLK), .RN(RST_N), .Q(state[0]) );
  DFFRX1 \reg_b_reg[4]  ( .D(next_b[4]), .CK(CLK), .RN(RST_N), .Q(reg_b[4]) );
  DFFRX1 \reg_b_reg[7]  ( .D(next_b[7]), .CK(CLK), .RN(RST_N), .Q(reg_b[7]) );
  DFFRX1 \reg_b_reg[2]  ( .D(next_b[2]), .CK(CLK), .RN(RST_N), .Q(reg_b[2]) );
  DFFRX1 \reg_b_reg[3]  ( .D(next_b[3]), .CK(CLK), .RN(RST_N), .Q(reg_b[3]) );
  DFFRX1 \reg_b_reg[1]  ( .D(next_b[1]), .CK(CLK), .RN(RST_N), .Q(reg_b[1]) );
  TLATNX1 DONE_reg ( .D(n17), .GN(n10), .Q(DONE) );
  TLATX1 \next_b_reg[0]  ( .G(N32), .D(N41), .Q(next_b[0]) );
  TLATX1 \state_next_reg[0]  ( .G(N50), .D(N51), .Q(state_next[0]) );
  TLATX1 \next_a_reg[0]  ( .G(N32), .D(N33), .Q(next_a[0]) );
  TLATX1 \next_b_reg[7]  ( .G(N32), .D(N48), .Q(next_b[7]) );
  TLATX1 \next_a_reg[7]  ( .G(N32), .D(N40), .Q(next_a[7]) );
  TLATX1 \next_b_reg[1]  ( .G(N32), .D(N42), .Q(next_b[1]) );
  TLATX1 \next_a_reg[1]  ( .G(N32), .D(N34), .Q(next_a[1]) );
  TLATX1 \next_b_reg[2]  ( .G(N32), .D(N43), .Q(next_b[2]) );
  TLATX1 \next_a_reg[2]  ( .G(N32), .D(N35), .Q(next_a[2]) );
  TLATX1 \next_b_reg[3]  ( .G(N32), .D(N44), .Q(next_b[3]) );
  TLATX1 \next_a_reg[3]  ( .G(N32), .D(N36), .Q(next_a[3]) );
  TLATX1 \next_b_reg[4]  ( .G(N32), .D(N45), .Q(next_b[4]) );
  TLATX1 \next_a_reg[4]  ( .G(N32), .D(N37), .Q(next_a[4]) );
  TLATX1 \next_b_reg[5]  ( .G(N32), .D(N46), .Q(next_b[5]) );
  TLATX1 \next_a_reg[5]  ( .G(N32), .D(N38), .Q(next_a[5]) );
  TLATX1 \next_b_reg[6]  ( .G(N32), .D(N47), .Q(next_b[6]) );
  TLATX1 \next_a_reg[6]  ( .G(N32), .D(N39), .Q(next_a[6]) );
  TLATX1 \Y_reg[0]  ( .G(N53), .D(reg_a[0]), .Q(Y[0]) );
  TLATX1 \Y_reg[7]  ( .G(N53), .D(reg_a[7]), .Q(Y[7]) );
  TLATX1 \Y_reg[1]  ( .G(N53), .D(reg_a[1]), .Q(Y[1]) );
  TLATX1 \Y_reg[2]  ( .G(N53), .D(reg_a[2]), .Q(Y[2]) );
  TLATX1 \Y_reg[3]  ( .G(N53), .D(reg_a[3]), .Q(Y[3]) );
  TLATX1 \Y_reg[4]  ( .G(N53), .D(reg_a[4]), .Q(Y[4]) );
  TLATX1 \Y_reg[5]  ( .G(N53), .D(reg_a[5]), .Q(Y[5]) );
  TLATX1 \Y_reg[6]  ( .G(N53), .D(reg_a[6]), .Q(Y[6]) );
  TLATX1 error_next_reg ( .G(N31), .D(n86), .Q(error_next) );
  TLATX1 \state_next_reg[1]  ( .G(N50), .D(N52), .Q(state_next[1]) );
  EDFFX1 ERROR_reg ( .D(error_next), .E(RST_N), .CK(CLK), .Q(ERROR) );
  OAI22XL U81 ( .A0(n80), .A1(n81), .B0(n82), .B1(n83), .Y(n75) );
  NAND2X1 U82 ( .A(state[0]), .B(n84), .Y(n73) );
  NAND2X1 U83 ( .A(n87), .B(n77), .Y(N32) );
  NOR3X1 U84 ( .A(n73), .B(n74), .C(n75), .Y(N53) );
  NAND3X1 U85 ( .A(n85), .B(n74), .C(n86), .Y(n77) );
  AOI21X1 U86 ( .A0(n85), .A1(n74), .B0(n73), .Y(N52) );
  NOR2X1 U87 ( .A(n76), .B(n17), .Y(n10) );
  CLKINVX1 U88 ( .A(n73), .Y(n86) );
  OAI21XL U89 ( .A0(n85), .A1(n73), .B0(n87), .Y(N31) );
  CLKINVX1 U90 ( .A(n75), .Y(n85) );
  CLKINVX1 U91 ( .A(n76), .Y(n87) );
  NAND2X1 U92 ( .A(n10), .B(n73), .Y(N50) );
  OR4X1 U93 ( .A(A[0]), .B(A[1]), .C(A[2]), .D(A[3]), .Y(n83) );
  OR4X1 U94 ( .A(A[4]), .B(A[5]), .C(A[6]), .D(A[7]), .Y(n82) );
  OR4X1 U95 ( .A(B[0]), .B(B[1]), .C(B[2]), .D(B[3]), .Y(n81) );
  NOR2X1 U96 ( .A(state[0]), .B(state[1]), .Y(n76) );
  NAND2X1 U97 ( .A(n78), .B(n79), .Y(n74) );
  NOR4X1 U98 ( .A(reg_b[7]), .B(reg_b[6]), .C(reg_b[5]), .D(reg_b[4]), .Y(n79)
         );
  NOR4X1 U99 ( .A(reg_b[3]), .B(reg_b[2]), .C(reg_b[1]), .D(reg_b[0]), .Y(n78)
         );
  NOR2X1 U100 ( .A(n84), .B(state[0]), .Y(n17) );
  OR4X1 U101 ( .A(B[4]), .B(B[5]), .C(B[6]), .D(B[7]), .Y(n80) );
  OAI2BB1X1 U102 ( .A0N(START), .A1N(n76), .B0(n77), .Y(N51) );
  AO22X1 U103 ( .A0(N6), .A1(n86), .B0(B[6]), .B1(n76), .Y(N47) );
  AO22X1 U104 ( .A0(N5), .A1(n86), .B0(B[5]), .B1(n76), .Y(N46) );
  AO22X1 U105 ( .A0(N4), .A1(n86), .B0(B[4]), .B1(n76), .Y(N45) );
  AO22X1 U106 ( .A0(N3), .A1(n86), .B0(B[3]), .B1(n76), .Y(N44) );
  AO22X1 U107 ( .A0(N2), .A1(n86), .B0(B[2]), .B1(n76), .Y(N43) );
  AO22X1 U108 ( .A0(N1), .A1(n86), .B0(B[1]), .B1(n76), .Y(N42) );
  AO22X1 U109 ( .A0(N7), .A1(n86), .B0(B[7]), .B1(n76), .Y(N48) );
  AO22X1 U110 ( .A0(N0), .A1(n86), .B0(B[0]), .B1(n76), .Y(N41) );
  AO22X1 U111 ( .A0(n76), .A1(A[3]), .B0(n86), .B1(reg_b[3]), .Y(N36) );
  AO22X1 U112 ( .A0(n76), .A1(A[1]), .B0(n86), .B1(reg_b[1]), .Y(N34) );
  AO22X1 U113 ( .A0(n76), .A1(A[2]), .B0(n86), .B1(reg_b[2]), .Y(N35) );
  AO22X1 U114 ( .A0(n76), .A1(A[6]), .B0(n86), .B1(reg_b[6]), .Y(N39) );
  AO22X1 U115 ( .A0(n76), .A1(A[5]), .B0(n86), .B1(reg_b[5]), .Y(N38) );
  AO22X1 U116 ( .A0(n76), .A1(A[4]), .B0(n86), .B1(reg_b[4]), .Y(N37) );
  AO22X1 U117 ( .A0(n76), .A1(A[7]), .B0(n86), .B1(reg_b[7]), .Y(N40) );
  AO22X1 U118 ( .A0(n76), .A1(A[0]), .B0(n86), .B1(reg_b[0]), .Y(N33) );
endmodule

