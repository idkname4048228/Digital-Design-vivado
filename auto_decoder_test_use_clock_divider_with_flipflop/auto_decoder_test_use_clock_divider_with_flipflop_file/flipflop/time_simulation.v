`timescale 1ns / 1ps

module time_simulation();
    reg clk;
    
    initial begin
        repeat(7)begin
            clk = 1'b1;
            #50
                clk = 1'b0;
            #50
                clk = 1'b1;
                
        end
        #50 $finish;
    end
    
    Top test(
        .clkin(clk)
    );
        
endmodule
