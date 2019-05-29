`timescale 1ns / 1ps

module statemacine1_strct(
    clk, reset, x, Q, Qb, Z1, Z2
    );
    input logic clk;
    input logic reset;
    input logic x;
    output logic Z1, Z2;
    output logic [1:0] Q, Qb;
    wire j0, k0, k1, j1;
    
    assign j0 = ~x & Q[1];
    assign k0 = ~x  & Q[1];
    assign j1 = ~x;
    assign k1 = 1'b1;
endmodule
