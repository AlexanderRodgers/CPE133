`timescale 1ns / 1ps

module FinalProject(
    clk,
    val_in,
    f,
    c
    );
    input clk;
    input [15:0] val_in;
    output logic [15:0] f;
    output logic [15:0] c;
    
    int x;
    int voltage;
    int celsius;
    int farenheit;
    always @ (posedge clk)
    begin
        x = val_in;
        voltage = (x * 5) / 1024;
        celsius = (voltage - 0.5) * 100;
        farenheit = (celsius * 9.0 / 5.0) + 32;
        assign f = farenheit;
        assign c = celsius;
    end
endmodule
