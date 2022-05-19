
module compare(	
		input [3:0] A,
		input [3:0] B,
		output less,
		output greater,
		output equal
	);
	
	wire net1, net2, net3, net4, net5, net6, net7, net8, net9, net10;
	wire net11, net12, net13, net14, net15, net16, net17, net18, net19;
	wire newnet1, newnet2, newnet3, newnet4;
       
    and(net1, ~A[0], B[0]);
    and(net2, A[0], ~B[0]);
    
    and(net3, ~A[1], B[1]);
    and(net4, A[1], ~B[1]);
    
    and(net5, ~A[2], B[2]);
    and(net6, A[2], ~B[2]);
       
    and(net7, ~A[3], B[3]);
    and(net8, A[3], ~B[3]);
    
    nor(net9, net1, net2);
    nor(net10, net3, net4);
    nor(net11, net5, net6);
    nor(net12, net7, net8);
	
	and(net13, net9, net3);
	and(net14, net9, net4);
	and(newnet1, net9, net10);
	and(net15, newnet1, net5);
	
    and(net16, newnet1, net6);
    and(newnet2, net11, net7);
    and(net17, newnet1, newnet2);
    
    and(newnet3, net11, net8);
    and(net18, newnet1, newnet3);
    
    and(newnet4, net11, net12);
    and(equal, newnet1, newnet4);
	
	or(newnet5, net1, net13);
	or(newnet6, net15, net17);
	or(less, newnet5, newnet6);
	
	or(newnet7, net2, net14);
    or(newnet8, net16, net18);
    or(greater, newnet7, newnet8);
	
endmodule	