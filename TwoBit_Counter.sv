module Cnter_2bit(
    input clr,
    input clk,
    output [1:0] Q,
    output [1:0] Qb
    );
    wire [1:0] y;
    assign y = {1'b1, 1'b1};
    JKFF F0 (.clk(clk), .JK(y), .clr(clr), .Q(Q[0]), .Qb(Qb[0]));
    JKFF F1 (.clk(clk), .JK({Q[0], Q[0]}), .clr(clr), .Q(Q[1]), .Qb(Qb[1]));
endmodule