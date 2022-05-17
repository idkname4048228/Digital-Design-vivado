
module decoder(	
		input [2:0] A,
		output [7:0] B
	);
	
	wire net1, net2, net3, net4, net5, net6, net7, net8;
       
    and(net1, ~A[0], ~A[1]);
    and(B[0], net1, ~A[2]);
    
    and(net2, A[0], ~A[1]);
    and(B[1], net2, ~A[2]);
    
    and(net3, ~A[0], A[1]);
    and(B[2], net3, ~A[2]);
    
    and(net4, A[0], A[1]);
    and(B[3], net4, ~A[2]);
    
    and(net5, ~A[0], ~A[1]);
    and(B[4], net5, A[2]);
    
    and(net6, A[0], ~A[1]);
    and(B[5], net6, A[2]);
    
    and(net7, ~A[0], A[1]);
    and(B[6], net7, A[2]);
    
    and(net8, A[0], A[1]);
    and(B[7], net8, A[2]);
    
	
endmodule	