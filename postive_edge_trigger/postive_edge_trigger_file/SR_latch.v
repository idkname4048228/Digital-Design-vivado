
module SRLatch(	
		input S,
		input R,
		output Q,
		output Qp
	);
	
	wire tmpQ, tmpQp;
    
    nand(tmpQ, S, tmpQp);
    nand(tmpQp, R, tmpQ);
    
    assign Q = tmpQ;
    assign Qp = tmpQp;

	

endmodule	