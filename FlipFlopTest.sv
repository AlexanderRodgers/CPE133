`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 11:07:32 AM
// Design Name: 
// Module Name: FlipFlop_4Bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FlipFlopTest(
    input [3:0] D,
    input clr,
    input clk,
    input st,
    output [3:0] Q,
    output [3:0] Q_bar
    );
    // input D, input clk, input clr, input St, input Id,
//     output Q, output Q_bar
    FF_Dcom d1 (.Q(Q[0]), .Q_bar(Q_bar[0]), .D(D[0]), .clk(clk), .clr(clr), .St(st), .Id(st));
    FF_Dcom d2 (.Q(Q[1]), .Q_bar(Q_bar[1]), .D(D[1]), .clk(clk), .clr(clr), .St(st), .Id(st));
    FF_Dcom d3 (.Q(Q[2]), .Q_bar(Q_bar[2]), .D(D[2]), .clk(clk), .clr(clr), .St(st), .Id(st));
    FF_Dcom d4 (.Q(Q[3]), .Q_bar(Q_bar[3]), .D(D[3]), .clk(clk), .clr(clr), .St(st), .Id(st));
    
endmodule
