module halfadder(
        input x,
        input y,
        output C,
        output S
    );

    xor(S, x, y);
    and(C, x, y);


endmodule
