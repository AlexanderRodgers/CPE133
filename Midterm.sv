`timescale 1ns / 1ps
// Alexander Rodgers
// CPE 133
// Midterm 1
// 5/6/2019

module Midterm(
    input [2:0] X,
    output F
    );  
wire J1, J2, J3;
not (X0_bar, X[0]);
not (X1_bar, X[1]);
not (X2_bar, X[2]); 
and A1 (J1, X[0], X2_bar);
and A2 (J2, X1_bar, X[2]);
and A3 (J3, X0_bar, X[1]);
or O1 (F, J1, J2, J3);
endmodule
