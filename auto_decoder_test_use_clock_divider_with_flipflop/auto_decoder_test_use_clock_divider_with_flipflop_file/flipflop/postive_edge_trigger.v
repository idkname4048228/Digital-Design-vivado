module postive_edge_trigger(
        input clk,
        input D,
        output Q,
        output Qp
    );
    
    wire tmp;
    wire net1, net2, net3, net4;
    
    SRLatch latch1(
        .S(net4),
        .R(clk),
        .Q(net1),
        .Qp(net2)
    );
    
    and(tmp, clk, net2);
    
    SRLatch latch2(
        .S(tmp),
        .R(D),
        .Q(net3),
        .Qp(net4)
    );
    
    SRLatch latch3(
        .S(net2),
        .R(net3),
        .Q(Q),
        .Qp(Qp)
    );
    
    
    
    
endmodule
