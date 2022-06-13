`timescale 1ns / 1ps

module time_simulation();
    wire clk;
    wire clkout;
    
    Top test(
        .clkin(clk),
        .rstn(1'b0),
        .clkout(clkout)
    );
        
endmodule
