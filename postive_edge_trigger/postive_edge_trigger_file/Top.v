`timescale 1ns / 10ps
module Top(
        input clkin
    );
    reg  D;
    wire Q, Qp;

    initial begin
            D = 1'b1;
        #25
            D = 1'b0;
        repeat(5) begin
        #100
            D = 1'b1;
        #100
            D = 1'b0;
        end
            D = 1'b1;
       
        #25 $finish;
    end
	

	postive_edge_trigger filp_flop(
        .D(D),
        .clk(clkin),
        .Q(Q),
        .Qp(Qp)
   );

endmodule