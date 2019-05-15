`timescale 1ns / 1ps

module Lab_3ex5(
    input B0,
    input B1,
    input B2,
    output F
    );
 // Data flow description
assign F = (B0 & B2) | (B1 & B2);
endmodule

module Lab_3ex5structural(
    input B0,
    input B1,
    input B2,
    output F
    );
 wire J1, J2;
and A1(J1, B1, B2);
and A2(J2, B0, B2);
or R1 (F,J1, J2);
endmodule