
module SRLatch(	
		input S,
		input R,
		output Q,
		output Qp
	);
	
	wire tmpQ, tmpQp;
    nand #1 (tmpQ, S, tmpQp);
    
    nand #1 (tmpQp, R, tmpQ);
     
    
    assign Q = tmpQ;
    assign Qp = tmpQp;

	

endmodule	