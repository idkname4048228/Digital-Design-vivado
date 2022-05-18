module Adder(
		input [3:0] be_add_number,
		input [3:0] add_number,
		input Cin,
		output [3:0] sum,
		output Cout
	);
	
	wire C0, C1, C2, C3;
	wire P0, P1, P2, P3;
	wire G0, G1, G2, G3;
	
	xor(P0, be_add_number[0], add_number[0]);
	xor(P1, be_add_number[1], add_number[1]);
	xor(P2, be_add_number[2], add_number[2]);
	xor(P3, be_add_number[3], add_number[3]);
	
	and(G0, be_add_number[0], add_number[0]);
	and(G1, be_add_number[1], add_number[1]);
	and(G2, be_add_number[2], add_number[2]);
	and(G3, be_add_number[3], add_number[3]);
	
	Lookahead_adder lookAhesd(
	   .P({P3, P2, P1, P0}), 
	   .G({G3, G2, G1, G0}),
	   .Cin(Cin),
	   .Carry({C3, C2, C1, C0}),
	   .Cout(Cout)
	);
	
	xor(sum[0], C0, P0);
	xor(sum[1], C1, P1);
	xor(sum[2], C2, P2);
	xor(sum[3], C3, P3);
	
    
endmodule