`timescale 1ns / 1ps

// Lab 10 B

module two_bit_cnt(clr, clk, Q, Qb);
    input clr;
    input clk;
    output logic [1:0] Q;
    output logic [1:0] Qb;
    
    wire [1:0] y;
    
    assign y = {1'b1, 1'b1};
    
    JK_FF JK1(.clr(clr), .clk(clk), .JK(y), .Q(Q[0]), .Qb(Qb[0]));
    JK_FF JK2(.clr(clr), .clk(Qb[0]), .JK(y), .Q(Q[1]), .Qb(Qb[1]));
    
endmodule
