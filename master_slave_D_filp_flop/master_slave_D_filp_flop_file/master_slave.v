module Master_Slave(	
		input D,
		input Clock, 
		output Q
	);
	
	wire tmpQ;
	
	DLatch latch1(
	   .D(D),
	   .C(Clock),
	   .Q(tmpQ)
    ); 
    
    DLatch latch2(
       .D(tmpQ),
       .C(~Clock),
       .Q(Q)
    );
	

endmodule	