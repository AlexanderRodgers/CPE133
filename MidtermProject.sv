`timescale 1ns / 1ps
module MidtermProject(
    input [3:0] X,
    input [1:0] sel,
    input clr,
    input clk,
    input st,
    input ld,
    output [7:0] LED
    );
    
    ///// Flip Flops /////   
    wire [3:0] D;
    wire [1:0] T;
    IO_Midterm m_io (.temp(X), .sys_meas(sel), .clr(clr), .clk(clk), .st(st), .id(ld), .T_out(T), .D_out(D));
    
    // adds 3 for kelvin conversion
    wire [3:0] B0 = 4'b0011;
    wire [3:0] K;
    
    // Kelvin RCA, adding 3 bits.
    Lab_5RCA K_RCA (.A(D), .B(B0), .C_IN(1'b0), .SUM_RCA(K));
    
    // lt = less than
    // et = equal to
    // gt = greater than
    wire lt, et, gt;
    Comparator C1 (.temp(D), .a(lt), .b(et), .c(gt));
    assign LED[7] = gt;
    
    // Used for farenheit (5/8) multiplication. Will never go above 15.
    wire [3:0] F0;
    Multiplication M0(.F(D), .Q(F0));
    
    wire [3:0] B1 = 4'b0010;
    wire [3:0] F;
    Lab_5RCA F_RCA (.A(F0), .B(B1), .C_IN(1'b0), .SUM_RCA(F));
    
    wire [3:0] fin_out;
    
    Midterm_Mux mux (.K(K), .C(D), .F(F), .sel(T), .z(fin_out));
    
    ///// DECODER //////
    wire [3:0] d_out;
    Decoder2x4 D0 (.I0(sel[0]), .I1(sel[1]), .cn(1'b0), .D(d_out));
    // The LED selected specifies the temperature conversion
    assign LED[0] = d_out[0]; // C -> C
    assign LED[1] = d_out[1]; // C -> F
    assign LED[2] = d_out[2]; // C -> K
    
    // These are the final temperatures depending on what the mux spits out.
    assign LED[3] = fin_out[0];
    assign LED[4] = fin_out[1];
    assign LED[5] = fin_out[2];
    assign LED[6] = fin_out[3];
    
endmodule
