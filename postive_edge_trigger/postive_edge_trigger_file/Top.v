`timescale 1ns / 10ps
module Top(
        input clkin
    );
    reg  D;
    wire Q, Qp;

    initial begin
            D = 1'b0;
        #90
            D = 1'b1;
        #70
            D = 1'b0;
        #40
            D = 1'b1;
        #100
            D = 1'b0;
        #50
            D = 1'b1;
        #30
            D = 1'b0;
        #70 $finish;
    end
	

	postive_edge_trigger filp_flop(
        .D(D),
        .clk(clkin),
        .Q(Q),
        .Qp(Qp)
   );

endmodule