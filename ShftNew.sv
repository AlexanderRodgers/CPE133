`timescale 1ns / 1ns
module Shftnew(input strt,input shftdir, input integer Noofshfts, output [N:0]Q, output [N:0]temp );
     parameter N = 7; 
       reg [N:0]Q;
       reg [N:0]temp;
        integer i, j;
       
       initial

       begin  temp = 8'hAA; end 
 
        always_comb 
        begin

  Q = temp;
       
        for (j = 1; j <= Noofshfts; j = j + 1)
        
        begin
        
        for (i = 0; i <= N-1; i = i + 1)
        begin
        if (shftdir == 1'b0)
        begin      Q[i] = Q[i+1];    end // end if
                else 
        begin   Q[N-i] = Q [N-i-1]; end
        
        end //end for
        
        Q[N + shftdir]= 1'b0;
    
        
        
        end
        

   end
       
    endmodule

