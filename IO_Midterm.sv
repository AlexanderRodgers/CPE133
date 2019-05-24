`timescale 1ns / 1ps

// This project uses the 4 bit flip flop created in class as well as the FF_Dcom.
// The inputs represent 4 bit temperature, measurement system
// and the other outputs are used to control the flip flops memory storage.
// all of the outputs are just the inputs.

module IO_Midterm(
    input [3:0] temp,
    input [1:0] sys_meas,
    input clr,
    input clk,
    input id,
    input st,
    output [3:0] D_out,
    output [1:0] T_out,
    output clr_out,
    output ld_out,
    output st_out);
    
    FF_Dcom Fd0 (.D(sys_meas[0]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(T_out[0]));
    FF_Dcom Fd1 (.D(sys_meas[1]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(T_out[1]));

    FF_Dcom Fd2 (.D(clr), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(clr_out));
    FF_Dcom Fd3 (.D(id), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(ld_out));
    FF_Dcom Fd4 (.D(st), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(st_out));    
    
    FlipFlop_4Bit ff0 (.D(temp), .clr(clr), .clk(clk), .st(st), .Id(id), .Q(D_out));
endmodule