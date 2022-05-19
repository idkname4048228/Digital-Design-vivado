module DLatch(	
		input D,
		input Clock,
		input inputQ,
		input inputQp,
		output outputQ,
		output outputQp
	);
	
	wire net1, net2;
	
	nand(net1, D, Clock);
	nand(net2, ~D, Clock);
	
	Latch latch(
	   .S(net1),
	   .R(net2),
	   .inputQ(inputQ),
	   .inputQp(inputQp),
	   .outputQ(outputQ),
	   .outputQp(outputQp)
    ); 
	

endmodule	