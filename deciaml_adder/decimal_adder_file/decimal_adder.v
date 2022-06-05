module decimal_adder(
    input [3:0]augend,
    input [3:0]addend,
    input Cin,
    output [3:0]sum,
    output Cout
    );
    
    wire K;
    wire [3:0] Z;
    
    FourAdder first(
        .A({augend[3], augend[2], augend[1], augend[0]}),
        .B({addend[3], addend[2], addend[1], addend[0]}),
        .Cin(Cin),
        .Cout(K),
        .So({Z[3], Z[2], Z[1], Z[0]})
    );
    
    wire net1, net2, net3;
    wire test;
    
    and(net1, Z[3], Z[2]);
    and(net2, Z[3], Z[1]);
    or(net3, net1, net2);
    or(test, K, net3);
    
    FourAdder second(
        .A({Z[3], Z[2], Z[1], Z[0]}),
        .B({1'b0, test, test, 1'b0}),
        .Cin(0),
        .So({sum[3], sum[2], sum[1], sum[0]})
    );
    assign Cout = test;
    
    
    
endmodule
