`timescale 1ns / 1ps

module SimpleComputer(
    opcode,
    clk,
    reset,
    F
    );
    input logic clk;
    input logic reset;
    input logic opcode;
    output logic [3:0] F = {1'b0, 1'b0, 1'b0, 1'b0};
    
    typedef enum logic [1:0] {MOVI, MVD, ADD, STR} state;
    state currentstate, nextstate;
    
    always_ff @ (posedge clk)
    
    if (reset) currentstate <= MOVI;
    else currentstate <= nextstate;
    
    always_comb
    
    case (currentstate)
    MOVI: 
    begin 
    nextstate = MVD;
    F = {1'b1, 1'b0, 1'b0, 1'b0};
    // display (" current state = state", currentstate);
    $display ("current state = MOVI, opcode = 0");
    end
    
//    else
//       begin nextstate = C; Z1 = 1'b1; Z2 = 1'b0;
//       $display (" current state = A, in =0"); end
       
    MVD: if (opcode)
        begin nextstate = ADD; 
        F = {1'b0, 1'b1, 1'b0, 1'b0};
        $display (" current state = MVD, opcode = 1"); end
        else
        begin nextstate = STR;
        F = {1'b0, 1'b1, 1'b0, 1'b0};
        $display ("current state = MVD, opcode = 0");
        end
    ADD:
        begin nextstate = STR;
        F = {1'b0, 1'b0, 1'b1, 1'b0};
        $display (" current state = STR, opcode = 0"); end
//        else
//        begin nextstate = B; Z1 = 1'b0; Z2 = 1'b0;
//        $display (" current state = C, in  =0");
//        end
        
    STR:
        begin nextstate = MOVI;
        F = {1'b0, 1'b0, 1'b0, 1'b1};
        $display ("current state = STR, opcode = 0"); end
//        else
//        begin nextstate = A; Z1 = 1'b0; Z2 = 1'b1;
//        $display (" current state = D, in =0");
//        end
    default : begin nextstate = MOVI; end
    endcase;
    
endmodule
