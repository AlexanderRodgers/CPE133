`timescale 1ns / 1ps

module Lab2(input A, input B, output F);
//Data Flow Description

assign F = A & B;
endmodule

module Lab2structural(input A, input B, output F);
//Structural Description

and A1 (F, A, B); //order: output, input, input
endmodule