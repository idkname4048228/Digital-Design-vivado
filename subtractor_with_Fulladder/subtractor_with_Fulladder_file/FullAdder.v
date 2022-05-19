module FullAdder(
		input A,
		input B,
		input Cin,
		output So,
		output Cout
	);
	
	wire net1, net2, net3, net4, net5;
	xor u0(net1, Cin, A);
	xor u1(So, net1, B);
	
	and u2(net2, Cin, A);
	and u3(net3, Cin, B);
	and u4(net4, A, B);

    or u5(net5, net2, net3);
    or u6(Cout, net4, net5);
    
endmodule