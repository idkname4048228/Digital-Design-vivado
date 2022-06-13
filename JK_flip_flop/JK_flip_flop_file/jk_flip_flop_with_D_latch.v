


module jk_flip_flop_with_D_latch(
        input J, 
        input K, 
        input clk,
        output Q, 
        output Qp
    );
    
    wire net1, net2, net3;
    
    and #1 (net1, J, Qp);
    and #1 (net2, ~K, Q);
    or #1 (net3, net1, net2);
    
    DLatch D_latch(
        .D(net3),
        .C(clk),
        .Q(Q),
        .Qp(Qp)
    );
    
    
endmodule
