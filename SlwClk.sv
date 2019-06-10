module SlwClk(
    input clk,
    reg cnt
    );
    parameter N = 4;
    
    // usually want a number around 28 but it makes the component hard to simulate.
    
    reg [N:0] s;
    always_ff @ (posedge clk)
    
    begin
    
    s = s + 1; // counts
    //cnt = s[N];
    end
endmodule