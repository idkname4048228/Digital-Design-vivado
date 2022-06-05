
module two_bits_muliplier(
        input [1:0]A,
        input [1:0]B,
        output [3:0]C
    );
    
    and(C[0], A[0], B[0]);
    
    wire net1, net2, net3, net4, net5;
    
    and(net1, A[0], B[1]);
    and(net2, A[1], B[0]);
    and(net3, A[1], B[1]);
    
    halfadder first(
        .x(net1),
        .y(net2),
        .C(net4),
        .S(C[1])
    );
    
    halfadder second(
        .x(net4),
        .y(net3),
        .C(C[3]),
        .S(C[2])
    );
    
endmodule
