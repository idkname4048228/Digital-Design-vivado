`timescale 1ns / 10ps
module Top();
	
    reg  [2:0]input1;
    reg  [3:0]input2;
    wire  [6:0]So;

    
    initial begin
            input1 = 3'b101;            
            input2 = 4'b1100;
            
         #50
            input1 = 3'b100;            
            input2 = 4'b0001;
       
        #50 $finish;
    end
	

	four_and_three_mulitipiler u1(
	       .A({input1[2], input1[1], input1[0]}), 
           .B({input2[3], input2[2], input2[1], input2[0]}), 
           .C({So[6], So[5], So[4], So[3], So[2], So[1], So[0]}) 
    );

endmodule