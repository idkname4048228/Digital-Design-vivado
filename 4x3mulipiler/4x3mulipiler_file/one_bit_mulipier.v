module one_bit_mulipier(
        input multiplier,
        input [3:0]multiplicand,
        output [3:0]sum
    );
    
    and(sum[0], multiplier, multiplicand[0]);
    and(sum[1], multiplier,  multiplicand[1]);
    and(sum[2], multiplier, multiplicand[2]);
    and(sum[3], multiplier, multiplicand[3]);
    
endmodule
