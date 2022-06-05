`timescale 1ns / 10ps
module Top();
	
    reg  [3:0]input1;
    reg  [3:0]input2;
    reg Cin;
    wire  So[3:0];
    wire Cout;

    
    initial begin
            Cin = 0;
            input1 = 4'b1001;
            input2 = 4'b0001;
         #50            
            input1 = 4'b1000;

       
        #50 $finish;
    end
	

	decimal_adder u1(
	   .augend({input1[3], input1[2], input1[1], input1[0]}), 
       .addend({input2[3], input2[2], input2[1], input2[0]}), 
       .Cin(Cin), 
       .sum({So[3], So[2], So[1], So[0]}), 
       .Cout(Cout)
    );

endmodule