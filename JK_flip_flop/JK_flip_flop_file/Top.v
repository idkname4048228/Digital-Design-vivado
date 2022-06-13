`timescale 1ns / 10ps
module Top(
        input clkin
    );
	reg J, K;
	wire Q, Qp;
	wire Qd, Qpd;
	
	initial begin
        J = 1;
        K = 1;
        #25 
            K = 1;
        #50
            K = 0;
        #50
            J = 1;
        #50
            J = 0;
        #50
            J = 1;
            K = 1;
        #50
            J = 0;
            K = 0;
        #50
            J = 1;
        #50
            J = 0;
    end
    
    jk_flip_flop jk_test(
         .J(J),
        .K(K),
        .clk(clkin),
        .Q(Q),
        .Qp(Qp)
    );
    
    jk_flip_flop_with_D_latch jk_D_latch_one(
         .J(J),
        .K(K),
        .clk(clkin),
        .Q(Qd),
        .Qp(Qpd)
    );
endmodule