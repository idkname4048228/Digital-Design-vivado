module four_and_three_mulitipiler(
        input [3:0]A,
        input [3:0]B,
        output [7:0]C
    );
    
    
    wire net1, net2, net3;
    wire net4, net5, net6, net7;
    wire net8, net9, net10, net11;
    wire net12, net13, net14, net15;
    wire [3:0] Y, Z;
    
    one_bit_mulipier first_mulipier(
        .multiplier( A[0] ),
        .multiplicand( {B[3], B[2], B[1], B[0]} ),
        .sum( {net3, net2, net1, C[0]} )
    );
    one_bit_mulipier second_mulipier(
        .multiplier( A[1] ),
        .multiplicand( {B[3], B[2], B[1], B[0]} ),
        .sum( {net7, net6, net5, net4} )
    );
    
    one_bit_mulipier third_mulipier(
        .multiplier( A[2] ),
        .multiplicand( {B[3], B[2], B[1], B[0]} ),
        .sum( {net11, net10, net9, net8} )
    );
    
    one_bit_mulipier fourh_mulipier(
        .multiplier( A[3] ),
        .multiplicand( B ),
        .sum( {net15, net14, net13, net12} )
    );
    

    FourAdder first(
        .A({1'b0, net3, net2, net1}),
        .B({net7, net6, net5, net4}),
        .So({Z[2:1], Z[0], C[1]}),
        .Cin(0),
        .Cout(Z[3])
    );
    
    FourAdder second(
        .A({Z[3], Z[2], Z[1], Z[0]}),
        .B({net11, net10, net9, net8}),
        .So({Y[2], Y[1], Y[0], C[2]}),
        .Cin(0),
        .Cout(Y[3])
    );
    
    FourAdder third(
        .A({Y[3], Y[2], Y[1], Y[0]}),
        .B({net15, net14, net13, net12}),
        .So({C[6], C[5], C[4], C[3]}),
        .Cin(0),
        .Cout(C[7])
    );
        
    
endmodule
