module two_bits_decimal_adder(
        input [7:0]augend,
        input [7:0]addend,
        input Cin,
        output [7:0]sum,
        output Cout
    );
    
    wire net1;
    decimal_adder u1(
           .augend({augend[3], augend[2], augend[1], augend[0]}), 
           .addend({addend[3], addend[2], addend[1], addend[0]}), 
           .Cin(Cin), 
           .sum({sum[3], sum[2], sum[1], sum[0]}), 
           .Cout(net1)
        );
        
    decimal_adder u2(
       .augend({augend[7], augend[6], augend[5], augend[4]}), 
       .addend({addend[7], addend[6], addend[5], addend[4]}), 
       .Cin(net1), 
       .sum({sum[7], sum[6], sum[5], sum[4]}), 
       .Cout(Cout)
    );
    
endmodule
