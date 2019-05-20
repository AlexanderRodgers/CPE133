module Dcom_Test(input D, input clk, input clr, input St, input Id,
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