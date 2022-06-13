module jk_flip_flop(
        input J, 
        input K, 
        input clk,
        output Q, 
        output Qp
    );
    
    wire net1, net2;
    
    nand(net1, J, Qp, clk);
    nand(net2, ~K, Q, clk);
    
    Latch SR_latch(
        .S(net1),
        .R(net2),
        .Q(Q),
        .Qp(Qp)
    );
    
    
endmodule
