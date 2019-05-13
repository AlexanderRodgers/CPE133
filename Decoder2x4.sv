`timescale 1ns / 1ps

module Decoder2x4(
    input I0,
    input I1,
    input cn,
    output [3:0] D
    );
    wire s0, s1, s2, s3, I0_br, I1_br;
    not(I0_br, I0);
    not(I1_br, I1);
    and A1(s0, I0_br, I1_br);
    bufif0 (D[0], s0, cn);
    and A2(s1, I0_br, I1);
    bufif0 (D[1], s1, cn);
    and A3(s2, I0, I1_br);
    bufif0 (D[2], s2, cn);
    and A4 (s3, I0, I1);
    bufif0 (D[3], s3, cn);
    
endmodule
