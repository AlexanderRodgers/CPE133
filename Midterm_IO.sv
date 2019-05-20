`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2019 03:31:13 PM
// Design Name: 
// Module Name: Mux_4x1Midterm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


/* 
module Lab7_4x1mux(
    input [3:0] X, input sel_1, input sel_2,
    output Y
);
wire J0, J1;

Lab7_2x1mux m1 (.Y(J0), .A(X[0]), .B(X[1]), .Sel(sel_1));
Lab7_2x1mux m2 (.Y(J1), .A(X[2]), .B(X[3]), .Sel(sel_1));

Lab7_2x1mux m3 (.Y(Y), .A(J0), .B(J1), .Sel(sel_2));
endmodule
*/

module Midterm_IO(
    input A,
    input B,
    input C,
    input D,
    input sel_1,
    input sel_2,
    output Y
    );
    
    wire J0, J1;
    
    Lab7_2x1mux m1 (.Y(J0), .A(A), .B(B), .Sel(sel_1));
    Lab7_2x1mux m2 (.Y(J1), .A(C), .B(D), .Sel(sel_1));
    Lab7_2x1mux m3 (.Y(Y), .A(J0), .B(J1), .Sel(sel_2));
    
endmodule
