`timescale 1ns / 1ps

module FF_D(
    input D,
    input clk,
    output Q,
    output Q_bar
    );
    reg Q, Q_bar;
    always @ (posedge clk)
    // positive edge of the clock is sensitivity list
    // Always declares that you can use boolean logic on the values in
    // paranthesis. If a change (event) happened in edge, the code under 
    // always will be executed, otherwise the code will not work.
    begin
    
    Q = D;
    Q_bar = ~D;
    
    end

endmodule

module FF_Dcom(input D, input clk, input clr, input St, input Id,
     output Q, output Q_bar);
     reg Q, Q_bar;
     always @ (posedge clk)
     begin
        if (St == 1'b1 && clr == 1'b0)
            begin
            Q = 1'b1;
            Q_bar = 1'b0;
            end
        else
            if (St == 1'b1 && clr == 1'b1)
                begin
                Q = 1'b0;
                Q_bar = 1'b1;
                end
        else
            if (clr == 1'b1 && St == 1'b0)
                begin
                Q = 1'b0;
                Q_bar = 1'b1;
                end
        else
            if (Id == 1'b1 && clr == 1'b0 && St == 1'b0)
                begin
                Q = D;
                Q_bar = ~D;
                end
    end
 
endmodule

module JK_FF(
    input clk,
    input [1:0] JK,
    input clr, 
    output Q,
    output Qb);
    reg Q, Qb;
    
    always_ff @(posedge clk)
    
    begin
    
    if (clr == 1'b1)
    begin
    Q = 1'b0;
    Qb = 1'b1;
    end
    else
    
    begin
    
        case (JK)
        2'b10: Q = 1'b1;
        2'b01: Q = 1'b0;
        2'b11: Q = ~1;
        default: Q = Q;
        endcase
    Qb = ~Q;
    end
    end
endmodule