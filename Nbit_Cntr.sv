`timescale 1ns / 1ps

module Nbit_Cntr(
    input reset,
    input clk,
    input ld,
    input up,
    output din,
    output count
    );
endmodule

/* 
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
*/