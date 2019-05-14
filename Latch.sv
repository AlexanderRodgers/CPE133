`timescale 1ns / 1ps

module Ltch(
    input D,
    input E,
    output Q,
    output Q_bar
    );
    
reg Q, Q_bar;
always @ (E, D)
// E & D are the sensitivity list
// Always declares that you can use boolean logic on the values in
// paranthesis. If a change (event) happened in E or D, the code under 
// always will be executed, otherwise the code will not work.
begin
// the 1'b specifies that the following value is 1 bit.
// The value of that bit is 1
if (E == 1'b1)
begin
Q = D;
Q_bar = ~D;
end
else
begin
Q = Q;
end
end
endmodule
