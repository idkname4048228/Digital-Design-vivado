`timescale 1ns / 1ps
module Top();
	reg  C;
    reg  S;
    reg  R;
    wire Q;
    wire Qp;

    initial begin
        C = 1;
        S = 1;
        R = 1;
        #50 
            S = 0;
            R = 1;
        #50
            R = 0;
        #50
            S = 1;
        #50
            S = 0;
    
        #50 $finish;
    end
	

	Latch_with_control latch(
        .C(C),
        .S(S),
        .R(R),
        .Q(Q),
        .Qp(Qp)
   );

endmodule