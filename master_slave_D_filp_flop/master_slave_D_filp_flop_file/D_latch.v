module DLatch(	
		input D,
		input Clock,
		output outputQ
	);
	
	wire net1, net2;
	wire tmpQ, tmpQp;
	
	nand(net1, D, Clock);
	nand(net2, ~D, Clock);
	
	Latch latch(
	   .S(net1),
	   .R(net2),
	   .inputQ(tmpQ),
	   .inputQp(tmpQp),
	   .outputQ(tmpQ),
	   .outputQp(tmpQp)
    );
    
    assign outputQ = tmpQ;
    
	

endmodule	