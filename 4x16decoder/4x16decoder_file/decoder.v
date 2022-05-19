
module decoder(	
		input [3:0] A,
		output [7:0] B
	);
	
	wire net1, net2, net3, net4, net5, net6, net7, net8;
	wire net11, net12, net13, net14, net15, net16, net17, net18;
       
    and(net1, ~A[0], ~A[1]);
    and(net11, ~A[2], A[3]);
    and(B[0], net1, net11);
    
    and(net2, A[0], ~A[1]);
    and(net12, A[3], ~A[2]);
    and(B[1], net2, net12);
    
    and(net3, ~A[0], A[1]);
    and(net13, A[3], ~A[2]);
    and(B[2], net3, net13);
    
    and(net4, A[0], A[1]);
    and(net14, A[3], ~A[2]);
    and(B[3], net4, net14);
    
    and(net5, ~A[0], ~A[1]);
    and(net15, A[3], A[2]);
    and(B[4], net5, net15);
    
    and(net6, A[0], ~A[1]);
    and(net16, A[3], A[2]);
    and(B[5], net6, net16);
    
    and(net7, ~A[0], A[1]);
    and(net17, A[3], A[2]);
    and(B[6], net7, net17);
    
    and(net8, A[0], A[1]);
    and(net18, A[3], A[2]);
    and(B[7], net8, net18);
    
	
endmodule	