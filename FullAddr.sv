`timescale 1ns / 1ps

module FullAddr(
    input X0, X1, X2,
    output sum,
    output cout
    );
    assign sum = (X0 ^ X1) ^ X2;
    assign cout = (X0 & X1) | (X0 & X2) | (X1 & X2);
endmodule

module FullAddrstr(
    input [2:0] X, output sum, output cout
);
wire J1;
xor (J1, X[0], X[1]);
xor (sum, X[2], J1);

wire L1, L2, L3;
and (L1, X[0], X[1]);
and (L2, X[1], X[2]);
and (L3, X[0], X[1]);
or (cout, L1, L2, L3);
endmodule