/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP3
// Date      : Fri Mar 22 14:40:27 2024
/////////////////////////////////////////////////////////////


module modA ( upf_clk, lav_reset, lav_in1, lav_in2, lav_Cin, lav_B2A, lav_C2A, 
        lav_A2D, lav_Cout_BC );
  input [7:0] lav_in1;
  input [7:0] lav_in2;
  output [7:0] lav_A2D;
  input upf_clk, lav_reset, lav_Cin, lav_B2A, lav_C2A;
  output lav_Cout_BC;
  wire   N12, N13, N14, N15, lav_C_2, lav_C_1, lav_C_0, N45, N49, N50, N51,
         N52, N64, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20,
         n1, n2, n3, n4, n5, n6, n19, n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] lav_G;
  wire   [4:0] lav_P;
  wire   [7:5] lav_C;

  DFFX1_HVT lav_G_reg_3_ ( .D(N15), .CLK(upf_clk), .Q(lav_G[3]) );
  DFFX1_HVT lav_G_reg_2_ ( .D(N14), .CLK(upf_clk), .Q(lav_G[2]) );
  DFFX1_HVT lav_G_reg_1_ ( .D(N13), .CLK(upf_clk), .Q(lav_G[1]) );
  DFFX1_HVT lav_G_reg_0_ ( .D(N12), .CLK(upf_clk), .Q(lav_G[0]) );
  DFFSSRX1_HVT lav_P_reg_4_ ( .D(lav_in2[4]), .SETB(n13), .RSTB(n27), .CLK(
        upf_clk), .Q(lav_P[4]) );
  DFFSSRX1_HVT lav_P_reg_3_ ( .D(lav_in1[3]), .SETB(n12), .RSTB(n28), .CLK(
        upf_clk), .Q(lav_P[3]) );
  DFFSSRX1_HVT lav_P_reg_2_ ( .D(lav_in1[2]), .SETB(n11), .RSTB(n28), .CLK(
        upf_clk), .Q(lav_P[2]) );
  DFFSSRX1_HVT lav_P_reg_1_ ( .D(lav_in1[1]), .SETB(n10), .RSTB(n27), .CLK(
        upf_clk), .Q(lav_P[1]) );
  DFFSSRX1_HVT lav_P_reg_0_ ( .D(lav_in1[0]), .SETB(n9), .RSTB(n27), .CLK(
        upf_clk), .Q(lav_P[0]) );
  DFFX1_HVT lav_C_reg_7_ ( .D(N52), .CLK(upf_clk), .Q(lav_C[7]) );
  DFFX1_HVT lav_C_reg_6_ ( .D(N51), .CLK(upf_clk), .Q(lav_C[6]) );
  DFFX1_HVT lav_C_reg_5_ ( .D(N50), .CLK(upf_clk), .Q(lav_C[5]) );
  DFFX1_HVT lav_C_reg_2_ ( .D(N49), .CLK(upf_clk), .Q(lav_C_2) );
  DFFSSRX1_HVT lav_C_reg_1_ ( .D(lav_G[0]), .SETB(n8), .RSTB(n27), .CLK(
        upf_clk), .Q(lav_C_1) );
  DFFX1_HVT lav_C_reg_0_ ( .D(N45), .CLK(upf_clk), .Q(lav_C_0) );
  DFFSSRX1_HVT lav_Cout_BC_reg ( .D(lav_C_2), .SETB(1'b1), .RSTB(n28), .CLK(
        upf_clk), .Q(lav_Cout_BC) );
  DFFSSRX1_HVT lav_A2D_reg_6_ ( .D(n14), .SETB(1'b1), .RSTB(n26), .CLK(upf_clk), .Q(lav_A2D[6]) );
  DFFSSRX1_HVT lav_A2D_reg_5_ ( .D(n15), .SETB(1'b1), .RSTB(n26), .CLK(upf_clk), .Q(lav_A2D[5]) );
  DFFSSRX1_HVT lav_A2D_reg_4_ ( .D(n16), .SETB(1'b1), .RSTB(n26), .CLK(upf_clk), .Q(lav_A2D[4]) );
  DFFSSRX1_HVT lav_A2D_reg_3_ ( .D(n17), .SETB(1'b1), .RSTB(n25), .CLK(upf_clk), .Q(lav_A2D[3]) );
  DFFSSRX1_HVT lav_A2D_reg_2_ ( .D(n18), .SETB(1'b1), .RSTB(n25), .CLK(upf_clk), .Q(lav_A2D[2]) );
  DFFSSRX1_HVT lav_A2D_reg_1_ ( .D(n20), .SETB(1'b1), .RSTB(n25), .CLK(upf_clk), .Q(lav_A2D[1]) );
  DFFX1_HVT lav_A2D_reg_0_ ( .D(N64), .CLK(upf_clk), .Q(lav_A2D[0]) );
  NOR3X0_HVT U3 ( .A1(lav_reset), .A2(lav_B2A), .A3(lav_C2A), .Y(n1) );
  INVX0_HVT U4 ( .A(lav_reset), .Y(n28) );
  INVX0_HVT U5 ( .A(lav_in2[3]), .Y(n12) );
  NBUFFX2_HVT U6 ( .A(n1), .Y(n25) );
  NBUFFX2_HVT U7 ( .A(n1), .Y(n26) );
  INVX0_HVT U8 ( .A(lav_in2[1]), .Y(n10) );
  INVX0_HVT U9 ( .A(lav_in2[0]), .Y(n9) );
  INVX0_HVT U10 ( .A(lav_in2[2]), .Y(n11) );
  NAND2X0_HVT U11 ( .A1(lav_Cin), .A2(lav_P[0]), .Y(n8) );
  INVX0_HVT U12 ( .A(lav_reset), .Y(n27) );
  INVX0_HVT U13 ( .A(lav_in1[4]), .Y(n13) );
  AND3X1_HVT U14 ( .A1(lav_in2[0]), .A2(lav_in1[0]), .A3(n27), .Y(N12) );
  FADDX1_HVT U15 ( .A(lav_C_0), .B(lav_in2[0]), .CI(lav_in1[0]), .S(N64) );
  FADDX1_HVT U16 ( .A(lav_in1[5]), .B(lav_in2[5]), .CI(lav_C[5]), .S(n15) );
  AND2X1_HVT U17 ( .A1(lav_P[2]), .A2(lav_P[1]), .Y(n21) );
  INVX0_HVT U18 ( .A(n8), .Y(n19) );
  OR2X1_HVT U19 ( .A1(lav_G[0]), .A2(n19), .Y(n2) );
  AND2X1_HVT U20 ( .A1(n21), .A2(n2), .Y(n4) );
  OA221X1_HVT U21 ( .A1(lav_G[2]), .A2(lav_P[2]), .A3(lav_G[2]), .A4(lav_G[1]), 
        .A5(lav_P[3]), .Y(n3) );
  OR2X1_HVT U22 ( .A1(lav_G[3]), .A2(n3), .Y(n5) );
  AO221X1_HVT U23 ( .A1(lav_P[3]), .A2(lav_reset), .A3(lav_P[3]), .A4(n4), 
        .A5(n5), .Y(N45) );
  OA221X1_HVT U24 ( .A1(n5), .A2(lav_P[3]), .A3(n5), .A4(n4), .A5(n28), .Y(N49) );
  AND2X1_HVT U25 ( .A1(lav_P[3]), .A2(n28), .Y(n24) );
  OA221X1_HVT U26 ( .A1(lav_G[2]), .A2(lav_Cin), .A3(lav_G[2]), .A4(lav_P[4]), 
        .A5(n21), .Y(n6) );
  AND2X1_HVT U27 ( .A1(lav_G[3]), .A2(n27), .Y(n22) );
  AO221X1_HVT U28 ( .A1(n24), .A2(lav_G[0]), .A3(n24), .A4(n6), .A5(n22), .Y(
        N50) );
  AO22X1_HVT U29 ( .A1(n24), .A2(lav_Cin), .A3(lav_G[0]), .A4(n28), .Y(N51) );
  AO22X1_HVT U30 ( .A1(lav_G[2]), .A2(lav_P[2]), .A3(n21), .A4(n19), .Y(n23)
         );
  AO221X1_HVT U31 ( .A1(n24), .A2(lav_G[1]), .A3(n24), .A4(n23), .A5(n22), .Y(
        N52) );
  AND3X1_HVT U32 ( .A1(lav_in2[1]), .A2(lav_in1[1]), .A3(n27), .Y(N13) );
  AND3X1_HVT U33 ( .A1(lav_in2[2]), .A2(lav_in1[2]), .A3(n28), .Y(N14) );
  AND3X1_HVT U34 ( .A1(lav_in2[3]), .A2(lav_in1[3]), .A3(n28), .Y(N15) );
  FADDX1_HVT U35 ( .A(lav_C_1), .B(lav_in2[1]), .CI(lav_in1[1]), .S(n20) );
  FADDX1_HVT U36 ( .A(lav_C_2), .B(lav_in2[2]), .CI(lav_in1[2]), .S(n18) );
  FADDX1_HVT U37 ( .A(lav_in1[7]), .B(lav_in2[7]), .CI(lav_C[7]), .S(n17) );
  FADDX1_HVT U38 ( .A(lav_C_2), .B(lav_in1[4]), .CI(lav_in2[4]), .S(n16) );
  FADDX1_HVT U39 ( .A(lav_in1[6]), .B(lav_in2[6]), .CI(lav_C[6]), .S(n14) );
endmodule


module modB ( upf_clk, lav_d, lav_notEN, lav_B_out0_2C, lav_B2A, lav_B2D, 
        lav_done );
  input [7:0] lav_d;
  input upf_clk, lav_notEN;
  output lav_B_out0_2C, lav_B2A, lav_B2D, lav_done;
  wire   n33, n34, n35, n36, n37, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n19, n20, n21, n22, n23, n24, n25,
         n27, n28;
  wire   [7:0] i;

  DFFX1_HVT i_reg_7_ ( .D(n18), .CLK(upf_clk), .Q(i[7]), .QN(n25) );
  DFFX1_HVT i_reg_6_ ( .D(n17), .CLK(upf_clk), .Q(i[6]) );
  DFFX1_HVT i_reg_5_ ( .D(n16), .CLK(upf_clk), .Q(i[5]) );
  DFFX1_HVT i_reg_4_ ( .D(n15), .CLK(upf_clk), .Q(i[4]) );
  DFFX1_HVT i_reg_3_ ( .D(n14), .CLK(upf_clk), .Q(i[3]), .QN(n24) );
  DFFX1_HVT i_reg_2_ ( .D(n13), .CLK(upf_clk), .Q(i[2]), .QN(n22) );
  DFFX1_HVT i_reg_1_ ( .D(n12), .CLK(upf_clk), .Q(i[1]), .QN(n27) );
  DFFX1_HVT i_reg_0_ ( .D(n11), .CLK(upf_clk), .Q(i[0]), .QN(n23) );
  LSDNSSX1_HVT lav_d_7__UPF_LS ( .A(lav_d[7]), .Y(n33) );
  LSDNSSX2_HVT lav_d_6__UPF_LS ( .A(lav_d[6]), .Y(n34) );
  LSDNSSX2_HVT lav_d_5__UPF_LS ( .A(lav_d[5]), .Y(n35) );
  LSDNSSX2_HVT lav_notEN_UPF_LS ( .A(lav_notEN), .Y(n36) );
  DFFX2_HVT lav_done_reg ( .D(n10), .CLK(upf_clk), .Q(n37), .QN(n28) );
  INVX0_HVT U2 ( .A(n28), .Y(lav_done) );
  OR4X1_HVT U3 ( .A1(i[6]), .A2(i[7]), .A3(i[3]), .A4(i[2]), .Y(n6) );
  INVX0_HVT U4 ( .A(n36), .Y(n7) );
  INVX0_HVT U5 ( .A(n4), .Y(n2) );
  INVX0_HVT U6 ( .A(n8), .Y(n4) );
  INVX0_HVT U7 ( .A(n7), .Y(n19) );
  INVX0_HVT U8 ( .A(n21), .Y(n9) );
  INVX0_HVT U9 ( .A(n25), .Y(n20) );
  INVX0_HVT U10 ( .A(n7), .Y(n21) );
  INVX0_HVT U11 ( .A(n36), .Y(n8) );
  AO22X1_HVT U12 ( .A1(n21), .A2(n20), .A3(n8), .A4(n33), .Y(n18) );
  AO22X1_HVT U13 ( .A1(n36), .A2(i[2]), .A3(n2), .A4(lav_d[2]), .Y(n13) );
  AO22X1_HVT U14 ( .A1(n19), .A2(i[5]), .A3(n8), .A4(n35), .Y(n16) );
  AO22X1_HVT U15 ( .A1(n19), .A2(i[6]), .A3(n9), .A4(n34), .Y(n17) );
  NOR4X1_HVT U16 ( .A1(i[6]), .A2(i[4]), .A3(i[7]), .A4(i[5]), .Y(n1) );
  OAI22X1_HVT U17 ( .A1(n28), .A2(n1), .A3(n37), .A4(n22), .Y(lav_B_out0_2C)
         );
  AND4X1_HVT U18 ( .A1(n1), .A2(n23), .A3(n24), .A4(n22), .Y(n3) );
  OAI222X1_HVT U19 ( .A1(n4), .A2(n27), .A3(n4), .A4(n3), .A5(n28), .A6(n2), 
        .Y(n10) );
  OR2X1_HVT U20 ( .A1(n20), .A2(i[5]), .Y(n5) );
  AO221X1_HVT U21 ( .A1(lav_done), .A2(i[1]), .A3(lav_done), .A4(n5), .A5(i[3]), .Y(lav_B2D) );
  AO22X1_HVT U22 ( .A1(n37), .A2(n6), .A3(n28), .A4(i[0]), .Y(lav_B2A) );
  AO22X1_HVT U23 ( .A1(n19), .A2(i[0]), .A3(n9), .A4(lav_d[0]), .Y(n11) );
  AO22X1_HVT U24 ( .A1(n19), .A2(i[1]), .A3(n9), .A4(lav_d[1]), .Y(n12) );
  AO22X1_HVT U25 ( .A1(n4), .A2(i[3]), .A3(n9), .A4(lav_d[3]), .Y(n14) );
  AO22X1_HVT U26 ( .A1(n19), .A2(i[4]), .A3(n9), .A4(lav_d[4]), .Y(n15) );
endmodule


module modC ( lav_in1, upf_clk, lav_reset, lav_out_C1, lav_out_C2, lav_out_C3, 
        lav_out_C2B_1, lav_out_C2B_2, lav_out_C2B_3, lav_out_C2B_4, 
        lav_out_C2B_5, lav_C2A, lav_C2D );
  input [2:0] lav_in1;
  input upf_clk, lav_reset;
  output lav_out_C1, lav_out_C2, lav_out_C3, lav_out_C2B_1, lav_out_C2B_2,
         lav_out_C2B_3, lav_out_C2B_4, lav_out_C2B_5, lav_C2A, lav_C2D;
  wire   n24, n25, n26, n12, n13, n14, n15, n16, n17, n18, n19, n20, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11;

  DFFX1_HVT lav_out_C2B_5_reg ( .D(n20), .CLK(upf_clk), .Q(lav_out_C2B_5) );
  DFFX1_HVT lav_out_C1_reg ( .D(n11), .CLK(upf_clk), .Q(lav_out_C1) );
  DFFX1_HVT lav_C2A_reg ( .D(n19), .CLK(upf_clk), .Q(lav_C2A) );
  DFFX1_HVT lav_C2D_reg ( .D(n18), .CLK(upf_clk), .Q(lav_C2D) );
  DFFX1_HVT lav_out_C2_reg ( .D(n17), .CLK(upf_clk), .Q(lav_out_C2) );
  DFFX1_HVT lav_out_C3_reg ( .D(n16), .CLK(upf_clk), .Q(lav_out_C3) );
  DFFX1_HVT lav_out_C2B_1_reg ( .D(n15), .CLK(upf_clk), .Q(lav_out_C2B_1) );
  DFFX1_HVT lav_out_C2B_2_reg ( .D(n14), .CLK(upf_clk), .Q(lav_out_C2B_2) );
  DFFX1_HVT lav_out_C2B_3_reg ( .D(n13), .CLK(upf_clk), .Q(lav_out_C2B_3) );
  DFFX1_HVT lav_out_C2B_4_reg ( .D(n12), .CLK(upf_clk), .Q(lav_out_C2B_4) );
  LSDNSSX8_HVT lav_in1_0__UPF_LS ( .A(lav_in1[0]), .Y(n25) );
  LSDNSSX2_HVT lav_in1_1__UPF_LS ( .A(lav_in1[1]), .Y(n24) );
  LSDNSSX2_HVT lav_reset_UPF_LS ( .A(lav_reset), .Y(n26) );
  INVX0_HVT U3 ( .A(lav_in1[2]), .Y(n5) );
  INVX0_HVT U4 ( .A(n1), .Y(n2) );
  INVX0_HVT U5 ( .A(n26), .Y(n7) );
  INVX0_HVT U6 ( .A(n25), .Y(n1) );
  INVX0_HVT U7 ( .A(n24), .Y(n6) );
  INVX0_HVT U8 ( .A(n6), .Y(n10) );
  AO22X1_HVT U9 ( .A1(n24), .A2(n1), .A3(n6), .A4(n25), .Y(n11) );
  NBUFFX2_HVT U10 ( .A(lav_in1[2]), .Y(n4) );
  NBUFFX2_HVT U11 ( .A(n5), .Y(n3) );
  MUX41X1_HVT U12 ( .A1(lav_out_C2B_1), .A3(n4), .A2(lav_out_C2B_1), .A4(n3), 
        .S0(n7), .S1(n11), .Y(n15) );
  OA222X1_HVT U13 ( .A1(n26), .A2(n24), .A3(n26), .A4(n2), .A5(lav_out_C2B_4), 
        .A6(n7), .Y(n12) );
  AND2X1_HVT U14 ( .A1(n4), .A2(n7), .Y(n9) );
  AO22X1_HVT U15 ( .A1(n26), .A2(lav_out_C2B_3), .A3(n2), .A4(n9), .Y(n13) );
  OA222X1_HVT U16 ( .A1(n26), .A2(n10), .A3(n26), .A4(n3), .A5(lav_out_C2B_2), 
        .A6(n7), .Y(n14) );
  MUX41X1_HVT U17 ( .A1(n4), .A3(lav_out_C3), .A2(n3), .A4(lav_out_C3), .S0(
        n26), .S1(n25), .Y(n16) );
  AO22X1_HVT U18 ( .A1(lav_in1[2]), .A2(n6), .A3(n5), .A4(n24), .Y(n8) );
  AO22X1_HVT U19 ( .A1(n26), .A2(lav_out_C2), .A3(n7), .A4(n8), .Y(n17) );
  AO22X1_HVT U20 ( .A1(n26), .A2(n10), .A3(n7), .A4(lav_C2D), .Y(n18) );
  AO22X1_HVT U21 ( .A1(n26), .A2(n8), .A3(n7), .A4(lav_C2A), .Y(n19) );
  AO22X1_HVT U22 ( .A1(n26), .A2(lav_out_C2B_5), .A3(n10), .A4(n9), .Y(n20) );
endmodule


module modD ( lav_A2D, lav_in2, upf_clk, lav_B2D, lav_C2D, lav_D_eq_2B, 
        lav_D_cin_2A, lav_D_less_2C, lav_Dout );
  input [7:0] lav_A2D;
  input [7:0] lav_in2;
  input upf_clk, lav_B2D, lav_C2D;
  output lav_D_eq_2B, lav_D_cin_2A, lav_D_less_2C, lav_Dout;
  wire   N4, n44, n45, n46, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n47, n48, n49, n50, n51;

  DFFX1_HVT lav_Dout_reg ( .D(N4), .CLK(upf_clk), .Q(lav_Dout) );
  DFFX1_HVT lav_D_cin_2A_reg ( .D(n45), .CLK(upf_clk), .Q(lav_D_cin_2A) );
  DFFX2_HVT lav_D_eq_2B_reg ( .D(n46), .CLK(upf_clk), .Q(lav_D_eq_2B) );
  DFFX1_HVT lav_D_less_2C_reg ( .D(n44), .CLK(upf_clk), .Q(lav_D_less_2C) );
  OA22X1_HVT U3 ( .A1(lav_in2[3]), .A2(n24), .A3(n32), .A4(n1), .Y(n6) );
  OA22X1_HVT U4 ( .A1(lav_in2[2]), .A2(n27), .A3(n11), .A4(n15), .Y(n1) );
  NAND3X0_HVT U5 ( .A1(n2), .A2(n47), .A3(n48), .Y(n46) );
  NAND2X0_HVT U6 ( .A1(n43), .A2(lav_A2D[6]), .Y(n2) );
  NAND2X0_HVT U7 ( .A1(n3), .A2(n16), .Y(n39) );
  NAND2X0_HVT U8 ( .A1(n41), .A2(n42), .Y(n3) );
  NBUFFX2_HVT U9 ( .A(n50), .Y(n8) );
  INVX0_HVT U10 ( .A(lav_A2D[1]), .Y(n4) );
  OA22X1_HVT U11 ( .A1(lav_in2[1]), .A2(n4), .A3(lav_in2[0]), .A4(n33), .Y(n15) );
  AND2X1_HVT U12 ( .A1(n4), .A2(lav_in2[1]), .Y(n11) );
  AND2X1_HVT U13 ( .A1(n9), .A2(n39), .Y(n43) );
  NAND3X0_HVT U14 ( .A1(n10), .A2(n40), .A3(n5), .Y(n44) );
  NAND2X0_HVT U15 ( .A1(n43), .A2(lav_A2D[1]), .Y(n5) );
  OA22X1_HVT U16 ( .A1(n21), .A2(n30), .A3(n23), .A4(n6), .Y(n41) );
  NBUFFX2_HVT U17 ( .A(n8), .Y(n7) );
  INVX0_HVT U18 ( .A(n50), .Y(n9) );
  NAND2X0_HVT U19 ( .A1(n7), .A2(lav_A2D[2]), .Y(n10) );
  AND2X1_HVT U20 ( .A1(n37), .A2(n38), .Y(n50) );
  NOR2X0_HVT U21 ( .A1(n12), .A2(n11), .Y(n34) );
  INVX0_HVT U22 ( .A(lav_A2D[0]), .Y(n33) );
  INVX0_HVT U23 ( .A(lav_A2D[4]), .Y(n19) );
  INVX0_HVT U24 ( .A(n23), .Y(n31) );
  INVX0_HVT U25 ( .A(lav_A2D[3]), .Y(n24) );
  INVX0_HVT U26 ( .A(lav_in2[6]), .Y(n26) );
  INVX0_HVT U27 ( .A(lav_A2D[6]), .Y(n25) );
  INVX0_HVT U28 ( .A(lav_in2[7]), .Y(n18) );
  AND2X1_HVT U29 ( .A1(lav_in2[0]), .A2(n33), .Y(n12) );
  NAND2X0_HVT U30 ( .A1(lav_in2[6]), .A2(n25), .Y(n13) );
  AND2X1_HVT U31 ( .A1(n34), .A2(n14), .Y(n35) );
  AND2X1_HVT U32 ( .A1(n15), .A2(n18), .Y(n14) );
  AO22X1_HVT U33 ( .A1(n27), .A2(lav_in2[2]), .A3(lav_in2[3]), .A4(n24), .Y(
        n32) );
  AND2X1_HVT U34 ( .A1(n13), .A2(n18), .Y(n16) );
  AND3X1_HVT U35 ( .A1(n18), .A2(n13), .A3(n17), .Y(n49) );
  NAND2X0_HVT U36 ( .A1(n42), .A2(n41), .Y(n17) );
  INVX1_HVT U37 ( .A(lav_A2D[5]), .Y(n20) );
  AND2X1_HVT U38 ( .A1(lav_in2[5]), .A2(n20), .Y(n21) );
  OA22X1_HVT U39 ( .A1(lav_in2[4]), .A2(n19), .A3(lav_in2[5]), .A4(n20), .Y(
        n30) );
  AO22X1_HVT U40 ( .A1(lav_in2[5]), .A2(n20), .A3(lav_in2[4]), .A4(n19), .Y(
        n23) );
  INVX1_HVT U41 ( .A(lav_A2D[2]), .Y(n27) );
  NAND2X0_HVT U42 ( .A1(lav_A2D[6]), .A2(n26), .Y(n42) );
  INVX0_HVT U43 ( .A(n39), .Y(n22) );
  NAND2X0_HVT U44 ( .A1(n22), .A2(lav_A2D[5]), .Y(n40) );
  OA222X1_HVT U45 ( .A1(lav_A2D[6]), .A2(n26), .A3(n25), .A4(lav_in2[6]), .A5(
        lav_in2[3]), .A6(n24), .Y(n29) );
  OR2X1_HVT U46 ( .A1(n27), .A2(lav_in2[2]), .Y(n28) );
  AND4X1_HVT U47 ( .A1(n31), .A2(n30), .A3(n29), .A4(n28), .Y(n38) );
  INVX0_HVT U48 ( .A(n32), .Y(n36) );
  AND2X1_HVT U49 ( .A1(n36), .A2(n35), .Y(n37) );
  NAND2X0_HVT U50 ( .A1(n8), .A2(lav_A2D[0]), .Y(n48) );
  NAND2X0_HVT U51 ( .A1(lav_A2D[4]), .A2(n49), .Y(n47) );
  AO22X1_HVT U52 ( .A1(lav_A2D[1]), .A2(n7), .A3(n49), .A4(lav_A2D[3]), .Y(n45) );
  OR2X1_HVT U53 ( .A1(lav_B2D), .A2(lav_C2D), .Y(n51) );
  MUX21X1_HVT U54 ( .A1(lav_A2D[1]), .A2(lav_A2D[0]), .S0(n51), .Y(N4) );
endmodule


module ece581_ip_top ( lav_in1, lav_in2, lav_c, lav_en, upf_clk, lav_reset, 
        lav_A2D, lav_Cout_BC, lav_B2A, lav_B2D, lav_out_C1, lav_out_C2, 
        lav_out_C3, lav_D_eq_2B, lav_done, lav_Dout, pwr_cntrl_A, pwr_cntrl_B, 
        pwr_cntrl_C, pwr_cntrl_D, ctrl_A, ctrl_B, ctrl_C, ctrl_D );
  input [7:0] lav_in1;
  input [7:0] lav_in2;
  output [7:0] lav_A2D;
  input lav_c, lav_en, upf_clk, lav_reset, pwr_cntrl_A, pwr_cntrl_B,
         pwr_cntrl_C, pwr_cntrl_D, ctrl_A, ctrl_B, ctrl_C, ctrl_D;
  output lav_Cout_BC, lav_B2A, lav_B2D, lav_out_C1, lav_out_C2, lav_out_C3,
         lav_D_eq_2B, lav_done, lav_Dout;
  wire   n21, n22, n23, n24, n25, n26, lav_D_cin_2A, lav_C2A, lav_B_out0_2C,
         lav_out_C2B_1, lav_out_C2B_2, lav_out_C2B_3, lav_out_C2B_4,
         lav_out_C2B_5, lav_C2D, lav_D_less_2C, net4219, net4220, net4221,
         net4222, net49, net50, net51, net53, net54, net55, net56, net57,
         net58, net59, net60, net61, net62, net63, net64, net65, net66, net67,
         net68, net69, net70, net71, net72, net73, net74, net75, n1, n2, n3,
         n4, n8, n9, n11, n16, n17, n18, n19, n20, SYNOPSYS_UNCONNECTED_1;
  assign lav_A2D[7] = 1'b0;
  assign net4219 = ctrl_A;
  assign net4220 = ctrl_B;
  assign net4221 = ctrl_C;
  assign net4222 = ctrl_D;

  modA A_inst ( .upf_clk(upf_clk), .lav_reset(lav_reset), .lav_in1(lav_in1), 
        .lav_in2({lav_in2[7:3], n3, n2, n1}), .lav_Cin(lav_D_cin_2A), 
        .lav_B2A(n8), .lav_C2A(n9), .lav_A2D({SYNOPSYS_UNCONNECTED_1, net53, 
        net54, net55, net56, net57, net58, net59}), .lav_Cout_BC(net60) );
  modB B_inst ( .upf_clk(upf_clk), .lav_d({lav_D_eq_2B, lav_c, lav_Cout_BC, 
        lav_out_C2B_1, lav_out_C2B_2, lav_out_C2B_3, lav_out_C2B_4, 
        lav_out_C2B_5}), .lav_notEN(lav_en), .lav_B_out0_2C(net67), .lav_B2A(
        net50), .lav_B2D(net68), .lav_done(net69) );
  modC C_inst ( .lav_in1({lav_B_out0_2C, lav_Cout_BC, lav_D_less_2C}), 
        .upf_clk(upf_clk), .lav_reset(lav_reset), .lav_out_C1(net71), 
        .lav_out_C2(net72), .lav_out_C3(net73), .lav_out_C2B_1(net62), 
        .lav_out_C2B_2(net63), .lav_out_C2B_3(net64), .lav_out_C2B_4(net65), 
        .lav_out_C2B_5(net66), .lav_C2A(net51), .lav_C2D(net74) );
  modD D_inst ( .lav_A2D({1'b0, lav_A2D[6:0]}), .lav_in2(lav_in2), .upf_clk(
        upf_clk), .lav_B2D(n11), .lav_C2D(n16), .lav_D_eq_2B(net61), 
        .lav_D_cin_2A(net49), .lav_D_less_2C(net70), .lav_Dout(net75) );
  ISOLORX1_HVT snps_pd_modD__iso_D2Top_snps_lav_Dout_UPF_ISO ( .D(net75), 
        .ISO(n20), .Q(lav_Dout) ); //synopsys isolation_upf iso_D2Top+pd_modD
  ISOLORAOX1_HVT snps_pd_modC__iso_C2D_snps_lav_C2D_UPF_ISO ( .D(net74), .ISO(
        n19), .Q(lav_C2D) ); //synopsys isolation_upf iso_C2D+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2Top3_snps_lav_out_C3_UPF_ISO ( .D(net73), 
        .ISO(n19), .Q(n25) ); //synopsys isolation_upf iso_C2Top3+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2Top2_snps_lav_out_C2_UPF_ISO ( .D(net72), 
        .ISO(n19), .Q(n24) ); //synopsys isolation_upf iso_C2Top2+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2Top1_snps_lav_out_C1_UPF_ISO ( .D(net71), 
        .ISO(n19), .Q(n23) ); //synopsys isolation_upf iso_C2Top1+pd_modC
  ISOLANDAOX1_HVT snps_pd_modB__iso_B2Top3_snps_lav_done_UPF_ISO ( .D(net69), 
        .ISO(n18), .Q(n26) ); //synopsys isolation_upf iso_B2Top3+pd_modB
  ISOLANDAOX1_HVT snps_pd_modB__iso_B2DTop2_snps_lav_B2D_UPF_ISO ( .D(net68), 
        .ISO(n18), .Q(n22) ); //synopsys isolation_upf iso_B2DTop2+pd_modB
  ISOLANDAOX1_HVT snps_pd_modB__iso_B2C_snps_lav_B_out0_2C_UPF_ISO ( .D(net67), 
        .ISO(n18), .Q(lav_B_out0_2C) ); //synopsys isolation_upf iso_B2C+pd_modB
  ISOLORAOX1_HVT snps_pd_modC__iso_C2B5_snps_lav_out_C2B_5_UPF_ISO ( .D(net66), 
        .ISO(n19), .Q(lav_out_C2B_5) ); //synopsys isolation_upf iso_C2B5+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2B4_snps_lav_out_C2B_4_UPF_ISO ( .D(net65), 
        .ISO(n19), .Q(lav_out_C2B_4) ); //synopsys isolation_upf iso_C2B4+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2B3_snps_lav_out_C2B_3_UPF_ISO ( .D(net64), 
        .ISO(n19), .Q(lav_out_C2B_3) ); //synopsys isolation_upf iso_C2B3+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2B2_snps_lav_out_C2B_2_UPF_ISO ( .D(net63), 
        .ISO(n19), .Q(lav_out_C2B_2) ); //synopsys isolation_upf iso_C2B2+pd_modC
  ISOLORAOX1_HVT snps_pd_modC__iso_C2B1_snps_lav_out_C2B_1_UPF_ISO ( .D(net62), 
        .ISO(n19), .Q(lav_out_C2B_1) ); //synopsys isolation_upf iso_C2B1+pd_modC
  ISOLORX1_HVT snps_pd_modD__iso_D2B_snps_lav_D_eq_2B_UPF_ISO ( .D(net61), 
        .ISO(n20), .Q(lav_D_eq_2B) ); //synopsys isolation_upf iso_D2B+pd_modD
  ISOLANDX1_HVT snps_pd_modA__iso_A2BCTop_snps_lav_Cout_BC_UPF_ISO ( .D(net60), 
        .ISO(n17), .Q(lav_Cout_BC) ); //synopsys isolation_upf iso_A2BCTop+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_0__UPF_ISO ( .D(net59), 
        .ISO(n17), .Q(lav_A2D[0]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_2__UPF_ISO ( .D(net57), 
        .ISO(n17), .Q(lav_A2D[2]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_3__UPF_ISO ( .D(net56), 
        .ISO(n17), .Q(lav_A2D[3]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_4__UPF_ISO ( .D(net55), 
        .ISO(n17), .Q(lav_A2D[4]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_5__UPF_ISO ( .D(net54), 
        .ISO(n17), .Q(lav_A2D[5]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLANDX1_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_6__UPF_ISO ( .D(net53), 
        .ISO(n17), .Q(lav_A2D[6]) ); //synopsys isolation_upf iso_A2D+pd_modA
  ISOLORAOX1_HVT snps_pd_modC__iso_C2A_snps_lav_C2A_UPF_ISO ( .D(net51), .ISO(
        n19), .Q(lav_C2A) ); //synopsys isolation_upf iso_C2A+pd_modC
  ISOLANDAOX1_HVT snps_pd_modB__iso_B2ATop1_snps_lav_B2A_UPF_ISO ( .D(net50), 
        .ISO(n18), .Q(n21) ); //synopsys isolation_upf iso_B2ATop1+pd_modB
  ISOLORX1_HVT snps_pd_modD__iso_D2A_snps_lav_D_cin_2A_UPF_ISO ( .D(net49), 
        .ISO(n20), .Q(lav_D_cin_2A) ); //synopsys isolation_upf iso_D2A+pd_modD
  LSUPX2_HVT lav_C2D_UPF_LS ( .A(lav_C2D), .Y(n16) );
  LSUPX1_HVT lav_out_C3_UPF_LS ( .A(n25), .Y(lav_out_C3) );
  LSUPX1_HVT lav_out_C2_UPF_LS ( .A(n24), .Y(lav_out_C2) );
  LSUPX1_HVT lav_out_C1_UPF_LS ( .A(n23), .Y(lav_out_C1) );
  LSUPX1_HVT lav_done_UPF_LS ( .A(n26), .Y(lav_done) );
  LSUPX1_HVT lav_B2D_1_UPF_LS ( .A(n22), .Y(lav_B2D) );
  LSUPX1_HVT lav_B2A_UPF_LS ( .A(n21), .Y(n8) );
  ISOLORX2_HVT snps_pd_modD__iso_D2C_snps_lav_D_less_2C_UPF_ISO ( .D(net70), 
        .ISO(n20), .Q(lav_D_less_2C) ); //synopsys isolation_upf iso_D2C+pd_modD
  LSUPX1_HVT lav_B2A_1_UPF_LS ( .A(n4), .Y(lav_B2A) );
  ISOLANDX2_HVT snps_pd_modA__iso_A2D_snps_lav_A2D_1__UPF_ISO ( .D(net58), 
        .ISO(n17), .Q(lav_A2D[1]) ); //synopsys isolation_upf iso_A2D+pd_modA
  LSUPX1_HVT lav_C2A_UPF_LS ( .A(lav_C2A), .Y(n9) );
  INVX0_HVT snps_iso_control_inv_1 ( .A(net4221), .Y(n19) );
  INVX0_HVT snps_iso_control_inv_3 ( .A(net4219), .Y(n17) );
  INVX0_HVT snps_iso_control_inv_0 ( .A(net4222), .Y(n20) );
  INVX0_HVT snps_iso_control_inv_2 ( .A(net4220), .Y(n18) );
  LSUPX1_HVT lav_B2D_UPF_LS ( .A(n22), .Y(n11) );
  AOBUFX1_HVT U5 ( .A(n21), .Y(n4) );
  NBUFFX2_HVT U6 ( .A(lav_in2[0]), .Y(n1) );
  NBUFFX2_HVT U7 ( .A(lav_in2[1]), .Y(n2) );
  NBUFFX2_HVT U8 ( .A(lav_in2[2]), .Y(n3) );
endmodule

