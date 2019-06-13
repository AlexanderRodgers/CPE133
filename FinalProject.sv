`timescale 1ns / 1ps

module FinalProject(
    clk,
    val_in,
    f,
    c,
    voltg
    );
    input clk;
    input [15:0] val_in;
    output logic [15:0] f;
    output logic [15:0] c;
    output logic [15:0] voltg;
    
    int x;
    int voltage;
    int celsius;
    int farenheit;
    always @ (posedge clk)
    begin
        x = val_in;
        voltage = (x * 3300) / 1024;
        celsius = (voltage - 500) / 10;
        farenheit = (celsius * 9 / 5) + 32;
        f = farenheit;
        c = celsius;
        voltg = val_in;
    end
endmodule
