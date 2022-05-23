`timescale 1ns / 10ps
module Top();
	reg  control;
    reg  D;
    wire Q, Qp;

    initial begin
        control = 0;
        D = 0;
        #50
            D = 1'b1;
        #50
            control = 1;
        #50
            D = 1'b0;
        #50
            D = 1'b1;
        #50 $finish;
    end
	

	DLatch latch(
        .D(D),
        .C(control),
        .Q(Q),
        .Qp(Qp)
   );

endmodule