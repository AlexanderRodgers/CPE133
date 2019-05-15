`timescale 1ns / 1ps

//module FullAddr(
//    input [2:0] X,
//    output sum,
//    output cout
//    );

module Lab_5RCA(
    input [3:0] A,
    input [3:0] B,
    input C_IN,
    output [3:0] SUM_RCA,
    output C_RCA
    );
    wire c0, c1, c2;
    FullAddr F0(.X0(A[0]), .X1(B[0]), .X2(C_IN), .sum(SUM_RCA[0]), .cout(c0));
    FullAddr F1(.X0(A[1]), .X1(B[1]), .X2(c0), .sum(SUM_RCA[1]), .cout(c1));
    FullAddr F2(.X0(A[2]), .X1(B[2]), .X2(c1), .sum(SUM_RCA[2]), .cout(c2));
    FullAddr F3(.X0(A[3]), .X1(B[3]), .X2(c2), .sum(SUM_RCA[3]), .cout(C_RCA));
endmodule
