module two_to_one(
		input A,
		input B,
		input S,
		output out
	);
	
	wire net1, net2;
	
	and(net1, A, ~S);
	and(net2, B, S);
	
	or(out, net1, net2);
	
    
endmodule