`timescale 1ns / 1ps

module statemacine1_strct(
    clk, reset, x, Q, Qb, Z1, Z2
    );
    input logic clk;
    input logic reset;
    input logic x;
    output logic Z1, Z2;
    output logic [1:0] Q, Qb;
    wire j0, k0, k1, j1;
    
    assign j0 = ~x & Q[1];
    assign k0 = ~x  & Q[1];
    assign j1 = ~x;
    assign k1 = 1'b1;
endmodule

module StateWithSlowClk(
    clk, reset, x, Q, Qb, Z1, Z2
    );
    input logic clk;
    input logic reset;
    input logic x;
    output logic Z1, Z2;
    output logic [1:0] Q, Qb;
    wire slow;
    wire f_out;
    wire f_bar;
    
    SlowClock Sl0 (.clk(clk), .cnt(slow));
    JK_FF F_0 (.clk(slow), .JK({1'b1, 1'b1}), .clr(1'b0), .Q(f_out), .Qb(f_bar));
    JK_FF F_1 (.clk(f_out), .JK({1'b1, 1'b1}), .clr(1'b0), .Q(Z1), .Qb(Z2));

endmodule

`timescale 1ns / 1ns


module state_strct_slow_clock(clk, reset,x,Q,Qb, Z1,Z2);
        input logic clk;
        input logic reset;
        input logic x;
        output logic Z1,Z2;
        output logic  [1:0]Q,Qb;
       wire j0,k0,k1, j1;
        
        assign  j0 = ~x  &  Q[1];
        assign  k0 = ~x  &  Q[1];
        assign j1 = ~ x;
        assign k1 = 1'b1;
        
        wire slow_clock;
        
        SlowClock s_clock (.clk(clk), .cnt(slow_clock));
        
       JK_FF JKF0 (.clk(slow_clock), .JK({j0,k0}),.clr(reset), .Q(Q[0]),
        .Qb(Qb[0]));
       
       JK_FF JKF1 (.clk(slow_clock), .JK({j1,k1}),.clr(reset), .Q(Q[1]),
                .Qb(Qb[1])); 
    //{j0,k0} is  a vector of two elements j0 and k0;the {  } is the concatenation 
    //    operator            
                
                assign Z2= (~x & Q[0] & Q[1]);
                        assign Z1 = Qb[0];  
        endmodule

