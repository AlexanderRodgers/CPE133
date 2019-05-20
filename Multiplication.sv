`timescale 1ns / 1ps

module Multiplication(
    input [3:0] F,
    output [3:0] Q
    );
    
    wire k1, k2, j1, j2, j3, j4, i1, i2, i3, i4, i5, i6;
    wire F0_bar, F1_bar, F2_bar, F3_bar;
    not N0 (F0_bar, F[0]);
    not N1 (F1_bar, F[1]);
    not N2 (F2_bar, F[2]);
    not N3 (F3_bar, F[3]);
    
    and K3 (Q[3], F[2], F[3]);
    
    and k_1 (k1, F2_bar, F[3]);
    and k_2 (k2, F[1], F[2], F3_bar);
    or K2 (Q[2], k1, k2);
    
    and j_1 (j1, F1_bar, F[2], F3_bar);
    and j_2 (j2, F[0], F[1], F2_bar);
    and j_3 (j3, F[0], F2_bar, F[3]);
    and j_4 (j4, F[1], F2_bar, F[3]);
    or K1 (Q[1], j1, j2, j3, j4);
    
    and i_1 (i1, F[0], F1_bar, F3_bar);
    and i_2 (i2, F1_bar, F[2], F3_bar);
    and i_3 (i3, F0_bar, F[1], F2_bar, F3_bar);
    and i_4 (i4, F[1], F[2], F[3]);
    and i_5 (i5, F[0], F[1], F[3]);
    and i_6 (i6, F0_bar, F2_bar, F[3]);
    or K0 (Q[0], i1, i2, i3, i4, i5, i6);
    
endmodule
