`timescale 1ns / 1ps

module time_simulation();
    reg clk;
    
    initial begin
        clk = 1'b0;
        repeat(10)begin
            #50
                clk = ~clk;
        end
        #50 $finish;
    end
    
    Top test(
        .clkin(clk)
    );
        
endmodule
