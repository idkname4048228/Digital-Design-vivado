module Latch(	
		input S,
		input R,
		output outputQ,
		output outputQp
	);
	
	wire net1, net2;
	
	nand(net1, outputQ, R);
	nand(net2, outputQp, S);
	
	

endmodule	