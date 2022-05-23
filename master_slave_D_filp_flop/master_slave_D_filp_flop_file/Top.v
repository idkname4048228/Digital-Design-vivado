`timescale 1ns / 10ps
module Top(
        input clkin
    );
    reg  D;
    wire Q;

    initial begin
        D = 1'b1;
        #50
            D = 1'b0;
        #75
            D = 1'b1;
        #15
            D = 1'b0;
        #60
            D = 1'b1;
        #50
            D = 1'b0;
        #100
            D = 1'b1;
        #20
            D = 1'b0;
        #70
            D = 1'b1;
        #60 $finish;
    end
	

	Master_Slave filp_flop(
        .D(D),
        .Clock(clkin),
        .Q(Q)
   );

endmodule