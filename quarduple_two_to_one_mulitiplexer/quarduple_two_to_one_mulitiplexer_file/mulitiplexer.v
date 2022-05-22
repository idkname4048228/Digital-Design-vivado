
module Mulitiplexer(	
		input [3:0] A,
		input [3:0] B,
		input S, 
		input E,
		output [3:0] out
	);
	
	wire net1, net2, net3, net4;
	
	two_to_one First_mulitiplxer(
        .A(A[0]),
        .B(B[0]),
        .S(S),
        .out(net1)
	);
	
    two_to_one Second_mulitiplxer(
        .A(A[1]),
        .B(B[1]),
        .S(S),
        .out(net2)
    );
    
    two_to_one Third_mulitiplxer(
        .A(A[2]),
        .B(B[2]),
        .S(S),
        .out(net3)
    );
    
    two_to_one Fourth_mulitiplxer(
        .A(A[3]),
        .B(B[3]),
        .S(S),
        .out(net4)
    );
    
    and(out[0], net1, ~E);
    and(out[1], net2, ~E);
    and(out[2], net3, ~E);
    and(out[3], net4, ~E);
	
endmodule