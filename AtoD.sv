`timescale 1ns / 1ps

module AtoD(
    
    );
    
    logic [11:0] value_in;
    always @ (posedge clk)
        begin
        val_in = do_out [15:4]; //other its are junk
        end
    logic [11:0] celsius;
    logic [11:0] farenheit;
    
    always_comb //conversion math
    begin
    celsius = (((value_in*(212/100))/5)-500)/(10);
    farenheit = ((celsius * 9) / 5) + 32;
    end
    
    wire [1:0] sel;
    assign sel = {sw[1], sw[0]};
    reg [15:0] seg_out;
    reg hex_bcd;
    reg ending;
    
endmodule
