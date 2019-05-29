`timescale 1ns / 1ps

//module FlipFlop_Cntr(
//    input D, clk, clr, st, ld,
//    output Q, Qb
//    );
//endmodule

module FlipFlop_Cntr(
    input clk,
    input [1:0] JK,
    input clr,
    output [1:0] Q,
    output [1:0] Qb);
    
    wire b1 = 1'b1;
    wire slow_clock;
    
    NewClock c_1 (.clk(clk), .cnt(slow_clock));

    JK_FF f1 (.clk(slow_clock), .JK(JK), .clr(clr), .Q(Q[0]), .Qb(Qb[0]));
    JK_FF f2 (.clk(Q[0]), .JK(JK), .clr(clr), .Q(Q[1]), .Qb(Qb[1]));
    
 endmodule