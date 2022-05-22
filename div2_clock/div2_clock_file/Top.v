`timescale 1ns / 10ps
module Top(
        input clkin,
        input rstn,
        output reg clkout = 0
    );
    
    parameter Divider_Counter = 2;
    reg Counter = 0;
    
    always@(posedge clkin or negedge rstn)begin
        if(!rstn)
            Counter = 0;
        else begin
            if (Counter == (Divider_Counter - 1))
                Counter = 0;
            else
                Counter = Counter + 1;
        end
    end
    
    always@(posedge clkin or negedge rstn)begin
        if(!rstn)
            clkout <= 1'b0;
        else begin
            if (Counter < Divider_Counter / 2)
                clkout <= 1'b0;
            else 
                clkout <= 1'b1;
        end
    end 

endmodule