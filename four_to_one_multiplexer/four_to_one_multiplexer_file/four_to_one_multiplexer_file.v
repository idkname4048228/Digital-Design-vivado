module Mulitiplexer(
		input [0:3]I,
		input [1:0]s,
		output out
	);
	
	wire net1, net2, net3, net4;
	
	and(net1, I[0], ~s[1], ~s[0]);
	and(net2, I[1], ~s[1], s[0]);
	and(net3, I[2], s[1], ~s[0]);
	and(net4, I[3], s[1], s[0]);
	
	or(out, net1, net2, net3, net4);
    
endmodule