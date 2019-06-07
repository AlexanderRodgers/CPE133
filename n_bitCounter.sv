`timescale 1ns / 1ps
// Lab 10 A


module n_bitCounter(reset, clk, ld, up, din, count);

parameter N = 4;
input reset;
input clk;
input ld;
input up;
input [N-1:0]din;
output reg [N-1:0]count;

always_ff @ (posedge clk)
begin

if (reset == 1'b1)
    begin 
    count = 0;
    end
else if(ld == 1'b1)
    begin
    count = din;
    end
else if(up == 1'b1)
    count = count + 1;
    else 
    count = count - 1;

end

endmodule
