//`timescale 1ns / 1ps

////module FlipFlop_Cntr(
////    input D, clk, clr, st, ld,
////    output Q, Qb
////    );
////endmodule

//module FlipFlop_Cntr(
//    input clk,
//    input [1:0] JK,
//    input clr,
//    output [1:0] Q,
//    output [1:0] Qb);
    
//    wire b1 = 1'b1;
//    wire slow_clock;
    
////    NewClock c_1 (.clk(clk), .cnt(slow_clock));

////    Cnter_2bit cntr (.clk(slow_clock), .clr(clr), .Q(Q), .Qb(Qb));
    
// endmodule
 
 `timescale 1ns / 1ps
// LAB 11 B


module slow_bit_cnt(clk, clr, Q, Qb);
    input clk;
    input clr;
    output [1:0] Q;
    output [1:0] Qb;
    
    wire slow_clk;
    
    SlowClock SC(.clk(clk), .cnt(slow_clk));
    
    Cnter_2bit cnter (.clr(clr), .clk(slow_clk), .Q(Q), .Qb(Qb));
    
endmodule
