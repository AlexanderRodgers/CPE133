`timescale 1ns / 1ps
// LAB 11 B


module slow_bit_cnt(clk, clr, count, countBar);
    input clk;
    input clr;
    output [1:0] count;
    output [1:0] countBar;
    
    wire slow_clk;
    
    cntr_new SC(.clk(clk), .cnt(slow_clk));
    
    two_bit_cnt (.clr(clr), .clk(slow_clk), .Q(count), .Qb(countBar));
    
endmodule
