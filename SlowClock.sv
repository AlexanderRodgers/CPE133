`timescale 1ns / 1ps

module SlowClock(
    input clk,
    reg cnt
    );
    parameter N = 28;
    
    // usually want a number around 28 but it makes the component hard to simulate.
    
    reg [N:0] s;
    always_ff @ (posedge clk)
    
    begin
    
    s = s + 1; // counts
    //cnt = s[N];
    end
endmodule

//module N_bitCounter (input RESET, clk, LD, UP,...);
module NewClock(
    clk,
    cnt
    );
    parameter N = 28;
    
    input clk;
    output cnt;
    reg cnt;
 
    // usually want a number around 28 but it makes the component hard to simulate.
    
    reg [N:0] s;
    initial begin s = 0; end
    always_ff @ (posedge clk)
    
    begin
    
    ++s;
    $display ("value of s = %b", s);
    cnt <= s[N];
    end
endmodule
