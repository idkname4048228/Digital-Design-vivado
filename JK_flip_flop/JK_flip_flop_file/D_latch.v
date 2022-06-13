module DLatch(	
		input D,
		input C,
		output Q,
		output Qp
	);
	
	
	Latch_with_control latch(
	   .S(D),
	   .C(C),
	   .R(~D),
	   .Q(Q),
	   .Qp(Qp)
    ); 
	

endmodule	