module four_and_three_mulitipiler(
        input [2:0]A,
        input [3:0]B,
        output [6:0]C
    );
    
    and(C[0], A[0], B[0]);
    wire net1, net2, net3;
    wire net4, net5, net6, net7;
    wire net8, net9, net10, net11;
    wire [3:0]Z;
    
    and(net1, A[0], B[1]);
    and(net2, A[0], B[2]);
    and(net3, A[0], B[3]);
    
    and(net4, A[1], B[0]);
    and(net5, A[1], B[1]);
    and(net6, A[1], B[2]);
    and(net7, A[1], B[3]);
    
    and(net8, A[2], B[0]);
    and(net9, A[2], B[1]);
    and(net10, A[2], B[2]);
    and(net11, A[2], B[3]);
    
    FourAdder first(
        .A({1'b0, net3, net2, net1}),
        .B({net7, net6, net5, net4}),
        .So({Z[2], Z[1], Z[0], C[1]}),
        .Cin(0),
        .Cout(Z[3])
    );
    
    FourAdder second(
        .A({Z[3], Z[2], Z[1], Z[0]}),
        .B({net11, net10, net9, net8}),
        .So({C[5], C[4], C[3], C[2]}),
        .Cin(0),
        .Cout(C[6])
    );
        
    
endmodule
