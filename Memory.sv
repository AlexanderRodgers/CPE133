`timescale 1ns / 1ps


module Mem16_4(
    
    input [3:0] M_in,
    input  [3:0]adrs,
    output [3:0] M_out,
    input R_W,
    output [3:0] grtst  );
            
    parameter N = 15;
    
    parameter M = 3;
     
    reg [3:0] M_out;
    reg [M:0] Mem[0:N] ={1,3,9,7,8,12,5,0,1,7,9,14,2,15,1,0};
    
    /*The above statement is declaring an array of N + 1 elements;
    
    each element is M bits. */
    
    reg [3:0] grtst;
    
    integer i,j;
    
    always_comb
    
    begin
    
    
                                           
                                         
                                           
    grtst = 4'b0000;
    
    for (i = 0; i <= N; i= i +1)
    
    begin
    
    if (grtst <= Mem[i])
    
    begin
    
    grtst = Mem[i];
    
    $display (" grtst is less or equal than Mem[i], M[i] = %h , i =%d, grtst = %d",  Mem[i], i, grtst); 
    
    // use the above statement to monitor the program

    end
    
    else
    
     $display (" grtst is greater than Mem[i], M[i] = %h , i =%d, grtst = %d",  Mem[i], i, grtst);
    
    // use the above statement to monitor the program
    
    end
    
    end
   
    always_comb
        begin
    if (R_W)
    begin
    
    M_out = Mem[adrs];
    end
    else begin  Mem[adrs] = M_in; end
    end
    
    endmodule

