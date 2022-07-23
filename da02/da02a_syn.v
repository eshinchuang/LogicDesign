/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Jun  5 21:59:49 2020
/////////////////////////////////////////////////////////////


module GCD_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n4) );
endmodule


module GCD_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );
  XNOR2X1 U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[7]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n3) );
endmodule


module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Y;
  input CLK, RST_N, START;
  output DONE, ERROR;
  wire   error_next, N19, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N60, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N79, N80, N81, N82, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111;
  wire   [1:0] state;
  wire   [7:0] reg_a;
  wire   [7:0] reg_b;
  wire   [1:0] state_next;
  wire   [7:0] next_a;
  wire   [7:0] next_b;

  GCD_DW01_sub_0 sub_66 ( .A(reg_a), .B(reg_b), .CI(1'b0), .DIFF({N36, N35, 
        N34, N33, N32, N31, N30, N29}) );
  GCD_DW01_sub_1 sub_63 ( .A(reg_b), .B(reg_a), .CI(1'b0), .DIFF({N28, N27, 
        N26, N25, N24, N23, N22, N21}) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(CLK), .RN(RST_N), .Q(state[1]), .QN(n79) );
  DFFRX1 \reg_b_reg[1]  ( .D(next_b[1]), .CK(CLK), .RN(RST_N), .Q(reg_b[1]) );
  DFFRX1 \reg_b_reg[5]  ( .D(next_b[5]), .CK(CLK), .RN(RST_N), .Q(reg_b[5]) );
  DFFRX1 \reg_b_reg[4]  ( .D(next_b[4]), .CK(CLK), .RN(RST_N), .Q(reg_b[4]) );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(CLK), .RN(RST_N), .Q(state[0]) );
  DFFRX1 \reg_a_reg[3]  ( .D(next_a[3]), .CK(CLK), .RN(RST_N), .Q(reg_a[3]) );
  DFFRX1 \reg_a_reg[7]  ( .D(next_a[7]), .CK(CLK), .RN(RST_N), .Q(reg_a[7]) );
  DFFRX1 \reg_a_reg[6]  ( .D(next_a[6]), .CK(CLK), .RN(RST_N), .Q(reg_a[6]) );
  DFFRX1 \reg_a_reg[2]  ( .D(next_a[2]), .CK(CLK), .RN(RST_N), .Q(reg_a[2]) );
  DFFRX1 \reg_b_reg[0]  ( .D(next_b[0]), .CK(CLK), .RN(RST_N), .Q(reg_b[0]) );
  DFFRX1 \reg_b_reg[7]  ( .D(next_b[7]), .CK(CLK), .RN(RST_N), .Q(reg_b[7]), 
        .QN(n74) );
  DFFRX1 \reg_b_reg[6]  ( .D(next_b[6]), .CK(CLK), .RN(RST_N), .Q(reg_b[6]), 
        .QN(n75) );
  DFFRX1 \reg_b_reg[2]  ( .D(next_b[2]), .CK(CLK), .RN(RST_N), .Q(reg_b[2]), 
        .QN(n72) );
  DFFRX1 \reg_b_reg[3]  ( .D(next_b[3]), .CK(CLK), .RN(RST_N), .Q(reg_b[3]), 
        .QN(n78) );
  DFFRX1 \reg_a_reg[4]  ( .D(next_a[4]), .CK(CLK), .RN(RST_N), .Q(reg_a[4]), 
        .QN(n73) );
  DFFRX1 \reg_a_reg[1]  ( .D(next_a[1]), .CK(CLK), .RN(RST_N), .Q(reg_a[1]), 
        .QN(n77) );
  DFFRX1 \reg_a_reg[0]  ( .D(next_a[0]), .CK(CLK), .RN(RST_N), .Q(reg_a[0]) );
  TLATNX1 DONE_reg ( .D(n71), .GN(n38), .Q(DONE) );
  TLATX1 \next_b_reg[0]  ( .G(N69), .D(n109), .Q(next_b[0]) );
  TLATX1 \state_next_reg[0]  ( .G(N79), .D(N80), .Q(state_next[0]) );
  TLATX1 \next_a_reg[7]  ( .G(N69), .D(N68), .Q(next_a[7]) );
  TLATX1 \next_b_reg[7]  ( .G(N69), .D(n102), .Q(next_b[7]) );
  TLATX1 \next_b_reg[6]  ( .G(N69), .D(n103), .Q(next_b[6]) );
  TLATX1 \next_b_reg[5]  ( .G(N69), .D(n104), .Q(next_b[5]) );
  TLATX1 \next_b_reg[4]  ( .G(N69), .D(n105), .Q(next_b[4]) );
  TLATX1 \next_b_reg[3]  ( .G(N69), .D(n106), .Q(next_b[3]) );
  TLATX1 \next_b_reg[2]  ( .G(N69), .D(n107), .Q(next_b[2]) );
  TLATX1 \next_b_reg[1]  ( .G(N69), .D(n108), .Q(next_b[1]) );
  TLATX1 \next_a_reg[0]  ( .G(N69), .D(N61), .Q(next_a[0]) );
  TLATX1 \Y_reg[7]  ( .G(N82), .D(reg_a[7]), .Q(Y[7]) );
  TLATX1 \Y_reg[6]  ( .G(N82), .D(reg_a[6]), .Q(Y[6]) );
  TLATX1 \Y_reg[5]  ( .G(N82), .D(reg_a[5]), .Q(Y[5]) );
  TLATX1 \Y_reg[4]  ( .G(N82), .D(reg_a[4]), .Q(Y[4]) );
  TLATX1 \Y_reg[3]  ( .G(N82), .D(reg_a[3]), .Q(Y[3]) );
  TLATX1 \Y_reg[2]  ( .G(N82), .D(reg_a[2]), .Q(Y[2]) );
  TLATX1 \Y_reg[1]  ( .G(N82), .D(reg_a[1]), .Q(Y[1]) );
  TLATX1 \Y_reg[0]  ( .G(N82), .D(reg_a[0]), .Q(Y[0]) );
  TLATX1 error_next_reg ( .G(N60), .D(n110), .Q(error_next) );
  TLATX1 \state_next_reg[1]  ( .G(N79), .D(N81), .Q(state_next[1]) );
  TLATX1 \next_a_reg[6]  ( .G(N69), .D(N67), .Q(next_a[6]) );
  TLATX1 \next_a_reg[5]  ( .G(N69), .D(N66), .Q(next_a[5]) );
  TLATX1 \next_a_reg[4]  ( .G(N69), .D(N65), .Q(next_a[4]) );
  TLATX1 \next_a_reg[3]  ( .G(N69), .D(N64), .Q(next_a[3]) );
  TLATX1 \next_a_reg[2]  ( .G(N69), .D(N63), .Q(next_a[2]) );
  TLATX1 \next_a_reg[1]  ( .G(N69), .D(N62), .Q(next_a[1]) );
  DFFRX1 \reg_a_reg[5]  ( .D(next_a[5]), .CK(CLK), .RN(RST_N), .Q(reg_a[5]), 
        .QN(n76) );
  EDFFX1 ERROR_reg ( .D(error_next), .E(RST_N), .CK(CLK), .Q(ERROR) );
  OAI22XL U80 ( .A0(n67), .A1(n68), .B0(n69), .B1(n70), .Y(n34) );
  NAND2X1 U81 ( .A(state[0]), .B(n79), .Y(n35) );
  NAND2X1 U82 ( .A(n111), .B(n37), .Y(N69) );
  NOR2X1 U83 ( .A(n35), .B(N19), .Y(n41) );
  AND2X2 U84 ( .A(N19), .B(n110), .Y(n40) );
  NOR3X1 U85 ( .A(n33), .B(n34), .C(n35), .Y(N82) );
  CLKINVX1 U86 ( .A(n36), .Y(n111) );
  NAND4X1 U87 ( .A(n97), .B(n96), .C(n95), .D(n94), .Y(n69) );
  OAI21XL U88 ( .A0(n111), .A1(n100), .B0(n65), .Y(N62) );
  AOI22X1 U89 ( .A0(N30), .A1(n41), .B0(N22), .B1(n40), .Y(n65) );
  OAI21XL U90 ( .A0(n111), .A1(n99), .B0(n64), .Y(N63) );
  AOI22X1 U91 ( .A0(N31), .A1(n41), .B0(N23), .B1(n40), .Y(n64) );
  OAI21XL U92 ( .A0(n111), .A1(n98), .B0(n63), .Y(N64) );
  AOI22X1 U93 ( .A0(N32), .A1(n41), .B0(N24), .B1(n40), .Y(n63) );
  OAI21XL U94 ( .A0(n111), .A1(n97), .B0(n62), .Y(N65) );
  AOI22X1 U95 ( .A0(N33), .A1(n41), .B0(N25), .B1(n40), .Y(n62) );
  OAI21XL U96 ( .A0(n111), .A1(n96), .B0(n61), .Y(N66) );
  AOI22X1 U97 ( .A0(N34), .A1(n41), .B0(N26), .B1(n40), .Y(n61) );
  OAI21XL U98 ( .A0(n111), .A1(n95), .B0(n60), .Y(N67) );
  AOI22X1 U99 ( .A0(N35), .A1(n41), .B0(N27), .B1(n40), .Y(n60) );
  NAND3X1 U100 ( .A(n93), .B(n33), .C(n110), .Y(n37) );
  AOI21X1 U101 ( .A0(n93), .A1(n33), .B0(n35), .Y(N81) );
  OAI21XL U102 ( .A0(n93), .A1(n35), .B0(n111), .Y(N60) );
  NOR2X1 U103 ( .A(n71), .B(n36), .Y(n38) );
  CLKINVX1 U104 ( .A(n34), .Y(n93) );
  CLKINVX1 U105 ( .A(n35), .Y(n110) );
  NAND2X1 U106 ( .A(n35), .B(n38), .Y(N79) );
  OR4X1 U107 ( .A(B[0]), .B(B[1]), .C(B[2]), .D(B[3]), .Y(n68) );
  OR4X1 U108 ( .A(B[4]), .B(B[5]), .C(B[6]), .D(B[7]), .Y(n67) );
  NAND4X1 U109 ( .A(n101), .B(n100), .C(n99), .D(n98), .Y(n70) );
  NOR2X1 U110 ( .A(state[0]), .B(state[1]), .Y(n36) );
  NAND2X1 U111 ( .A(n49), .B(n50), .Y(n33) );
  NOR4X1 U112 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n50) );
  NOR4X1 U113 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n49) );
  XOR2X1 U114 ( .A(reg_b[2]), .B(reg_a[2]), .Y(n52) );
  OAI21XL U115 ( .A0(n111), .A1(n101), .B0(n66), .Y(N61) );
  AOI22X1 U116 ( .A0(N29), .A1(n41), .B0(N21), .B1(n40), .Y(n66) );
  OAI21XL U117 ( .A0(n111), .A1(n94), .B0(n59), .Y(N68) );
  AOI22X1 U118 ( .A0(N36), .A1(n41), .B0(N28), .B1(n40), .Y(n59) );
  NOR2X1 U119 ( .A(n79), .B(state[0]), .Y(n71) );
  CLKINVX1 U120 ( .A(n85), .Y(n92) );
  XOR2X1 U121 ( .A(reg_b[0]), .B(reg_a[0]), .Y(n54) );
  XOR2X1 U122 ( .A(reg_b[4]), .B(reg_a[4]), .Y(n58) );
  XOR2X1 U123 ( .A(reg_b[5]), .B(reg_a[5]), .Y(n57) );
  XOR2X1 U124 ( .A(reg_b[1]), .B(reg_a[1]), .Y(n53) );
  XOR2X1 U125 ( .A(reg_b[7]), .B(reg_a[7]), .Y(n55) );
  XOR2X1 U126 ( .A(reg_b[3]), .B(reg_a[3]), .Y(n51) );
  XOR2X1 U127 ( .A(reg_b[6]), .B(reg_a[6]), .Y(n56) );
  OAI2BB1X1 U128 ( .A0N(START), .A1N(n36), .B0(n37), .Y(N80) );
  CLKINVX1 U129 ( .A(A[4]), .Y(n97) );
  CLKINVX1 U130 ( .A(A[0]), .Y(n101) );
  CLKINVX1 U131 ( .A(A[7]), .Y(n94) );
  CLKINVX1 U132 ( .A(A[3]), .Y(n98) );
  CLKINVX1 U133 ( .A(A[6]), .Y(n95) );
  CLKINVX1 U134 ( .A(A[2]), .Y(n99) );
  CLKINVX1 U135 ( .A(A[5]), .Y(n96) );
  CLKINVX1 U136 ( .A(A[1]), .Y(n100) );
  CLKINVX1 U137 ( .A(n47), .Y(n108) );
  AOI222XL U138 ( .A0(reg_a[1]), .A1(n40), .B0(reg_b[1]), .B1(n41), .C0(n36), 
        .C1(B[1]), .Y(n47) );
  CLKINVX1 U139 ( .A(n46), .Y(n107) );
  AOI222XL U140 ( .A0(reg_a[2]), .A1(n40), .B0(reg_b[2]), .B1(n41), .C0(n36), 
        .C1(B[2]), .Y(n46) );
  CLKINVX1 U141 ( .A(n45), .Y(n106) );
  AOI222XL U142 ( .A0(reg_a[3]), .A1(n40), .B0(reg_b[3]), .B1(n41), .C0(n36), 
        .C1(B[3]), .Y(n45) );
  CLKINVX1 U143 ( .A(n44), .Y(n105) );
  AOI222XL U144 ( .A0(reg_a[4]), .A1(n40), .B0(reg_b[4]), .B1(n41), .C0(n36), 
        .C1(B[4]), .Y(n44) );
  CLKINVX1 U145 ( .A(n43), .Y(n104) );
  AOI222XL U146 ( .A0(reg_a[5]), .A1(n40), .B0(reg_b[5]), .B1(n41), .C0(n36), 
        .C1(B[5]), .Y(n43) );
  CLKINVX1 U147 ( .A(n42), .Y(n103) );
  AOI222XL U148 ( .A0(reg_a[6]), .A1(n40), .B0(reg_b[6]), .B1(n41), .C0(n36), 
        .C1(B[6]), .Y(n42) );
  CLKINVX1 U149 ( .A(n39), .Y(n102) );
  AOI222XL U150 ( .A0(reg_a[7]), .A1(n40), .B0(reg_b[7]), .B1(n41), .C0(n36), 
        .C1(B[7]), .Y(n39) );
  CLKINVX1 U151 ( .A(n48), .Y(n109) );
  AOI222XL U152 ( .A0(reg_a[0]), .A1(n40), .B0(reg_b[0]), .B1(n41), .C0(n36), 
        .C1(B[0]), .Y(n48) );
  NOR2BX1 U153 ( .AN(reg_a[3]), .B(reg_b[3]), .Y(n80) );
  AOI21X1 U154 ( .A0(reg_a[2]), .A1(n72), .B0(n80), .Y(n81) );
  OAI32X1 U155 ( .A0(n72), .A1(reg_a[2]), .A2(n80), .B0(reg_a[3]), .B1(n78), 
        .Y(n82) );
  NAND2BX1 U156 ( .AN(reg_b[5]), .B(reg_a[5]), .Y(n86) );
  OAI221XL U157 ( .A0(reg_b[4]), .A1(n73), .B0(n81), .B1(n82), .C0(n86), .Y(
        n91) );
  AOI2BB1X1 U158 ( .A0N(n77), .A1N(reg_b[1]), .B0(reg_a[0]), .Y(n83) );
  AOI221XL U159 ( .A0(reg_b[1]), .A1(n77), .B0(n83), .B1(reg_b[0]), .C0(n82), 
        .Y(n90) );
  AND2X1 U160 ( .A(reg_a[7]), .B(n74), .Y(n84) );
  AO21X1 U161 ( .A0(n75), .A1(reg_a[6]), .B0(n84), .Y(n89) );
  OAI32X1 U162 ( .A0(n75), .A1(reg_a[6]), .A2(n84), .B0(reg_a[7]), .B1(n74), 
        .Y(n85) );
  AOI32X1 U163 ( .A0(reg_b[4]), .A1(n73), .A2(n86), .B0(n76), .B1(reg_b[5]), 
        .Y(n87) );
  AO22X1 U164 ( .A0(n92), .A1(n87), .B0(n89), .B1(n92), .Y(n88) );
  OAI31XL U165 ( .A0(n91), .A1(n90), .A2(n89), .B0(n88), .Y(N19) );
endmodule

