module Latch(	
		input S,
		input R,
		input inputQ,
		input inputQp,
		output outputQ,
		output outputQp
	);
	
	wire net1, net2;
	
	nand(net1, inputQp, R);
	nand(net2, inputQ, S);
	
	assign outputQ = net1;
	assign outputQp = net2;
	

endmodule	