`timescale 1ns / 1ps

module MidtermProject(
    input [3:0] X,
    input [1:0] sel,
    input clr,
    input clk,
    input st,
    input ld,
    output [3:0] Q
    );
    
    int i;
    always @ (posedge clk)
    
    Lab5_RCA R0 (.A[0](X[0]), );
    if (!sel[0] && !sel[1])
        begin
        end
    // output temp in farenheit
    else if (sel[0] && !sel[1])
        begin
        end
    // output temp in celsius
    else
        begin
        end
    // output temp in kelvin
endmodule
