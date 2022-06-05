`timescale 1ns / 1ps
module Top();
    reg [1:0] A;
    reg [1:0] B;
    wire [3:0] S;
    
    initial begin
        A = 2'b00;
        B = 2'b00;
        #50
            A = 2'b01;
            B = 2'b10;
        #50
            A = 2'b11;
            B = 2'b11;
       #50 $finish; 
    end
    
    two_bits_muliplier test(
        .A({A[1], A[0]}),
        .B({B[1], B[0]}),
        .C({S[3], S[2], S[1], S[0]})
    );
    
endmodule

