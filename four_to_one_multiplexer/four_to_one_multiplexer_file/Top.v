`timescale 1ns / 10ps
module Top();
	
    reg  Iinput[3:0];
    reg select[1:0];
    wire out;

    
    initial begin
        #50
            select[0] = 1'b0;
            select[1] = 1'b1;
            
            Iinput[0] = 4'b0;
            Iinput[1] = 4'b0;
            Iinput[2] = 4'b1;
            Iinput[3] = 4'b0;
            
            
         #50
            Iinput[0] = 4'b1;
            Iinput[1] = 4'b1;
            Iinput[2] = 4'b0;
            Iinput[3] = 4'b1;
           
        #50
            select[0] = 1'b1;
            Iinput[0] = 4'b1;
            Iinput[0] = 4'b1;
            Iinput[0] = 4'b1;
            Iinput[0] = 4'b1;
            
        #50 $finish;
    end
	

	Mulitiplexer u1(
        .I({Iinput[0], Iinput[1], Iinput[2], Iinput[3]}), 
        .s({select[1], select[0]}), 
        .out(out)
        );

endmodule