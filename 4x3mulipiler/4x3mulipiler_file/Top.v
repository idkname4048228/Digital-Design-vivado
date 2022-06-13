`timescale 1ns / 10ps
module Top();
	
    reg  [3:0]input1;
    reg  [3:0]input2;
    wire  [7:0]So;

    
    initial begin
            input1 = 4'b1010;            
            input2 = 4'b1100;
            
         #50
            input1 = 4'b1000;            
            input2 = 4'b0000;
           
        #50
            input1 = 4'b1111;
            input2 = 4'b1111;
       
        #50 $finish;
    end
	

	four_and_three_mulitipiler u1(
	       .A({input1[3], input1[2], input1[1], input1[0]}), 
           .B({input2[3], input2[2], input2[1], input2[0]}), 
           .C({So[7], So[6], So[5], So[4], So[3], So[2], So[1], So[0]}) 
    );

endmodule