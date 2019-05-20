`timescale 1ns / 1ps

module Cnter_2bit(
    input clr,
    input clk,
    output [1:0] Q,
    output [1:0] Qb
    );
    wire [1:0] y;
    assign y = {1'b1, 1'b1};
    JK_FF F0 (.clk(clk), .JK(y), .clr(clr), .Q(Q[0]), .Qb(Qb[0]));
    JK_FF F1 (.clk(Q[0]), .JK(y), .clr(clr), .Q(Q[1]), .Qb(Qb[1]));
endmodule

module Cnter_Nbit(
    input RESET,
    input clk,
    input LD,
    input UP,
    input [N-1:0] DIN,
    reg [N-1:0] count);
    
    parameter N = 4;
always_ff @(posedge clk)
    begin
        if (RESET == 1'b1)
        begin
        count = 0;
        end
        else if (LD == 1'b1)
        begin 
            count = DIN;
        end
        else if (UP == 1'b1)
        count = count + 1;
        else
        count = count - 1;
endmodule