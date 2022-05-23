module Latch_with_control(
        
		input S,
		input C,	
		input R,
		output Q,
		output Qp
	);
	
	wire net1, net2;
	
	nand(net1, S, C);
	nand(net2, R, C);
	
	Latch latch(
	   .S(net1),
	   .R(net2),
	   .Q(Q),
	   .Qp(Qp)
    );
	

endmodule	