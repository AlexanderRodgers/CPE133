`timescale 1ns / 1ps

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
    
//    module FlipFlop_4Bit(
//    input [3:0] D,
//    input clr,
//    input clk,
//    input st,
//    output [3:0] Q,
//    output [3:0] Q_bar
//    );
    
//    FlipFlop_4Bit ff0 (.D(temp), .clr(clr), .clk(clk), .st(st), .Q(D_out));

     FF_Dcom F0 (.D(temp[0]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(D_out[0]));
     FF_Dcom F1 (.D(temp[1]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(D_out[1]));
     FF_Dcom F2 (.D(temp[2]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(D_out[2]));
     FF_Dcom F3 (.D(temp[3]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(D_out[3]));

    FF_Dcom Fd0 (.D(sys_meas[0]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(T_out[0]));
    FF_Dcom Fd1 (.D(sys_meas[1]), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(T_out[1]));

    FF_Dcom Fd2 (.D(clr), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(clr_out));
    FF_Dcom Fd3 (.D(id), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(ld_out));
    FF_Dcom Fd4 (.D(st), .clk(clk), .clr(clr), .St(st), .Id(id), .Q(st_out));    
endmodule