`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2019 01:30:03 PM
// Design Name: 
// Module Name: Midterm_Mux
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


module MultTest(
    input [3:0] K,
    input [3:0] F,
    input [3:0] C,
    input [1:0] sel,
    output [3:0] z
    );
    Mux_4x1Midterm m0 (.A(C[0]), .B(K[0]), .C(F[0]), .D(1'b0), .sel_1(sel[0]), .sel_2(sel[1]), .Y(z[0]));
    Mux_4x1Midterm m1 (.A(C[1]), .B(K[1]), .C(F[1]), .D(1'b0), .sel_1(sel[0]), .sel_2(sel[1]), .Y(z[1]));
    Mux_4x1Midterm m2 (.A(C[2]), .B(K[2]), .C(F[2]), .D(1'b0), .sel_1(sel[0]), .sel_2(sel[1]), .Y(z[2]));
    Mux_4x1Midterm m3 (.A(C[3]), .B(K[3]), .C(F[3]), .D(1'b0), .sel_1(sel[0]), .sel_2(sel[1]), .Y(z[3]));
endmodule
