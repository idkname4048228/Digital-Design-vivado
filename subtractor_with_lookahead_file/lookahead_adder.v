module Lookahead_adder(	
		input [3:0] P,
		input [3:0] G,
		input Cin,
		output [3:0] Carry,
		output Cout
	);
	
	wire net1, net2, net3, net4, net5, net6, net7, net8, net9, net10;
	
    assign Carry[0] = Cin;
	
	and(net1, Cin, P[0]);
	or(Carry[1], net1, G[0]);
	
	and(net2, Cin, P[0], P[1]);
	and(net3, G[0], P[1]);
	or(Carry[2], net2, net3, G[1]);
	
	and(net4, Cin, P[0], P[1], P[2]);
	and(net5, G[0], P[1], P[2]);
	and(net6, G[1], P[2]);
	or(Carry[3], net4, net5, net6, G[2]);
	
	and(net7, Cin, P[0], P[1], P[2], P[3]);
	and(net8, G[0], P[1], P[2], P[3]);
	and(net9, G[1], P[2], P[3]);
	and(net10, G[2], P[3]);
	or(Cout, net7, net8, net9, net10, G[3]);
	

endmodule	