`timescale 1ns / 1ps

module Seven_segmentModf(
    input clk,
    input hex
    );
    
//    reg [18:0] seven_seg_count = 19'h00000;
    reg [2:0] test_count;
    
//    always_comb
    always @ (posedge clk)
    case (test_count)
         4'b0000: seg = 7'b1001111; // "1" 
         4'b0001: seg = 7'b0010010; // "2" 
         4'b0010: seg = 7'b1001100; // "4" 
         4'b0011: seg = 7'b1110111; // "A"
     endcase
endmodule   
