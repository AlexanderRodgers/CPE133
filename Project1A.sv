`timescale 1ns / 1ps

module Project1A(
    input T0,
    input T1,
    input T2,
    input T3,
    input clr, ld, st, clk,
    output K0,
    output K1,
    output K2,
    output K3
    );
    wire s0, s1, s2, s3, s4;
    wire [3:0]Sv, Bv;
    IOReg I0 (.I0(T0), .I1(T1), .I2(T2), .I3(T3), .clr(clr), .ld(ld), .st(st), .clk(clk),
    .Q0(s0), .Q1(s1), .Q2(s2), .Q3(s3));
    
    assign Sv = {s0, s1, s2, s3};
    assign Bv = {1'b1, 1'b1, 1'b0, 1'b0};
    Lab5_RCA RC0 (.A(Sv), .B(Bv), .C_in(1'b0)
    
endmodule
