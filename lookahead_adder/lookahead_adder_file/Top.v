`timescale 1ns / 10ps
module Top();
	
    reg  input1[3:0];
    reg  input2[3:0];
    reg Cin;
    wire  So[3:0];
    wire Cout;

    
    initial begin
            Cin = 0;
            input1[0] = 4'b0;
            input1[1] = 4'b0;
            input1[2] = 4'b0;
            input1[3] = 4'b0;
            
            input2[0] = 4'b1;
            input2[1] = 4'b0;
            input2[2] = 4'b0;
            input2[3] = 4'b0;
            
         #50
           Cin = 0;
           input1[0] = 4'b1;
           input1[1] = 4'b1;
           input1[2] = 4'b1;
           input1[3] = 4'b1;
           
           input2[0] = 4'b1;
           input2[1] = 4'b0;
           input2[2] = 4'b0;
           input2[3] = 4'b0;
       
        #50 $finish;
    end
	

	Adder adder(
	   .be_add_number({input1[0], input1[1], input1[2], input1[3]}), 
       .add_number({input2[0], input2[1], input2[2], input2[3]}), 
       .Cin(Cin), 
       .sum({So[0], So[1], So[2], So[3]}), 
       .Cout(Cout)
   );

endmodule