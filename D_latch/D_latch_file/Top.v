`timescale 1ns / 10ps
module Top();
	reg clk;
    reg  D;
    wire Q, Qp;

    initial begin
        #50
            clk = 1'b0;
        #50
            D = 1'b0;
        #50
            D = 1'b1;
        #50
            clk = 1'b1;
        #50
            D = 1'b0;
        #50
            D = 1'b1;
        #50 $finish;
    end
	

	DLatch latch(
        .Clock(clk),
        .D(D),
        .inputQ(Q),
        .inputQp(Qp),
        .outputQ(Q),
        .outputQp(Qp)
   );

endmodule