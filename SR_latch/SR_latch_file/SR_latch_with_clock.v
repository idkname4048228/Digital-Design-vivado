module Latch_with_clock(
        
		input S,
		input Clock,	
		input R,
		input inputQ,
		input inputQp,
		output outputQ,
		output outputQp
	);
	
	wire net1, net2;
	
	nand(net1, S, Clock);
	nand(net2, R, Clock);
	
	Latch latch(
	   .S(net1),
	   .R(net2), 
	   .inputQ(inputQ),
	   .inputQp(inputQp),
	   .outputQ(outputQ),
	   .outputQp(outputQp)
    );
	

endmodule	