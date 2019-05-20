`timescale 1ns / 1ps

module Lab7_2x1mux(
    input A,
    input B,
    input Sel,
    output Y
    );
    wire s0, s1, s2, Sel_bar, A_bar, B_bar;
    not (A_bar, A);
    not (B_bar, B);
    not (Sel_bar, Sel);
    and A1 (s0, A, B_bar, Sel_bar);
    and A2 (s1, B, Sel);
    and A3 (s2, A, B);
    or O1 (Y, s0, s1, s2);
 
endmodule

module Lab7_4x1mux(
    input [3:0] X, input sel_1, input sel_2,
    output Y
);
wire J0, J1;

Lab7_2x1mux m1 (.Y(J0), .A(X[0]), .B(X[1]), .Sel(sel_1));
Lab7_2x1mux m2 (.Y(J1), .A(X[2]), .B(X[3]), .Sel(sel_1));

Lab7_2x1mux m3 (.Y(Y), .A(J0), .B(J1), .Sel(sel_2));
endmodule