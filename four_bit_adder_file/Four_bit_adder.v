module FourAdder(	
		input [3:0] A,
		input [3:0] B,
		input Cin,
		output [3:0] So,
		output Cout
	);
	
	wire Net1, Net2, Net3;
	FullAdder
	u1_FullAdder(.A(A[0]), .B(B[0]), .Cin(Cin), .So(So[0]), .Cout(Net1));
	FullAdder
    u2_FullAdder(.A(A[1]), .B(B[1]), .Cin(Net1), .So(So[1]), .Cout(Net2));
    FullAdder
    u3_FullAdder(.A(A[2]), .B(B[2]), .Cin(Net2), .So(So[2]), .Cout(Net3));
    FullAdder
    u4_FullAdder(.A(A[3]), .B(B[3]), .Cin(Net3), .So(So[3]), .Cout(Cout));

endmodule	