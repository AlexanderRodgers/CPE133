`timescale 1ns / 1ps

module StateMachine(
    clk, reset, x, Z1, Z2
    );
    input logic clk;
    input logic reset;
    input logic x;
    output logic Z1, Z2;
    
    typedef enum logic [1:0] {A,B,C,D} state;
    state currentstate, nextstate;
    
    always_ff @ (posedge clk)
    
    if (reset) currentstate <= A;
    else currentstate <= nextstate;
    
    always_comb
    
    case (currentstate)
    A: if (x)
    begin nextstate = A; Z1 = 1'b1; Z2 = 1'b0;
    // display (" current state = state", currentstate);
    $display ("current state = A, in =1");
    end
    
    else
       begin nextstate = C; Z1 = 1'b1; Z2 = 1'b0;
       $display (" current state = A, in =0"); end
       
    B: if (x)
        begin nextstate = B; Z1 = 1'b0; Z2 = 1'b0;
        $display (" current state = B, in = 1"); end
        else
        begin nextstate = D; Z1 = 1'b0; Z2 = 1'b0;
        $display ("current state = B, in =0");
        end
    C: if (x)
        begin nextstate = A; Z1 = 1'b1; Z2 = 1'b0;
        $display (" current state = C, in = 1"); end
        else
        begin nextstate = B; Z1 = 1'b0; Z2 = 1'b0;
        $display (" current state = C, in  =0");
        end
        
    D: if (x)
        begin nextstate = B; Z1 = 1'b0; Z2 = 1'b0;
        $display ("current state = D, in = 1"); end
        else
        begin nextstate = A; Z1 = 1'b0; Z2 = 1'b1;
        $display (" current state = D, in =0");
        end
    default : begin nextstate = A; end
    endcase;
       
endmodule
