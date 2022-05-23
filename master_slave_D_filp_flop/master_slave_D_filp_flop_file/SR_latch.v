
module Latch(	
		input S,
		input R,
		output Q
	);
	
	wire tmpQ, tmpQp;
    
    nand(tmpQ, S, tmpQp);
    nand(tmpQp, R, tmpQ);
    
    assign Q = tmpQ;

	

endmodule	