`timescale 1ns / 10ps
module Top();
	
    reg  [7:0]input1;
    reg  [7:0]input2;
    reg Cin;
    wire  [8:0]So;
    
    
    initial begin
        Cin = 0;
        input1 = 8'b00000001;
        input2 = 8'b00010001;
        #50
            input1 = 8'b10011001;
            input2 = 8'b10011001;
        #50            
            input1 = 8'b00011001;
        
        #50 $finish;
    end
	
	wire net1;

	two_bits_decimal_adder test(
	   .augend({input1[7], input1[6], input1[5], input1[4], input1[3], input1[2], input1[1], input1[0]}), 
       .addend({input2[7], input2[6], input2[5], input2[4], input2[3], input2[2], input2[1], input2[0]}), 
       .Cin(Cin), 
       .sum({So[7], So[6], So[5], So[4], So[3], So[2], So[1], So[0]}), 
       .Cout(So[8])
    );

    


endmodule

