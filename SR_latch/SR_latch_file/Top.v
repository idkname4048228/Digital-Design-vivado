`timescale 1ns / 10ps
module Top();
	reg clk;
    reg  S;
    reg  R;
    wire Q, Qp;

    initial begin
        #50
            clk = 1'b0;
        #50
            S = 1'b1;
            R = 1'b0;
        #50
            S = 1'b0;
            R = 1'b0;
        #50
            S = 1'b0;
            R = 1'b1;
        #50
            S = 1'b0;
            R = 1'b0;
        #50
            S = 1'b1;
            R = 1'b1;
        #50
            clk = 1'b1;
        #50
            S = 1'b1;
            R = 1'b0;
        #50
            S = 1'b0;
            R = 1'b0;
        #50
            S = 1'b0;
            R = 1'b1;
        #50
            S = 1'b0;
            R = 1'b0;
        #50
            S = 1'b1;
            R = 1'b1;
        #50 $finish;
    end
	

	Latch_with_clock latch(
        .Clock(clk),
        .S(S),
        .R(R),
        .inputQ(Q),
        .inputQp(Qp),
        .outputQ(Q),
        .outputQp(Qp)
   );

endmodule