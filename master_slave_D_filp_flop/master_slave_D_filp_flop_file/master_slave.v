module Master_Slave(	
		input D,
		input Clock, 
		output outputQ
	);
	
	wire tmpQ;
	
	DLatch latch1(
	   .D(D),
	   .Clock(Clock),
	   .outputQ(tmpQ)
    ); 
    
    DLatch latch2(
       .D(tmpQ),
       .Clock(~Clock),
       .outputQ(outputQ)
    );
	

endmodule	