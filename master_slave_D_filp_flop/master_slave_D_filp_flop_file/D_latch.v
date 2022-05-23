module DLatch(	
		input D,
		input C,
		output Q
	);
	
	
	Latch_with_control latch(
	   .S(D),
	   .C(C),
	   .R(~D),
	   .Q(Q)
    ); 
	

endmodule	