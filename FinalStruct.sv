`timescale 1ns / 1ps

module FinalStruct(
    clk, x, y1, y2, z, y1_bar, y2_bar
    );
    input logic clk;
    input logic x;
    output logic y1, y2, z, y1_bar, y2_bar;
    
    wire d0, d1, d2, d_in, j0, k0;
    
    assign d0 = ~y1 & x;
    assign d1 = y2 & x;
    assign d2 = y1 & ~y2 & ~x;
    assign d_in = d0 | d1 | d2;

    assign j0 = y1 ~^ x;
    assign k0 = ~y1 | x;
    
    wire slow_clock;

    // slow clock.
    NewClock slw (.clk(clk), .cnt(slow_clock));

    FF_Dcom d_0 (.D(d_in), .clk(slow_clock), .clr(1'b0), .St(1'b0), .Id(1'b1), .Q(y1), .Q_bar(y1_bar));
    JK_FF f_0 (.clk(slow_clock), .JK({j0, k0}), .clr(1'b0), .Q(y2), .Qb(y2_bar));

    wire z;
    assign z = y1 & y2;
endmodule
