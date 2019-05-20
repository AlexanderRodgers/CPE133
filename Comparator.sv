`timescale 1ns / 1ps

module Comparator(
    input [3:0] temp,
    output a, //lt
    output b, //et
    output c //gt
    );
    
    wire t0_bar, t1_bar, t2_bar, t3_bar;
    not (t0_bar, temp[0]);
    not (t1_bar, temp[1]);
    not (t2_bar, temp[2]);
    not (t3_bar, temp[3]);
    
    wire g0, g1;
    and (b, temp[3], temp[2], t1_bar, t0_bar);
    and (g0, temp[3], temp[2], temp[1]);
    and (g1, temp[3], temp[2], temp[0]);
    or (c, g0, g1);
    
    wire ltw;
    or (ltw, et, gt);
    not (a, ltw);
endmodule
