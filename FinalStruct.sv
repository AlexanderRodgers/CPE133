`timescale 1ns / 1ps

module FinalStruct(
    clk, x, y1, y2, z, y1_out, y2_out
    );
    input logic clk;
    input logic x, y1, y2;
    output logic z;
    output y1_out, y2_out;
    
    wire d0, d1, d2, d3;
    wire j0;
    wire k0;
    wire x_bar, y1_bar, y2_bar;
    wire y1_bar_out, y2_bar_out;
    not xb (x_bar, x);
    not y1b (y1_bar, y1);
    not y2b (y2_bar, y2);
    
    wire slow_clock;
    
    // D Input 
    and A1 (d0, y1_bar, x);
    and A2 (d1, y2, x);
    and A3 (d2, y1, y2_bar, x_bar);
    or D_OR (d3, d0, d1, d2);
    //D_OR goes into d flip flop.
    
    // J input
    xnor J1 (j0, y1, x);
    
    // K input
    or K1 (k0, y1_bar, x);
    
    // slow clock.
    NewClock slw (.clk(clk), .cnt(slow_clock));

    FF_Dcom d_0 (.D(d3), .clk(slow_clock), .clr(1'b0), .St(1'b0), .Id(1'b1), .Q(y1_out), .Q_bar(y1_bar_out));
    JK_FF f_0 (.clk(slow_clock), .JK({j0, k0}), .clr(1'b0), .Q(y2_out), .Qb(y2_bar_out));

    and (z, y1, y2);
endmodule
